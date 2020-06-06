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
	<43.351139, 32.650021, 22.826401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182690, 32.999763, 22.922867>,  <43.081619, 33.209610, 22.980747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182690, 32.999763, 22.922867>,  <43.351139, 32.650021, 22.826401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182690, 32.999763, 22.922867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718137, -0.159018, -0.677490,
		-0.554016, -0.458497, 0.694871,
		-0.421125, 0.874353, 0.241165,
		43.056351, 33.262070, 22.995216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629604, 32.648697, 23.181440>,  <43.351139, 32.650021, 22.826401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629604, 32.648697, 23.181440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734268, 32.948753, 22.938519>,  <42.797066, 33.128788, 22.792765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734268, 32.948753, 22.938519>,  <42.629604, 32.648697, 23.181440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734268, 32.948753, 22.938519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764843, -0.222631, -0.604525,
		-0.588686, 0.622670, 0.515490,
		0.261656, 0.750145, -0.607304,
		42.812763, 33.173798, 22.756327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010098, 32.642456, 22.738846>,  <42.629604, 32.648697, 23.181440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010098, 32.642456, 22.738846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262959, 32.900196, 22.566708>,  <42.414677, 33.054840, 22.463425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262959, 32.900196, 22.566708>,  <42.010098, 32.642456, 22.738846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262959, 32.900196, 22.566708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622362, 0.091390, -0.777376,
		-0.461574, 0.759249, 0.458792,
		0.632151, 0.644351, -0.430345,
		42.452602, 33.093502, 22.437605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655258, 33.206001, 22.356092>,  <42.010098, 32.642456, 22.738846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655258, 33.206001, 22.356092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012512, 33.154907, 22.183582>,  <42.226864, 33.124252, 22.080076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012512, 33.154907, 22.183582>,  <41.655258, 33.206001, 22.356092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012512, 33.154907, 22.183582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446921, -0.143805, -0.882939,
		0.050759, 0.981328, -0.185523,
		0.893132, -0.127731, -0.431276,
		42.280453, 33.116589, 22.054199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848808, 33.848206, 22.189690>,  <41.655258, 33.206001, 22.356092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848808, 33.848206, 22.189690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569748, 33.820221, 21.904484>,  <41.402313, 33.803429, 21.733360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569748, 33.820221, 21.904484>,  <41.848808, 33.848206, 22.189690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569748, 33.820221, 21.904484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444370, 0.738401, -0.507247,
		0.561979, -0.670723, -0.484056,
		-0.697650, -0.069962, -0.713015,
		41.360455, 33.799232, 21.690578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042995, 33.655399, 21.396044>,  <41.848808, 33.848206, 22.189690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042995, 33.655399, 21.396044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730118, 33.901649, 21.434353>,  <41.542389, 34.049400, 21.457338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730118, 33.901649, 21.434353>,  <42.042995, 33.655399, 21.396044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730118, 33.901649, 21.434353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548857, 0.753630, -0.361660,
		-0.294825, -0.230324, -0.927378,
		-0.782198, 0.615624, 0.095774,
		41.495457, 34.086338, 21.463085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871021, 33.945133, 20.768887>,  <42.042995, 33.655399, 21.396044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871021, 33.945133, 20.768887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746864, 34.193951, 21.056419>,  <41.672371, 34.343243, 21.228939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746864, 34.193951, 21.056419>,  <41.871021, 33.945133, 20.768887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746864, 34.193951, 21.056419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455017, 0.761148, -0.462183,
		-0.834634, 0.183621, -0.519297,
		-0.310395, 0.622043, 0.718831,
		41.653748, 34.380562, 21.272068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535614, 34.631222, 20.504852>,  <41.871021, 33.945133, 20.768887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535614, 34.631222, 20.504852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578590, 34.755596, 20.882587>,  <41.604378, 34.830219, 21.109228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578590, 34.755596, 20.882587>,  <41.535614, 34.631222, 20.504852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578590, 34.755596, 20.882587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452206, 0.830615, -0.324942,
		-0.885418, 0.461949, -0.051363,
		0.107444, 0.310936, 0.944338,
		41.610825, 34.848877, 21.165890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128105, 35.249996, 20.615067>,  <41.535614, 34.631222, 20.504852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128105, 35.249996, 20.615067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412849, 35.266254, 20.895523>,  <41.583694, 35.276009, 21.063797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412849, 35.266254, 20.895523>,  <41.128105, 35.249996, 20.615067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412849, 35.266254, 20.895523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375732, 0.821401, -0.429098,
		-0.593362, 0.568900, 0.569450,
		0.711861, 0.040649, 0.701143,
		41.626408, 35.278450, 21.105865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187000, 35.912872, 20.673321>,  <41.128105, 35.249996, 20.615067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187000, 35.912872, 20.673321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525185, 35.787300, 20.846127>,  <41.728096, 35.711956, 20.949810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525185, 35.787300, 20.846127>,  <41.187000, 35.912872, 20.673321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525185, 35.787300, 20.846127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487661, 0.783572, -0.384969,
		-0.217660, 0.536154, 0.815575,
		0.845465, -0.313932, 0.432014,
		41.778824, 35.693119, 20.975731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484402, 36.455200, 21.096807>,  <41.187000, 35.912872, 20.673321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484402, 36.455200, 21.096807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799862, 36.215767, 21.040638>,  <41.989140, 36.072105, 21.006937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799862, 36.215767, 21.040638>,  <41.484402, 36.455200, 21.096807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799862, 36.215767, 21.040638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576868, 0.799411, -0.167826,
		0.212715, 0.051351, 0.975764,
		0.788655, -0.598586, -0.140424,
		42.036457, 36.036190, 20.998510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979107, 36.757915, 21.415613>,  <41.484402, 36.455200, 21.096807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979107, 36.757915, 21.415613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184090, 36.506432, 21.181652>,  <42.307079, 36.355541, 21.041275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184090, 36.506432, 21.181652>,  <41.979107, 36.757915, 21.415613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184090, 36.506432, 21.181652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715967, 0.688894, -0.113207,
		0.474110, -0.360756, 0.803165,
		0.512456, -0.628712, -0.584901,
		42.337826, 36.317818, 21.006182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619164, 36.684246, 21.727573>,  <41.979107, 36.757915, 21.415613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619164, 36.684246, 21.727573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669632, 36.600258, 21.339760>,  <42.699913, 36.549866, 21.107073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669632, 36.600258, 21.339760>,  <42.619164, 36.684246, 21.727573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669632, 36.600258, 21.339760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626098, 0.774948, -0.086351,
		0.769469, -0.596127, 0.229239,
		0.126172, -0.209971, -0.969532,
		42.707485, 36.537266, 21.048901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317093, 36.762096, 21.553839>,  <42.619164, 36.684246, 21.727573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317093, 36.762096, 21.553839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151810, 36.763378, 21.189587>,  <43.052639, 36.764149, 20.971035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151810, 36.763378, 21.189587>,  <43.317093, 36.762096, 21.553839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151810, 36.763378, 21.189587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696987, 0.644685, -0.313993,
		0.586064, -0.764442, -0.268623,
		-0.413206, 0.003206, -0.910632,
		43.027847, 36.764339, 20.916397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855843, 36.452995, 21.082169>,  <43.317093, 36.762096, 21.553839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855843, 36.452995, 21.082169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590813, 36.667446, 20.872955>,  <43.431797, 36.796116, 20.747427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590813, 36.667446, 20.872955>,  <43.855843, 36.452995, 21.082169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590813, 36.667446, 20.872955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739058, 0.581367, -0.340303,
		0.121627, -0.612027, -0.781428,
		-0.662571, 0.536131, -0.523033,
		43.392040, 36.828285, 20.716045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130066, 36.541386, 20.330116>,  <43.855843, 36.452995, 21.082169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130066, 36.541386, 20.330116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858868, 36.833168, 20.366383>,  <43.696148, 37.008236, 20.388142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858868, 36.833168, 20.366383>,  <44.130066, 36.541386, 20.330116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858868, 36.833168, 20.366383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656525, 0.656403, -0.371631,
		-0.330601, -0.192440, -0.923942,
		-0.677995, 0.729453, 0.090666,
		43.655468, 37.052006, 20.393583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218155, 36.961781, 19.707035>,  <44.130066, 36.541386, 20.330116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218155, 36.961781, 19.707035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990318, 37.192841, 19.940918>,  <43.853615, 37.331478, 20.081247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990318, 37.192841, 19.940918>,  <44.218155, 36.961781, 19.707035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990318, 37.192841, 19.940918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634107, 0.761450, -0.134543,
		-0.522945, 0.294134, -0.800009,
		-0.569593, 0.577650, 0.584709,
		43.819439, 37.366135, 20.116331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253269, 37.622364, 19.373360>,  <44.218155, 36.961781, 19.707035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253269, 37.622364, 19.373360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122372, 37.711334, 19.740715>,  <44.043835, 37.764717, 19.961128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122372, 37.711334, 19.740715>,  <44.253269, 37.622364, 19.373360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122372, 37.711334, 19.740715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573330, 0.819304, 0.005862,
		-0.751136, 0.528459, -0.395634,
		-0.327242, 0.222425, 0.918390,
		44.024200, 37.778061, 20.016232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009872, 38.223099, 19.310102>,  <44.253269, 37.622364, 19.373360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009872, 38.223099, 19.310102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116783, 38.182278, 19.693382>,  <44.180931, 38.157787, 19.923349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116783, 38.182278, 19.693382>,  <44.009872, 38.223099, 19.310102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116783, 38.182278, 19.693382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495421, 0.867444, -0.045809,
		-0.826510, 0.486956, 0.282409,
		0.267281, -0.102050, 0.958200,
		44.196968, 38.151661, 19.980843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995350, 38.853321, 19.557482>,  <44.009872, 38.223099, 19.310102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995350, 38.853321, 19.557482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194061, 38.672047, 19.853546>,  <44.313286, 38.563282, 20.031185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194061, 38.672047, 19.853546>,  <43.995350, 38.853321, 19.557482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194061, 38.672047, 19.853546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520581, 0.837977, 0.163677,
		-0.694412, 0.304001, 0.652208,
		0.496777, -0.453186, 0.740159,
		44.343094, 38.536091, 20.075594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003105, 39.302181, 20.139612>,  <43.995350, 38.853321, 19.557482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003105, 39.302181, 20.139612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327080, 39.067596, 20.142879>,  <44.521465, 38.926846, 20.144840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327080, 39.067596, 20.142879>,  <44.003105, 39.302181, 20.139612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327080, 39.067596, 20.142879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584543, 0.805986, -0.093251,
		0.048106, 0.080301, 0.995609,
		0.809935, -0.586462, 0.008167,
		44.570061, 38.891659, 20.145330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507397, 39.681751, 20.474892>,  <44.003105, 39.302181, 20.139612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507397, 39.681751, 20.474892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743813, 39.407204, 20.305389>,  <44.885662, 39.242474, 20.203688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743813, 39.407204, 20.305389>,  <44.507397, 39.681751, 20.474892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743813, 39.407204, 20.305389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731075, 0.677802, -0.078190,
		0.340890, -0.263583, 0.902396,
		0.591036, -0.686373, -0.423755,
		44.921124, 39.201290, 20.178263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132969, 39.899803, 20.761467>,  <44.507397, 39.681751, 20.474892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132969, 39.899803, 20.761467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.262207, 39.671402, 20.459587>,  <45.339748, 39.534363, 20.278460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.262207, 39.671402, 20.459587>,  <45.132969, 39.899803, 20.761467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262207, 39.671402, 20.459587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722691, 0.663739, -0.192789,
		0.611006, -0.483126, 0.627105,
		0.323093, -0.570999, -0.754699,
		45.359135, 39.500103, 20.233177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942566, 39.834469, 20.804085>,  <45.132969, 39.899803, 20.761467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.942566, 39.834469, 20.804085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806095, 39.778229, 20.432316>,  <45.724213, 39.744484, 20.209255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806095, 39.778229, 20.432316>,  <45.942566, 39.834469, 20.804085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806095, 39.778229, 20.432316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710620, 0.608652, -0.352935,
		0.615317, -0.780881, -0.107750,
		-0.341182, -0.140597, -0.929423,
		45.703739, 39.736050, 20.153488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547791, 39.695610, 20.356380>,  <45.942566, 39.834469, 20.804085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547791, 39.695610, 20.356380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.269779, 39.800308, 20.088520>,  <46.102974, 39.863125, 19.927805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.269779, 39.800308, 20.088520>,  <46.547791, 39.695610, 20.356380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.269779, 39.800308, 20.088520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681686, 0.535984, -0.498021,
		0.228568, -0.802628, -0.550949,
		-0.695026, 0.261742, -0.669649,
		46.061272, 39.878830, 19.887625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.761517, 39.578442, 19.671404>,  <46.547791, 39.695610, 20.356380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.761517, 39.578442, 19.671404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486946, 39.868004, 19.643734>,  <46.322205, 40.041740, 19.627132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486946, 39.868004, 19.643734>,  <46.761517, 39.578442, 19.671404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.486946, 39.868004, 19.643734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574591, 0.481612, -0.661736,
		-0.445717, -0.493980, -0.746539,
		-0.686427, 0.723902, -0.069173,
		46.281017, 40.085175, 19.622982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.413235, 39.674137, 18.917654>,  <46.761517, 39.578442, 19.671404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.413235, 39.674137, 18.917654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.414230, 40.004940, 19.142529>,  <46.414825, 40.203423, 19.277452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.414230, 40.004940, 19.142529>,  <46.413235, 39.674137, 18.917654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.414230, 40.004940, 19.142529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671476, 0.415213, -0.613774,
		-0.741022, 0.379020, -0.554283,
		0.002487, 0.827008, 0.562185,
		46.414978, 40.253044, 19.311184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.375542, 40.233685, 18.446068>,  <46.413235, 39.674137, 18.917654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.375542, 40.233685, 18.446068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.583389, 40.314873, 18.778042>,  <46.708099, 40.363586, 18.977226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.583389, 40.314873, 18.778042>,  <46.375542, 40.233685, 18.446068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.583389, 40.314873, 18.778042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635921, 0.556855, -0.534338,
		-0.570611, 0.805428, 0.160279,
		0.519623, 0.202974, 0.829936,
		46.739277, 40.375767, 19.027023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.348572, 40.923176, 18.612850>,  <46.375542, 40.233685, 18.446068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.348572, 40.923176, 18.612850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692814, 40.749981, 18.720089>,  <46.899361, 40.646065, 18.784433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692814, 40.749981, 18.720089>,  <46.348572, 40.923176, 18.612850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.692814, 40.749981, 18.720089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505166, 0.659137, -0.557088,
		0.064496, 0.614869, 0.785987,
		0.860609, -0.432984, 0.268099,
		46.950996, 40.620087, 18.800518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.717899, 41.488277, 18.933310>,  <46.348572, 40.923176, 18.612850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.717899, 41.488277, 18.933310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956501, 41.206615, 18.779243>,  <47.099663, 41.037621, 18.686804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956501, 41.206615, 18.779243>,  <46.717899, 41.488277, 18.933310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.956501, 41.206615, 18.779243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670003, 0.701087, -0.244078,
		0.441901, -0.112467, 0.889986,
		0.596507, -0.704151, -0.385164,
		47.135452, 40.995369, 18.663694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.651669, 42.164047, 19.016914>,  <46.717899, 41.488277, 18.933310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.651669, 42.164047, 19.016914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.656467, 42.414364, 19.328873>,  <46.659348, 42.564556, 19.516047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.656467, 42.414364, 19.328873>,  <46.651669, 42.164047, 19.016914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.656467, 42.414364, 19.328873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748634, -0.511425, 0.421891,
		0.662875, -0.588918, 0.462355,
		0.011999, 0.625796, 0.779895,
		46.660069, 42.602104, 19.562841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.875111, 41.756901, 19.656469>,  <46.651669, 42.164047, 19.016914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.875111, 41.756901, 19.656469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.637428, 42.076145, 19.696339>,  <46.494820, 42.267693, 19.720261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.637428, 42.076145, 19.696339>,  <46.875111, 41.756901, 19.656469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.637428, 42.076145, 19.696339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744580, -0.592698, 0.307098,
		0.304176, 0.108263, 0.946444,
		-0.594203, 0.798115, 0.099675,
		46.459167, 42.315578, 19.726240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.628735, 41.550312, 20.259157>,  <46.875111, 41.756901, 19.656469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.628735, 41.550312, 20.259157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.414558, 41.853539, 20.110214>,  <46.286053, 42.035473, 20.020849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.414558, 41.853539, 20.110214>,  <46.628735, 41.550312, 20.259157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.414558, 41.853539, 20.110214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814785, -0.347580, 0.464019,
		0.222332, 0.551843, 0.803765,
		-0.535438, 0.758062, -0.372355,
		46.253925, 42.080956, 19.998508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.217907, 41.876617, 20.757973>,  <46.628735, 41.550312, 20.259157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.217907, 41.876617, 20.757973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.027805, 41.942757, 20.412304>,  <45.913746, 41.982441, 20.204903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.027805, 41.942757, 20.412304>,  <46.217907, 41.876617, 20.757973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.027805, 41.942757, 20.412304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843664, -0.364419, 0.394246,
		-0.249733, 0.916438, 0.312690,
		-0.475252, 0.165349, -0.864173,
		45.885231, 41.992363, 20.153051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512848, 42.398205, 20.876551>,  <46.217907, 41.876617, 20.757973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512848, 42.398205, 20.876551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.441387, 42.154129, 20.567810>,  <45.398510, 42.007683, 20.382565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.441387, 42.154129, 20.567810>,  <45.512848, 42.398205, 20.876551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.441387, 42.154129, 20.567810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821579, -0.339128, 0.458258,
		-0.541379, 0.716007, -0.440729,
		-0.178652, -0.610185, -0.771854,
		45.387791, 41.971073, 20.336254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895767, 42.544590, 20.485674>,  <45.512848, 42.398205, 20.876551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895767, 42.544590, 20.485674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951824, 42.152184, 20.432041>,  <44.985458, 41.916740, 20.399862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951824, 42.152184, 20.432041>,  <44.895767, 42.544590, 20.485674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951824, 42.152184, 20.432041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948952, -0.171720, 0.264580,
		-0.282580, 0.090158, -0.954997,
		0.140138, -0.981012, -0.134081,
		44.993866, 41.857880, 20.391817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167675, 42.432632, 20.094404>,  <44.895767, 42.544590, 20.485674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167675, 42.432632, 20.094404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319393, 42.112949, 20.280910>,  <44.410423, 41.921139, 20.392815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319393, 42.112949, 20.280910>,  <44.167675, 42.432632, 20.094404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319393, 42.112949, 20.280910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915389, -0.397580, 0.063180,
		0.134884, -0.450776, -0.882387,
		0.379300, -0.799206, 0.466263,
		44.433182, 41.873188, 20.420790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769581, 41.845219, 19.902702>,  <44.167675, 42.432632, 20.094404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769581, 41.845219, 19.902702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953575, 41.706619, 20.229713>,  <44.063972, 41.623459, 20.425920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953575, 41.706619, 20.229713>,  <43.769581, 41.845219, 19.902702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953575, 41.706619, 20.229713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800534, -0.560153, 0.213013,
		0.384132, -0.752442, -0.535046,
		0.459987, -0.346497, 0.817528,
		44.091572, 41.602669, 20.474972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777779, 41.060093, 19.926758>,  <43.769581, 41.845219, 19.902702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777779, 41.060093, 19.926758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836220, 41.151550, 20.311752>,  <43.871284, 41.206425, 20.542749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836220, 41.151550, 20.311752>,  <43.777779, 41.060093, 19.926758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836220, 41.151550, 20.311752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634399, -0.724877, 0.268498,
		0.759072, -0.649829, 0.039140,
		0.146106, 0.228640, 0.962485,
		43.880051, 41.220142, 20.600498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667889, 40.394966, 20.148340>,  <43.777779, 41.060093, 19.926758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667889, 40.394966, 20.148340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671665, 40.594002, 20.495285>,  <43.673931, 40.713425, 20.703451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671665, 40.594002, 20.495285>,  <43.667889, 40.394966, 20.148340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671665, 40.594002, 20.495285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720496, -0.598092, 0.350957,
		0.693394, -0.628244, 0.352864,
		0.009442, 0.497589, 0.867361,
		43.674500, 40.743279, 20.755493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771690, 39.930378, 20.719839>,  <43.667889, 40.394966, 20.148340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771690, 39.930378, 20.719839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609772, 40.247154, 20.902691>,  <43.512623, 40.437222, 21.012402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609772, 40.247154, 20.902691>,  <43.771690, 39.930378, 20.719839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609772, 40.247154, 20.902691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509781, -0.610468, 0.606178,
		0.759121, 0.012343, 0.650833,
		-0.404795, 0.791944, 0.457127,
		43.488335, 40.484737, 21.039829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748592, 39.746998, 21.379766>,  <43.771690, 39.930378, 20.719839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748592, 39.746998, 21.379766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468952, 40.028397, 21.328602>,  <43.301170, 40.197235, 21.297903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468952, 40.028397, 21.328602>,  <43.748592, 39.746998, 21.379766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468952, 40.028397, 21.328602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635424, -0.529217, 0.562286,
		0.327872, 0.474369, 0.816991,
		-0.699097, 0.703493, -0.127910,
		43.259224, 40.239445, 21.290228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484661, 39.716957, 22.009596>,  <43.748592, 39.746998, 21.379766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484661, 39.716957, 22.009596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194546, 39.897957, 21.802059>,  <43.020477, 40.006557, 21.677536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194546, 39.897957, 21.802059>,  <43.484661, 39.716957, 22.009596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194546, 39.897957, 21.802059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658928, -0.674585, 0.332788,
		-0.199418, 0.583249, 0.787434,
		-0.725290, 0.452499, -0.518844,
		42.976959, 40.033707, 21.646406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922756, 39.712734, 22.425621>,  <43.484661, 39.716957, 22.009596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922756, 39.712734, 22.425621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740345, 39.783791, 22.076797>,  <42.630898, 39.826424, 21.867504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740345, 39.783791, 22.076797>,  <42.922756, 39.712734, 22.425621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740345, 39.783791, 22.076797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749132, -0.605617, 0.268382,
		-0.480458, 0.775676, 0.409251,
		-0.456026, 0.177637, -0.872058,
		42.603539, 39.837082, 21.815180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249039, 39.885124, 22.642027>,  <42.922756, 39.712734, 22.425621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249039, 39.885124, 22.642027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208775, 39.774582, 22.259720>,  <42.184616, 39.708256, 22.030336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208775, 39.774582, 22.259720>,  <42.249039, 39.885124, 22.642027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208775, 39.774582, 22.259720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786355, -0.566422, 0.246600,
		-0.609519, 0.776397, -0.160299,
		-0.100663, -0.276359, -0.955768,
		42.178577, 39.691673, 21.972990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525925, 39.862442, 22.482706>,  <42.249039, 39.885124, 22.642027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525925, 39.862442, 22.482706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695385, 39.638794, 22.197636>,  <41.797062, 39.504604, 22.026592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695385, 39.638794, 22.197636>,  <41.525925, 39.862442, 22.482706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695385, 39.638794, 22.197636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703062, -0.699053, 0.130493,
		-0.571160, 0.445773, -0.689248,
		0.423650, -0.559117, -0.712677,
		41.822479, 39.471058, 21.983833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008427, 39.640644, 22.059805>,  <41.525925, 39.862442, 22.482706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008427, 39.640644, 22.059805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300350, 39.384209, 21.964821>,  <41.475506, 39.230347, 21.907829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300350, 39.384209, 21.964821>,  <41.008427, 39.640644, 22.059805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300350, 39.384209, 21.964821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650433, -0.758072, 0.047577,
		-0.210513, 0.119731, -0.970231,
		0.729809, -0.641086, -0.237461,
		41.519295, 39.191883, 21.893583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808834, 39.294033, 21.440018>,  <41.008427, 39.640644, 22.059805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808834, 39.294033, 21.440018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066719, 39.055313, 21.631084>,  <41.221451, 38.912079, 21.745726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066719, 39.055313, 21.631084>,  <40.808834, 39.294033, 21.440018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066719, 39.055313, 21.631084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675591, -0.737219, -0.009233,
		0.357657, -0.316756, -0.878492,
		0.644716, -0.596803, 0.477669,
		41.260136, 38.876270, 21.774385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751156, 38.580410, 21.170677>,  <40.808834, 39.294033, 21.440018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751156, 38.580410, 21.170677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960293, 38.510548, 21.504414>,  <41.085777, 38.468632, 21.704657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960293, 38.510548, 21.504414>,  <40.751156, 38.580410, 21.170677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960293, 38.510548, 21.504414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606107, -0.764408, 0.219806,
		0.599389, -0.620626, -0.505526,
		0.522846, -0.174654, 0.834343,
		41.117146, 38.458153, 21.754717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965248, 37.835747, 21.098982>,  <40.751156, 38.580410, 21.170677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965248, 37.835747, 21.098982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008678, 37.932793, 21.484592>,  <41.034737, 37.991020, 21.715960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008678, 37.932793, 21.484592>,  <40.965248, 37.835747, 21.098982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008678, 37.932793, 21.484592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651322, -0.715253, 0.253362,
		0.750993, -0.655402, 0.080359,
		0.108577, 0.242613, 0.964028,
		41.041252, 38.005577, 21.773802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129807, 37.207989, 21.429676>,  <40.965248, 37.835747, 21.098982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129807, 37.207989, 21.429676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987270, 37.452587, 21.712261>,  <40.901749, 37.599346, 21.881811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987270, 37.452587, 21.712261>,  <41.129807, 37.207989, 21.429676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987270, 37.452587, 21.712261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656772, -0.701720, 0.276114,
		0.664582, -0.365593, 0.651669,
		-0.356344, 0.611499, 0.706462,
		40.880367, 37.636036, 21.924200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297371, 36.863785, 22.163252>,  <41.129807, 37.207989, 21.429676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297371, 36.863785, 22.163252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988754, 37.113739, 22.210983>,  <40.803585, 37.263710, 22.239622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988754, 37.113739, 22.210983>,  <41.297371, 36.863785, 22.163252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988754, 37.113739, 22.210983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519965, -0.727484, 0.447665,
		0.366548, 0.283347, 0.886204,
		-0.771543, 0.624886, 0.119327,
		40.757290, 37.301205, 22.246782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079823, 36.745453, 22.817717>,  <41.297371, 36.863785, 22.163252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079823, 36.745453, 22.817717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767963, 36.911213, 22.629921>,  <40.580849, 37.010670, 22.517242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767963, 36.911213, 22.629921>,  <41.079823, 36.745453, 22.817717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767963, 36.911213, 22.629921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587422, -0.743760, 0.318993,
		-0.216997, 0.524491, 0.823299,
		-0.779646, 0.414403, -0.469491,
		40.534069, 37.035534, 22.489073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481358, 36.701168, 23.204828>,  <41.079823, 36.745453, 22.817717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481358, 36.701168, 23.204828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320236, 36.754173, 22.842571>,  <40.223564, 36.785976, 22.625217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320236, 36.754173, 22.842571>,  <40.481358, 36.701168, 23.204828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320236, 36.754173, 22.842571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620352, -0.767054, 0.163680,
		-0.672987, 0.627748, 0.391179,
		-0.402805, 0.132515, -0.905642,
		40.199394, 36.793926, 22.570879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780209, 36.832069, 23.352655>,  <40.481358, 36.701168, 23.204828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780209, 36.832069, 23.352655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809280, 36.706074, 22.974133>,  <39.826721, 36.630478, 22.747019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809280, 36.706074, 22.974133>,  <39.780209, 36.832069, 23.352655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809280, 36.706074, 22.974133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702998, -0.689218, 0.175421,
		-0.707468, 0.652504, -0.271527,
		0.072678, -0.314987, -0.946309,
		39.831085, 36.611576, 22.690239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107708, 36.614574, 23.203152>,  <39.780209, 36.832069, 23.352655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107708, 36.614574, 23.203152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337975, 36.441078, 22.925884>,  <39.476135, 36.336979, 22.759523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337975, 36.441078, 22.925884>,  <39.107708, 36.614574, 23.203152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337975, 36.441078, 22.925884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624119, -0.780762, -0.029766,
		-0.528288, 0.449754, -0.720162,
		0.575662, -0.433742, -0.693167,
		39.510674, 36.310955, 22.717934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719891, 36.356464, 22.848988>,  <39.107708, 36.614574, 23.203152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719891, 36.356464, 22.848988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046837, 36.154804, 22.737450>,  <39.243004, 36.033810, 22.670527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046837, 36.154804, 22.737450>,  <38.719891, 36.356464, 22.848988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046837, 36.154804, 22.737450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536596, -0.842361, -0.049917,
		-0.209723, 0.190427, -0.959038,
		0.817362, -0.504148, -0.278845,
		39.292046, 36.003559, 22.653795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730438, 36.204098, 22.172165>,  <38.719891, 36.356464, 22.848988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730438, 36.204098, 22.172165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853176, 35.949070, 22.454826>,  <38.926819, 35.796055, 22.624424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853176, 35.949070, 22.454826>,  <38.730438, 36.204098, 22.172165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853176, 35.949070, 22.454826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725315, -0.637382, -0.260120,
		0.616251, -0.432730, -0.658012,
		0.306843, -0.637565, 0.706653,
		38.945229, 35.757801, 22.666822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843609, 35.580795, 21.997467>,  <38.730438, 36.204098, 22.172165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843609, 35.580795, 21.997467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742661, 35.557205, 22.383801>,  <38.682091, 35.543053, 22.615601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742661, 35.557205, 22.383801>,  <38.843609, 35.580795, 21.997467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742661, 35.557205, 22.383801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734808, -0.637748, -0.230943,
		0.629577, -0.767984, 0.117614,
		-0.252369, -0.058973, 0.965832,
		38.666950, 35.539513, 22.673550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766357, 34.780144, 22.262285>,  <38.843609, 35.580795, 21.997467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766357, 34.780144, 22.262285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561970, 35.052937, 22.471592>,  <38.439339, 35.216614, 22.597176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561970, 35.052937, 22.471592>,  <38.766357, 34.780144, 22.262285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561970, 35.052937, 22.471592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845440, -0.508744, -0.162514,
		0.155378, -0.525432, 0.836528,
		-0.510968, 0.681983, 0.523268,
		38.408680, 35.257530, 22.628572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064930, 34.906445, 22.045380>,  <38.766357, 34.780144, 22.262285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064930, 34.906445, 22.045380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708698, 35.081623, 22.094494>,  <37.494961, 35.186729, 22.123962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708698, 35.081623, 22.094494>,  <38.064930, 34.906445, 22.045380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708698, 35.081623, 22.094494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451882, -0.882658, -0.129296,
		0.051753, -0.170633, 0.983975,
		-0.890576, 0.437949, 0.122786,
		37.441525, 35.213009, 22.131330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802082, 34.494556, 22.525597>,  <38.064930, 34.906445, 22.045380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802082, 34.494556, 22.525597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536736, 34.697655, 22.305729>,  <37.377525, 34.819515, 22.173809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536736, 34.697655, 22.305729>,  <37.802082, 34.494556, 22.525597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536736, 34.697655, 22.305729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600415, -0.799566, -0.013976,
		-0.446592, 0.320757, 0.835267,
		-0.663368, 0.507749, -0.549667,
		37.337727, 34.849979, 22.140829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087452, 34.339306, 22.712223>,  <37.802082, 34.494556, 22.525597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087452, 34.339306, 22.712223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035538, 34.508682, 22.353592>,  <37.004391, 34.610310, 22.138412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035538, 34.508682, 22.353592>,  <37.087452, 34.339306, 22.712223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035538, 34.508682, 22.353592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593694, -0.757407, -0.271773,
		-0.794156, 0.497023, 0.349693,
		-0.129782, 0.423441, -0.896579,
		36.996601, 34.635715, 22.084618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381287, 34.527534, 22.493155>,  <37.087452, 34.339306, 22.712223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381287, 34.527534, 22.493155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596958, 34.437866, 22.168430>,  <36.726360, 34.384064, 21.973597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596958, 34.437866, 22.168430>,  <36.381287, 34.527534, 22.493155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596958, 34.437866, 22.168430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621825, -0.756062, -0.204217,
		-0.567998, 0.614913, -0.547047,
		0.539177, -0.224172, -0.811810,
		36.758713, 34.370613, 21.924887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881950, 35.072063, 22.536097>,  <36.381287, 34.527534, 22.493155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881950, 35.072063, 22.536097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665180, 35.188961, 22.851288>,  <35.535118, 35.259098, 23.040401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665180, 35.188961, 22.851288>,  <35.881950, 35.072063, 22.536097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665180, 35.188961, 22.851288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118332, -0.954787, 0.272724,
		0.832052, 0.054554, 0.552009,
		-0.541929, 0.292241, 0.787977,
		35.502602, 35.276634, 23.087681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148396, 34.772961, 23.117525>,  <35.881950, 35.072063, 22.536097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148396, 34.772961, 23.117525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775589, 34.862648, 23.231422>,  <35.551907, 34.916458, 23.299761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775589, 34.862648, 23.231422>,  <36.148396, 34.772961, 23.117525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775589, 34.862648, 23.231422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117248, -0.929947, 0.348498,
		0.342937, 0.291418, 0.893011,
		-0.932012, 0.224217, 0.284745,
		35.495987, 34.929913, 23.316847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108765, 34.452374, 23.738605>,  <36.148396, 34.772961, 23.117525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108765, 34.452374, 23.738605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728813, 34.486927, 23.618431>,  <35.500843, 34.507660, 23.546326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728813, 34.486927, 23.618431>,  <36.108765, 34.452374, 23.738605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728813, 34.486927, 23.618431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126288, -0.985186, 0.116018,
		-0.285965, 0.148145, 0.946719,
		-0.949882, 0.086382, -0.300438,
		35.443848, 34.512840, 23.528299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719292, 34.202827, 24.287914>,  <36.108765, 34.452374, 23.738605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719292, 34.202827, 24.287914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501400, 34.179012, 23.953316>,  <35.370667, 34.164722, 23.752558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501400, 34.179012, 23.953316>,  <35.719292, 34.202827, 24.287914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501400, 34.179012, 23.953316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287220, -0.923903, 0.252799,
		-0.787892, 0.377965, 0.486177,
		-0.544730, -0.059538, -0.836496,
		35.337982, 34.161152, 23.702368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190453, 33.760372, 24.449387>,  <35.719292, 34.202827, 24.287914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190453, 33.760372, 24.449387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129074, 33.755890, 24.054150>,  <35.092247, 33.753201, 23.817007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129074, 33.755890, 24.054150>,  <35.190453, 33.760372, 24.449387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129074, 33.755890, 24.054150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290578, -0.955214, 0.055959,
		-0.944468, 0.295705, 0.143316,
		-0.153444, -0.011207, -0.988094,
		35.083042, 33.752529, 23.757721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495651, 33.536739, 24.300556>,  <35.190453, 33.760372, 24.449387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495651, 33.536739, 24.300556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720325, 33.445648, 23.982399>,  <34.855129, 33.390995, 23.791506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720325, 33.445648, 23.982399>,  <34.495651, 33.536739, 24.300556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720325, 33.445648, 23.982399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320824, -0.946101, 0.044317,
		-0.762613, 0.230288, -0.604474,
		0.561688, -0.227727, -0.795391,
		34.888832, 33.377331, 23.743782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095886, 33.084827, 23.888498>,  <34.495651, 33.536739, 24.300556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095886, 33.084827, 23.888498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477531, 33.030907, 23.781540>,  <34.706516, 32.998554, 23.717365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477531, 33.030907, 23.781540>,  <34.095886, 33.084827, 23.888498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477531, 33.030907, 23.781540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168567, -0.979809, -0.107514,
		-0.247502, 0.147654, -0.957570,
		0.954111, -0.134805, -0.267394,
		34.763763, 32.990463, 23.701323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003834, 32.539742, 23.419851>,  <34.095886, 33.084827, 23.888498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003834, 32.539742, 23.419851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385864, 32.545559, 23.538258>,  <34.615082, 32.549049, 23.609303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385864, 32.545559, 23.538258>,  <34.003834, 32.539742, 23.419851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385864, 32.545559, 23.538258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033860, -0.986901, 0.157734,
		0.294434, -0.160671, -0.942069,
		0.955072, 0.014544, 0.296017,
		34.672386, 32.549923, 23.627062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247776, 31.837299, 23.241631>,  <34.003834, 32.539742, 23.419851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247776, 31.837299, 23.241631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549530, 31.958874, 23.474361>,  <34.730583, 32.031818, 23.614000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549530, 31.958874, 23.474361>,  <34.247776, 31.837299, 23.241631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549530, 31.958874, 23.474361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244605, -0.952673, 0.180506,
		0.609152, 0.006145, -0.793030,
		0.754389, 0.303935, 0.581826,
		34.775848, 32.050053, 23.648909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849995, 31.464478, 22.992811>,  <34.247776, 31.837299, 23.241631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849995, 31.464478, 22.992811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911724, 31.591125, 23.367176>,  <34.948761, 31.667114, 23.591795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911724, 31.591125, 23.367176>,  <34.849995, 31.464478, 22.992811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911724, 31.591125, 23.367176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171654, -0.941449, 0.290188,
		0.972995, 0.115871, -0.199638,
		0.154325, 0.316620, 0.935914,
		34.958023, 31.686111, 23.647951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498466, 31.196815, 23.182877>,  <34.849995, 31.464478, 22.992811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498466, 31.196815, 23.182877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302322, 31.293858, 23.517704>,  <35.184635, 31.352083, 23.718601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302322, 31.293858, 23.517704>,  <35.498466, 31.196815, 23.182877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302322, 31.293858, 23.517704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231316, -0.889795, 0.393393,
		0.840260, 0.386533, 0.380205,
		-0.490364, 0.242605, 0.837070,
		35.155212, 31.366638, 23.768826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981838, 31.123148, 23.693834>,  <35.498466, 31.196815, 23.182877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981838, 31.123148, 23.693834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627533, 31.090240, 23.876549>,  <35.414951, 31.070496, 23.986177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627533, 31.090240, 23.876549>,  <35.981838, 31.123148, 23.693834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627533, 31.090240, 23.876549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341544, -0.781938, 0.521460,
		0.314279, 0.617903, 0.720711,
		-0.885764, -0.082270, 0.456787,
		35.361805, 31.065559, 24.013584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053837, 30.603556, 24.305578>,  <35.981838, 31.123148, 23.693834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053837, 30.603556, 24.305578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660160, 30.646053, 24.362259>,  <35.423954, 30.671553, 24.396267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660160, 30.646053, 24.362259>,  <36.053837, 30.603556, 24.305578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660160, 30.646053, 24.362259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060400, -0.550770, 0.832468,
		0.166492, 0.827867, 0.535646,
		-0.984191, 0.106246, 0.141702,
		35.364902, 30.677927, 24.404770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008320, 30.728767, 24.999495>,  <36.053837, 30.603556, 24.305578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008320, 30.728767, 24.999495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665230, 30.568146, 24.871082>,  <35.459377, 30.471773, 24.794035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665230, 30.568146, 24.871082>,  <36.008320, 30.728767, 24.999495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665230, 30.568146, 24.871082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070966, -0.710942, 0.699661,
		-0.509185, 0.577335, 0.638291,
		-0.857726, -0.401554, -0.321030,
		35.407913, 30.447680, 24.774773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563934, 30.698549, 25.505440>,  <36.008320, 30.728767, 24.999495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563934, 30.698549, 25.505440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432098, 30.420395, 25.250000>,  <35.352997, 30.253502, 25.096737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432098, 30.420395, 25.250000>,  <35.563934, 30.698549, 25.505440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432098, 30.420395, 25.250000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094170, -0.697233, 0.710632,
		-0.939416, 0.174080, 0.295286,
		-0.329590, -0.695386, -0.638599,
		35.333221, 30.211779, 25.058420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985241, 30.447269, 25.831043>,  <35.563934, 30.698549, 25.505440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985241, 30.447269, 25.831043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091503, 30.191738, 25.542233>,  <35.155262, 30.038420, 25.368946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091503, 30.191738, 25.542233>,  <34.985241, 30.447269, 25.831043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091503, 30.191738, 25.542233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128139, -0.718894, 0.683207,
		-0.955513, -0.274020, -0.109121,
		0.265659, -0.638830, -0.722026,
		35.171200, 30.000090, 25.325624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520802, 29.786289, 25.960224>,  <34.985241, 30.447269, 25.831043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520802, 29.786289, 25.960224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818253, 29.654396, 25.727573>,  <34.996723, 29.575260, 25.587982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818253, 29.654396, 25.727573>,  <34.520802, 29.786289, 25.960224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818253, 29.654396, 25.727573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090254, -0.812460, 0.575989,
		-0.662474, -0.480816, -0.574408,
		0.743628, -0.329735, -0.581629,
		35.041340, 29.555475, 25.553085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299866, 29.118105, 25.796173>,  <34.520802, 29.786289, 25.960224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299866, 29.118105, 25.796173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688919, 29.103798, 25.704342>,  <34.922352, 29.095215, 25.649242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688919, 29.103798, 25.704342>,  <34.299866, 29.118105, 25.796173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688919, 29.103798, 25.704342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104095, -0.816296, 0.568177,
		-0.207726, -0.576526, -0.790233,
		0.972633, -0.035766, -0.229580,
		34.980709, 29.093067, 25.635468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461876, 28.514879, 25.622305>,  <34.299866, 29.118105, 25.796173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461876, 28.514879, 25.622305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844688, 28.591972, 25.708969>,  <35.074375, 28.638227, 25.760967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844688, 28.591972, 25.708969>,  <34.461876, 28.514879, 25.622305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844688, 28.591972, 25.708969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031155, -0.811177, 0.583970,
		0.288301, -0.552129, -0.782328,
		0.957033, 0.192732, 0.216662,
		35.131798, 28.649792, 25.773968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867699, 27.839783, 25.664371>,  <34.461876, 28.514879, 25.622305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867699, 27.839783, 25.664371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091118, 28.096214, 25.874908>,  <35.225170, 28.250072, 26.001230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091118, 28.096214, 25.874908>,  <34.867699, 27.839783, 25.664371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091118, 28.096214, 25.874908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103095, -0.683290, 0.722832,
		0.823038, -0.349476, -0.447745,
		0.558552, 0.641079, 0.526344,
		35.258682, 28.288538, 26.032812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448353, 27.435675, 25.952150>,  <34.867699, 27.839783, 25.664371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448353, 27.435675, 25.952150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382240, 27.766331, 26.167313>,  <35.342571, 27.964725, 26.296410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382240, 27.766331, 26.167313>,  <35.448353, 27.435675, 25.952150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382240, 27.766331, 26.167313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032841, -0.549719, 0.834704,
		0.985699, 0.120295, 0.118006,
		-0.165281, 0.826642, 0.537907,
		35.332657, 28.014324, 26.328686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871761, 27.342344, 26.531477>,  <35.448353, 27.435675, 25.952150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871761, 27.342344, 26.531477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587765, 27.601799, 26.641159>,  <35.417366, 27.757471, 26.706968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587765, 27.601799, 26.641159>,  <35.871761, 27.342344, 26.531477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587765, 27.601799, 26.641159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251439, -0.597204, 0.761660,
		0.657796, 0.471824, 0.587100,
		-0.709988, 0.648637, 0.274204,
		35.374767, 27.796391, 26.723421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081615, 27.535894, 27.204742>,  <35.871761, 27.342344, 26.531477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081615, 27.535894, 27.204742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710190, 27.684113, 27.196114>,  <35.487335, 27.773043, 27.190937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710190, 27.684113, 27.196114>,  <36.081615, 27.535894, 27.204742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710190, 27.684113, 27.196114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204004, -0.460945, 0.863662,
		0.310082, 0.806366, 0.503610,
		-0.928564, 0.370544, -0.021571,
		35.431622, 27.795277, 27.189642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949348, 27.844450, 27.883005>,  <36.081615, 27.535894, 27.204742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949348, 27.844450, 27.883005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600319, 27.753399, 27.710121>,  <35.390903, 27.698769, 27.606392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600319, 27.753399, 27.710121>,  <35.949348, 27.844450, 27.883005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600319, 27.753399, 27.710121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331028, -0.375113, 0.865858,
		-0.359220, 0.898597, 0.251962,
		-0.872572, -0.227627, -0.432209,
		35.338547, 27.685110, 27.580458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436695, 28.025564, 28.368164>,  <35.949348, 27.844450, 27.883005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436695, 28.025564, 28.368164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214546, 27.796600, 28.126862>,  <35.081257, 27.659222, 27.982080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214546, 27.796600, 28.126862>,  <35.436695, 28.025564, 28.368164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214546, 27.796600, 28.126862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612198, -0.209545, 0.762433,
		-0.562831, 0.792742, -0.234052,
		-0.555368, -0.572408, -0.603254,
		35.047935, 27.624878, 27.945885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808319, 28.111990, 28.669575>,  <35.436695, 28.025564, 28.368164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808319, 28.111990, 28.669575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781605, 27.777367, 28.452057>,  <34.765575, 27.576593, 28.321547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781605, 27.777367, 28.452057>,  <34.808319, 28.111990, 28.669575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781605, 27.777367, 28.452057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479597, -0.451004, 0.752716,
		-0.874943, 0.311073, -0.371090,
		-0.066787, -0.836558, -0.543793,
		34.761570, 27.526400, 28.288919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160591, 27.918806, 28.763634>,  <34.808319, 28.111990, 28.669575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160591, 27.918806, 28.763634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331097, 27.578945, 28.639446>,  <34.433399, 27.375029, 28.564934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331097, 27.578945, 28.639446>,  <34.160591, 27.918806, 28.763634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331097, 27.578945, 28.639446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363264, -0.475102, 0.801447,
		-0.828456, -0.228844, -0.511167,
		0.426263, -0.849652, -0.310470,
		34.458977, 27.324049, 28.546305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694923, 27.391413, 28.884520>,  <34.160591, 27.918806, 28.763634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694923, 27.391413, 28.884520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046471, 27.201519, 28.865654>,  <34.257397, 27.087584, 28.854334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046471, 27.201519, 28.865654>,  <33.694923, 27.391413, 28.884520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046471, 27.201519, 28.865654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283621, -0.599426, 0.748497,
		-0.383608, -0.644451, -0.661459,
		0.878865, -0.474733, -0.047165,
		34.310131, 27.059099, 28.851503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434925, 26.710783, 28.941189>,  <33.694923, 27.391413, 28.884520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434925, 26.710783, 28.941189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827248, 26.684872, 29.014748>,  <34.062641, 26.669325, 29.058882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827248, 26.684872, 29.014748>,  <33.434925, 26.710783, 28.941189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827248, 26.684872, 29.014748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167784, -0.760855, 0.626855,
		0.099311, -0.645680, -0.757122,
		0.980809, -0.064779, 0.183896,
		34.121490, 26.665438, 29.069916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687218, 26.079510, 28.693796>,  <33.434925, 26.710783, 28.941189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687218, 26.079510, 28.693796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952858, 26.206375, 28.964611>,  <34.112240, 26.282494, 29.127100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952858, 26.206375, 28.964611>,  <33.687218, 26.079510, 28.693796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952858, 26.206375, 28.964611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213366, -0.787505, 0.578197,
		0.716554, -0.528436, -0.455309,
		0.664098, 0.317161, 0.677040,
		34.152088, 26.301523, 29.167723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996376, 25.392143, 28.953844>,  <33.687218, 26.079510, 28.693796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996376, 25.392143, 28.953844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052521, 25.693157, 29.211212>,  <34.086208, 25.873766, 29.365633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052521, 25.693157, 29.211212>,  <33.996376, 25.392143, 28.953844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052521, 25.693157, 29.211212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230086, -0.607273, 0.760448,
		0.962994, -0.254783, 0.087907,
		0.140366, 0.752532, 0.643422,
		34.094631, 25.918917, 29.404240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440178, 25.145193, 29.395479>,  <33.996376, 25.392143, 28.953844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440178, 25.145193, 29.395479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269165, 25.446590, 29.595264>,  <34.166557, 25.627428, 29.715136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269165, 25.446590, 29.595264>,  <34.440178, 25.145193, 29.395479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269165, 25.446590, 29.595264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288295, -0.637301, 0.714656,
		0.856797, 0.161547, 0.489695,
		-0.427534, 0.753492, 0.499464,
		34.140903, 25.672638, 29.745104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482975, 24.886971, 30.111874>,  <34.440178, 25.145193, 29.395479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482975, 24.886971, 30.111874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249550, 25.202091, 30.190685>,  <34.109493, 25.391163, 30.237972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249550, 25.202091, 30.190685>,  <34.482975, 24.886971, 30.111874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249550, 25.202091, 30.190685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343221, -0.459167, 0.819369,
		0.735968, 0.410532, 0.538344,
		-0.583566, 0.787800, 0.197029,
		34.074478, 25.438431, 30.249794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732792, 25.284832, 30.746479>,  <34.482975, 24.886971, 30.111874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732792, 25.284832, 30.746479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343967, 25.352184, 30.681053>,  <34.110672, 25.392595, 30.641798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343967, 25.352184, 30.681053>,  <34.732792, 25.284832, 30.746479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343967, 25.352184, 30.681053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219542, -0.405408, 0.887381,
		0.083110, 0.898494, 0.431047,
		-0.972057, 0.168383, -0.163564,
		34.052349, 25.402699, 30.631985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501537, 25.633760, 31.279379>,  <34.732792, 25.284832, 30.746479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501537, 25.633760, 31.279379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173622, 25.449608, 31.143150>,  <33.976871, 25.339117, 31.061413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173622, 25.449608, 31.143150>,  <34.501537, 25.633760, 31.279379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173622, 25.449608, 31.143150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201377, -0.324977, 0.924033,
		-0.536087, 0.826098, 0.173703,
		-0.819791, -0.460382, -0.340573,
		33.927685, 25.311493, 31.040977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975277, 25.743963, 31.781338>,  <34.501537, 25.633760, 31.279379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975277, 25.743963, 31.781338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817757, 25.438061, 31.577351>,  <33.723244, 25.254519, 31.454958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817757, 25.438061, 31.577351>,  <33.975277, 25.743963, 31.781338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817757, 25.438061, 31.577351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405103, -0.353621, 0.843116,
		-0.825115, 0.538608, -0.170551,
		-0.393798, -0.764757, -0.509969,
		33.699615, 25.208633, 31.424360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466469, 25.649809, 32.102745>,  <33.975277, 25.743963, 31.781338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466469, 25.649809, 32.102745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469051, 25.301891, 31.905396>,  <33.470600, 25.093142, 31.786985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469051, 25.301891, 31.905396>,  <33.466469, 25.649809, 32.102745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469051, 25.301891, 31.905396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397099, -0.455045, 0.797023,
		-0.917753, 0.190772, -0.348332,
		0.006457, -0.869793, -0.493375,
		33.470989, 25.040953, 31.757383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754162, 25.434206, 32.066334>,  <33.466469, 25.649809, 32.102745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754162, 25.434206, 32.066334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008385, 25.125546, 32.056366>,  <33.160919, 24.940350, 32.050385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008385, 25.125546, 32.056366>,  <32.754162, 25.434206, 32.066334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008385, 25.125546, 32.056366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474838, -0.416129, 0.775478,
		-0.608767, -0.481029, -0.630883,
		0.635556, -0.771653, -0.024915,
		33.199051, 24.894051, 32.048893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282539, 24.846601, 32.068127>,  <32.754162, 25.434206, 32.066334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282539, 24.846601, 32.068127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631474, 24.698242, 32.195545>,  <32.840832, 24.609226, 32.271996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631474, 24.698242, 32.195545>,  <32.282539, 24.846601, 32.068127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631474, 24.698242, 32.195545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482116, -0.544299, 0.686514,
		-0.081243, -0.752445, -0.653626,
		0.872332, -0.370898, 0.318545,
		32.893173, 24.586973, 32.291107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066788, 24.247286, 32.384304>,  <32.282539, 24.846601, 32.068127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066788, 24.247286, 32.384304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446140, 24.260334, 32.510483>,  <32.673752, 24.268164, 32.586189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446140, 24.260334, 32.510483>,  <32.066788, 24.247286, 32.384304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446140, 24.260334, 32.510483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243410, -0.562706, 0.790008,
		0.203272, -0.826013, -0.525721,
		0.948384, 0.032621, 0.315443,
		32.730656, 24.270121, 32.605114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255535, 23.584492, 32.486282>,  <32.066788, 24.247286, 32.384304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255535, 23.584492, 32.486282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499928, 23.802460, 32.715984>,  <32.646561, 23.933241, 32.853806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499928, 23.802460, 32.715984>,  <32.255535, 23.584492, 32.486282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499928, 23.802460, 32.715984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210523, -0.587433, 0.781411,
		0.763143, -0.598318, -0.244189,
		0.610976, 0.544921, 0.574255,
		32.683220, 23.965937, 32.888260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740074, 23.167812, 32.735039>,  <32.255535, 23.584492, 32.486282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740074, 23.167812, 32.735039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725449, 23.455872, 33.012180>,  <32.716675, 23.628706, 33.178467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725449, 23.455872, 33.012180>,  <32.740074, 23.167812, 32.735039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725449, 23.455872, 33.012180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109252, -0.692046, 0.713538,
		0.993342, -0.049608, 0.103980,
		-0.036562, 0.720147, 0.692858,
		32.714481, 23.671915, 33.220039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261612, 23.035887, 33.260422>,  <32.740074, 23.167812, 32.735039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261612, 23.035887, 33.260422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966133, 23.264000, 33.404148>,  <32.788845, 23.400867, 33.490383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966133, 23.264000, 33.404148>,  <33.261612, 23.035887, 33.260422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966133, 23.264000, 33.404148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123216, -0.638341, 0.759828,
		0.662681, 0.517008, 0.541808,
		-0.738696, 0.570283, 0.359313,
		32.744526, 23.435085, 33.511940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469002, 23.108932, 33.941734>,  <33.261612, 23.035887, 33.260422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469002, 23.108932, 33.941734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080151, 23.188717, 33.892433>,  <32.846840, 23.236588, 33.862854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080151, 23.188717, 33.892433>,  <33.469002, 23.108932, 33.941734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080151, 23.188717, 33.892433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219835, -0.592547, 0.774959,
		0.081542, 0.780451, 0.619877,
		-0.972123, 0.199462, -0.123253,
		32.788513, 23.248556, 33.855457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209892, 23.555773, 34.408558>,  <33.469002, 23.108932, 33.941734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209892, 23.555773, 34.408558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932209, 23.285770, 34.308609>,  <32.765598, 23.123768, 34.248642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932209, 23.285770, 34.308609>,  <33.209892, 23.555773, 34.408558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932209, 23.285770, 34.308609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180581, -0.499384, 0.847352,
		-0.696750, 0.543120, 0.468572,
		-0.694211, -0.675008, -0.249869,
		32.723946, 23.083267, 34.233646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654926, 23.372078, 34.968109>,  <33.209892, 23.555773, 34.408558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654926, 23.372078, 34.968109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682434, 23.051918, 34.729908>,  <32.698940, 22.859821, 34.586987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682434, 23.051918, 34.729908>,  <32.654926, 23.372078, 34.968109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682434, 23.051918, 34.729908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077073, -0.599398, 0.796732,
		-0.994651, -0.008896, -0.102912,
		0.068773, -0.800402, -0.595506,
		32.703068, 22.811798, 34.551258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057751, 23.106331, 35.453403>,  <32.654926, 23.372078, 34.968109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057751, 23.106331, 35.453403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256405, 22.991863, 35.125633>,  <32.375595, 22.923183, 34.928970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256405, 22.991863, 35.125633>,  <32.057751, 23.106331, 35.453403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256405, 22.991863, 35.125633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340738, 0.804014, -0.487298,
		0.798281, 0.521219, 0.301791,
		0.496634, -0.286169, -0.819428,
		32.405396, 22.906013, 34.879807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431581, 23.109413, 35.167236>,  <32.057751, 23.106331, 35.453403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431581, 23.109413, 35.167236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371447, 23.504177, 35.190598>,  <31.335365, 23.741035, 35.204613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371447, 23.504177, 35.190598>,  <31.431581, 23.109413, 35.167236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371447, 23.504177, 35.190598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418568, 0.117052, -0.900610,
		-0.895656, -0.110951, -0.430686,
		-0.150336, 0.986909, 0.058398,
		31.326345, 23.800249, 35.208118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016525, 23.358603, 34.581108>,  <31.431581, 23.109413, 35.167236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016525, 23.358603, 34.581108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247543, 23.658798, 34.709610>,  <31.386154, 23.838915, 34.786713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247543, 23.658798, 34.709610>,  <31.016525, 23.358603, 34.581108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247543, 23.658798, 34.709610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321519, 0.152611, -0.934524,
		-0.750377, 0.643022, -0.153156,
		0.577546, 0.750488, 0.321259,
		31.420807, 23.883945, 34.805988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896219, 24.060295, 34.158939>,  <31.016525, 23.358603, 34.581108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896219, 24.060295, 34.158939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264771, 24.004921, 34.304211>,  <31.485901, 23.971697, 34.391373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264771, 24.004921, 34.304211>,  <30.896219, 24.060295, 34.158939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264771, 24.004921, 34.304211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370092, 0.027038, -0.928602,
		0.118731, 0.990002, 0.076145,
		0.921377, -0.138435, 0.363182,
		31.541183, 23.963390, 34.413166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930531, 24.733765, 33.810860>,  <30.896219, 24.060295, 34.158939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930531, 24.733765, 33.810860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690165, 24.800789, 34.123482>,  <30.545944, 24.841003, 34.311054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690165, 24.800789, 34.123482>,  <30.930531, 24.733765, 33.810860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690165, 24.800789, 34.123482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474306, 0.861779, 0.179921,
		-0.643379, 0.478812, -0.597330,
		-0.600914, 0.167560, 0.781553,
		30.509890, 24.851057, 34.357948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411819, 25.345654, 33.691006>,  <30.930531, 24.733765, 33.810860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411819, 25.345654, 33.691006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580214, 25.274235, 34.046734>,  <30.681250, 25.231382, 34.260170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580214, 25.274235, 34.046734>,  <30.411819, 25.345654, 33.691006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580214, 25.274235, 34.046734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250490, 0.965194, 0.075206,
		-0.871796, 0.191106, 0.451055,
		0.420983, -0.178549, 0.889322,
		30.706509, 25.220671, 34.313530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138466, 25.901817, 34.284382>,  <30.411819, 25.345654, 33.691006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138466, 25.901817, 34.284382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503695, 25.744354, 34.326973>,  <30.722832, 25.649876, 34.352528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503695, 25.744354, 34.326973>,  <30.138466, 25.901817, 34.284382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503695, 25.744354, 34.326973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393053, 0.919104, 0.027502,
		-0.108691, 0.016740, 0.993935,
		0.913069, -0.393658, 0.106478,
		30.777615, 25.626257, 34.358917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533413, 26.158651, 34.993679>,  <30.138466, 25.901817, 34.284382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533413, 26.158651, 34.993679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804226, 26.080578, 34.709839>,  <30.966713, 26.033733, 34.539536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804226, 26.080578, 34.709839>,  <30.533413, 26.158651, 34.993679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804226, 26.080578, 34.709839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294182, 0.955583, 0.017837,
		0.674600, -0.220827, 0.704379,
		0.677032, -0.195183, -0.709600,
		31.007336, 26.022022, 34.496960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135685, 26.451067, 35.216263>,  <30.533413, 26.158651, 34.993679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135685, 26.451067, 35.216263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134493, 26.421688, 34.817345>,  <31.133778, 26.404060, 34.577995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134493, 26.421688, 34.817345>,  <31.135685, 26.451067, 35.216263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134493, 26.421688, 34.817345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390590, 0.917992, -0.068773,
		0.920560, -0.389738, 0.025953,
		-0.002979, -0.073446, -0.997295,
		31.133598, 26.399654, 34.518158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793087, 26.660549, 35.054668>,  <31.135685, 26.451067, 35.216263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793087, 26.660549, 35.054668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558304, 26.695271, 34.732689>,  <31.417433, 26.716103, 34.539501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558304, 26.695271, 34.732689>,  <31.793087, 26.660549, 35.054668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558304, 26.695271, 34.732689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436941, 0.870975, -0.224689,
		0.681587, -0.483599, -0.549154,
		-0.586959, 0.086803, -0.804950,
		31.382215, 26.721312, 34.491203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224361, 26.963600, 34.638824>,  <31.793087, 26.660549, 35.054668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224361, 26.963600, 34.638824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865820, 26.999081, 34.465076>,  <31.650694, 27.020369, 34.360828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865820, 26.999081, 34.465076>,  <32.224361, 26.963600, 34.638824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865820, 26.999081, 34.465076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269546, 0.886922, -0.375118,
		0.351978, -0.453322, -0.818908,
		-0.896357, 0.088701, -0.434368,
		31.596912, 27.025690, 34.334766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273403, 27.149948, 33.962311>,  <32.224361, 26.963600, 34.638824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273403, 27.149948, 33.962311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906176, 27.279881, 34.053207>,  <31.685841, 27.357840, 34.107746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906176, 27.279881, 34.053207>,  <32.273403, 27.149948, 33.962311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906176, 27.279881, 34.053207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233755, 0.906541, -0.351486,
		-0.320178, -0.269568, -0.908196,
		-0.918066, 0.324833, 0.227241,
		31.630756, 27.377331, 34.121380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113400, 27.391922, 33.360737>,  <32.273403, 27.149948, 33.962311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113400, 27.391922, 33.360737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848616, 27.547050, 33.617302>,  <31.689745, 27.640127, 33.771240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848616, 27.547050, 33.617302>,  <32.113400, 27.391922, 33.360737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848616, 27.547050, 33.617302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094329, 0.892038, -0.442008,
		-0.743582, -0.232087, -0.627074,
		-0.661958, 0.387820, 0.641410,
		31.650028, 27.663397, 33.809727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572607, 27.666155, 32.997345>,  <32.113400, 27.391922, 33.360737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572607, 27.666155, 32.997345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547365, 27.844364, 33.354561>,  <31.532219, 27.951290, 33.568890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547365, 27.844364, 33.354561>,  <31.572607, 27.666155, 32.997345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547365, 27.844364, 33.354561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056891, 0.891767, -0.448905,
		-0.996384, -0.079135, -0.030929,
		-0.063106, 0.445522, 0.893044,
		31.528433, 27.978022, 33.622475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909292, 28.038912, 33.000038>,  <31.572607, 27.666155, 32.997345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909292, 28.038912, 33.000038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166206, 28.197887, 33.262188>,  <31.320354, 28.293272, 33.419479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166206, 28.197887, 33.262188>,  <30.909292, 28.038912, 33.000038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166206, 28.197887, 33.262188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110150, 0.894044, -0.434226,
		-0.758510, 0.206708, 0.618008,
		0.642284, 0.397438, 0.655373,
		31.358892, 28.317120, 33.458801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653027, 28.579605, 32.986156>,  <30.909292, 28.038912, 33.000038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653027, 28.579605, 32.986156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991888, 28.668655, 33.179138>,  <31.195206, 28.722086, 33.294930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991888, 28.668655, 33.179138>,  <30.653027, 28.579605, 32.986156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991888, 28.668655, 33.179138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045926, 0.935274, -0.350932,
		-0.529356, 0.275136, 0.802547,
		0.847156, 0.222626, 0.482457,
		31.246035, 28.735443, 33.323875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535561, 29.238739, 33.253345>,  <30.653027, 28.579605, 32.986156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535561, 29.238739, 33.253345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933836, 29.202267, 33.246540>,  <31.172802, 29.180384, 33.242455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933836, 29.202267, 33.246540>,  <30.535561, 29.238739, 33.253345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933836, 29.202267, 33.246540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072462, 0.879164, -0.470978,
		0.057905, 0.467714, 0.881981,
		0.995689, -0.091182, -0.017016,
		31.232542, 29.174911, 33.241436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715078, 29.878841, 33.497894>,  <30.535561, 29.238739, 33.253345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715078, 29.878841, 33.497894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018900, 29.728806, 33.285332>,  <31.201193, 29.638784, 33.157795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018900, 29.728806, 33.285332>,  <30.715078, 29.878841, 33.497894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018900, 29.728806, 33.285332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118667, 0.883180, -0.453775,
		0.639530, 0.281606, 0.715332,
		0.759553, -0.375089, -0.531402,
		31.246765, 29.616280, 33.125912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262051, 30.453741, 33.456474>,  <30.715078, 29.878841, 33.497894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262051, 30.453741, 33.456474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342922, 30.206360, 33.152729>,  <31.391445, 30.057930, 32.970482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342922, 30.206360, 33.152729>,  <31.262051, 30.453741, 33.456474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342922, 30.206360, 33.152729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165201, 0.785805, -0.596003,
		0.965315, -0.004950, 0.261042,
		0.202178, -0.618455, -0.759366,
		31.403576, 30.020823, 32.924919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914003, 30.628611, 33.145824>,  <31.262051, 30.453741, 33.456474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914003, 30.628611, 33.145824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739010, 30.430214, 32.845798>,  <31.634014, 30.311176, 32.665783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739010, 30.430214, 32.845798>,  <31.914003, 30.628611, 33.145824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739010, 30.430214, 32.845798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344407, 0.678098, -0.649282,
		0.830659, -0.542377, -0.125831,
		-0.437481, -0.495994, -0.750067,
		31.607765, 30.281416, 32.620777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425884, 30.473381, 32.706573>,  <31.914003, 30.628611, 33.145824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425884, 30.473381, 32.706573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088150, 30.468735, 32.492298>,  <31.885509, 30.465946, 32.363731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088150, 30.468735, 32.492298>,  <32.425884, 30.473381, 32.706573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088150, 30.468735, 32.492298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413843, 0.620901, -0.665745,
		0.340346, -0.783803, -0.519439,
		-0.844333, -0.011617, -0.535693,
		31.834850, 30.465250, 32.331589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664795, 30.234644, 31.993065>,  <32.425884, 30.473381, 32.706573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664795, 30.234644, 31.993065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320797, 30.437737, 31.972622>,  <32.114399, 30.559591, 31.960356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320797, 30.437737, 31.972622>,  <32.664795, 30.234644, 31.993065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320797, 30.437737, 31.972622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419595, 0.646585, -0.637078,
		-0.290420, -0.569330, -0.769103,
		-0.859998, 0.507732, -0.051106,
		32.062798, 30.590055, 31.957291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624569, 30.343361, 31.338898>,  <32.664795, 30.234644, 31.993065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624569, 30.343361, 31.338898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388020, 30.617188, 31.509377>,  <32.246090, 30.781485, 31.611664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388020, 30.617188, 31.509377>,  <32.624569, 30.343361, 31.338898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388020, 30.617188, 31.509377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300855, 0.677659, -0.671017,
		-0.748173, -0.268598, -0.606706,
		-0.591374, 0.684568, 0.426198,
		32.210606, 30.822557, 31.637236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160183, 30.541172, 30.805653>,  <32.624569, 30.343361, 31.338898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160183, 30.541172, 30.805653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169731, 30.846153, 31.064293>,  <32.175461, 31.029142, 31.219477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169731, 30.846153, 31.064293>,  <32.160183, 30.541172, 30.805653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169731, 30.846153, 31.064293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239688, 0.623558, -0.744127,
		-0.970557, 0.172743, -0.167869,
		0.023867, 0.762453, 0.646603,
		32.176891, 31.074890, 31.258274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772282, 30.948227, 30.546770>,  <32.160183, 30.541172, 30.805653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772282, 30.948227, 30.546770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994883, 31.183693, 30.781300>,  <32.128445, 31.324972, 30.922018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994883, 31.183693, 30.781300>,  <31.772282, 30.948227, 30.546770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994883, 31.183693, 30.781300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032475, 0.720567, -0.692624,
		-0.830210, 0.366407, 0.420115,
		0.556504, 0.588667, 0.586323,
		32.161835, 31.360292, 30.957197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535574, 31.643768, 30.428614>,  <31.772282, 30.948227, 30.546770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535574, 31.643768, 30.428614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898817, 31.670738, 30.593922>,  <32.116764, 31.686920, 30.693108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898817, 31.670738, 30.593922>,  <31.535574, 31.643768, 30.428614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898817, 31.670738, 30.593922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200211, 0.796911, -0.569954,
		-0.367771, 0.600322, 0.710182,
		0.908108, 0.067426, 0.413272,
		32.171249, 31.690966, 30.717903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653362, 32.266876, 30.299099>,  <31.535574, 31.643768, 30.428614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653362, 32.266876, 30.299099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024227, 32.162094, 30.406242>,  <32.246746, 32.099224, 30.470528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024227, 32.162094, 30.406242>,  <31.653362, 32.266876, 30.299099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024227, 32.162094, 30.406242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374466, 0.670819, -0.640138,
		-0.011997, 0.693816, 0.720052,
		0.927163, -0.261956, 0.267859,
		32.302376, 32.083508, 30.486599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003826, 32.908115, 30.530130>,  <31.653362, 32.266876, 30.299099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003826, 32.908115, 30.530130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296906, 32.647488, 30.451527>,  <32.472752, 32.491112, 30.404364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296906, 32.647488, 30.451527>,  <32.003826, 32.908115, 30.530130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296906, 32.647488, 30.451527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452211, 0.681905, -0.574901,
		0.508588, 0.332364, 0.794275,
		0.732697, -0.651567, -0.196510,
		32.516716, 32.452019, 30.392574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532799, 33.223179, 30.747526>,  <32.003826, 32.908115, 30.530130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532799, 33.223179, 30.747526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649387, 32.971825, 30.459034>,  <32.719341, 32.821011, 30.285938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649387, 32.971825, 30.459034>,  <32.532799, 33.223179, 30.747526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649387, 32.971825, 30.459034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415834, 0.762235, -0.496065,
		0.861469, -0.155325, 0.483473,
		0.291468, -0.628389, -0.721231,
		32.736828, 32.783306, 30.242664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206322, 33.515011, 30.508398>,  <32.532799, 33.223179, 30.747526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206322, 33.515011, 30.508398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057987, 33.281250, 30.219688>,  <32.968987, 33.140995, 30.046463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057987, 33.281250, 30.219688>,  <33.206322, 33.515011, 30.508398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057987, 33.281250, 30.219688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397364, 0.602607, -0.692074,
		0.839395, -0.543451, 0.008755,
		-0.370833, -0.584403, -0.721773,
		32.946735, 33.105930, 30.003157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803299, 33.492649, 30.098089>,  <33.206322, 33.515011, 30.508398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803299, 33.492649, 30.098089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499386, 33.379189, 29.864071>,  <33.317039, 33.311111, 29.723660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499386, 33.379189, 29.864071>,  <33.803299, 33.492649, 30.098089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499386, 33.379189, 29.864071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433406, 0.449791, -0.780927,
		0.484661, -0.846893, -0.218803,
		-0.759778, -0.283654, -0.585045,
		33.271450, 33.294094, 29.688557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154289, 33.328548, 29.363602>,  <33.803299, 33.492649, 30.098089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154289, 33.328548, 29.363602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756481, 33.347687, 29.326408>,  <33.517796, 33.359169, 29.304092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756481, 33.347687, 29.326408>,  <34.154289, 33.328548, 29.363602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756481, 33.347687, 29.326408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104092, 0.538055, -0.836458,
		0.010008, -0.841550, -0.540086,
		-0.994517, 0.047847, -0.092983,
		33.458126, 33.362041, 29.298513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990940, 33.190048, 28.662970>,  <34.154289, 33.328548, 29.363602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990940, 33.190048, 28.662970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689133, 33.407475, 28.810070>,  <33.508049, 33.537930, 28.898331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689133, 33.407475, 28.810070>,  <33.990940, 33.190048, 28.662970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689133, 33.407475, 28.810070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095292, 0.463678, -0.880864,
		-0.649327, -0.699669, -0.298055,
		-0.754515, 0.543567, 0.367752,
		33.462776, 33.570545, 28.920395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344013, 33.189835, 28.249786>,  <33.990940, 33.190048, 28.662970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344013, 33.189835, 28.249786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360554, 33.534527, 28.452057>,  <33.370480, 33.741341, 28.573420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360554, 33.534527, 28.452057>,  <33.344013, 33.189835, 28.249786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360554, 33.534527, 28.452057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197020, 0.503204, -0.841409,
		-0.979527, -0.064835, 0.190586,
		0.041351, 0.861732, 0.505676,
		33.372959, 33.793045, 28.603760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839214, 33.494720, 27.998459>,  <33.344013, 33.189835, 28.249786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839214, 33.494720, 27.998459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039265, 33.799793, 28.162498>,  <33.159294, 33.982838, 28.260921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039265, 33.799793, 28.162498>,  <32.839214, 33.494720, 27.998459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039265, 33.799793, 28.162498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129140, 0.533976, -0.835579,
		-0.856267, 0.364938, 0.365550,
		0.500130, 0.762686, 0.410098,
		33.189304, 34.028599, 28.285528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461422, 34.136150, 27.983885>,  <32.839214, 33.494720, 27.998459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461422, 34.136150, 27.983885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819603, 34.292946, 28.068268>,  <33.034512, 34.387024, 28.118898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819603, 34.292946, 28.068268>,  <32.461422, 34.136150, 27.983885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819603, 34.292946, 28.068268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142189, 0.700939, -0.698904,
		-0.421833, 0.595841, 0.683397,
		0.895455, 0.391992, 0.210957,
		33.088238, 34.410545, 28.131556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317768, 34.845169, 27.940880>,  <32.461422, 34.136150, 27.983885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317768, 34.845169, 27.940880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716587, 34.831154, 27.913548>,  <32.955879, 34.822746, 27.897148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716587, 34.831154, 27.913548>,  <32.317768, 34.845169, 27.940880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716587, 34.831154, 27.913548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027468, 0.668253, -0.743427,
		0.071708, 0.743108, 0.665318,
		0.997047, -0.035035, -0.068331,
		33.015701, 34.820644, 27.893047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571308, 35.545635, 27.863306>,  <32.317768, 34.845169, 27.940880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571308, 35.545635, 27.863306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875614, 35.324654, 27.727047>,  <33.058197, 35.192066, 27.645290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875614, 35.324654, 27.727047>,  <32.571308, 35.545635, 27.863306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875614, 35.324654, 27.727047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231019, 0.720976, -0.653318,
		0.606526, 0.418322, 0.676116,
		0.760761, -0.552450, -0.340650,
		33.103844, 35.158920, 27.624851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126450, 36.046478, 27.655371>,  <32.571308, 35.545635, 27.863306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126450, 36.046478, 27.655371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197674, 35.694332, 27.479530>,  <33.240410, 35.483044, 27.374025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197674, 35.694332, 27.479530>,  <33.126450, 36.046478, 27.655371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197674, 35.694332, 27.479530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382702, 0.473528, -0.793291,
		0.906550, -0.026981, 0.421236,
		0.178063, -0.880366, -0.439602,
		33.251091, 35.430222, 27.347651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768681, 36.215008, 27.308817>,  <33.126450, 36.046478, 27.655371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768681, 36.215008, 27.308817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597603, 35.884666, 27.161827>,  <33.494957, 35.686462, 27.073633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597603, 35.884666, 27.161827>,  <33.768681, 36.215008, 27.308817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597603, 35.884666, 27.161827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155430, 0.333287, -0.929925,
		0.890460, -0.454839, -0.014181,
		-0.427693, -0.825858, -0.367474,
		33.469296, 35.636909, 27.051584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261089, 36.079220, 26.831364>,  <33.768681, 36.215008, 27.308817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261089, 36.079220, 26.831364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907204, 35.914505, 26.743984>,  <33.694874, 35.815678, 26.691557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907204, 35.914505, 26.743984>,  <34.261089, 36.079220, 26.831364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907204, 35.914505, 26.743984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080659, 0.326328, -0.941809,
		0.459107, -0.850849, -0.255492,
		-0.884712, -0.411783, -0.218448,
		33.641788, 35.790970, 26.678450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404060, 35.601234, 26.245453>,  <34.261089, 36.079220, 26.831364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404060, 35.601234, 26.245453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014992, 35.691830, 26.265873>,  <33.781551, 35.746185, 26.278126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014992, 35.691830, 26.265873>,  <34.404060, 35.601234, 26.245453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014992, 35.691830, 26.265873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022996, 0.312791, -0.949543,
		-0.231025, -0.922424, -0.309453,
		-0.972676, 0.226484, 0.051050,
		33.723190, 35.759773, 26.281189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084999, 35.374744, 25.541384>,  <34.404060, 35.601234, 26.245453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084999, 35.374744, 25.541384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861183, 35.656860, 25.715504>,  <33.726894, 35.826130, 25.819975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861183, 35.656860, 25.715504>,  <34.084999, 35.374744, 25.541384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861183, 35.656860, 25.715504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060690, 0.488935, -0.870206,
		-0.826580, -0.513331, -0.230773,
		-0.559537, 0.705290, 0.435298,
		33.693321, 35.868446, 25.846092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555035, 35.497215, 25.087141>,  <34.084999, 35.374744, 25.541384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555035, 35.497215, 25.087141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540356, 35.820904, 25.321682>,  <33.531548, 36.015118, 25.462406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540356, 35.820904, 25.321682>,  <33.555035, 35.497215, 25.087141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540356, 35.820904, 25.321682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079532, 0.587252, -0.805487,
		-0.996157, 0.017075, -0.085910,
		-0.036697, 0.809224, 0.586353,
		33.529346, 36.063671, 25.497587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139782, 35.899403, 24.787603>,  <33.555035, 35.497215, 25.087141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139782, 35.899403, 24.787603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359623, 36.142796, 25.016579>,  <33.491528, 36.288834, 25.153963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359623, 36.142796, 25.016579>,  <33.139782, 35.899403, 24.787603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359623, 36.142796, 25.016579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361275, 0.444714, -0.819579,
		-0.753274, 0.657247, 0.024584,
		0.549598, 0.608486, 0.572439,
		33.524502, 36.325340, 25.188311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944050, 36.540623, 24.562220>,  <33.139782, 35.899403, 24.787603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944050, 36.540623, 24.562220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295391, 36.590332, 24.746853>,  <33.506195, 36.620155, 24.857632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295391, 36.590332, 24.746853>,  <32.944050, 36.540623, 24.562220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295391, 36.590332, 24.746853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352142, 0.484785, -0.800612,
		-0.323260, 0.865760, 0.382050,
		0.878350, 0.124271, 0.461582,
		33.558895, 36.627613, 24.885328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221375, 36.694080, 24.727570>,  <32.944050, 36.540623, 24.562220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221375, 36.694080, 24.727570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919531, 36.745781, 24.470242>,  <31.738424, 36.776802, 24.315845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919531, 36.745781, 24.470242>,  <32.221375, 36.694080, 24.727570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919531, 36.745781, 24.470242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634508, -0.393592, 0.665195,
		-0.167230, 0.910154, 0.379018,
		-0.754608, 0.129249, -0.643320,
		31.693148, 36.784557, 24.277245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653473, 36.989296, 25.085749>,  <32.221375, 36.694080, 24.727570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653473, 36.989296, 25.085749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475988, 36.798836, 24.782063>,  <31.369497, 36.684559, 24.599852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475988, 36.798836, 24.782063>,  <31.653473, 36.989296, 25.085749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475988, 36.798836, 24.782063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607229, -0.463315, 0.645455,
		-0.659087, 0.747411, -0.083553,
		-0.443709, -0.476147, -0.759215,
		31.342876, 36.655991, 24.554298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035208, 37.084824, 25.206322>,  <31.653473, 36.989296, 25.085749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035208, 37.084824, 25.206322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045475, 36.776134, 24.952148>,  <31.051636, 36.590919, 24.799644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045475, 36.776134, 24.952148>,  <31.035208, 37.084824, 25.206322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045475, 36.776134, 24.952148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553926, -0.540120, 0.633590,
		-0.832170, 0.335720, -0.441345,
		0.025670, -0.771727, -0.635435,
		31.053177, 36.544617, 24.761518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310942, 36.899284, 24.975460>,  <31.035208, 37.084824, 25.206322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310942, 36.899284, 24.975460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530769, 36.568268, 24.929577>,  <30.662666, 36.369659, 24.902046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530769, 36.568268, 24.929577>,  <30.310942, 36.899284, 24.975460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530769, 36.568268, 24.929577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754887, -0.550695, 0.356203,
		-0.357941, -0.109165, -0.927341,
		0.549567, -0.827537, -0.114710,
		30.695639, 36.320007, 24.895164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851885, 36.333553, 25.061079>,  <30.310942, 36.899284, 24.975460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851885, 36.333553, 25.061079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184708, 36.112785, 25.038921>,  <30.384401, 35.980324, 25.025627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184708, 36.112785, 25.038921>,  <29.851885, 36.333553, 25.061079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184708, 36.112785, 25.038921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514466, -0.805195, 0.294934,
		-0.207382, -0.216904, -0.953911,
		0.832056, -0.551918, -0.055393,
		30.434324, 35.947208, 25.022303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702541, 35.615997, 24.645004>,  <29.851885, 36.333553, 25.061079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702541, 35.615997, 24.645004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018637, 35.576408, 24.886906>,  <30.208294, 35.552654, 25.032047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018637, 35.576408, 24.886906>,  <29.702541, 35.615997, 24.645004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018637, 35.576408, 24.886906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371320, -0.862403, 0.344067,
		0.487488, -0.496452, -0.718256,
		0.790238, -0.098975, 0.604753,
		30.255709, 35.546715, 25.068333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961170, 34.908848, 24.571672>,  <29.702541, 35.615997, 24.645004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961170, 34.908848, 24.571672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066217, 35.043228, 24.933483>,  <30.129246, 35.123856, 25.150570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066217, 35.043228, 24.933483>,  <29.961170, 34.908848, 24.571672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066217, 35.043228, 24.933483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230725, -0.888373, 0.396937,
		0.936908, -0.312940, -0.155792,
		0.262619, 0.335949, 0.904527,
		30.145002, 35.144012, 25.204842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010075, 34.218307, 24.974094>,  <29.961170, 34.908848, 24.571672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010075, 34.218307, 24.974094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089520, 34.481415, 25.264721>,  <30.137186, 34.639278, 25.439096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089520, 34.481415, 25.264721>,  <30.010075, 34.218307, 24.974094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089520, 34.481415, 25.264721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153074, -0.711416, 0.685898,
		0.968050, -0.247447, -0.040611,
		0.198614, 0.657767, 0.726564,
		30.149103, 34.678745, 25.482691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589203, 33.904305, 25.336948>,  <30.010075, 34.218307, 24.974094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589203, 33.904305, 25.336948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350718, 34.134289, 25.561073>,  <30.207626, 34.272278, 25.695549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350718, 34.134289, 25.561073>,  <30.589203, 33.904305, 25.336948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350718, 34.134289, 25.561073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060459, -0.663791, 0.745470,
		0.800545, 0.478336, 0.361001,
		-0.596215, 0.574957, 0.560315,
		30.171854, 34.306774, 25.729168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837873, 33.777065, 25.997623>,  <30.589203, 33.904305, 25.336948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837873, 33.777065, 25.997623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479504, 33.942924, 26.061348>,  <30.264481, 34.042442, 26.099583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479504, 33.942924, 26.061348>,  <30.837873, 33.777065, 25.997623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479504, 33.942924, 26.061348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080458, -0.504197, 0.859833,
		0.436856, 0.757528, 0.485086,
		-0.895926, 0.414652, 0.159312,
		30.210726, 34.067322, 26.109142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843197, 34.172729, 26.660316>,  <30.837873, 33.777065, 25.997623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843197, 34.172729, 26.660316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457005, 34.085655, 26.603100>,  <30.225288, 34.033409, 26.568769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457005, 34.085655, 26.603100>,  <30.843197, 34.172729, 26.660316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457005, 34.085655, 26.603100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041727, -0.412811, 0.909860,
		-0.257112, 0.884421, 0.389478,
		-0.965480, -0.217684, -0.143043,
		30.167360, 34.020351, 26.560186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429829, 34.360676, 27.252720>,  <30.843197, 34.172729, 26.660316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429829, 34.360676, 27.252720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185606, 34.096039, 27.078583>,  <30.039072, 33.937256, 26.974100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185606, 34.096039, 27.078583>,  <30.429829, 34.360676, 27.252720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185606, 34.096039, 27.078583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178870, -0.420297, 0.889582,
		-0.771510, 0.621009, 0.138276,
		-0.610555, -0.661588, -0.435343,
		30.002439, 33.897564, 26.947979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808153, 34.226002, 27.650846>,  <30.429829, 34.360676, 27.252720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808153, 34.226002, 27.650846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788731, 33.904743, 27.413326>,  <29.777077, 33.711990, 27.270813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788731, 33.904743, 27.413326>,  <29.808153, 34.226002, 27.650846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788731, 33.904743, 27.413326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231278, -0.569306, 0.788924,
		-0.971675, 0.175641, -0.158106,
		-0.048556, -0.803144, -0.593803,
		29.774164, 33.663799, 27.235186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143791, 33.849571, 27.750628>,  <29.808153, 34.226002, 27.650846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143791, 33.849571, 27.750628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407087, 33.583874, 27.608929>,  <29.565065, 33.424454, 27.523909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407087, 33.583874, 27.608929>,  <29.143791, 33.849571, 27.750628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407087, 33.583874, 27.608929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256020, -0.640047, 0.724427,
		-0.707934, -0.386153, -0.591367,
		0.658242, -0.664248, -0.354248,
		29.604561, 33.384598, 27.502655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755877, 33.180386, 27.739138>,  <29.143791, 33.849571, 27.750628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755877, 33.180386, 27.739138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147364, 33.106068, 27.773987>,  <29.382256, 33.061478, 27.794897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147364, 33.106068, 27.773987>,  <28.755877, 33.180386, 27.739138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147364, 33.106068, 27.773987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200657, -0.777604, 0.595876,
		-0.042962, -0.600677, -0.798337,
		0.978719, -0.185792, 0.087123,
		29.440979, 33.050331, 27.800123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769352, 32.453575, 27.567329>,  <28.755877, 33.180386, 27.739138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769352, 32.453575, 27.567329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108595, 32.564194, 27.748096>,  <29.312141, 32.630566, 27.856558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108595, 32.564194, 27.748096>,  <28.769352, 32.453575, 27.567329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108595, 32.564194, 27.748096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015397, -0.839740, 0.542770,
		0.529598, -0.467286, -0.707934,
		0.848109, 0.276550, 0.451919,
		29.363028, 32.647160, 27.883673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276863, 31.904894, 27.482285>,  <28.769352, 32.453575, 27.567329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276863, 31.904894, 27.482285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422691, 32.098934, 27.800220>,  <29.510187, 32.215359, 27.990982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422691, 32.098934, 27.800220>,  <29.276863, 31.904894, 27.482285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422691, 32.098934, 27.800220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109983, -0.870042, 0.480552,
		0.924658, -0.087776, -0.370544,
		0.364570, 0.485100, 0.794838,
		29.532063, 32.244465, 28.038671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862322, 31.527660, 27.673058>,  <29.276863, 31.904894, 27.482285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862322, 31.527660, 27.673058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743671, 31.746735, 27.985992>,  <29.672482, 31.878180, 28.173754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743671, 31.746735, 27.985992>,  <29.862322, 31.527660, 27.673058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743671, 31.746735, 27.985992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317593, -0.716007, 0.621666,
		0.900637, 0.432869, 0.038446,
		-0.296628, 0.547685, 0.782338,
		29.654684, 31.911039, 28.220694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414442, 31.461929, 28.160604>,  <29.862322, 31.527660, 27.673058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414442, 31.461929, 28.160604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102936, 31.588741, 28.377129>,  <29.916033, 31.664827, 28.507044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102936, 31.588741, 28.377129>,  <30.414442, 31.461929, 28.160604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102936, 31.588741, 28.377129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255582, -0.627689, 0.735312,
		0.572891, 0.710985, 0.407795,
		-0.778764, 0.317029, 0.541312,
		29.869307, 31.683849, 28.539522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564249, 31.369610, 28.855829>,  <30.414442, 31.461929, 28.160604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564249, 31.369610, 28.855829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173700, 31.446999, 28.894341>,  <29.939371, 31.493433, 28.917446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173700, 31.446999, 28.894341>,  <30.564249, 31.369610, 28.855829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173700, 31.446999, 28.894341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039961, -0.599466, 0.799402,
		0.212377, 0.776665, 0.593032,
		-0.976370, 0.193473, 0.096276,
		29.880789, 31.505041, 28.923223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491270, 31.644789, 29.540371>,  <30.564249, 31.369610, 28.855829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491270, 31.644789, 29.540371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148027, 31.472851, 29.428020>,  <29.942081, 31.369688, 29.360611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148027, 31.472851, 29.428020>,  <30.491270, 31.644789, 29.540371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148027, 31.472851, 29.428020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010746, -0.531855, 0.846767,
		-0.513363, 0.729633, 0.451768,
		-0.858105, -0.429844, -0.280875,
		29.890596, 31.343897, 29.343758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212837, 31.652813, 30.197433>,  <30.491270, 31.644789, 29.540371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212837, 31.652813, 30.197433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020544, 31.398117, 29.956284>,  <29.905169, 31.245300, 29.811594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020544, 31.398117, 29.956284>,  <30.212837, 31.652813, 30.197433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020544, 31.398117, 29.956284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173908, -0.604642, 0.777280,
		-0.859449, 0.478509, 0.179936,
		-0.480732, -0.636740, -0.602876,
		29.876324, 31.207094, 29.775421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552687, 31.488127, 30.548946>,  <30.212837, 31.652813, 30.197433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552687, 31.488127, 30.548946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623808, 31.191696, 30.289967>,  <29.666481, 31.013838, 30.134579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623808, 31.191696, 30.289967>,  <29.552687, 31.488127, 30.548946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623808, 31.191696, 30.289967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277545, -0.668987, 0.689511,
		-0.944116, 0.057097, -0.324631,
		0.177805, -0.741078, -0.647448,
		29.677149, 30.969372, 30.095732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964478, 31.016287, 30.578489>,  <29.552687, 31.488127, 30.548946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964478, 31.016287, 30.578489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253920, 30.791866, 30.417683>,  <29.427584, 30.657213, 30.321199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253920, 30.791866, 30.417683>,  <28.964478, 31.016287, 30.578489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253920, 30.791866, 30.417683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055281, -0.627689, 0.776499,
		-0.687999, -0.539653, -0.485213,
		0.723603, -0.561054, -0.402017,
		29.471001, 30.623550, 30.297077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752140, 30.379728, 30.666853>,  <28.964478, 31.016287, 30.578489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752140, 30.379728, 30.666853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128624, 30.283047, 30.572445>,  <29.354513, 30.225037, 30.515800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128624, 30.283047, 30.572445>,  <28.752140, 30.379728, 30.666853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128624, 30.283047, 30.572445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058703, -0.805030, 0.590323,
		-0.332688, -0.541761, -0.771890,
		0.941208, -0.241705, -0.236020,
		29.410986, 30.210535, 30.501638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821701, 29.633272, 30.518702>,  <28.752140, 30.379728, 30.666853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821701, 29.633272, 30.518702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210487, 29.694923, 30.589725>,  <29.443760, 29.731915, 30.632339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210487, 29.694923, 30.589725>,  <28.821701, 29.633272, 30.518702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210487, 29.694923, 30.589725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058633, -0.890209, 0.451764,
		0.227694, -0.428689, -0.874289,
		0.971966, 0.154126, 0.177560,
		29.502077, 29.741161, 30.642994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165955, 29.140574, 30.200001>,  <28.821701, 29.633272, 30.518702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165955, 29.140574, 30.200001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390335, 29.277161, 30.501659>,  <29.524963, 29.359112, 30.682655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390335, 29.277161, 30.501659>,  <29.165955, 29.140574, 30.200001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390335, 29.277161, 30.501659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066477, -0.926607, 0.370108,
		0.825176, -0.157479, -0.542480,
		0.560950, 0.341466, 0.754146,
		29.558620, 29.379601, 30.727903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758106, 28.674603, 30.339500>,  <29.165955, 29.140574, 30.200001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758106, 28.674603, 30.339500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737354, 28.853523, 30.696651>,  <29.724903, 28.960875, 30.910942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737354, 28.853523, 30.696651>,  <29.758106, 28.674603, 30.339500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737354, 28.853523, 30.696651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011332, -0.893760, 0.448401,
		0.998589, 0.033380, 0.041298,
		-0.051878, 0.447301, 0.892878,
		29.721790, 28.987713, 30.964516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149920, 28.297493, 30.771214>,  <29.758106, 28.674603, 30.339500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149920, 28.297493, 30.771214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963095, 28.497974, 31.062595>,  <29.851000, 28.618263, 31.237425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963095, 28.497974, 31.062595>,  <30.149920, 28.297493, 30.771214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963095, 28.497974, 31.062595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104430, -0.849338, 0.517416,
		0.878036, 0.165593, 0.449035,
		-0.467063, 0.501202, 0.728456,
		29.822975, 28.648335, 31.281132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536373, 28.235067, 31.385141>,  <30.149920, 28.297493, 30.771214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536373, 28.235067, 31.385141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173296, 28.323521, 31.527798>,  <29.955450, 28.376593, 31.613392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173296, 28.323521, 31.527798>,  <30.536373, 28.235067, 31.385141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173296, 28.323521, 31.527798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061375, -0.770791, 0.634125,
		0.415122, 0.597480, 0.686069,
		-0.907693, 0.221131, 0.356643,
		29.900988, 28.389860, 31.634790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508169, 28.039511, 32.107845>,  <30.536373, 28.235067, 31.385141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508169, 28.039511, 32.107845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124445, 28.096470, 32.010315>,  <29.894211, 28.130646, 31.951797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124445, 28.096470, 32.010315>,  <30.508169, 28.039511, 32.107845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124445, 28.096470, 32.010315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259946, -0.782557, 0.565714,
		-0.110252, 0.606076, 0.787729,
		-0.959308, 0.142396, -0.243825,
		29.836653, 28.139189, 31.937168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074907, 28.018688, 32.667255>,  <30.508169, 28.039511, 32.107845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074907, 28.018688, 32.667255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786617, 27.929539, 32.404690>,  <29.613644, 27.876049, 32.247150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786617, 27.929539, 32.404690>,  <30.074907, 28.018688, 32.667255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786617, 27.929539, 32.404690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413725, -0.621488, 0.665271,
		-0.556228, 0.751053, 0.355711,
		-0.720723, -0.222876, -0.656418,
		29.570400, 27.862677, 32.207764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376842, 28.169197, 32.959316>,  <30.074907, 28.018688, 32.667255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376842, 28.169197, 32.959316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332724, 27.893780, 32.672611>,  <29.306253, 27.728529, 32.500587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332724, 27.893780, 32.672611>,  <29.376842, 28.169197, 32.959316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332724, 27.893780, 32.672611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530149, -0.569243, 0.628414,
		-0.840700, 0.449301, -0.302246,
		-0.110296, -0.688543, -0.716759,
		29.299635, 27.687218, 32.457584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707371, 28.056948, 33.036823>,  <29.376842, 28.169197, 32.959316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707371, 28.056948, 33.036823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852371, 27.735188, 32.848553>,  <28.939371, 27.542131, 32.735592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852371, 27.735188, 32.848553>,  <28.707371, 28.056948, 33.036823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852371, 27.735188, 32.848553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677338, -0.574282, 0.459797,
		-0.640161, 0.152131, -0.753028,
		0.362501, -0.804398, -0.470677,
		28.961123, 27.493868, 32.707352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166538, 27.637110, 32.875641>,  <28.707371, 28.056948, 33.036823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166538, 27.637110, 32.875641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499321, 27.417755, 32.909386>,  <28.698992, 27.286142, 32.929634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499321, 27.417755, 32.909386>,  <28.166538, 27.637110, 32.875641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499321, 27.417755, 32.909386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489447, -0.653761, 0.577094,
		-0.261316, -0.521411, -0.812308,
		0.831959, -0.548385, 0.084365,
		28.748909, 27.253239, 32.934696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948740, 26.941294, 32.879230>,  <28.166538, 27.637110, 32.875641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948740, 26.941294, 32.879230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321112, 26.890190, 33.016079>,  <28.544535, 26.859528, 33.098186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321112, 26.890190, 33.016079>,  <27.948740, 26.941294, 32.879230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321112, 26.890190, 33.016079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328643, -0.701612, 0.632245,
		0.159261, -0.701012, -0.695139,
		0.930929, -0.127760, 0.342123,
		28.600391, 26.851862, 33.118717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995785, 26.252993, 32.933270>,  <27.948740, 26.941294, 32.879230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995785, 26.252993, 32.933270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303204, 26.379616, 33.155666>,  <28.487656, 26.455589, 33.289104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303204, 26.379616, 33.155666>,  <27.995785, 26.252993, 32.933270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303204, 26.379616, 33.155666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365026, -0.496739, 0.787405,
		0.525442, -0.808109, -0.266215,
		0.768549, 0.316560, 0.555988,
		28.533768, 26.474585, 33.322464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333023, 25.577717, 33.326786>,  <27.995785, 26.252993, 32.933270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333023, 25.577717, 33.326786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392071, 25.938023, 33.490166>,  <28.427500, 26.154205, 33.588196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392071, 25.938023, 33.490166>,  <28.333023, 25.577717, 33.326786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392071, 25.938023, 33.490166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346561, -0.339684, 0.874363,
		0.926339, -0.270627, 0.262026,
		0.147620, 0.900764, 0.408451,
		28.436357, 26.208252, 33.612701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685051, 25.320869, 32.738384>,  <28.333023, 25.577717, 33.326786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685051, 25.320869, 32.738384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561291, 24.992683, 32.546089>,  <28.487036, 24.795773, 32.430714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561291, 24.992683, 32.546089>,  <28.685051, 25.320869, 32.738384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561291, 24.992683, 32.546089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678637, 0.163623, -0.716016,
		0.666126, -0.547781, 0.506174,
		-0.309398, -0.820466, -0.480738,
		28.468472, 24.746544, 32.401867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240717, 24.883202, 32.522591>,  <28.685051, 25.320869, 32.738384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240717, 24.883202, 32.522591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926636, 24.833160, 32.280003>,  <28.738188, 24.803135, 32.134449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926636, 24.833160, 32.280003>,  <29.240717, 24.883202, 32.522591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926636, 24.833160, 32.280003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543601, 0.329797, -0.771836,
		0.296565, -0.935727, -0.190956,
		-0.785205, -0.125095, -0.606469,
		28.691074, 24.795630, 32.098061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600569, 24.888958, 31.862240>,  <29.240717, 24.883202, 32.522591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600569, 24.888958, 31.862240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216967, 24.917828, 31.752625>,  <28.986805, 24.935150, 31.686855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216967, 24.917828, 31.752625>,  <29.600569, 24.888958, 31.862240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216967, 24.917828, 31.752625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283143, 0.283993, -0.916066,
		0.011708, -0.956106, -0.292787,
		-0.959006, 0.072175, -0.274040,
		28.929264, 24.939480, 31.670412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570013, 24.475346, 31.293270>,  <29.600569, 24.888958, 31.862240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570013, 24.475346, 31.293270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265598, 24.731880, 31.254261>,  <29.082949, 24.885801, 31.230856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265598, 24.731880, 31.254261>,  <29.570013, 24.475346, 31.293270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265598, 24.731880, 31.254261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285684, 0.196373, -0.937988,
		-0.582415, -0.741704, -0.332667,
		-0.761037, 0.641337, -0.097522,
		29.037287, 24.924282, 31.225004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236032, 24.355846, 30.615355>,  <29.570013, 24.475346, 31.293270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236032, 24.355846, 30.615355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131903, 24.728218, 30.717808>,  <29.069426, 24.951641, 30.779280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131903, 24.728218, 30.717808>,  <29.236032, 24.355846, 30.615355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131903, 24.728218, 30.717808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322245, 0.333841, -0.885838,
		-0.910159, -0.148065, -0.386893,
		-0.260322, 0.930928, 0.256135,
		29.053806, 25.007496, 30.794649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937366, 24.720583, 29.963915>,  <29.236032, 24.355846, 30.615355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937366, 24.720583, 29.963915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031614, 25.023338, 30.207752>,  <29.088163, 25.204992, 30.354055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031614, 25.023338, 30.207752>,  <28.937366, 24.720583, 29.963915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031614, 25.023338, 30.207752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311469, 0.535354, -0.785101,
		-0.920581, 0.374856, -0.109606,
		0.235622, 0.756888, 0.609593,
		29.102301, 25.250404, 30.390631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597200, 25.362688, 29.592264>,  <28.937366, 24.720583, 29.963915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597200, 25.362688, 29.592264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878273, 25.476509, 29.853115>,  <29.046917, 25.544802, 30.009626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878273, 25.476509, 29.853115>,  <28.597200, 25.362688, 29.592264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878273, 25.476509, 29.853115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211344, 0.791705, -0.573182,
		-0.679392, 0.540587, 0.496177,
		0.702681, 0.284551, 0.652128,
		29.089077, 25.561874, 30.048754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400414, 26.040941, 29.700691>,  <28.597200, 25.362688, 29.592264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400414, 26.040941, 29.700691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784895, 25.974968, 29.789135>,  <29.015583, 25.935385, 29.842201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784895, 25.974968, 29.789135>,  <28.400414, 26.040941, 29.700691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784895, 25.974968, 29.789135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271727, 0.704143, -0.656008,
		-0.047496, 0.690638, 0.721640,
		0.961201, -0.164932, 0.221109,
		29.073256, 25.925488, 29.855467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674555, 26.761778, 29.824957>,  <28.400414, 26.040941, 29.700691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674555, 26.761778, 29.824957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988384, 26.524837, 29.751671>,  <29.176682, 26.382673, 29.707699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988384, 26.524837, 29.751671>,  <28.674555, 26.761778, 29.824957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988384, 26.524837, 29.751671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428794, 0.731789, -0.529735,
		0.447862, 0.337056, 0.828138,
		0.784573, -0.592349, -0.183213,
		29.223757, 26.347132, 29.696707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320042, 27.216347, 29.818184>,  <28.674555, 26.761778, 29.824957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320042, 27.216347, 29.818184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422274, 26.878304, 29.630367>,  <29.483614, 26.675478, 29.517677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422274, 26.878304, 29.630367>,  <29.320042, 27.216347, 29.818184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422274, 26.878304, 29.630367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325199, 0.532523, -0.781450,
		0.910452, 0.047029, 0.410932,
		0.255582, -0.845108, -0.469543,
		29.498949, 26.624771, 29.489504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099016, 27.262558, 29.653416>,  <29.320042, 27.216347, 29.818184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099016, 27.262558, 29.653416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954741, 26.992970, 29.395527>,  <29.868176, 26.831217, 29.240793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954741, 26.992970, 29.395527>,  <30.099016, 27.262558, 29.653416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954741, 26.992970, 29.395527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363769, 0.534857, -0.762627,
		0.858823, -0.509601, 0.052254,
		-0.360687, -0.673970, -0.644724,
		29.846535, 26.790779, 29.202110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659462, 27.022850, 29.332302>,  <30.099016, 27.262558, 29.653416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659462, 27.022850, 29.332302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366747, 26.937916, 29.073257>,  <30.191118, 26.886955, 28.917830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366747, 26.937916, 29.073257>,  <30.659462, 27.022850, 29.332302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366747, 26.937916, 29.073257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519664, 0.440952, -0.731786,
		0.440952, -0.872052, -0.212338,
		0.731786, 0.212338, 0.647613,
		30.147211, 26.874214, 28.878973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015224, 27.001421, 28.657736>,  <30.659462, 27.022850, 29.332302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015224, 27.001421, 28.657736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622688, 27.055660, 28.603199>,  <30.387167, 27.088203, 28.570477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622688, 27.055660, 28.603199>,  <31.015224, 27.001421, 28.657736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622688, 27.055660, 28.603199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187078, 0.509266, -0.840030,
		-0.044470, -0.849860, -0.525129,
		-0.981338, 0.135596, -0.136343,
		30.328287, 27.096338, 28.562296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867283, 26.962286, 27.953545>,  <31.015224, 27.001421, 28.657736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867283, 26.962286, 27.953545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553032, 27.162537, 28.098961>,  <30.364481, 27.282686, 28.186211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553032, 27.162537, 28.098961>,  <30.867283, 26.962286, 27.953545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553032, 27.162537, 28.098961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078171, 0.663202, -0.744347,
		-0.613740, -0.556362, -0.560165,
		-0.785629, 0.500624, 0.363542,
		30.317343, 27.312723, 28.208023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439428, 27.225817, 27.347370>,  <30.867283, 26.962286, 27.953545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439428, 27.225817, 27.347370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309513, 27.458858, 27.645386>,  <30.231564, 27.598682, 27.824196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309513, 27.458858, 27.645386>,  <30.439428, 27.225817, 27.347370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309513, 27.458858, 27.645386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094138, 0.763922, -0.638406,
		-0.941090, -0.277483, -0.193268,
		-0.324788, 0.582603, 0.745041,
		30.212076, 27.633640, 27.868898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024593, 27.711830, 26.961243>,  <30.439428, 27.225817, 27.347370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024593, 27.711830, 26.961243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123705, 27.874241, 27.313095>,  <30.183172, 27.971687, 27.524206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123705, 27.874241, 27.313095>,  <30.024593, 27.711830, 26.961243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123705, 27.874241, 27.313095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053896, 0.912314, -0.405930,
		-0.967316, 0.053172, 0.247935,
		0.247779, 0.406026, 0.879630,
		30.198038, 27.996048, 27.576984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469856, 28.201103, 27.156229>,  <30.024593, 27.711830, 26.961243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469856, 28.201103, 27.156229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788748, 28.310268, 27.371616>,  <29.980082, 28.375767, 27.500849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788748, 28.310268, 27.371616>,  <29.469856, 28.201103, 27.156229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788748, 28.310268, 27.371616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083991, 0.933445, -0.348749,
		-0.597807, 0.232806, 0.767091,
		0.797228, 0.272913, 0.538467,
		30.027916, 28.392143, 27.533155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295202, 28.901834, 27.225084>,  <29.469856, 28.201103, 27.156229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295202, 28.901834, 27.225084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679878, 28.873287, 27.330956>,  <29.910685, 28.856159, 27.394478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679878, 28.873287, 27.330956>,  <29.295202, 28.901834, 27.225084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679878, 28.873287, 27.330956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181504, 0.889344, -0.419672,
		-0.205438, 0.451635, 0.868229,
		0.961692, -0.071370, 0.264678,
		29.968386, 28.851875, 27.410358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389650, 29.476759, 27.298182>,  <29.295202, 28.901834, 27.225084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389650, 29.476759, 27.298182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772738, 29.363647, 27.276970>,  <30.002590, 29.295780, 27.264242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772738, 29.363647, 27.276970>,  <29.389650, 29.476759, 27.298182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772738, 29.363647, 27.276970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254198, 0.918002, -0.304393,
		0.134756, 0.278043, 0.951070,
		0.957718, -0.282779, -0.053029,
		30.060053, 29.278814, 27.261061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727209, 29.993126, 27.685707>,  <29.389650, 29.476759, 27.298182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727209, 29.993126, 27.685707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971600, 29.837257, 27.410065>,  <30.118233, 29.743736, 27.244678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971600, 29.837257, 27.410065>,  <29.727209, 29.993126, 27.685707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971600, 29.837257, 27.410065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190809, 0.917290, -0.349529,
		0.768311, 0.082066, 0.634794,
		0.610975, -0.389671, -0.689105,
		30.154892, 29.720356, 27.203333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271036, 30.443563, 27.624701>,  <29.727209, 29.993126, 27.685707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271036, 30.443563, 27.624701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285566, 30.225033, 27.289986>,  <30.294285, 30.093914, 27.089157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285566, 30.225033, 27.289986>,  <30.271036, 30.443563, 27.624701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285566, 30.225033, 27.289986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107493, 0.834615, -0.540242,
		0.993542, -0.070325, 0.089043,
		0.036324, -0.546325, -0.836785,
		30.296463, 30.061134, 27.038950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763699, 30.812101, 27.198605>,  <30.271036, 30.443563, 27.624701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763699, 30.812101, 27.198605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561668, 30.590801, 26.933632>,  <30.440451, 30.458021, 26.774649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561668, 30.590801, 26.933632>,  <30.763699, 30.812101, 27.198605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561668, 30.590801, 26.933632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102354, 0.800501, -0.590526,
		0.856985, -0.230458, -0.460940,
		-0.505074, -0.553251, -0.662429,
		30.410147, 30.424826, 26.734903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036968, 31.029697, 26.617588>,  <30.763699, 30.812101, 27.198605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036968, 31.029697, 26.617588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696079, 30.860619, 26.494270>,  <30.491547, 30.759171, 26.420279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696079, 30.860619, 26.494270>,  <31.036968, 31.029697, 26.617588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696079, 30.860619, 26.494270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201946, 0.809376, -0.551478,
		0.482636, -0.407722, -0.775129,
		-0.852221, -0.422698, -0.308296,
		30.440413, 30.733809, 26.401781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963285, 31.331131, 26.041899>,  <31.036968, 31.029697, 26.617588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963285, 31.331131, 26.041899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592833, 31.181488, 26.061199>,  <30.370562, 31.091703, 26.072779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592833, 31.181488, 26.061199>,  <30.963285, 31.331131, 26.041899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592833, 31.181488, 26.061199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312702, 0.689915, -0.652866,
		0.210952, -0.619727, -0.755935,
		-0.926130, -0.374106, 0.048250,
		30.314993, 31.069256, 26.075674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835155, 31.237942, 25.342628>,  <30.963285, 31.331131, 26.041899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835155, 31.237942, 25.342628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481977, 31.257187, 25.529430>,  <30.270071, 31.268734, 25.641512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481977, 31.257187, 25.529430>,  <30.835155, 31.237942, 25.342628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481977, 31.257187, 25.529430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308853, 0.689640, -0.654987,
		-0.353577, -0.722553, -0.594054,
		-0.882946, 0.048113, 0.467003,
		30.217094, 31.271622, 25.669531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288898, 31.161335, 24.840191>,  <30.835155, 31.237942, 25.342628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288898, 31.161335, 24.840191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079855, 31.328514, 25.137432>,  <29.954430, 31.428822, 25.315777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079855, 31.328514, 25.137432>,  <30.288898, 31.161335, 24.840191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079855, 31.328514, 25.137432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492017, 0.563965, -0.663222,
		-0.696276, -0.712223, -0.089094,
		-0.522607, 0.417950, 0.743101,
		29.923073, 31.453899, 25.360363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646589, 31.137848, 24.550348>,  <30.288898, 31.161335, 24.840191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646589, 31.137848, 24.550348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623932, 31.410248, 24.842384>,  <29.610336, 31.573689, 25.017607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623932, 31.410248, 24.842384>,  <29.646589, 31.137848, 24.550348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623932, 31.410248, 24.842384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500942, 0.613168, -0.610805,
		-0.863625, -0.400332, 0.306408,
		-0.056645, 0.680999, 0.730090,
		29.606939, 31.614548, 25.061411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986887, 31.432514, 24.477009>,  <29.646589, 31.137848, 24.550348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986887, 31.432514, 24.477009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242231, 31.684925, 24.653328>,  <29.395439, 31.836370, 24.759119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242231, 31.684925, 24.653328>,  <28.986887, 31.432514, 24.477009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242231, 31.684925, 24.653328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251015, 0.712013, -0.655766,
		-0.727658, 0.307970, 0.612918,
		0.638362, 0.631025, 0.440797,
		29.433741, 31.874233, 24.785566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569056, 32.068127, 24.587889>,  <28.986887, 31.432514, 24.477009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569056, 32.068127, 24.587889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959690, 32.153461, 24.598961>,  <29.194071, 32.204662, 24.605604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959690, 32.153461, 24.598961>,  <28.569056, 32.068127, 24.587889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959690, 32.153461, 24.598961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168626, 0.839034, -0.517288,
		-0.133580, 0.500510, 0.855363,
		0.976587, 0.213335, 0.027679,
		29.252666, 32.217461, 24.607265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650469, 32.799877, 24.534731>,  <28.569056, 32.068127, 24.587889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650469, 32.799877, 24.534731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023413, 32.674236, 24.463131>,  <29.247179, 32.598850, 24.420170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023413, 32.674236, 24.463131>,  <28.650469, 32.799877, 24.534731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023413, 32.674236, 24.463131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094052, 0.688809, -0.718816,
		0.349082, 0.653360, 0.671761,
		0.932360, -0.314106, -0.179001,
		29.303122, 32.580006, 24.409431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052572, 33.444401, 24.576124>,  <28.650469, 32.799877, 24.534731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052572, 33.444401, 24.576124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207855, 33.160496, 24.340996>,  <29.301025, 32.990154, 24.199919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207855, 33.160496, 24.340996>,  <29.052572, 33.444401, 24.576124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207855, 33.160496, 24.340996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034357, 0.626255, -0.778861,
		0.920930, 0.322557, 0.218733,
		0.388210, -0.709761, -0.587819,
		29.324318, 32.947567, 24.164650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418613, 33.777573, 24.109070>,  <29.052572, 33.444401, 24.576124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418613, 33.777573, 24.109070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381174, 33.418545, 23.936737>,  <29.358711, 33.203129, 23.833338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381174, 33.418545, 23.936737>,  <29.418613, 33.777573, 24.109070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381174, 33.418545, 23.936737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031853, 0.429808, -0.902358,
		0.995100, -0.098182, -0.011639,
		-0.093597, -0.897566, -0.430830,
		29.353094, 33.149277, 23.807487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999687, 33.711342, 23.663223>,  <29.418613, 33.777573, 24.109070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999687, 33.711342, 23.663223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708345, 33.458237, 23.558067>,  <29.533541, 33.306374, 23.494974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708345, 33.458237, 23.558067>,  <29.999687, 33.711342, 23.663223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708345, 33.458237, 23.558067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048255, 0.335346, -0.940858,
		0.683499, -0.697964, -0.213717,
		-0.728355, -0.632763, -0.262889,
		29.489840, 33.268406, 23.479200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271473, 33.443413, 23.003019>,  <29.999687, 33.711342, 23.663223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271473, 33.443413, 23.003019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875937, 33.397160, 23.040596>,  <29.638615, 33.369408, 23.063141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875937, 33.397160, 23.040596>,  <30.271473, 33.443413, 23.003019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875937, 33.397160, 23.040596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106164, 0.104526, -0.988839,
		0.104526, -0.987777, -0.115636,
		0.988839, 0.115636, -0.093940,
		29.579285, 33.362469, 23.068779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150747, 33.103363, 22.397192>,  <30.271473, 33.443413, 23.003019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150747, 33.103363, 22.397192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786179, 33.196320, 22.533020>,  <29.567438, 33.252094, 22.614517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786179, 33.196320, 22.533020>,  <30.150747, 33.103363, 22.397192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786179, 33.196320, 22.533020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314756, 0.137781, -0.939119,
		-0.265034, -0.962813, -0.052428,
		-0.911420, 0.232396, 0.339568,
		29.512753, 33.266037, 22.634890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701290, 32.803341, 21.853220>,  <30.150747, 33.103363, 22.397192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701290, 32.803341, 21.853220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494513, 33.076572, 22.059586>,  <29.370445, 33.240513, 22.183405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494513, 33.076572, 22.059586>,  <29.701290, 32.803341, 21.853220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494513, 33.076572, 22.059586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329743, 0.397280, -0.856410,
		-0.789960, -0.612836, 0.019869,
		-0.516945, 0.683081, 0.515914,
		29.339428, 33.281498, 22.214359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007748, 32.721184, 21.792301>,  <29.701290, 32.803341, 21.853220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007748, 32.721184, 21.792301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075359, 33.105068, 21.882084>,  <29.115927, 33.335400, 21.935953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075359, 33.105068, 21.882084>,  <29.007748, 32.721184, 21.792301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075359, 33.105068, 21.882084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357407, 0.271917, -0.893489,
		-0.918526, 0.070802, 0.388969,
		0.169028, 0.959713, 0.224457,
		29.126068, 33.392982, 21.949421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434656, 33.129581, 21.619978>,  <29.007748, 32.721184, 21.792301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434656, 33.129581, 21.619978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678413, 33.446644, 21.627312>,  <28.824667, 33.636883, 21.631712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678413, 33.446644, 21.627312>,  <28.434656, 33.129581, 21.619978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678413, 33.446644, 21.627312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369678, 0.304513, -0.877844,
		-0.701413, 0.528172, 0.478596,
		0.609391, 0.792657, 0.018335,
		28.861231, 33.684441, 21.632812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005108, 33.782009, 21.461163>,  <28.434656, 33.129581, 21.619978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005108, 33.782009, 21.461163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390503, 33.857231, 21.384922>,  <28.621740, 33.902367, 21.339178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390503, 33.857231, 21.384922>,  <28.005108, 33.782009, 21.461163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390503, 33.857231, 21.384922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251330, 0.389669, -0.885997,
		-0.092346, 0.901550, 0.422705,
		0.963486, 0.188057, -0.190603,
		28.679548, 33.913647, 21.327742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026558, 34.433697, 21.112537>,  <28.005108, 33.782009, 21.461163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026558, 34.433697, 21.112537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401077, 34.332764, 21.014824>,  <28.625788, 34.272202, 20.956196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401077, 34.332764, 21.014824>,  <28.026558, 34.433697, 21.112537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401077, 34.332764, 21.014824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058274, 0.574288, -0.816576,
		0.346340, 0.778794, 0.523000,
		0.936297, -0.252336, -0.244282,
		28.681967, 34.257065, 20.941540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458202, 34.605522, 20.836813>,  <28.026558, 34.433697, 21.112537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458202, 34.605522, 20.836813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610386, 34.238792, 20.885284>,  <27.701696, 34.018753, 20.914368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610386, 34.238792, 20.885284>,  <27.458202, 34.605522, 20.836813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610386, 34.238792, 20.885284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626333, -0.351857, -0.695632,
		0.680409, 0.188763, -0.708104,
		0.380461, -0.916823, 0.121179,
		27.724524, 33.963745, 20.921638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698471, 34.441608, 20.554354>,  <27.458202, 34.605522, 20.836813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698471, 34.441608, 20.554354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795073, 34.773079, 20.756336>,  <26.853033, 34.971962, 20.877525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795073, 34.773079, 20.756336>,  <26.698471, 34.441608, 20.554354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795073, 34.773079, 20.756336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643797, -0.252527, 0.722326,
		0.726086, -0.499533, 0.472510,
		0.241504, 0.828672, 0.504954,
		26.867523, 35.021679, 20.907822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085333, 34.011597, 20.667812>,  <26.698471, 34.441608, 20.554354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085333, 34.011597, 20.667812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297060, 33.779007, 20.420681>,  <26.424097, 33.639454, 20.272402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297060, 33.779007, 20.420681>,  <26.085333, 34.011597, 20.667812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297060, 33.779007, 20.420681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779611, -0.046070, -0.624567,
		0.334705, 0.812261, -0.477707,
		0.529320, -0.581472, -0.617828,
		26.455856, 33.604565, 20.235332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.402416, 34.079536, 20.335178>,  <26.085333, 34.011597, 20.667812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.402416, 34.079536, 20.335178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522444, 34.459927, 20.365131>,  <25.594460, 34.688160, 20.383102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522444, 34.459927, 20.365131>,  <25.402416, 34.079536, 20.335178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522444, 34.459927, 20.365131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819109, 0.297100, -0.490705,
		-0.488895, 0.085910, 0.868102,
		0.300070, 0.950974, 0.074881,
		25.612465, 34.745220, 20.387596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.784779, 34.442162, 20.503204>,  <25.402416, 34.079536, 20.335178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.784779, 34.442162, 20.503204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050955, 34.685802, 20.330608>,  <25.210661, 34.831985, 20.227051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050955, 34.685802, 20.330608>,  <24.784779, 34.442162, 20.503204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050955, 34.685802, 20.330608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698322, 0.303778, -0.648125,
		-0.263697, 0.732607, 0.627496,
		0.665440, 0.609103, -0.431490,
		25.250587, 34.868534, 20.201162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.377731, 35.165180, 20.463699>,  <24.784779, 34.442162, 20.503204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.377731, 35.165180, 20.463699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660992, 35.077984, 20.195072>,  <24.830948, 35.025665, 20.033895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660992, 35.077984, 20.195072>,  <24.377731, 35.165180, 20.463699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.660992, 35.077984, 20.195072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644741, 0.188055, -0.740908,
		0.287805, 0.957661, -0.007378,
		0.708151, -0.217994, -0.671566,
		24.873436, 35.012585, 19.993603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.832449, 35.541718, 20.746243>,  <24.377731, 35.165180, 20.463699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.832449, 35.541718, 20.746243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.576641, 35.508171, 20.440567>,  <23.423157, 35.488041, 20.257162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.576641, 35.508171, 20.440567>,  <23.832449, 35.541718, 20.746243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.576641, 35.508171, 20.440567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325987, 0.870657, -0.368360,
		0.696238, -0.484688, -0.529462,
		-0.639520, -0.083869, -0.764186,
		23.384785, 35.483009, 20.211311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.427652, 35.686695, 21.352606>,  <23.832449, 35.541718, 20.746243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.427652, 35.686695, 21.352606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.083361, 35.876873, 21.425381>,  <22.876785, 35.990978, 21.469046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.083361, 35.876873, 21.425381>,  <23.427652, 35.686695, 21.352606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.083361, 35.876873, 21.425381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467230, -0.595931, -0.653117,
		-0.202096, -0.647164, 0.735076,
		-0.860728, 0.475441, 0.181939,
		22.825142, 36.019505, 21.479961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.882309, 35.121719, 21.523439>,  <23.427652, 35.686695, 21.352606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.882309, 35.121719, 21.523439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.701982, 35.464741, 21.424343>,  <22.593786, 35.670551, 21.364885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.701982, 35.464741, 21.424343>,  <22.882309, 35.121719, 21.523439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.701982, 35.464741, 21.424343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577453, -0.491826, -0.651655,
		-0.680672, -0.150717, 0.716917,
		-0.450814, 0.857550, -0.247740,
		22.566738, 35.722004, 21.350021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.198872, 34.961540, 21.570215>,  <22.882309, 35.121719, 21.523439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.198872, 34.961540, 21.570215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.187946, 35.287239, 21.338268>,  <22.181391, 35.482658, 21.199100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.187946, 35.287239, 21.338268>,  <22.198872, 34.961540, 21.570215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.187946, 35.287239, 21.338268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505356, -0.511745, -0.694790,
		-0.862479, 0.274065, 0.425463,
		-0.027311, 0.814252, -0.579870,
		22.179752, 35.531513, 21.164307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.608128, 34.848862, 21.214846>,  <22.198872, 34.961540, 21.570215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.608128, 34.848862, 21.214846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.733639, 35.152260, 20.986382>,  <21.808945, 35.334301, 20.849304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.733639, 35.152260, 20.986382>,  <21.608128, 34.848862, 21.214846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.733639, 35.152260, 20.986382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586637, -0.318125, -0.744750,
		-0.746592, 0.568749, 0.345143,
		0.313778, 0.758499, -0.571159,
		21.827772, 35.379810, 20.815033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.982965, 35.232990, 20.878277>,  <21.608128, 34.848862, 21.214846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.982965, 35.232990, 20.878277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.314222, 35.276276, 20.658287>,  <21.512976, 35.302246, 20.526293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.314222, 35.276276, 20.658287>,  <20.982965, 35.232990, 20.878277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.314222, 35.276276, 20.658287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514959, -0.240607, -0.822755,
		-0.221361, 0.964572, -0.143531,
		0.828141, 0.108213, -0.549976,
		21.562664, 35.308739, 20.493294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.854195, 35.709785, 20.316858>,  <20.982965, 35.232990, 20.878277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.854195, 35.709785, 20.316858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.164417, 35.493675, 20.186249>,  <21.350550, 35.364010, 20.107883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.164417, 35.493675, 20.186249>,  <20.854195, 35.709785, 20.316858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.164417, 35.493675, 20.186249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457050, -0.123768, -0.880787,
		0.435452, 0.832338, -0.342921,
		0.775555, -0.540273, -0.326526,
		21.397083, 35.331593, 20.088291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.845654, 35.920162, 19.687450>,  <20.854195, 35.709785, 20.316858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.845654, 35.920162, 19.687450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.072229, 35.590530, 19.685196>,  <21.208176, 35.392750, 19.683844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.072229, 35.590530, 19.685196>,  <20.845654, 35.920162, 19.687450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.072229, 35.590530, 19.685196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395794, -0.266040, -0.878960,
		0.722836, 0.500111, -0.476863,
		0.566441, -0.824083, -0.005638,
		21.242163, 35.343304, 19.683504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.169195, 35.897243, 19.052271>,  <20.845654, 35.920162, 19.687450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.169195, 35.897243, 19.052271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.211983, 35.518673, 19.174149>,  <21.237656, 35.291531, 19.247274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.211983, 35.518673, 19.174149>,  <21.169195, 35.897243, 19.052271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.211983, 35.518673, 19.174149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299373, -0.322889, -0.897841,
		0.948121, 0.004826, -0.317874,
		0.106971, -0.946425, 0.304693,
		21.244074, 35.234745, 19.265556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.319735, 35.549000, 18.483473>,  <21.169195, 35.897243, 19.052271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.319735, 35.549000, 18.483473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.193523, 35.259941, 18.729473>,  <21.117796, 35.086506, 18.877073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.193523, 35.259941, 18.729473>,  <21.319735, 35.549000, 18.483473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.193523, 35.259941, 18.729473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477235, -0.439330, -0.761076,
		0.820176, -0.533640, -0.206250,
		-0.315529, -0.722646, 0.615000,
		21.098866, 35.043148, 18.913973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.330967, 35.008102, 18.120928>,  <21.319735, 35.549000, 18.483473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.330967, 35.008102, 18.120928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.078424, 34.910675, 18.415428>,  <20.926899, 34.852219, 18.592129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.078424, 34.910675, 18.415428>,  <21.330967, 35.008102, 18.120928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.078424, 34.910675, 18.415428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670941, -0.304524, -0.676094,
		0.388883, -0.920836, 0.028841,
		-0.631354, -0.243570, 0.736251,
		20.889019, 34.837605, 18.636303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.159262, 34.322971, 18.070549>,  <21.330967, 35.008102, 18.120928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.159262, 34.322971, 18.070549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.857779, 34.466450, 18.290825>,  <20.676888, 34.552536, 18.422991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.857779, 34.466450, 18.290825>,  <21.159262, 34.322971, 18.070549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.857779, 34.466450, 18.290825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650500, -0.287752, -0.702886,
		-0.093658, -0.887997, 0.450211,
		-0.753709, 0.358693, 0.550692,
		20.631666, 34.574059, 18.456032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.642277, 33.846428, 17.865719>,  <21.159262, 34.322971, 18.070549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.642277, 33.846428, 17.865719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.444012, 34.150139, 18.034393>,  <20.325052, 34.332363, 18.135597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.444012, 34.150139, 18.034393>,  <20.642277, 33.846428, 17.865719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.444012, 34.150139, 18.034393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731542, -0.103272, -0.673930,
		-0.468150, -0.642523, 0.606630,
		-0.495663, 0.759275, 0.421685,
		20.295313, 34.377922, 18.160900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.007963, 33.643169, 17.915474>,  <20.642277, 33.846428, 17.865719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.007963, 33.643169, 17.915474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.957340, 34.039883, 17.923016>,  <19.926968, 34.277908, 17.927542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.957340, 34.039883, 17.923016>,  <20.007963, 33.643169, 17.915474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.957340, 34.039883, 17.923016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812559, -0.092746, -0.575452,
		-0.568973, -0.088149, 0.817618,
		-0.126556, 0.991780, 0.018856,
		19.919373, 34.337418, 17.928673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.274475, 33.709076, 17.942162>,  <20.007963, 33.643169, 17.915474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.274475, 33.709076, 17.942162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.433941, 34.045040, 17.794857>,  <19.529619, 34.246620, 17.706474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.433941, 34.045040, 17.794857>,  <19.274475, 33.709076, 17.942162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.433941, 34.045040, 17.794857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830910, 0.160849, -0.532650,
		-0.388145, 0.518339, 0.762016,
		0.398662, 0.839912, -0.368260,
		19.553539, 34.297012, 17.684380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.772366, 34.158260, 17.925068>,  <19.274475, 33.709076, 17.942162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.772366, 34.158260, 17.925068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.026443, 34.339062, 17.674557>,  <19.178890, 34.447540, 17.524250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.026443, 34.339062, 17.674557>,  <18.772366, 34.158260, 17.925068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.026443, 34.339062, 17.674557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762032, 0.234657, -0.603526,
		-0.125834, 0.860600, 0.493492,
		0.635196, 0.452000, -0.626276,
		19.217003, 34.474663, 17.486673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.466278, 34.796421, 17.895220>,  <18.772366, 34.158260, 17.925068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.466278, 34.796421, 17.895220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.708412, 34.754810, 17.579563>,  <18.853693, 34.729843, 17.390169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.708412, 34.754810, 17.579563>,  <18.466278, 34.796421, 17.895220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.708412, 34.754810, 17.579563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721249, 0.347696, -0.599089,
		0.336704, 0.931818, 0.135443,
		0.605335, -0.104027, -0.789144,
		18.890013, 34.723602, 17.342819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.439295, 35.448105, 17.496590>,  <18.466278, 34.796421, 17.895220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.439295, 35.448105, 17.496590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.603416, 35.201042, 17.228218>,  <18.701889, 35.052803, 17.067194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.603416, 35.201042, 17.228218>,  <18.439295, 35.448105, 17.496590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.603416, 35.201042, 17.228218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624869, 0.345442, -0.700149,
		0.664221, 0.706517, -0.244221,
		0.410303, -0.617660, -0.670930,
		18.726507, 35.015743, 17.026939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.480000, 35.794537, 16.899923>,  <18.439295, 35.448105, 17.496590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.480000, 35.794537, 16.899923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.526505, 35.423771, 16.757198>,  <18.554407, 35.201313, 16.671564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.526505, 35.423771, 16.757198>,  <18.480000, 35.794537, 16.899923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.526505, 35.423771, 16.757198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551188, 0.238638, -0.799528,
		0.826242, 0.289625, -0.483159,
		0.116264, -0.926914, -0.356810,
		18.561384, 35.145699, 16.650156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.819704, 35.817215, 16.235058>,  <18.480000, 35.794537, 16.899923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.819704, 35.817215, 16.235058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.594706, 35.487835, 16.264778>,  <18.459705, 35.290207, 16.282610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.594706, 35.487835, 16.264778>,  <18.819704, 35.817215, 16.235058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.594706, 35.487835, 16.264778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535918, 0.294695, -0.791168,
		0.629594, -0.484849, -0.607069,
		-0.562497, -0.823454, 0.074301,
		18.425957, 35.240799, 16.287069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.649223, 35.609287, 15.436218>,  <18.819704, 35.817215, 16.235058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.649223, 35.609287, 15.436218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.386837, 35.431911, 15.680535>,  <18.229404, 35.325485, 15.827126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.386837, 35.431911, 15.680535>,  <18.649223, 35.609287, 15.436218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.386837, 35.431911, 15.680535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732868, 0.180583, -0.655968,
		0.180583, -0.877925, -0.443438,
		0.655968, 0.443438, -0.610793,
		18.190046, 35.298882, 15.863773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.343281, 35.239033, 14.954156>,  <18.649223, 35.609287, 15.436218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.343281, 35.239033, 14.954156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.096277, 35.200718, 15.266440>,  <17.948074, 35.177731, 15.453811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.096277, 35.200718, 15.266440>,  <18.343281, 35.239033, 14.954156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.096277, 35.200718, 15.266440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779352, 0.208606, -0.590841,
		-0.106268, -0.973298, -0.203464,
		-0.617508, -0.095783, 0.780710,
		17.911024, 35.171982, 15.500653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.865452, 34.573433, 14.884239>,  <18.343281, 35.239033, 14.954156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.865452, 34.573433, 14.884239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.743706, 34.907234, 15.067962>,  <17.670658, 35.107517, 15.178195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.743706, 34.907234, 15.067962>,  <17.865452, 34.573433, 14.884239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.743706, 34.907234, 15.067962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645605, 0.173819, -0.743627,
		-0.700397, -0.522864, 0.485857,
		-0.304365, 0.834506, 0.459306,
		17.652397, 35.157585, 15.205753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107433, 34.594780, 14.982687>,  <17.865452, 34.573433, 14.884239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107433, 34.594780, 14.982687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.291325, 34.943493, 14.914987>,  <17.401659, 35.152721, 14.874367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.291325, 34.943493, 14.914987>,  <17.107433, 34.594780, 14.982687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.291325, 34.943493, 14.914987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637869, 0.191555, -0.745942,
		-0.617879, 0.450889, 0.644147,
		0.459727, 0.871783, -0.169250,
		17.429243, 35.205029, 14.864212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739882, 35.101444, 15.175199>,  <17.107433, 34.594780, 14.982687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.739882, 35.101444, 15.175199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976519, 35.269966, 14.900237>,  <17.118500, 35.371078, 14.735260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976519, 35.269966, 14.900237>,  <16.739882, 35.101444, 15.175199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.976519, 35.269966, 14.900237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783428, 0.099017, -0.613545,
		-0.190424, 0.901498, 0.388639,
		0.591591, 0.421304, -0.687403,
		17.153996, 35.396358, 14.694016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.356604, 35.662117, 14.689494>,  <16.739882, 35.101444, 15.175199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.356604, 35.662117, 14.689494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.697367, 35.578590, 14.497390>,  <16.901825, 35.528473, 14.382128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.697367, 35.578590, 14.497390>,  <16.356604, 35.662117, 14.689494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.697367, 35.578590, 14.497390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492785, -0.009248, -0.870102,
		0.177251, 0.977911, -0.110781,
		0.851907, -0.208817, -0.480260,
		16.952938, 35.515945, 14.353312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547489, 36.152546, 14.180999>,  <16.356604, 35.662117, 14.689494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547489, 36.152546, 14.180999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.618444, 35.772182, 14.079570>,  <16.661018, 35.543964, 14.018712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.618444, 35.772182, 14.079570>,  <16.547489, 36.152546, 14.180999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.618444, 35.772182, 14.079570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477140, 0.142252, -0.867238,
		0.860739, 0.274829, -0.428484,
		0.177389, -0.950912, -0.253573,
		16.671661, 35.486908, 14.003498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.235025, 36.652523, 14.658939>,  <16.547489, 36.152546, 14.180999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.235025, 36.652523, 14.658939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.332312, 36.986275, 14.461085>,  <16.390684, 37.186523, 14.342373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.332312, 36.986275, 14.461085>,  <16.235025, 36.652523, 14.658939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.332312, 36.986275, 14.461085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709336, 0.500814, 0.496012,
		0.661580, 0.230224, 0.713659,
		0.243216, 0.834376, -0.494635,
		16.405277, 37.236588, 14.312695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670000, 37.251884, 14.925698>,  <16.235025, 36.652523, 14.658939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670000, 37.251884, 14.925698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.368145, 37.384686, 14.699321>,  <16.187031, 37.464367, 14.563495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.368145, 37.384686, 14.699321>,  <16.670000, 37.251884, 14.925698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.368145, 37.384686, 14.699321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396530, 0.456441, 0.796508,
		0.522765, 0.825490, -0.212799,
		-0.754640, 0.332005, -0.565943,
		16.141752, 37.484287, 14.529538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564480, 37.954533, 14.966723>,  <16.670000, 37.251884, 14.925698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564480, 37.954533, 14.966723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.201273, 37.832283, 14.852115>,  <15.983349, 37.758934, 14.783349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.201273, 37.832283, 14.852115>,  <16.564480, 37.954533, 14.966723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.201273, 37.832283, 14.852115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410672, 0.514235, 0.752935,
		-0.082779, 0.801345, -0.592448,
		-0.908018, -0.305628, -0.286522,
		15.928867, 37.740593, 14.766158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.058899, 38.554718, 14.922473>,  <16.564480, 37.954533, 14.966723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.058899, 38.554718, 14.922473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.840689, 38.225208, 14.984168>,  <15.709763, 38.027500, 15.021185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.840689, 38.225208, 14.984168>,  <16.058899, 38.554718, 14.922473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840689, 38.225208, 14.984168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270845, 0.347445, 0.897733,
		-0.793123, 0.447963, -0.412657,
		-0.545527, -0.823779, 0.154238,
		15.677031, 37.978073, 15.030439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.934253, 38.873386, 15.548580>,  <16.058899, 38.554718, 14.922473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.934253, 38.873386, 15.548580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.251678, 38.822731, 15.310515>,  <16.442135, 38.792339, 15.167676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.251678, 38.822731, 15.310515>,  <15.934253, 38.873386, 15.548580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.251678, 38.822731, 15.310515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582182, -0.126459, 0.803164,
		-0.176975, -0.983855, -0.026627,
		0.793564, -0.126638, -0.595163,
		16.489748, 38.784740, 15.131967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.240688, 38.233158, 15.645679>,  <15.934253, 38.873386, 15.548580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.240688, 38.233158, 15.645679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.515856, 38.500240, 15.531884>,  <16.680956, 38.660492, 15.463608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.515856, 38.500240, 15.531884>,  <16.240688, 38.233158, 15.645679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.515856, 38.500240, 15.531884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466911, -0.107043, 0.877802,
		0.555664, -0.736686, -0.385398,
		0.687919, 0.667709, -0.284487,
		16.722231, 38.700554, 15.446538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.862144, 37.986626, 15.766356>,  <16.240688, 38.233158, 15.645679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.862144, 37.986626, 15.766356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.935196, 38.379848, 15.772536>,  <16.979027, 38.615784, 15.776245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.935196, 38.379848, 15.772536>,  <16.862144, 37.986626, 15.766356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.935196, 38.379848, 15.772536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632343, -0.129479, 0.763792,
		0.752855, -0.129718, -0.645278,
		0.182627, 0.983061, 0.015453,
		16.989985, 38.674767, 15.777172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.526144, 38.134644, 15.772576>,  <16.862144, 37.986626, 15.766356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.526144, 38.134644, 15.772576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.382217, 38.471264, 15.933738>,  <17.295862, 38.673237, 16.030434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.382217, 38.471264, 15.933738>,  <17.526144, 38.134644, 15.772576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.382217, 38.471264, 15.933738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510822, -0.183675, 0.839836,
		0.780765, 0.507997, -0.363792,
		-0.359815, 0.841548, 0.402903,
		17.274273, 38.723728, 16.054609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.188112, 38.550552, 16.055079>,  <17.526144, 38.134644, 15.772576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.188112, 38.550552, 16.055079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.894463, 38.722809, 16.265072>,  <17.718273, 38.826164, 16.391068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.894463, 38.722809, 16.265072>,  <18.188112, 38.550552, 16.055079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.894463, 38.722809, 16.265072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553823, -0.067580, 0.829887,
		0.392866, 0.899987, -0.188890,
		-0.734123, 0.430646, 0.524984,
		17.674225, 38.852001, 16.422567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.543768, 38.992939, 16.584974>,  <18.188112, 38.550552, 16.055079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.543768, 38.992939, 16.584974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.172895, 39.000637, 16.734619>,  <17.950371, 39.005257, 16.824406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.172895, 39.000637, 16.734619>,  <18.543768, 38.992939, 16.584974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.172895, 39.000637, 16.734619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374028, 0.103142, 0.921664,
		-0.020850, 0.994480, -0.102830,
		-0.927183, 0.019245, 0.374114,
		17.894741, 39.006409, 16.846853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.489014, 39.485416, 17.140646>,  <18.543768, 38.992939, 16.584974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.489014, 39.485416, 17.140646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.153210, 39.291462, 17.238708>,  <17.951727, 39.175087, 17.297546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.153210, 39.291462, 17.238708>,  <18.489014, 39.485416, 17.140646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.153210, 39.291462, 17.238708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264770, 0.028924, 0.963878,
		-0.474465, 0.874097, 0.104102,
		-0.839511, -0.484890, 0.245158,
		17.901356, 39.145996, 17.312256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.117731, 39.902275, 17.706509>,  <18.489014, 39.485416, 17.140646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.117731, 39.902275, 17.706509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.995033, 39.524281, 17.751968>,  <17.921415, 39.297485, 17.779245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.995033, 39.524281, 17.751968>,  <18.117731, 39.902275, 17.706509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.995033, 39.524281, 17.751968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316536, 0.011327, 0.948513,
		-0.897615, 0.326927, 0.295647,
		-0.306745, -0.944982, 0.113651,
		17.903009, 39.240788, 17.786064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.739431, 39.895226, 18.383602>,  <18.117731, 39.902275, 17.706509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.739431, 39.895226, 18.383602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.824375, 39.515434, 18.291172>,  <17.875341, 39.287560, 18.235714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.824375, 39.515434, 18.291172>,  <17.739431, 39.895226, 18.383602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.824375, 39.515434, 18.291172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376546, -0.138698, 0.915956,
		-0.901730, -0.281522, 0.328068,
		0.212359, -0.949478, -0.231074,
		17.888083, 39.230591, 18.221849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.403101, 39.455048, 19.005383>,  <17.739431, 39.895226, 18.383602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.403101, 39.455048, 19.005383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.681133, 39.238586, 18.816063>,  <17.847954, 39.108707, 18.702471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.681133, 39.238586, 18.816063>,  <17.403101, 39.455048, 19.005383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.681133, 39.238586, 18.816063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420793, -0.227552, 0.878153,
		-0.582918, -0.809549, 0.069547,
		0.695083, -0.541156, -0.473297,
		17.889658, 39.076241, 18.674074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.355963, 38.748531, 19.118032>,  <17.403101, 39.455048, 19.005383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.355963, 38.748531, 19.118032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.746044, 38.805317, 19.050125>,  <17.980093, 38.839390, 19.009380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.746044, 38.805317, 19.050125>,  <17.355963, 38.748531, 19.118032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.746044, 38.805317, 19.050125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189600, -0.140319, 0.971783,
		0.114137, -0.979876, -0.163756,
		0.975205, 0.141965, -0.169769,
		18.038605, 38.847908, 18.999195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.669168, 38.292347, 19.521564>,  <17.355963, 38.748531, 19.118032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.669168, 38.292347, 19.521564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.994377, 38.502319, 19.420811>,  <18.189503, 38.628304, 19.360359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.994377, 38.502319, 19.420811>,  <17.669168, 38.292347, 19.521564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.994377, 38.502319, 19.420811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446180, -0.283783, 0.848758,
		0.374058, -0.802444, -0.464935,
		0.813021, 0.524930, -0.251883,
		18.238283, 38.659798, 19.345245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.119553, 37.776440, 19.474396>,  <17.669168, 38.292347, 19.521564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.119553, 37.776440, 19.474396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.316771, 38.119541, 19.532593>,  <18.435102, 38.325401, 19.567511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.316771, 38.119541, 19.532593>,  <18.119553, 37.776440, 19.474396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.316771, 38.119541, 19.532593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536782, -0.431527, 0.725017,
		0.684668, -0.279369, -0.673188,
		0.493047, 0.857751, 0.145492,
		18.464685, 38.376865, 19.576241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.806309, 37.578110, 19.396057>,  <18.119553, 37.776440, 19.474396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.806309, 37.578110, 19.396057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.802681, 37.915592, 19.610748>,  <18.800505, 38.118080, 19.739563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.802681, 37.915592, 19.610748>,  <18.806309, 37.578110, 19.396057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.802681, 37.915592, 19.610748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527498, -0.451954, 0.719363,
		0.849508, 0.289648, -0.440954,
		-0.009071, 0.843707, 0.536727,
		18.799959, 38.168705, 19.771767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.546162, 37.669399, 19.536299>,  <18.806309, 37.578110, 19.396057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.546162, 37.669399, 19.536299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.347666, 37.870453, 19.819454>,  <19.228567, 37.991085, 19.989347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.347666, 37.870453, 19.819454>,  <19.546162, 37.669399, 19.536299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.347666, 37.870453, 19.819454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519364, -0.481513, 0.705979,
		0.695706, 0.717987, -0.022102,
		-0.496241, 0.502633, 0.707888,
		19.198793, 38.021244, 20.031820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.057047, 37.866264, 20.002220>,  <19.546162, 37.669399, 19.536299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.057047, 37.866264, 20.002220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.721216, 37.916412, 20.213650>,  <19.519718, 37.946503, 20.340508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.721216, 37.916412, 20.213650>,  <20.057047, 37.866264, 20.002220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.721216, 37.916412, 20.213650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450961, -0.381656, 0.806829,
		0.302889, 0.915762, 0.263891,
		-0.839579, 0.125375, 0.528572,
		19.469343, 37.954025, 20.372221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.261040, 38.147926, 20.547817>,  <20.057047, 37.866264, 20.002220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.261040, 38.147926, 20.547817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.911518, 37.988281, 20.658939>,  <19.701805, 37.892494, 20.725613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.911518, 37.988281, 20.658939>,  <20.261040, 38.147926, 20.547817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.911518, 37.988281, 20.658939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419498, -0.329751, 0.845746,
		-0.245937, 0.855557, 0.455563,
		-0.873806, -0.399108, 0.277806,
		19.649376, 37.868549, 20.742281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.140419, 38.321301, 21.213518>,  <20.261040, 38.147926, 20.547817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.140419, 38.321301, 21.213518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.890697, 38.009590, 21.191708>,  <19.740864, 37.822563, 21.178621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.890697, 38.009590, 21.191708>,  <20.140419, 38.321301, 21.213518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.890697, 38.009590, 21.191708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298271, -0.302305, 0.905343,
		-0.721997, 0.548944, 0.421166,
		-0.624304, -0.779276, -0.054529,
		19.703407, 37.775806, 21.175348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.960346, 38.169720, 21.958002>,  <20.140419, 38.321301, 21.213518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.960346, 38.169720, 21.958002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.863106, 37.847145, 21.742386>,  <19.804762, 37.653599, 21.613016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.863106, 37.847145, 21.742386>,  <19.960346, 38.169720, 21.958002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.863106, 37.847145, 21.742386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329295, -0.591320, 0.736142,
		-0.912396, 0.001454, 0.409306,
		-0.243101, -0.806436, -0.539039,
		19.790176, 37.605213, 21.580673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.713089, 37.756874, 22.437256>,  <19.960346, 38.169720, 21.958002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.713089, 37.756874, 22.437256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.785685, 37.491955, 22.146484>,  <19.829241, 37.333004, 21.972021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.785685, 37.491955, 22.146484>,  <19.713089, 37.756874, 22.437256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.785685, 37.491955, 22.146484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182271, -0.703744, 0.686675,
		-0.966354, -0.257121, -0.007004,
		0.181488, -0.662294, -0.726931,
		19.840132, 37.293266, 21.928406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.283478, 37.100452, 22.387476>,  <19.713089, 37.756874, 22.437256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.283478, 37.100452, 22.387476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.649630, 37.047890, 22.235256>,  <19.869320, 37.016354, 22.143925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.649630, 37.047890, 22.235256>,  <19.283478, 37.100452, 22.387476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.649630, 37.047890, 22.235256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244130, -0.570447, 0.784214,
		-0.320131, -0.810755, -0.490095,
		0.915378, -0.131404, -0.380547,
		19.924244, 37.008469, 22.121092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.454540, 36.496868, 22.466070>,  <19.283478, 37.100452, 22.387476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.454540, 36.496868, 22.466070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.814747, 36.659603, 22.404682>,  <20.030870, 36.757244, 22.367849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.814747, 36.659603, 22.404682>,  <19.454540, 36.496868, 22.466070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.814747, 36.659603, 22.404682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344636, -0.452588, 0.822429,
		0.265137, -0.793502, -0.547774,
		0.900515, 0.406840, -0.153472,
		20.084902, 36.781654, 22.358641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.650854, 36.916042, 23.054396>,  <19.454540, 36.496868, 22.466070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.650854, 36.916042, 23.054396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.573925, 37.302769, 22.987137>,  <19.527767, 37.534805, 22.946781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.573925, 37.302769, 22.987137>,  <19.650854, 36.916042, 23.054396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.573925, 37.302769, 22.987137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877468, -0.092704, 0.470591,
		0.439388, 0.238047, 0.866182,
		-0.192321, 0.966820, -0.168145,
		19.516230, 37.592815, 22.936693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.432417, 37.483093, 23.568876>,  <19.650854, 36.916042, 23.054396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.432417, 37.483093, 23.568876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.283253, 37.460186, 23.198437>,  <19.193754, 37.446442, 22.976173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.283253, 37.460186, 23.198437>,  <19.432417, 37.483093, 23.568876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.283253, 37.460186, 23.198437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907980, -0.183020, 0.376931,
		-0.191081, 0.981439, 0.016251,
		-0.372909, -0.057269, -0.926099,
		19.171379, 37.443005, 22.920607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.896727, 37.956467, 23.654707>,  <19.432417, 37.483093, 23.568876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.896727, 37.956467, 23.654707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.859207, 37.664524, 23.383854>,  <18.836695, 37.489357, 23.221342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.859207, 37.664524, 23.383854>,  <18.896727, 37.956467, 23.654707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.859207, 37.664524, 23.383854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965741, -0.098594, 0.240049,
		-0.241963, 0.676452, -0.695606,
		-0.093799, -0.729858, -0.677133,
		18.831068, 37.445568, 23.180714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.320345, 37.961853, 23.071915>,  <18.896727, 37.956467, 23.654707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.320345, 37.961853, 23.071915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.415804, 37.604885, 23.225082>,  <18.473080, 37.390705, 23.316982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.415804, 37.604885, 23.225082>,  <18.320345, 37.961853, 23.071915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.415804, 37.604885, 23.225082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881270, -0.033384, 0.471433,
		-0.407935, -0.449961, -0.794433,
		0.238647, -0.892424, 0.382918,
		18.487398, 37.337158, 23.339958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647274, 37.710911, 23.301779>,  <18.320345, 37.961853, 23.071915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.647274, 37.710911, 23.301779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.910028, 37.505051, 23.522190>,  <18.067682, 37.381535, 23.654438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.910028, 37.505051, 23.522190>,  <17.647274, 37.710911, 23.301779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.910028, 37.505051, 23.522190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732818, -0.263818, 0.627198,
		-0.177415, -0.815804, -0.550443,
		0.656888, -0.514648, 0.551031,
		18.107096, 37.350655, 23.687500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.921568, 26.558590, 25.795391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.268333, 26.476429, 25.977058>,  <32.476395, 26.427132, 26.086058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.268333, 26.476429, 25.977058>,  <31.921568, 26.558590, 25.795391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268333, 26.476429, 25.977058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343395, 0.906544, -0.245475,
		-0.361301, 0.368764, 0.856431,
		0.866915, -0.205404, 0.454167,
		32.528408, 26.414808, 26.113308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064865, 27.187021, 26.091118>,  <31.921568, 26.558590, 25.795391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064865, 27.187021, 26.091118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.402889, 26.974625, 26.066067>,  <32.605705, 26.847187, 26.051037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.402889, 26.974625, 26.066067>,  <32.064865, 27.187021, 26.091118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402889, 26.974625, 26.066067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463905, 0.786403, -0.407876,
		0.265827, 0.315627, 0.910887,
		0.845061, -0.530989, -0.062626,
		32.656406, 26.815329, 26.047279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504490, 27.642885, 26.360567>,  <32.064865, 27.187021, 26.091118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504490, 27.642885, 26.360567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.700413, 27.396015, 26.114254>,  <32.817966, 27.247892, 25.966467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.700413, 27.396015, 26.114254>,  <32.504490, 27.642885, 26.360567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700413, 27.396015, 26.114254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412046, 0.786318, -0.460349,
		0.768316, -0.028250, 0.639447,
		0.489804, -0.617176, -0.615781,
		32.847355, 27.210863, 25.929520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191708, 27.978233, 26.157990>,  <32.504490, 27.642885, 26.360567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191708, 27.978233, 26.157990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.137421, 27.690170, 25.885826>,  <33.104851, 27.517334, 25.722528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.137421, 27.690170, 25.885826>,  <33.191708, 27.978233, 26.157990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137421, 27.690170, 25.885826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488313, 0.548933, -0.678397,
		0.862051, -0.424322, 0.277162,
		-0.135715, -0.720155, -0.680410,
		33.096706, 27.474123, 25.681704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831760, 27.899288, 25.789770>,  <33.191708, 27.978233, 26.157990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831760, 27.899288, 25.789770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.547573, 27.750435, 25.550854>,  <33.377060, 27.661123, 25.407505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.547573, 27.750435, 25.550854>,  <33.831760, 27.899288, 25.789770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547573, 27.750435, 25.550854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311267, 0.595036, -0.740976,
		0.631150, -0.712355, -0.306921,
		-0.710467, -0.372133, -0.597289,
		33.334435, 27.638794, 25.371668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168209, 28.015316, 25.149281>,  <33.831760, 27.899288, 25.789770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168209, 28.015316, 25.149281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.790512, 27.925705, 25.052761>,  <33.563896, 27.871939, 24.994848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.790512, 27.925705, 25.052761>,  <34.168209, 28.015316, 25.149281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790512, 27.925705, 25.052761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108242, 0.480917, -0.870059,
		0.310960, -0.847662, -0.429852,
		-0.944239, -0.224026, -0.241299,
		33.507240, 27.858498, 24.980371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238838, 27.816246, 24.433409>,  <34.168209, 28.015316, 25.149281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238838, 27.816246, 24.433409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.863018, 27.933300, 24.504532>,  <33.637527, 28.003532, 24.547205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.863018, 27.933300, 24.504532>,  <34.238838, 27.816246, 24.433409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863018, 27.933300, 24.504532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006965, 0.502831, -0.864357,
		-0.342349, -0.813342, -0.470395,
		-0.939547, 0.292635, 0.177809,
		33.581154, 28.021090, 24.557875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949581, 27.802780, 23.743736>,  <34.238838, 27.816246, 24.433409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949581, 27.802780, 23.743736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.741165, 28.044380, 23.984966>,  <33.616116, 28.189341, 24.129704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.741165, 28.044380, 23.984966>,  <33.949581, 27.802780, 23.743736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741165, 28.044380, 23.984966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189930, 0.606802, -0.771828,
		-0.832130, -0.516697, -0.201452,
		-0.521043, 0.603999, 0.603074,
		33.584850, 28.225580, 24.165888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348061, 27.914324, 23.252962>,  <33.949581, 27.802780, 23.743736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348061, 27.914324, 23.252962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.388481, 28.184940, 23.544739>,  <33.412731, 28.347311, 23.719805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.388481, 28.184940, 23.544739>,  <33.348061, 27.914324, 23.252962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388481, 28.184940, 23.544739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295407, 0.720529, -0.627354,
		-0.950013, -0.152089, 0.272662,
		0.101047, 0.676540, 0.729440,
		33.418797, 28.387903, 23.763571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867348, 28.330561, 23.031185>,  <33.348061, 27.914324, 23.252962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867348, 28.330561, 23.031185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.066681, 28.554428, 23.296043>,  <33.186283, 28.688747, 23.454958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.066681, 28.554428, 23.296043>,  <32.867348, 28.330561, 23.031185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066681, 28.554428, 23.296043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271528, 0.826060, -0.493860,
		-0.823368, 0.066318, 0.563620,
		0.498336, 0.559667, 0.662144,
		33.216183, 28.722328, 23.494686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465202, 28.886559, 23.132385>,  <32.867348, 28.330561, 23.031185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465202, 28.886559, 23.132385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.809860, 29.032761, 23.273228>,  <33.016655, 29.120481, 23.357733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.809860, 29.032761, 23.273228>,  <32.465202, 28.886559, 23.132385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809860, 29.032761, 23.273228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248972, 0.908984, -0.334308,
		-0.442250, 0.200389, 0.874219,
		0.861642, 0.365503, 0.352107,
		33.068352, 29.142412, 23.378860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308857, 29.487579, 23.586033>,  <32.465202, 28.886559, 23.132385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308857, 29.487579, 23.586033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.678642, 29.515778, 23.436153>,  <32.900513, 29.532698, 23.346226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.678642, 29.515778, 23.436153>,  <32.308857, 29.487579, 23.586033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678642, 29.515778, 23.436153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230027, 0.886879, -0.400666,
		0.304066, 0.456592, 0.836103,
		0.924463, 0.070497, -0.374699,
		32.955982, 29.536926, 23.323744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352039, 30.235874, 23.360172>,  <32.308857, 29.487579, 23.586033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352039, 30.235874, 23.360172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.663582, 30.073292, 23.169102>,  <32.850510, 29.975742, 23.054461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.663582, 30.073292, 23.169102>,  <32.352039, 30.235874, 23.360172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663582, 30.073292, 23.169102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008519, 0.754675, -0.656043,
		0.627141, 0.515035, 0.584323,
		0.778859, -0.406454, -0.477675,
		32.897240, 29.951355, 23.025799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655727, 30.884241, 23.118006>,  <32.352039, 30.235874, 23.360172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655727, 30.884241, 23.118006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.817451, 30.579304, 22.915871>,  <32.914486, 30.396341, 22.794590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.817451, 30.579304, 22.915871>,  <32.655727, 30.884241, 23.118006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817451, 30.579304, 22.915871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085561, 0.581610, -0.808956,
		0.910611, 0.283833, 0.300378,
		0.404311, -0.762344, -0.505336,
		32.938744, 30.350601, 22.764271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316090, 31.124079, 22.753521>,  <32.655727, 30.884241, 23.118006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316090, 31.124079, 22.753521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.164246, 30.818851, 22.544285>,  <33.073139, 30.635715, 22.418743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.164246, 30.818851, 22.544285>,  <33.316090, 31.124079, 22.753521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164246, 30.818851, 22.544285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002011, 0.564734, -0.825270,
		0.925144, -0.314334, -0.212845,
		-0.379611, -0.763066, -0.523092,
		33.050362, 30.589931, 22.387358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740204, 30.996559, 22.114107>,  <33.316090, 31.124079, 22.753521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740204, 30.996559, 22.114107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.367737, 30.863350, 22.054749>,  <33.144257, 30.783424, 22.019133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.367737, 30.863350, 22.054749>,  <33.740204, 30.996559, 22.114107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367737, 30.863350, 22.054749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054768, 0.530171, -0.846120,
		0.360454, -0.779752, -0.511917,
		-0.931168, -0.333024, -0.148397,
		33.088387, 30.763443, 22.010229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687874, 30.740829, 21.431215>,  <33.740204, 30.996559, 22.114107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687874, 30.740829, 21.431215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.311241, 30.828087, 21.533844>,  <33.085262, 30.880442, 21.595421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.311241, 30.828087, 21.533844>,  <33.687874, 30.740829, 21.431215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311241, 30.828087, 21.533844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103774, 0.536838, -0.837279,
		-0.320385, -0.814996, -0.482841,
		-0.941586, 0.218146, 0.256570,
		33.028767, 30.893530, 21.610815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354580, 30.800076, 20.810364>,  <33.687874, 30.740829, 21.431215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354580, 30.800076, 20.810364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.085346, 30.983086, 21.042786>,  <32.923805, 31.092892, 21.182240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.085346, 30.983086, 21.042786>,  <33.354580, 30.800076, 20.810364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085346, 30.983086, 21.042786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215676, 0.630089, -0.745970,
		-0.707418, -0.627421, -0.325426,
		-0.673085, 0.457526, 0.581056,
		32.883419, 31.120344, 21.217102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873493, 30.864326, 20.341801>,  <33.354580, 30.800076, 20.810364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873493, 30.864326, 20.341801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.751862, 31.116280, 20.627678>,  <32.678883, 31.267450, 20.799204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.751862, 31.116280, 20.627678>,  <32.873493, 30.864326, 20.341801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751862, 31.116280, 20.627678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350090, 0.623837, -0.698759,
		-0.885987, -0.462685, 0.030819,
		-0.304079, 0.629881, 0.714693,
		32.660637, 31.305244, 20.842085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275433, 31.126205, 20.116934>,  <32.873493, 30.864326, 20.341801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275433, 31.126205, 20.116934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.393024, 31.408726, 20.374527>,  <32.463581, 31.578238, 20.529083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.393024, 31.408726, 20.374527>,  <32.275433, 31.126205, 20.116934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393024, 31.408726, 20.374527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223634, 0.705883, -0.672098,
		-0.929281, 0.053567, 0.365469,
		0.293981, 0.706299, 0.643985,
		32.481220, 31.620615, 20.567722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753942, 31.670170, 20.176008>,  <32.275433, 31.126205, 20.116934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753942, 31.670170, 20.176008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.095772, 31.847637, 20.283978>,  <32.300869, 31.954119, 20.348759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.095772, 31.847637, 20.283978>,  <31.753942, 31.670170, 20.176008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095772, 31.847637, 20.283978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258250, 0.813987, -0.520319,
		-0.450566, 0.374943, 0.810190,
		0.854575, 0.443670, 0.269925,
		32.352142, 31.980738, 20.364956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579250, 32.282936, 20.238344>,  <31.753942, 31.670170, 20.176008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579250, 32.282936, 20.238344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.974695, 32.328648, 20.199173>,  <32.211960, 32.356075, 20.175671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.974695, 32.328648, 20.199173>,  <31.579250, 32.282936, 20.238344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974695, 32.328648, 20.199173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150413, 0.772037, -0.617522,
		0.005033, 0.625219, 0.780433,
		0.988610, 0.114280, -0.097927,
		32.271278, 32.362930, 20.169794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242132, 32.415951, 20.886866>,  <31.579250, 32.282936, 20.238344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242132, 32.415951, 20.886866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.869303, 32.371349, 20.748993>,  <30.645605, 32.344589, 20.666269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.869303, 32.371349, 20.748993>,  <31.242132, 32.415951, 20.886866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869303, 32.371349, 20.748993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064254, -0.885482, 0.460209,
		-0.356526, 0.451096, 0.818170,
		-0.932074, -0.111505, -0.344682,
		30.589682, 32.337898, 20.645588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871967, 32.182297, 21.447107>,  <31.242132, 32.415951, 20.886866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871967, 32.182297, 21.447107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.644941, 32.063789, 21.139835>,  <30.508726, 31.992685, 20.955473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.644941, 32.063789, 21.139835>,  <30.871967, 32.182297, 21.447107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644941, 32.063789, 21.139835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124021, -0.891605, 0.435500,
		-0.813935, 0.342444, 0.469299,
		-0.567564, -0.296266, -0.768178,
		30.474672, 31.974909, 20.909382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215965, 31.917822, 21.599476>,  <30.871967, 32.182297, 21.447107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215965, 31.917822, 21.599476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.221880, 31.727722, 21.247585>,  <30.225428, 31.613663, 21.036451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.221880, 31.727722, 21.247585>,  <30.215965, 31.917822, 21.599476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221880, 31.727722, 21.247585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374859, -0.818289, 0.435757,
		-0.926964, 0.323331, -0.190249,
		0.014785, -0.475247, -0.879728,
		30.226316, 31.585148, 20.983667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559738, 31.725199, 21.450504>,  <30.215965, 31.917822, 21.599476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559738, 31.725199, 21.450504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.807604, 31.487003, 21.245991>,  <29.956324, 31.344086, 21.123283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.807604, 31.487003, 21.245991>,  <29.559738, 31.725199, 21.450504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807604, 31.487003, 21.245991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413895, -0.801416, 0.431769,
		-0.666863, -0.055935, -0.743078,
		0.619666, -0.595487, -0.511283,
		29.993504, 31.308357, 21.092606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144194, 31.064819, 21.337208>,  <29.559738, 31.725199, 21.450504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144194, 31.064819, 21.337208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.523916, 30.964973, 21.260780>,  <29.751751, 30.905066, 21.214924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.523916, 30.964973, 21.260780>,  <29.144194, 31.064819, 21.337208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523916, 30.964973, 21.260780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192595, -0.942232, 0.274055,
		-0.248440, -0.223363, -0.942542,
		0.949307, -0.249615, -0.191069,
		29.808708, 30.890089, 21.203459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100689, 30.450375, 20.804110>,  <29.144194, 31.064819, 21.337208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100689, 30.450375, 20.804110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.428133, 30.489399, 21.030510>,  <29.624599, 30.512814, 21.166349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.428133, 30.489399, 21.030510>,  <29.100689, 30.450375, 20.804110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428133, 30.489399, 21.030510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182891, -0.889888, 0.417911,
		0.544449, -0.445623, -0.710630,
		0.818612, 0.097563, 0.565999,
		29.673717, 30.518667, 21.200310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433681, 29.788742, 20.781309>,  <29.100689, 30.450375, 20.804110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433681, 29.788742, 20.781309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.601076, 29.978298, 21.091225>,  <29.701513, 30.092031, 21.277174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.601076, 29.978298, 21.091225>,  <29.433681, 29.788742, 20.781309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601076, 29.978298, 21.091225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027715, -0.859348, 0.510640,
		0.907800, -0.192223, -0.372760,
		0.418487, 0.473890, 0.774788,
		29.726622, 30.120464, 21.323662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847427, 29.349640, 21.093952>,  <29.433681, 29.788742, 20.781309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847427, 29.349640, 21.093952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.791536, 29.616291, 21.386822>,  <29.758001, 29.776281, 21.562544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.791536, 29.616291, 21.386822>,  <29.847427, 29.349640, 21.093952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791536, 29.616291, 21.386822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019083, -0.737480, 0.675099,
		0.990006, 0.108302, 0.090325,
		-0.139728, 0.666629, 0.732176,
		29.749619, 29.816280, 21.606474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311401, 29.158314, 21.547203>,  <29.847427, 29.349640, 21.093952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311401, 29.158314, 21.547203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.054672, 29.355068, 21.782528>,  <29.900635, 29.473120, 21.923723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.054672, 29.355068, 21.782528>,  <30.311401, 29.158314, 21.547203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054672, 29.355068, 21.782528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159775, -0.664566, 0.729948,
		0.750022, 0.562497, 0.347943,
		-0.641825, 0.491884, 0.588312,
		29.862125, 29.502634, 21.959021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599791, 29.075443, 22.234957>,  <30.311401, 29.158314, 21.547203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599791, 29.075443, 22.234957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.231674, 29.211655, 22.312004>,  <30.010803, 29.293383, 22.358232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.231674, 29.211655, 22.312004>,  <30.599791, 29.075443, 22.234957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231674, 29.211655, 22.312004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005339, -0.503226, 0.864139,
		0.391196, 0.794231, 0.464933,
		-0.920292, 0.340530, 0.192619,
		29.955587, 29.313814, 22.369789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674328, 29.383718, 22.814219>,  <30.599791, 29.075443, 22.234957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674328, 29.383718, 22.814219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.289268, 29.279408, 22.785080>,  <30.058233, 29.216822, 22.767597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.289268, 29.279408, 22.785080>,  <30.674328, 29.383718, 22.814219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289268, 29.279408, 22.785080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078430, -0.526078, 0.846812,
		-0.259154, 0.809467, 0.526880,
		-0.962646, -0.260777, -0.072849,
		30.000475, 29.201174, 22.763226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340601, 29.403357, 23.478762>,  <30.674328, 29.383718, 22.814219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340601, 29.403357, 23.478762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.104889, 29.168636, 23.256622>,  <29.963463, 29.027803, 23.123339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.104889, 29.168636, 23.256622>,  <30.340601, 29.403357, 23.478762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104889, 29.168636, 23.256622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230147, -0.536976, 0.811596,
		-0.774456, 0.606069, 0.181378,
		-0.589279, -0.586802, -0.555350,
		29.928104, 28.992596, 23.090017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671667, 29.376436, 23.835285>,  <30.340601, 29.403357, 23.478762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671667, 29.376436, 23.835285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.751112, 29.062050, 23.601086>,  <29.798779, 28.873419, 23.460566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.751112, 29.062050, 23.601086>,  <29.671667, 29.376436, 23.835285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751112, 29.062050, 23.601086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138932, -0.613948, 0.777024,
		-0.970181, -0.072980, -0.231132,
		0.198610, -0.785966, -0.585501,
		29.810696, 28.826260, 23.425436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301113, 28.818367, 24.117247>,  <29.671667, 29.376436, 23.835285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301113, 28.818367, 24.117247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.519571, 28.609638, 23.855125>,  <29.650646, 28.484402, 23.697853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.519571, 28.609638, 23.855125>,  <29.301113, 28.818367, 24.117247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519571, 28.609638, 23.855125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158454, -0.832508, 0.530871,
		-0.822556, -0.186108, -0.537370,
		0.546164, -0.521819, -0.655294,
		29.683416, 28.453091, 23.658535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976849, 28.174049, 24.085661>,  <29.301113, 28.818367, 24.117247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976849, 28.174049, 24.085661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.338364, 28.108768, 23.927406>,  <29.555273, 28.069599, 23.832453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.338364, 28.108768, 23.927406>,  <28.976849, 28.174049, 24.085661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338364, 28.108768, 23.927406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105739, -0.810626, 0.575938,
		-0.414709, -0.562361, -0.715378,
		0.903790, -0.163204, -0.395637,
		29.609501, 28.059807, 23.808716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991028, 27.470049, 23.815393>,  <28.976849, 28.174049, 24.085661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991028, 27.470049, 23.815393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.371916, 27.562840, 23.894859>,  <29.600449, 27.618513, 23.942539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.371916, 27.562840, 23.894859>,  <28.991028, 27.470049, 23.815393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371916, 27.562840, 23.894859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122406, -0.885804, 0.447625,
		0.279817, -0.401919, -0.871874,
		0.952218, 0.231975, 0.198665,
		29.657581, 27.632433, 23.954458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339916, 26.917538, 23.751516>,  <28.991028, 27.470049, 23.815393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339916, 26.917538, 23.751516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.597536, 27.121395, 23.979713>,  <29.752108, 27.243710, 24.116632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.597536, 27.121395, 23.979713>,  <29.339916, 26.917538, 23.751516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597536, 27.121395, 23.979713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218835, -0.837338, 0.500975,
		0.733014, -0.197810, -0.650816,
		0.644051, 0.509643, 0.570493,
		29.790751, 27.274288, 24.150862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953463, 26.420172, 23.814516>,  <29.339916, 26.917538, 23.751516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953463, 26.420172, 23.814516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.954519, 26.686596, 24.112873>,  <29.955153, 26.846451, 24.291887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.954519, 26.686596, 24.112873>,  <29.953463, 26.420172, 23.814516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954519, 26.686596, 24.112873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149805, -0.737742, 0.658252,
		0.988712, 0.110001, -0.101727,
		0.002640, 0.666061, 0.745893,
		29.955311, 26.886414, 24.336641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.496437, 26.152613, 24.248301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.309216, 26.419899, 24.479614>,  <30.196882, 26.580271, 24.618402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.309216, 26.419899, 24.479614>,  <30.496437, 26.152613, 24.248301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309216, 26.419899, 24.479614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316904, -0.483942, 0.815703,
		0.824922, 0.565054, 0.014751,
		-0.468055, 0.668217, 0.578282,
		30.168798, 26.620363, 24.653099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954990, 26.431211, 24.787634>,  <30.496437, 26.152613, 24.248301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954990, 26.431211, 24.787634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.586859, 26.479561, 24.936436>,  <30.365980, 26.508570, 25.025717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.586859, 26.479561, 24.936436>,  <30.954990, 26.431211, 24.787634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586859, 26.479561, 24.936436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131787, -0.799627, 0.585856,
		0.368277, 0.588205, 0.719990,
		-0.920328, 0.120872, 0.372003,
		30.310760, 26.515823, 25.048037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070343, 26.310684, 25.474501>,  <30.954990, 26.431211, 24.787634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070343, 26.310684, 25.474501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.670879, 26.298191, 25.457993>,  <30.431202, 26.290695, 25.448088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.670879, 26.298191, 25.457993>,  <31.070343, 26.310684, 25.474501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670879, 26.298191, 25.457993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009447, -0.674037, 0.738638,
		-0.050887, 0.738037, 0.672838,
		-0.998660, -0.031231, -0.041272,
		30.371281, 26.288822, 25.445610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856503, 26.403639, 26.123671>,  <31.070343, 26.310684, 25.474501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856503, 26.403639, 26.123671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.560259, 26.206825, 25.940628>,  <30.382513, 26.088737, 25.830803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.560259, 26.206825, 25.940628>,  <30.856503, 26.403639, 26.123671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560259, 26.206825, 25.940628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113955, -0.579187, 0.807190,
		-0.662205, 0.649957, 0.372881,
		-0.740607, -0.492034, -0.457606,
		30.338078, 26.059216, 25.803347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361603, 26.310581, 26.677040>,  <30.856503, 26.403639, 26.123671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361603, 26.310581, 26.677040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.281807, 26.038132, 26.395252>,  <30.233931, 25.874662, 26.226179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.281807, 26.038132, 26.395252>,  <30.361603, 26.310581, 26.677040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281807, 26.038132, 26.395252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049143, -0.711060, 0.701412,
		-0.978667, 0.174544, 0.108375,
		-0.199488, -0.681123, -0.704468,
		30.221960, 25.833796, 26.183912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773424, 26.002361, 26.873953>,  <30.361603, 26.310581, 26.677040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773424, 26.002361, 26.873953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.936132, 25.720814, 26.641022>,  <30.033758, 25.551886, 26.501263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.936132, 25.720814, 26.641022>,  <29.773424, 26.002361, 26.873953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936132, 25.720814, 26.641022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151762, -0.680658, 0.716710,
		-0.900836, -0.203162, -0.383693,
		0.406772, -0.703868, -0.582328,
		30.058165, 25.509653, 26.466324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386147, 25.371559, 26.983259>,  <29.773424, 26.002361, 26.873953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386147, 25.371559, 26.983259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.713320, 25.230442, 26.801479>,  <29.909624, 25.145771, 26.692411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.713320, 25.230442, 26.801479>,  <29.386147, 25.371559, 26.983259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713320, 25.230442, 26.801479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108558, -0.681082, 0.724115,
		-0.564977, -0.641613, -0.518782,
		0.817934, -0.352791, -0.454447,
		29.958700, 25.124605, 26.665144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255926, 24.650707, 26.943886>,  <29.386147, 25.371559, 26.983259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255926, 24.650707, 26.943886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.647566, 24.674427, 26.866070>,  <29.882549, 24.688660, 26.819380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.647566, 24.674427, 26.866070>,  <29.255926, 24.650707, 26.943886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647566, 24.674427, 26.866070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178228, -0.710950, 0.680283,
		-0.097967, -0.700738, -0.706660,
		0.979100, 0.059301, -0.194541,
		29.941296, 24.692217, 26.807707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470264, 23.992077, 26.680477>,  <29.255926, 24.650707, 26.943886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470264, 23.992077, 26.680477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.762295, 24.201744, 26.855858>,  <29.937513, 24.327543, 26.961086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.762295, 24.201744, 26.855858>,  <29.470264, 23.992077, 26.680477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762295, 24.201744, 26.855858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146549, -0.746768, 0.648737,
		0.667468, -0.409373, -0.622013,
		0.730075, 0.524167, 0.438451,
		29.981318, 24.358994, 26.987392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001415, 23.592577, 26.749184>,  <29.470264, 23.992077, 26.680477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001415, 23.592577, 26.749184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.074858, 23.859509, 27.037895>,  <30.118923, 24.019667, 27.211123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.074858, 23.859509, 27.037895>,  <30.001415, 23.592577, 26.749184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074858, 23.859509, 27.037895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117491, -0.743894, 0.657889,
		0.975953, -0.035990, -0.214988,
		0.183606, 0.667328, 0.721777,
		30.129940, 24.059708, 27.254429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489548, 23.183811, 27.127371>,  <30.001415, 23.592577, 26.749184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489548, 23.183811, 27.127371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.360016, 23.478802, 27.364441>,  <30.282297, 23.655796, 27.506683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.360016, 23.478802, 27.364441>,  <30.489548, 23.183811, 27.127371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360016, 23.478802, 27.364441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059278, -0.609383, 0.790657,
		0.944256, 0.291172, 0.153620,
		-0.323831, 0.737476, 0.592674,
		30.262867, 23.700045, 27.542244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833303, 23.000359, 27.828220>,  <30.489548, 23.183811, 27.127371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833303, 23.000359, 27.828220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.514053, 23.230770, 27.898861>,  <30.322502, 23.369017, 27.941246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.514053, 23.230770, 27.898861>,  <30.833303, 23.000359, 27.828220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514053, 23.230770, 27.898861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093090, -0.407499, 0.908449,
		0.595255, 0.708617, 0.378858,
		-0.798126, 0.576027, 0.176601,
		30.274616, 23.403578, 27.951841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989294, 23.320992, 28.483522>,  <30.833303, 23.000359, 27.828220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989294, 23.320992, 28.483522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.591450, 23.345848, 28.450336>,  <30.352743, 23.360762, 28.430426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.591450, 23.345848, 28.450336>,  <30.989294, 23.320992, 28.483522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591450, 23.345848, 28.450336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100283, -0.374340, 0.921853,
		0.026229, 0.925207, 0.378555,
		-0.994613, 0.062142, -0.082964,
		30.293066, 23.364491, 28.425447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734894, 23.621281, 29.082191>,  <30.989294, 23.320992, 28.483522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734894, 23.621281, 29.082191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.390997, 23.462147, 28.954082>,  <30.184660, 23.366667, 28.877218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.390997, 23.462147, 28.954082>,  <30.734894, 23.621281, 29.082191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390997, 23.462147, 28.954082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270806, -0.176578, 0.946300,
		-0.433023, 0.900304, 0.044076,
		-0.859741, -0.397834, -0.320271,
		30.133074, 23.342796, 28.858002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199577, 23.946083, 29.440845>,  <30.734894, 23.621281, 29.082191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199577, 23.946083, 29.440845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.030708, 23.611931, 29.300045>,  <29.929386, 23.411440, 29.215565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.030708, 23.611931, 29.300045>,  <30.199577, 23.946083, 29.440845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030708, 23.611931, 29.300045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246037, -0.268135, 0.931434,
		-0.872487, 0.479833, -0.092336,
		-0.422175, -0.835382, -0.352001,
		29.904057, 23.361317, 29.194445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695648, 23.883640, 29.959431>,  <30.199577, 23.946083, 29.440845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695648, 23.883640, 29.959431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.702875, 23.543083, 29.749744>,  <29.707212, 23.338749, 29.623932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.702875, 23.543083, 29.749744>,  <29.695648, 23.883640, 29.959431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702875, 23.543083, 29.749744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335473, -0.499072, 0.798990,
		-0.941877, 0.161425, -0.294637,
		0.018068, -0.851393, -0.524218,
		29.708296, 23.287666, 29.592480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971508, 23.559521, 30.008173>,  <29.695648, 23.883640, 29.959431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971508, 23.559521, 30.008173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.250959, 23.282921, 29.934689>,  <29.418631, 23.116961, 29.890598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.250959, 23.282921, 29.934689>,  <28.971508, 23.559521, 30.008173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250959, 23.282921, 29.934689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218231, -0.450475, 0.865706,
		-0.681393, -0.564713, -0.465621,
		0.698626, -0.691499, -0.183713,
		29.460546, 23.075472, 29.879576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638584, 22.931473, 30.085768>,  <28.971508, 23.559521, 30.008173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638584, 22.931473, 30.085768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.028509, 22.842571, 30.093201>,  <29.262465, 22.789230, 30.097660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.028509, 22.842571, 30.093201>,  <28.638584, 22.931473, 30.085768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028509, 22.842571, 30.093201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119429, -0.449827, 0.885095,
		-0.188356, -0.865020, -0.465040,
		0.974812, -0.222252, 0.018581,
		29.320953, 22.775896, 30.098776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567986, 22.307789, 30.242086>,  <28.638584, 22.931473, 30.085768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567986, 22.307789, 30.242086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.946026, 22.392075, 30.341995>,  <29.172850, 22.442646, 30.401939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.946026, 22.392075, 30.341995>,  <28.567986, 22.307789, 30.242086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946026, 22.392075, 30.341995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137274, -0.437624, 0.888618,
		0.296549, -0.874120, -0.384672,
		0.945100, 0.210713, 0.249771,
		29.229555, 22.455288, 30.416927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793177, 21.712212, 30.564384>,  <28.567986, 22.307789, 30.242086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793177, 21.712212, 30.564384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.055725, 21.984112, 30.695297>,  <29.213255, 22.147253, 30.773846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.055725, 21.984112, 30.695297>,  <28.793177, 21.712212, 30.564384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055725, 21.984112, 30.695297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029401, -0.410435, 0.911416,
		0.753865, -0.607849, -0.249413,
		0.656371, 0.679751, 0.327284,
		29.252636, 22.188038, 30.793482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411970, 21.304045, 30.895622>,  <28.793177, 21.712212, 30.564384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411970, 21.304045, 30.895622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.377260, 21.671719, 31.049282>,  <29.356434, 21.892323, 31.141478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.377260, 21.671719, 31.049282>,  <29.411970, 21.304045, 30.895622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377260, 21.671719, 31.049282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089370, -0.376866, 0.921946,
		0.992211, 0.114334, -0.049444,
		-0.086776, 0.919184, 0.384149,
		29.351227, 21.947474, 31.164526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961443, 21.333374, 31.540033>,  <29.411970, 21.304045, 30.895622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961443, 21.333374, 31.540033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.692167, 21.626919, 31.576397>,  <29.530602, 21.803045, 31.598215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.692167, 21.626919, 31.576397>,  <29.961443, 21.333374, 31.540033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692167, 21.626919, 31.576397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021656, -0.103317, 0.994413,
		0.739153, 0.671396, 0.053659,
		-0.673189, 0.733861, 0.090907,
		29.490211, 21.847076, 31.603668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239605, 21.842661, 31.933451>,  <29.961443, 21.333374, 31.540033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239605, 21.842661, 31.933451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.841005, 21.831314, 31.964912>,  <29.601845, 21.824507, 31.983789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.841005, 21.831314, 31.964912>,  <30.239605, 21.842661, 31.933451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841005, 21.831314, 31.964912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083319, -0.258385, 0.962442,
		-0.006978, 0.965625, 0.259844,
		-0.996498, -0.028366, 0.078652,
		29.542055, 21.822803, 31.988508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862614, 21.270311, 31.862938>,  <30.239605, 21.842661, 31.933451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862614, 21.270311, 31.862938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.051535, 21.500664, 32.129860>,  <31.164886, 21.638876, 32.290012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.051535, 21.500664, 32.129860>,  <30.862614, 21.270311, 31.862938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051535, 21.500664, 32.129860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694504, 0.223048, -0.684043,
		-0.542767, 0.786519, -0.294605,
		0.472301, 0.575880, 0.667303,
		31.193226, 21.673428, 32.330051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618504, 21.168972, 31.602318>,  <30.862614, 21.270311, 31.862938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618504, 21.168972, 31.602318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.918318, 21.265072, 31.849049>,  <32.098206, 21.322731, 31.997087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.918318, 21.265072, 31.849049>,  <31.618504, 21.168972, 31.602318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918318, 21.265072, 31.849049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277246, 0.732216, -0.622089,
		-0.601107, 0.637291, 0.482214,
		0.749536, 0.240250, 0.616827,
		32.143177, 21.337147, 32.034096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584198, 21.909227, 31.742500>,  <31.618504, 21.168972, 31.602318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584198, 21.909227, 31.742500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952002, 21.752678, 31.757107>,  <32.172684, 21.658749, 31.765871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952002, 21.752678, 31.757107>,  <31.584198, 21.909227, 31.742500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952002, 21.752678, 31.757107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320979, 0.693984, -0.644483,
		0.226892, 0.604328, 0.763746,
		0.919507, -0.391374, 0.036517,
		32.227852, 21.635265, 31.768063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110928, 22.515093, 31.872486>,  <31.584198, 21.909227, 31.742500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110928, 22.515093, 31.872486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.334774, 22.216732, 31.728008>,  <32.469082, 22.037716, 31.641321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.334774, 22.216732, 31.728008>,  <32.110928, 22.515093, 31.872486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334774, 22.216732, 31.728008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413583, 0.629034, -0.658229,
		0.718176, 0.218973, 0.660511,
		0.559618, -0.745900, -0.361193,
		32.502659, 21.992962, 31.619650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859795, 22.725338, 31.812496>,  <32.110928, 22.515093, 31.872486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859795, 22.725338, 31.812496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.811726, 22.416832, 31.562469>,  <32.782883, 22.231728, 31.412455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.811726, 22.416832, 31.562469>,  <32.859795, 22.725338, 31.812496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811726, 22.416832, 31.562469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312632, 0.568191, -0.761196,
		0.942242, -0.286890, 0.172843,
		-0.120172, -0.771267, -0.625065,
		32.775673, 22.185452, 31.374950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453125, 22.710970, 31.444990>,  <32.859795, 22.725338, 31.812496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453125, 22.710970, 31.444990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.205471, 22.494038, 31.217815>,  <33.056881, 22.363878, 31.081511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.205471, 22.494038, 31.217815>,  <33.453125, 22.710970, 31.444990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205471, 22.494038, 31.217815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185887, 0.601457, -0.776978,
		0.762969, -0.586624, -0.271569,
		-0.619132, -0.542330, -0.567939,
		33.019730, 22.331339, 31.047434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767464, 22.694662, 30.865236>,  <33.453125, 22.710970, 31.444990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767464, 22.694662, 30.865236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408707, 22.558525, 30.752281>,  <33.193451, 22.476843, 30.684507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408707, 22.558525, 30.752281>,  <33.767464, 22.694662, 30.865236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408707, 22.558525, 30.752281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071362, 0.518791, -0.851917,
		0.436445, -0.784234, -0.441015,
		-0.896896, -0.340343, -0.282389,
		33.139637, 22.456423, 30.667564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725960, 22.411665, 30.166071>,  <33.767464, 22.694662, 30.865236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725960, 22.411665, 30.166071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.354870, 22.540699, 30.241192>,  <33.132217, 22.618118, 30.286264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.354870, 22.540699, 30.241192>,  <33.725960, 22.411665, 30.166071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354870, 22.540699, 30.241192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027165, 0.560143, -0.827950,
		-0.372279, -0.763007, -0.528421,
		-0.927723, 0.322583, 0.187802,
		33.076553, 22.637474, 30.297533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344967, 22.330294, 29.567078>,  <33.725960, 22.411665, 30.166071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344967, 22.330294, 29.567078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124542, 22.594849, 29.770607>,  <32.992287, 22.753582, 29.892725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124542, 22.594849, 29.770607>,  <33.344967, 22.330294, 29.567078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124542, 22.594849, 29.770607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198603, 0.488286, -0.849784,
		-0.810486, -0.569337, -0.137723,
		-0.551062, 0.661386, 0.508821,
		32.959225, 22.793264, 29.923254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879948, 22.635103, 29.057877>,  <33.344967, 22.330294, 29.567078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879948, 22.635103, 29.057877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.853466, 22.904316, 29.352535>,  <32.837578, 23.065844, 29.529331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.853466, 22.904316, 29.352535>,  <32.879948, 22.635103, 29.057877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853466, 22.904316, 29.352535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169034, 0.720030, -0.673041,
		-0.983384, -0.169077, 0.066096,
		-0.066204, 0.673030, 0.736646,
		32.833603, 23.106224, 29.573528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150917, 22.856895, 29.073086>,  <32.879948, 22.635103, 29.057877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150917, 22.856895, 29.073086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.406334, 23.127960, 29.218983>,  <32.559586, 23.290600, 29.306520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.406334, 23.127960, 29.218983>,  <32.150917, 22.856895, 29.073086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406334, 23.127960, 29.218983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471056, 0.718950, -0.511094,
		-0.608581, 0.154541, 0.778297,
		0.638542, 0.677663, 0.364741,
		32.597897, 23.331259, 29.328405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749691, 23.460449, 29.197744>,  <32.150917, 22.856895, 29.073086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749691, 23.460449, 29.197744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.122883, 23.604080, 29.187878>,  <32.346798, 23.690258, 29.181957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.122883, 23.604080, 29.187878>,  <31.749691, 23.460449, 29.197744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122883, 23.604080, 29.187878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289619, 0.708280, -0.643786,
		-0.213698, 0.607785, 0.764807,
		0.932981, 0.359078, -0.024668,
		32.402779, 23.711803, 29.180477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710659, 24.218821, 29.073944>,  <31.749691, 23.460449, 29.197744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710659, 24.218821, 29.073944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091419, 24.155338, 28.969101>,  <32.319874, 24.117249, 28.906195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091419, 24.155338, 28.969101>,  <31.710659, 24.218821, 29.073944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091419, 24.155338, 28.969101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066136, 0.728833, -0.681490,
		0.299190, 0.666044, 0.683279,
		0.951899, -0.158706, -0.262109,
		32.376987, 24.107727, 28.890469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914158, 24.819830, 28.869263>,  <31.710659, 24.218821, 29.073944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914158, 24.819830, 28.869263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.227859, 24.611336, 28.734646>,  <32.416080, 24.486240, 28.653875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.227859, 24.611336, 28.734646>,  <31.914158, 24.819830, 28.869263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227859, 24.611336, 28.734646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008706, 0.551616, -0.834053,
		0.620379, 0.651179, 0.437145,
		0.784254, -0.521234, -0.336542,
		32.463135, 24.454966, 28.633684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435905, 25.323744, 28.768423>,  <31.914158, 24.819830, 28.869263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435905, 25.323744, 28.768423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.502846, 24.991940, 28.555290>,  <32.543011, 24.792858, 28.427410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.502846, 24.991940, 28.555290>,  <32.435905, 25.323744, 28.768423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502846, 24.991940, 28.555290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171476, 0.556705, -0.812819,
		0.970870, 0.044660, 0.235407,
		0.167353, -0.829509, -0.532831,
		32.553051, 24.743088, 28.395441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130043, 25.331736, 28.413015>,  <32.435905, 25.323744, 28.768423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130043, 25.331736, 28.413015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.918842, 25.089996, 28.174358>,  <32.792122, 24.944952, 28.031164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.918842, 25.089996, 28.174358>,  <33.130043, 25.331736, 28.413015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918842, 25.089996, 28.174358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217104, 0.583156, -0.782812,
		0.821027, -0.542856, -0.176698,
		-0.527997, -0.604348, -0.596643,
		32.760445, 24.908691, 27.995365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441818, 25.303301, 27.724159>,  <33.130043, 25.331736, 28.413015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441818, 25.303301, 27.724159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.072445, 25.173656, 27.641968>,  <32.850822, 25.095869, 27.592653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.072445, 25.173656, 27.641968>,  <33.441818, 25.303301, 27.724159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072445, 25.173656, 27.641968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056344, 0.644143, -0.762827,
		0.379599, -0.692843, -0.613085,
		-0.923433, -0.324112, -0.205479,
		32.795414, 25.076424, 27.580324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446026, 24.979429, 27.038694>,  <33.441818, 25.303301, 27.724159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446026, 24.979429, 27.038694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.064137, 25.067810, 27.118374>,  <32.835003, 25.120838, 27.166182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.064137, 25.067810, 27.118374>,  <33.446026, 24.979429, 27.038694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064137, 25.067810, 27.118374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031612, 0.590460, -0.806447,
		-0.295806, -0.776232, -0.556742,
		-0.954725, 0.220952, 0.199200,
		32.777718, 25.134096, 27.178133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029152, 24.882748, 26.425947>,  <33.446026, 24.979429, 27.038694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029152, 24.882748, 26.425947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.815399, 25.134659, 26.651447>,  <32.687145, 25.285805, 26.786747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.815399, 25.134659, 26.651447>,  <33.029152, 24.882748, 26.425947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815399, 25.134659, 26.651447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034808, 0.650005, -0.759132,
		-0.844524, -0.425292, -0.325431,
		-0.534385, 0.629778, 0.563749,
		32.655083, 25.323591, 26.820572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527634, 25.240698, 25.887085>,  <33.029152, 24.882748, 26.425947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527634, 25.240698, 25.887085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.520298, 25.455875, 26.224197>,  <32.515896, 25.584982, 26.426464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.520298, 25.455875, 26.224197>,  <32.527634, 25.240698, 25.887085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520298, 25.455875, 26.224197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035311, 0.842745, -0.537153,
		-0.999208, 0.019909, -0.034449,
		-0.018338, 0.537944, 0.842781,
		32.514797, 25.617258, 26.477032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036434, 25.742046, 25.791700>,  <32.527634, 25.240698, 25.887085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036434, 25.742046, 25.791700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.281258, 25.871372, 26.080379>,  <32.428150, 25.948969, 26.253588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.281258, 25.871372, 26.080379>,  <32.036434, 25.742046, 25.791700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281258, 25.871372, 26.080379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167980, 0.838626, -0.518159,
		-0.772765, 0.438375, 0.458978,
		0.612059, 0.323317, 0.721700,
		32.464874, 25.968367, 26.296890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.163660, 35.160412, 16.597027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.378670, 35.144279, 16.260113>,  <17.507675, 35.134602, 16.057964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.378670, 35.144279, 16.260113>,  <17.163660, 35.160412, 16.597027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.378670, 35.144279, 16.260113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751414, -0.430391, 0.500141,
		-0.382683, -0.901741, -0.201040,
		0.537523, -0.040331, -0.842284,
		17.539927, 35.132179, 16.007427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.368811, 34.415565, 16.512392>,  <17.163660, 35.160412, 16.597027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.368811, 34.415565, 16.512392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.605192, 34.685986, 16.336334>,  <17.747021, 34.848240, 16.230700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.605192, 34.685986, 16.336334>,  <17.368811, 34.415565, 16.512392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.605192, 34.685986, 16.336334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798824, -0.414328, 0.436134,
		0.112486, -0.609332, -0.784896,
		0.590955, 0.676053, -0.440142,
		17.782478, 34.888802, 16.204292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.865433, 34.073391, 16.085114>,  <17.368811, 34.415565, 16.512392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.865433, 34.073391, 16.085114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.007544, 34.432865, 16.187984>,  <18.092810, 34.648548, 16.249706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.007544, 34.432865, 16.187984>,  <17.865433, 34.073391, 16.085114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.007544, 34.432865, 16.187984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721421, -0.438564, 0.535923,
		0.594416, -0.004867, -0.804143,
		0.355276, 0.898687, 0.257178,
		18.114126, 34.702473, 16.265139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.501719, 33.963253, 16.168077>,  <17.865433, 34.073391, 16.085114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.501719, 33.963253, 16.168077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.511868, 34.324982, 16.338512>,  <18.517958, 34.542019, 16.440773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.511868, 34.324982, 16.338512>,  <18.501719, 33.963253, 16.168077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.511868, 34.324982, 16.338512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707485, -0.317372, 0.631459,
		0.706273, 0.285428, -0.647850,
		0.025374, 0.904326, 0.426088,
		18.519480, 34.596279, 16.466339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.210665, 34.227921, 16.156563>,  <18.501719, 33.963253, 16.168077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.210665, 34.227921, 16.156563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.067650, 34.498135, 16.414501>,  <18.981840, 34.660263, 16.569263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.067650, 34.498135, 16.414501>,  <19.210665, 34.227921, 16.156563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.067650, 34.498135, 16.414501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783159, -0.159271, 0.601078,
		0.508752, 0.719924, -0.472102,
		-0.357538, 0.675531, 0.644845,
		18.960388, 34.700794, 16.607954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.760925, 34.739498, 16.401756>,  <19.210665, 34.227921, 16.156563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.760925, 34.739498, 16.401756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.481434, 34.741009, 16.687908>,  <19.313740, 34.741917, 16.859598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.481434, 34.741009, 16.687908>,  <19.760925, 34.739498, 16.401756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.481434, 34.741009, 16.687908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714397, -0.048904, 0.698029,
		0.037624, 0.998796, 0.031469,
		-0.698728, 0.003781, 0.715378,
		19.271816, 34.742142, 16.902521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.173246, 35.069389, 16.816925>,  <19.760925, 34.739498, 16.401756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.173246, 35.069389, 16.816925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.850538, 34.918385, 16.998741>,  <19.656914, 34.827782, 17.107830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.850538, 34.918385, 16.998741>,  <20.173246, 35.069389, 16.816925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.850538, 34.918385, 16.998741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525328, -0.106145, 0.844253,
		-0.270470, 0.919900, 0.283953,
		-0.806769, -0.377514, 0.454540,
		19.608507, 34.805130, 17.135103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.991287, 35.491299, 17.305323>,  <20.173246, 35.069389, 16.816925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.991287, 35.491299, 17.305323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.877737, 35.122440, 17.410435>,  <19.809607, 34.901123, 17.473501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.877737, 35.122440, 17.410435>,  <19.991287, 35.491299, 17.305323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.877737, 35.122440, 17.410435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571541, 0.057320, 0.818569,
		-0.769907, 0.382562, 0.510775,
		-0.283876, -0.922150, 0.262780,
		19.792574, 34.845795, 17.489269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.604622, 35.584583, 17.913527>,  <19.991287, 35.491299, 17.305323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.604622, 35.584583, 17.913527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.712433, 35.199581, 17.925789>,  <19.777121, 34.968578, 17.933146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.712433, 35.199581, 17.925789>,  <19.604622, 35.584583, 17.913527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.712433, 35.199581, 17.925789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476462, 0.160951, 0.864337,
		-0.836862, -0.218358, 0.501977,
		0.269528, -0.962505, 0.030655,
		19.793291, 34.910831, 17.934986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.582607, 35.351334, 18.682482>,  <19.604622, 35.584583, 17.913527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.582607, 35.351334, 18.682482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.803562, 35.057350, 18.525154>,  <19.936136, 34.880959, 18.430758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.803562, 35.057350, 18.525154>,  <19.582607, 35.351334, 18.682482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.803562, 35.057350, 18.525154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552531, -0.030474, 0.832935,
		-0.624161, -0.677425, 0.389254,
		0.552389, -0.734960, -0.393319,
		19.969278, 34.836861, 18.407158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.647985, 34.874336, 19.169407>,  <19.582607, 35.351334, 18.682482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.647985, 34.874336, 19.169407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.949621, 34.755283, 18.935223>,  <20.130602, 34.683849, 18.794712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.949621, 34.755283, 18.935223>,  <19.647985, 34.874336, 19.169407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.949621, 34.755283, 18.935223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626241, 0.057210, 0.777528,
		-0.197925, -0.952964, 0.229532,
		0.754088, -0.297634, -0.585462,
		20.175848, 34.665993, 18.759584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.994246, 34.480186, 19.614485>,  <19.647985, 34.874336, 19.169407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.994246, 34.480186, 19.614485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.263527, 34.548676, 19.326740>,  <20.425097, 34.589767, 19.154095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.263527, 34.548676, 19.326740>,  <19.994246, 34.480186, 19.614485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.263527, 34.548676, 19.326740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724838, 0.039683, 0.687776,
		0.146311, -0.984433, -0.097395,
		0.673204, 0.171225, -0.719360,
		20.465488, 34.600044, 19.110931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.587994, 34.122025, 19.766176>,  <19.994246, 34.480186, 19.614485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.587994, 34.122025, 19.766176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.741453, 34.386002, 19.507786>,  <20.833529, 34.544388, 19.352751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.741453, 34.386002, 19.507786>,  <20.587994, 34.122025, 19.766176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.741453, 34.386002, 19.507786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762842, 0.167761, 0.624442,
		0.520468, -0.732344, -0.439074,
		0.383647, 0.659946, -0.645977,
		20.856546, 34.583984, 19.313993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.312670, 34.005009, 19.625162>,  <20.587994, 34.122025, 19.766176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.312670, 34.005009, 19.625162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.271357, 34.396500, 19.554253>,  <21.246569, 34.631393, 19.511707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.271357, 34.396500, 19.554253>,  <21.312670, 34.005009, 19.625162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.271357, 34.396500, 19.554253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723272, 0.196248, 0.662091,
		0.682797, -0.059838, -0.728154,
		-0.103281, 0.978727, -0.177276,
		21.240372, 34.690117, 19.501070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.982138, 34.261253, 19.604351>,  <21.312670, 34.005009, 19.625162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.982138, 34.261253, 19.604351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.748976, 34.583237, 19.648636>,  <21.609077, 34.776428, 19.675207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.748976, 34.583237, 19.648636>,  <21.982138, 34.261253, 19.604351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.748976, 34.583237, 19.648636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589178, 0.324898, 0.739805,
		0.559545, 0.496465, -0.663650,
		-0.582906, 0.804962, 0.110711,
		21.574104, 34.824726, 19.681849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.471729, 34.746498, 19.783438>,  <21.982138, 34.261253, 19.604351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.471729, 34.746498, 19.783438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.120214, 34.919155, 19.864841>,  <21.909306, 35.022751, 19.913683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.120214, 34.919155, 19.864841>,  <22.471729, 34.746498, 19.783438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.120214, 34.919155, 19.864841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445047, 0.587377, 0.675960,
		0.172236, 0.684597, -0.708281,
		-0.878788, 0.431643, 0.203510,
		21.856579, 35.048649, 19.925894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.567696, 35.533394, 19.715191>,  <22.471729, 34.746498, 19.783438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.567696, 35.533394, 19.715191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.258829, 35.461304, 19.958920>,  <22.073509, 35.418049, 20.105158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.258829, 35.461304, 19.958920>,  <22.567696, 35.533394, 19.715191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.258829, 35.461304, 19.958920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321914, 0.715806, 0.619672,
		-0.547840, 0.674641, -0.494704,
		-0.772168, -0.180229, 0.609323,
		22.027180, 35.407234, 20.141716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.457848, 36.229877, 20.025064>,  <22.567696, 35.533394, 19.715191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.457848, 36.229877, 20.025064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.271236, 35.975777, 20.271255>,  <22.159269, 35.823318, 20.418970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.271236, 35.975777, 20.271255>,  <22.457848, 36.229877, 20.025064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.271236, 35.975777, 20.271255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488416, 0.395121, 0.778029,
		-0.737430, 0.663580, 0.125931,
		-0.466527, -0.635249, 0.615477,
		22.131279, 35.785202, 20.455898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.310129, 36.639492, 20.494232>,  <22.457848, 36.229877, 20.025064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.310129, 36.639492, 20.494232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.264622, 36.294201, 20.690960>,  <22.237318, 36.087025, 20.808996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.264622, 36.294201, 20.690960>,  <22.310129, 36.639492, 20.494232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.264622, 36.294201, 20.690960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354191, 0.427267, 0.831860,
		-0.928227, 0.268839, 0.257139,
		-0.113769, -0.863231, 0.491821,
		22.230492, 36.035233, 20.838507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.891558, 36.781189, 21.142439>,  <22.310129, 36.639492, 20.494232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.891558, 36.781189, 21.142439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.130688, 36.465218, 21.197014>,  <22.274166, 36.275635, 21.229759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.130688, 36.465218, 21.197014>,  <21.891558, 36.781189, 21.142439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.130688, 36.465218, 21.197014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282647, 0.366984, 0.886247,
		-0.750144, -0.491256, 0.442663,
		0.597825, -0.789930, 0.136439,
		22.310036, 36.228237, 21.237946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.688023, 36.469158, 21.859001>,  <21.891558, 36.781189, 21.142439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.688023, 36.469158, 21.859001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.046669, 36.343678, 21.733994>,  <22.261858, 36.268391, 21.658989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.046669, 36.343678, 21.733994>,  <21.688023, 36.469158, 21.859001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.046669, 36.343678, 21.733994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400467, 0.273301, 0.874604,
		-0.188955, -0.909339, 0.370674,
		0.896617, -0.313703, -0.312519,
		22.315655, 36.249565, 21.640238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.235865, 37.094109, 21.979059>,  <21.688023, 36.469158, 21.859001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.235865, 37.094109, 21.979059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.870398, 36.991386, 22.105083>,  <20.651117, 36.929752, 22.180698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.870398, 36.991386, 22.105083>,  <21.235865, 37.094109, 21.979059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.870398, 36.991386, 22.105083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357104, 0.136938, -0.923972,
		0.194145, -0.956710, -0.216825,
		-0.913666, -0.256813, 0.315059,
		20.596298, 36.914345, 22.199602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.965160, 36.764381, 21.361013>,  <21.235865, 37.094109, 21.979059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.965160, 36.764381, 21.361013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.656366, 36.835514, 21.605118>,  <20.471090, 36.878193, 21.751581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.656366, 36.835514, 21.605118>,  <20.965160, 36.764381, 21.361013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.656366, 36.835514, 21.605118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579459, 0.197755, -0.790646,
		-0.261286, -0.963985, -0.049615,
		-0.771983, 0.177834, 0.610261,
		20.424772, 36.888863, 21.788197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.325735, 36.444698, 21.127024>,  <20.965160, 36.764381, 21.361013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.325735, 36.444698, 21.127024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.195406, 36.740051, 21.363205>,  <20.117208, 36.917263, 21.504913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.195406, 36.740051, 21.363205>,  <20.325735, 36.444698, 21.127024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195406, 36.740051, 21.363205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657750, 0.271579, -0.702573,
		-0.679121, -0.617284, 0.397184,
		-0.325821, 0.738380, 0.590454,
		20.097660, 36.961567, 21.540340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.695034, 36.574238, 20.880369>,  <20.325735, 36.444698, 21.127024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.695034, 36.574238, 20.880369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.706562, 36.892437, 21.122475>,  <19.713478, 37.083359, 21.267738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.706562, 36.892437, 21.122475>,  <19.695034, 36.574238, 20.880369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.706562, 36.892437, 21.122475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547499, 0.519172, -0.656281,
		-0.836310, -0.312470, 0.450498,
		0.028818, 0.795502, 0.605266,
		19.715208, 37.131088, 21.304054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004187, 36.672661, 21.082405>,  <19.695034, 36.574238, 20.880369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004187, 36.672661, 21.082405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.191843, 37.025417, 21.101051>,  <19.304438, 37.237072, 21.112240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.191843, 37.025417, 21.101051>,  <19.004187, 36.672661, 21.082405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.191843, 37.025417, 21.101051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598910, 0.356507, -0.717084,
		-0.649010, 0.308495, 0.695426,
		0.469141, 0.881892, 0.046616,
		19.332584, 37.289986, 21.115036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.512770, 37.257442, 21.116426>,  <19.004187, 36.672661, 21.082405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.512770, 37.257442, 21.116426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.840174, 37.449806, 20.990715>,  <19.036617, 37.565224, 20.915289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.840174, 37.449806, 20.990715>,  <18.512770, 37.257442, 21.116426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.840174, 37.449806, 20.990715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549297, 0.494897, -0.673312,
		-0.168264, 0.723745, 0.669238,
		0.818511, 0.480905, -0.314278,
		19.085728, 37.594078, 20.896431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.313438, 37.945976, 21.007471>,  <18.512770, 37.257442, 21.116426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.313438, 37.945976, 21.007471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.677401, 37.973549, 20.843853>,  <18.895779, 37.990093, 20.745682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.677401, 37.973549, 20.843853>,  <18.313438, 37.945976, 21.007471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.677401, 37.973549, 20.843853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373369, 0.565749, -0.735203,
		0.180737, 0.821691, 0.540516,
		0.909906, 0.068934, -0.409046,
		18.950373, 37.994228, 20.721140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585699, 38.666649, 20.980618>,  <18.313438, 37.945976, 21.007471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.585699, 38.666649, 20.980618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.788294, 38.495525, 20.681164>,  <18.909851, 38.392853, 20.501492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.788294, 38.495525, 20.681164>,  <18.585699, 38.666649, 20.980618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.788294, 38.495525, 20.681164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382748, 0.666456, -0.639797,
		0.772642, 0.610586, 0.173808,
		0.506487, -0.427809, -0.748632,
		18.940241, 38.367184, 20.456573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.920444, 39.243568, 20.494816>,  <18.585699, 38.666649, 20.980618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.920444, 39.243568, 20.494816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.881054, 38.912670, 20.273560>,  <18.857420, 38.714130, 20.140806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.881054, 38.912670, 20.273560>,  <18.920444, 39.243568, 20.494816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.881054, 38.912670, 20.273560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236221, 0.559385, -0.794536,
		0.966697, 0.052421, -0.250499,
		-0.098475, -0.827249, -0.553139,
		18.851511, 38.664497, 20.107618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.137884, 39.490547, 19.867491>,  <18.920444, 39.243568, 20.494816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.137884, 39.490547, 19.867491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.933632, 39.162205, 19.765156>,  <18.811081, 38.965199, 19.703754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.933632, 39.162205, 19.765156>,  <19.137884, 39.490547, 19.867491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.933632, 39.162205, 19.765156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253458, 0.428042, -0.867490,
		0.821593, -0.378123, -0.426624,
		-0.510631, -0.820855, -0.255838,
		18.780443, 38.915947, 19.688404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.231667, 39.457684, 19.155643>,  <19.137884, 39.490547, 19.867491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.231667, 39.457684, 19.155643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.932852, 39.196266, 19.204330>,  <18.753563, 39.039417, 19.233543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.932852, 39.196266, 19.204330>,  <19.231667, 39.457684, 19.155643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.932852, 39.196266, 19.204330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299176, 0.167004, -0.939470,
		0.593657, -0.738235, -0.320283,
		-0.747037, -0.653544, 0.121719,
		18.708740, 39.000202, 19.240847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.215698, 38.896477, 18.637402>,  <19.231667, 39.457684, 19.155643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.215698, 38.896477, 18.637402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.836435, 38.930759, 18.759811>,  <18.608877, 38.951328, 18.833258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.836435, 38.930759, 18.759811>,  <19.215698, 38.896477, 18.637402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.836435, 38.930759, 18.759811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313516, -0.094663, -0.944853,
		-0.052013, -0.991813, 0.116627,
		-0.948157, 0.085709, 0.306026,
		18.551989, 38.956470, 18.851620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.971935, 38.551304, 18.078810>,  <19.215698, 38.896477, 18.637402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.971935, 38.551304, 18.078810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.641912, 38.703705, 18.245720>,  <18.443899, 38.795147, 18.345865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.641912, 38.703705, 18.245720>,  <18.971935, 38.551304, 18.078810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.641912, 38.703705, 18.245720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448314, 0.008113, -0.893839,
		-0.343940, -0.924539, 0.164115,
		-0.825057, 0.381002, 0.417274,
		18.394396, 38.818005, 18.370903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.396723, 38.045094, 18.057407>,  <18.971935, 38.551304, 18.078810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.396723, 38.045094, 18.057407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.252533, 38.416912, 18.088390>,  <18.166019, 38.640003, 18.106979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.252533, 38.416912, 18.088390>,  <18.396723, 38.045094, 18.057407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252533, 38.416912, 18.088390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506842, -0.125484, -0.852857,
		-0.783051, -0.346691, 0.516368,
		-0.360474, 0.929548, 0.077457,
		18.144390, 38.695778, 18.111628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.665504, 38.003551, 17.791399>,  <18.396723, 38.045094, 18.057407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.665504, 38.003551, 17.791399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.735455, 38.397354, 17.786190>,  <17.777424, 38.633636, 17.783066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.735455, 38.397354, 17.786190>,  <17.665504, 38.003551, 17.791399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.735455, 38.397354, 17.786190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529779, 0.082940, -0.844070,
		-0.829911, 0.154505, 0.536074,
		0.174875, 0.984505, -0.013021,
		17.787916, 38.692707, 17.782284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.045420, 38.273613, 17.539083>,  <17.665504, 38.003551, 17.791399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.045420, 38.273613, 17.539083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.314808, 38.563892, 17.482800>,  <17.476440, 38.738060, 17.449030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.314808, 38.563892, 17.482800>,  <17.045420, 38.273613, 17.539083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.314808, 38.563892, 17.482800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438452, 0.238900, -0.866422,
		-0.595147, 0.645202, 0.479076,
		0.673469, 0.725700, -0.140710,
		17.516848, 38.781601, 17.440586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.713518, 38.914871, 17.373672>,  <17.045420, 38.273613, 17.539083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.713518, 38.914871, 17.373672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.079473, 38.915173, 17.212193>,  <17.299047, 38.915356, 17.115305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.079473, 38.915173, 17.212193>,  <16.713518, 38.914871, 17.373672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.079473, 38.915173, 17.212193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401660, 0.102155, -0.910073,
		0.040553, 0.994768, 0.093764,
		0.914890, 0.000755, -0.403702,
		17.353941, 38.915398, 17.091082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625029, 39.403797, 16.845148>,  <16.713518, 38.914871, 17.373672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.625029, 39.403797, 16.845148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.959570, 39.217300, 16.729820>,  <17.160295, 39.105400, 16.660624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.959570, 39.217300, 16.729820>,  <16.625029, 39.403797, 16.845148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.959570, 39.217300, 16.729820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194716, 0.238991, -0.951299,
		0.512444, 0.851763, 0.109095,
		0.836353, -0.466244, -0.288321,
		17.210476, 39.077427, 16.643324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.886427, 39.874481, 16.346977>,  <16.625029, 39.403797, 16.845148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.886427, 39.874481, 16.346977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.022648, 39.510788, 16.251217>,  <17.104380, 39.292572, 16.193760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.022648, 39.510788, 16.251217>,  <16.886427, 39.874481, 16.346977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.022648, 39.510788, 16.251217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286220, 0.142282, -0.947541,
		0.895601, 0.391209, -0.211787,
		0.340553, -0.909237, -0.239400,
		17.124813, 39.238018, 16.179398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.289852, 39.902939, 15.700697>,  <16.886427, 39.874481, 16.346977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.289852, 39.902939, 15.700697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.200190, 39.513779, 15.723422>,  <17.146391, 39.280285, 15.737057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.200190, 39.513779, 15.723422>,  <17.289852, 39.902939, 15.700697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.200190, 39.513779, 15.723422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138743, -0.025843, -0.989991,
		0.964626, -0.229796, -0.129190,
		-0.224157, -0.972896, 0.056812,
		17.132942, 39.221909, 15.740465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619564, 39.603447, 15.099810>,  <17.289852, 39.902939, 15.700697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619564, 39.603447, 15.099810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.324339, 39.370033, 15.235309>,  <17.147203, 39.229984, 15.316607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.324339, 39.370033, 15.235309>,  <17.619564, 39.603447, 15.099810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.324339, 39.370033, 15.235309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364086, -0.078253, -0.928072,
		0.568075, -0.808306, -0.154703,
		-0.738060, -0.583539, 0.338747,
		17.102921, 39.194973, 15.336932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.185518, 28.121496, 22.479734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443510, 28.377945, 22.646091>,  <29.598305, 28.531815, 22.745905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443510, 28.377945, 22.646091>,  <29.185518, 28.121496, 22.479734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443510, 28.377945, 22.646091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141224, 0.634838, -0.759629,
		-0.751039, 0.431210, 0.499998,
		0.644978, 0.641123, 0.415891,
		29.637003, 28.570282, 22.770859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805796, 28.775337, 22.472391>,  <29.185518, 28.121496, 22.479734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805796, 28.775337, 22.472391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162750, 28.926571, 22.570942>,  <29.376923, 29.017311, 22.630074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162750, 28.926571, 22.570942>,  <28.805796, 28.775337, 22.472391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162750, 28.926571, 22.570942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191985, 0.812163, -0.550939,
		-0.408400, 0.444349, 0.797348,
		0.892385, 0.378082, 0.246379,
		29.430466, 29.039995, 22.644855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733047, 29.581810, 22.478085>,  <28.805796, 28.775337, 22.472391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733047, 29.581810, 22.478085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131012, 29.543358, 22.466042>,  <29.369791, 29.520287, 22.458817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131012, 29.543358, 22.466042>,  <28.733047, 29.581810, 22.478085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131012, 29.543358, 22.466042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060602, 0.809929, -0.583388,
		0.080463, 0.578597, 0.811635,
		0.994914, -0.096128, -0.030105,
		29.429485, 29.514519, 22.457010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042324, 30.340952, 22.550493>,  <28.733047, 29.581810, 22.478085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042324, 30.340952, 22.550493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283195, 30.068268, 22.384289>,  <29.427719, 29.904657, 22.284565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283195, 30.068268, 22.384289>,  <29.042324, 30.340952, 22.550493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283195, 30.068268, 22.384289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297950, 0.674753, -0.675229,
		0.740679, 0.282807, 0.609438,
		0.602180, -0.681710, -0.415512,
		29.463850, 29.863754, 22.259636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678267, 30.652224, 22.604910>,  <29.042324, 30.340952, 22.550493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678267, 30.652224, 22.604910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649302, 30.389488, 22.304691>,  <29.631922, 30.231846, 22.124561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649302, 30.389488, 22.304691>,  <29.678267, 30.652224, 22.604910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649302, 30.389488, 22.304691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353049, 0.686917, -0.635218,
		0.932798, -0.310977, 0.182155,
		-0.072413, -0.656840, -0.750545,
		29.627579, 30.192436, 22.079527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365114, 30.699682, 22.275532>,  <29.678267, 30.652224, 22.604910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365114, 30.699682, 22.275532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145842, 30.522484, 21.991772>,  <30.014278, 30.416164, 21.821514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145842, 30.522484, 21.991772>,  <30.365114, 30.699682, 22.275532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145842, 30.522484, 21.991772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324496, 0.669105, -0.668581,
		0.770842, -0.596703, -0.223042,
		-0.548183, -0.442994, -0.709403,
		29.981386, 30.389585, 21.778952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870859, 30.645836, 21.681936>,  <30.365114, 30.699682, 22.275532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870859, 30.645836, 21.681936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485126, 30.624043, 21.578327>,  <30.253687, 30.610966, 21.516161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485126, 30.624043, 21.578327>,  <30.870859, 30.645836, 21.681936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485126, 30.624043, 21.578327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122655, 0.775195, -0.619700,
		0.234558, -0.629368, -0.740863,
		-0.964333, -0.054486, -0.259023,
		30.195827, 30.607697, 21.500620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973532, 30.458828, 21.037394>,  <30.870859, 30.645836, 21.681936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973532, 30.458828, 21.037394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614491, 30.625767, 21.094143>,  <30.399065, 30.725931, 21.128193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614491, 30.625767, 21.094143>,  <30.973532, 30.458828, 21.037394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614491, 30.625767, 21.094143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258898, 0.759626, -0.596608,
		-0.356763, -0.498787, -0.789893,
		-0.897604, 0.417349, 0.141872,
		30.345209, 30.750971, 21.136703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991402, 30.801041, 20.438545>,  <30.973532, 30.458828, 21.037394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991402, 30.801041, 20.438545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661207, 30.946583, 20.611141>,  <30.463091, 31.033907, 20.714699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661207, 30.946583, 20.611141>,  <30.991402, 30.801041, 20.438545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661207, 30.946583, 20.611141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020549, 0.783348, -0.621243,
		-0.564049, -0.503961, -0.654120,
		-0.825486, 0.363853, 0.431490,
		30.413561, 31.055738, 20.740589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525469, 31.117689, 19.876413>,  <30.991402, 30.801041, 20.438545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525469, 31.117689, 19.876413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380016, 31.260326, 20.220650>,  <30.292744, 31.345909, 20.427191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380016, 31.260326, 20.220650>,  <30.525469, 31.117689, 19.876413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380016, 31.260326, 20.220650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092393, 0.905471, -0.414229,
		-0.926949, -0.230139, -0.296312,
		-0.363632, 0.356592, 0.860589,
		30.270927, 31.367304, 20.478827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822714, 31.506140, 19.839670>,  <30.525469, 31.117689, 19.876413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822714, 31.506140, 19.839670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977415, 31.635857, 20.184982>,  <30.070236, 31.713686, 20.392170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977415, 31.635857, 20.184982>,  <29.822714, 31.506140, 19.839670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977415, 31.635857, 20.184982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104157, 0.945500, -0.308515,
		-0.916282, 0.029403, 0.399454,
		0.386755, 0.324292, 0.863281,
		30.093441, 31.733145, 20.443966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419712, 31.941998, 20.179373>,  <29.822714, 31.506140, 19.839670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419712, 31.941998, 20.179373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774225, 32.057446, 20.324261>,  <29.986933, 32.126713, 20.411194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774225, 32.057446, 20.324261>,  <29.419712, 31.941998, 20.179373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774225, 32.057446, 20.324261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190554, 0.940060, -0.282803,
		-0.422131, 0.181621, 0.888155,
		0.886282, 0.288621, 0.362220,
		30.040110, 32.144032, 20.432926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321753, 32.704334, 20.105377>,  <29.419712, 31.941998, 20.179373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321753, 32.704334, 20.105377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611948, 32.687710, 20.380169>,  <29.786064, 32.677734, 20.545044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611948, 32.687710, 20.380169>,  <29.321753, 32.704334, 20.105377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611948, 32.687710, 20.380169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287316, 0.925323, -0.247443,
		-0.625394, 0.376897, 0.683250,
		0.725487, -0.041559, 0.686980,
		29.829594, 32.675243, 20.586264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155653, 33.269997, 20.565203>,  <29.321753, 32.704334, 20.105377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155653, 33.269997, 20.565203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539871, 33.163700, 20.598011>,  <29.770403, 33.099922, 20.617697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539871, 33.163700, 20.598011>,  <29.155653, 33.269997, 20.565203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539871, 33.163700, 20.598011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266428, 0.963851, 0.002712,
		-0.079778, 0.019248, 0.996627,
		0.960548, -0.265745, 0.082022,
		29.828035, 33.083977, 20.622618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796381, 33.648861, 20.711754>,  <29.155653, 33.269997, 20.565203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796381, 33.648861, 20.711754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453861, 33.846489, 20.771954>,  <29.248350, 33.965065, 20.808073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453861, 33.846489, 20.771954>,  <29.796381, 33.648861, 20.711754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453861, 33.846489, 20.771954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121143, -0.091132, 0.988443,
		0.502073, 0.864634, 0.018184,
		-0.856298, 0.494068, 0.150499,
		29.196972, 33.994709, 20.817102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972889, 34.196842, 21.198524>,  <29.796381, 33.648861, 20.711754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972889, 34.196842, 21.198524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580294, 34.129280, 21.234646>,  <29.344736, 34.088741, 21.256319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580294, 34.129280, 21.234646>,  <29.972889, 34.196842, 21.198524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580294, 34.129280, 21.234646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117202, -0.156743, 0.980661,
		-0.151486, 0.973089, 0.173637,
		-0.981487, -0.168907, 0.090304,
		29.285849, 34.078609, 21.261738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753450, 34.619488, 21.690556>,  <29.972889, 34.196842, 21.198524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753450, 34.619488, 21.690556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477413, 34.330555, 21.672642>,  <29.311790, 34.157196, 21.661894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477413, 34.330555, 21.672642>,  <29.753450, 34.619488, 21.690556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477413, 34.330555, 21.672642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141046, -0.194930, 0.970623,
		-0.709842, 0.663504, 0.236402,
		-0.690094, -0.722333, -0.044785,
		29.270386, 34.113853, 21.659206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150492, 34.659405, 22.346323>,  <29.753450, 34.619488, 21.690556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150492, 34.659405, 22.346323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142809, 34.276798, 22.229908>,  <29.138199, 34.047234, 22.160059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142809, 34.276798, 22.229908>,  <29.150492, 34.659405, 22.346323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142809, 34.276798, 22.229908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182142, -0.289567, 0.939668,
		-0.983085, -0.034962, 0.179784,
		-0.019207, -0.956519, -0.291037,
		29.137047, 33.989841, 22.142597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612785, 34.250198, 22.753786>,  <29.150492, 34.659405, 22.346323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612785, 34.250198, 22.753786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849373, 33.956093, 22.621391>,  <28.991325, 33.779629, 22.541954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849373, 33.956093, 22.621391>,  <28.612785, 34.250198, 22.753786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849373, 33.956093, 22.621391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053531, -0.373773, 0.925974,
		-0.804549, -0.565403, -0.181716,
		0.591469, -0.735264, -0.330986,
		29.026814, 33.735512, 22.522095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358263, 33.761433, 23.019266>,  <28.612785, 34.250198, 22.753786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358263, 33.761433, 23.019266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694199, 33.595596, 22.879101>,  <28.895760, 33.496094, 22.795002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694199, 33.595596, 22.879101>,  <28.358263, 33.761433, 23.019266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694199, 33.595596, 22.879101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095964, -0.521963, 0.847553,
		-0.534292, -0.745432, -0.398578,
		0.839835, -0.414591, -0.350415,
		28.946150, 33.471218, 22.773977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231777, 33.117889, 23.050238>,  <28.358263, 33.761433, 23.019266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231777, 33.117889, 23.050238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628141, 33.171623, 23.047443>,  <28.865959, 33.203865, 23.045767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628141, 33.171623, 23.047443>,  <28.231777, 33.117889, 23.050238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628141, 33.171623, 23.047443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081466, -0.557991, 0.825838,
		0.107043, -0.818901, -0.563864,
		0.990911, 0.134336, -0.006984,
		28.925415, 33.211926, 23.045349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676792, 32.368958, 23.085344>,  <28.231777, 33.117889, 23.050238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676792, 32.368958, 23.085344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898369, 32.677639, 23.210320>,  <29.031315, 32.862850, 23.285305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898369, 32.677639, 23.210320>,  <28.676792, 32.368958, 23.085344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898369, 32.677639, 23.210320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352377, -0.557324, 0.751811,
		0.754309, -0.306361, -0.580656,
		0.553939, 0.771708, 0.312440,
		29.064550, 32.909153, 23.304050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244766, 31.978722, 23.307285>,  <28.676792, 32.368958, 23.085344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244766, 31.978722, 23.307285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276293, 32.345638, 23.463421>,  <29.295210, 32.565788, 23.557102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276293, 32.345638, 23.463421>,  <29.244766, 31.978722, 23.307285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276293, 32.345638, 23.463421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555069, -0.365625, 0.747139,
		0.828062, 0.157775, -0.537978,
		0.078818, 0.917292, 0.390337,
		29.299938, 32.620827, 23.580523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997166, 32.071949, 23.439560>,  <29.244766, 31.978722, 23.307285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997166, 32.071949, 23.439560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786585, 32.326958, 23.664562>,  <29.660236, 32.479961, 23.799564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786585, 32.326958, 23.664562>,  <29.997166, 32.071949, 23.439560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786585, 32.326958, 23.664562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479727, -0.323490, 0.815608,
		0.701933, 0.699228, -0.135534,
		-0.526452, 0.637522, 0.562507,
		29.628649, 32.518215, 23.833315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486216, 32.288635, 24.028185>,  <29.997166, 32.071949, 23.439560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486216, 32.288635, 24.028185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112415, 32.379246, 24.138016>,  <29.888134, 32.433613, 24.203915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112415, 32.379246, 24.138016>,  <30.486216, 32.288635, 24.028185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112415, 32.379246, 24.138016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196386, -0.315248, 0.928467,
		0.296881, 0.921577, 0.250114,
		-0.934502, 0.226525, 0.274576,
		29.832066, 32.447205, 24.220388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563433, 32.484749, 24.648375>,  <30.486216, 32.288635, 24.028185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563433, 32.484749, 24.648375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170176, 32.412956, 24.634426>,  <29.934221, 32.369881, 24.626057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170176, 32.412956, 24.634426>,  <30.563433, 32.484749, 24.648375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170176, 32.412956, 24.634426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039365, -0.394042, 0.918249,
		-0.178546, 0.901398, 0.394465,
		-0.983144, -0.179478, -0.034871,
		29.875233, 32.359112, 24.623964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294538, 32.693901, 25.305428>,  <30.563433, 32.484749, 24.648375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294538, 32.693901, 25.305428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046549, 32.429565, 25.136227>,  <29.897755, 32.270966, 25.034706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046549, 32.429565, 25.136227>,  <30.294538, 32.693901, 25.305428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046549, 32.429565, 25.136227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026164, -0.556227, 0.830619,
		-0.784187, 0.503893, 0.362135,
		-0.619972, -0.660836, -0.423002,
		29.860558, 32.231316, 25.009327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719378, 32.619972, 25.875917>,  <30.294538, 32.693901, 25.305428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719378, 32.619972, 25.875917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685860, 32.303440, 25.633667>,  <29.665749, 32.113522, 25.488317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685860, 32.303440, 25.633667>,  <29.719378, 32.619972, 25.875917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685860, 32.303440, 25.633667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210615, -0.608097, 0.765415,
		-0.973971, -0.063416, 0.217620,
		-0.083794, -0.791326, -0.605626,
		29.660721, 32.066044, 25.451979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245333, 33.033085, 26.411121>,  <29.719378, 32.619972, 25.875917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245333, 33.033085, 26.411121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462584, 33.320927, 26.584179>,  <29.592934, 33.493633, 26.688013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462584, 33.320927, 26.584179>,  <29.245333, 33.033085, 26.411121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462584, 33.320927, 26.584179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087278, 0.560858, -0.823299,
		-0.835102, 0.409396, 0.367423,
		0.543127, 0.719606, 0.432642,
		29.625523, 33.536808, 26.713972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950918, 33.690659, 26.239809>,  <29.245333, 33.033085, 26.411121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950918, 33.690659, 26.239809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326912, 33.785080, 26.338367>,  <29.552507, 33.841732, 26.397503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326912, 33.785080, 26.338367>,  <28.950918, 33.690659, 26.239809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326912, 33.785080, 26.338367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061380, 0.593342, -0.802607,
		-0.335658, 0.769560, 0.543242,
		0.939982, 0.236057, 0.246395,
		29.608906, 33.855896, 26.412287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987431, 34.412930, 26.131905>,  <28.950918, 33.690659, 26.239809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987431, 34.412930, 26.131905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369177, 34.295872, 26.155712>,  <29.598225, 34.225636, 26.169996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369177, 34.295872, 26.155712>,  <28.987431, 34.412930, 26.131905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369177, 34.295872, 26.155712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236920, 0.620622, -0.747460,
		0.181803, 0.727452, 0.661635,
		0.954367, -0.292645, 0.059517,
		29.655487, 34.208076, 26.173567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339991, 35.097729, 26.369356>,  <28.987431, 34.412930, 26.131905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339991, 35.097729, 26.369356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610968, 34.866879, 26.186928>,  <29.773554, 34.728367, 26.077471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610968, 34.866879, 26.186928>,  <29.339991, 35.097729, 26.369356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610968, 34.866879, 26.186928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175089, 0.728712, -0.662060,
		0.714435, 0.368653, 0.594707,
		0.677441, -0.577125, -0.456070,
		29.814199, 34.693741, 26.050106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856188, 35.498425, 26.406485>,  <29.339991, 35.097729, 26.369356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856188, 35.498425, 26.406485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976503, 35.242970, 26.123169>,  <30.048693, 35.089699, 25.953180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976503, 35.242970, 26.123169>,  <29.856188, 35.498425, 26.406485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976503, 35.242970, 26.123169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373061, 0.762292, -0.528901,
		0.877697, -0.105148, 0.467539,
		0.300788, -0.638635, -0.708288,
		30.066740, 35.051380, 25.910683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615978, 35.647762, 26.296593>,  <29.856188, 35.498425, 26.406485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615978, 35.647762, 26.296593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487499, 35.476673, 25.958626>,  <30.410412, 35.374020, 25.755846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487499, 35.476673, 25.958626>,  <30.615978, 35.647762, 26.296593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487499, 35.476673, 25.958626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517531, 0.667900, -0.534856,
		0.793092, -0.609064, 0.006835,
		-0.321196, -0.427727, -0.844916,
		30.391140, 35.348354, 25.705151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216228, 35.357231, 25.987873>,  <30.615978, 35.647762, 26.296593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216228, 35.357231, 25.987873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929298, 35.444038, 25.723042>,  <30.757141, 35.496124, 25.564142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929298, 35.444038, 25.723042>,  <31.216228, 35.357231, 25.987873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929298, 35.444038, 25.723042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669337, 0.478518, -0.568338,
		0.193478, -0.850837, -0.488510,
		-0.717324, 0.217017, -0.662080,
		30.714102, 35.509144, 25.524418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441162, 35.181610, 25.283180>,  <31.216228, 35.357231, 25.987873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441162, 35.181610, 25.283180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126099, 35.411102, 25.193363>,  <30.937059, 35.548798, 25.139473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126099, 35.411102, 25.193363>,  <31.441162, 35.181610, 25.283180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126099, 35.411102, 25.193363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539086, 0.465337, -0.702031,
		-0.298290, -0.674011, -0.675820,
		-0.787661, 0.573733, -0.224544,
		30.889801, 35.583221, 25.125999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496727, 35.344852, 24.635157>,  <31.441162, 35.181610, 25.283180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496727, 35.344852, 24.635157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225063, 35.628151, 24.712234>,  <31.062065, 35.798130, 24.758482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225063, 35.628151, 24.712234>,  <31.496727, 35.344852, 24.635157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225063, 35.628151, 24.712234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372434, 0.558745, -0.741010,
		-0.632485, -0.431497, -0.643252,
		-0.679157, 0.708247, 0.192694,
		31.021317, 35.840626, 24.770042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090229, 35.544617, 23.974108>,  <31.496727, 35.344852, 24.635157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090229, 35.544617, 23.974108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066282, 35.857594, 24.222042>,  <31.051914, 36.045380, 24.370802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066282, 35.857594, 24.222042>,  <31.090229, 35.544617, 23.974108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066282, 35.857594, 24.222042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277825, 0.609475, -0.742532,
		-0.958764, 0.127752, -0.253871,
		-0.059868, 0.782445, 0.619836,
		31.048323, 36.092327, 24.407993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863865, 35.987457, 23.587776>,  <31.090229, 35.544617, 23.974108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863865, 35.987457, 23.587776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012022, 36.206726, 23.887726>,  <31.100916, 36.338287, 24.067696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012022, 36.206726, 23.887726>,  <30.863865, 35.987457, 23.587776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012022, 36.206726, 23.887726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401178, 0.633711, -0.661412,
		-0.837774, 0.545817, 0.014808,
		0.370394, 0.548173, 0.749876,
		31.123140, 36.371178, 24.112688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728262, 36.660374, 23.342226>,  <30.863865, 35.987457, 23.587776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728262, 36.660374, 23.342226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009075, 36.699871, 23.624332>,  <31.177563, 36.723572, 23.793596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009075, 36.699871, 23.624332>,  <30.728262, 36.660374, 23.342226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009075, 36.699871, 23.624332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499501, 0.637599, -0.586486,
		-0.507589, 0.764013, 0.398292,
		0.702034, 0.098747, 0.705264,
		31.219685, 36.729496, 23.835911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.773170, 30.948095, 28.906092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.111147, 31.079636, 29.074818>,  <29.313934, 31.158560, 29.176052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.111147, 31.079636, 29.074818>,  <28.773170, 30.948095, 28.906092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111147, 31.079636, 29.074818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097683, 0.870265, -0.482801,
		-0.525860, 0.366736, 0.767448,
		0.844944, 0.328853, 0.421813,
		29.364630, 31.178291, 29.201363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616014, 31.565622, 28.870619>,  <28.773170, 30.948095, 28.906092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616014, 31.565622, 28.870619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.011658, 31.557522, 28.928940>,  <29.249043, 31.552662, 28.963932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.011658, 31.557522, 28.928940>,  <28.616014, 31.565622, 28.870619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011658, 31.557522, 28.928940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087478, 0.877486, -0.471557,
		-0.118390, 0.479174, 0.869699,
		0.989106, -0.020252, 0.145803,
		29.308390, 31.551447, 28.972681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860737, 32.165218, 29.261473>,  <28.616014, 31.565622, 28.870619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860737, 32.165218, 29.261473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.163643, 32.011559, 29.050198>,  <29.345387, 31.919363, 28.923433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.163643, 32.011559, 29.050198>,  <28.860737, 32.165218, 29.261473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163643, 32.011559, 29.050198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029872, 0.787507, -0.615582,
		0.652426, 0.481936, 0.584875,
		0.757263, -0.384150, -0.528186,
		29.390821, 31.896313, 28.891741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392530, 32.643581, 29.319769>,  <28.860737, 32.165218, 29.261473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392530, 32.643581, 29.319769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.443884, 32.426739, 28.987591>,  <29.474695, 32.296635, 28.788284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.443884, 32.426739, 28.987591>,  <29.392530, 32.643581, 29.319769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443884, 32.426739, 28.987591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126574, 0.839485, -0.528436,
		0.983614, -0.037270, 0.176393,
		0.128384, -0.542104, -0.830446,
		29.482399, 32.264107, 28.738457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895029, 32.967026, 29.022400>,  <29.392530, 32.643581, 29.319769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895029, 32.967026, 29.022400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.804831, 32.719406, 28.721485>,  <29.750711, 32.570835, 28.540937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.804831, 32.719406, 28.721485>,  <29.895029, 32.967026, 29.022400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804831, 32.719406, 28.721485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202435, 0.725548, -0.657723,
		0.952980, -0.300603, -0.038291,
		-0.225496, -0.619046, -0.752286,
		29.737183, 32.533691, 28.495800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470118, 32.936230, 28.508562>,  <29.895029, 32.967026, 29.022400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470118, 32.936230, 28.508562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.129803, 32.843472, 28.319931>,  <29.925613, 32.787819, 28.206753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.129803, 32.843472, 28.319931>,  <30.470118, 32.936230, 28.508562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129803, 32.843472, 28.319931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295774, 0.530442, -0.794449,
		0.434368, -0.815389, -0.382707,
		-0.850789, -0.231888, -0.471578,
		29.874567, 32.773903, 28.178457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690044, 32.831478, 27.747362>,  <30.470118, 32.936230, 28.508562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690044, 32.831478, 27.747362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.297060, 32.904381, 27.763134>,  <30.061270, 32.948120, 27.772598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.297060, 32.904381, 27.763134>,  <30.690044, 32.831478, 27.747362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297060, 32.904381, 27.763134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084485, 0.623577, -0.777184,
		-0.166233, -0.760221, -0.628037,
		-0.982461, 0.182254, 0.039431,
		30.002321, 32.959057, 27.774963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391066, 32.471752, 27.140488>,  <30.690044, 32.831478, 27.747362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391066, 32.471752, 27.140488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.152252, 32.764664, 27.271526>,  <30.008965, 32.940411, 27.350149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.152252, 32.764664, 27.271526>,  <30.391066, 32.471752, 27.140488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152252, 32.764664, 27.271526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049449, 0.441180, -0.896056,
		-0.800693, -0.518774, -0.299608,
		-0.597031, 0.732281, 0.327597,
		29.973143, 32.984348, 27.369804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921585, 32.556259, 26.565670>,  <30.391066, 32.471752, 27.140488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921585, 32.556259, 26.565670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.903769, 32.902225, 26.765648>,  <29.893078, 33.109806, 26.885633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.903769, 32.902225, 26.765648>,  <29.921585, 32.556259, 26.565670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903769, 32.902225, 26.765648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046589, 0.501694, -0.863790,
		-0.997920, -0.015185, -0.062642,
		-0.044544, 0.864912, 0.499943,
		29.890406, 33.161697, 26.915630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430073, 32.109802, 26.355299>,  <29.921585, 32.556259, 26.565670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430073, 32.109802, 26.355299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.560423, 31.881042, 26.054173>,  <29.638632, 31.743786, 25.873497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.560423, 31.881042, 26.054173>,  <29.430073, 32.109802, 26.355299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560423, 31.881042, 26.054173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279530, -0.702397, 0.654601,
		-0.903144, -0.423752, -0.069029,
		0.325874, -0.571903, -0.752817,
		29.658184, 31.709471, 25.828327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068661, 31.480568, 26.291248>,  <29.430073, 32.109802, 26.355299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068661, 31.480568, 26.291248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.416521, 31.406532, 26.108185>,  <29.625237, 31.362110, 25.998346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.416521, 31.406532, 26.108185>,  <29.068661, 31.480568, 26.291248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416521, 31.406532, 26.108185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149875, -0.784313, 0.601988,
		-0.470369, -0.592111, -0.654338,
		0.869650, -0.185088, -0.457659,
		29.677416, 31.351006, 25.970886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038115, 30.795425, 26.143435>,  <29.068661, 31.480568, 26.291248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038115, 30.795425, 26.143435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.427307, 30.886116, 26.126003>,  <29.660824, 30.940531, 26.115545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.427307, 30.886116, 26.126003>,  <29.038115, 30.795425, 26.143435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427307, 30.886116, 26.126003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222517, -0.870549, 0.438896,
		0.061574, -0.436735, -0.897480,
		0.972983, 0.226729, -0.043578,
		29.719202, 30.954134, 26.112930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379601, 30.111010, 25.974419>,  <29.038115, 30.795425, 26.143435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379601, 30.111010, 25.974419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.702623, 30.306934, 26.105835>,  <29.896437, 30.424488, 26.184685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.702623, 30.306934, 26.105835>,  <29.379601, 30.111010, 25.974419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702623, 30.306934, 26.105835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320551, -0.832093, 0.452624,
		0.495076, -0.260206, -0.828971,
		0.807556, 0.489811, 0.328540,
		29.944891, 30.453878, 26.204397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848419, 29.690380, 25.817646>,  <29.379601, 30.111010, 25.974419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848419, 29.690380, 25.817646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.030733, 29.906906, 26.100273>,  <30.140121, 30.036821, 26.269850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.030733, 29.906906, 26.100273>,  <29.848419, 29.690380, 25.817646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030733, 29.906906, 26.100273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251482, -0.839788, 0.481157,
		0.853824, -0.041615, -0.518895,
		0.455785, 0.541316, 0.706566,
		30.167469, 30.069302, 26.312243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503248, 29.399448, 25.954510>,  <29.848419, 29.690380, 25.817646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503248, 29.399448, 25.954510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.438686, 29.620239, 26.281746>,  <30.399948, 29.752714, 26.478086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.438686, 29.620239, 26.281746>,  <30.503248, 29.399448, 25.954510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438686, 29.620239, 26.281746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344575, -0.745267, 0.570828,
		0.924779, 0.374027, -0.069907,
		-0.161406, 0.551978, 0.818088,
		30.390265, 29.785833, 26.527172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100378, 29.139578, 26.409336>,  <30.503248, 29.399448, 25.954510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100378, 29.139578, 26.409336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.826733, 29.306686, 26.648487>,  <30.662546, 29.406952, 26.791977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.826733, 29.306686, 26.648487>,  <31.100378, 29.139578, 26.409336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826733, 29.306686, 26.648487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150109, -0.721517, 0.675929,
		0.713762, 0.552158, 0.430888,
		-0.684113, 0.417773, 0.597876,
		30.621498, 29.432018, 26.827850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114510, 28.731819, 26.973589>,  <31.100378, 29.139578, 26.409336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114510, 28.731819, 26.973589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.815245, 28.951939, 27.121872>,  <30.635687, 29.084011, 27.210842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.815245, 28.951939, 27.121872>,  <31.114510, 28.731819, 26.973589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815245, 28.951939, 27.121872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174240, -0.702040, 0.690493,
		0.640231, 0.452008, 0.621123,
		-0.748161, 0.550299, 0.370710,
		30.590796, 29.117029, 27.233086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255127, 28.853315, 27.751955>,  <31.114510, 28.731819, 26.973589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255127, 28.853315, 27.751955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.867010, 28.836735, 27.656609>,  <30.634140, 28.826786, 27.599401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.867010, 28.836735, 27.656609>,  <31.255127, 28.853315, 27.751955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867010, 28.836735, 27.656609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118833, -0.776543, 0.618756,
		-0.210748, 0.628699, 0.748547,
		-0.970291, -0.041449, -0.238365,
		30.575922, 28.824301, 27.585098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996876, 28.613171, 28.284664>,  <31.255127, 28.853315, 27.751955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996876, 28.613171, 28.284664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.658684, 28.569435, 28.075584>,  <30.455769, 28.543194, 27.950136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.658684, 28.569435, 28.075584>,  <30.996876, 28.613171, 28.284664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658684, 28.569435, 28.075584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181252, -0.861951, 0.473486,
		-0.502310, 0.495062, 0.708942,
		-0.845478, -0.109339, -0.522697,
		30.405041, 28.536633, 27.918776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507254, 28.402411, 28.746866>,  <30.996876, 28.613171, 28.284664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507254, 28.402411, 28.746866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.369053, 28.294693, 28.387287>,  <30.286133, 28.230062, 28.171539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.369053, 28.294693, 28.387287>,  <30.507254, 28.402411, 28.746866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369053, 28.294693, 28.387287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175858, -0.922390, 0.343903,
		-0.921792, 0.276908, 0.271332,
		-0.345504, -0.269291, -0.898949,
		30.265402, 28.213905, 28.117603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680016, 28.324907, 28.803892>,  <30.507254, 28.402411, 28.746866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680016, 28.324907, 28.803892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.836433, 28.109516, 28.505329>,  <29.930285, 27.980282, 28.326191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.836433, 28.109516, 28.505329>,  <29.680016, 28.324907, 28.803892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836433, 28.109516, 28.505329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282035, -0.842079, 0.459738,
		-0.876094, 0.030737, -0.481159,
		0.391043, -0.538477, -0.746410,
		29.953747, 27.947973, 28.281406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204731, 27.851419, 28.654198>,  <29.680016, 28.324907, 28.803892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204731, 27.851419, 28.654198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.552244, 27.705208, 28.520569>,  <29.760752, 27.617481, 28.440392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.552244, 27.705208, 28.520569>,  <29.204731, 27.851419, 28.654198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552244, 27.705208, 28.520569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186072, -0.866165, 0.463828,
		-0.458904, -0.340805, -0.820524,
		0.868783, -0.365529, -0.334073,
		29.812880, 27.595549, 28.420347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122927, 27.209873, 28.190702>,  <29.204731, 27.851419, 28.654198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122927, 27.209873, 28.190702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.498260, 27.179588, 28.325638>,  <29.723461, 27.161417, 28.406599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.498260, 27.179588, 28.325638>,  <29.122927, 27.209873, 28.190702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498260, 27.179588, 28.325638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237847, -0.849502, 0.470930,
		0.250914, -0.522125, -0.815125,
		0.938334, -0.075712, 0.337338,
		29.779760, 27.156876, 28.426840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.444695, 26.389528, 28.694050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106903, 26.597805, 28.744232>,  <34.904228, 26.722771, 28.774342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106903, 26.597805, 28.744232>,  <35.444695, 26.389528, 28.694050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106903, 26.597805, 28.744232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108120, 0.395145, -0.912234,
		-0.524565, -0.756796, -0.389988,
		-0.844477, 0.520692, 0.125455,
		34.853561, 26.754013, 28.781868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029457, 26.218023, 28.169880>,  <35.444695, 26.389528, 28.694050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029457, 26.218023, 28.169880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881371, 26.568306, 28.293865>,  <34.792519, 26.778475, 28.368256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881371, 26.568306, 28.293865>,  <35.029457, 26.218023, 28.169880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881371, 26.568306, 28.293865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126602, 0.378123, -0.917058,
		-0.920277, -0.300271, -0.250855,
		-0.370220, 0.875706, 0.309963,
		34.770306, 26.831018, 28.386854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593956, 26.446890, 27.580841>,  <35.029457, 26.218023, 28.169880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593956, 26.446890, 27.580841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.674351, 26.763187, 27.812126>,  <34.722588, 26.952965, 27.950897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.674351, 26.763187, 27.812126>,  <34.593956, 26.446890, 27.580841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674351, 26.763187, 27.812126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312363, 0.507713, -0.802905,
		-0.928458, 0.341985, -0.144956,
		0.200986, 0.790743, 0.578214,
		34.734646, 27.000410, 27.985590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416000, 26.859249, 27.149044>,  <34.593956, 26.446890, 27.580841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416000, 26.859249, 27.149044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.587685, 27.104195, 27.414612>,  <34.690697, 27.251162, 27.573952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.587685, 27.104195, 27.414612>,  <34.416000, 26.859249, 27.149044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587685, 27.104195, 27.414612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193711, 0.655554, -0.729880,
		-0.882186, 0.441882, 0.162750,
		0.429213, 0.612364, 0.663918,
		34.716450, 27.287905, 27.613787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143497, 27.506868, 27.024693>,  <34.416000, 26.859249, 27.149044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143497, 27.506868, 27.024693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.495045, 27.557186, 27.208767>,  <34.705971, 27.587378, 27.319212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.495045, 27.557186, 27.208767>,  <34.143497, 27.506868, 27.024693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495045, 27.557186, 27.208767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226564, 0.738836, -0.634657,
		-0.419838, 0.662040, 0.620837,
		0.878866, 0.125794, 0.460186,
		34.758705, 27.594925, 27.346823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186520, 28.189978, 27.202845>,  <34.143497, 27.506868, 27.024693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186520, 28.189978, 27.202845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.566139, 28.065411, 27.183533>,  <34.793911, 27.990671, 27.171946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.566139, 28.065411, 27.183533>,  <34.186520, 28.189978, 27.202845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566139, 28.065411, 27.183533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166348, 0.625170, -0.762555,
		0.267657, 0.715669, 0.645119,
		0.949046, -0.311417, -0.048281,
		34.850853, 27.971985, 27.169048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513119, 28.784031, 26.952616>,  <34.186520, 28.189978, 27.202845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513119, 28.784031, 26.952616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.788101, 28.494827, 26.925297>,  <34.953091, 28.321306, 26.908905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.788101, 28.494827, 26.925297>,  <34.513119, 28.784031, 26.952616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788101, 28.494827, 26.925297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424474, 0.476339, -0.770015,
		0.589258, 0.500362, 0.634360,
		0.687457, -0.723007, -0.068296,
		34.994339, 28.277925, 26.904808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213665, 29.163694, 26.985062>,  <34.513119, 28.784031, 26.952616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213665, 29.163694, 26.985062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252895, 28.813450, 26.795879>,  <35.276436, 28.603304, 26.682371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252895, 28.813450, 26.795879>,  <35.213665, 29.163694, 26.985062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252895, 28.813450, 26.795879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362759, 0.474004, -0.802326,
		0.926707, -0.092877, 0.364126,
		0.098080, -0.875611, -0.472955,
		35.282318, 28.550766, 26.653994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864155, 29.186344, 26.674015>,  <35.213665, 29.163694, 26.985062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864155, 29.186344, 26.674015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.687016, 28.882992, 26.482708>,  <35.580730, 28.700979, 26.367924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.687016, 28.882992, 26.482708>,  <35.864155, 29.186344, 26.674015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687016, 28.882992, 26.482708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390120, 0.317295, -0.864367,
		0.807272, -0.569368, 0.155346,
		-0.442852, -0.758383, -0.478266,
		35.554161, 28.655478, 26.339228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254440, 29.110674, 26.165268>,  <35.864155, 29.186344, 26.674015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254440, 29.110674, 26.165268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.918327, 28.949848, 26.019791>,  <35.716660, 28.853354, 25.932505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.918327, 28.949848, 26.019791>,  <36.254440, 29.110674, 26.165268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918327, 28.949848, 26.019791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030237, 0.635036, -0.771891,
		0.541305, -0.659603, -0.521452,
		-0.840282, -0.402062, -0.363693,
		35.666245, 28.829229, 25.910683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286785, 29.129341, 25.448418>,  <36.254440, 29.110674, 26.165268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286785, 29.129341, 25.448418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.892017, 29.106689, 25.508797>,  <35.655155, 29.093098, 25.545025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.892017, 29.106689, 25.508797>,  <36.286785, 29.129341, 25.448418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892017, 29.106689, 25.508797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141008, 0.757110, -0.637888,
		-0.078162, -0.650829, -0.755190,
		-0.986918, -0.056629, 0.150949,
		35.595943, 29.089701, 25.554081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038303, 29.241028, 24.838116>,  <36.286785, 29.129341, 25.448418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038303, 29.241028, 24.838116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.707409, 29.307602, 25.052769>,  <35.508873, 29.347546, 25.181561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.707409, 29.307602, 25.052769>,  <36.038303, 29.241028, 24.838116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707409, 29.307602, 25.052769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312620, 0.657267, -0.685761,
		-0.466846, -0.735051, -0.491686,
		-0.827239, 0.166434, 0.536634,
		35.459236, 29.357533, 25.213758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496048, 29.238560, 24.336954>,  <36.038303, 29.241028, 24.838116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496048, 29.238560, 24.336954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403797, 29.442932, 24.668198>,  <35.348446, 29.565556, 24.866943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403797, 29.442932, 24.668198>,  <35.496048, 29.238560, 24.336954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403797, 29.442932, 24.668198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303170, 0.770956, -0.560102,
		-0.924607, -0.380234, -0.022907,
		-0.230630, 0.510929, 0.828107,
		35.334610, 29.596210, 24.916630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744560, 29.398094, 24.235590>,  <35.496048, 29.238560, 24.336954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744560, 29.398094, 24.235590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922634, 29.652832, 24.487381>,  <35.029480, 29.805674, 24.638456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922634, 29.652832, 24.487381>,  <34.744560, 29.398094, 24.235590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922634, 29.652832, 24.487381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273929, 0.766138, -0.581373,
		-0.852510, 0.086386, 0.515522,
		0.445184, 0.636843, 0.629477,
		35.056190, 29.843885, 24.676224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987377, 29.321344, 24.345106>,  <34.744560, 29.398094, 24.235590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987377, 29.321344, 24.345106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.732613, 29.153530, 24.086391>,  <33.579754, 29.052841, 23.931162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.732613, 29.153530, 24.086391>,  <33.987377, 29.321344, 24.345106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732613, 29.153530, 24.086391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099162, -0.787414, 0.608396,
		-0.764533, 0.451632, 0.459911,
		-0.636911, -0.419533, -0.646789,
		33.541538, 29.027670, 23.892355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317604, 29.311495, 24.709047>,  <33.987377, 29.321344, 24.345106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317604, 29.311495, 24.709047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.337936, 29.028370, 24.427219>,  <33.350136, 28.858496, 24.258123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.337936, 29.028370, 24.427219>,  <33.317604, 29.311495, 24.709047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337936, 29.028370, 24.427219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146868, -0.703108, 0.695750,
		-0.987849, 0.068114, -0.139694,
		0.050830, -0.707813, -0.704569,
		33.353184, 28.816027, 24.215849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691116, 29.021929, 24.773329>,  <33.317604, 29.311495, 24.709047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691116, 29.021929, 24.773329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959534, 28.783287, 24.597252>,  <33.120583, 28.640102, 24.491606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959534, 28.783287, 24.597252>,  <32.691116, 29.021929, 24.773329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959534, 28.783287, 24.597252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222140, -0.728220, 0.648344,
		-0.707361, -0.337280, -0.621194,
		0.671040, -0.596605, -0.440191,
		33.160847, 28.604305, 24.465195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370411, 28.433826, 24.731300>,  <32.691116, 29.021929, 24.773329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370411, 28.433826, 24.731300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.736046, 28.289597, 24.657085>,  <32.955429, 28.203058, 24.612556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.736046, 28.289597, 24.657085>,  <32.370411, 28.433826, 24.731300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736046, 28.289597, 24.657085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095747, -0.636519, 0.765295,
		-0.394044, -0.681784, -0.616360,
		0.914091, -0.360574, -0.185538,
		33.010273, 28.181425, 24.601423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279400, 27.713093, 24.623129>,  <32.370411, 28.433826, 24.731300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279400, 27.713093, 24.623129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.660881, 27.744488, 24.739258>,  <32.889771, 27.763325, 24.808935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.660881, 27.744488, 24.739258>,  <32.279400, 27.713093, 24.623129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660881, 27.744488, 24.739258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150117, -0.712250, 0.685685,
		0.260599, -0.697523, -0.667495,
		0.953705, 0.078486, 0.290322,
		32.946991, 27.768034, 24.826355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504280, 27.030268, 24.616863>,  <32.279400, 27.713093, 24.623129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504280, 27.030268, 24.616863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.756069, 27.233173, 24.852303>,  <32.907143, 27.354918, 24.993567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.756069, 27.233173, 24.852303>,  <32.504280, 27.030268, 24.616863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756069, 27.233173, 24.852303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045451, -0.732170, 0.679604,
		0.775696, -0.454541, -0.437822,
		0.629468, 0.507266, 0.588600,
		32.944908, 27.385353, 25.028883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811226, 26.507259, 24.879982>,  <32.504280, 27.030268, 24.616863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811226, 26.507259, 24.879982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.915993, 26.811764, 25.117260>,  <32.978851, 26.994467, 25.259626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.915993, 26.811764, 25.117260>,  <32.811226, 26.507259, 24.879982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915993, 26.811764, 25.117260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046999, -0.603860, 0.795704,
		0.963945, -0.236288, -0.122383,
		0.261917, 0.761263, 0.593193,
		32.994568, 27.040142, 25.295218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430534, 26.302393, 25.257681>,  <32.811226, 26.507259, 24.879982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430534, 26.302393, 25.257681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.274296, 26.593529, 25.483135>,  <33.180553, 26.768209, 25.618408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.274296, 26.593529, 25.483135>,  <33.430534, 26.302393, 25.257681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274296, 26.593529, 25.483135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127917, -0.649245, 0.749746,
		0.911632, 0.220749, 0.346696,
		-0.390596, 0.727840, 0.563635,
		33.157116, 26.811880, 25.652225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692284, 26.164474, 25.890150>,  <33.430534, 26.302393, 25.257681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692284, 26.164474, 25.890150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.372471, 26.396416, 25.952789>,  <33.180584, 26.535580, 25.990374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.372471, 26.396416, 25.952789>,  <33.692284, 26.164474, 25.890150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372471, 26.396416, 25.952789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250151, -0.558511, 0.790879,
		0.546054, 0.593159, 0.591597,
		-0.799530, 0.579852, 0.156598,
		33.132610, 26.570372, 25.999769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684006, 26.261869, 26.684029>,  <33.692284, 26.164474, 25.890150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684006, 26.261869, 26.684029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325306, 26.309860, 26.513645>,  <33.110085, 26.338655, 26.411415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325306, 26.309860, 26.513645>,  <33.684006, 26.261869, 26.684029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325306, 26.309860, 26.513645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409643, -0.589197, 0.696448,
		-0.167417, 0.799033, 0.577511,
		-0.896752, 0.119976, -0.425960,
		33.056282, 26.345854, 26.385857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228905, 26.343929, 27.264687>,  <33.684006, 26.261869, 26.684029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228905, 26.343929, 27.264687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.964821, 26.252251, 26.978584>,  <32.806370, 26.197243, 26.806923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.964821, 26.252251, 26.978584>,  <33.228905, 26.343929, 27.264687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964821, 26.252251, 26.978584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430848, -0.664468, 0.610617,
		-0.615216, 0.711302, 0.339940,
		-0.660212, -0.229199, -0.715254,
		32.766758, 26.183491, 26.764008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524059, 26.363405, 27.528749>,  <33.228905, 26.343929, 27.264687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524059, 26.363405, 27.528749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563183, 26.125099, 27.209877>,  <32.586655, 25.982115, 27.018553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563183, 26.125099, 27.209877>,  <32.524059, 26.363405, 27.528749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563183, 26.125099, 27.209877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410519, -0.753850, 0.513015,
		-0.906591, 0.277082, -0.318304,
		0.097806, -0.595765, -0.797182,
		32.592525, 25.946369, 26.970722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892448, 26.064758, 27.547140>,  <32.524059, 26.363405, 27.528749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892448, 26.064758, 27.547140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.153606, 25.844345, 27.339260>,  <32.310303, 25.712097, 27.214531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.153606, 25.844345, 27.339260>,  <31.892448, 26.064758, 27.547140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153606, 25.844345, 27.339260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225314, -0.796351, 0.561301,
		-0.723160, -0.249375, -0.644090,
		0.652896, -0.551033, -0.519701,
		32.349476, 25.679035, 27.183350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538414, 25.415867, 27.296164>,  <31.892448, 26.064758, 27.547140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538414, 25.415867, 27.296164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925432, 25.320404, 27.262936>,  <32.157642, 25.263126, 27.243000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925432, 25.320404, 27.262936>,  <31.538414, 25.415867, 27.296164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925432, 25.320404, 27.262936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167655, -0.852201, 0.495627,
		-0.189075, -0.465614, -0.864554,
		0.967545, -0.238658, -0.083067,
		32.215694, 25.248806, 27.238016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240004, 24.964588, 26.740490>,  <31.538414, 25.415867, 27.296164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240004, 24.964588, 26.740490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.855101, 24.861179, 26.774506>,  <30.624159, 24.799135, 26.794916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.855101, 24.861179, 26.774506>,  <31.240004, 24.964588, 26.740490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855101, 24.861179, 26.774506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210706, 0.509928, -0.834012,
		0.172244, -0.820451, -0.545153,
		-0.962255, -0.258520, 0.085042,
		30.566423, 24.783623, 26.800018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067652, 24.744753, 26.090935>,  <31.240004, 24.964588, 26.740490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067652, 24.744753, 26.090935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.725368, 24.852989, 26.267365>,  <30.519999, 24.917931, 26.373222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.725368, 24.852989, 26.267365>,  <31.067652, 24.744753, 26.090935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725368, 24.852989, 26.267365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241432, 0.545141, -0.802827,
		-0.457687, -0.793474, -0.401150,
		-0.855706, 0.270593, 0.441075,
		30.468657, 24.934168, 26.399687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629049, 24.746687, 25.602962>,  <31.067652, 24.744753, 26.090935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629049, 24.746687, 25.602962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.441084, 24.960293, 25.884106>,  <30.328304, 25.088455, 26.052792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.441084, 24.960293, 25.884106>,  <30.629049, 24.746687, 25.602962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441084, 24.960293, 25.884106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331305, 0.631340, -0.701175,
		-0.818180, -0.562352, -0.119753,
		-0.469912, 0.534013, 0.702860,
		30.300110, 25.120497, 26.094963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054899, 24.940964, 25.221064>,  <30.629049, 24.746687, 25.602962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054899, 24.940964, 25.221064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.076891, 25.211838, 25.514565>,  <30.090086, 25.374363, 25.690666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.076891, 25.211838, 25.514565>,  <30.054899, 24.940964, 25.221064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076891, 25.211838, 25.514565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257201, 0.719672, -0.644918,
		-0.964793, -0.153266, 0.213740,
		0.054979, 0.677187, 0.733754,
		30.093384, 25.414993, 25.734692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516247, 25.418724, 25.047638>,  <30.054899, 24.940964, 25.221064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516247, 25.418724, 25.047638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.770578, 25.610016, 25.289967>,  <29.923178, 25.724791, 25.435364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.770578, 25.610016, 25.289967>,  <29.516247, 25.418724, 25.047638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770578, 25.610016, 25.289967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161242, 0.849898, -0.501672,
		-0.754800, 0.221293, 0.617500,
		0.635829, 0.478229, 0.605821,
		29.961327, 25.753485, 25.471712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116093, 26.035160, 25.166775>,  <29.516247, 25.418724, 25.047638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116093, 26.035160, 25.166775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.498764, 26.098473, 25.264523>,  <29.728367, 26.136461, 25.323172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.498764, 26.098473, 25.264523>,  <29.116093, 26.035160, 25.166775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498764, 26.098473, 25.264523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015377, 0.865615, -0.500474,
		-0.290747, 0.475034, 0.830547,
		0.956676, 0.158283, 0.244371,
		29.785767, 26.145958, 25.337833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109695, 26.676636, 25.422831>,  <29.116093, 26.035160, 25.166775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109695, 26.676636, 25.422831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.485710, 26.619041, 25.299152>,  <29.711319, 26.584486, 25.224945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.485710, 26.619041, 25.299152>,  <29.109695, 26.676636, 25.422831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485710, 26.619041, 25.299152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027418, 0.871692, -0.489287,
		0.339972, 0.468425, 0.815474,
		0.940036, -0.143985, -0.309194,
		29.767721, 26.575846, 25.206394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379753, 27.290579, 25.368217>,  <29.109695, 26.676636, 25.422831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379753, 27.290579, 25.368217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.644030, 27.103825, 25.133099>,  <29.802595, 26.991772, 24.992027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.644030, 27.103825, 25.133099>,  <29.379753, 27.290579, 25.368217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644030, 27.103825, 25.133099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045863, 0.806686, -0.589198,
		0.749254, 0.362321, 0.554384,
		0.660693, -0.466885, -0.587796,
		29.842237, 26.963758, 24.956760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922709, 27.799360, 25.279696>,  <29.379753, 27.290579, 25.368217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922709, 27.799360, 25.279696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.952709, 27.538288, 24.978130>,  <29.970709, 27.381645, 24.797192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.952709, 27.538288, 24.978130>,  <29.922709, 27.799360, 25.279696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952709, 27.538288, 24.978130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049485, 0.757547, -0.650903,
		0.995955, 0.011511, 0.089114,
		0.075000, -0.652679, -0.753913,
		29.975210, 27.342484, 24.751957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539038, 27.982899, 24.905674>,  <29.922709, 27.799360, 25.279696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539038, 27.982899, 24.905674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.336981, 27.755859, 24.645622>,  <30.215748, 27.619637, 24.489592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.336981, 27.755859, 24.645622>,  <30.539038, 27.982899, 24.905674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336981, 27.755859, 24.645622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043634, 0.735542, -0.676073,
		0.861932, -0.369880, -0.346786,
		-0.505142, -0.567597, -0.650127,
		30.185438, 27.585581, 24.450584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845871, 27.983995, 24.227894>,  <30.539038, 27.982899, 24.905674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845871, 27.983995, 24.227894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.472895, 27.868980, 24.140369>,  <30.249109, 27.799971, 24.087854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.472895, 27.868980, 24.140369>,  <30.845871, 27.983995, 24.227894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472895, 27.868980, 24.140369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002834, 0.611376, -0.791335,
		0.361313, -0.737252, -0.570886,
		-0.932440, -0.287538, -0.218809,
		30.193163, 27.782719, 24.074726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875595, 27.810242, 23.535353>,  <30.845871, 27.983995, 24.227894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875595, 27.810242, 23.535353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.496918, 27.905437, 23.622192>,  <30.269711, 27.962555, 23.674295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.496918, 27.905437, 23.622192>,  <30.875595, 27.810242, 23.535353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496918, 27.905437, 23.622192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069835, 0.506281, -0.859536,
		-0.314475, -0.828878, -0.462673,
		-0.946694, 0.237992, 0.217098,
		30.212910, 27.976835, 23.687323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476107, 27.671040, 22.927191>,  <30.875595, 27.810242, 23.535353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476107, 27.671040, 22.927191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.251425, 27.915688, 23.150047>,  <30.116615, 28.062477, 23.283762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.251425, 27.915688, 23.150047>,  <30.476107, 27.671040, 22.927191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251425, 27.915688, 23.150047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198009, 0.554464, -0.808308,
		-0.803293, -0.564351, -0.190340,
		-0.561706, 0.611619, 0.557143,
		30.082912, 28.099173, 23.317190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947077, 27.915056, 22.468092>,  <30.476107, 27.671040, 22.927191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947077, 27.915056, 22.468092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.917336, 28.185070, 22.761703>,  <29.899490, 28.347078, 22.937870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.917336, 28.185070, 22.761703>,  <29.947077, 27.915056, 22.468092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917336, 28.185070, 22.761703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116481, 0.725150, -0.678667,
		-0.990406, -0.135961, 0.024712,
		-0.074352, 0.675035, 0.734030,
		29.895029, 28.387581, 22.981913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.274914, 40.834225, 19.477770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.609005, 40.615147, 19.458080>,  <45.809460, 40.483700, 19.446266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.609005, 40.615147, 19.458080>,  <45.274914, 40.834225, 19.477770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.609005, 40.615147, 19.458080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545964, -0.836615, 0.044702,
		-0.065663, -0.010462, -0.997787,
		0.835231, -0.547691, -0.049223,
		45.859573, 40.450840, 19.443314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268520, 40.296871, 18.974688>,  <45.274914, 40.834225, 19.477770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268520, 40.296871, 18.974688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.516640, 40.162537, 19.258221>,  <45.665512, 40.081936, 19.428341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.516640, 40.162537, 19.258221>,  <45.268520, 40.296871, 18.974688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516640, 40.162537, 19.258221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530326, -0.845409, 0.063552,
		0.577909, -0.415333, -0.702509,
		0.620303, -0.335832, 0.708831,
		45.702732, 40.061787, 19.470869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312828, 39.493160, 18.914511>,  <45.268520, 40.296871, 18.974688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312828, 39.493160, 18.914511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.424377, 39.567371, 19.291405>,  <45.491306, 39.611897, 19.517542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.424377, 39.567371, 19.291405>,  <45.312828, 39.493160, 18.914511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424377, 39.567371, 19.291405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346711, -0.895535, 0.278943,
		0.895557, -0.404473, -0.185418,
		0.278873, 0.185523, 0.942237,
		45.508038, 39.623028, 19.574076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655544, 38.894711, 19.120340>,  <45.312828, 39.493160, 18.914511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655544, 38.894711, 19.120340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.539467, 39.068222, 19.461544>,  <45.469822, 39.172329, 19.666265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.539467, 39.068222, 19.461544>,  <45.655544, 38.894711, 19.120340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539467, 39.068222, 19.461544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434039, -0.854070, 0.286662,
		0.852877, -0.287052, 0.436122,
		-0.290192, 0.433781, 0.853008,
		45.452408, 39.198357, 19.717447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688934, 38.368847, 19.569918>,  <45.655544, 38.894711, 19.120340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.688934, 38.368847, 19.569918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.460030, 38.628990, 19.769737>,  <45.322685, 38.785076, 19.889629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.460030, 38.628990, 19.769737>,  <45.688934, 38.368847, 19.569918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.460030, 38.628990, 19.769737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486782, -0.759618, 0.431304,
		0.659968, 0.003648, 0.751285,
		-0.572263, 0.650359, 0.499548,
		45.288349, 38.824097, 19.919601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657684, 38.112057, 20.314404>,  <45.688934, 38.368847, 19.569918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657684, 38.112057, 20.314404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.334999, 38.345047, 20.274532>,  <45.141388, 38.484840, 20.250608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.334999, 38.345047, 20.274532>,  <45.657684, 38.112057, 20.314404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334999, 38.345047, 20.274532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589645, -0.782244, 0.201031,
		0.039121, 0.220951, 0.974500,
		-0.806714, 0.582474, -0.099680,
		45.092983, 38.519791, 20.244629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.210583, 37.957508, 20.823406>,  <45.657684, 38.112057, 20.314404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.210583, 37.957508, 20.823406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.925758, 38.145416, 20.614685>,  <44.754864, 38.258163, 20.489452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.925758, 38.145416, 20.614685>,  <45.210583, 37.957508, 20.823406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925758, 38.145416, 20.614685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613090, -0.778215, 0.136019,
		-0.342176, 0.416766, 0.842153,
		-0.712065, 0.469773, -0.521802,
		44.712139, 38.286346, 20.458145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506649, 37.897007, 21.245581>,  <45.210583, 37.957508, 20.823406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506649, 37.897007, 21.245581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.398964, 38.002792, 20.875156>,  <44.334354, 38.066261, 20.652903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.398964, 38.002792, 20.875156>,  <44.506649, 37.897007, 21.245581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398964, 38.002792, 20.875156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713293, -0.700829, 0.007218,
		-0.647100, 0.662494, 0.377309,
		-0.269211, 0.264461, -0.926059,
		44.318199, 38.082130, 20.597338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886471, 37.908978, 21.284107>,  <44.506649, 37.897007, 21.245581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886471, 37.908978, 21.284107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.935471, 37.875992, 20.888493>,  <43.964870, 37.856201, 20.651123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.935471, 37.875992, 20.888493>,  <43.886471, 37.908978, 21.284107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935471, 37.875992, 20.888493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830188, -0.554604, -0.056588,
		-0.543857, 0.828019, -0.136399,
		0.122504, -0.082461, -0.989037,
		43.972221, 37.851254, 20.591782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271629, 38.199139, 20.915396>,  <43.886471, 37.908978, 21.284107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271629, 38.199139, 20.915396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.441868, 37.913788, 20.692696>,  <43.544010, 37.742577, 20.559076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.441868, 37.913788, 20.692696>,  <43.271629, 38.199139, 20.915396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441868, 37.913788, 20.692696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829210, -0.553787, 0.075705,
		-0.362326, 0.429442, -0.827224,
		0.425595, -0.713372, -0.556749,
		43.569546, 37.699776, 20.525671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675278, 37.920555, 20.511795>,  <43.271629, 38.199139, 20.915396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675278, 37.920555, 20.511795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.972599, 37.655582, 20.474514>,  <43.150993, 37.496601, 20.452145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.972599, 37.655582, 20.474514>,  <42.675278, 37.920555, 20.511795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972599, 37.655582, 20.474514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658702, -0.749072, 0.070730,
		-0.116669, 0.008819, -0.993132,
		0.743304, -0.662429, -0.093202,
		43.195591, 37.456852, 20.446552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496147, 37.439480, 19.952362>,  <42.675278, 37.920555, 20.511795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496147, 37.439480, 19.952362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.766430, 37.247581, 20.176243>,  <42.928600, 37.132442, 20.310572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.766430, 37.247581, 20.176243>,  <42.496147, 37.439480, 19.952362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766430, 37.247581, 20.176243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632642, -0.767125, 0.106224,
		0.378399, -0.425866, -0.821859,
		0.675705, -0.479748, 0.559700,
		42.969143, 37.103657, 20.344152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415283, 36.754833, 19.749765>,  <42.496147, 37.439480, 19.952362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415283, 36.754833, 19.749765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.624195, 36.746532, 20.090775>,  <42.749542, 36.741550, 20.295380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.624195, 36.746532, 20.090775>,  <42.415283, 36.754833, 19.749765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624195, 36.746532, 20.090775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359438, -0.911921, 0.198002,
		0.773326, -0.409841, -0.483733,
		0.522276, -0.020752, 0.852524,
		42.780876, 36.740307, 20.346531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755569, 36.085648, 19.768547>,  <42.415283, 36.754833, 19.749765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755569, 36.085648, 19.768547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.745232, 36.230057, 20.141426>,  <42.739029, 36.316700, 20.365154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.745232, 36.230057, 20.141426>,  <42.755569, 36.085648, 19.768547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745232, 36.230057, 20.141426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381797, -0.865385, 0.324561,
		0.923885, -0.347523, 0.160201,
		-0.025844, 0.361021, 0.932200,
		42.737480, 36.338364, 20.421085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878864, 35.471584, 20.164003>,  <42.755569, 36.085648, 19.768547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878864, 35.471584, 20.164003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.734901, 35.735985, 20.427380>,  <42.648521, 35.894623, 20.585405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.734901, 35.735985, 20.427380>,  <42.878864, 35.471584, 20.164003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734901, 35.735985, 20.427380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451972, -0.740922, 0.496744,
		0.816202, -0.118814, 0.565419,
		-0.359911, 0.660997, 0.658443,
		42.626926, 35.934284, 20.624912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041904, 35.219162, 20.857901>,  <42.878864, 35.471584, 20.164003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041904, 35.219162, 20.857901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.722446, 35.456741, 20.896675>,  <42.530773, 35.599289, 20.919939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.722446, 35.456741, 20.896675>,  <43.041904, 35.219162, 20.857901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722446, 35.456741, 20.896675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414959, -0.660149, 0.626109,
		0.435869, 0.459812, 0.773687,
		-0.798641, 0.593950, 0.096935,
		42.482853, 35.634926, 20.925756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850922, 35.183990, 21.485849>,  <43.041904, 35.219162, 20.857901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850922, 35.183990, 21.485849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.512779, 35.354107, 21.356541>,  <42.309895, 35.456177, 21.278955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.512779, 35.354107, 21.356541>,  <42.850922, 35.183990, 21.485849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512779, 35.354107, 21.356541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531840, -0.613131, 0.584138,
		0.050218, 0.665733, 0.744498,
		-0.845355, 0.425288, -0.323273,
		42.259174, 35.481693, 21.259560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523487, 35.283356, 22.083973>,  <42.850922, 35.183990, 21.485849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523487, 35.283356, 22.083973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.254517, 35.283173, 21.787907>,  <42.093136, 35.283062, 21.610268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.254517, 35.283173, 21.787907>,  <42.523487, 35.283356, 22.083973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254517, 35.283173, 21.787907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515911, -0.716761, 0.469138,
		-0.530734, 0.697319, 0.481734,
		-0.672427, -0.000456, -0.740163,
		42.052788, 35.283035, 21.565857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907330, 35.215084, 22.382383>,  <42.523487, 35.283356, 22.083973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907330, 35.215084, 22.382383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.808960, 35.101978, 22.011532>,  <41.749939, 35.034115, 21.789021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.808960, 35.101978, 22.011532>,  <41.907330, 35.215084, 22.382383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808960, 35.101978, 22.011532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617716, -0.691385, 0.374719,
		-0.746958, 0.664855, -0.004636,
		-0.245928, -0.282763, -0.927127,
		41.735180, 35.017151, 21.733395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191563, 35.131390, 22.251053>,  <41.907330, 35.215084, 22.382383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191563, 35.131390, 22.251053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.324509, 34.934460, 21.929272>,  <41.404278, 34.816303, 21.736202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.324509, 34.934460, 21.929272>,  <41.191563, 35.131390, 22.251053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324509, 34.934460, 21.929272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741627, -0.663380, 0.099577,
		-0.582684, 0.563509, -0.585608,
		0.332368, -0.492325, -0.804455,
		41.424217, 34.786762, 21.687935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703472, 34.962009, 21.911791>,  <41.191563, 35.131390, 22.251053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703472, 34.962009, 21.911791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.963551, 34.680527, 21.797226>,  <41.119598, 34.511635, 21.728487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.963551, 34.680527, 21.797226>,  <40.703472, 34.962009, 21.911791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963551, 34.680527, 21.797226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677704, -0.707596, 0.200065,
		-0.343453, 0.064021, -0.936985,
		0.650198, -0.703711, -0.286413,
		41.158611, 34.469414, 21.711302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340149, 35.372490, 22.291573>,  <40.703472, 34.962009, 21.911791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340149, 35.372490, 22.291573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.007137, 35.580929, 22.366783>,  <39.807331, 35.705994, 22.411909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.007137, 35.580929, 22.366783>,  <40.340149, 35.372490, 22.291573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007137, 35.580929, 22.366783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506714, 0.853476, -0.121740,
		-0.223915, -0.006076, -0.974590,
		-0.832528, 0.521098, 0.188027,
		39.757378, 35.737259, 22.423191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213383, 35.789635, 21.778509>,  <40.340149, 35.372490, 22.291573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213383, 35.789635, 21.778509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.985889, 35.953060, 22.064060>,  <39.849396, 36.051117, 22.235390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.985889, 35.953060, 22.064060>,  <40.213383, 35.789635, 21.778509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985889, 35.953060, 22.064060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442823, 0.883484, -0.152848,
		-0.693147, 0.229192, -0.683387,
		-0.568730, 0.408566, 0.713876,
		39.815269, 36.075630, 22.278223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870270, 36.321648, 21.440569>,  <40.213383, 35.789635, 21.778509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870270, 36.321648, 21.440569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.866982, 36.410130, 21.830647>,  <39.865009, 36.463219, 22.064693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.866982, 36.410130, 21.830647>,  <39.870270, 36.321648, 21.440569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866982, 36.410130, 21.830647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450663, 0.871391, -0.193859,
		-0.892656, 0.437889, -0.106854,
		-0.008223, 0.221205, 0.975193,
		39.864513, 36.476490, 22.123205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768227, 37.092888, 21.432083>,  <39.870270, 36.321648, 21.440569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768227, 37.092888, 21.432083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.887199, 36.988998, 21.799580>,  <39.958584, 36.926666, 22.020077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.887199, 36.988998, 21.799580>,  <39.768227, 37.092888, 21.432083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887199, 36.988998, 21.799580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565415, 0.823308, 0.049697,
		-0.769313, 0.504688, 0.391723,
		0.297427, -0.259719, 0.918740,
		39.976429, 36.911083, 22.075201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526329, 37.591484, 21.869547>,  <39.768227, 37.092888, 21.432083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526329, 37.591484, 21.869547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.831177, 37.426563, 22.069218>,  <40.014088, 37.327610, 22.189020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.831177, 37.426563, 22.069218>,  <39.526329, 37.591484, 21.869547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831177, 37.426563, 22.069218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439143, 0.895735, 0.069369,
		-0.475731, 0.166343, 0.863718,
		0.762124, -0.412297, 0.499178,
		40.059814, 37.302876, 22.218971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772045, 38.192047, 22.398188>,  <39.526329, 37.591484, 21.869547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772045, 38.192047, 22.398188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.064308, 37.919353, 22.383354>,  <40.239666, 37.755737, 22.374454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.064308, 37.919353, 22.383354>,  <39.772045, 38.192047, 22.398188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064308, 37.919353, 22.383354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674299, 0.729074, -0.117353,
		0.107040, 0.060740, 0.992397,
		0.730659, -0.681734, -0.037083,
		40.283504, 37.714832, 22.372229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379658, 38.409630, 22.818451>,  <39.772045, 38.192047, 22.398188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379658, 38.409630, 22.818451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.532185, 38.151741, 22.553444>,  <40.623703, 37.997009, 22.394440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.532185, 38.151741, 22.553444>,  <40.379658, 38.409630, 22.818451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532185, 38.151741, 22.553444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809561, 0.578900, -0.097394,
		0.446325, -0.499211, 0.742686,
		0.381321, -0.644719, -0.662519,
		40.646580, 37.958324, 22.354689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024487, 38.283932, 23.036097>,  <40.379658, 38.409630, 22.818451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024487, 38.283932, 23.036097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.007236, 38.216606, 22.642181>,  <40.996887, 38.176212, 22.405832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.007236, 38.216606, 22.642181>,  <41.024487, 38.283932, 23.036097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007236, 38.216606, 22.642181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831924, 0.539763, -0.128683,
		0.553212, -0.824819, 0.116746,
		-0.043125, -0.168312, -0.984790,
		40.994301, 38.166111, 22.346745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753345, 38.261383, 22.839590>,  <41.024487, 38.283932, 23.036097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753345, 38.261383, 22.839590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.568928, 38.316750, 22.488983>,  <41.458279, 38.349972, 22.278620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.568928, 38.316750, 22.488983>,  <41.753345, 38.261383, 22.839590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568928, 38.316750, 22.488983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698205, 0.666217, -0.262040,
		0.547679, -0.732799, -0.403799,
		-0.461040, 0.138421, -0.876517,
		41.430614, 38.358276, 22.226028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218254, 38.151768, 22.312840>,  <41.753345, 38.261383, 22.839590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218254, 38.151768, 22.312840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.931637, 38.373127, 22.142986>,  <41.759666, 38.505943, 22.041075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.931637, 38.373127, 22.142986>,  <42.218254, 38.151768, 22.312840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931637, 38.373127, 22.142986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693942, 0.627307, -0.353455,
		0.070773, -0.547936, -0.833521,
		-0.716544, 0.553401, -0.424632,
		41.716675, 38.539146, 22.015596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417450, 38.294750, 21.581636>,  <42.218254, 38.151768, 22.312840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417450, 38.294750, 21.581636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.146675, 38.570095, 21.685875>,  <41.984211, 38.735302, 21.748419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.146675, 38.570095, 21.685875>,  <42.417450, 38.294750, 21.581636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146675, 38.570095, 21.685875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621025, 0.724200, -0.299771,
		-0.395077, -0.041088, -0.917729,
		-0.676936, 0.688365, 0.260598,
		41.943596, 38.776604, 21.764053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367790, 38.701317, 21.104033>,  <42.417450, 38.294750, 21.581636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367790, 38.701317, 21.104033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.179405, 38.936775, 21.366844>,  <42.066372, 39.078049, 21.524532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.179405, 38.936775, 21.366844>,  <42.367790, 38.701317, 21.104033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179405, 38.936775, 21.366844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563852, 0.773671, -0.288971,
		-0.678427, 0.234373, -0.696280,
		-0.470964, 0.588645, 0.657031,
		42.038116, 39.113369, 21.563953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067005, 39.266365, 20.703770>,  <42.367790, 38.701317, 21.104033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067005, 39.266365, 20.703770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.101219, 39.396496, 21.080460>,  <42.121746, 39.474575, 21.306475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.101219, 39.396496, 21.080460>,  <42.067005, 39.266365, 20.703770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101219, 39.396496, 21.080460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540938, 0.778588, -0.318099,
		-0.836702, 0.536623, -0.109386,
		0.085533, 0.325325, 0.941726,
		42.126881, 39.494095, 21.362978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984886, 39.957081, 20.665543>,  <42.067005, 39.266365, 20.703770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984886, 39.957081, 20.665543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.209827, 39.889214, 20.989265>,  <42.344791, 39.848492, 21.183498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.209827, 39.889214, 20.989265>,  <41.984886, 39.957081, 20.665543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209827, 39.889214, 20.989265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598688, 0.758649, -0.256952,
		-0.570382, 0.629018, 0.528206,
		0.562350, -0.169670, 0.809305,
		42.378532, 39.838314, 21.232058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041393, 40.621067, 20.906870>,  <41.984886, 39.957081, 20.665543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041393, 40.621067, 20.906870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.326656, 40.424427, 21.106766>,  <42.497814, 40.306442, 21.226704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.326656, 40.424427, 21.106766>,  <42.041393, 40.621067, 20.906870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326656, 40.424427, 21.106766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612628, 0.783574, -0.103437,
		-0.340734, 0.379921, 0.859977,
		0.713153, -0.491601, 0.499741,
		42.540604, 40.276947, 21.256687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314304, 41.140350, 21.346275>,  <42.041393, 40.621067, 20.906870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314304, 41.140350, 21.346275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.615288, 40.876976, 21.339741>,  <42.795879, 40.718952, 21.335819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.615288, 40.876976, 21.339741>,  <42.314304, 41.140350, 21.346275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615288, 40.876976, 21.339741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641520, 0.738295, -0.208262,
		0.149190, 0.146228, 0.977937,
		0.752459, -0.658437, -0.016338,
		42.841026, 40.679443, 21.334839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833649, 41.563129, 21.569529>,  <42.314304, 41.140350, 21.346275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833649, 41.563129, 21.569529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.015289, 41.242638, 21.413670>,  <43.124275, 41.050343, 21.320154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.015289, 41.242638, 21.413670>,  <42.833649, 41.563129, 21.569529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015289, 41.242638, 21.413670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787683, 0.565412, -0.244672,
		0.416349, -0.195812, 0.887869,
		0.454102, -0.801228, -0.389647,
		43.151520, 41.002270, 21.296776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585484, 41.609188, 21.782488>,  <42.833649, 41.563129, 21.569529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585484, 41.609188, 21.782488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.588886, 41.349316, 21.478424>,  <43.590927, 41.193390, 21.295986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.588886, 41.349316, 21.478424>,  <43.585484, 41.609188, 21.782488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588886, 41.349316, 21.478424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907233, 0.324715, -0.267374,
		0.420543, -0.687366, 0.592175,
		0.008504, -0.649683, -0.760158,
		43.591438, 41.154411, 21.250378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161713, 41.188637, 21.888050>,  <43.585484, 41.609188, 21.782488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161713, 41.188637, 21.888050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.081329, 41.207218, 21.496651>,  <44.033100, 41.218365, 21.261810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.081329, 41.207218, 21.496651>,  <44.161713, 41.188637, 21.888050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081329, 41.207218, 21.496651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952021, 0.244608, -0.183910,
		0.230805, -0.968509, -0.093378,
		-0.200959, 0.046450, -0.978498,
		44.021042, 41.221153, 21.203102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694237, 41.123383, 21.589289>,  <44.161713, 41.188637, 21.888050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694237, 41.123383, 21.589289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.521721, 41.240990, 21.248104>,  <44.418213, 41.311554, 21.043394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.521721, 41.240990, 21.248104>,  <44.694237, 41.123383, 21.589289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521721, 41.240990, 21.248104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890819, 0.288550, -0.350969,
		0.142933, -0.911205, -0.386363,
		-0.431290, 0.294015, -0.852962,
		44.392334, 41.329193, 20.992216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.914707, 40.675320, 21.001286>,  <44.694237, 41.123383, 21.589289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.914707, 40.675320, 21.001286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.804276, 41.041351, 20.883698>,  <44.738018, 41.260971, 20.813145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.804276, 41.041351, 20.883698>,  <44.914707, 40.675320, 21.001286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804276, 41.041351, 20.883698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905416, 0.144981, -0.399002,
		-0.322497, -0.376321, -0.868550,
		-0.276076, 0.915076, -0.293971,
		44.721455, 41.315872, 20.795506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.223902, 26.442301, 28.071856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.501844, 26.576389, 28.326351>,  <29.668610, 26.656843, 28.479050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.501844, 26.576389, 28.326351>,  <29.223902, 26.442301, 28.071856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501844, 26.576389, 28.326351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308862, -0.659853, 0.684981,
		0.649447, -0.672473, -0.354964,
		0.694855, 0.335223, 0.636241,
		29.710300, 26.676956, 28.517223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264776, 25.935978, 28.463427>,  <29.223902, 26.442301, 28.071856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264776, 25.935978, 28.463427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.453459, 26.214718, 28.679535>,  <29.566669, 26.381962, 28.809200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.453459, 26.214718, 28.679535>,  <29.264776, 25.935978, 28.463427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453459, 26.214718, 28.679535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129227, -0.551473, 0.824123,
		0.872234, -0.458563, -0.170083,
		0.471708, 0.696849, 0.540272,
		29.594971, 26.423773, 28.841616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830929, 25.554342, 28.895182>,  <29.264776, 25.935978, 28.463427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830929, 25.554342, 28.895182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.751078, 25.897518, 29.084534>,  <29.703167, 26.103424, 29.198145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.751078, 25.897518, 29.084534>,  <29.830929, 25.554342, 28.895182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751078, 25.897518, 29.084534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162312, -0.505380, 0.847494,
		0.966336, 0.092347, 0.240141,
		-0.199626, 0.857941, 0.473378,
		29.691191, 26.154900, 29.226547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262331, 25.589436, 29.479212>,  <29.830929, 25.554342, 28.895182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262331, 25.589436, 29.479212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.937246, 25.815742, 29.534931>,  <29.742195, 25.951527, 29.568363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.937246, 25.815742, 29.534931>,  <30.262331, 25.589436, 29.479212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937246, 25.815742, 29.534931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170452, -0.459469, 0.871685,
		0.557176, 0.684685, 0.469852,
		-0.812712, 0.565769, 0.139299,
		29.693432, 25.985474, 29.576721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291822, 26.056934, 30.185389>,  <30.262331, 25.589436, 29.479212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291822, 26.056934, 30.185389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.914660, 25.973030, 30.081905>,  <29.688362, 25.922688, 30.019815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.914660, 25.973030, 30.081905>,  <30.291822, 26.056934, 30.185389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914660, 25.973030, 30.081905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130999, -0.480585, 0.867109,
		-0.306214, 0.851492, 0.425668,
		-0.942906, -0.209759, -0.258706,
		29.631788, 25.910103, 30.004293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018700, 26.020826, 30.832344>,  <30.291822, 26.056934, 30.185389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018700, 26.020826, 30.832344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.731611, 25.879124, 30.592552>,  <29.559359, 25.794102, 30.448677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.731611, 25.879124, 30.592552>,  <30.018700, 26.020826, 30.832344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731611, 25.879124, 30.592552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476656, -0.377647, 0.793840,
		-0.507617, 0.855502, 0.102186,
		-0.717722, -0.354259, -0.599480,
		29.516294, 25.772846, 30.412708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465092, 26.291018, 31.084743>,  <30.018700, 26.020826, 30.832344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465092, 26.291018, 31.084743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.352890, 25.964298, 30.883087>,  <29.285568, 25.768267, 30.762093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.352890, 25.964298, 30.883087>,  <29.465092, 26.291018, 31.084743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352890, 25.964298, 30.883087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564960, -0.284113, 0.774661,
		-0.775975, 0.502116, -0.381762,
		-0.280506, -0.816798, -0.504140,
		29.268738, 25.719259, 30.731846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690929, 26.181400, 31.133129>,  <29.465092, 26.291018, 31.084743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690929, 26.181400, 31.133129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.791101, 25.807014, 31.034126>,  <28.851204, 25.582384, 30.974724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.791101, 25.807014, 31.034126>,  <28.690929, 26.181400, 31.133129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791101, 25.807014, 31.034126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637184, -0.351821, 0.685725,
		-0.728891, -0.014019, -0.684486,
		0.250430, -0.935962, -0.247507,
		28.866230, 25.526226, 30.959875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098209, 25.767132, 31.154015>,  <28.690929, 26.181400, 31.133129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098209, 25.767132, 31.154015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.402292, 25.507771, 31.170322>,  <28.584742, 25.352154, 31.180107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.402292, 25.507771, 31.170322>,  <28.098209, 25.767132, 31.154015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402292, 25.507771, 31.170322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419473, -0.441948, 0.792921,
		-0.496112, -0.619887, -0.607959,
		0.760208, -0.648400, 0.040770,
		28.630354, 25.313250, 31.182552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741594, 25.154350, 31.223673>,  <28.098209, 25.767132, 31.154015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741594, 25.154350, 31.223673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.104948, 25.050404, 31.354706>,  <28.322960, 24.988035, 31.433325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.104948, 25.050404, 31.354706>,  <27.741594, 25.154350, 31.223673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104948, 25.050404, 31.354706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407118, -0.728333, 0.551167,
		0.095359, -0.634036, -0.767402,
		0.908383, -0.259864, 0.327581,
		28.377462, 24.972445, 31.452980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719837, 24.458149, 31.301929>,  <27.741594, 25.154350, 31.223673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719837, 24.458149, 31.301929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.008476, 24.595016, 31.542667>,  <28.181660, 24.677137, 31.687109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.008476, 24.595016, 31.542667>,  <27.719837, 24.458149, 31.301929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008476, 24.595016, 31.542667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275301, -0.655814, 0.702935,
		0.635221, -0.672924, -0.379034,
		0.721598, 0.342170, 0.601844,
		28.224957, 24.697668, 31.723221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262093, 24.049292, 31.393869>,  <27.719837, 24.458149, 31.301929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262093, 24.049292, 31.393869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.246962, 24.245819, 31.741932>,  <28.237883, 24.363735, 31.950769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.246962, 24.245819, 31.741932>,  <28.262093, 24.049292, 31.393869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246962, 24.245819, 31.741932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273464, -0.842629, 0.463890,
		0.961138, -0.220409, 0.166232,
		-0.037826, 0.491321, 0.870157,
		28.235613, 24.393215, 32.002979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697882, 23.730452, 31.928204>,  <28.262093, 24.049292, 31.393869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697882, 23.730452, 31.928204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.369503, 23.890091, 32.091553>,  <28.172476, 23.985874, 32.189564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.369503, 23.890091, 32.091553>,  <28.697882, 23.730452, 31.928204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369503, 23.890091, 32.091553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262744, -0.898996, 0.350387,
		0.506965, 0.180351, 0.842888,
		-0.820946, 0.399098, 0.408373,
		28.123219, 24.009821, 32.214066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157557, 23.175735, 31.949814>,  <28.697882, 23.730452, 31.928204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157557, 23.175735, 31.949814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.179476, 23.475502, 32.213745>,  <28.192627, 23.655361, 32.372105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.179476, 23.475502, 32.213745>,  <28.157557, 23.175735, 31.949814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179476, 23.475502, 32.213745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444346, -0.573476, 0.688246,
		0.894177, -0.330907, 0.301574,
		0.054800, 0.749417, 0.659826,
		28.195915, 23.700327, 32.411694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728624, 22.858547, 31.823267>,  <28.157557, 23.175735, 31.949814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728624, 22.858547, 31.823267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.965485, 22.544701, 31.749798>,  <29.107601, 22.356392, 31.705715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.965485, 22.544701, 31.749798>,  <28.728624, 22.858547, 31.823267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965485, 22.544701, 31.749798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099903, 0.297654, -0.949432,
		0.799612, 0.543856, 0.254641,
		0.592150, -0.784616, -0.183675,
		29.143129, 22.309317, 31.694695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380953, 23.184887, 31.505466>,  <28.728624, 22.858547, 31.823267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380953, 23.184887, 31.505466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.347549, 22.796261, 31.416840>,  <29.327507, 22.563086, 31.363665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.347549, 22.796261, 31.416840>,  <29.380953, 23.184887, 31.505466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347549, 22.796261, 31.416840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289117, 0.189157, -0.938420,
		0.953644, -0.142426, 0.265098,
		-0.083510, -0.971563, -0.221566,
		29.322496, 22.504791, 31.350370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094618, 23.048264, 31.312977>,  <29.380953, 23.184887, 31.505466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094618, 23.048264, 31.312977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.823771, 22.799236, 31.156048>,  <29.661263, 22.649820, 31.061890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.823771, 22.799236, 31.156048>,  <30.094618, 23.048264, 31.312977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823771, 22.799236, 31.156048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387022, 0.152162, -0.909429,
		0.625879, -0.767629, 0.137916,
		-0.677118, -0.622569, -0.392325,
		29.620634, 22.612465, 31.038351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455189, 22.789116, 30.798573>,  <30.094618, 23.048264, 31.312977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455189, 22.789116, 30.798573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.088074, 22.670448, 30.693008>,  <29.867804, 22.599247, 30.629669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.088074, 22.670448, 30.693008>,  <30.455189, 22.789116, 30.798573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088074, 22.670448, 30.693008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210623, 0.199694, -0.956954,
		0.336603, -0.933867, -0.120791,
		-0.917789, -0.296672, -0.263912,
		29.812737, 22.581448, 30.613834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551628, 22.381151, 30.174080>,  <30.455189, 22.789116, 30.798573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551628, 22.381151, 30.174080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.171013, 22.503910, 30.166206>,  <29.942644, 22.577564, 30.161482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.171013, 22.503910, 30.166206>,  <30.551628, 22.381151, 30.174080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171013, 22.503910, 30.166206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091448, 0.221260, -0.970918,
		-0.293615, -0.925667, -0.238603,
		-0.951540, 0.306896, -0.019685,
		29.885551, 22.595978, 30.160301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328911, 22.133598, 29.614569>,  <30.551628, 22.381151, 30.174080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328911, 22.133598, 29.614569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.074848, 22.433598, 29.688412>,  <29.922411, 22.613598, 29.732718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.074848, 22.433598, 29.688412>,  <30.328911, 22.133598, 29.614569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074848, 22.433598, 29.688412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111310, 0.147632, -0.982759,
		-0.764321, -0.644754, -0.010287,
		-0.635156, 0.749998, 0.184605,
		29.884300, 22.658596, 29.743793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931780, 22.160721, 29.013245>,  <30.328911, 22.133598, 29.614569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931780, 22.160721, 29.013245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.853804, 22.512955, 29.186020>,  <29.807018, 22.724295, 29.289684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.853804, 22.512955, 29.186020>,  <29.931780, 22.160721, 29.013245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853804, 22.512955, 29.186020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215152, 0.391267, -0.894774,
		-0.956927, -0.267358, 0.113187,
		-0.194939, 0.880585, 0.431936,
		29.795322, 22.777130, 29.315601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226702, 22.340485, 28.766907>,  <29.931780, 22.160721, 29.013245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226702, 22.340485, 28.766907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.440777, 22.651340, 28.899349>,  <29.569221, 22.837854, 28.978815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.440777, 22.651340, 28.899349>,  <29.226702, 22.340485, 28.766907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440777, 22.651340, 28.899349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097473, 0.446160, -0.889629,
		-0.839091, 0.443844, 0.314529,
		0.535187, 0.777138, 0.331106,
		29.601334, 22.884481, 28.998680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033016, 22.872599, 28.402536>,  <29.226702, 22.340485, 28.766907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033016, 22.872599, 28.402536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.381605, 23.018196, 28.534016>,  <29.590759, 23.105555, 28.612904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.381605, 23.018196, 28.534016>,  <29.033016, 22.872599, 28.402536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381605, 23.018196, 28.534016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135413, 0.465571, -0.874590,
		-0.471378, 0.806692, 0.356443,
		0.871474, 0.363995, 0.328696,
		29.643047, 23.127394, 28.632624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992495, 23.622543, 28.281651>,  <29.033016, 22.872599, 28.402536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992495, 23.622543, 28.281651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.381321, 23.552086, 28.343693>,  <29.614616, 23.509811, 28.380919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.381321, 23.552086, 28.343693>,  <28.992495, 23.622543, 28.281651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381321, 23.552086, 28.343693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233032, 0.645689, -0.727174,
		0.027939, 0.743006, 0.668701,
		0.972068, -0.176146, 0.155104,
		29.672941, 23.499243, 28.390224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325876, 24.240721, 28.327751>,  <28.992495, 23.622543, 28.281651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325876, 24.240721, 28.327751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.613478, 23.992828, 28.201916>,  <29.786037, 23.844093, 28.126413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.613478, 23.992828, 28.201916>,  <29.325876, 24.240721, 28.327751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613478, 23.992828, 28.201916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392204, 0.735482, -0.552487,
		0.573769, 0.273856, 0.771876,
		0.719003, -0.619732, -0.314589,
		29.829178, 23.806908, 28.107538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000332, 24.611750, 28.389984>,  <29.325876, 24.240721, 28.327751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000332, 24.611750, 28.389984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.074184, 24.336082, 28.109711>,  <30.118496, 24.170681, 27.941547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.074184, 24.336082, 28.109711>,  <30.000332, 24.611750, 28.389984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074184, 24.336082, 28.109711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084213, 0.721411, -0.687367,
		0.979193, 0.067903, 0.191233,
		0.184632, -0.689170, -0.700683,
		30.129574, 24.129332, 27.899506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706028, 24.789991, 28.138821>,  <30.000332, 24.611750, 28.389984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706028, 24.789991, 28.138821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.502487, 24.569283, 27.874512>,  <30.380363, 24.436857, 27.715927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.502487, 24.569283, 27.874512>,  <30.706028, 24.789991, 28.138821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502487, 24.569283, 27.874512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173012, 0.686366, -0.706377,
		0.843290, -0.473761, -0.253794,
		-0.508850, -0.551771, -0.660773,
		30.349833, 24.403751, 27.676279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095364, 24.901182, 27.526794>,  <30.706028, 24.789991, 28.138821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095364, 24.901182, 27.526794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.740967, 24.770466, 27.395203>,  <30.528328, 24.692036, 27.316248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.740967, 24.770466, 27.395203>,  <31.095364, 24.901182, 27.526794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740967, 24.770466, 27.395203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047059, 0.642432, -0.764896,
		0.461307, -0.693173, -0.553811,
		-0.885992, -0.326791, -0.328979,
		30.475170, 24.672428, 27.296509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729303, 24.492090, 27.219271>,  <31.095364, 24.901182, 27.526794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729303, 24.492090, 27.219271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.061626, 24.681091, 27.336914>,  <32.261021, 24.794493, 27.407499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.061626, 24.681091, 27.336914>,  <31.729303, 24.492090, 27.219271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061626, 24.681091, 27.336914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222659, -0.766486, 0.602431,
		0.510080, -0.435018, -0.742009,
		0.830807, 0.472503, 0.294109,
		32.310867, 24.822842, 27.425146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219303, 23.982185, 27.266764>,  <31.729303, 24.492090, 27.219271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219303, 23.982185, 27.266764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.353863, 24.285404, 27.490265>,  <32.434597, 24.467335, 27.624365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.353863, 24.285404, 27.490265>,  <32.219303, 23.982185, 27.266764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353863, 24.285404, 27.490265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305274, -0.649071, 0.696789,
		0.890867, -0.063826, -0.449757,
		0.336398, 0.758046, 0.558751,
		32.454781, 24.512817, 27.657890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825478, 23.684307, 27.612471>,  <32.219303, 23.982185, 27.266764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825478, 23.684307, 27.612471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.768135, 23.996265, 27.856178>,  <32.733730, 24.183441, 28.002403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.768135, 23.996265, 27.856178>,  <32.825478, 23.684307, 27.612471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768135, 23.996265, 27.856178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391316, -0.520789, 0.758717,
		0.909022, 0.347185, -0.230526,
		-0.143360, 0.779898, 0.609268,
		32.725128, 24.230234, 28.038958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394417, 23.687426, 28.041159>,  <32.825478, 23.684307, 27.612471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394417, 23.687426, 28.041159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114136, 23.904842, 28.226017>,  <32.945969, 24.035292, 28.336933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114136, 23.904842, 28.226017>,  <33.394417, 23.687426, 28.041159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114136, 23.904842, 28.226017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088389, -0.576635, 0.812206,
		0.707959, 0.609962, 0.356005,
		-0.700701, 0.543542, 0.462148,
		32.903927, 24.067905, 28.364662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637100, 23.817665, 28.703356>,  <33.394417, 23.687426, 28.041159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637100, 23.817665, 28.703356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.254009, 23.916363, 28.762516>,  <33.024155, 23.975582, 28.798012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.254009, 23.916363, 28.762516>,  <33.637100, 23.817665, 28.703356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254009, 23.916363, 28.762516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044489, -0.380904, 0.923544,
		0.284216, 0.891083, 0.353825,
		-0.957728, 0.246745, 0.147902,
		32.966690, 23.990387, 28.806887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623775, 24.176136, 29.326721>,  <33.637100, 23.817665, 28.703356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623775, 24.176136, 29.326721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.258854, 24.018856, 29.280956>,  <33.039902, 23.924488, 29.253496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.258854, 24.018856, 29.280956>,  <33.623775, 24.176136, 29.326721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258854, 24.018856, 29.280956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106139, -0.496884, 0.861302,
		-0.395515, 0.773627, 0.495044,
		-0.912306, -0.393201, -0.114413,
		32.985161, 23.900896, 29.246632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127522, 24.411810, 29.839729>,  <33.623775, 24.176136, 29.326721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127522, 24.411810, 29.839729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977566, 24.061371, 29.718460>,  <32.887592, 23.851107, 29.645699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977566, 24.061371, 29.718460>,  <33.127522, 24.411810, 29.839729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977566, 24.061371, 29.718460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153967, -0.381317, 0.911533,
		-0.914196, 0.295042, 0.277840,
		-0.374886, -0.876098, -0.303172,
		32.865101, 23.798542, 29.627508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851280, 24.874546, 30.505667>,  <33.127522, 24.411810, 29.839729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851280, 24.874546, 30.505667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.172821, 25.032185, 30.683884>,  <33.365746, 25.126768, 30.790813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.172821, 25.032185, 30.683884>,  <32.851280, 24.874546, 30.505667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172821, 25.032185, 30.683884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089065, 0.660837, -0.745226,
		-0.588123, 0.638734, 0.496115,
		0.803853, 0.394098, 0.445542,
		33.413979, 25.150414, 30.817547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824753, 25.645832, 30.509478>,  <32.851280, 24.874546, 30.505667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824753, 25.645832, 30.509478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.210918, 25.544281, 30.533207>,  <33.442619, 25.483351, 30.547443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.210918, 25.544281, 30.533207>,  <32.824753, 25.645832, 30.509478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210918, 25.544281, 30.533207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228049, 0.712018, -0.664096,
		0.126363, 0.654656, 0.745290,
		0.965415, -0.253880, 0.059321,
		33.500542, 25.468117, 30.551003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128208, 26.288126, 30.311131>,  <32.824753, 25.645832, 30.509478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128208, 26.288126, 30.311131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.432922, 26.029732, 30.291580>,  <33.615749, 25.874695, 30.279850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.432922, 26.029732, 30.291580>,  <33.128208, 26.288126, 30.311131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432922, 26.029732, 30.291580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430200, 0.560839, -0.707380,
		0.484369, 0.517844, 0.705141,
		0.761783, -0.645985, -0.048877,
		33.661457, 25.835936, 30.276917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687931, 26.668444, 30.420475>,  <33.128208, 26.288126, 30.311131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687931, 26.668444, 30.420475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.813427, 26.352459, 30.209751>,  <33.888725, 26.162868, 30.083317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.813427, 26.352459, 30.209751>,  <33.687931, 26.668444, 30.420475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813427, 26.352459, 30.209751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538502, 0.604997, -0.586510,
		0.782039, -0.099678, 0.615207,
		0.313736, -0.789964, -0.526808,
		33.907547, 26.115469, 30.051708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361549, 26.845963, 30.311489>,  <33.687931, 26.668444, 30.420475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361549, 26.845963, 30.311489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290512, 26.554447, 30.046967>,  <34.247890, 26.379538, 29.888252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290512, 26.554447, 30.046967>,  <34.361549, 26.845963, 30.311489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290512, 26.554447, 30.046967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652166, 0.416085, -0.633682,
		0.736981, -0.543818, 0.401400,
		-0.177591, -0.728790, -0.661306,
		34.237236, 26.335810, 29.848576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975140, 26.654560, 30.058115>,  <34.361549, 26.845963, 30.311489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975140, 26.654560, 30.058115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.720974, 26.547695, 29.768322>,  <34.568474, 26.483576, 29.594446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.720974, 26.547695, 29.768322>,  <34.975140, 26.654560, 30.058115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720974, 26.547695, 29.768322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575921, 0.461011, -0.675118,
		0.514362, -0.846222, -0.139065,
		-0.635411, -0.267164, -0.724484,
		34.530350, 26.467546, 29.550978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352375, 26.689693, 29.532993>,  <34.975140, 26.654560, 30.058115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352375, 26.689693, 29.532993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987698, 26.679134, 29.368984>,  <34.768890, 26.672798, 29.270578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987698, 26.679134, 29.368984>,  <35.352375, 26.689693, 29.532993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987698, 26.679134, 29.368984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335738, 0.527387, -0.780476,
		0.236842, -0.849215, -0.471953,
		-0.911694, -0.026397, -0.410021,
		34.714188, 26.671215, 29.245977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.825272, 27.083572, 34.377930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.759933, 26.766262, 34.143311>,  <28.720730, 26.575876, 34.002541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.759933, 26.766262, 34.143311>,  <28.825272, 27.083572, 34.377930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759933, 26.766262, 34.143311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365926, 0.503405, -0.782739,
		0.916196, -0.342490, 0.208050,
		-0.163347, -0.793274, -0.586544,
		28.710930, 26.528280, 33.967346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472950, 26.992737, 34.047924>,  <28.825272, 27.083572, 34.377930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472950, 26.992737, 34.047924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.182056, 26.823616, 33.831638>,  <29.007521, 26.722143, 33.701866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.182056, 26.823616, 33.831638>,  <29.472950, 26.992737, 34.047924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182056, 26.823616, 33.831638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403484, 0.373955, -0.835080,
		0.555275, -0.825467, -0.101359,
		-0.727234, -0.422803, -0.540711,
		28.963886, 26.696775, 33.669426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804916, 26.646505, 33.510807>,  <29.472950, 26.992737, 34.047924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804916, 26.646505, 33.510807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.431616, 26.698109, 33.376705>,  <29.207634, 26.729071, 33.296246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.431616, 26.698109, 33.376705>,  <29.804916, 26.646505, 33.510807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431616, 26.698109, 33.376705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359212, 0.329734, -0.873065,
		-0.002090, -0.935217, -0.354068,
		-0.933254, 0.129010, -0.335252,
		29.151640, 26.736811, 33.276131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856750, 26.539957, 32.812565>,  <29.804916, 26.646505, 33.510807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856750, 26.539957, 32.812565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.509233, 26.736465, 32.837406>,  <29.300724, 26.854370, 32.852310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.509233, 26.736465, 32.837406>,  <29.856750, 26.539957, 32.812565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509233, 26.736465, 32.837406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145177, 0.372606, -0.916564,
		-0.473421, -0.787285, -0.395037,
		-0.868790, 0.491271, 0.062104,
		29.248596, 26.883846, 32.856037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409672, 26.437593, 32.122158>,  <29.856750, 26.539957, 32.812565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409672, 26.437593, 32.122158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.280212, 26.765671, 32.310852>,  <29.202538, 26.962517, 32.424068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.280212, 26.765671, 32.310852>,  <29.409672, 26.437593, 32.122158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280212, 26.765671, 32.310852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102745, 0.526084, -0.844203,
		-0.940583, -0.224756, -0.254536,
		-0.323647, 0.820195, 0.471733,
		29.183119, 27.011730, 32.452374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021961, 26.750746, 31.616301>,  <29.409672, 26.437593, 32.122158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021961, 26.750746, 31.616301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.099791, 27.040016, 31.881378>,  <29.146488, 27.213577, 32.040424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.099791, 27.040016, 31.881378>,  <29.021961, 26.750746, 31.616301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099791, 27.040016, 31.881378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194174, 0.633837, -0.748697,
		-0.961477, 0.274354, -0.017094,
		0.194573, 0.723174, 0.662692,
		29.158163, 27.256968, 32.080185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792526, 27.434601, 31.322824>,  <29.021961, 26.750746, 31.616301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792526, 27.434601, 31.322824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.023092, 27.600803, 31.604279>,  <29.161432, 27.700525, 31.773151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.023092, 27.600803, 31.604279>,  <28.792526, 27.434601, 31.322824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023092, 27.600803, 31.604279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192057, 0.768069, -0.610888,
		-0.794268, 0.487262, 0.362924,
		0.576413, 0.415507, 0.703634,
		29.196016, 27.725456, 31.815369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617062, 28.181112, 31.525219>,  <28.792526, 27.434601, 31.322824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617062, 28.181112, 31.525219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.997084, 28.148499, 31.645714>,  <29.225098, 28.128931, 31.718012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.997084, 28.148499, 31.645714>,  <28.617062, 28.181112, 31.525219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997084, 28.148499, 31.645714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203991, 0.892756, -0.401714,
		-0.236180, 0.443101, 0.864801,
		0.950056, -0.081535, 0.301239,
		29.282101, 28.124039, 31.736086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721184, 28.695520, 32.074673>,  <28.617062, 28.181112, 31.525219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721184, 28.695520, 32.074673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.068567, 28.586567, 31.908981>,  <29.276999, 28.521194, 31.809566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.068567, 28.586567, 31.908981>,  <28.721184, 28.695520, 32.074673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068567, 28.586567, 31.908981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147375, 0.939613, -0.308881,
		0.473348, 0.207204, 0.856159,
		0.868460, -0.272384, -0.414227,
		29.329105, 28.504852, 31.784714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140600, 29.267292, 32.160591>,  <28.721184, 28.695520, 32.074673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140600, 29.267292, 32.160591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.345230, 29.068096, 31.880505>,  <29.468008, 28.948578, 31.712454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.345230, 29.068096, 31.880505>,  <29.140600, 29.267292, 32.160591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345230, 29.068096, 31.880505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280460, 0.867066, -0.411750,
		0.812179, 0.014259, 0.583235,
		0.511574, -0.497989, -0.700213,
		29.498703, 28.918699, 31.670441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701509, 29.734934, 32.022770>,  <29.140600, 29.267292, 32.160591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701509, 29.734934, 32.022770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.717419, 29.495052, 31.703075>,  <29.726965, 29.351124, 31.511259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.717419, 29.495052, 31.703075>,  <29.701509, 29.734934, 32.022770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717419, 29.495052, 31.703075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343565, 0.759305, -0.552647,
		0.938286, -0.252608, 0.236237,
		0.039773, -0.599704, -0.799233,
		29.729351, 29.315142, 31.463306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300566, 29.890215, 31.681957>,  <29.701509, 29.734934, 32.022770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300566, 29.890215, 31.681957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.088358, 29.700287, 31.401073>,  <29.961033, 29.586330, 31.232544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.088358, 29.700287, 31.401073>,  <30.300566, 29.890215, 31.681957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088358, 29.700287, 31.401073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237130, 0.712192, -0.660721,
		0.813830, -0.517040, -0.265237,
		-0.530519, -0.474819, -0.702209,
		29.929203, 29.557842, 31.190411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055445, 29.570709, 31.674868>,  <30.300566, 29.890215, 31.681957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055445, 29.570709, 31.674868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.232882, 29.791248, 31.957497>,  <31.339344, 29.923573, 32.127075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.232882, 29.791248, 31.957497>,  <31.055445, 29.570709, 31.674868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232882, 29.791248, 31.957497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203509, -0.705823, 0.678527,
		0.872819, -0.444781, -0.200891,
		0.443590, 0.551347, 0.706572,
		31.365959, 29.956652, 32.169468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632206, 29.148653, 32.020920>,  <31.055445, 29.570709, 31.674868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632206, 29.148653, 32.020920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.547138, 29.431305, 32.290867>,  <31.496098, 29.600897, 32.452835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.547138, 29.431305, 32.290867>,  <31.632206, 29.148653, 32.020920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547138, 29.431305, 32.290867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110371, -0.668875, 0.735136,
		0.970871, 0.230826, 0.064257,
		-0.212669, 0.706630, 0.674867,
		31.483337, 29.643293, 32.493328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246044, 29.175022, 32.447880>,  <31.632206, 29.148653, 32.020920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246044, 29.175022, 32.447880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.930246, 29.307060, 32.654850>,  <31.740767, 29.386284, 32.779034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.930246, 29.307060, 32.654850>,  <32.246044, 29.175022, 32.447880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930246, 29.307060, 32.654850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174989, -0.686996, 0.705277,
		0.588280, 0.647358, 0.484618,
		-0.789497, 0.330097, 0.517427,
		31.693398, 29.406090, 32.810078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517014, 29.136971, 33.165642>,  <32.246044, 29.175022, 32.447880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517014, 29.136971, 33.165642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.117283, 29.130051, 33.178631>,  <31.877445, 29.125898, 33.186424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.117283, 29.130051, 33.178631>,  <32.517014, 29.136971, 33.165642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117283, 29.130051, 33.178631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032896, -0.815438, 0.577908,
		0.016484, 0.578585, 0.815455,
		-0.999323, -0.017299, 0.032475,
		31.817486, 29.124861, 33.188374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405109, 29.051798, 33.893440>,  <32.517014, 29.136971, 33.165642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405109, 29.051798, 33.893440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.063168, 28.957245, 33.708687>,  <31.858002, 28.900513, 33.597836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.063168, 28.957245, 33.708687>,  <32.405109, 29.051798, 33.893440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063168, 28.957245, 33.708687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157493, -0.729980, 0.665075,
		-0.494381, 0.641289, 0.586801,
		-0.854859, -0.236384, -0.461887,
		31.806709, 28.886330, 33.570122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975525, 28.923838, 34.447624>,  <32.405109, 29.051798, 33.893440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975525, 28.923838, 34.447624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.804686, 28.720917, 34.148232>,  <31.702181, 28.599165, 33.968594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.804686, 28.720917, 34.148232>,  <31.975525, 28.923838, 34.447624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804686, 28.720917, 34.148232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033472, -0.818346, 0.573750,
		-0.903585, 0.270102, 0.332535,
		-0.427100, -0.507301, -0.748486,
		31.676556, 28.568726, 33.923687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475868, 28.495951, 34.822170>,  <31.975525, 28.923838, 34.447624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475868, 28.495951, 34.822170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.489742, 28.359898, 34.446274>,  <31.498066, 28.278265, 34.220737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.489742, 28.359898, 34.446274>,  <31.475868, 28.495951, 34.822170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489742, 28.359898, 34.446274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336843, -0.889263, 0.309433,
		-0.940922, 0.305811, -0.145415,
		0.034684, -0.340134, -0.939737,
		31.500147, 28.257858, 34.164352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828527, 28.166048, 34.714558>,  <31.475868, 28.495951, 34.822170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828527, 28.166048, 34.714558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.079126, 28.017441, 34.440483>,  <31.229485, 27.928276, 34.276039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.079126, 28.017441, 34.440483>,  <30.828527, 28.166048, 34.714558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079126, 28.017441, 34.440483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295702, -0.926660, 0.232079,
		-0.721154, 0.057213, -0.690408,
		0.626496, -0.371520, -0.685183,
		31.267075, 27.905985, 34.234928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438347, 27.770407, 34.301785>,  <30.828527, 28.166048, 34.714558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438347, 27.770407, 34.301785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.814453, 27.642551, 34.254913>,  <31.040117, 27.565838, 34.226791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.814453, 27.642551, 34.254913>,  <30.438347, 27.770407, 34.301785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814453, 27.642551, 34.254913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299748, -0.940476, 0.160175,
		-0.161399, -0.115484, -0.980109,
		0.940267, -0.319638, -0.117176,
		31.096533, 27.546659, 34.219761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378220, 27.242588, 33.842896>,  <30.438347, 27.770407, 34.301785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378220, 27.242588, 33.842896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.747421, 27.170605, 33.978943>,  <30.968943, 27.127415, 34.060574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.747421, 27.170605, 33.978943>,  <30.378220, 27.242588, 33.842896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747421, 27.170605, 33.978943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187702, -0.982172, -0.010293,
		0.335910, -0.054341, -0.940325,
		0.923002, -0.179958, 0.340122,
		31.024323, 27.116617, 34.080978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724651, 26.670551, 33.349350>,  <30.378220, 27.242588, 33.842896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724651, 26.670551, 33.349350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.923010, 26.682209, 33.696507>,  <31.042025, 26.689203, 33.904800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.923010, 26.682209, 33.696507>,  <30.724651, 26.670551, 33.349350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923010, 26.682209, 33.696507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057235, -0.998360, 0.000821,
		0.866494, 0.049267, -0.496751,
		0.495896, 0.029143, 0.867893,
		31.071779, 26.690952, 33.956875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267700, 26.207962, 33.270840>,  <30.724651, 26.670551, 33.349350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267700, 26.207962, 33.270840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.205908, 26.265865, 33.661774>,  <31.168833, 26.300608, 33.896336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.205908, 26.265865, 33.661774>,  <31.267700, 26.207962, 33.270840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205908, 26.265865, 33.661774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260724, -0.948170, 0.181651,
		0.952974, 0.282876, 0.108730,
		-0.154479, 0.144760, 0.977334,
		31.159565, 26.309294, 33.954975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860086, 25.909864, 33.525955>,  <31.267700, 26.207962, 33.270840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860086, 25.909864, 33.525955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.586527, 25.933071, 33.816860>,  <31.422390, 25.946995, 33.991405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.586527, 25.933071, 33.816860>,  <31.860086, 25.909864, 33.525955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586527, 25.933071, 33.816860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084621, -0.983797, 0.158059,
		0.724652, 0.169639, 0.667909,
		-0.683900, 0.058019, 0.727265,
		31.381357, 25.950478, 34.035038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095898, 25.435995, 34.030178>,  <31.860086, 25.909864, 33.525955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095898, 25.435995, 34.030178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.702576, 25.492592, 34.075932>,  <31.466581, 25.526550, 34.103386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.702576, 25.492592, 34.075932>,  <32.095898, 25.435995, 34.030178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702576, 25.492592, 34.075932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152100, -0.984256, -0.090031,
		0.099849, -0.105927, 0.989348,
		-0.983308, 0.141490, 0.114388,
		31.407583, 25.535038, 34.110249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639904, 24.775621, 33.995537>,  <32.095898, 25.435995, 34.030178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639904, 24.775621, 33.995537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.686901, 24.448421, 33.770298>,  <32.715099, 24.252102, 33.635155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.686901, 24.448421, 33.770298>,  <32.639904, 24.775621, 33.995537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686901, 24.448421, 33.770298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334065, 0.566530, -0.753290,
		0.935199, -0.099607, 0.339825,
		0.117488, -0.817999, -0.563093,
		32.722149, 24.203022, 33.601372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362133, 24.622753, 33.725807>,  <32.639904, 24.775621, 33.995537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362133, 24.622753, 33.725807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.158894, 24.421051, 33.446503>,  <33.036949, 24.300030, 33.278919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.158894, 24.421051, 33.446503>,  <33.362133, 24.622753, 33.725807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158894, 24.421051, 33.446503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510271, 0.476877, -0.715690,
		0.693871, -0.719943, 0.015004,
		-0.508101, -0.504253, -0.698257,
		33.006462, 24.269775, 33.237026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849945, 24.419439, 33.182598>,  <33.362133, 24.622753, 33.725807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849945, 24.419439, 33.182598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.508202, 24.366913, 32.981468>,  <33.303158, 24.335398, 32.860790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.508202, 24.366913, 32.981468>,  <33.849945, 24.419439, 33.182598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508202, 24.366913, 32.981468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425843, 0.377693, -0.822196,
		0.297883, -0.916571, -0.266763,
		-0.854356, -0.131319, -0.502824,
		33.251896, 24.327518, 32.830620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999683, 24.016344, 32.585365>,  <33.849945, 24.419439, 33.182598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999683, 24.016344, 32.585365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.660362, 24.209801, 32.499130>,  <33.456772, 24.325874, 32.447392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.660362, 24.209801, 32.499130>,  <33.999683, 24.016344, 32.585365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660362, 24.209801, 32.499130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363986, 0.236905, -0.900772,
		-0.384579, -0.842595, -0.377006,
		-0.848300, 0.483643, -0.215583,
		33.405872, 24.354893, 32.434456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970177, 23.844055, 31.845194>,  <33.999683, 24.016344, 32.585365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970177, 23.844055, 31.845194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.719254, 24.147984, 31.913494>,  <33.568699, 24.330341, 31.954473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.719254, 24.147984, 31.913494>,  <33.970177, 23.844055, 31.845194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719254, 24.147984, 31.913494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165910, 0.344613, -0.923968,
		-0.760892, -0.551284, -0.342241,
		-0.627309, 0.759821, 0.170750,
		33.531059, 24.375931, 31.964720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774525, 23.912880, 31.191351>,  <33.970177, 23.844055, 31.845194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774525, 23.912880, 31.191351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.649708, 24.252033, 31.362804>,  <33.574818, 24.455524, 31.465677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.649708, 24.252033, 31.362804>,  <33.774525, 23.912880, 31.191351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649708, 24.252033, 31.362804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036805, 0.440033, -0.897227,
		-0.949356, -0.295745, -0.106101,
		-0.312038, 0.847883, 0.428633,
		33.556095, 24.506397, 31.491394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223400, 24.257612, 30.757095>,  <33.774525, 23.912880, 31.191351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223400, 24.257612, 30.757095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354259, 24.568932, 30.971470>,  <33.432774, 24.755722, 31.100094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354259, 24.568932, 30.971470>,  <33.223400, 24.257612, 30.757095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354259, 24.568932, 30.971470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041040, 0.578311, -0.814783,
		-0.944081, 0.244561, 0.221136,
		0.327150, 0.778297, 0.535936,
		33.452404, 24.802422, 31.132250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580826, 24.011448, 30.497261>,  <33.223400, 24.257612, 30.757095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580826, 24.011448, 30.497261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.639999, 23.728210, 30.221081>,  <32.675503, 23.558268, 30.055372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.639999, 23.728210, 30.221081>,  <32.580826, 24.011448, 30.497261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639999, 23.728210, 30.221081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072308, -0.688517, 0.721606,
		-0.986351, -0.156674, -0.050653,
		0.147932, -0.708094, -0.690448,
		32.684380, 23.515781, 30.013947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167439, 23.574764, 30.666864>,  <32.580826, 24.011448, 30.497261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167439, 23.574764, 30.666864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.393124, 23.351276, 30.423717>,  <32.528534, 23.217184, 30.277830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.393124, 23.351276, 30.423717>,  <32.167439, 23.574764, 30.666864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393124, 23.351276, 30.423717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077144, -0.697349, 0.712568,
		-0.822020, -0.448931, -0.350350,
		0.564210, -0.558718, -0.607867,
		32.562386, 23.183661, 30.241358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826878, 22.897089, 30.518507>,  <32.167439, 23.574764, 30.666864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826878, 22.897089, 30.518507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.216499, 22.830563, 30.457108>,  <32.450272, 22.790648, 30.420269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.216499, 22.830563, 30.457108>,  <31.826878, 22.897089, 30.518507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216499, 22.830563, 30.457108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042598, -0.800826, 0.597380,
		-0.222276, -0.575341, -0.787132,
		0.974053, -0.166313, -0.153496,
		32.508717, 22.780668, 30.411058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902761, 22.201700, 30.391504>,  <31.826878, 22.897089, 30.518507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902761, 22.201700, 30.391504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.279835, 22.294662, 30.487286>,  <32.506077, 22.350439, 30.544754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.279835, 22.294662, 30.487286>,  <31.902761, 22.201700, 30.391504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279835, 22.294662, 30.487286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002592, -0.712471, 0.701697,
		0.333682, -0.662098, -0.671031,
		0.942682, 0.232405, 0.239454,
		32.562641, 22.364384, 30.559122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222382, 21.590721, 30.347961>,  <31.902761, 22.201700, 30.391504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222382, 21.590721, 30.347961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.464771, 21.829502, 30.558273>,  <32.610207, 21.972771, 30.684462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.464771, 21.829502, 30.558273>,  <32.222382, 21.590721, 30.347961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464771, 21.829502, 30.558273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143809, -0.732274, 0.665653,
		0.782378, -0.327756, -0.529586,
		0.605974, 0.596951, 0.525781,
		32.646564, 22.008587, 30.716007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734425, 21.196102, 30.532528>,  <32.222382, 21.590721, 30.347961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734425, 21.196102, 30.532528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.728897, 21.493698, 30.799747>,  <32.725582, 21.672256, 30.960079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.728897, 21.493698, 30.799747>,  <32.734425, 21.196102, 30.532528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728897, 21.493698, 30.799747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025001, -0.667646, 0.744059,
		0.999592, 0.026984, -0.009374,
		-0.013819, 0.743989, 0.668048,
		32.724751, 21.716894, 31.000162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045681, 20.913593, 31.088404>,  <32.734425, 21.196102, 30.532528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045681, 20.913593, 31.088404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.886707, 21.242760, 31.250813>,  <32.791325, 21.440260, 31.348259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.886707, 21.242760, 31.250813>,  <33.045681, 20.913593, 31.088404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886707, 21.242760, 31.250813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271520, -0.528117, 0.804593,
		0.876540, 0.209530, 0.433330,
		-0.397435, 0.822915, 0.406024,
		32.767475, 21.489634, 31.372620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378250, 21.098824, 31.719572>,  <33.045681, 20.913593, 31.088404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378250, 21.098824, 31.719572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.008709, 21.251179, 31.734615>,  <32.786983, 21.342592, 31.743641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.008709, 21.251179, 31.734615>,  <33.378250, 21.098824, 31.719572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008709, 21.251179, 31.734615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179360, -0.517645, 0.836584,
		0.338114, 0.766138, 0.546546,
		-0.923856, 0.380889, 0.037608,
		32.731552, 21.365446, 31.745897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221024, 21.331070, 32.321373>,  <33.378250, 21.098824, 31.719572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221024, 21.331070, 32.321373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.874977, 21.232494, 32.146629>,  <32.667351, 21.173349, 32.041782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.874977, 21.232494, 32.146629>,  <33.221024, 21.331070, 32.321373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874977, 21.232494, 32.146629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227663, -0.583153, 0.779809,
		-0.446928, 0.774081, 0.448390,
		-0.865115, -0.246437, -0.436857,
		32.615444, 21.158564, 32.015572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.540203, 32.561672, 20.074268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147133, 32.528698, 20.140656>,  <32.911289, 32.508911, 20.180489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147133, 32.528698, 20.140656>,  <33.540203, 32.561672, 20.074268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147133, 32.528698, 20.140656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179004, -0.654007, 0.735005,
		0.047953, 0.751983, 0.657436,
		-0.982679, -0.082438, 0.165970,
		32.852329, 32.503967, 20.190447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374767, 32.644985, 20.785492>,  <33.540203, 32.561672, 20.074268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374767, 32.644985, 20.785492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068249, 32.437962, 20.633213>,  <32.884338, 32.313747, 20.541845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068249, 32.437962, 20.633213>,  <33.374767, 32.644985, 20.785492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068249, 32.437962, 20.633213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178599, -0.740775, 0.647576,
		-0.617169, 0.428241, 0.660085,
		-0.766293, -0.517555, -0.380699,
		32.838360, 32.282696, 20.519003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977848, 32.488926, 21.339527>,  <33.374767, 32.644985, 20.785492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977848, 32.488926, 21.339527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835579, 32.214748, 21.085388>,  <32.750217, 32.050243, 20.932905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835579, 32.214748, 21.085388>,  <32.977848, 32.488926, 21.339527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835579, 32.214748, 21.085388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113986, -0.706538, 0.698435,
		-0.927632, 0.175997, 0.329430,
		-0.355677, -0.685441, -0.635346,
		32.728874, 32.009117, 20.894785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274147, 32.171223, 21.641783>,  <32.977848, 32.488926, 21.339527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274147, 32.171223, 21.641783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463844, 31.905678, 21.410477>,  <32.577663, 31.746351, 21.271694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463844, 31.905678, 21.410477>,  <32.274147, 32.171223, 21.641783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463844, 31.905678, 21.410477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022294, -0.665667, 0.745916,
		-0.880113, -0.340851, -0.330486,
		0.474240, -0.663858, -0.578264,
		32.606117, 31.706520, 21.236998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945623, 31.638735, 21.930513>,  <32.274147, 32.171223, 21.641783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945623, 31.638735, 21.930513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239014, 31.494514, 21.700031>,  <32.415047, 31.407982, 21.561743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239014, 31.494514, 21.700031>,  <31.945623, 31.638735, 21.930513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239014, 31.494514, 21.700031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206251, -0.689691, 0.694108,
		-0.647664, -0.627957, -0.431511,
		0.733479, -0.360550, -0.576205,
		32.459057, 31.386349, 21.527170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756306, 30.903030, 21.925482>,  <31.945623, 31.638735, 21.930513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756306, 30.903030, 21.925482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143990, 30.888153, 21.828117>,  <32.376598, 30.879227, 21.769699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143990, 30.888153, 21.828117>,  <31.756306, 30.903030, 21.925482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143990, 30.888153, 21.828117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133944, -0.749847, 0.647911,
		-0.206617, -0.660565, -0.721778,
		0.969210, -0.037191, -0.243410,
		32.434753, 30.876995, 21.755095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925501, 30.158581, 21.796188>,  <31.756306, 30.903030, 21.925482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925501, 30.158581, 21.796188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277058, 30.340256, 21.854515>,  <32.487991, 30.449261, 21.889511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277058, 30.340256, 21.854515>,  <31.925501, 30.158581, 21.796188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277058, 30.340256, 21.854515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263736, -0.717374, 0.644839,
		0.397483, -0.528287, -0.750280,
		0.878892, 0.454188, 0.145815,
		32.540726, 30.476513, 21.898260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434357, 29.551897, 21.811535>,  <31.925501, 30.158581, 21.796188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434357, 29.551897, 21.811535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609074, 29.867195, 21.984917>,  <32.713905, 30.056374, 22.088945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609074, 29.867195, 21.984917>,  <32.434357, 29.551897, 21.811535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609074, 29.867195, 21.984917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361686, -0.595075, 0.717683,
		0.823647, -0.156705, -0.545022,
		0.436794, 0.788244, 0.433454,
		32.740112, 30.103668, 22.114952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137375, 29.342432, 21.954052>,  <32.434357, 29.551897, 21.811535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137375, 29.342432, 21.954052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058075, 29.643997, 22.204590>,  <33.010494, 29.824936, 22.354914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058075, 29.643997, 22.204590>,  <33.137375, 29.342432, 21.954052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058075, 29.643997, 22.204590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374598, -0.532239, 0.759209,
		0.905744, 0.385142, -0.176898,
		-0.198252, 0.753914, 0.626346,
		32.998600, 29.870171, 22.392494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822540, 29.410660, 22.303383>,  <33.137375, 29.342432, 21.954052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822540, 29.410660, 22.303383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548836, 29.584381, 22.537704>,  <33.384613, 29.688614, 22.678297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548836, 29.584381, 22.537704>,  <33.822540, 29.410660, 22.303383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548836, 29.584381, 22.537704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380859, -0.472212, 0.794961,
		0.621876, 0.767071, 0.157709,
		-0.684263, 0.434302, 0.585803,
		33.343555, 29.714672, 22.713446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224247, 29.607218, 22.892639>,  <33.822540, 29.410660, 22.303383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224247, 29.607218, 22.892639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850006, 29.567867, 23.028271>,  <33.625462, 29.544258, 23.109650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850006, 29.567867, 23.028271>,  <34.224247, 29.607218, 22.892639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850006, 29.567867, 23.028271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340347, -0.506698, 0.792099,
		0.093887, 0.856493, 0.507548,
		-0.935601, -0.098375, 0.339077,
		33.569324, 29.538355, 23.129993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287186, 29.734800, 23.647182>,  <34.224247, 29.607218, 22.892639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287186, 29.734800, 23.647182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948364, 29.531345, 23.585480>,  <33.745071, 29.409273, 23.548458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948364, 29.531345, 23.585480>,  <34.287186, 29.734800, 23.647182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948364, 29.531345, 23.585480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259297, -0.648790, 0.715428,
		-0.463974, 0.566004, 0.681445,
		-0.847050, -0.508637, -0.154259,
		33.694248, 29.378754, 23.539202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293625, 29.961016, 24.326366>,  <34.287186, 29.734800, 23.647182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293625, 29.961016, 24.326366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630035, 30.117252, 24.476097>,  <34.831882, 30.210995, 24.565935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630035, 30.117252, 24.476097>,  <34.293625, 29.961016, 24.326366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630035, 30.117252, 24.476097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256331, 0.897015, -0.360080,
		-0.476421, 0.206884, 0.854530,
		0.841022, 0.390592, 0.374326,
		34.882343, 30.234430, 24.588394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143642, 30.565744, 24.171068>,  <34.293625, 29.961016, 24.326366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143642, 30.565744, 24.171068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521172, 30.627960, 24.287693>,  <34.747688, 30.665289, 24.357668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521172, 30.627960, 24.287693>,  <34.143642, 30.565744, 24.171068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521172, 30.627960, 24.287693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052278, 0.941471, -0.333016,
		-0.326294, 0.299065, 0.896712,
		0.943822, 0.155540, 0.291562,
		34.804317, 30.674622, 24.375162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266140, 31.113811, 24.621611>,  <34.143642, 30.565744, 24.171068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266140, 31.113811, 24.621611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631824, 31.091385, 24.461071>,  <34.851234, 31.077929, 24.364748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631824, 31.091385, 24.461071>,  <34.266140, 31.113811, 24.621611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631824, 31.091385, 24.461071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110642, 0.918223, -0.380295,
		0.389848, 0.392075, 0.833244,
		0.914208, -0.056066, -0.401348,
		34.906086, 31.074566, 24.340666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497875, 31.751665, 24.854601>,  <34.266140, 31.113811, 24.621611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497875, 31.751665, 24.854601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681908, 31.629982, 24.520947>,  <34.792328, 31.556973, 24.320755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681908, 31.629982, 24.520947>,  <34.497875, 31.751665, 24.854601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681908, 31.629982, 24.520947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182415, 0.951817, -0.246513,
		0.868934, -0.038741, 0.493409,
		0.460085, -0.304209, -0.834134,
		34.819935, 31.538719, 24.270706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085045, 32.151527, 24.884745>,  <34.497875, 31.751665, 24.854601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085045, 32.151527, 24.884745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049908, 32.005360, 24.514069>,  <35.028824, 31.917660, 24.291664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049908, 32.005360, 24.514069>,  <35.085045, 32.151527, 24.884745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049908, 32.005360, 24.514069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158926, 0.913228, -0.375176,
		0.983375, -0.180231, -0.022145,
		-0.087842, -0.365419, -0.926689,
		35.023556, 31.895733, 24.236061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622864, 32.474880, 24.618208>,  <35.085045, 32.151527, 24.884745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622864, 32.474880, 24.618208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405041, 32.364418, 24.301426>,  <35.274349, 32.298141, 24.111357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405041, 32.364418, 24.301426>,  <35.622864, 32.474880, 24.618208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405041, 32.364418, 24.301426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142857, 0.899902, -0.412030,
		0.826469, -0.337510, -0.450594,
		-0.544555, -0.276159, -0.791957,
		35.241673, 32.281570, 24.063839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910656, 32.741680, 23.999872>,  <35.622864, 32.474880, 24.618208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910656, 32.741680, 23.999872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533737, 32.683372, 23.879326>,  <35.307587, 32.648388, 23.806999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533737, 32.683372, 23.879326>,  <35.910656, 32.741680, 23.999872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533737, 32.683372, 23.879326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030537, 0.933892, -0.356250,
		0.333373, -0.326491, -0.884458,
		-0.942300, -0.145773, -0.301365,
		35.251045, 32.639641, 23.788916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978573, 32.796711, 23.296991>,  <35.910656, 32.741680, 23.999872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978573, 32.796711, 23.296991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611935, 32.858025, 23.444698>,  <35.391953, 32.894814, 23.533323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611935, 32.858025, 23.444698>,  <35.978573, 32.796711, 23.296991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611935, 32.858025, 23.444698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040464, 0.883284, -0.467088,
		-0.397766, -0.443073, -0.803411,
		-0.916594, 0.153282, 0.369269,
		35.336956, 32.904011, 23.555479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698803, 33.156502, 22.725195>,  <35.978573, 32.796711, 23.296991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698803, 33.156502, 22.725195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458618, 33.221371, 23.038410>,  <35.314507, 33.260292, 23.226339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458618, 33.221371, 23.038410>,  <35.698803, 33.156502, 22.725195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458618, 33.221371, 23.038410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166058, 0.932587, -0.320479,
		-0.782221, -0.322465, -0.533054,
		-0.600462, 0.162168, 0.783037,
		35.278481, 33.270020, 23.273321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135262, 33.700459, 22.497217>,  <35.698803, 33.156502, 22.725195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135262, 33.700459, 22.497217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100315, 33.718430, 22.895283>,  <35.079346, 33.729214, 23.134121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100315, 33.718430, 22.895283>,  <35.135262, 33.700459, 22.497217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100315, 33.718430, 22.895283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257614, 0.963982, -0.066139,
		-0.962290, -0.262146, -0.072644,
		-0.087365, 0.044931, 0.995162,
		35.074104, 33.731911, 23.193832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537838, 34.111568, 22.673401>,  <35.135262, 33.700459, 22.497217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537838, 34.111568, 22.673401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794785, 34.109718, 22.979954>,  <34.948952, 34.108608, 23.163885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794785, 34.109718, 22.979954>,  <34.537838, 34.111568, 22.673401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794785, 34.109718, 22.979954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002970, 0.999959, 0.008520,
		-0.766391, -0.007749, 0.642328,
		0.642368, -0.004622, 0.766383,
		34.987495, 34.108334, 23.209869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203259, 34.429840, 23.328403>,  <34.537838, 34.111568, 22.673401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203259, 34.429840, 23.328403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600830, 34.471504, 23.342594>,  <34.839375, 34.496502, 23.351109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600830, 34.471504, 23.342594>,  <34.203259, 34.429840, 23.328403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600830, 34.471504, 23.342594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108267, 0.983313, 0.146197,
		-0.019657, -0.149150, 0.988619,
		0.993927, 0.104161, 0.035477,
		34.899010, 34.502754, 23.353237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283134, 35.151447, 23.551346>,  <34.203259, 34.429840, 23.328403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283134, 35.151447, 23.551346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664944, 35.059204, 23.475769>,  <34.894032, 35.003860, 23.430422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664944, 35.059204, 23.475769>,  <34.283134, 35.151447, 23.551346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664944, 35.059204, 23.475769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252384, 0.962403, 0.100409,
		0.158685, -0.143530, 0.976841,
		0.954527, -0.230606, -0.188944,
		34.951302, 34.990021, 23.419086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629292, 35.542931, 23.988676>,  <34.283134, 35.151447, 23.551346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629292, 35.542931, 23.988676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905434, 35.435638, 23.719913>,  <35.071117, 35.371262, 23.558655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905434, 35.435638, 23.719913>,  <34.629292, 35.542931, 23.988676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905434, 35.435638, 23.719913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456412, 0.882068, 0.116808,
		0.561337, -0.387306, 0.731365,
		0.690354, -0.268235, -0.671908,
		35.112541, 35.355167, 23.518341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731380, 36.216801, 24.338871>,  <34.629292, 35.542931, 23.988676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731380, 36.216801, 24.338871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574726, 36.576107, 24.418602>,  <34.480732, 36.791691, 24.466440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574726, 36.576107, 24.418602>,  <34.731380, 36.216801, 24.338871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574726, 36.576107, 24.418602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426987, -0.369319, 0.825400,
		0.815047, 0.238148, 0.528189,
		-0.391638, 0.898270, 0.199327,
		34.457233, 36.845589, 24.478399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839828, 36.425152, 25.072681>,  <34.731380, 36.216801, 24.338871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839828, 36.425152, 25.072681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502747, 36.589565, 24.933601>,  <34.300495, 36.688213, 24.850153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502747, 36.589565, 24.933601>,  <34.839828, 36.425152, 25.072681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502747, 36.589565, 24.933601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490633, -0.320457, 0.810301,
		0.221636, 0.853441, 0.471717,
		-0.842708, 0.411031, -0.347701,
		34.249935, 36.712875, 24.829290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604057, 36.855652, 25.625477>,  <34.839828, 36.425152, 25.072681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604057, 36.855652, 25.625477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283226, 36.780392, 25.398754>,  <34.090729, 36.735237, 25.262720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283226, 36.780392, 25.398754>,  <34.604057, 36.855652, 25.625477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283226, 36.780392, 25.398754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533965, -0.199165, 0.821715,
		-0.267492, 0.961734, 0.059281,
		-0.802078, -0.188148, -0.566807,
		34.042603, 36.723946, 25.228712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982876, 37.242802, 25.928055>,  <34.604057, 36.855652, 25.625477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982876, 37.242802, 25.928055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855400, 36.937382, 25.703403>,  <33.778915, 36.754128, 25.568613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855400, 36.937382, 25.703403>,  <33.982876, 37.242802, 25.928055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855400, 36.937382, 25.703403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467100, -0.389069, 0.794004,
		-0.824776, 0.515375, -0.232665,
		-0.318687, -0.763554, -0.561626,
		33.759792, 36.708317, 25.534916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457474, 37.031620, 26.334000>,  <33.982876, 37.242802, 25.928055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457474, 37.031620, 26.334000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459938, 36.737118, 26.063332>,  <33.461418, 36.560417, 25.900930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459938, 36.737118, 26.063332>,  <33.457474, 37.031620, 26.334000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459938, 36.737118, 26.063332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336717, -0.638698, 0.691872,
		-0.941586, 0.223582, -0.251848,
		0.006165, -0.736259, -0.676672,
		33.461788, 36.516239, 25.860331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775841, 36.640396, 26.423756>,  <33.457474, 37.031620, 26.334000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775841, 36.640396, 26.423756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047970, 36.406132, 26.247498>,  <33.211246, 36.265572, 26.141743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047970, 36.406132, 26.247498>,  <32.775841, 36.640396, 26.423756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047970, 36.406132, 26.247498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205306, -0.729434, 0.652515,
		-0.703568, -0.353457, -0.616491,
		0.680325, -0.585658, -0.440639,
		33.252064, 36.230434, 26.115305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459240, 35.936424, 26.298414>,  <32.775841, 36.640396, 26.423756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459240, 35.936424, 26.298414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855370, 35.884541, 26.278690>,  <33.093048, 35.853409, 26.266855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855370, 35.884541, 26.278690>,  <32.459240, 35.936424, 26.298414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855370, 35.884541, 26.278690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082377, -0.835472, 0.543323,
		-0.111672, -0.534005, -0.838074,
		0.990325, -0.129712, -0.049309,
		33.152466, 35.845627, 26.263897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549961, 35.203941, 26.255600>,  <32.459240, 35.936424, 26.298414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549961, 35.203941, 26.255600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873070, 35.390163, 26.400242>,  <33.066936, 35.501896, 26.487026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873070, 35.390163, 26.400242>,  <32.549961, 35.203941, 26.255600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873070, 35.390163, 26.400242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156870, -0.761060, 0.629428,
		0.568238, -0.451710, -0.687796,
		0.807773, 0.465559, 0.361604,
		33.115402, 35.529831, 26.508722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119110, 34.660839, 26.340166>,  <32.549961, 35.203941, 26.255600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119110, 34.660839, 26.340166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280407, 34.949169, 26.565666>,  <33.377186, 35.122166, 26.700966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280407, 34.949169, 26.565666>,  <33.119110, 34.660839, 26.340166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280407, 34.949169, 26.565666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088360, -0.643849, 0.760034,
		0.910819, -0.256662, -0.323317,
		0.403239, 0.720822, 0.563751,
		33.401379, 35.165417, 26.734791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585045, 34.274666, 26.801285>,  <33.119110, 34.660839, 26.340166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585045, 34.274666, 26.801285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511032, 34.633121, 26.962631>,  <33.466625, 34.848194, 27.059439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511032, 34.633121, 26.962631>,  <33.585045, 34.274666, 26.801285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511032, 34.633121, 26.962631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028398, -0.405406, 0.913696,
		0.982323, 0.180514, 0.049563,
		-0.185028, 0.896137, 0.403366,
		33.455524, 34.901962, 27.083641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089821, 34.364746, 27.218601>,  <33.585045, 34.274666, 26.801285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089821, 34.364746, 27.218601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797089, 34.603268, 27.350571>,  <33.621449, 34.746380, 27.429752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797089, 34.603268, 27.350571>,  <34.089821, 34.364746, 27.218601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797089, 34.603268, 27.350571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140924, -0.341239, 0.929353,
		0.666757, 0.726622, 0.165696,
		-0.731830, 0.596302, 0.329922,
		33.577541, 34.782158, 27.449547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276867, 34.754852, 27.772697>,  <34.089821, 34.364746, 27.218601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276867, 34.754852, 27.772697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880661, 34.775455, 27.823643>,  <33.642937, 34.787819, 27.854210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880661, 34.775455, 27.823643>,  <34.276867, 34.754852, 27.772697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880661, 34.775455, 27.823643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087964, -0.474353, 0.875929,
		0.105531, 0.878827, 0.465324,
		-0.990518, 0.051506, 0.127364,
		33.583508, 34.790909, 27.861853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257565, 34.824169, 28.438889>,  <34.276867, 34.754852, 27.772697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257565, 34.824169, 28.438889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871445, 34.757076, 28.358818>,  <33.639774, 34.716820, 28.310776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871445, 34.757076, 28.358818>,  <34.257565, 34.824169, 28.438889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871445, 34.757076, 28.358818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068666, -0.576505, 0.814203,
		-0.251970, 0.799692, 0.544980,
		-0.965296, -0.167733, -0.200174,
		33.581856, 34.706757, 28.298765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754074, 35.015526, 29.056850>,  <34.257565, 34.824169, 28.438889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754074, 35.015526, 29.056850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583031, 34.740967, 28.821564>,  <33.480404, 34.576229, 28.680391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583031, 34.740967, 28.821564>,  <33.754074, 35.015526, 29.056850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583031, 34.740967, 28.821564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158016, -0.583934, 0.796273,
		-0.890045, 0.433443, 0.141234,
		-0.427611, -0.686402, -0.588219,
		33.454746, 34.535046, 28.645098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063549, 34.813126, 29.344593>,  <33.754074, 35.015526, 29.056850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063549, 34.813126, 29.344593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156540, 34.497822, 29.116699>,  <33.212334, 34.308640, 28.979963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156540, 34.497822, 29.116699>,  <33.063549, 34.813126, 29.344593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156540, 34.497822, 29.116699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105392, -0.602751, 0.790939,
		-0.966874, -0.123830, -0.223203,
		0.232478, -0.788262, -0.569734,
		33.226284, 34.261345, 28.945780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490364, 34.293373, 29.379236>,  <33.063549, 34.813126, 29.344593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490364, 34.293373, 29.379236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798180, 34.074837, 29.246979>,  <32.982868, 33.943714, 29.167624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798180, 34.074837, 29.246979>,  <32.490364, 34.293373, 29.379236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798180, 34.074837, 29.246979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204328, -0.701191, 0.683067,
		-0.605032, -0.458085, -0.651225,
		0.769537, -0.546341, -0.330643,
		33.029041, 33.910934, 29.147785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185970, 33.599812, 29.204220>,  <32.490364, 34.293373, 29.379236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185970, 33.599812, 29.204220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578003, 33.555004, 29.269817>,  <32.813221, 33.528122, 29.309175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578003, 33.555004, 29.269817>,  <32.185970, 33.599812, 29.204220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578003, 33.555004, 29.269817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169504, -0.902105, 0.396832,
		0.103490, -0.416725, -0.903122,
		0.980081, -0.112015, 0.163995,
		32.872028, 33.521400, 29.319016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301590, 32.912823, 28.897179>,  <32.185970, 33.599812, 29.204220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301590, 32.912823, 28.897179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577591, 33.029285, 29.162243>,  <32.743191, 33.099163, 29.321281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577591, 33.029285, 29.162243>,  <32.301590, 32.912823, 28.897179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577591, 33.029285, 29.162243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197365, -0.805146, 0.559273,
		0.696375, -0.516688, -0.498092,
		0.690007, 0.291158, 0.662660,
		32.784592, 33.116634, 29.361040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600754, 32.331188, 29.002264>,  <32.301590, 32.912823, 28.897179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600754, 32.331188, 29.002264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718407, 32.561211, 29.307629>,  <32.788998, 32.699223, 29.490849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718407, 32.561211, 29.307629>,  <32.600754, 32.331188, 29.002264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718407, 32.561211, 29.307629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090030, -0.778524, 0.621124,
		0.951515, -0.251423, -0.177217,
		0.294133, 0.575054, 0.763413,
		32.806648, 32.733727, 29.536652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144196, 31.916550, 29.413530>,  <32.600754, 32.331188, 29.002264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144196, 31.916550, 29.413530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006348, 32.199409, 29.660488>,  <32.923641, 32.369125, 29.808662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006348, 32.199409, 29.660488>,  <33.144196, 31.916550, 29.413530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006348, 32.199409, 29.660488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232063, -0.701443, 0.673887,
		0.909608, 0.088958, 0.405832,
		-0.344616, 0.707152, 0.617395,
		32.902962, 32.411556, 29.845707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464115, 31.670889, 30.089418>,  <33.144196, 31.916550, 29.413530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464115, 31.670889, 30.089418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156902, 31.912586, 30.174282>,  <32.972572, 32.057606, 30.225201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156902, 31.912586, 30.174282>,  <33.464115, 31.670889, 30.089418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156902, 31.912586, 30.174282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315109, -0.644979, 0.696210,
		0.557518, 0.467861, 0.685770,
		-0.768037, 0.604241, 0.212160,
		32.926491, 32.093857, 30.237930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481606, 31.636911, 30.796013>,  <33.464115, 31.670889, 30.089418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481606, 31.636911, 30.796013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116577, 31.764484, 30.693645>,  <32.897560, 31.841028, 30.632225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116577, 31.764484, 30.693645>,  <33.481606, 31.636911, 30.796013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116577, 31.764484, 30.693645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394987, -0.525548, 0.753514,
		0.105822, 0.788721, 0.605575,
		-0.912571, 0.318933, -0.255920,
		32.842804, 31.860165, 30.616869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247028, 31.861094, 31.427025>,  <33.481606, 31.636911, 30.796013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247028, 31.861094, 31.427025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922813, 31.812981, 31.197742>,  <32.728287, 31.784113, 31.060173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922813, 31.812981, 31.197742>,  <33.247028, 31.861094, 31.427025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922813, 31.812981, 31.197742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482607, -0.417360, 0.770001,
		-0.331851, 0.900746, 0.280235,
		-0.810534, -0.120283, -0.573207,
		32.679653, 31.776896, 31.025780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715176, 32.130302, 31.816454>,  <33.247028, 31.861094, 31.427025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715176, 32.130302, 31.816454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549236, 31.885887, 31.546776>,  <32.449673, 31.739239, 31.384970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549236, 31.885887, 31.546776>,  <32.715176, 32.130302, 31.816454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549236, 31.885887, 31.546776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429632, -0.521616, 0.737112,
		-0.802071, 0.595444, -0.046129,
		-0.414847, -0.611034, -0.674195,
		32.424782, 31.702578, 31.344517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967062, 32.049213, 32.121216>,  <32.715176, 32.130302, 31.816454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967062, 32.049213, 32.121216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027668, 31.756725, 31.855175>,  <32.064034, 31.581234, 31.695549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027668, 31.756725, 31.855175>,  <31.967062, 32.049213, 32.121216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027668, 31.756725, 31.855175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583938, -0.609123, 0.536642,
		-0.797533, 0.307071, -0.519277,
		0.151517, -0.731216, -0.665106,
		32.073124, 31.537361, 31.655643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272293, 31.695654, 31.987366>,  <31.967062, 32.049213, 32.121216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272293, 31.695654, 31.987366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574604, 31.456600, 31.880310>,  <31.755991, 31.313168, 31.816076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574604, 31.456600, 31.880310>,  <31.272293, 31.695654, 31.987366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574604, 31.456600, 31.880310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484141, -0.785178, 0.386138,
		-0.440914, -0.162260, -0.882761,
		0.755779, -0.597634, -0.267639,
		31.801338, 31.277309, 31.800018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919386, 31.169832, 31.708254>,  <31.272293, 31.695654, 31.987366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919386, 31.169832, 31.708254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264839, 30.996098, 31.810619>,  <31.472111, 30.891857, 31.872038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264839, 30.996098, 31.810619>,  <30.919386, 31.169832, 31.708254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264839, 30.996098, 31.810619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503649, -0.765354, 0.400714,
		0.021821, -0.474961, -0.879737,
		0.863633, -0.434334, 0.255914,
		31.523930, 30.865797, 31.887394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736315, 30.448788, 31.683813>,  <30.919386, 31.169832, 31.708254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736315, 30.448788, 31.683813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089378, 30.427509, 31.870613>,  <31.301216, 30.414743, 31.982693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089378, 30.427509, 31.870613>,  <30.736315, 30.448788, 31.683813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089378, 30.427509, 31.870613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286539, -0.848490, 0.444927,
		0.372575, -0.526531, -0.764168,
		0.882657, -0.053195, 0.466998,
		31.354176, 30.411551, 32.010712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699129, 30.071589, 31.046480>,  <30.736315, 30.448788, 31.683813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699129, 30.071589, 31.046480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340813, 29.942638, 30.924084>,  <30.125822, 29.865269, 30.850647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340813, 29.942638, 30.924084>,  <30.699129, 30.071589, 31.046480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340813, 29.942638, 30.924084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138778, 0.451154, -0.881590,
		0.422247, -0.832188, -0.359403,
		-0.895794, -0.322372, -0.305988,
		30.072075, 29.845926, 30.832287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694199, 30.047991, 30.315321>,  <30.699129, 30.071589, 31.046480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694199, 30.047991, 30.315321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299871, 30.086796, 30.370102>,  <30.063276, 30.110079, 30.402969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299871, 30.086796, 30.370102>,  <30.694199, 30.047991, 30.315321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299871, 30.086796, 30.370102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041046, 0.651868, -0.757221,
		-0.162732, -0.752102, -0.638640,
		-0.985816, 0.097011, 0.136951,
		30.004128, 30.115898, 30.411188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379612, 29.926128, 29.723978>,  <30.694199, 30.047991, 30.315321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379612, 29.926128, 29.723978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111147, 30.153755, 29.914009>,  <29.950068, 30.290331, 30.028028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111147, 30.153755, 29.914009>,  <30.379612, 29.926128, 29.723978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111147, 30.153755, 29.914009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212514, 0.466265, -0.858740,
		-0.710195, -0.677316, -0.192005,
		-0.671164, 0.569069, 0.475078,
		29.909798, 30.324476, 30.056532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958786, 30.035032, 29.208166>,  <30.379612, 29.926128, 29.723978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958786, 30.035032, 29.208166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848015, 30.310989, 29.475704>,  <29.781551, 30.476564, 29.636227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848015, 30.310989, 29.475704>,  <29.958786, 30.035032, 29.208166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848015, 30.310989, 29.475704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126314, 0.663891, -0.737084,
		-0.952552, -0.288605, -0.096708,
		-0.276930, 0.689895, 0.668846,
		29.764936, 30.517958, 29.676357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250393, 30.334377, 29.069355>,  <29.958786, 30.035032, 29.208166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250393, 30.334377, 29.069355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452469, 30.600796, 29.288868>,  <29.573713, 30.760647, 29.420576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452469, 30.600796, 29.288868>,  <29.250393, 30.334377, 29.069355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452469, 30.600796, 29.288868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290663, 0.730061, -0.618487,
		-0.812589, 0.152941, 0.562413,
		0.505188, 0.666049, 0.548785,
		29.604025, 30.800610, 29.453503>
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
