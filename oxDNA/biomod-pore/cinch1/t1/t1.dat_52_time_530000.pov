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
	<42.806690, 32.481930, 22.699028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868031, 32.846710, 22.546806>,  <42.904835, 33.065578, 22.455473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868031, 32.846710, 22.546806>,  <42.806690, 32.481930, 22.699028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868031, 32.846710, 22.546806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915314, -0.276221, -0.293089,
		-0.372401, -0.303381, -0.877084,
		0.153352, 0.911955, -0.380554,
		42.914036, 33.120296, 22.432640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857914, 32.044666, 23.342577>,  <42.806690, 32.481930, 22.699028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857914, 32.044666, 23.342577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726582, 31.834484, 23.656544>,  <42.647781, 31.708376, 23.844925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726582, 31.834484, 23.656544>,  <42.857914, 32.044666, 23.342577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726582, 31.834484, 23.656544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807201, 0.587639, 0.055737,
		-0.490536, -0.615287, -0.617087,
		-0.328331, -0.525454, 0.784918,
		42.628082, 31.676847, 23.892019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261337, 31.823984, 23.227150>,  <42.857914, 32.044666, 23.342577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261337, 31.823984, 23.227150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287918, 31.882553, 23.621944>,  <42.303867, 31.917694, 23.858822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287918, 31.882553, 23.621944>,  <42.261337, 31.823984, 23.227150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287918, 31.882553, 23.621944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776332, 0.628987, -0.041041,
		-0.626812, -0.763502, 0.155472,
		0.066455, 0.146423, 0.986987,
		42.307854, 31.926479, 23.918041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594780, 31.810944, 23.546021>,  <42.261337, 31.823984, 23.227150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594780, 31.810944, 23.546021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847221, 32.020638, 23.774715>,  <41.998688, 32.146454, 23.911932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847221, 32.020638, 23.774715>,  <41.594780, 31.810944, 23.546021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847221, 32.020638, 23.774715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642090, 0.766607, 0.005854,
		-0.435230, -0.370802, 0.820415,
		0.631106, 0.524232, 0.571738,
		42.036552, 32.177906, 23.946238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804283, 31.789583, 23.678770>,  <41.594780, 31.810944, 23.546021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804283, 31.789583, 23.678770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701973, 31.429653, 23.820133>,  <40.640587, 31.213696, 23.904951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701973, 31.429653, 23.820133>,  <40.804283, 31.789583, 23.678770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701973, 31.429653, 23.820133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935641, -0.322385, -0.143679,
		0.243219, 0.293913, 0.924370,
		-0.255774, -0.899824, 0.353407,
		40.625240, 31.159706, 23.926155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586033, 32.073612, 24.340691>,  <40.804283, 31.789583, 23.678770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586033, 32.073612, 24.340691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214664, 32.061687, 24.488819>,  <39.991844, 32.054531, 24.577696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214664, 32.061687, 24.488819>,  <40.586033, 32.073612, 24.340691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214664, 32.061687, 24.488819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350973, 0.256520, 0.900564,
		-0.121844, 0.966079, -0.227696,
		-0.928425, -0.029813, 0.370323,
		39.936138, 32.052742, 24.599916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504875, 32.683926, 24.831726>,  <40.586033, 32.073612, 24.340691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504875, 32.683926, 24.831726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210346, 32.440319, 24.949661>,  <40.033630, 32.294155, 25.020422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210346, 32.440319, 24.949661>,  <40.504875, 32.683926, 24.831726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210346, 32.440319, 24.949661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235279, 0.178102, 0.955470,
		-0.634412, 0.772900, 0.012150,
		-0.736319, -0.609020, 0.294837,
		39.989452, 32.257614, 25.038113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259926, 33.012871, 25.354235>,  <40.504875, 32.683926, 24.831726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259926, 33.012871, 25.354235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130970, 32.636547, 25.396084>,  <40.053596, 32.410751, 25.421192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130970, 32.636547, 25.396084>,  <40.259926, 33.012871, 25.354235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130970, 32.636547, 25.396084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217207, 0.034052, 0.975532,
		-0.921351, 0.337225, 0.193372,
		-0.322389, -0.940808, 0.104621,
		40.034252, 32.354305, 25.427469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827229, 33.063484, 25.935383>,  <40.259926, 33.012871, 25.354235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827229, 33.063484, 25.935383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944992, 32.681343, 25.925449>,  <40.015652, 32.452057, 25.919489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944992, 32.681343, 25.925449>,  <39.827229, 33.063484, 25.935383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944992, 32.681343, 25.925449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177237, 0.029046, 0.983739,
		-0.939100, -0.294027, 0.177876,
		0.294412, -0.955356, -0.024835,
		40.033318, 32.394737, 25.917999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541695, 32.801403, 26.456841>,  <39.827229, 33.063484, 25.935383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541695, 32.801403, 26.456841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849594, 32.557499, 26.381283>,  <40.034332, 32.411156, 26.335947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849594, 32.557499, 26.381283>,  <39.541695, 32.801403, 26.456841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849594, 32.557499, 26.381283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260322, 0.029660, 0.965066,
		-0.582860, -0.792028, 0.181565,
		0.769745, -0.609764, -0.188895,
		40.080517, 32.374569, 26.324614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516880, 32.352291, 27.056219>,  <39.541695, 32.801403, 26.456841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516880, 32.352291, 27.056219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881767, 32.276997, 26.910656>,  <40.100700, 32.231819, 26.823318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881767, 32.276997, 26.910656>,  <39.516880, 32.352291, 27.056219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881767, 32.276997, 26.910656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343369, -0.133309, 0.929691,
		-0.223518, -0.973033, -0.056971,
		0.912215, -0.188241, -0.363907,
		40.155434, 32.220524, 26.801483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766941, 31.715824, 27.279606>,  <39.516880, 32.352291, 27.056219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766941, 31.715824, 27.279606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094646, 31.924168, 27.183681>,  <40.291271, 32.049175, 27.126127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094646, 31.924168, 27.183681>,  <39.766941, 31.715824, 27.279606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094646, 31.924168, 27.183681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353683, -0.129824, 0.926312,
		0.451344, -0.843713, -0.290579,
		0.819266, 0.520859, -0.239812,
		40.340427, 32.080425, 27.111738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344944, 31.293718, 27.496548>,  <39.766941, 31.715824, 27.279606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344944, 31.293718, 27.496548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486755, 31.667633, 27.487770>,  <40.571842, 31.891983, 27.482504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486755, 31.667633, 27.487770>,  <40.344944, 31.293718, 27.496548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486755, 31.667633, 27.487770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434882, -0.144067, 0.888888,
		0.827762, -0.324676, -0.457598,
		0.354525, 0.934789, -0.021942,
		40.593113, 31.948071, 27.481188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021393, 31.245890, 27.761889>,  <40.344944, 31.293718, 27.496548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021393, 31.245890, 27.761889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959454, 31.640247, 27.787308>,  <40.922291, 31.876862, 27.802559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959454, 31.640247, 27.787308>,  <41.021393, 31.245890, 27.761889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959454, 31.640247, 27.787308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337320, -0.007697, 0.941359,
		0.928567, 0.167204, -0.331369,
		-0.154849, 0.985892, 0.063548,
		40.912998, 31.936014, 27.806372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611942, 31.492598, 28.135672>,  <41.021393, 31.245890, 27.761889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611942, 31.492598, 28.135672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320988, 31.765663, 28.163597>,  <41.146416, 31.929502, 28.180351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320988, 31.765663, 28.163597>,  <41.611942, 31.492598, 28.135672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320988, 31.765663, 28.163597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167507, 0.077978, 0.982782,
		0.665466, 0.726560, -0.171072,
		-0.727390, 0.682664, 0.069812,
		41.102772, 31.970463, 28.184540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880299, 31.955696, 28.726196>,  <41.611942, 31.492598, 28.135672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880299, 31.955696, 28.726196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492146, 32.046410, 28.692924>,  <41.259254, 32.100838, 28.672962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492146, 32.046410, 28.692924>,  <41.880299, 31.955696, 28.726196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492146, 32.046410, 28.692924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024079, 0.251815, 0.967476,
		0.240354, 0.940828, -0.238897,
		-0.970387, 0.226784, -0.083179,
		41.201031, 32.114445, 28.667971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761555, 32.600204, 28.871944>,  <41.880299, 31.955696, 28.726196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761555, 32.600204, 28.871944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401192, 32.437271, 28.931862>,  <41.184975, 32.339512, 28.967812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401192, 32.437271, 28.931862>,  <41.761555, 32.600204, 28.871944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401192, 32.437271, 28.931862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014735, 0.316236, 0.948566,
		-0.433755, 0.856780, -0.278898,
		-0.900910, -0.407336, 0.149793,
		41.130920, 32.315071, 28.976799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440678, 33.080116, 29.254347>,  <41.761555, 32.600204, 28.871944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440678, 33.080116, 29.254347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203857, 32.762020, 29.306610>,  <41.061768, 32.571163, 29.337967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203857, 32.762020, 29.306610>,  <41.440678, 33.080116, 29.254347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203857, 32.762020, 29.306610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177848, 0.287053, 0.941260,
		-0.786036, 0.534032, -0.311381,
		-0.592046, -0.795242, 0.130657,
		41.026245, 32.523449, 29.345808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891613, 33.306938, 29.599529>,  <41.440678, 33.080116, 29.254347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891613, 33.306938, 29.599529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847038, 32.913570, 29.656746>,  <40.820293, 32.677547, 29.691076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847038, 32.913570, 29.656746>,  <40.891613, 33.306938, 29.599529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847038, 32.913570, 29.656746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346662, 0.173364, 0.921830,
		-0.931347, 0.053139, -0.360235,
		-0.111437, -0.983424, 0.143041,
		40.813606, 32.618542, 29.699657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293167, 33.266460, 30.009583>,  <40.891613, 33.306938, 29.599529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293167, 33.266460, 30.009583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494793, 32.926998, 30.073700>,  <40.615768, 32.723320, 30.112169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494793, 32.926998, 30.073700>,  <40.293167, 33.266460, 30.009583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494793, 32.926998, 30.073700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361154, -0.038532, 0.931710,
		-0.784528, -0.527535, -0.325919,
		0.504068, -0.848659, 0.160292,
		40.646015, 32.672401, 30.121788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855927, 32.766235, 30.251129>,  <40.293167, 33.266460, 30.009583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855927, 32.766235, 30.251129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204308, 32.600140, 30.356213>,  <40.413338, 32.500481, 30.419262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204308, 32.600140, 30.356213>,  <39.855927, 32.766235, 30.251129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204308, 32.600140, 30.356213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326207, -0.088792, 0.941119,
		-0.367468, -0.905367, -0.212789,
		0.870952, -0.415244, 0.262708,
		40.465591, 32.475567, 30.435024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654617, 32.256668, 30.707550>,  <39.855927, 32.766235, 30.251129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654617, 32.256668, 30.707550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034550, 32.327751, 30.810501>,  <40.262508, 32.370403, 30.872272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034550, 32.327751, 30.810501>,  <39.654617, 32.256668, 30.707550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034550, 32.327751, 30.810501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274951, 0.082175, 0.957940,
		0.149092, -0.980645, 0.126916,
		0.949828, 0.177717, 0.257378,
		40.319500, 32.381065, 30.887714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741493, 31.887627, 31.258272>,  <39.654617, 32.256668, 30.707550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741493, 31.887627, 31.258272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062393, 32.123260, 31.297012>,  <40.254932, 32.264641, 31.320255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062393, 32.123260, 31.297012>,  <39.741493, 31.887627, 31.258272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062393, 32.123260, 31.297012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297003, 0.253103, 0.920721,
		0.517872, -0.767409, 0.378012,
		0.802245, 0.589086, 0.096848,
		40.303066, 32.299988, 31.326067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160046, 31.625706, 31.931175>,  <39.741493, 31.887627, 31.258272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160046, 31.625706, 31.931175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289982, 31.999249, 31.871326>,  <40.367943, 32.223373, 31.835417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289982, 31.999249, 31.871326>,  <40.160046, 31.625706, 31.931175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289982, 31.999249, 31.871326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221542, 0.228933, 0.947897,
		0.919455, -0.274768, 0.281255,
		0.324840, 0.933859, -0.149621,
		40.387432, 32.279408, 31.826441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637547, 31.830574, 32.485317>,  <40.160046, 31.625706, 31.931175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637547, 31.830574, 32.485317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508850, 32.167496, 32.312344>,  <40.431633, 32.369648, 32.208557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508850, 32.167496, 32.312344>,  <40.637547, 31.830574, 32.485317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508850, 32.167496, 32.312344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176871, 0.395215, 0.901400,
		0.930160, 0.366505, 0.021822,
		-0.321743, 0.842306, -0.432437,
		40.412327, 32.420189, 32.182613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990082, 32.356613, 32.825279>,  <40.637547, 31.830574, 32.485317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990082, 32.356613, 32.825279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684864, 32.539955, 32.642994>,  <40.501732, 32.649960, 32.533623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684864, 32.539955, 32.642994>,  <40.990082, 32.356613, 32.825279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684864, 32.539955, 32.642994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174183, 0.533156, 0.827892,
		0.622431, 0.711098, -0.326986,
		-0.763046, 0.458350, -0.455714,
		40.455952, 32.677460, 32.506279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060753, 33.167938, 32.914749>,  <40.990082, 32.356613, 32.825279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060753, 33.167938, 32.914749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708103, 32.980141, 32.895489>,  <40.496513, 32.867462, 32.883934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708103, 32.980141, 32.895489>,  <41.060753, 33.167938, 32.914749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708103, 32.980141, 32.895489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285515, 0.449327, 0.846514,
		-0.375802, 0.760051, -0.530184,
		-0.881620, -0.469497, -0.048148,
		40.443619, 32.839291, 32.881042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521484, 33.664116, 32.926987>,  <41.060753, 33.167938, 32.914749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521484, 33.664116, 32.926987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368378, 33.336876, 33.098656>,  <40.276512, 33.140530, 33.201656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368378, 33.336876, 33.098656>,  <40.521484, 33.664116, 32.926987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368378, 33.336876, 33.098656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266997, 0.542693, 0.796365,
		-0.884420, 0.190237, -0.426158,
		-0.382771, -0.818104, 0.429176,
		40.253548, 33.091446, 33.227409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734509, 33.613205, 32.960670>,  <40.521484, 33.664116, 32.926987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734509, 33.613205, 32.960670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866051, 33.444714, 33.298767>,  <39.944977, 33.343620, 33.501625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866051, 33.444714, 33.298767>,  <39.734509, 33.613205, 32.960670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866051, 33.444714, 33.298767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464125, 0.707385, 0.533099,
		-0.822463, -0.567606, 0.037123,
		0.328851, -0.421225, 0.845238,
		39.964706, 33.318348, 33.552338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029648, 33.679649, 33.420864>,  <39.734509, 33.613205, 32.960670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029648, 33.679649, 33.420864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372711, 33.620918, 33.617989>,  <39.578548, 33.585682, 33.736263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372711, 33.620918, 33.617989>,  <39.029648, 33.679649, 33.420864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372711, 33.620918, 33.617989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242231, 0.730019, 0.639059,
		-0.453593, -0.667469, 0.590541,
		0.857659, -0.146825, 0.492813,
		39.630009, 33.576870, 33.765831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731861, 33.260151, 33.938587>,  <39.029648, 33.679649, 33.420864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731861, 33.260151, 33.938587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356842, 33.191521, 33.817551>,  <38.131828, 33.150345, 33.744930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356842, 33.191521, 33.817551>,  <38.731861, 33.260151, 33.938587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356842, 33.191521, 33.817551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345815, -0.365815, -0.864055,
		0.037558, -0.914736, 0.402303,
		-0.937551, -0.171574, -0.302590,
		38.075577, 33.140049, 33.726772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788834, 32.689835, 34.439850>,  <38.731861, 33.260151, 33.938587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788834, 32.689835, 34.439850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401203, 32.593269, 34.419403>,  <38.168625, 32.535328, 34.407135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401203, 32.593269, 34.419403>,  <38.788834, 32.689835, 34.439850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401203, 32.593269, 34.419403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027932, 0.098501, -0.994745,
		0.245183, -0.965409, -0.088712,
		-0.969074, -0.241417, -0.051117,
		38.110481, 32.520844, 34.404068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635773, 32.185032, 33.918655>,  <38.788834, 32.689835, 34.439850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635773, 32.185032, 33.918655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301647, 32.397015, 33.977165>,  <38.101170, 32.524204, 34.012272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301647, 32.397015, 33.977165>,  <38.635773, 32.185032, 33.918655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301647, 32.397015, 33.977165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187317, -0.024212, -0.982001,
		-0.516873, -0.847681, 0.119494,
		-0.835317, 0.529953, 0.146271,
		38.051052, 32.556000, 34.021046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224461, 31.827215, 33.468800>,  <38.635773, 32.185032, 33.918655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224461, 31.827215, 33.468800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121418, 32.208660, 33.531113>,  <38.059593, 32.437527, 33.568501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121418, 32.208660, 33.531113>,  <38.224461, 31.827215, 33.468800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121418, 32.208660, 33.531113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138761, 0.123044, -0.982652,
		-0.956235, -0.274750, 0.100628,
		-0.257602, 0.953610, 0.155784,
		38.044136, 32.494743, 33.577847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543808, 31.913607, 33.091511>,  <38.224461, 31.827215, 33.468800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543808, 31.913607, 33.091511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730713, 32.262234, 33.150890>,  <37.842857, 32.471409, 33.186520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730713, 32.262234, 33.150890>,  <37.543808, 31.913607, 33.091511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730713, 32.262234, 33.150890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320230, 0.323349, -0.890448,
		-0.824086, 0.368535, 0.430191,
		0.467263, 0.871566, 0.148451,
		37.870892, 32.523705, 33.195427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265720, 32.436672, 32.571899>,  <37.543808, 31.913607, 33.091511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265720, 32.436672, 32.571899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607880, 32.606865, 32.690056>,  <37.813175, 32.708981, 32.760948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607880, 32.606865, 32.690056>,  <37.265720, 32.436672, 32.571899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607880, 32.606865, 32.690056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030477, 0.527956, -0.848724,
		-0.517072, 0.735001, 0.438646,
		0.855399, 0.425482, 0.295392,
		37.864498, 32.734509, 32.778675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284531, 33.189396, 32.431114>,  <37.265720, 32.436672, 32.571899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284531, 33.189396, 32.431114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673630, 33.096863, 32.437492>,  <37.907089, 33.041344, 32.441319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673630, 33.096863, 32.437492>,  <37.284531, 33.189396, 32.431114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673630, 33.096863, 32.437492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103510, 0.371669, -0.922577,
		0.207501, 0.899080, 0.385484,
		0.972743, -0.231337, 0.015942,
		37.965454, 33.027462, 32.442276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612476, 33.818562, 32.343227>,  <37.284531, 33.189396, 32.431114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612476, 33.818562, 32.343227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881153, 33.545403, 32.228352>,  <38.042358, 33.381508, 32.159424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881153, 33.545403, 32.228352>,  <37.612476, 33.818562, 32.343227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881153, 33.545403, 32.228352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189553, 0.533182, -0.824492,
		0.716169, 0.499367, 0.487580,
		0.671693, -0.682898, -0.287192,
		38.082661, 33.340534, 32.142193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040539, 34.186993, 31.974293>,  <37.612476, 33.818562, 32.343227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040539, 34.186993, 31.974293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114090, 33.808350, 31.868366>,  <38.158222, 33.581165, 31.804811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114090, 33.808350, 31.868366>,  <38.040539, 34.186993, 31.974293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114090, 33.808350, 31.868366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177760, 0.296990, -0.938189,
		0.966742, 0.125441, 0.222879,
		0.183880, -0.946605, -0.264814,
		38.169254, 33.524368, 31.788921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529900, 34.236191, 31.476351>,  <38.040539, 34.186993, 31.974293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529900, 34.236191, 31.476351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382854, 33.870197, 31.409809>,  <38.294628, 33.650600, 31.369884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382854, 33.870197, 31.409809>,  <38.529900, 34.236191, 31.476351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382854, 33.870197, 31.409809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047602, 0.197157, -0.979216,
		0.928761, -0.352051, -0.116032,
		-0.367611, -0.914980, -0.166353,
		38.272572, 33.595703, 31.359903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929478, 33.932590, 30.869289>,  <38.529900, 34.236191, 31.476351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929478, 33.932590, 30.869289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583595, 33.731937, 30.879551>,  <38.376068, 33.611546, 30.885708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583595, 33.731937, 30.879551>,  <38.929478, 33.932590, 30.869289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583595, 33.731937, 30.879551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070466, 0.070585, -0.995014,
		0.497317, -0.862198, -0.096383,
		-0.864702, -0.501629, 0.025653,
		38.324184, 33.581448, 30.887247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001823, 33.418915, 30.299719>,  <38.929478, 33.932590, 30.869289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001823, 33.418915, 30.299719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612259, 33.425110, 30.390278>,  <38.378521, 33.428825, 30.444613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612259, 33.425110, 30.390278>,  <39.001823, 33.418915, 30.299719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612259, 33.425110, 30.390278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226729, -0.108008, -0.967950,
		0.009464, -0.994029, 0.108702,
		-0.973912, 0.015485, 0.226398,
		38.320084, 33.429756, 30.458197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694115, 32.742195, 29.953846>,  <39.001823, 33.418915, 30.299719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694115, 32.742195, 29.953846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410889, 33.014496, 30.028927>,  <38.240955, 33.177876, 30.073977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410889, 33.014496, 30.028927>,  <38.694115, 32.742195, 29.953846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410889, 33.014496, 30.028927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418808, -0.190818, -0.887800,
		-0.568551, -0.707227, 0.420214,
		-0.708060, 0.680749, 0.187703,
		38.198471, 33.218719, 30.085238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067966, 32.428768, 29.781322>,  <38.694115, 32.742195, 29.953846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067966, 32.428768, 29.781322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973522, 32.817303, 29.792255>,  <37.916855, 33.050423, 29.798815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973522, 32.817303, 29.792255>,  <38.067966, 32.428768, 29.781322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973522, 32.817303, 29.792255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462980, -0.087724, -0.882017,
		-0.854342, -0.220910, 0.470424,
		-0.236113, 0.971341, 0.027331,
		37.902687, 33.108704, 29.800455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334785, 32.466221, 29.490974>,  <38.067966, 32.428768, 29.781322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334785, 32.466221, 29.490974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506546, 32.827351, 29.481846>,  <37.609604, 33.044029, 29.476368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506546, 32.827351, 29.481846>,  <37.334785, 32.466221, 29.490974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506546, 32.827351, 29.481846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192850, 0.066975, -0.978940,
		-0.882283, 0.424760, 0.202869,
		0.429401, 0.902825, -0.022824,
		37.635368, 33.098198, 29.474998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887444, 32.882195, 29.178627>,  <37.334785, 32.466221, 29.490974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887444, 32.882195, 29.178627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253662, 33.031570, 29.118870>,  <37.473392, 33.121197, 29.083015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253662, 33.031570, 29.118870>,  <36.887444, 32.882195, 29.178627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253662, 33.031570, 29.118870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171965, 0.027667, -0.984714,
		-0.363601, 0.927240, 0.089549,
		0.915545, 0.373443, -0.149393,
		37.528324, 33.143604, 29.074051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812424, 33.530457, 28.925703>,  <36.887444, 32.882195, 29.178627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812424, 33.530457, 28.925703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182106, 33.418961, 28.821285>,  <37.403915, 33.352062, 28.758635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182106, 33.418961, 28.821285>,  <36.812424, 33.530457, 28.925703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182106, 33.418961, 28.821285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223687, 0.158900, -0.961621,
		0.309519, 0.947131, 0.084507,
		0.924209, -0.278737, -0.261044,
		37.459370, 33.335339, 28.742971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876690, 33.958061, 28.340513>,  <36.812424, 33.530457, 28.925703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876690, 33.958061, 28.340513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176281, 33.693604, 28.322998>,  <37.356037, 33.534927, 28.312489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176281, 33.693604, 28.322998>,  <36.876690, 33.958061, 28.340513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176281, 33.693604, 28.322998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036994, 0.024259, -0.999021,
		0.661558, 0.749868, -0.006289,
		0.748981, -0.661143, -0.043789,
		37.400974, 33.495262, 28.309862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273258, 34.146309, 27.747906>,  <36.876690, 33.958061, 28.340513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273258, 34.146309, 27.747906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397881, 33.769379, 27.796810>,  <37.472656, 33.543221, 27.826153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397881, 33.769379, 27.796810>,  <37.273258, 34.146309, 27.747906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397881, 33.769379, 27.796810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001182, -0.128283, -0.991737,
		0.950226, 0.309128, -0.038854,
		0.311558, -0.942329, 0.122263,
		37.491348, 33.486679, 27.833488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871399, 34.033348, 27.282572>,  <37.273258, 34.146309, 27.747906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871399, 34.033348, 27.282572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719002, 33.668751, 27.344574>,  <37.627563, 33.449993, 27.381775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719002, 33.668751, 27.344574>,  <37.871399, 34.033348, 27.282572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719002, 33.668751, 27.344574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004281, -0.169386, -0.985540,
		0.924566, -0.374824, 0.068438,
		-0.380997, -0.911491, 0.155004,
		37.604702, 33.395302, 27.391075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365250, 33.570145, 26.999241>,  <37.871399, 34.033348, 27.282572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365250, 33.570145, 26.999241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010826, 33.388081, 27.034401>,  <37.798172, 33.278843, 27.055498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010826, 33.388081, 27.034401>,  <38.365250, 33.570145, 26.999241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010826, 33.388081, 27.034401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164405, -0.485835, -0.858449,
		0.433437, -0.746186, 0.505310,
		-0.886060, -0.455160, 0.087902,
		37.745007, 33.251534, 27.060772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406605, 32.768387, 26.763899>,  <38.365250, 33.570145, 26.999241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406605, 32.768387, 26.763899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015266, 32.850315, 26.775826>,  <37.780464, 32.899471, 26.782982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015266, 32.850315, 26.775826>,  <38.406605, 32.768387, 26.763899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015266, 32.850315, 26.775826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099165, -0.337390, -0.936127,
		-0.181675, -0.918813, 0.350395,
		-0.978346, 0.204818, 0.029819,
		37.721764, 32.911762, 26.784771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110909, 32.205441, 26.511534>,  <38.406605, 32.768387, 26.763899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110909, 32.205441, 26.511534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817188, 32.471596, 26.457767>,  <37.640957, 32.631287, 26.425508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817188, 32.471596, 26.457767>,  <38.110909, 32.205441, 26.511534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817188, 32.471596, 26.457767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144160, -0.346348, -0.926963,
		-0.663344, -0.661290, 0.350244,
		-0.734298, 0.665387, -0.134416,
		37.596897, 32.671211, 26.417442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547001, 31.775974, 26.207804>,  <38.110909, 32.205441, 26.511534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547001, 31.775974, 26.207804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474201, 32.159473, 26.120461>,  <37.430523, 32.389572, 26.068054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474201, 32.159473, 26.120461>,  <37.547001, 31.775974, 26.207804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474201, 32.159473, 26.120461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309255, -0.266609, -0.912843,
		-0.933402, -0.098607, 0.345019,
		-0.181998, 0.958748, -0.218358,
		37.419601, 32.447098, 26.054953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924610, 31.692783, 25.858707>,  <37.547001, 31.775974, 26.207804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924610, 31.692783, 25.858707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079021, 32.042030, 25.739616>,  <37.171669, 32.251579, 25.668161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079021, 32.042030, 25.739616>,  <36.924610, 31.692783, 25.858707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079021, 32.042030, 25.739616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408315, -0.127685, -0.903867,
		-0.827199, 0.470488, 0.307218,
		0.386031, 0.873120, -0.297728,
		37.194832, 32.303967, 25.650297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369164, 32.043686, 25.627214>,  <36.924610, 31.692783, 25.858707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369164, 32.043686, 25.627214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702579, 32.174210, 25.448898>,  <36.902630, 32.252522, 25.341909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702579, 32.174210, 25.448898>,  <36.369164, 32.043686, 25.627214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702579, 32.174210, 25.448898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380900, -0.245022, -0.891560,
		-0.400149, 0.912956, -0.079947,
		0.833544, 0.326305, -0.445790,
		36.952644, 32.272102, 25.315161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220600, 32.499630, 25.047915>,  <36.369164, 32.043686, 25.627214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220600, 32.499630, 25.047915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587746, 32.358166, 24.975857>,  <36.808033, 32.273289, 24.932623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587746, 32.358166, 24.975857>,  <36.220600, 32.499630, 25.047915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587746, 32.358166, 24.975857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269103, -0.220906, -0.937435,
		0.291739, 0.908914, -0.297933,
		0.917863, -0.353661, -0.180144,
		36.863106, 32.252068, 24.921814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279106, 32.641289, 24.333702>,  <36.220600, 32.499630, 25.047915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279106, 32.641289, 24.333702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545650, 32.372772, 24.463520>,  <36.705578, 32.211662, 24.541410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545650, 32.372772, 24.463520>,  <36.279106, 32.641289, 24.333702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545650, 32.372772, 24.463520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096478, -0.353980, -0.930263,
		0.739357, 0.651207, -0.171116,
		0.666366, -0.671288, 0.324545,
		36.745560, 32.171387, 24.560883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809517, 32.824722, 23.830761>,  <36.279106, 32.641289, 24.333702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809517, 32.824722, 23.830761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772278, 33.164253, 23.622597>,  <35.749935, 33.367970, 23.497698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772278, 33.164253, 23.622597>,  <35.809517, 32.824722, 23.830761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772278, 33.164253, 23.622597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981166, 0.010637, 0.192875,
		0.169253, 0.528566, 0.831848,
		-0.093099, 0.848825, -0.520411,
		35.744347, 33.418900, 23.466473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573593, 33.512241, 24.144192>,  <35.809517, 32.824722, 23.830761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573593, 33.512241, 24.144192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444218, 33.412663, 23.779026>,  <35.366592, 33.352913, 23.559927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444218, 33.412663, 23.779026>,  <35.573593, 33.512241, 24.144192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444218, 33.412663, 23.779026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913350, -0.170048, 0.369968,
		-0.247343, 0.953471, -0.172377,
		-0.323441, -0.248950, -0.912913,
		35.347187, 33.337978, 23.505152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831631, 33.766403, 23.993591>,  <35.573593, 33.512241, 24.144192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831631, 33.766403, 23.993591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885513, 33.448910, 23.756329>,  <34.917843, 33.258411, 23.613972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885513, 33.448910, 23.756329>,  <34.831631, 33.766403, 23.993591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885513, 33.448910, 23.756329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873718, -0.377514, 0.306757,
		-0.467410, 0.476931, -0.744355,
		0.134703, -0.793738, -0.593158,
		34.925922, 33.210789, 23.578381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242409, 33.637966, 23.602749>,  <34.831631, 33.766403, 23.993591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242409, 33.637966, 23.602749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435928, 33.293118, 23.662994>,  <34.552040, 33.086208, 23.699141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435928, 33.293118, 23.662994>,  <34.242409, 33.637966, 23.602749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435928, 33.293118, 23.662994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851739, -0.424255, 0.307487,
		-0.201193, -0.277044, -0.939557,
		0.483799, -0.862122, 0.150612,
		34.581070, 33.034481, 23.708178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663059, 33.203587, 23.863564>,  <34.242409, 33.637966, 23.602749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663059, 33.203587, 23.863564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975796, 32.957348, 23.903095>,  <34.163437, 32.809605, 23.926815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975796, 32.957348, 23.903095>,  <33.663059, 33.203587, 23.863564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975796, 32.957348, 23.903095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558913, -0.621767, 0.548655,
		-0.276299, -0.484199, -0.830187,
		0.781841, -0.615595, 0.098832,
		34.210346, 32.772671, 23.932745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341362, 32.645920, 23.609137>,  <33.663059, 33.203587, 23.863564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341362, 32.645920, 23.609137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649323, 32.553875, 23.847229>,  <33.834099, 32.498650, 23.990086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649323, 32.553875, 23.847229>,  <33.341362, 32.645920, 23.609137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649323, 32.553875, 23.847229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532748, -0.745250, 0.400976,
		0.351328, -0.625821, -0.696359,
		0.769901, -0.230110, 0.595232,
		33.880291, 32.484840, 24.025799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701130, 31.996872, 23.531958>,  <33.341362, 32.645920, 23.609137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701130, 31.996872, 23.531958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691998, 32.104877, 23.916992>,  <33.686520, 32.169682, 24.148012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691998, 32.104877, 23.916992>,  <33.701130, 31.996872, 23.531958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691998, 32.104877, 23.916992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271443, -0.928341, 0.253970,
		0.962184, -0.255489, 0.094486,
		-0.022829, 0.270014, 0.962586,
		33.685150, 32.185883, 24.205769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066074, 31.581163, 23.904812>,  <33.701130, 31.996872, 23.531958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066074, 31.581163, 23.904812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846050, 31.738235, 24.199631>,  <33.714035, 31.832479, 24.376522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846050, 31.738235, 24.199631>,  <34.066074, 31.581163, 23.904812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846050, 31.738235, 24.199631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086894, -0.904678, 0.417141,
		0.830594, 0.165407, 0.531746,
		-0.550057, 0.392681, 0.737048,
		33.681034, 31.856039, 24.420746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335716, 31.265896, 24.542690>,  <34.066074, 31.581163, 23.904812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335716, 31.265896, 24.542690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951748, 31.377998, 24.543995>,  <33.721367, 31.445259, 24.544777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951748, 31.377998, 24.543995>,  <34.335716, 31.265896, 24.542690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951748, 31.377998, 24.543995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248348, -0.855904, 0.453598,
		0.129914, 0.434608, 0.891200,
		-0.959920, 0.280256, 0.003260,
		33.663773, 31.462076, 24.544973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145733, 31.168301, 25.262138>,  <34.335716, 31.265896, 24.542690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145733, 31.168301, 25.262138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818077, 31.174675, 25.032791>,  <33.621483, 31.178499, 24.895182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818077, 31.174675, 25.032791>,  <34.145733, 31.168301, 25.262138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818077, 31.174675, 25.032791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285288, -0.878522, 0.383158,
		-0.497612, 0.477436, 0.724180,
		-0.819141, 0.015935, -0.573370,
		33.572334, 31.179455, 24.860781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692703, 31.029299, 25.737381>,  <34.145733, 31.168301, 25.262138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692703, 31.029299, 25.737381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531250, 30.938667, 25.382812>,  <33.434380, 30.884289, 25.170071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531250, 30.938667, 25.382812>,  <33.692703, 31.029299, 25.737381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531250, 30.938667, 25.382812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399365, -0.828045, 0.393508,
		-0.823158, 0.512838, 0.243737,
		-0.403631, -0.226580, -0.886422,
		33.410160, 30.870693, 25.116886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194218, 30.585495, 25.994318>,  <33.692703, 31.029299, 25.737381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194218, 30.585495, 25.994318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169071, 30.528557, 25.599190>,  <33.153984, 30.494394, 25.362114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169071, 30.528557, 25.599190>,  <33.194218, 30.585495, 25.994318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169071, 30.528557, 25.599190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383081, -0.910518, 0.155584,
		-0.921573, 0.388195, 0.002710,
		-0.062865, -0.142344, -0.987819,
		33.150211, 30.485853, 25.302845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480026, 30.492886, 25.868114>,  <33.194218, 30.585495, 25.994318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480026, 30.492886, 25.868114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710968, 30.326984, 25.586792>,  <32.849533, 30.227444, 25.417997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710968, 30.326984, 25.586792>,  <32.480026, 30.492886, 25.868114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710968, 30.326984, 25.586792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335227, -0.905839, 0.258995,
		-0.744502, 0.086236, -0.662027,
		0.577355, -0.414752, -0.703308,
		32.884174, 30.202559, 25.375799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983641, 30.102291, 25.447247>,  <32.480026, 30.492886, 25.868114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983641, 30.102291, 25.447247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346443, 29.952435, 25.370319>,  <32.564125, 29.862520, 25.324163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346443, 29.952435, 25.370319>,  <31.983641, 30.102291, 25.447247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346443, 29.952435, 25.370319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350863, -0.924837, 0.146877,
		-0.232887, -0.065742, -0.970279,
		0.907006, -0.374640, -0.192316,
		32.618546, 29.840042, 25.312624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914066, 29.510204, 25.078142>,  <31.983641, 30.102291, 25.447247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914066, 29.510204, 25.078142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281097, 29.461994, 25.229679>,  <32.501316, 29.433067, 25.320602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281097, 29.461994, 25.229679>,  <31.914066, 29.510204, 25.078142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281097, 29.461994, 25.229679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227584, -0.940591, 0.251980,
		0.325967, -0.317430, -0.890496,
		0.917579, -0.120525, 0.378844,
		32.556370, 29.425837, 25.343332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194260, 28.817730, 24.885519>,  <31.914066, 29.510204, 25.078142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194260, 28.817730, 24.885519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372742, 28.911530, 25.230984>,  <32.479832, 28.967810, 25.438263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372742, 28.911530, 25.230984>,  <32.194260, 28.817730, 24.885519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372742, 28.911530, 25.230984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350131, -0.842391, 0.409616,
		0.823594, -0.485168, -0.293777,
		0.446207, 0.234497, 0.863661,
		32.506603, 28.981878, 25.490082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410145, 28.154364, 25.113441>,  <32.194260, 28.817730, 24.885519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410145, 28.154364, 25.113441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514362, 28.362957, 25.438446>,  <32.576893, 28.488113, 25.633448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514362, 28.362957, 25.438446>,  <32.410145, 28.154364, 25.113441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514362, 28.362957, 25.438446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248814, -0.776880, 0.578402,
		0.932850, -0.352862, -0.072657,
		0.260542, 0.521485, 0.812509,
		32.592525, 28.519402, 25.682199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785172, 27.765394, 25.511686>,  <32.410145, 28.154364, 25.113441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785172, 27.765394, 25.511686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650009, 28.039078, 25.770199>,  <32.568913, 28.203287, 25.925306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650009, 28.039078, 25.770199>,  <32.785172, 27.765394, 25.511686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650009, 28.039078, 25.770199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121067, -0.712564, 0.691083,
		0.933361, 0.155278, 0.323614,
		-0.337906, 0.684209, 0.646281,
		32.548637, 28.244341, 25.964083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205780, 27.780506, 26.096296>,  <32.785172, 27.765394, 25.511686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205780, 27.780506, 26.096296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845882, 27.898548, 26.224899>,  <32.629944, 27.969374, 26.302061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845882, 27.898548, 26.224899>,  <33.205780, 27.780506, 26.096296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845882, 27.898548, 26.224899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023037, -0.703563, 0.710259,
		0.435801, 0.646461, 0.626231,
		-0.899748, 0.295105, 0.321506,
		32.575958, 27.987080, 26.321352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297619, 27.874601, 26.801947>,  <33.205780, 27.780506, 26.096296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297619, 27.874601, 26.801947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903927, 27.846050, 26.737198>,  <32.667713, 27.828920, 26.698349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903927, 27.846050, 26.737198>,  <33.297619, 27.874601, 26.801947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903927, 27.846050, 26.737198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075726, -0.656956, 0.750116,
		-0.159885, 0.750542, 0.641189,
		-0.984227, -0.071377, -0.161873,
		32.608658, 27.824636, 26.688637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022026, 27.757397, 27.438532>,  <33.297619, 27.874601, 26.801947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022026, 27.757397, 27.438532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745178, 27.643314, 27.173313>,  <32.579071, 27.574865, 27.014181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745178, 27.643314, 27.173313>,  <33.022026, 27.757397, 27.438532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745178, 27.643314, 27.173313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137134, -0.849930, 0.508737,
		-0.708637, 0.443033, 0.549142,
		-0.692119, -0.285204, -0.663046,
		32.537544, 27.557753, 26.974400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425629, 27.661161, 27.863018>,  <33.022026, 27.757397, 27.438532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425629, 27.661161, 27.863018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403019, 27.442425, 27.528889>,  <32.389454, 27.311182, 27.328411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403019, 27.442425, 27.528889>,  <32.425629, 27.661161, 27.863018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403019, 27.442425, 27.528889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047530, -0.834241, 0.549348,
		-0.997269, 0.070754, 0.021164,
		-0.056524, -0.546842, -0.835326,
		32.386063, 27.278372, 27.278292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793468, 27.330547, 27.992235>,  <32.425629, 27.661161, 27.863018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793468, 27.330547, 27.992235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986864, 27.121868, 27.711075>,  <32.102901, 26.996660, 27.542379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986864, 27.121868, 27.711075>,  <31.793468, 27.330547, 27.992235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986864, 27.121868, 27.711075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034509, -0.813728, 0.580221,
		-0.874672, -0.256272, -0.411429,
		0.483485, -0.521701, -0.702901,
		32.131908, 26.965359, 27.500204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398046, 26.671259, 28.072172>,  <31.793468, 27.330547, 27.992235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398046, 26.671259, 28.072172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726738, 26.600658, 27.855431>,  <31.923954, 26.558298, 27.725386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726738, 26.600658, 27.855431>,  <31.398046, 26.671259, 28.072172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726738, 26.600658, 27.855431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054850, -0.921918, 0.383483,
		-0.567231, -0.344840, -0.747887,
		0.821730, -0.176502, -0.541854,
		31.973257, 26.547709, 27.692875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316730, 25.961870, 27.871599>,  <31.398046, 26.671259, 28.072172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316730, 25.961870, 27.871599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706886, 26.050011, 27.868568>,  <31.940981, 26.102896, 27.866751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706886, 26.050011, 27.868568>,  <31.316730, 25.961870, 27.871599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706886, 26.050011, 27.868568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183886, -0.794058, 0.579360,
		0.121646, -0.566496, -0.815037,
		0.975391, 0.220351, -0.007577,
		31.999504, 26.116116, 27.866295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641573, 25.341726, 27.671124>,  <31.316730, 25.961870, 27.871599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641573, 25.341726, 27.671124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894197, 25.568592, 27.882576>,  <32.045773, 25.704712, 28.009447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894197, 25.568592, 27.882576>,  <31.641573, 25.341726, 27.671124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894197, 25.568592, 27.882576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270900, -0.800270, 0.534960,
		0.726458, -0.194655, -0.659066,
		0.631563, 0.567167, 0.528631,
		32.083668, 25.738743, 28.041164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213451, 24.863543, 27.753490>,  <31.641573, 25.341726, 27.671124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213451, 24.863543, 27.753490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259090, 25.152184, 28.026627>,  <32.286476, 25.325367, 28.190508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259090, 25.152184, 28.026627>,  <32.213451, 24.863543, 27.753490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259090, 25.152184, 28.026627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100548, -0.692189, 0.714678,
		0.988368, -0.012886, -0.151535,
		0.114100, 0.721601, 0.682842,
		32.293320, 25.368664, 28.231480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686562, 24.494419, 28.165401>,  <32.213451, 24.863543, 27.753490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686562, 24.494419, 28.165401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516205, 24.789906, 28.374367>,  <32.413990, 24.967197, 28.499746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516205, 24.789906, 28.374367>,  <32.686562, 24.494419, 28.165401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516205, 24.789906, 28.374367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058485, -0.598667, 0.798860,
		0.902883, 0.309673, 0.298170,
		-0.425890, 0.738715, 0.522416,
		32.388439, 25.011520, 28.531092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036011, 24.421265, 28.894218>,  <32.686562, 24.494419, 28.165401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036011, 24.421265, 28.894218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714767, 24.647938, 28.967854>,  <32.522022, 24.783941, 29.012033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714767, 24.647938, 28.967854>,  <33.036011, 24.421265, 28.894218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714767, 24.647938, 28.967854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038761, -0.258611, 0.965204,
		0.594570, 0.782299, 0.185727,
		-0.803109, 0.566682, 0.184086,
		32.473835, 24.817942, 29.023079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172878, 24.600073, 29.457415>,  <33.036011, 24.421265, 28.894218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172878, 24.600073, 29.457415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782536, 24.684650, 29.435528>,  <32.548328, 24.735397, 29.422396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782536, 24.684650, 29.435528>,  <33.172878, 24.600073, 29.457415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782536, 24.684650, 29.435528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109746, -0.258106, 0.959863,
		0.188832, 0.942695, 0.275080,
		-0.975858, 0.211442, -0.054718,
		32.489777, 24.748083, 29.419113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984543, 24.830898, 30.086380>,  <33.172878, 24.600073, 29.457415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984543, 24.830898, 30.086380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642406, 24.708645, 29.919056>,  <32.437126, 24.635292, 29.818661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642406, 24.708645, 29.919056>,  <32.984543, 24.830898, 30.086380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642406, 24.708645, 29.919056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384036, -0.167894, 0.907925,
		-0.347725, 0.937229, 0.026232,
		-0.855338, -0.305635, -0.418311,
		32.385803, 24.616955, 29.793562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440025, 25.062725, 30.508629>,  <32.984543, 24.830898, 30.086380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440025, 25.062725, 30.508629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269890, 24.765003, 30.302677>,  <32.167809, 24.586370, 30.179106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269890, 24.765003, 30.302677>,  <32.440025, 25.062725, 30.508629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269890, 24.765003, 30.302677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360763, -0.382315, 0.850697,
		-0.830023, 0.547582, -0.105904,
		-0.425338, -0.744304, -0.514877,
		32.142288, 24.541712, 30.148214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808828, 25.006266, 30.737856>,  <32.440025, 25.062725, 30.508629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808828, 25.006266, 30.737856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877768, 24.644630, 30.581436>,  <31.919130, 24.427649, 30.487585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877768, 24.644630, 30.581436>,  <31.808828, 25.006266, 30.737856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877768, 24.644630, 30.581436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343520, -0.427231, 0.836342,
		-0.923196, -0.009808, -0.384204,
		0.172347, -0.904089, -0.391049,
		31.929472, 24.373404, 30.464121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186245, 24.646479, 30.899240>,  <31.808828, 25.006266, 30.737856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186245, 24.646479, 30.899240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465155, 24.367668, 30.832355>,  <31.632502, 24.200382, 30.792225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465155, 24.367668, 30.832355>,  <31.186245, 24.646479, 30.899240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465155, 24.367668, 30.832355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338824, -0.526070, 0.780031,
		-0.631670, -0.487239, -0.602985,
		0.697274, -0.697028, -0.167214,
		31.674337, 24.158560, 30.782192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876585, 24.013056, 31.088211>,  <31.186245, 24.646479, 30.899240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876585, 24.013056, 31.088211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263092, 23.910305, 31.080803>,  <31.494995, 23.848654, 31.076359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263092, 23.910305, 31.080803>,  <30.876585, 24.013056, 31.088211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263092, 23.910305, 31.080803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161189, -0.659279, 0.734417,
		-0.200866, -0.706657, -0.678445,
		0.966266, -0.256878, -0.018521,
		31.552973, 23.833242, 31.075247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836128, 23.246931, 31.079233>,  <30.876585, 24.013056, 31.088211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836128, 23.246931, 31.079233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213196, 23.317150, 31.192764>,  <31.439436, 23.359282, 31.260883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213196, 23.317150, 31.192764>,  <30.836128, 23.246931, 31.079233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213196, 23.317150, 31.192764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037131, -0.790025, 0.611949,
		0.331655, -0.587405, -0.738214,
		0.942670, 0.175546, 0.283827,
		31.495996, 23.369814, 31.277912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158924, 22.651516, 31.053984>,  <30.836128, 23.246931, 31.079233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158924, 22.651516, 31.053984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362844, 22.871132, 31.318909>,  <31.485197, 23.002901, 31.477863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362844, 22.871132, 31.318909>,  <31.158924, 22.651516, 31.053984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362844, 22.871132, 31.318909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164382, -0.693517, 0.701436,
		0.844443, -0.466464, -0.263302,
		0.509799, 0.549041, 0.662313,
		31.515785, 23.035845, 31.517603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663866, 22.155149, 31.328468>,  <31.158924, 22.651516, 31.053984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663866, 22.155149, 31.328468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628227, 22.456116, 31.589523>,  <31.606844, 22.636696, 31.746157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628227, 22.456116, 31.589523>,  <31.663866, 22.155149, 31.328468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628227, 22.456116, 31.589523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010232, -0.654516, 0.755979,
		0.995970, 0.074033, 0.050616,
		-0.089096, 0.752415, 0.652636,
		31.601498, 22.681841, 31.785315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081097, 21.975189, 31.840414>,  <31.663866, 22.155149, 31.328468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081097, 21.975189, 31.840414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815474, 22.225300, 32.004391>,  <31.656099, 22.375366, 32.102776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815474, 22.225300, 32.004391>,  <32.081097, 21.975189, 31.840414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815474, 22.225300, 32.004391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003680, -0.545547, 0.838072,
		0.747669, 0.558040, 0.359975,
		-0.664061, 0.625276, 0.409942,
		31.616255, 22.412882, 32.127373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151711, 21.795248, 32.532562>,  <32.081097, 21.975189, 31.840414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151711, 21.795248, 32.532562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839258, 22.042133, 32.570263>,  <31.651787, 22.190264, 32.592884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839258, 22.042133, 32.570263>,  <32.151711, 21.795248, 32.532562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839258, 22.042133, 32.570263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279019, -0.480117, 0.831647,
		0.558554, 0.623327, 0.547248,
		-0.781131, 0.617212, 0.094251,
		31.604919, 22.227297, 32.598537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102524, 21.910242, 33.226498>,  <32.151711, 21.795248, 32.532562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102524, 21.910242, 33.226498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738354, 22.025074, 33.107361>,  <31.519852, 22.093973, 33.035881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738354, 22.025074, 33.107361>,  <32.102524, 21.910242, 33.226498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738354, 22.025074, 33.107361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389608, -0.353095, 0.850605,
		0.139027, 0.890454, 0.433316,
		-0.910427, 0.287081, -0.297839,
		31.465225, 22.111198, 33.018009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809427, 22.396273, 33.697903>,  <32.102524, 21.910242, 33.226498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809427, 22.396273, 33.697903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496748, 22.221611, 33.519791>,  <31.309139, 22.116814, 33.412922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496748, 22.221611, 33.519791>,  <31.809427, 22.396273, 33.697903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496748, 22.221611, 33.519791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314067, -0.341222, 0.885962,
		-0.538801, 0.832406, 0.129595,
		-0.781701, -0.436656, -0.445282,
		31.262238, 22.090614, 33.386208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262001, 22.641834, 34.040794>,  <31.809427, 22.396273, 33.697903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262001, 22.641834, 34.040794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137739, 22.307789, 33.859211>,  <31.063181, 22.107361, 33.750263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137739, 22.307789, 33.859211>,  <31.262001, 22.641834, 34.040794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137739, 22.307789, 33.859211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398889, -0.318957, 0.859741,
		-0.862774, 0.448162, -0.234032,
		-0.310657, -0.835115, -0.453955,
		31.044542, 22.057255, 33.723026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502104, 22.648977, 34.161457>,  <31.262001, 22.641834, 34.040794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502104, 22.648977, 34.161457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614704, 22.283783, 34.043331>,  <30.682264, 22.064667, 33.972454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614704, 22.283783, 34.043331>,  <30.502104, 22.648977, 34.161457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614704, 22.283783, 34.043331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655706, -0.407719, 0.635464,
		-0.700577, 0.014757, -0.713425,
		0.281499, -0.912988, -0.295315,
		30.699154, 22.009886, 33.954739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934900, 22.328917, 34.145229>,  <30.502104, 22.648977, 34.161457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934900, 22.328917, 34.145229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203453, 22.036659, 34.194881>,  <30.364584, 21.861305, 34.224674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203453, 22.036659, 34.194881>,  <29.934900, 22.328917, 34.145229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203453, 22.036659, 34.194881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556462, -0.386355, 0.735581,
		-0.489488, -0.562930, -0.665966,
		0.671380, -0.730643, 0.124133,
		30.404867, 21.817467, 34.232121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516665, 21.671886, 34.236946>,  <29.934900, 22.328917, 34.145229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516665, 21.671886, 34.236946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885969, 21.619431, 34.381386>,  <30.107552, 21.587957, 34.468048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885969, 21.619431, 34.381386>,  <29.516665, 21.671886, 34.236946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885969, 21.619431, 34.381386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380065, -0.448855, 0.808752,
		0.056022, -0.883930, -0.464251,
		0.923262, -0.131138, 0.361096,
		30.162949, 21.580090, 34.489716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610209, 20.971769, 34.319660>,  <29.516665, 21.671886, 34.236946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610209, 20.971769, 34.319660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884594, 21.125328, 34.566910>,  <30.049225, 21.217463, 34.715260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884594, 21.125328, 34.566910>,  <29.610209, 20.971769, 34.319660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884594, 21.125328, 34.566910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359200, -0.560111, 0.746492,
		0.632794, -0.734097, -0.246321,
		0.685965, 0.383897, 0.618122,
		30.090384, 21.240498, 34.752346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736130, 20.392738, 34.742931>,  <29.610209, 20.971769, 34.319660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736130, 20.392738, 34.742931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908829, 20.695675, 34.938904>,  <30.012447, 20.877438, 35.056488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908829, 20.695675, 34.938904>,  <29.736130, 20.392738, 34.742931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908829, 20.695675, 34.938904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279814, -0.403908, 0.870955,
		0.857496, -0.513121, 0.037529,
		0.431747, 0.757341, 0.489928,
		30.038353, 20.922876, 35.085884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190655, 20.094242, 35.195004>,  <29.736130, 20.392738, 34.742931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190655, 20.094242, 35.195004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085793, 20.453350, 35.336582>,  <30.022875, 20.668816, 35.421532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085793, 20.453350, 35.336582>,  <30.190655, 20.094242, 35.195004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085793, 20.453350, 35.336582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492787, -0.439893, 0.750770,
		0.829719, 0.022397, 0.557731,
		-0.262157, 0.897771, 0.353951,
		30.007145, 20.722681, 35.442768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521837, 20.195496, 35.901661>,  <30.190655, 20.094242, 35.195004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521837, 20.195496, 35.901661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172440, 20.352764, 35.786819>,  <29.962801, 20.447124, 35.717915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172440, 20.352764, 35.786819>,  <30.521837, 20.195496, 35.901661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172440, 20.352764, 35.786819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483266, -0.628931, 0.609016,
		0.058878, 0.670718, 0.739372,
		-0.873492, 0.393170, -0.287105,
		29.910393, 20.470715, 35.700687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272816, 20.866173, 35.966808>,  <30.521837, 20.195496, 35.901661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272816, 20.866173, 35.966808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313023, 20.707191, 36.331650>,  <30.337147, 20.611803, 36.550552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313023, 20.707191, 36.331650>,  <30.272816, 20.866173, 35.966808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313023, 20.707191, 36.331650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736707, 0.586413, 0.336722,
		-0.668699, -0.705797, -0.233864,
		0.100517, -0.397455, 0.912099,
		30.343178, 20.587955, 36.605278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693228, 20.513943, 36.184998>,  <30.272816, 20.866173, 35.966808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693228, 20.513943, 36.184998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915771, 20.674709, 36.475906>,  <30.049297, 20.771170, 36.650452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915771, 20.674709, 36.475906>,  <29.693228, 20.513943, 36.184998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915771, 20.674709, 36.475906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747580, 0.624198, 0.226939,
		-0.362753, -0.669955, 0.647742,
		0.556358, 0.401916, 0.727275,
		30.082680, 20.795284, 36.694088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389093, 20.467314, 36.909676>,  <29.693228, 20.513943, 36.184998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389093, 20.467314, 36.909676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615034, 20.791641, 36.848343>,  <29.750599, 20.986238, 36.811543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615034, 20.791641, 36.848343>,  <29.389093, 20.467314, 36.909676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615034, 20.791641, 36.848343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783274, 0.585293, 0.209555,
		0.259657, 0.001735, 0.965699,
		0.564854, 0.810820, -0.153335,
		29.784491, 21.034887, 36.802341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192894, 21.031239, 37.462925>,  <29.389093, 20.467314, 36.909676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192894, 21.031239, 37.462925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320921, 21.184837, 37.116489>,  <29.397738, 21.276997, 36.908630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320921, 21.184837, 37.116489>,  <29.192894, 21.031239, 37.462925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320921, 21.184837, 37.116489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716821, 0.695891, 0.043635,
		0.619456, 0.606861, 0.497990,
		0.320066, 0.383999, -0.866085,
		29.416941, 21.300037, 36.856663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348639, 21.847616, 37.416092>,  <29.192894, 21.031239, 37.462925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348639, 21.847616, 37.416092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231163, 21.685837, 37.069645>,  <29.160677, 21.588770, 36.861774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231163, 21.685837, 37.069645>,  <29.348639, 21.847616, 37.416092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231163, 21.685837, 37.069645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694233, 0.713104, -0.097589,
		0.657104, 0.572629, -0.490213,
		-0.293691, -0.404449, -0.866122,
		29.143055, 21.564503, 36.809807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897671, 21.918837, 37.953747>,  <29.348639, 21.847616, 37.416092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897671, 21.918837, 37.953747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611748, 21.687244, 38.110630>,  <28.440193, 21.548290, 38.204762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611748, 21.687244, 38.110630>,  <28.897671, 21.918837, 37.953747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611748, 21.687244, 38.110630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605806, 0.792845, 0.066303,
		-0.349352, -0.190211, -0.917482,
		-0.714809, -0.578979, 0.392213,
		28.397305, 21.513550, 38.228294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167284, 22.128338, 37.841652>,  <28.897671, 21.918837, 37.953747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167284, 22.128338, 37.841652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068432, 21.871590, 38.132011>,  <28.009121, 21.717541, 38.306229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068432, 21.871590, 38.132011>,  <28.167284, 22.128338, 37.841652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068432, 21.871590, 38.132011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722709, 0.621113, 0.303167,
		-0.645459, -0.449691, -0.617382,
		-0.247132, -0.641870, 0.725899,
		27.994291, 21.679029, 38.349781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919239, 22.416363, 37.103153>,  <28.167284, 22.128338, 37.841652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919239, 22.416363, 37.103153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809006, 22.176609, 36.802544>,  <27.742867, 22.032757, 36.622177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809006, 22.176609, 36.802544>,  <27.919239, 22.416363, 37.103153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809006, 22.176609, 36.802544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828726, 0.248017, -0.501699,
		0.487102, -0.761068, 0.428377,
		-0.275582, -0.599386, -0.751526,
		27.726332, 21.996794, 36.577087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613943, 22.684933, 37.307484>,  <27.919239, 22.416363, 37.103153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613943, 22.684933, 37.307484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918125, 22.498474, 37.126637>,  <29.100636, 22.386599, 37.018127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918125, 22.498474, 37.126637>,  <28.613943, 22.684933, 37.307484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918125, 22.498474, 37.126637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011522, 0.705801, -0.708317,
		0.649286, 0.533436, 0.542102,
		0.760457, -0.466146, -0.452120,
		29.146263, 22.358631, 36.991001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122166, 23.184757, 37.222942>,  <28.613943, 22.684933, 37.307484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122166, 23.184757, 37.222942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181276, 22.897335, 36.951107>,  <29.216742, 22.724882, 36.788006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181276, 22.897335, 36.951107>,  <29.122166, 23.184757, 37.222942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181276, 22.897335, 36.951107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159696, 0.695450, -0.700604,
		0.976043, -0.004996, 0.217520,
		0.147774, -0.718557, -0.679587,
		29.225609, 22.681768, 36.747231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768719, 23.422506, 36.813396>,  <29.122166, 23.184757, 37.222942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768719, 23.422506, 36.813396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599823, 23.146626, 36.578102>,  <29.498486, 22.981096, 36.436924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599823, 23.146626, 36.578102>,  <29.768719, 23.422506, 36.813396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599823, 23.146626, 36.578102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243284, 0.538892, -0.806479,
		0.873227, -0.483636, -0.059749,
		-0.422241, -0.689704, -0.588236,
		29.473150, 22.939714, 36.401630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186281, 23.378677, 36.266163>,  <29.768719, 23.422506, 36.813396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186281, 23.378677, 36.266163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848982, 23.225807, 36.114967>,  <29.646603, 23.134085, 36.024250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848982, 23.225807, 36.114967>,  <30.186281, 23.378677, 36.266163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848982, 23.225807, 36.114967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078321, 0.608339, -0.789803,
		0.531789, -0.695604, -0.483048,
		-0.843247, -0.382176, -0.377989,
		29.596008, 23.111155, 36.001572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256723, 23.344965, 35.609428>,  <30.186281, 23.378677, 36.266163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256723, 23.344965, 35.609428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858040, 23.352039, 35.641064>,  <29.618830, 23.356283, 35.660046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858040, 23.352039, 35.641064>,  <30.256723, 23.344965, 35.609428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858040, 23.352039, 35.641064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057741, 0.529807, -0.846150,
		-0.056866, -0.847934, -0.527044,
		-0.996711, 0.017685, 0.079089,
		29.559027, 23.357346, 35.664791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996071, 23.238331, 34.873474>,  <30.256723, 23.344965, 35.609428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996071, 23.238331, 34.873474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723410, 23.420818, 35.102283>,  <29.559813, 23.530312, 35.239571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723410, 23.420818, 35.102283>,  <29.996071, 23.238331, 34.873474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723410, 23.420818, 35.102283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043431, 0.755193, -0.654062,
		-0.730383, -0.470688, -0.494967,
		-0.681655, 0.456220, 0.572022,
		29.518913, 23.557684, 35.273891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531040, 23.406799, 34.428970>,  <29.996071, 23.238331, 34.873474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531040, 23.406799, 34.428970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448578, 23.639847, 34.743439>,  <29.399101, 23.779675, 34.932117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448578, 23.639847, 34.743439>,  <29.531040, 23.406799, 34.428970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448578, 23.639847, 34.743439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124398, 0.781301, -0.611632,
		-0.970580, -0.223888, -0.088593,
		-0.206154, 0.582617, 0.786167,
		29.386732, 23.814632, 34.979290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806042, 23.762995, 34.289852>,  <29.531040, 23.406799, 34.428970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806042, 23.762995, 34.289852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010277, 23.984303, 34.553123>,  <29.132818, 24.117086, 34.711086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010277, 23.984303, 34.553123>,  <28.806042, 23.762995, 34.289852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010277, 23.984303, 34.553123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135837, 0.807767, -0.573638,
		-0.849028, 0.203488, 0.487590,
		0.510588, 0.553268, 0.658175,
		29.163454, 24.150282, 34.750576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505878, 24.497515, 34.304081>,  <28.806042, 23.762995, 34.289852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505878, 24.497515, 34.304081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876450, 24.520210, 34.452950>,  <29.098793, 24.533827, 34.542271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876450, 24.520210, 34.452950>,  <28.505878, 24.497515, 34.304081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876450, 24.520210, 34.452950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203565, 0.756094, -0.621999,
		-0.316686, 0.651999, 0.688918,
		0.926429, 0.056739, 0.372169,
		29.154379, 24.537231, 34.564602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618830, 25.142799, 34.357216>,  <28.505878, 24.497515, 34.304081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618830, 25.142799, 34.357216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998140, 25.015873, 34.360817>,  <29.225727, 24.939716, 34.362976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998140, 25.015873, 34.360817>,  <28.618830, 25.142799, 34.357216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998140, 25.015873, 34.360817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249470, 0.727393, -0.639268,
		0.196302, 0.608449, 0.768931,
		0.948277, -0.317315, 0.009001,
		29.282623, 24.920679, 34.363518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102360, 25.730972, 34.273247>,  <28.618830, 25.142799, 34.357216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102360, 25.730972, 34.273247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371880, 25.446468, 34.193146>,  <29.533592, 25.275766, 34.145084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371880, 25.446468, 34.193146>,  <29.102360, 25.730972, 34.273247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371880, 25.446468, 34.193146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446138, 0.607634, -0.657070,
		0.589026, 0.353396, 0.726746,
		0.673802, -0.711261, -0.200249,
		29.574020, 25.233089, 34.133072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750069, 25.994030, 34.328892>,  <29.102360, 25.730972, 34.273247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750069, 25.994030, 34.328892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790764, 25.690559, 34.071503>,  <29.815182, 25.508478, 33.917068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790764, 25.690559, 34.071503>,  <29.750069, 25.994030, 34.328892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790764, 25.690559, 34.071503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371255, 0.629058, -0.682976,
		0.922941, -0.169409, 0.345661,
		0.101739, -0.758674, -0.643477,
		29.821285, 25.462957, 33.878460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423216, 26.050535, 34.022659>,  <29.750069, 25.994030, 34.328892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423216, 26.050535, 34.022659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216034, 25.828991, 33.761902>,  <30.091724, 25.696064, 33.605450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216034, 25.828991, 33.761902>,  <30.423216, 26.050535, 34.022659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216034, 25.828991, 33.761902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336491, 0.568719, -0.750555,
		0.786444, -0.608110, -0.108203,
		-0.517956, -0.553860, -0.651890,
		30.060646, 25.662832, 33.566334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932859, 25.991554, 33.513275>,  <30.423216, 26.050535, 34.022659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932859, 25.991554, 33.513275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594988, 25.864456, 33.340969>,  <30.392265, 25.788197, 33.237587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594988, 25.864456, 33.340969>,  <30.932859, 25.991554, 33.513275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594988, 25.864456, 33.340969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228310, 0.514009, -0.826843,
		0.484134, -0.796767, -0.361632,
		-0.844683, -0.317738, -0.430759,
		30.341585, 25.769133, 33.211739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125210, 25.614239, 32.934059>,  <30.932859, 25.991554, 33.513275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125210, 25.614239, 32.934059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760971, 25.767555, 32.872219>,  <30.542429, 25.859545, 32.835114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760971, 25.767555, 32.872219>,  <31.125210, 25.614239, 32.934059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760971, 25.767555, 32.872219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361177, 0.556143, -0.748502,
		-0.200913, -0.737422, -0.644858,
		-0.910596, 0.383292, -0.154604,
		30.487793, 25.882544, 32.825836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141628, 25.725292, 32.276108>,  <31.125210, 25.614239, 32.934059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141628, 25.725292, 32.276108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829679, 25.951702, 32.383003>,  <30.642509, 26.087547, 32.447140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829679, 25.951702, 32.383003>,  <31.141628, 25.725292, 32.276108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829679, 25.951702, 32.383003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229350, 0.655644, -0.719395,
		-0.582407, -0.499746, -0.641136,
		-0.779872, 0.566025, 0.267235,
		30.595718, 26.121510, 32.463173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657343, 25.856104, 31.738605>,  <31.141628, 25.725292, 32.276108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657343, 25.856104, 31.738605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618753, 26.162277, 31.993103>,  <30.595600, 26.345982, 32.145802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618753, 26.162277, 31.993103>,  <30.657343, 25.856104, 31.738605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618753, 26.162277, 31.993103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185320, 0.641860, -0.744092,
		-0.977931, 0.046122, -0.203773,
		-0.096475, 0.765434, 0.636242,
		30.589811, 26.391907, 32.183975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743204, 26.434217, 31.353443>,  <30.657343, 25.856104, 31.738605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743204, 26.434217, 31.353443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726923, 26.640106, 31.695999>,  <30.717154, 26.763639, 31.901533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726923, 26.640106, 31.695999>,  <30.743204, 26.434217, 31.353443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726923, 26.640106, 31.695999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366900, 0.804923, -0.466351,
		-0.929370, 0.295227, -0.221615,
		-0.040704, 0.514723, 0.856390,
		30.714712, 26.794523, 31.952915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554850, 27.026314, 31.193317>,  <30.743204, 26.434217, 31.353443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554850, 27.026314, 31.193317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690084, 27.115288, 31.559097>,  <30.771225, 27.168673, 31.778564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690084, 27.115288, 31.559097>,  <30.554850, 27.026314, 31.193317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690084, 27.115288, 31.559097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503280, 0.778324, -0.375394,
		-0.795239, 0.587141, 0.151196,
		0.338089, 0.222434, 0.914450,
		30.791512, 27.182018, 31.833433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442083, 27.696220, 31.298117>,  <30.554850, 27.026314, 31.193317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442083, 27.696220, 31.298117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742315, 27.600021, 31.544300>,  <30.922455, 27.542301, 31.692011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742315, 27.600021, 31.544300>,  <30.442083, 27.696220, 31.298117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742315, 27.600021, 31.544300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544612, 0.752619, -0.370084,
		-0.374203, 0.612965, 0.695879,
		0.750580, -0.240497, 0.615460,
		30.967489, 27.527872, 31.728937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726545, 28.330309, 31.618889>,  <30.442083, 27.696220, 31.298117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726545, 28.330309, 31.618889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008997, 28.047085, 31.621315>,  <31.178467, 27.877151, 31.622770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008997, 28.047085, 31.621315>,  <30.726545, 28.330309, 31.618889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008997, 28.047085, 31.621315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633894, 0.628301, -0.451018,
		0.315537, 0.322320, 0.892494,
		0.706127, -0.708059, 0.006065,
		31.220835, 27.834667, 31.623135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335875, 28.673178, 31.872791>,  <30.726545, 28.330309, 31.618889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335875, 28.673178, 31.872791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457369, 28.345638, 31.677967>,  <31.530266, 28.149115, 31.561073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457369, 28.345638, 31.677967>,  <31.335875, 28.673178, 31.872791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457369, 28.345638, 31.677967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632239, 0.555666, -0.539917,
		0.712754, -0.143946, 0.686485,
		0.303737, -0.818850, -0.487061,
		31.548491, 28.099983, 31.531849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054760, 28.683077, 31.838343>,  <31.335875, 28.673178, 31.872791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054760, 28.683077, 31.838343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939039, 28.447578, 31.536434>,  <31.869608, 28.306278, 31.355289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939039, 28.447578, 31.536434>,  <32.054760, 28.683077, 31.838343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939039, 28.447578, 31.536434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590000, 0.511240, -0.624927,
		0.753795, -0.626107, 0.199459,
		-0.289300, -0.588747, -0.754773,
		31.852249, 28.270954, 31.310001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640369, 28.561426, 31.470634>,  <32.054760, 28.683077, 31.838343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640369, 28.561426, 31.470634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343254, 28.472328, 31.218079>,  <32.164986, 28.418869, 31.066545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343254, 28.472328, 31.218079>,  <32.640369, 28.561426, 31.470634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343254, 28.472328, 31.218079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542386, 0.352704, -0.762508,
		0.392537, -0.908837, -0.141171,
		-0.742787, -0.222743, -0.631390,
		32.120419, 28.405504, 31.028662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988831, 28.558620, 30.782061>,  <32.640369, 28.561426, 31.470634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988831, 28.558620, 30.782061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601540, 28.547508, 30.682648>,  <32.369167, 28.540840, 30.623001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601540, 28.547508, 30.682648>,  <32.988831, 28.558620, 30.782061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601540, 28.547508, 30.682648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207089, 0.468048, -0.859096,
		0.140191, -0.883266, -0.447423,
		-0.968225, -0.027781, -0.248531,
		32.311073, 28.539173, 30.608088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915932, 28.280649, 30.158806>,  <32.988831, 28.558620, 30.782061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915932, 28.280649, 30.158806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580017, 28.495480, 30.190567>,  <32.378468, 28.624378, 30.209623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580017, 28.495480, 30.190567>,  <32.915932, 28.280649, 30.158806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580017, 28.495480, 30.190567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209524, 0.455534, -0.865210,
		-0.500855, -0.709956, -0.495082,
		-0.839788, 0.537076, 0.079403,
		32.328079, 28.656603, 30.214388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630413, 28.332918, 29.504410>,  <32.915932, 28.280649, 30.158806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630413, 28.332918, 29.504410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450813, 28.633183, 29.698277>,  <32.343052, 28.813341, 29.814596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450813, 28.633183, 29.698277>,  <32.630413, 28.332918, 29.504410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450813, 28.633183, 29.698277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113109, 0.585805, -0.802520,
		-0.886343, -0.305513, -0.347934,
		-0.449002, 0.750663, 0.484668,
		32.316113, 28.858381, 29.843678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139458, 28.406200, 29.082727>,  <32.630413, 28.332918, 29.504410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139458, 28.406200, 29.082727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227737, 28.739391, 29.285683>,  <32.280704, 28.939306, 29.407455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227737, 28.739391, 29.285683>,  <32.139458, 28.406200, 29.082727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227737, 28.739391, 29.285683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306471, 0.434640, -0.846855,
		-0.925941, 0.342400, -0.159358,
		0.220700, 0.832977, 0.507387,
		32.293949, 28.989285, 29.437899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774166, 28.979429, 28.704157>,  <32.139458, 28.406200, 29.082727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774166, 28.979429, 28.704157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046127, 29.163712, 28.932362>,  <32.209305, 29.274281, 29.069284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046127, 29.163712, 28.932362>,  <31.774166, 28.979429, 28.704157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046127, 29.163712, 28.932362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107455, 0.707009, -0.698994,
		-0.725388, 0.536551, 0.431191,
		0.679902, 0.460708, 0.570510,
		32.250099, 29.301924, 29.103516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526665, 29.626947, 28.636839>,  <31.774166, 28.979429, 28.704157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526665, 29.626947, 28.636839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898657, 29.668102, 28.778008>,  <32.121853, 29.692795, 28.862709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898657, 29.668102, 28.778008>,  <31.526665, 29.626947, 28.636839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898657, 29.668102, 28.778008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157093, 0.756737, -0.634564,
		-0.332354, 0.645573, 0.687587,
		0.929980, 0.102885, 0.352920,
		32.177650, 29.698967, 28.883883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591759, 30.267189, 28.866243>,  <31.526665, 29.626947, 28.636839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591759, 30.267189, 28.866243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962873, 30.152458, 28.770794>,  <32.185543, 30.083620, 28.713524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962873, 30.152458, 28.770794>,  <31.591759, 30.267189, 28.866243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962873, 30.152458, 28.770794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113896, 0.826751, -0.550918,
		0.355300, 0.483957, 0.799717,
		0.927787, -0.286826, -0.238624,
		32.241211, 30.066410, 28.699207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886820, 30.853683, 28.922407>,  <31.591759, 30.267189, 28.866243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886820, 30.853683, 28.922407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151722, 30.641113, 28.711124>,  <32.310661, 30.513571, 28.584354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151722, 30.641113, 28.711124>,  <31.886820, 30.853683, 28.922407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151722, 30.641113, 28.711124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143803, 0.781997, -0.606466,
		0.735349, 0.325677, 0.594303,
		0.662255, -0.531427, -0.528208,
		32.350399, 30.481686, 28.552662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517712, 31.301620, 28.725073>,  <31.886820, 30.853683, 28.922407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517712, 31.301620, 28.725073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546497, 30.982536, 28.485580>,  <32.563770, 30.791086, 28.341885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546497, 30.982536, 28.485580>,  <32.517712, 31.301620, 28.725073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546497, 30.982536, 28.485580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227330, 0.597608, -0.768886,
		0.971155, -0.080776, 0.224351,
		0.071966, -0.797709, -0.598733,
		32.568089, 30.743223, 28.305960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120903, 31.366394, 28.333242>,  <32.517712, 31.301620, 28.725073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120903, 31.366394, 28.333242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888882, 31.144852, 28.094318>,  <32.749668, 31.011927, 27.950964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888882, 31.144852, 28.094318>,  <33.120903, 31.366394, 28.333242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888882, 31.144852, 28.094318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191347, 0.620113, -0.760820,
		0.791783, -0.555612, -0.253722,
		-0.580057, -0.553855, -0.597310,
		32.714863, 30.978695, 27.915125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454880, 31.401197, 27.679434>,  <33.120903, 31.366394, 28.333242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454880, 31.401197, 27.679434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088005, 31.276360, 27.580349>,  <32.867878, 31.201458, 27.520899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088005, 31.276360, 27.580349>,  <33.454880, 31.401197, 27.679434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088005, 31.276360, 27.580349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011235, 0.641697, -0.766876,
		0.398291, -0.700588, -0.592064,
		-0.917190, -0.312092, -0.247711,
		32.812847, 31.182732, 27.506035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387577, 31.302988, 26.925123>,  <33.454880, 31.401197, 27.679434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387577, 31.302988, 26.925123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013084, 31.371048, 27.048096>,  <32.788387, 31.411884, 27.121880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013084, 31.371048, 27.048096>,  <33.387577, 31.302988, 26.925123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013084, 31.371048, 27.048096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130024, 0.645059, -0.752989,
		-0.326432, -0.744948, -0.581802,
		-0.936235, 0.170152, 0.307429,
		32.732212, 31.422092, 27.140324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910248, 31.329311, 26.306654>,  <33.387577, 31.302988, 26.925123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910248, 31.329311, 26.306654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720627, 31.507767, 26.610294>,  <32.606853, 31.614840, 26.792479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720627, 31.507767, 26.610294>,  <32.910248, 31.329311, 26.306654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720627, 31.507767, 26.610294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173657, 0.797822, -0.577342,
		-0.863202, -0.405514, -0.300735,
		-0.474053, 0.446138, 0.759102,
		32.578411, 31.641607, 26.838024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257019, 31.486492, 26.016624>,  <32.910248, 31.329311, 26.306654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257019, 31.486492, 26.016624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282013, 31.736771, 26.327648>,  <32.297009, 31.886938, 26.514263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282013, 31.736771, 26.327648>,  <32.257019, 31.486492, 26.016624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282013, 31.736771, 26.327648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191527, 0.772118, -0.605930,
		-0.979497, -0.111063, 0.168082,
		0.062483, 0.625698, 0.777559,
		32.300758, 31.924480, 26.560915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789499, 31.909071, 25.892902>,  <32.257019, 31.486492, 26.016624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789499, 31.909071, 25.892902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004364, 32.119175, 26.156891>,  <32.133282, 32.245235, 26.315283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004364, 32.119175, 26.156891>,  <31.789499, 31.909071, 25.892902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004364, 32.119175, 26.156891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122153, 0.822633, -0.555295,
		-0.834586, 0.217667, 0.506050,
		0.537163, 0.525258, 0.659970,
		32.165512, 32.276752, 26.354881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265347, 32.479221, 26.171072>,  <31.789499, 31.909071, 25.892902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265347, 32.479221, 26.171072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654232, 32.567726, 26.201660>,  <31.887564, 32.620831, 26.220013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654232, 32.567726, 26.201660>,  <31.265347, 32.479221, 26.171072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654232, 32.567726, 26.201660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118021, 0.745348, -0.656145,
		-0.202177, 0.628887, 0.750750,
		0.972212, 0.221262, 0.076471,
		31.945896, 32.634106, 26.224602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841314, 33.060314, 26.450117>,  <31.265347, 32.479221, 26.171072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841314, 33.060314, 26.450117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476927, 33.224487, 26.466515>,  <30.258295, 33.322990, 26.476353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476927, 33.224487, 26.466515>,  <30.841314, 33.060314, 26.450117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476927, 33.224487, 26.466515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226093, -0.579993, 0.782618,
		0.344989, 0.703672, 0.621151,
		-0.910969, 0.410432, 0.040996,
		30.203636, 33.347618, 26.478813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726927, 33.220963, 27.168638>,  <30.841314, 33.060314, 26.450117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726927, 33.220963, 27.168638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354376, 33.197498, 27.024918>,  <30.130846, 33.183418, 26.938686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354376, 33.197498, 27.024918>,  <30.726927, 33.220963, 27.168638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354376, 33.197498, 27.024918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334386, -0.252411, 0.908006,
		-0.143955, 0.965841, 0.215474,
		-0.931377, -0.058660, -0.359299,
		30.074963, 33.179901, 26.917128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386492, 33.638042, 27.594746>,  <30.726927, 33.220963, 27.168638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386492, 33.638042, 27.594746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108839, 33.402142, 27.429638>,  <29.942247, 33.260601, 27.330574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108839, 33.402142, 27.429638>,  <30.386492, 33.638042, 27.594746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108839, 33.402142, 27.429638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350064, -0.224491, 0.909428,
		-0.628996, 0.775758, -0.050623,
		-0.694132, -0.589748, -0.412769,
		29.900600, 33.225216, 27.305807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801085, 33.727844, 28.047121>,  <30.386492, 33.638042, 27.594746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801085, 33.727844, 28.047121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707798, 33.391052, 27.852520>,  <29.651827, 33.188976, 27.735760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707798, 33.391052, 27.852520>,  <29.801085, 33.727844, 28.047121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707798, 33.391052, 27.852520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548057, -0.299464, 0.780996,
		-0.803271, 0.448773, -0.391611,
		-0.233216, -0.841976, -0.486504,
		29.637833, 33.138458, 27.706570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049910, 33.574593, 28.235697>,  <29.801085, 33.727844, 28.047121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049910, 33.574593, 28.235697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228056, 33.244877, 28.095875>,  <29.334944, 33.047047, 28.011982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228056, 33.244877, 28.095875>,  <29.049910, 33.574593, 28.235697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228056, 33.244877, 28.095875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430427, -0.539453, 0.723687,
		-0.785099, -0.171849, -0.595052,
		0.445368, -0.824293, -0.349556,
		29.361666, 32.997589, 27.991009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585543, 32.941303, 28.247766>,  <29.049910, 33.574593, 28.235697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585543, 32.941303, 28.247766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915859, 32.728195, 28.173771>,  <29.114050, 32.600330, 28.129374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915859, 32.728195, 28.173771>,  <28.585543, 32.941303, 28.247766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915859, 32.728195, 28.173771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374905, -0.763624, 0.525667,
		-0.421321, -0.364739, -0.830334,
		0.825794, -0.532770, -0.184988,
		29.163597, 32.568363, 28.118275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413721, 32.288826, 27.972145>,  <28.585543, 32.941303, 28.247766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413721, 32.288826, 27.972145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780964, 32.215954, 28.112938>,  <29.001308, 32.172230, 28.197414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780964, 32.215954, 28.112938>,  <28.413721, 32.288826, 27.972145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780964, 32.215954, 28.112938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322800, -0.859009, 0.397372,
		0.229962, -0.478449, -0.847469,
		0.918105, -0.182182, 0.351983,
		29.056396, 32.161301, 28.218533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596439, 31.610218, 27.738438>,  <28.413721, 32.288826, 27.972145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596439, 31.610218, 27.738438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838072, 31.683277, 28.048721>,  <28.983051, 31.727112, 28.234892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838072, 31.683277, 28.048721>,  <28.596439, 31.610218, 27.738438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838072, 31.683277, 28.048721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215689, -0.899580, 0.379781,
		0.767179, -0.396731, -0.504025,
		0.604082, 0.182648, 0.775709,
		29.019297, 31.738071, 28.281435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002378, 30.948425, 27.888329>,  <28.596439, 31.610218, 27.738438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002378, 30.948425, 27.888329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981972, 31.173065, 28.218662>,  <28.969727, 31.307850, 28.416862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981972, 31.173065, 28.218662>,  <29.002378, 30.948425, 27.888329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981972, 31.173065, 28.218662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326255, -0.790914, 0.517700,
		0.943904, -0.243020, 0.223576,
		-0.051018, 0.561601, 0.825833,
		28.966667, 31.341545, 28.466412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416195, 30.637705, 28.482647>,  <29.002378, 30.948425, 27.888329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416195, 30.637705, 28.482647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153028, 30.871738, 28.672310>,  <28.995129, 31.012157, 28.786108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153028, 30.871738, 28.672310>,  <29.416195, 30.637705, 28.482647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153028, 30.871738, 28.672310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211007, -0.747612, 0.629723,
		0.722927, 0.314253, 0.615322,
		-0.657915, 0.585082, 0.474160,
		28.955654, 31.047262, 28.814558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515438, 30.438765, 29.309309>,  <29.416195, 30.637705, 28.482647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515438, 30.438765, 29.309309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160423, 30.618149, 29.267044>,  <28.947414, 30.725779, 29.241686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160423, 30.618149, 29.267044>,  <29.515438, 30.438765, 29.309309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160423, 30.618149, 29.267044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394625, -0.621550, 0.676717,
		0.237806, 0.642307, 0.728622,
		-0.887535, 0.448460, -0.105662,
		28.894163, 30.752687, 29.235346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267344, 30.652370, 29.946228>,  <29.515438, 30.438765, 29.309309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267344, 30.652370, 29.946228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927603, 30.646465, 29.735180>,  <28.723759, 30.642921, 29.608551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927603, 30.646465, 29.735180>,  <29.267344, 30.652370, 29.946228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927603, 30.646465, 29.735180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445410, -0.516310, 0.731460,
		-0.283213, 0.856275, 0.431954,
		-0.849353, -0.014763, -0.527619,
		28.672796, 30.642036, 29.576895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819077, 30.824219, 30.418346>,  <29.267344, 30.652370, 29.946228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819077, 30.824219, 30.418346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597813, 30.677017, 30.119392>,  <28.465054, 30.588697, 29.940020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597813, 30.677017, 30.119392>,  <28.819077, 30.824219, 30.418346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597813, 30.677017, 30.119392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576003, -0.479196, 0.662263,
		-0.601859, 0.796835, 0.053102,
		-0.553161, -0.368002, -0.747387,
		28.431864, 30.566616, 29.895176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058594, 30.775156, 30.740961>,  <28.819077, 30.824219, 30.418346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058594, 30.775156, 30.740961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081661, 30.539597, 30.418503>,  <28.095501, 30.398260, 30.225027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081661, 30.539597, 30.418503>,  <28.058594, 30.775156, 30.740961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081661, 30.539597, 30.418503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595528, -0.668381, 0.445662,
		-0.801263, 0.454382, -0.389249,
		0.057666, -0.588901, -0.806145,
		28.098961, 30.362926, 30.176659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424406, 30.372959, 30.727339>,  <28.058594, 30.775156, 30.740961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424406, 30.372959, 30.727339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696554, 30.166759, 30.518970>,  <27.859842, 30.043039, 30.393950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696554, 30.166759, 30.518970>,  <27.424406, 30.372959, 30.727339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696554, 30.166759, 30.518970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394014, -0.856623, 0.333092,
		-0.617941, -0.021375, -0.785934,
		0.680369, -0.515501, -0.520920,
		27.900665, 30.012110, 30.362694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050713, 29.776527, 30.480612>,  <27.424406, 30.372959, 30.727339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050713, 29.776527, 30.480612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433409, 29.667316, 30.440411>,  <27.663027, 29.601789, 30.416290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433409, 29.667316, 30.440411>,  <27.050713, 29.776527, 30.480612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433409, 29.667316, 30.440411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221861, -0.908137, 0.355055,
		-0.188212, -0.317398, -0.929427,
		0.956741, -0.273029, -0.100504,
		27.720430, 29.585407, 30.410259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039850, 29.033497, 30.384834>,  <27.050713, 29.776527, 30.480612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039850, 29.033497, 30.384834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425339, 29.075523, 30.482975>,  <27.656631, 29.100740, 30.541861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425339, 29.075523, 30.482975>,  <27.039850, 29.033497, 30.384834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425339, 29.075523, 30.482975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022147, -0.884609, 0.465807,
		0.265983, -0.454343, -0.850191,
		0.963723, 0.105068, 0.245353,
		27.714457, 29.107044, 30.556581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445110, 28.403807, 30.104828>,  <27.039850, 29.033497, 30.384834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445110, 28.403807, 30.104828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622524, 28.571804, 30.421532>,  <27.728971, 28.672602, 30.611555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622524, 28.571804, 30.421532>,  <27.445110, 28.403807, 30.104828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622524, 28.571804, 30.421532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349926, -0.894441, 0.278436,
		0.825124, 0.153562, -0.543681,
		0.443533, 0.419992, 0.791761,
		27.755585, 28.697802, 30.659060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944908, 27.884415, 30.301472>,  <27.445110, 28.403807, 30.104828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944908, 27.884415, 30.301472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942724, 28.163998, 30.587528>,  <27.941414, 28.331747, 30.759163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942724, 28.163998, 30.587528>,  <27.944908, 27.884415, 30.301472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942724, 28.163998, 30.587528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424012, -0.646064, 0.634678,
		0.905640, 0.306692, -0.292840,
		-0.005458, 0.698958, 0.715142,
		27.941088, 28.373686, 30.802071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553085, 27.960806, 30.516155>,  <27.944908, 27.884415, 30.301472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553085, 27.960806, 30.516155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310280, 28.057159, 30.819077>,  <28.164597, 28.114971, 31.000830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310280, 28.057159, 30.819077>,  <28.553085, 27.960806, 30.516155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310280, 28.057159, 30.819077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242938, -0.851085, 0.465441,
		0.756648, 0.466507, 0.458099,
		-0.607013, 0.240886, 0.757304,
		28.128176, 28.129425, 31.046268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906725, 27.736362, 31.163019>,  <28.553085, 27.960806, 30.516155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906725, 27.736362, 31.163019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528296, 27.785736, 31.282825>,  <28.301237, 27.815359, 31.354710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528296, 27.785736, 31.282825>,  <28.906725, 27.736362, 31.163019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528296, 27.785736, 31.282825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036128, -0.878597, 0.476196,
		0.321932, 0.461337, 0.826758,
		-0.946073, 0.123433, 0.299515,
		28.244474, 27.822765, 31.372681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877855, 27.650288, 31.856230>,  <28.906725, 27.736362, 31.163019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877855, 27.650288, 31.856230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487831, 27.606586, 31.778954>,  <28.253817, 27.580366, 31.732588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487831, 27.606586, 31.778954>,  <28.877855, 27.650288, 31.856230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487831, 27.606586, 31.778954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013084, -0.840648, 0.541424,
		-0.221558, 0.530449, 0.818252,
		-0.975059, -0.109251, -0.193192,
		28.195312, 27.573811, 31.720995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595461, 27.474865, 32.518642>,  <28.877855, 27.650288, 31.856230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595461, 27.474865, 32.518642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343952, 27.354446, 32.231861>,  <28.193047, 27.282194, 32.059792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343952, 27.354446, 32.231861>,  <28.595461, 27.474865, 32.518642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343952, 27.354446, 32.231861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271574, -0.778936, 0.565249,
		-0.728624, 0.550118, 0.408016,
		-0.628772, -0.301047, -0.716949,
		28.155321, 27.264132, 32.016777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867970, 27.292156, 32.845242>,  <28.595461, 27.474865, 32.518642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867970, 27.292156, 32.845242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878473, 27.108364, 32.490124>,  <27.884775, 26.998089, 32.277054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878473, 27.108364, 32.490124>,  <27.867970, 27.292156, 32.845242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878473, 27.108364, 32.490124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382810, -0.825028, 0.415673,
		-0.923454, 0.328944, -0.197557,
		0.026257, -0.459482, -0.887799,
		27.886351, 26.970520, 32.223785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164558, 26.881628, 32.704674>,  <27.867970, 27.292156, 32.845242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164558, 26.881628, 32.704674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442196, 26.722656, 32.464581>,  <27.608778, 26.627274, 32.320522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442196, 26.722656, 32.464581>,  <27.164558, 26.881628, 32.704674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442196, 26.722656, 32.464581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214961, -0.910177, 0.354075,
		-0.687041, -0.116734, -0.717181,
		0.694094, -0.397430, -0.600236,
		27.650425, 26.603428, 32.284512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844727, 26.157570, 32.569309>,  <27.164558, 26.881628, 32.704674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844727, 26.157570, 32.569309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218275, 26.132271, 32.428524>,  <27.442404, 26.117090, 32.344051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218275, 26.132271, 32.428524>,  <26.844727, 26.157570, 32.569309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218275, 26.132271, 32.428524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041656, -0.958293, 0.282734,
		-0.355169, -0.278699, -0.892290,
		0.933874, -0.063249, -0.351966,
		27.498438, 26.113297, 32.322933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787144, 25.704782, 32.060184>,  <26.844727, 26.157570, 32.569309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787144, 25.704782, 32.060184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165422, 25.699471, 32.190098>,  <27.392389, 25.696283, 32.268044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165422, 25.699471, 32.190098>,  <26.787144, 25.704782, 32.060184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165422, 25.699471, 32.190098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113074, -0.950204, 0.290392,
		0.304750, -0.311347, -0.900106,
		0.945696, -0.013281, 0.324780,
		27.449131, 25.695486, 32.287533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218407, 25.172546, 31.663015>,  <26.787144, 25.704782, 32.060184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218407, 25.172546, 31.663015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375380, 25.231838, 32.026119>,  <27.469564, 25.267414, 32.243980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375380, 25.231838, 32.026119>,  <27.218407, 25.172546, 31.663015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375380, 25.231838, 32.026119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162264, -0.960292, 0.226956,
		0.905354, -0.236362, -0.352799,
		0.392434, 0.148229, 0.907758,
		27.493111, 25.276306, 32.298447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448942, 24.531200, 31.768436>,  <27.218407, 25.172546, 31.663015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448942, 24.531200, 31.768436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480204, 24.705574, 32.127068>,  <27.498960, 24.810198, 32.342247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480204, 24.705574, 32.127068>,  <27.448942, 24.531200, 31.768436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480204, 24.705574, 32.127068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014462, -0.898739, 0.438246,
		0.996836, -0.047217, -0.063937,
		0.078155, 0.435934, 0.896578,
		27.503651, 24.836355, 32.396042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740704, 24.063589, 32.123875>,  <27.448942, 24.531200, 31.768436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740704, 24.063589, 32.123875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595490, 24.298016, 32.413628>,  <27.508362, 24.438671, 32.587479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595490, 24.298016, 32.413628>,  <27.740704, 24.063589, 32.123875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595490, 24.298016, 32.413628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070664, -0.792501, 0.605763,
		0.929093, 0.168724, 0.329119,
		-0.363034, 0.586067, 0.724384,
		27.486580, 24.473835, 32.630943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097872, 23.856287, 32.669128>,  <27.740704, 24.063589, 32.123875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097872, 23.856287, 32.669128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769268, 24.031189, 32.815514>,  <27.572105, 24.136131, 32.903347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769268, 24.031189, 32.815514>,  <28.097872, 23.856287, 32.669128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769268, 24.031189, 32.815514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078223, -0.722180, 0.687268,
		0.564806, 0.535969, 0.627480,
		-0.821508, 0.437256, 0.365967,
		27.522816, 24.162365, 32.925304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121765, 23.821604, 33.398666>,  <28.097872, 23.856287, 32.669128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121765, 23.821604, 33.398666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731405, 23.835663, 33.312523>,  <27.497189, 23.844099, 33.260838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731405, 23.835663, 33.312523>,  <28.121765, 23.821604, 33.398666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731405, 23.835663, 33.312523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192439, -0.603916, 0.773468,
		-0.102875, 0.796272, 0.596127,
		-0.975902, 0.035147, -0.215362,
		27.438635, 23.846207, 33.247913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851875, 23.937771, 34.110977>,  <28.121765, 23.821604, 33.398666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851875, 23.937771, 34.110977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537590, 23.844982, 33.881599>,  <27.349018, 23.789309, 33.743973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537590, 23.844982, 33.881599>,  <27.851875, 23.937771, 34.110977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537590, 23.844982, 33.881599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316356, -0.645938, 0.694754,
		-0.531576, 0.727291, 0.434136,
		-0.785714, -0.231973, -0.573448,
		27.301876, 23.775391, 33.709564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180782, 23.987272, 34.517773>,  <27.851875, 23.937771, 34.110977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180782, 23.987272, 34.517773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170450, 23.712315, 34.227444>,  <27.164251, 23.547340, 34.053246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170450, 23.712315, 34.227444>,  <27.180782, 23.987272, 34.517773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170450, 23.712315, 34.227444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339929, -0.676759, 0.653027,
		-0.940096, 0.263597, -0.216185,
		-0.025831, -0.687396, -0.725823,
		27.162701, 23.506096, 34.009697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640316, 23.491224, 34.800552>,  <27.180782, 23.987272, 34.517773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640316, 23.491224, 34.800552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799353, 23.276657, 34.502781>,  <26.894775, 23.147917, 34.324116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799353, 23.276657, 34.502781>,  <26.640316, 23.491224, 34.800552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799353, 23.276657, 34.502781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272331, -0.843743, 0.462529,
		-0.876217, 0.018834, -0.481548,
		0.397591, -0.536416, -0.744431,
		26.918631, 23.115732, 34.279453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241787, 22.771841, 34.856808>,  <26.640316, 23.491224, 34.800552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241787, 22.771841, 34.856808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552876, 22.680080, 34.622704>,  <26.739529, 22.625023, 34.482243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552876, 22.680080, 34.622704>,  <26.241787, 22.771841, 34.856808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552876, 22.680080, 34.622704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127546, -0.969253, 0.210429,
		-0.615534, -0.089008, -0.783068,
		0.777721, -0.229403, -0.585256,
		26.786192, 22.611259, 34.447128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009392, 22.287216, 34.319653>,  <26.241787, 22.771841, 34.856808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009392, 22.287216, 34.319653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404720, 22.259411, 34.373890>,  <26.641918, 22.242727, 34.406433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404720, 22.259411, 34.373890>,  <26.009392, 22.287216, 34.319653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404720, 22.259411, 34.373890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078864, -0.994773, 0.064855,
		0.130379, -0.074791, -0.988639,
		0.988323, -0.069513, 0.135596,
		26.701218, 22.238558, 34.414570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233313, 21.785240, 33.892464>,  <26.009392, 22.287216, 34.319653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233313, 21.785240, 33.892464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527845, 21.800617, 34.162674>,  <26.704565, 21.809843, 34.324802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527845, 21.800617, 34.162674>,  <26.233313, 21.785240, 33.892464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527845, 21.800617, 34.162674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148742, -0.983159, -0.106183,
		0.660069, 0.178666, -0.729648,
		0.736332, 0.038441, 0.675528,
		26.748745, 21.812149, 34.365334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.428909, 21.877462, 34.061344>,  <26.233313, 21.785240, 33.892464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.428909, 21.877462, 34.061344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152639, 21.773499, 33.791409>,  <24.986877, 21.711121, 33.629448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152639, 21.773499, 33.791409>,  <25.428909, 21.877462, 34.061344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.152639, 21.773499, 33.791409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104002, 0.887781, -0.448362,
		0.715646, -0.379859, -0.586138,
		-0.690676, -0.259909, -0.674843,
		24.945436, 21.695526, 33.588955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738012, 22.024279, 33.312263>,  <25.428909, 21.877462, 34.061344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738012, 22.024279, 33.312263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340006, 22.003666, 33.278122>,  <25.101202, 21.991299, 33.257637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340006, 22.003666, 33.278122>,  <25.738012, 22.024279, 33.312263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340006, 22.003666, 33.278122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003915, 0.835207, -0.549922,
		0.099623, -0.547516, -0.830844,
		-0.995017, -0.051532, -0.085350,
		25.041500, 21.988207, 33.252518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595966, 21.901020, 32.522232>,  <25.738012, 22.024279, 33.312263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595966, 21.901020, 32.522232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281490, 22.051174, 32.718594>,  <25.092804, 22.141266, 32.836411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281490, 22.051174, 32.718594>,  <25.595966, 21.901020, 32.522232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281490, 22.051174, 32.718594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037466, 0.763955, -0.644181,
		-0.616845, -0.524842, -0.586551,
		-0.786192, 0.375385, 0.490906,
		25.045633, 22.163790, 32.865864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.277903, 22.114340, 32.019829>,  <25.595966, 21.901020, 32.522232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.277903, 22.114340, 32.019829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079622, 22.304394, 32.310627>,  <24.960653, 22.418427, 32.485107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079622, 22.304394, 32.310627>,  <25.277903, 22.114340, 32.019829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079622, 22.304394, 32.310627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175654, 0.764930, -0.619699,
		-0.850543, -0.434887, -0.295719,
		-0.495703, 0.475137, 0.726996,
		24.930912, 22.446936, 32.528725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.697098, 22.363590, 31.683651>,  <25.277903, 22.114340, 32.019829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.697098, 22.363590, 31.683651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772068, 22.585358, 32.007996>,  <24.817049, 22.718418, 32.202602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772068, 22.585358, 32.007996>,  <24.697098, 22.363590, 31.683651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.772068, 22.585358, 32.007996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105882, 0.832081, -0.544454,
		-0.976556, 0.016188, 0.214655,
		0.187424, 0.554417, 0.810860,
		24.828295, 22.751682, 32.251255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.090864, 22.936522, 31.754478>,  <24.697098, 22.363590, 31.683651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.090864, 22.936522, 31.754478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429232, 23.047329, 31.936768>,  <24.632252, 23.113813, 32.046143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429232, 23.047329, 31.936768>,  <24.090864, 22.936522, 31.754478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.429232, 23.047329, 31.936768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048017, 0.890606, -0.452234,
		-0.531146, 0.360671, 0.766681,
		0.845918, 0.277016, 0.455724,
		24.683006, 23.130434, 32.073486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.997412, 23.615524, 31.706488>,  <24.090864, 22.936522, 31.754478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.997412, 23.615524, 31.706488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377556, 23.575493, 31.824333>,  <24.605642, 23.551474, 31.895041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377556, 23.575493, 31.824333>,  <23.997412, 23.615524, 31.706488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.377556, 23.575493, 31.824333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194945, 0.929495, -0.313108,
		-0.242507, 0.354999, 0.902866,
		0.950362, -0.100078, 0.294614,
		24.662664, 23.545469, 31.912718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.196032, 24.218851, 32.027290>,  <23.997412, 23.615524, 31.706488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.196032, 24.218851, 32.027290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.553944, 24.058105, 31.949440>,  <24.768690, 23.961658, 31.902731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.553944, 24.058105, 31.949440>,  <24.196032, 24.218851, 32.027290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.553944, 24.058105, 31.949440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296750, 0.860891, -0.413287,
		0.333633, 0.312046, 0.889560,
		0.894779, -0.401863, -0.194623,
		24.822376, 23.937546, 31.891054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581415, 24.782946, 32.251141>,  <24.196032, 24.218851, 32.027290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581415, 24.782946, 32.251141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788305, 24.557182, 31.993793>,  <24.912439, 24.421724, 31.839386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788305, 24.557182, 31.993793>,  <24.581415, 24.782946, 32.251141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788305, 24.557182, 31.993793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486678, 0.812321, -0.321370,
		0.704003, -0.146890, 0.694840,
		0.517227, -0.564409, -0.643365,
		24.943474, 24.387859, 31.800783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.282976, 25.162537, 32.104733>,  <24.581415, 24.782946, 32.251141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.282976, 25.162537, 32.104733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269041, 24.877926, 31.824017>,  <25.260679, 24.707159, 31.655586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269041, 24.877926, 31.824017>,  <25.282976, 25.162537, 32.104733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.269041, 24.877926, 31.824017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625049, 0.532416, -0.570830,
		0.779808, -0.458541, 0.426193,
		-0.034837, -0.711529, -0.701792,
		25.258591, 24.664467, 31.613480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989521, 25.268501, 31.756672>,  <25.282976, 25.162537, 32.104733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989521, 25.268501, 31.756672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734169, 25.077942, 31.514839>,  <25.580957, 24.963606, 31.369740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734169, 25.077942, 31.514839>,  <25.989521, 25.268501, 31.756672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734169, 25.077942, 31.514839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423355, 0.438667, -0.792680,
		0.642841, -0.761982, -0.078350,
		-0.638378, -0.476398, -0.604582,
		25.542656, 24.935022, 31.333466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354725, 24.866301, 31.180109>,  <25.989521, 25.268501, 31.756672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354725, 24.866301, 31.180109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984493, 24.950642, 31.054352>,  <25.762354, 25.001247, 30.978897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984493, 24.950642, 31.054352>,  <26.354725, 24.866301, 31.180109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984493, 24.950642, 31.054352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377311, 0.581107, -0.721076,
		0.030655, -0.786038, -0.617418,
		-0.925579, 0.210854, -0.314395,
		25.706820, 25.013897, 30.960033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406485, 24.792252, 30.382610>,  <26.354725, 24.866301, 31.180109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406485, 24.792252, 30.382610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072943, 25.007133, 30.433361>,  <25.872818, 25.136063, 30.463812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072943, 25.007133, 30.433361>,  <26.406485, 24.792252, 30.382610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072943, 25.007133, 30.433361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300812, 0.634977, -0.711559,
		-0.462819, -0.555169, -0.691076,
		-0.833853, 0.537207, 0.126878,
		25.822786, 25.168295, 30.471424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318619, 25.003645, 29.794849>,  <26.406485, 24.792252, 30.382610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318619, 25.003645, 29.794849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078394, 25.249977, 29.998840>,  <25.934259, 25.397776, 30.121235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078394, 25.249977, 29.998840>,  <26.318619, 25.003645, 29.794849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078394, 25.249977, 29.998840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243591, 0.748407, -0.616888,
		-0.761569, -0.246255, -0.599476,
		-0.600564, 0.615829, 0.509978,
		25.898224, 25.434727, 30.151834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851381, 25.260347, 29.289030>,  <26.318619, 25.003645, 29.794849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851381, 25.260347, 29.289030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851912, 25.512428, 29.599602>,  <25.852230, 25.663677, 29.785944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851912, 25.512428, 29.599602>,  <25.851381, 25.260347, 29.289030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851912, 25.512428, 29.599602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151963, 0.767285, -0.623041,
		-0.988385, 0.118814, -0.094752,
		0.001324, 0.630203, 0.776429,
		25.852308, 25.701488, 29.832531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398247, 25.844843, 29.115616>,  <25.851381, 25.260347, 29.289030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398247, 25.844843, 29.115616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591448, 25.996769, 29.431198>,  <25.707369, 26.087925, 29.620548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591448, 25.996769, 29.431198>,  <25.398247, 25.844843, 29.115616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591448, 25.996769, 29.431198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186556, 0.835701, -0.516528,
		-0.855515, 0.396668, 0.332790,
		0.483003, 0.379813, 0.788955,
		25.736349, 26.110712, 29.667885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073462, 26.487209, 29.304970>,  <25.398247, 25.844843, 29.115616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073462, 26.487209, 29.304970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437027, 26.520092, 29.468491>,  <25.655167, 26.539822, 29.566603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437027, 26.520092, 29.468491>,  <25.073462, 26.487209, 29.304970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437027, 26.520092, 29.468491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121054, 0.886134, -0.447339,
		-0.399029, 0.456080, 0.795467,
		0.908912, 0.082206, 0.408803,
		25.709702, 26.544754, 29.591131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133247, 27.117317, 29.769432>,  <25.073462, 26.487209, 29.304970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133247, 27.117317, 29.769432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504961, 27.045692, 29.640209>,  <25.727989, 27.002718, 29.562675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504961, 27.045692, 29.640209>,  <25.133247, 27.117317, 29.769432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504961, 27.045692, 29.640209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000395, 0.875114, -0.483917,
		0.369361, 0.449569, 0.813302,
		0.929286, -0.179061, -0.323056,
		25.783747, 26.991974, 29.543293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394062, 27.762918, 29.715908>,  <25.133247, 27.117317, 29.769432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394062, 27.762918, 29.715908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663588, 27.551121, 29.509758>,  <25.825302, 27.424042, 29.386068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663588, 27.551121, 29.509758>,  <25.394062, 27.762918, 29.715908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663588, 27.551121, 29.509758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253002, 0.820658, -0.512357,
		0.694236, 0.214843, 0.686934,
		0.673815, -0.529493, -0.515375,
		25.865732, 27.392273, 29.355145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131010, 27.963274, 29.989700>,  <25.394062, 27.762918, 29.715908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131010, 27.963274, 29.989700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167730, 27.827812, 29.615131>,  <26.189762, 27.746534, 29.390390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167730, 27.827812, 29.615131>,  <26.131010, 27.963274, 29.989700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167730, 27.827812, 29.615131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402404, 0.872802, -0.276199,
		0.910847, -0.351465, 0.216400,
		0.091800, -0.338655, -0.936421,
		26.195271, 27.726215, 29.334206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843239, 28.187845, 29.699028>,  <26.131010, 27.963274, 29.989700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843239, 28.187845, 29.699028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626715, 28.136715, 29.366608>,  <26.496799, 28.106037, 29.167156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626715, 28.136715, 29.366608>,  <26.843239, 28.187845, 29.699028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626715, 28.136715, 29.366608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349059, 0.865021, -0.360413,
		0.764945, -0.485181, -0.423627,
		-0.541311, -0.127826, -0.831049,
		26.464321, 28.098368, 29.117292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247137, 28.223930, 29.120745>,  <26.843239, 28.187845, 29.699028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247137, 28.223930, 29.120745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881702, 28.312317, 28.984196>,  <26.662441, 28.365349, 28.902266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881702, 28.312317, 28.984196>,  <27.247137, 28.223930, 29.120745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881702, 28.312317, 28.984196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373935, 0.786378, -0.491714,
		0.159797, -0.576874, -0.801050,
		-0.913585, 0.220966, -0.341374,
		26.607626, 28.378607, 28.881783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464966, 28.565897, 28.584522>,  <27.247137, 28.223930, 29.120745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464966, 28.565897, 28.584522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076334, 28.652775, 28.622185>,  <26.843155, 28.704901, 28.644781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076334, 28.652775, 28.622185>,  <27.464966, 28.565897, 28.584522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076334, 28.652775, 28.622185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150968, 0.874854, -0.460260,
		-0.182337, -0.432964, -0.882777,
		-0.971577, 0.217193, 0.094155,
		26.784861, 28.717934, 28.650431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257715, 28.797199, 27.964283>,  <27.464966, 28.565897, 28.584522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257715, 28.797199, 27.964283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957754, 28.924633, 28.196198>,  <26.777779, 29.001093, 28.335346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957754, 28.924633, 28.196198>,  <27.257715, 28.797199, 27.964283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957754, 28.924633, 28.196198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001813, 0.875412, -0.483374,
		-0.661548, -0.363534, -0.655895,
		-0.749901, 0.318586, 0.579786,
		26.732784, 29.020208, 28.370132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821310, 29.086908, 27.540287>,  <27.257715, 28.797199, 27.964283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821310, 29.086908, 27.540287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683523, 29.281654, 27.861362>,  <26.600851, 29.398502, 28.054007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683523, 29.281654, 27.861362>,  <26.821310, 29.086908, 27.540287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683523, 29.281654, 27.861362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161194, 0.811644, -0.561472,
		-0.924855, -0.322798, -0.201107,
		-0.344469, 0.486863, 0.802686,
		26.580183, 29.427713, 28.102169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183924, 29.428318, 27.363796>,  <26.821310, 29.086908, 27.540287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183924, 29.428318, 27.363796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282263, 29.623196, 27.698986>,  <26.341267, 29.740122, 27.900101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282263, 29.623196, 27.698986>,  <26.183924, 29.428318, 27.363796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282263, 29.623196, 27.698986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204516, 0.871118, -0.446460,
		-0.947488, -0.061619, 0.313799,
		0.245846, 0.487193, 0.837976,
		26.356016, 29.769354, 27.950378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611767, 29.804434, 27.514793>,  <26.183924, 29.428318, 27.363796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.611767, 29.804434, 27.514793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927002, 29.978542, 27.688900>,  <26.116142, 30.083008, 27.793364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927002, 29.978542, 27.688900>,  <25.611767, 29.804434, 27.514793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927002, 29.978542, 27.688900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294320, 0.887486, -0.354606,
		-0.540643, 0.151353, 0.827525,
		0.788087, 0.435272, 0.435266,
		26.163427, 30.109123, 27.819481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272665, 30.401470, 27.726135>,  <25.611767, 29.804434, 27.514793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272665, 30.401470, 27.726135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668686, 30.453552, 27.704811>,  <25.906300, 30.484800, 27.692017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668686, 30.453552, 27.704811>,  <25.272665, 30.401470, 27.726135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668686, 30.453552, 27.704811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139921, 0.871517, -0.469978,
		-0.014733, 0.472762, 0.881067,
		0.990053, 0.130204, -0.053310,
		25.965702, 30.492613, 27.688818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.253990, 31.077480, 27.722607>,  <25.272665, 30.401470, 27.726135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.253990, 31.077480, 27.722607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620516, 30.983261, 27.593063>,  <25.840431, 30.926729, 27.515337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620516, 30.983261, 27.593063>,  <25.253990, 31.077480, 27.722607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620516, 30.983261, 27.593063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035085, 0.758392, -0.650854,
		0.398918, 0.607750, 0.686662,
		0.916315, -0.235546, -0.323859,
		25.895411, 30.912598, 27.495905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463003, 31.685932, 27.610361>,  <25.253990, 31.077480, 27.722607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463003, 31.685932, 27.610361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697910, 31.443188, 27.396133>,  <25.838854, 31.297541, 27.267597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697910, 31.443188, 27.396133>,  <25.463003, 31.685932, 27.610361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697910, 31.443188, 27.396133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087091, 0.610472, -0.787235,
		0.804694, 0.508961, 0.305658,
		0.587267, -0.606863, -0.535569,
		25.874090, 31.261129, 27.235462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002377, 32.120190, 27.266100>,  <25.463003, 31.685932, 27.610361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002377, 32.120190, 27.266100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.937674, 31.771576, 27.080944>,  <25.898851, 31.562408, 26.969851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.937674, 31.771576, 27.080944>,  <26.002377, 32.120190, 27.266100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.937674, 31.771576, 27.080944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332330, 0.489778, -0.806024,
		0.929189, 0.023453, -0.368860,
		-0.161756, -0.871532, -0.462891,
		25.889147, 31.510117, 26.942078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235975, 32.241631, 26.674038>,  <26.002377, 32.120190, 27.266100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235975, 32.241631, 26.674038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047178, 31.900166, 26.585964>,  <25.933901, 31.695286, 26.533119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047178, 31.900166, 26.585964>,  <26.235975, 32.241631, 26.674038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.047178, 31.900166, 26.585964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205358, 0.349345, -0.914213,
		0.857351, -0.386285, -0.340195,
		-0.471992, -0.853664, -0.220185,
		25.905581, 31.644066, 26.519909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451408, 32.197338, 25.925074>,  <26.235975, 32.241631, 26.674038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451408, 32.197338, 25.925074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139730, 31.958294, 26.000675>,  <25.952724, 31.814867, 26.046036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139730, 31.958294, 26.000675>,  <26.451408, 32.197338, 25.925074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139730, 31.958294, 26.000675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386966, 0.221455, -0.895106,
		0.493069, -0.770597, -0.403811,
		-0.779192, -0.597610, 0.189002,
		25.905973, 31.779011, 26.057377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372499, 31.648470, 25.433537>,  <26.451408, 32.197338, 25.925074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372499, 31.648470, 25.433537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997784, 31.682137, 25.569386>,  <25.772955, 31.702335, 25.650896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997784, 31.682137, 25.569386>,  <26.372499, 31.648470, 25.433537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997784, 31.682137, 25.569386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339694, 0.013916, -0.940433,
		-0.083883, -0.996354, 0.015556,
		-0.936788, 0.084170, 0.339623,
		25.716747, 31.707386, 25.671272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007515, 31.228579, 24.996567>,  <26.372499, 31.648470, 25.433537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007515, 31.228579, 24.996567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726320, 31.460098, 25.161880>,  <25.557604, 31.599010, 25.261068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726320, 31.460098, 25.161880>,  <26.007515, 31.228579, 24.996567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726320, 31.460098, 25.161880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465778, 0.064461, -0.882551,
		-0.537461, -0.812918, 0.224277,
		-0.702985, 0.578800, 0.413284,
		25.515425, 31.633738, 25.285866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438923, 31.055809, 24.681622>,  <26.007515, 31.228579, 24.996567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438923, 31.055809, 24.681622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326479, 31.398285, 24.855019>,  <25.259012, 31.603771, 24.959057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326479, 31.398285, 24.855019>,  <25.438923, 31.055809, 24.681622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.326479, 31.398285, 24.855019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597242, 0.197492, -0.777367,
		-0.751185, -0.477426, 0.455835,
		-0.281112, 0.856190, 0.433492,
		25.242146, 31.655142, 24.985065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730984, 31.097767, 24.440577>,  <25.438923, 31.055809, 24.681622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.730984, 31.097767, 24.440577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830513, 31.470634, 24.545761>,  <24.890230, 31.694355, 24.608871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830513, 31.470634, 24.545761>,  <24.730984, 31.097767, 24.440577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.830513, 31.470634, 24.545761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542715, 0.359063, -0.759299,
		-0.802214, 0.046218, 0.595245,
		0.248824, 0.932169, 0.262962,
		24.905161, 31.750284, 24.624649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.118704, 31.529482, 24.213594>,  <24.730984, 31.097767, 24.440577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.118704, 31.529482, 24.213594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414652, 31.795303, 24.255482>,  <24.592220, 31.954796, 24.280615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414652, 31.795303, 24.255482>,  <24.118704, 31.529482, 24.213594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414652, 31.795303, 24.255482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428629, 0.585619, -0.687988,
		-0.518529, 0.464135, 0.718127,
		0.739868, 0.664552, 0.104718,
		24.636612, 31.994669, 24.286898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.789869, 32.177059, 24.183151>,  <24.118704, 31.529482, 24.213594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.789869, 32.177059, 24.183151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168995, 32.271099, 24.097008>,  <24.396469, 32.327522, 24.045322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168995, 32.271099, 24.097008>,  <23.789869, 32.177059, 24.183151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.168995, 32.271099, 24.097008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287007, 0.334986, -0.897447,
		-0.138852, 0.912420, 0.384980,
		0.947812, 0.235104, -0.215358,
		24.453339, 32.341629, 24.032400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.872023, 32.917900, 24.131401>,  <23.789869, 32.177059, 24.183151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.872023, 32.917900, 24.131401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.138603, 32.724419, 23.904465>,  <24.298552, 32.608330, 23.768303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.138603, 32.724419, 23.904465>,  <23.872023, 32.917900, 24.131401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.138603, 32.724419, 23.904465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369258, 0.446924, -0.814805,
		0.647679, 0.752524, 0.119244,
		0.666454, -0.483701, -0.567339,
		24.338539, 32.579308, 23.734262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.343550, 33.443161, 23.728352>,  <23.872023, 32.917900, 24.131401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.343550, 33.443161, 23.728352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245255, 33.103977, 23.540489>,  <24.186277, 32.900467, 23.427773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245255, 33.103977, 23.540489>,  <24.343550, 33.443161, 23.728352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.245255, 33.103977, 23.540489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354868, 0.529574, -0.770467,
		0.902043, -0.022669, -0.431052,
		-0.245740, -0.847961, -0.469654,
		24.171534, 32.849590, 23.399593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.917456, 34.052055, 23.412682>,  <24.343550, 33.443161, 23.728352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.917456, 34.052055, 23.412682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.611359, 33.797756, 23.372234>,  <23.427700, 33.645176, 23.347967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.611359, 33.797756, 23.372234>,  <23.917456, 34.052055, 23.412682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.611359, 33.797756, 23.372234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576536, 0.606967, 0.546989,
		-0.286375, 0.476877, -0.831010,
		-0.765242, -0.635751, -0.101117,
		23.381786, 33.607029, 23.341900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.273504, 34.436539, 23.197502>,  <23.917456, 34.052055, 23.412682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.273504, 34.436539, 23.197502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.168388, 34.104839, 23.394798>,  <23.105320, 33.905819, 23.513176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.168388, 34.104839, 23.394798>,  <23.273504, 34.436539, 23.197502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.168388, 34.104839, 23.394798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620600, 0.536698, 0.571674,
		-0.738781, -0.155874, -0.655672,
		-0.262789, -0.829252, 0.493238,
		23.089552, 33.856064, 23.542770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.742905, 35.041603, 23.213661>,  <23.273504, 34.436539, 23.197502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.742905, 35.041603, 23.213661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.832937, 35.290085, 22.913410>,  <22.886957, 35.439175, 22.733259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.832937, 35.290085, 22.913410>,  <22.742905, 35.041603, 23.213661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.832937, 35.290085, 22.913410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916174, -0.127259, -0.380039,
		-0.331607, 0.773243, 0.540492,
		0.225080, 0.621209, -0.750626,
		22.900461, 35.476448, 22.688223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.177805, 35.571281, 23.106123>,  <22.742905, 35.041603, 23.213661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.177805, 35.571281, 23.106123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.383560, 35.555950, 22.763443>,  <22.507013, 35.546749, 22.557835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.383560, 35.555950, 22.763443>,  <22.177805, 35.571281, 23.106123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.383560, 35.555950, 22.763443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853308, 0.076434, -0.515774,
		0.085251, 0.996338, 0.006608,
		0.514390, -0.038331, -0.856699,
		22.537878, 35.544453, 22.506433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.874786, 35.938763, 23.662046>,  <22.177805, 35.571281, 23.106123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.874786, 35.938763, 23.662046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.550232, 35.844364, 23.875946>,  <21.355499, 35.787727, 24.004286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.550232, 35.844364, 23.875946>,  <21.874786, 35.938763, 23.662046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.550232, 35.844364, 23.875946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377949, -0.486058, -0.787973,
		0.445876, -0.841460, 0.305189,
		-0.811387, -0.235992, 0.534750,
		21.306816, 35.773567, 24.036371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.814161, 35.214920, 23.822729>,  <21.874786, 35.938763, 23.662046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.814161, 35.214920, 23.822729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.465208, 35.408974, 23.798767>,  <21.255836, 35.525406, 23.784389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.465208, 35.408974, 23.798767>,  <21.814161, 35.214920, 23.822729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.465208, 35.408974, 23.798767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317330, -0.655276, -0.685503,
		-0.371816, -0.579012, 0.725601,
		-0.872384, 0.485137, -0.059904,
		21.203493, 35.554516, 23.780796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.259344, 34.841270, 24.233829>,  <21.814161, 35.214920, 23.822729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.259344, 34.841270, 24.233829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.144085, 35.058617, 23.918430>,  <21.074928, 35.189022, 23.729191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.144085, 35.058617, 23.918430>,  <21.259344, 34.841270, 24.233829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.144085, 35.058617, 23.918430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185506, -0.839497, -0.510716,
		-0.939445, -0.000892, 0.342698,
		-0.288149, 0.543363, -0.788496,
		21.057640, 35.221626, 23.681881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.625036, 34.565735, 24.073469>,  <21.259344, 34.841270, 24.233829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.625036, 34.565735, 24.073469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.724794, 34.774754, 23.747341>,  <20.784649, 34.900166, 23.551664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.724794, 34.774754, 23.747341>,  <20.625036, 34.565735, 24.073469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.724794, 34.774754, 23.747341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421332, -0.699512, -0.577203,
		-0.871941, 0.487473, 0.045709,
		0.249397, 0.522545, -0.815320,
		20.799614, 34.931519, 23.502745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.014149, 34.512428, 23.652018>,  <20.625036, 34.565735, 24.073469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.014149, 34.512428, 23.652018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.303326, 34.624832, 23.399548>,  <20.476831, 34.692276, 23.248066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.303326, 34.624832, 23.399548>,  <20.014149, 34.512428, 23.652018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.303326, 34.624832, 23.399548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301872, -0.693263, -0.654416,
		-0.621471, 0.663640, -0.416360,
		0.722944, 0.281013, -0.631177,
		20.520208, 34.709137, 23.210194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.602314, 34.695850, 23.060957>,  <20.014149, 34.512428, 23.652018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.602314, 34.695850, 23.060957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.981499, 34.617054, 22.960907>,  <20.209009, 34.569775, 22.900877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.981499, 34.617054, 22.960907>,  <19.602314, 34.695850, 23.060957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.981499, 34.617054, 22.960907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308628, -0.761540, -0.569917,
		-0.078210, 0.617454, -0.782709,
		0.947962, -0.196993, -0.250124,
		20.265888, 34.557957, 22.885870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589415, 34.580082, 22.319689>,  <19.602314, 34.695850, 23.060957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589415, 34.580082, 22.319689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.928146, 34.425812, 22.466187>,  <20.131386, 34.333248, 22.554085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.928146, 34.425812, 22.466187>,  <19.589415, 34.580082, 22.319689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.928146, 34.425812, 22.466187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089678, -0.782284, -0.616432,
		0.524251, 0.489169, -0.697047,
		0.846829, -0.385675, 0.366246,
		20.182196, 34.310108, 22.576061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.924549, 34.512875, 21.760063>,  <19.589415, 34.580082, 22.319689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.924549, 34.512875, 21.760063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.069901, 34.255009, 22.029095>,  <20.157110, 34.100288, 22.190514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.069901, 34.255009, 22.029095>,  <19.924549, 34.512875, 21.760063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.069901, 34.255009, 22.029095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007546, -0.719866, -0.694072,
		0.931612, 0.257284, -0.256718,
		0.363376, -0.644669, 0.672577,
		20.178913, 34.061607, 22.230867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.643826, 34.339127, 21.448904>,  <19.924549, 34.512875, 21.760063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.643826, 34.339127, 21.448904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.507351, 34.057964, 21.698551>,  <20.425467, 33.889267, 21.848339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.507351, 34.057964, 21.698551>,  <20.643826, 34.339127, 21.448904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.507351, 34.057964, 21.698551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027777, -0.671206, -0.740750,
		0.939585, -0.235399, 0.248531,
		-0.341187, -0.702901, 0.624116,
		20.404995, 33.847095, 21.885786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.951639, 33.745930, 21.274105>,  <20.643826, 34.339127, 21.448904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.951639, 33.745930, 21.274105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.649870, 33.585789, 21.482166>,  <20.468807, 33.489704, 21.607002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.649870, 33.585789, 21.482166>,  <20.951639, 33.745930, 21.274105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.649870, 33.585789, 21.482166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028670, -0.771592, -0.635471,
		0.655761, -0.494328, 0.570629,
		-0.754424, -0.400357, 0.520152,
		20.423542, 33.465683, 21.638212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.149942, 33.113888, 21.366114>,  <20.951639, 33.745930, 21.274105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.149942, 33.113888, 21.366114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.760157, 33.068794, 21.443790>,  <20.526285, 33.041740, 21.490396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.760157, 33.068794, 21.443790>,  <21.149942, 33.113888, 21.366114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.760157, 33.068794, 21.443790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019006, -0.820324, -0.571583,
		0.223735, -0.560678, 0.797234,
		-0.974464, -0.112731, 0.194191,
		20.467817, 33.034973, 21.502048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.063974, 32.390606, 21.623293>,  <21.149942, 33.113888, 21.366114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.063974, 32.390606, 21.623293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.721542, 32.512268, 21.456142>,  <20.516083, 32.585266, 21.355852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.721542, 32.512268, 21.456142>,  <21.063974, 32.390606, 21.623293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.721542, 32.512268, 21.456142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116820, -0.673723, -0.729692,
		-0.503471, -0.673490, 0.541228,
		-0.856078, 0.304152, -0.417876,
		20.464720, 32.603516, 21.330780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.694057, 31.881960, 21.520863>,  <21.063974, 32.390606, 21.623293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.694057, 31.881960, 21.520863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.484474, 32.120766, 21.277866>,  <20.358725, 32.264050, 21.132069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.484474, 32.120766, 21.277866>,  <20.694057, 31.881960, 21.520863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.484474, 32.120766, 21.277866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008052, -0.716671, -0.697365,
		-0.851707, -0.360497, 0.380312,
		-0.523956, 0.597013, -0.607491,
		20.327288, 32.299870, 21.095619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.389074, 31.345940, 21.019827>,  <20.694057, 31.881960, 21.520863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.389074, 31.345940, 21.019827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.281061, 31.685543, 20.838161>,  <20.216253, 31.889305, 20.729162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.281061, 31.685543, 20.838161>,  <20.389074, 31.345940, 21.019827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.281061, 31.685543, 20.838161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012540, -0.474746, -0.880034,
		-0.962770, -0.231942, 0.138843,
		-0.270031, 0.849011, -0.454163,
		20.200052, 31.940247, 20.701912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.696501, 31.302122, 20.723215>,  <20.389074, 31.345940, 21.019827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.696501, 31.302122, 20.723215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.932358, 31.556194, 20.523666>,  <20.073872, 31.708637, 20.403936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.932358, 31.556194, 20.523666>,  <19.696501, 31.302122, 20.723215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.932358, 31.556194, 20.523666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128194, -0.536239, -0.834275,
		-0.797427, 0.555874, -0.234762,
		0.589641, 0.635178, -0.498871,
		20.109249, 31.746748, 20.374004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.391123, 31.310127, 19.982931>,  <19.696501, 31.302122, 20.723215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.391123, 31.310127, 19.982931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.759613, 31.461414, 19.946503>,  <19.980707, 31.552187, 19.924646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.759613, 31.461414, 19.946503>,  <19.391123, 31.310127, 19.982931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.759613, 31.461414, 19.946503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046443, -0.339342, -0.939516,
		-0.386246, 0.861277, -0.330176,
		0.921226, 0.378218, -0.091069,
		20.035980, 31.574881, 19.919182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.450762, 31.551668, 19.312473>,  <19.391123, 31.310127, 19.982931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.450762, 31.551668, 19.312473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.825256, 31.506107, 19.445435>,  <20.049953, 31.478771, 19.525211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.825256, 31.506107, 19.445435>,  <19.450762, 31.551668, 19.312473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.825256, 31.506107, 19.445435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238313, -0.489333, -0.838904,
		0.258206, 0.864627, -0.430987,
		0.936235, -0.113900, 0.332401,
		20.106127, 31.471937, 19.545155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.815620, 31.669691, 18.784912>,  <19.450762, 31.551668, 19.312473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.815620, 31.669691, 18.784912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.081339, 31.471302, 19.008598>,  <20.240770, 31.352268, 19.142811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.081339, 31.471302, 19.008598>,  <19.815620, 31.669691, 18.784912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.081339, 31.471302, 19.008598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391175, -0.406838, -0.825509,
		0.636938, 0.767135, -0.076251,
		0.664298, -0.495971, 0.559215,
		20.280628, 31.322512, 19.176363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.530439, 31.828901, 18.455452>,  <19.815620, 31.669691, 18.784912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.530439, 31.828901, 18.455452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.574444, 31.506710, 18.688381>,  <20.600847, 31.313395, 18.828138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.574444, 31.506710, 18.688381>,  <20.530439, 31.828901, 18.455452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.574444, 31.506710, 18.688381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558863, -0.434364, -0.706400,
		0.821931, 0.403150, 0.402368,
		0.110011, -0.805480, 0.582322,
		20.607447, 31.265066, 18.863077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.234596, 31.634808, 18.430250>,  <20.530439, 31.828901, 18.455452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.234596, 31.634808, 18.430250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.077629, 31.287258, 18.550957>,  <20.983448, 31.078728, 18.623381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.077629, 31.287258, 18.550957>,  <21.234596, 31.634808, 18.430250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.077629, 31.287258, 18.550957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667508, -0.494742, -0.556474,
		0.632804, -0.016938, 0.774127,
		-0.392418, -0.868875, 0.301769,
		20.959904, 31.026596, 18.641487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.798283, 31.184166, 18.511360>,  <21.234596, 31.634808, 18.430250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.798283, 31.184166, 18.511360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.476807, 30.949902, 18.469238>,  <21.283922, 30.809343, 18.443966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.476807, 30.949902, 18.469238>,  <21.798283, 31.184166, 18.511360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.476807, 30.949902, 18.469238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487754, -0.547006, -0.680354,
		0.340854, -0.598154, 0.725280,
		-0.803688, -0.585659, -0.105303,
		21.235701, 30.774204, 18.437647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.130436, 30.596609, 18.637384>,  <21.798283, 31.184166, 18.511360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.130436, 30.596609, 18.637384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.801523, 30.533890, 18.418564>,  <21.604176, 30.496258, 18.287271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.801523, 30.533890, 18.418564>,  <22.130436, 30.596609, 18.637384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.801523, 30.533890, 18.418564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537719, -0.528789, -0.656689,
		-0.186309, -0.834144, 0.519126,
		-0.822282, -0.156797, -0.547054,
		21.554838, 30.486851, 18.254448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.200407, 29.882004, 18.450708>,  <22.130436, 30.596609, 18.637384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.200407, 29.882004, 18.450708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.962837, 30.072872, 18.191612>,  <21.820295, 30.187393, 18.036156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.962837, 30.072872, 18.191612>,  <22.200407, 29.882004, 18.450708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.962837, 30.072872, 18.191612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427123, -0.495271, -0.756487,
		-0.681779, -0.725959, 0.090342,
		-0.593922, 0.477170, -0.647738,
		21.784660, 30.216022, 17.997292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.749784, 29.454723, 18.075203>,  <22.200407, 29.882004, 18.450708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.749784, 29.454723, 18.075203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.802212, 29.778774, 17.846638>,  <21.833668, 29.973206, 17.709499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.802212, 29.778774, 17.846638>,  <21.749784, 29.454723, 18.075203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.802212, 29.778774, 17.846638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200452, -0.586135, -0.785025,
		-0.970896, -0.011647, -0.239217,
		0.131070, 0.810130, -0.571411,
		21.841534, 30.021812, 17.675215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.489532, 29.250990, 17.354330>,  <21.749784, 29.454723, 18.075203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.489532, 29.250990, 17.354330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.691090, 29.595474, 17.327763>,  <21.812023, 29.802164, 17.311823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.691090, 29.595474, 17.327763>,  <21.489532, 29.250990, 17.354330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.691090, 29.595474, 17.327763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237477, -0.212055, -0.947965,
		-0.830481, 0.461898, -0.311370,
		0.503891, 0.861210, -0.066417,
		21.842257, 29.853838, 17.307837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.490744, 29.253223, 16.481058>,  <21.489532, 29.250990, 17.354330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.490744, 29.253223, 16.481058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.874390, 29.285778, 16.589485>,  <22.104576, 29.305311, 16.654541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.874390, 29.285778, 16.589485>,  <21.490744, 29.253223, 16.481058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.874390, 29.285778, 16.589485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281718, -0.366369, -0.886797,
		0.027138, 0.926904, -0.374317,
		0.959113, 0.081386, 0.271068,
		22.162125, 29.310194, 16.670805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.952677, 29.615416, 15.986079>,  <21.490744, 29.253223, 16.481058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.952677, 29.615416, 15.986079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.194971, 29.370411, 16.189220>,  <22.340347, 29.223408, 16.311106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.194971, 29.370411, 16.189220>,  <21.952677, 29.615416, 15.986079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.194971, 29.370411, 16.189220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459188, -0.252149, -0.851802,
		0.649795, 0.749165, 0.128524,
		0.605733, -0.612513, 0.507853,
		22.376692, 29.186657, 16.341576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.669697, 29.820181, 16.045315>,  <21.952677, 29.615416, 15.986079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.669697, 29.820181, 16.045315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.590799, 29.429886, 16.007309>,  <22.543461, 29.195709, 15.984505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.590799, 29.429886, 16.007309>,  <22.669697, 29.820181, 16.045315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.590799, 29.429886, 16.007309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711870, -0.075914, -0.698197,
		0.674044, -0.205356, 0.709572,
		-0.197246, -0.975739, -0.095017,
		22.531626, 29.137165, 15.978804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.795252, 30.541512, 15.991364>,  <22.669697, 29.820181, 16.045315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.795252, 30.541512, 15.991364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.964016, 30.711628, 15.671084>,  <23.065275, 30.813698, 15.478916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.964016, 30.711628, 15.671084>,  <22.795252, 30.541512, 15.991364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.964016, 30.711628, 15.671084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525518, 0.834377, 0.166268,
		0.738797, 0.350631, 0.575531,
		0.421911, 0.425291, -0.800699,
		23.090590, 30.839214, 15.430875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.216919, 31.127975, 16.201841>,  <22.795252, 30.541512, 15.991364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.216919, 31.127975, 16.201841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.057384, 31.160103, 15.836442>,  <22.961664, 31.179379, 15.617203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.057384, 31.160103, 15.836442>,  <23.216919, 31.127975, 16.201841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.057384, 31.160103, 15.836442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620207, 0.710145, 0.333222,
		0.675479, 0.699459, -0.233420,
		-0.398837, 0.080316, -0.913498,
		22.937733, 31.184198, 15.562392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.433365, 31.770247, 15.971695>,  <23.216919, 31.127975, 16.201841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.433365, 31.770247, 15.971695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.090820, 31.622387, 15.827470>,  <22.885294, 31.533670, 15.740934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.090820, 31.622387, 15.827470>,  <23.433365, 31.770247, 15.971695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.090820, 31.622387, 15.827470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510030, 0.714641, 0.478704,
		0.080721, 0.593841, -0.800523,
		-0.856361, -0.369649, -0.360563,
		22.833912, 31.511492, 15.719301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.028484, 32.226616, 15.468167>,  <23.433365, 31.770247, 15.971695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.028484, 32.226616, 15.468167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.804790, 31.986248, 15.696609>,  <22.670574, 31.842028, 15.833673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.804790, 31.986248, 15.696609>,  <23.028484, 32.226616, 15.468167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.804790, 31.986248, 15.696609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494923, 0.794665, 0.351510,
		-0.665062, -0.086075, -0.741811,
		-0.559235, -0.600915, 0.571102,
		22.637020, 31.805973, 15.867939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.370623, 32.433159, 15.358815>,  <23.028484, 32.226616, 15.468167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.370623, 32.433159, 15.358815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.426470, 32.258381, 15.714250>,  <22.459978, 32.153515, 15.927510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.426470, 32.258381, 15.714250>,  <22.370623, 32.433159, 15.358815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.426470, 32.258381, 15.714250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393279, 0.799094, 0.454731,
		-0.908756, -0.412951, -0.060273,
		0.139618, -0.436944, 0.888587,
		22.468355, 32.127296, 15.980825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.782238, 32.613682, 15.701596>,  <22.370623, 32.433159, 15.358815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.782238, 32.613682, 15.701596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.053427, 32.570187, 15.992396>,  <22.216141, 32.544090, 16.166876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.053427, 32.570187, 15.992396>,  <21.782238, 32.613682, 15.701596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.053427, 32.570187, 15.992396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477928, 0.686228, 0.548339,
		-0.558514, -0.719212, 0.413274,
		0.677972, -0.108740, 0.727000,
		22.256819, 32.537563, 16.210497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.441072, 32.746124, 16.364088>,  <21.782238, 32.613682, 15.701596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.441072, 32.746124, 16.364088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.827467, 32.839073, 16.409473>,  <22.059303, 32.894840, 16.436705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.827467, 32.839073, 16.409473>,  <21.441072, 32.746124, 16.364088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.827467, 32.839073, 16.409473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239160, 0.635950, 0.733737,
		0.098341, -0.735916, 0.669893,
		0.965987, 0.232368, 0.113462,
		22.117264, 32.908783, 16.443512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.395287, 33.021481, 17.003017>,  <21.441072, 32.746124, 16.364088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.395287, 33.021481, 17.003017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.776451, 33.096039, 16.907337>,  <22.005150, 33.140774, 16.849930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.776451, 33.096039, 16.907337>,  <21.395287, 33.021481, 17.003017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.776451, 33.096039, 16.907337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036858, 0.711752, 0.701463,
		0.301000, -0.677249, 0.671366,
		0.952911, 0.186395, -0.239200,
		22.062325, 33.151958, 16.835577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.885572, 33.015850, 17.637945>,  <21.395287, 33.021481, 17.003017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.885572, 33.015850, 17.637945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.122610, 33.209793, 17.380653>,  <22.264832, 33.326160, 17.226278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.122610, 33.209793, 17.380653>,  <21.885572, 33.015850, 17.637945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.122610, 33.209793, 17.380653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154423, 0.715349, 0.681490,
		0.790563, -0.503175, 0.349036,
		0.592591, 0.484861, -0.643230,
		22.300388, 33.355251, 17.187685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.395525, 33.375534, 18.118433>,  <21.885572, 33.015850, 17.637945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.395525, 33.375534, 18.118433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.396578, 33.545174, 17.756187>,  <22.397209, 33.646957, 17.538841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.396578, 33.545174, 17.756187>,  <22.395525, 33.375534, 18.118433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.396578, 33.545174, 17.756187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066639, 0.903528, 0.423316,
		0.997774, -0.061464, -0.025883,
		0.002633, 0.424098, -0.905613,
		22.397367, 33.672401, 17.484503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.944889, 33.851032, 18.134348>,  <22.395525, 33.375534, 18.118433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.944889, 33.851032, 18.134348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.691759, 33.986561, 17.855858>,  <22.539881, 34.067879, 17.688763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.691759, 33.986561, 17.855858>,  <22.944889, 33.851032, 18.134348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.691759, 33.986561, 17.855858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067883, 0.871436, 0.485788,
		0.771312, 0.354681, -0.528468,
		-0.632827, 0.338820, -0.696226,
		22.501911, 34.088207, 17.646990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.050367, 34.597103, 17.984514>,  <22.944889, 33.851032, 18.134348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.050367, 34.597103, 17.984514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.681444, 34.519737, 17.850685>,  <22.460091, 34.473316, 17.770388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.681444, 34.519737, 17.850685>,  <23.050367, 34.597103, 17.984514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.681444, 34.519737, 17.850685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333080, 0.836877, 0.434391,
		0.195977, 0.512081, -0.836281,
		-0.922307, -0.193418, -0.334572,
		22.404753, 34.461712, 17.750313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.764360, 35.325352, 17.730263>,  <23.050367, 34.597103, 17.984514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.764360, 35.325352, 17.730263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.458229, 35.074371, 17.787636>,  <22.274551, 34.923782, 17.822060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.458229, 35.074371, 17.787636>,  <22.764360, 35.325352, 17.730263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.458229, 35.074371, 17.787636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541876, 0.748379, 0.382490,
		-0.347339, 0.215006, -0.912758,
		-0.765328, -0.627455, 0.143435,
		22.228630, 34.886135, 17.830666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.115011, 35.669823, 17.421743>,  <22.764360, 35.325352, 17.730263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.115011, 35.669823, 17.421743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.016315, 35.397919, 17.698017>,  <21.957098, 35.234776, 17.863781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.016315, 35.397919, 17.698017>,  <22.115011, 35.669823, 17.421743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.016315, 35.397919, 17.698017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590675, 0.670517, 0.448899,
		-0.768259, -0.297209, -0.566961,
		-0.246740, -0.679760, 0.690684,
		21.942293, 35.193989, 17.905222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.416224, 35.821766, 17.530834>,  <22.115011, 35.669823, 17.421743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.416224, 35.821766, 17.530834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.462782, 35.583839, 17.848991>,  <21.490717, 35.441086, 18.039886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.462782, 35.583839, 17.848991>,  <21.416224, 35.821766, 17.530834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.462782, 35.583839, 17.848991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637168, 0.569602, 0.519203,
		-0.761886, -0.567232, -0.312696,
		0.116396, -0.594813, 0.795393,
		21.497702, 35.405396, 18.087608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.757391, 35.783459, 17.900785>,  <21.416224, 35.821766, 17.530834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.757391, 35.783459, 17.900785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.032688, 35.678024, 18.171146>,  <21.197866, 35.614765, 18.333363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.032688, 35.678024, 18.171146>,  <20.757391, 35.783459, 17.900785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.032688, 35.678024, 18.171146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458724, 0.563667, 0.686915,
		-0.562046, -0.782817, 0.267026,
		0.688242, -0.263586, 0.675904,
		21.239161, 35.598949, 18.373917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.395819, 35.466599, 18.466167>,  <20.757391, 35.783459, 17.900785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.395819, 35.466599, 18.466167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.747053, 35.576092, 18.623158>,  <20.957794, 35.641788, 18.717352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.747053, 35.576092, 18.623158>,  <20.395819, 35.466599, 18.466167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.747053, 35.576092, 18.623158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456971, 0.236423, 0.857486,
		0.141930, -0.932296, 0.332687,
		0.878085, 0.273731, 0.392476,
		21.010479, 35.658211, 18.740900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.386253, 35.180248, 19.111368>,  <20.395819, 35.466599, 18.466167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.386253, 35.180248, 19.111368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635498, 35.493057, 19.106129>,  <20.785046, 35.680744, 19.102985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635498, 35.493057, 19.106129>,  <20.386253, 35.180248, 19.111368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635498, 35.493057, 19.106129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407841, 0.339164, 0.847722,
		0.667379, -0.522886, 0.530279,
		0.623113, 0.782022, -0.013097,
		20.822432, 35.727665, 19.102200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.639454, 35.233780, 19.719254>,  <20.386253, 35.180248, 19.111368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.639454, 35.233780, 19.719254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.755934, 35.589787, 19.578926>,  <20.825821, 35.803391, 19.494730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.755934, 35.589787, 19.578926>,  <20.639454, 35.233780, 19.719254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.755934, 35.589787, 19.578926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196496, 0.414538, 0.888564,
		0.936265, -0.189813, 0.295598,
		0.291198, 0.890016, -0.350820,
		20.843294, 35.856792, 19.473680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.070694, 35.482521, 20.258295>,  <20.639454, 35.233780, 19.719254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.070694, 35.482521, 20.258295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.939409, 35.796120, 20.047535>,  <20.860638, 35.984280, 19.921078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.939409, 35.796120, 20.047535>,  <21.070694, 35.482521, 20.258295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.939409, 35.796120, 20.047535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253254, 0.464347, 0.848673,
		0.910021, 0.411986, 0.046146,
		-0.328213, 0.783996, -0.526902,
		20.840946, 36.031319, 19.889463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.440603, 36.125557, 20.480541>,  <21.070694, 35.482521, 20.258295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.440603, 36.125557, 20.480541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.076914, 36.203793, 20.333538>,  <20.858700, 36.250732, 20.245337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.076914, 36.203793, 20.333538>,  <21.440603, 36.125557, 20.480541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.076914, 36.203793, 20.333538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249655, 0.450271, 0.857280,
		0.333149, 0.871208, -0.360567,
		-0.909221, 0.195584, -0.367509,
		20.804148, 36.262466, 20.223286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124228, 36.648319, 20.902018>,  <21.440603, 36.125557, 20.480541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124228, 36.648319, 20.902018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787655, 36.556667, 20.706264>,  <20.585712, 36.501675, 20.588814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787655, 36.556667, 20.706264>,  <21.124228, 36.648319, 20.902018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.787655, 36.556667, 20.706264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539282, 0.298749, 0.787353,
		-0.034206, 0.926417, -0.374943,
		-0.841430, -0.229132, -0.489381,
		20.535225, 36.487926, 20.559450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.674915, 37.276676, 20.975815>,  <21.124228, 36.648319, 20.902018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.674915, 37.276676, 20.975815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.436129, 36.969234, 20.883831>,  <20.292856, 36.784771, 20.828642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.436129, 36.969234, 20.883831>,  <20.674915, 37.276676, 20.975815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.436129, 36.969234, 20.883831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589934, 0.226298, 0.775092,
		-0.543697, 0.598366, -0.588517,
		-0.596969, -0.768601, -0.229959,
		20.257038, 36.738655, 20.814844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.966581, 37.496532, 20.927059>,  <20.674915, 37.276676, 20.975815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.966581, 37.496532, 20.927059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.930912, 37.101639, 20.979858>,  <19.909510, 36.864704, 21.011538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.930912, 37.101639, 20.979858>,  <19.966581, 37.496532, 20.927059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.930912, 37.101639, 20.979858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838192, 0.145971, 0.525478,
		-0.538036, -0.063778, -0.840506,
		-0.089175, -0.987231, 0.131996,
		19.904160, 36.805470, 21.019457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.241156, 37.436855, 20.828617>,  <19.966581, 37.496532, 20.927059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.241156, 37.436855, 20.828617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.363419, 37.104599, 21.014782>,  <19.436777, 36.905247, 21.126482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.363419, 37.104599, 21.014782>,  <19.241156, 37.436855, 20.828617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.363419, 37.104599, 21.014782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771618, 0.070282, 0.632192,
		-0.557834, -0.552356, -0.619454,
		0.305659, -0.830640, 0.465413,
		19.455116, 36.855408, 21.154406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.748579, 36.966236, 20.925562>,  <19.241156, 37.436855, 20.828617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.748579, 36.966236, 20.925562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.008743, 36.874603, 21.215248>,  <19.164843, 36.819626, 21.389061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.008743, 36.874603, 21.215248>,  <18.748579, 36.966236, 20.925562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.008743, 36.874603, 21.215248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710500, 0.153694, 0.686707,
		-0.268618, -0.961198, -0.062796,
		0.650410, -0.229078, 0.724216,
		19.203867, 36.805882, 21.432512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.422626, 36.513271, 21.514711>,  <18.748579, 36.966236, 20.925562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.422626, 36.513271, 21.514711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.716808, 36.745689, 21.654137>,  <18.893318, 36.885139, 21.737791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.716808, 36.745689, 21.654137>,  <18.422626, 36.513271, 21.514711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.716808, 36.745689, 21.654137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498907, 0.116294, 0.858817,
		0.458474, -0.805522, 0.375415,
		0.735455, 0.581043, 0.348563,
		18.937445, 36.920002, 21.758705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.581493, 36.211807, 22.135811>,  <18.422626, 36.513271, 21.514711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.581493, 36.211807, 22.135811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.651220, 36.604782, 22.109184>,  <18.693056, 36.840569, 22.093208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.651220, 36.604782, 22.109184>,  <18.581493, 36.211807, 22.135811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.651220, 36.604782, 22.109184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606357, 0.160359, 0.778855,
		0.775851, -0.095403, 0.623661,
		0.174315, 0.982437, -0.066567,
		18.703514, 36.899513, 22.089214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.671228, 36.378166, 22.822325>,  <18.581493, 36.211807, 22.135811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.671228, 36.378166, 22.822325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.534904, 36.702980, 22.632820>,  <18.453110, 36.897869, 22.519117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.534904, 36.702980, 22.632820>,  <18.671228, 36.378166, 22.822325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.534904, 36.702980, 22.632820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596578, 0.202671, 0.776543,
		0.726597, 0.547289, 0.415369,
		-0.340810, 0.812034, -0.473761,
		18.432661, 36.946590, 22.490692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.862616, 36.797394, 23.244867>,  <18.671228, 36.378166, 22.822325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.862616, 36.797394, 23.244867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538679, 36.876663, 23.024002>,  <18.344316, 36.924225, 22.891483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538679, 36.876663, 23.024002>,  <18.862616, 36.797394, 23.244867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.538679, 36.876663, 23.024002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570387, -0.045914, 0.820092,
		0.137171, 0.979090, 0.150221,
		-0.809841, 0.198177, -0.552162,
		18.295727, 36.936115, 22.858353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.230436, 36.993576, 23.367353>,  <18.862616, 36.797394, 23.244867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.230436, 36.993576, 23.367353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.865337, 37.156761, 23.375942>,  <17.646278, 37.254673, 23.381096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.865337, 37.156761, 23.375942>,  <18.230436, 36.993576, 23.367353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.865337, 37.156761, 23.375942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122092, 0.222247, 0.967316,
		0.389852, 0.885537, -0.252664,
		-0.912748, 0.407958, 0.021474,
		17.591513, 37.279148, 23.382385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.377542, 23.588394, 27.796522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.769756, 23.648987, 27.846497>,  <30.005085, 23.685343, 27.876482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.769756, 23.648987, 27.846497>,  <29.377542, 23.588394, 27.796522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769756, 23.648987, 27.846497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042958, 0.786358, -0.616276,
		-0.191599, 0.598912, 0.777557,
		0.980533, 0.151480, 0.124937,
		30.063915, 23.694431, 27.883978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396135, 24.358849, 27.588272>,  <29.377542, 23.588394, 27.796522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396135, 24.358849, 27.588272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.779385, 24.250134, 27.624340>,  <30.009335, 24.184904, 27.645981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.779385, 24.250134, 27.624340>,  <29.396135, 24.358849, 27.588272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779385, 24.250134, 27.624340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285445, 0.881415, -0.376336,
		0.022808, 0.386315, 0.922085,
		0.958124, -0.271788, 0.090168,
		30.066822, 24.168596, 27.651390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587400, 25.052696, 27.762070>,  <29.396135, 24.358849, 27.588272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587400, 25.052696, 27.762070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.879547, 24.831467, 27.601734>,  <30.054836, 24.698729, 27.505533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.879547, 24.831467, 27.601734>,  <29.587400, 25.052696, 27.762070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879547, 24.831467, 27.601734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189508, 0.727872, -0.659006,
		0.656238, 0.405356, 0.636427,
		0.730369, -0.553073, -0.400839,
		30.098658, 24.665545, 27.481482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239912, 25.495237, 27.651396>,  <29.587400, 25.052696, 27.762070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239912, 25.495237, 27.651396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.295483, 25.186031, 27.403801>,  <30.328825, 25.000507, 27.255243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.295483, 25.186031, 27.403801>,  <30.239912, 25.495237, 27.651396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295483, 25.186031, 27.403801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215521, 0.633667, -0.742978,
		0.966566, -0.030185, 0.254635,
		0.138926, -0.773017, -0.618987,
		30.337160, 24.954126, 27.218105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859680, 25.574869, 27.369720>,  <30.239912, 25.495237, 27.651396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859680, 25.574869, 27.369720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.666080, 25.346153, 27.104752>,  <30.549921, 25.208923, 26.945770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.666080, 25.346153, 27.104752>,  <30.859680, 25.574869, 27.369720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666080, 25.346153, 27.104752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291484, 0.608419, -0.738149,
		0.825094, -0.550349, -0.127807,
		-0.484000, -0.571788, -0.662421,
		30.520880, 25.174616, 26.906025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334553, 25.512878, 26.947206>,  <30.859680, 25.574869, 27.369720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334553, 25.512878, 26.947206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.004997, 25.420364, 26.740242>,  <30.807264, 25.364857, 26.616064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.004997, 25.420364, 26.740242>,  <31.334553, 25.512878, 26.947206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004997, 25.420364, 26.740242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234697, 0.691753, -0.682931,
		0.515871, -0.684095, -0.515646,
		-0.823890, -0.231284, -0.517410,
		30.757830, 25.350979, 26.585018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582846, 25.638308, 26.294231>,  <31.334553, 25.512878, 26.947206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582846, 25.638308, 26.294231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.183565, 25.652004, 26.274551>,  <30.943996, 25.660223, 26.262743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.183565, 25.652004, 26.274551>,  <31.582846, 25.638308, 26.294231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183565, 25.652004, 26.274551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058877, 0.714219, -0.697441,
		0.011256, -0.699084, -0.714951,
		-0.998202, 0.034244, -0.049199,
		30.884104, 25.662277, 26.259792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391539, 25.605593, 25.614967>,  <31.582846, 25.638308, 26.294231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391539, 25.605593, 25.614967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.056684, 25.769264, 25.760174>,  <30.855772, 25.867468, 25.847298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.056684, 25.769264, 25.760174>,  <31.391539, 25.605593, 25.614967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056684, 25.769264, 25.760174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050440, 0.718568, -0.693625,
		-0.544668, -0.562346, -0.622176,
		-0.837133, 0.409178, 0.363016,
		30.805544, 25.892017, 25.869078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004253, 25.691175, 24.991249>,  <31.391539, 25.605593, 25.614967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004253, 25.691175, 24.991249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.870331, 25.950527, 25.264748>,  <30.789976, 26.106138, 25.428846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.870331, 25.950527, 25.264748>,  <31.004253, 25.691175, 24.991249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870331, 25.950527, 25.264748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228409, 0.648141, -0.726459,
		-0.914184, -0.399399, -0.068908,
		-0.334809, 0.648378, 0.683746,
		30.769888, 26.145041, 25.469872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575033, 26.181616, 24.634064>,  <31.004253, 25.691175, 24.991249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575033, 26.181616, 24.634064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.619886, 26.396587, 24.968391>,  <30.646799, 26.525570, 25.168989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.619886, 26.396587, 24.968391>,  <30.575033, 26.181616, 24.634064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619886, 26.396587, 24.968391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180059, 0.838191, -0.514795,
		-0.977243, -0.092770, 0.190759,
		0.112135, 0.537428, 0.835821,
		30.653526, 26.557816, 25.219137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995314, 26.643387, 24.612522>,  <30.575033, 26.181616, 24.634064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995314, 26.643387, 24.612522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.260611, 26.822006, 24.852757>,  <30.419788, 26.929178, 24.996897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.260611, 26.822006, 24.852757>,  <29.995314, 26.643387, 24.612522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260611, 26.822006, 24.852757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084282, 0.841949, -0.532934,
		-0.743642, 0.302847, 0.596053,
		0.663244, 0.446549, 0.600584,
		30.459583, 26.955971, 25.032932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713104, 27.291397, 24.889431>,  <29.995314, 26.643387, 24.612522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713104, 27.291397, 24.889431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.112511, 27.310642, 24.899632>,  <30.352154, 27.322189, 24.905752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.112511, 27.310642, 24.899632>,  <29.713104, 27.291397, 24.889431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112511, 27.310642, 24.899632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024923, 0.820157, -0.571596,
		-0.048416, 0.570112, 0.820139,
		0.998516, 0.048115, 0.025499,
		30.412066, 27.325077, 24.907282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878256, 27.937944, 25.105194>,  <29.713104, 27.291397, 24.889431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878256, 27.937944, 25.105194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.223621, 27.818851, 24.942284>,  <30.430840, 27.747395, 24.844538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.223621, 27.818851, 24.942284>,  <29.878256, 27.937944, 25.105194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223621, 27.818851, 24.942284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146746, 0.920596, -0.361895,
		0.482684, 0.252699, 0.838546,
		0.863413, -0.297734, -0.407275,
		30.482645, 27.729530, 24.820101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343185, 28.393265, 25.332129>,  <29.878256, 27.937944, 25.105194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343185, 28.393265, 25.332129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.498970, 28.229195, 25.002262>,  <30.592442, 28.130753, 24.804342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.498970, 28.229195, 25.002262>,  <30.343185, 28.393265, 25.332129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498970, 28.229195, 25.002262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161527, 0.911903, -0.377282,
		0.906768, 0.013732, 0.421407,
		0.389463, -0.410176, -0.824666,
		30.615808, 28.106142, 24.754862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824615, 28.853672, 25.214380>,  <30.343185, 28.393265, 25.332129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824615, 28.853672, 25.214380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.790833, 28.649834, 24.871876>,  <30.770563, 28.527531, 24.666374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.790833, 28.649834, 24.871876>,  <30.824615, 28.853672, 25.214380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790833, 28.649834, 24.871876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117038, 0.858455, -0.499357,
		0.989530, 0.058040, -0.132147,
		-0.084459, -0.509594, -0.856259,
		30.765495, 28.496956, 24.614998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286848, 29.171368, 24.697945>,  <30.824615, 28.853672, 25.214380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286848, 29.171368, 24.697945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.038134, 28.956005, 24.470436>,  <30.888905, 28.826788, 24.333931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.038134, 28.956005, 24.470436>,  <31.286848, 29.171368, 24.697945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038134, 28.956005, 24.470436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235184, 0.821070, -0.520127,
		0.747041, -0.189643, -0.637155,
		-0.621787, -0.538405, -0.568772,
		30.851599, 28.794483, 24.299805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384001, 29.473982, 24.104881>,  <31.286848, 29.171368, 24.697945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384001, 29.473982, 24.104881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.034771, 29.283817, 24.061577>,  <30.825233, 29.169718, 24.035593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.034771, 29.283817, 24.061577>,  <31.384001, 29.473982, 24.104881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034771, 29.283817, 24.061577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267393, 0.652521, -0.709026,
		0.407723, -0.590085, -0.696822,
		-0.873077, -0.475412, -0.108263,
		30.772848, 29.141193, 24.029099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268734, 29.501265, 23.363384>,  <31.384001, 29.473982, 24.104881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268734, 29.501265, 23.363384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.912451, 29.439060, 23.534245>,  <30.698681, 29.401737, 23.636761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.912451, 29.439060, 23.534245>,  <31.268734, 29.501265, 23.363384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912451, 29.439060, 23.534245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379998, 0.770433, -0.511892,
		-0.249486, -0.618262, -0.745324,
		-0.890707, -0.155511, 0.427151,
		30.645239, 29.392406, 23.662390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840967, 29.765032, 22.842995>,  <31.268734, 29.501265, 23.363384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840967, 29.765032, 22.842995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.584923, 29.770756, 23.150253>,  <30.431295, 29.774191, 23.334608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.584923, 29.770756, 23.150253>,  <30.840967, 29.765032, 22.842995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584923, 29.770756, 23.150253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423823, 0.827354, -0.368592,
		-0.640805, -0.561498, -0.523535,
		-0.640112, 0.014309, 0.768148,
		30.392889, 29.775049, 23.380697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220402, 29.795658, 22.583130>,  <30.840967, 29.765032, 22.842995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220402, 29.795658, 22.583130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.164171, 29.950607, 22.947586>,  <30.130434, 30.043577, 23.166260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.164171, 29.950607, 22.947586>,  <30.220402, 29.795658, 22.583130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164171, 29.950607, 22.947586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422483, 0.808817, -0.409052,
		-0.895403, -0.442445, 0.049960,
		-0.140575, 0.387374, 0.911142,
		30.121998, 30.066820, 23.220928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561901, 30.033482, 22.571463>,  <30.220402, 29.795658, 22.583130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561901, 30.033482, 22.571463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.722780, 30.250511, 22.866447>,  <29.819307, 30.380728, 23.043438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.722780, 30.250511, 22.866447>,  <29.561901, 30.033482, 22.571463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722780, 30.250511, 22.866447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507575, 0.802508, -0.313607,
		-0.761974, -0.248185, 0.598164,
		0.402198, 0.542573, 0.737463,
		29.843439, 30.413282, 23.087687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049568, 30.538708, 22.860100>,  <29.561901, 30.033482, 22.571463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049568, 30.538708, 22.860100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.397713, 30.686600, 22.990189>,  <29.606600, 30.775335, 23.068241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.397713, 30.686600, 22.990189>,  <29.049568, 30.538708, 22.860100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397713, 30.686600, 22.990189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321067, 0.926872, -0.194483,
		-0.373344, 0.064853, 0.925423,
		0.870362, 0.369732, 0.325221,
		29.658821, 30.797520, 23.087755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425467, 30.506882, 22.466988>,  <29.049568, 30.538708, 22.860100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425467, 30.506882, 22.466988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.066599, 30.678539, 22.425182>,  <27.851278, 30.781534, 22.400099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.066599, 30.678539, 22.425182>,  <28.425467, 30.506882, 22.466988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066599, 30.678539, 22.425182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396800, -0.679175, 0.617471,
		0.194002, 0.595447, 0.779619,
		-0.897169, 0.429144, -0.104512,
		27.797447, 30.807281, 22.393829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164640, 30.767038, 23.039297>,  <28.425467, 30.506882, 22.466988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164640, 30.767038, 23.039297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.806330, 30.689224, 22.879429>,  <27.591343, 30.642536, 22.783508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.806330, 30.689224, 22.879429>,  <28.164640, 30.767038, 23.039297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806330, 30.689224, 22.879429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144461, -0.722930, 0.675651,
		-0.420372, 0.662970, 0.619482,
		-0.895778, -0.194533, -0.399672,
		27.537596, 30.630865, 22.759527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651299, 30.969242, 23.557796>,  <28.164640, 30.767038, 23.039297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651299, 30.969242, 23.557796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.522484, 30.693001, 23.298763>,  <27.445196, 30.527256, 23.143343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.522484, 30.693001, 23.298763>,  <27.651299, 30.969242, 23.557796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522484, 30.693001, 23.298763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051735, -0.670162, 0.740410,
		-0.945313, 0.271940, 0.180088,
		-0.322035, -0.690602, -0.647582,
		27.425873, 30.485821, 23.104488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129791, 30.527082, 23.910149>,  <27.651299, 30.969242, 23.557796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129791, 30.527082, 23.910149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.194574, 30.288399, 23.595772>,  <27.233444, 30.145189, 23.407145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.194574, 30.288399, 23.595772>,  <27.129791, 30.527082, 23.910149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194574, 30.288399, 23.595772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226880, -0.797639, 0.558836,
		-0.960362, 0.087808, -0.264564,
		0.161956, -0.596709, -0.785944,
		27.243160, 30.109386, 23.359989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589071, 30.072857, 23.956514>,  <27.129791, 30.527082, 23.910149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589071, 30.072857, 23.956514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.874331, 29.906815, 23.730556>,  <27.045486, 29.807190, 23.594982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.874331, 29.906815, 23.730556>,  <26.589071, 30.072857, 23.956514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874331, 29.906815, 23.730556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110848, -0.862464, 0.493831,
		-0.692192, -0.289558, -0.661080,
		0.713150, -0.415105, -0.564894,
		27.088276, 29.782284, 23.561089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431770, 29.443129, 23.933910>,  <26.589071, 30.072857, 23.956514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431770, 29.443129, 23.933910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.829468, 29.447807, 23.891308>,  <27.068087, 29.450615, 23.865746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.829468, 29.447807, 23.891308>,  <26.431770, 29.443129, 23.933910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829468, 29.447807, 23.891308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079894, -0.743271, 0.664202,
		-0.071395, -0.668888, -0.739927,
		0.994243, 0.011695, -0.106506,
		27.127741, 29.451315, 23.859356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517920, 28.703636, 23.974081>,  <26.431770, 29.443129, 23.933910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517920, 28.703636, 23.974081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.887823, 28.846714, 24.026043>,  <27.109766, 28.932560, 24.057220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.887823, 28.846714, 24.026043>,  <26.517920, 28.703636, 23.974081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887823, 28.846714, 24.026043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107284, -0.572553, 0.812818,
		0.365118, -0.737724, -0.567849,
		0.924759, 0.357695, 0.129903,
		27.165251, 28.954023, 24.065014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844883, 28.038696, 24.141424>,  <26.517920, 28.703636, 23.974081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844883, 28.038696, 24.141424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.074705, 28.345722, 24.255077>,  <27.212599, 28.529938, 24.323269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.074705, 28.345722, 24.255077>,  <26.844883, 28.038696, 24.141424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074705, 28.345722, 24.255077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194732, -0.465380, 0.863424,
		0.794964, -0.440753, -0.416855,
		0.574553, 0.767566, 0.284132,
		27.247070, 28.575993, 24.340317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525715, 27.798077, 24.264631>,  <26.844883, 28.038696, 24.141424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525715, 27.798077, 24.264631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.521458, 28.133312, 24.482803>,  <27.518904, 28.334454, 24.613707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.521458, 28.133312, 24.482803>,  <27.525715, 27.798077, 24.264631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521458, 28.133312, 24.482803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291222, -0.519219, 0.803493,
		0.956596, 0.167394, -0.238542,
		-0.010645, 0.838087, 0.545432,
		27.518265, 28.384739, 24.646433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249098, 27.969692, 24.606176>,  <27.525715, 27.798077, 24.264631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249098, 27.969692, 24.606176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.970322, 28.163857, 24.817326>,  <27.803057, 28.280355, 24.944016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.970322, 28.163857, 24.817326>,  <28.249098, 27.969692, 24.606176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970322, 28.163857, 24.817326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287909, -0.484772, 0.825896,
		0.656798, 0.727579, 0.198102,
		-0.696939, 0.485412, 0.527874,
		27.761240, 28.309481, 24.975687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579081, 27.970976, 25.256178>,  <28.249098, 27.969692, 24.606176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579081, 27.970976, 25.256178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.194490, 28.054337, 25.327877>,  <27.963736, 28.104353, 25.370897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.194490, 28.054337, 25.327877>,  <28.579081, 27.970976, 25.256178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194490, 28.054337, 25.327877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111611, -0.299953, 0.947402,
		0.251206, 0.930912, 0.265138,
		-0.961477, 0.208401, 0.179250,
		27.906048, 28.116858, 25.381653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605188, 28.367844, 25.857649>,  <28.579081, 27.970976, 25.256178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605188, 28.367844, 25.857649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.248335, 28.190746, 25.821693>,  <28.034224, 28.084488, 25.800119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.248335, 28.190746, 25.821693>,  <28.605188, 28.367844, 25.857649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248335, 28.190746, 25.821693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057855, -0.309293, 0.949206,
		-0.448056, 0.841616, 0.301545,
		-0.892132, -0.442743, -0.089889,
		27.980696, 28.057924, 25.794727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402998, 28.461405, 26.485909>,  <28.605188, 28.367844, 25.857649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402998, 28.461405, 26.485909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.138115, 28.201424, 26.336758>,  <27.979185, 28.045435, 26.247267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.138115, 28.201424, 26.336758>,  <28.402998, 28.461405, 26.485909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138115, 28.201424, 26.336758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016765, -0.510349, 0.859804,
		-0.749132, 0.563119, 0.348854,
		-0.662209, -0.649955, -0.372878,
		27.939453, 28.006437, 26.224894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888659, 28.306904, 27.033243>,  <28.402998, 28.461405, 26.485909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888659, 28.306904, 27.033243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.865627, 27.990650, 26.789413>,  <27.851809, 27.800898, 26.643116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.865627, 27.990650, 26.789413>,  <27.888659, 28.306904, 27.033243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865627, 27.990650, 26.789413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081117, -0.604863, 0.792188,
		-0.995040, 0.095060, -0.029307,
		-0.057579, -0.790636, -0.609573,
		27.848354, 27.753460, 26.606541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392864, 27.840982, 27.300503>,  <27.888659, 28.306904, 27.033243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392864, 27.840982, 27.300503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.583612, 27.602852, 27.041836>,  <27.698061, 27.459972, 26.886635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.583612, 27.602852, 27.041836>,  <27.392864, 27.840982, 27.300503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583612, 27.602852, 27.041836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156372, -0.781432, 0.604079,
		-0.864953, -0.186946, -0.465733,
		0.476869, -0.595328, -0.646669,
		27.726673, 27.424253, 26.847836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941748, 27.160576, 27.169466>,  <27.392864, 27.840982, 27.300503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941748, 27.160576, 27.169466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.329205, 27.108406, 27.084877>,  <27.561680, 27.077105, 27.034124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.329205, 27.108406, 27.084877>,  <26.941748, 27.160576, 27.169466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329205, 27.108406, 27.084877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011029, -0.872870, 0.487828,
		-0.248211, -0.470199, -0.846938,
		0.968643, -0.130425, -0.211470,
		27.619797, 27.069279, 27.021437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992538, 26.485516, 26.955935>,  <26.941748, 27.160576, 27.169466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992538, 26.485516, 26.955935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.367384, 26.588577, 27.050114>,  <27.592291, 26.650415, 27.106621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.367384, 26.588577, 27.050114>,  <26.992538, 26.485516, 26.955935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367384, 26.588577, 27.050114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142922, -0.898700, 0.414622,
		0.318427, -0.354896, -0.879007,
		0.937111, 0.257656, 0.235448,
		27.648518, 26.665874, 27.120749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392607, 25.864447, 26.887522>,  <26.992538, 26.485516, 26.955935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392607, 25.864447, 26.887522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.609152, 26.102821, 27.124767>,  <27.739079, 26.245846, 27.267115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.609152, 26.102821, 27.124767>,  <27.392607, 25.864447, 26.887522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609152, 26.102821, 27.124767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349339, -0.801082, 0.486036,
		0.764780, -0.055924, -0.641860,
		0.541363, 0.595937, 0.593115,
		27.771561, 26.281603, 27.302702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.014729, 25.449406, 27.068666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.029947, 25.728424, 27.354877>,  <28.039078, 25.895836, 27.526604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.029947, 25.728424, 27.354877>,  <28.014729, 25.449406, 27.068666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029947, 25.728424, 27.354877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396194, -0.667892, 0.630040,
		0.917378, 0.259517, -0.301775,
		0.038047, 0.697547, 0.715528,
		28.041361, 25.937689, 27.569536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671263, 25.392498, 27.331739>,  <28.014729, 25.449406, 27.068666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671263, 25.392498, 27.331739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.407507, 25.553448, 27.585762>,  <28.249252, 25.650017, 27.738176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.407507, 25.553448, 27.585762>,  <28.671263, 25.392498, 27.331739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407507, 25.553448, 27.585762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102001, -0.789024, 0.605835,
		0.744848, 0.464259, 0.479233,
		-0.659391, 0.402373, 0.635058,
		28.209690, 25.674160, 27.776279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922337, 25.256805, 27.941242>,  <28.671263, 25.392498, 27.331739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922337, 25.256805, 27.941242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.546734, 25.348965, 28.043365>,  <28.321373, 25.404261, 28.104639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.546734, 25.348965, 28.043365>,  <28.922337, 25.256805, 27.941242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546734, 25.348965, 28.043365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025627, -0.787214, 0.616147,
		0.342942, 0.572024, 0.745104,
		-0.939007, 0.230398, 0.255310,
		28.265032, 25.418083, 28.119959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850552, 25.197023, 28.732449>,  <28.922337, 25.256805, 27.941242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850552, 25.197023, 28.732449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.472349, 25.192204, 28.602295>,  <28.245428, 25.189312, 28.524202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.472349, 25.192204, 28.602295>,  <28.850552, 25.197023, 28.732449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472349, 25.192204, 28.602295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173678, -0.826619, 0.535291,
		-0.275419, 0.562633, 0.779480,
		-0.945505, -0.012051, -0.325384,
		28.188698, 25.188589, 28.504681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476320, 25.228630, 29.283516>,  <28.850552, 25.197023, 28.732449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476320, 25.228630, 29.283516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.228691, 25.097595, 28.998016>,  <28.080114, 25.018974, 28.826717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.228691, 25.097595, 28.998016>,  <28.476320, 25.228630, 29.283516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228691, 25.097595, 28.998016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334848, -0.711988, 0.617211,
		-0.710370, 0.621096, 0.331081,
		-0.619072, -0.327587, -0.713748,
		28.042969, 24.999319, 28.783892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800724, 25.193699, 29.490444>,  <28.476320, 25.228630, 29.283516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800724, 25.193699, 29.490444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.816553, 24.924644, 29.194878>,  <27.826052, 24.763212, 29.017538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.816553, 24.924644, 29.194878>,  <27.800724, 25.193699, 29.490444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816553, 24.924644, 29.194878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415968, -0.683461, 0.599877,
		-0.908518, 0.283625, -0.306843,
		0.039575, -0.672636, -0.738915,
		27.828426, 24.722855, 28.973204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284346, 24.647408, 29.622896>,  <27.800724, 25.193699, 29.490444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284346, 24.647408, 29.622896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.485527, 24.450775, 29.338535>,  <27.606236, 24.332796, 29.167919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.485527, 24.450775, 29.338535>,  <27.284346, 24.647408, 29.622896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485527, 24.450775, 29.338535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325436, -0.869684, 0.371136,
		-0.800705, 0.044690, -0.597389,
		0.502954, -0.491582, -0.710904,
		27.636414, 24.303301, 29.125263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849243, 24.239416, 29.193180>,  <27.284346, 24.647408, 29.622896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849243, 24.239416, 29.193180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.198378, 24.050655, 29.143444>,  <27.407860, 23.937399, 29.113602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.198378, 24.050655, 29.143444>,  <26.849243, 24.239416, 29.193180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198378, 24.050655, 29.143444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427165, -0.862001, 0.272917,
		-0.235972, -0.185098, -0.953968,
		0.872838, -0.471903, -0.124341,
		27.460230, 23.909084, 29.106142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688881, 23.591640, 28.980042>,  <26.849243, 24.239416, 29.193180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688881, 23.591640, 28.980042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.069813, 23.515892, 29.075714>,  <27.298372, 23.470442, 29.133118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.069813, 23.515892, 29.075714>,  <26.688881, 23.591640, 28.980042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069813, 23.515892, 29.075714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269225, -0.890427, 0.366956,
		0.143482, -0.413856, -0.898964,
		0.952329, -0.189372, 0.239181,
		27.355511, 23.459080, 29.147469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865530, 22.893728, 28.694504>,  <26.688881, 23.591640, 28.980042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865530, 22.893728, 28.694504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.093122, 22.995090, 29.007439>,  <27.229677, 23.055908, 29.195200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.093122, 22.995090, 29.007439>,  <26.865530, 22.893728, 28.694504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093122, 22.995090, 29.007439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078118, -0.930382, 0.358171,
		0.818633, -0.264906, -0.509573,
		0.568980, 0.253404, 0.782336,
		27.263817, 23.071112, 29.242140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124800, 22.281685, 28.840418>,  <26.865530, 22.893728, 28.694504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124800, 22.281685, 28.840418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.182287, 22.504574, 29.167549>,  <27.216780, 22.638308, 29.363829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.182287, 22.504574, 29.167549>,  <27.124800, 22.281685, 28.840418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182287, 22.504574, 29.167549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030457, -0.823527, 0.566459,
		0.989150, -0.106319, -0.101385,
		0.143718, 0.557224, 0.817830,
		27.225403, 22.671741, 29.412899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592690, 21.869381, 29.206907>,  <27.124800, 22.281685, 28.840418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592690, 21.869381, 29.206907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.407112, 22.122444, 29.454941>,  <27.295767, 22.274282, 29.603762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.407112, 22.122444, 29.454941>,  <27.592690, 21.869381, 29.206907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407112, 22.122444, 29.454941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204935, -0.757636, 0.619668,
		0.861835, 0.160413, 0.481152,
		-0.463941, 0.632657, 0.620084,
		27.267929, 22.312241, 29.640966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821976, 21.760981, 29.899036>,  <27.592690, 21.869381, 29.206907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821976, 21.760981, 29.899036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.467905, 21.941833, 29.942917>,  <27.255463, 22.050346, 29.969244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.467905, 21.941833, 29.942917>,  <27.821976, 21.760981, 29.899036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467905, 21.941833, 29.942917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300717, -0.735919, 0.606624,
		0.355006, 0.503982, 0.787384,
		-0.885178, 0.452134, 0.109700,
		27.202351, 22.077475, 29.975826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720013, 21.695530, 30.544598>,  <27.821976, 21.760981, 29.899036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720013, 21.695530, 30.544598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.356201, 21.784790, 30.404331>,  <27.137915, 21.838346, 30.320171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.356201, 21.784790, 30.404331>,  <27.720013, 21.695530, 30.544598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356201, 21.784790, 30.404331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398350, -0.708815, 0.582150,
		-0.118649, 0.669168, 0.733578,
		-0.909527, 0.223149, -0.350664,
		27.083344, 21.851734, 30.299131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326483, 21.835545, 31.151535>,  <27.720013, 21.695530, 30.544598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326483, 21.835545, 31.151535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.034842, 21.770550, 30.885601>,  <26.859858, 21.731552, 30.726040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.034842, 21.770550, 30.885601>,  <27.326483, 21.835545, 31.151535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034842, 21.770550, 30.885601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512667, -0.513885, 0.687819,
		-0.453413, 0.842330, 0.291372,
		-0.729102, -0.162489, -0.664836,
		26.816111, 21.721804, 30.686150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761896, 21.939409, 31.462145>,  <27.326483, 21.835545, 31.151535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761896, 21.939409, 31.462145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.632099, 21.716286, 31.156582>,  <26.554220, 21.582413, 30.973244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.632099, 21.716286, 31.156582>,  <26.761896, 21.939409, 31.462145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632099, 21.716286, 31.156582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547463, -0.547834, 0.632583,
		-0.771354, 0.623481, -0.127610,
		-0.324494, -0.557808, -0.763907,
		26.534750, 21.548943, 30.927410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110945, 21.703110, 31.671576>,  <26.761896, 21.939409, 31.462145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110945, 21.703110, 31.671576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.234423, 21.448891, 31.388512>,  <26.308510, 21.296358, 31.218674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.234423, 21.448891, 31.388512>,  <26.110945, 21.703110, 31.671576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234423, 21.448891, 31.388512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379957, -0.764454, 0.520810,
		-0.871975, 0.108109, -0.477464,
		0.308695, -0.635549, -0.707661,
		26.327032, 21.258226, 31.176214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565722, 21.248119, 31.614344>,  <26.110945, 21.703110, 31.671576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565722, 21.248119, 31.614344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.879150, 21.060555, 31.451305>,  <26.067207, 20.948015, 31.353483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.879150, 21.060555, 31.451305>,  <25.565722, 21.248119, 31.614344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879150, 21.060555, 31.451305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306423, -0.862369, 0.403020,
		-0.540478, -0.190899, -0.819415,
		0.783574, -0.468911, -0.407595,
		26.114223, 20.919882, 31.329027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237988, 20.629444, 31.354649>,  <25.565722, 21.248119, 31.614344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237988, 20.629444, 31.354649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.631945, 20.562210, 31.371292>,  <25.868319, 20.521870, 31.381277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.631945, 20.562210, 31.371292>,  <25.237988, 20.629444, 31.354649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631945, 20.562210, 31.371292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169558, -0.887399, 0.428688,
		-0.035134, -0.429267, -0.902494,
		0.984893, -0.168087, 0.041608,
		25.927412, 20.511784, 31.383774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.285646, 19.837317, 31.153723>,  <25.237988, 20.629444, 31.354649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.285646, 19.837317, 31.153723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.636978, 19.931805, 31.319969>,  <25.847778, 19.988497, 31.419716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.636978, 19.931805, 31.319969>,  <25.285646, 19.837317, 31.153723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636978, 19.931805, 31.319969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015537, -0.883036, 0.469048,
		0.477801, -0.405522, -0.779268,
		0.878331, 0.236219, 0.415615,
		25.900478, 20.002670, 31.444654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761175, 19.183750, 31.121511>,  <25.285646, 19.837317, 31.153723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761175, 19.183750, 31.121511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.913685, 19.418468, 31.407253>,  <26.005190, 19.559299, 31.578697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.913685, 19.418468, 31.407253>,  <25.761175, 19.183750, 31.121511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913685, 19.418468, 31.407253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049640, -0.784603, 0.618008,
		0.923129, -0.200169, -0.328276,
		0.381273, 0.586797, 0.714353,
		26.028067, 19.594507, 31.621559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390923, 18.751179, 31.478888>,  <25.761175, 19.183750, 31.121511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390923, 18.751179, 31.478888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.304831, 19.045887, 31.735275>,  <26.253176, 19.222712, 31.889109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.304831, 19.045887, 31.735275>,  <26.390923, 18.751179, 31.478888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304831, 19.045887, 31.735275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024441, -0.660212, 0.750681,
		0.976258, 0.145901, 0.160104,
		-0.215228, 0.736772, 0.640971,
		26.240263, 19.266918, 31.927567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665754, 18.671453, 32.217960>,  <26.390923, 18.751179, 31.478888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665754, 18.671453, 32.217960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.336666, 18.897255, 32.244694>,  <26.139214, 19.032736, 32.260735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.336666, 18.897255, 32.244694>,  <26.665754, 18.671453, 32.217960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336666, 18.897255, 32.244694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313610, -0.548804, 0.774896,
		0.474110, 0.616563, 0.628546,
		-0.822720, 0.564504, 0.066833,
		26.089849, 19.066607, 32.264744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240314, 18.280128, 32.392185>,  <26.665754, 18.671453, 32.217960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240314, 18.280128, 32.392185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.448696, 18.252686, 32.732513>,  <27.573725, 18.236219, 32.936710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.448696, 18.252686, 32.732513>,  <27.240314, 18.280128, 32.392185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448696, 18.252686, 32.732513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621912, 0.713243, -0.323280,
		-0.584664, 0.697551, 0.414236,
		0.520955, -0.068608, 0.850822,
		27.604982, 18.232103, 32.987759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311964, 18.853569, 32.769573>,  <27.240314, 18.280128, 32.392185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311964, 18.853569, 32.769573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.639269, 18.632954, 32.834377>,  <27.835651, 18.500584, 32.873260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.639269, 18.632954, 32.834377>,  <27.311964, 18.853569, 32.769573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639269, 18.632954, 32.834377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566064, 0.822170, -0.060062,
		-0.100076, 0.140856, 0.984959,
		0.818264, -0.551540, 0.162013,
		27.884748, 18.467491, 32.882980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768188, 19.289251, 33.062008>,  <27.311964, 18.853569, 32.769573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768188, 19.289251, 33.062008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.028021, 18.998322, 32.973427>,  <28.183920, 18.823763, 32.920280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.028021, 18.998322, 32.973427>,  <27.768188, 19.289251, 33.062008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028021, 18.998322, 32.973427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749386, 0.661660, 0.025033,
		0.128318, -0.182213, 0.974850,
		0.649581, -0.727327, -0.221450,
		28.222895, 18.780123, 32.906990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332214, 19.474586, 33.448212>,  <27.768188, 19.289251, 33.062008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332214, 19.474586, 33.448212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.465967, 19.246052, 33.148407>,  <28.546219, 19.108931, 32.968525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.465967, 19.246052, 33.148407>,  <28.332214, 19.474586, 33.448212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465967, 19.246052, 33.148407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741289, 0.650543, -0.165184,
		0.581964, -0.500368, 0.641054,
		0.334380, -0.571337, -0.749509,
		28.566280, 19.074650, 32.923553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004614, 19.681849, 33.470943>,  <28.332214, 19.474586, 33.448212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004614, 19.681849, 33.470943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.962564, 19.512413, 33.111050>,  <28.937336, 19.410751, 32.895115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.962564, 19.512413, 33.111050>,  <29.004614, 19.681849, 33.470943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962564, 19.512413, 33.111050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657186, 0.649442, -0.382535,
		0.746362, -0.631506, 0.210105,
		-0.105122, -0.423588, -0.899735,
		28.931028, 19.385336, 32.841129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740833, 19.578426, 33.140312>,  <29.004614, 19.681849, 33.470943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740833, 19.578426, 33.140312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.495445, 19.545753, 32.826118>,  <29.348213, 19.526150, 32.637604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.495445, 19.545753, 32.826118>,  <29.740833, 19.578426, 33.140312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495445, 19.545753, 32.826118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598432, 0.600928, -0.529873,
		0.515300, -0.795119, -0.319769,
		-0.613470, -0.081683, -0.785482,
		29.311405, 19.521248, 32.590473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161301, 19.615408, 32.416046>,  <29.740833, 19.578426, 33.140312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161301, 19.615408, 32.416046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.788208, 19.704624, 32.302723>,  <29.564352, 19.758154, 32.234730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.788208, 19.704624, 32.302723>,  <30.161301, 19.615408, 32.416046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788208, 19.704624, 32.302723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337741, 0.815565, -0.469877,
		0.126254, -0.533954, -0.836034,
		-0.932733, 0.223039, -0.283307,
		29.508389, 19.771536, 32.217731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238659, 19.767708, 31.682177>,  <30.161301, 19.615408, 32.416046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238659, 19.767708, 31.682177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.893661, 19.911236, 31.824924>,  <29.686663, 19.997353, 31.910574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.893661, 19.911236, 31.824924>,  <30.238659, 19.767708, 31.682177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893661, 19.911236, 31.824924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105902, 0.817539, -0.566052,
		-0.494866, -0.450422, -0.743120,
		-0.862492, 0.358818, 0.356871,
		29.634914, 20.018881, 31.931986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910587, 19.972017, 31.066235>,  <30.238659, 19.767708, 31.682177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910587, 19.972017, 31.066235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.725067, 20.164890, 31.363525>,  <29.613756, 20.280615, 31.541901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.725067, 20.164890, 31.363525>,  <29.910587, 19.972017, 31.066235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725067, 20.164890, 31.363525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001861, 0.838383, -0.545078,
		-0.885938, -0.254190, -0.387945,
		-0.463800, 0.482183, 0.743229,
		29.585928, 20.309546, 31.586494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349176, 20.311529, 30.757412>,  <29.910587, 19.972017, 31.066235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349176, 20.311529, 30.757412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.404116, 20.519073, 31.094913>,  <29.437078, 20.643600, 31.297415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.404116, 20.519073, 31.094913>,  <29.349176, 20.311529, 30.757412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404116, 20.519073, 31.094913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018658, 0.853030, -0.521528,
		-0.990347, 0.055887, 0.126842,
		0.137347, 0.518861, 0.843753,
		29.445320, 20.674732, 31.348040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863838, 20.913292, 30.803692>,  <29.349176, 20.311529, 30.757412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863838, 20.913292, 30.803692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.186575, 21.000286, 31.023403>,  <29.380217, 21.052483, 31.155230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.186575, 21.000286, 31.023403>,  <28.863838, 20.913292, 30.803692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186575, 21.000286, 31.023403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079823, 0.881109, -0.466127,
		-0.585347, 0.419937, 0.693557,
		0.806844, 0.217484, 0.549276,
		29.428629, 21.065531, 31.188187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680120, 21.600094, 31.053576>,  <28.863838, 20.913292, 30.803692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680120, 21.600094, 31.053576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.076906, 21.555920, 31.078266>,  <29.314978, 21.529415, 31.093081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.076906, 21.555920, 31.078266>,  <28.680120, 21.600094, 31.053576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076906, 21.555920, 31.078266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125924, 0.814705, -0.566038,
		0.012222, 0.569262, 0.822065,
		0.991965, -0.110436, 0.061726,
		29.374496, 21.522789, 31.096785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934450, 22.239185, 31.200077>,  <28.680120, 21.600094, 31.053576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934450, 22.239185, 31.200077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.246275, 22.030827, 31.060963>,  <29.433369, 21.905811, 30.977493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.246275, 22.030827, 31.060963>,  <28.934450, 22.239185, 31.200077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246275, 22.030827, 31.060963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290373, 0.792572, -0.536202,
		0.554950, 0.317014, 0.769111,
		0.779560, -0.520895, -0.347786,
		29.480143, 21.874557, 30.956627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332451, 22.684355, 30.990112>,  <28.934450, 22.239185, 31.200077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332451, 22.684355, 30.990112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.528734, 22.392174, 30.800106>,  <29.646505, 22.216866, 30.686102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.528734, 22.392174, 30.800106>,  <29.332451, 22.684355, 30.990112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528734, 22.392174, 30.800106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386186, 0.671023, -0.632920,
		0.781066, 0.127137, 0.611369,
		0.490711, -0.730455, -0.475015,
		29.675947, 22.173037, 30.657602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058754, 22.883877, 30.929754>,  <29.332451, 22.684355, 30.990112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058754, 22.883877, 30.929754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.982151, 22.610619, 30.647865>,  <29.936190, 22.446663, 30.478731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.982151, 22.610619, 30.647865>,  <30.058754, 22.883877, 30.929754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982151, 22.610619, 30.647865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411484, 0.595981, -0.689556,
		0.891070, -0.422038, 0.166969,
		-0.191508, -0.683147, -0.704723,
		29.924698, 22.405674, 30.436449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558321, 22.828955, 30.467533>,  <30.058754, 22.883877, 30.929754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558321, 22.828955, 30.467533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.312649, 22.632217, 30.220673>,  <30.165245, 22.514175, 30.072557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.312649, 22.632217, 30.220673>,  <30.558321, 22.828955, 30.467533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312649, 22.632217, 30.220673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415660, 0.463143, -0.782768,
		0.670828, -0.737284, -0.080013,
		-0.614180, -0.491844, -0.617149,
		30.128395, 22.484665, 30.035528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992584, 22.646042, 29.854597>,  <30.558321, 22.828955, 30.467533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992584, 22.646042, 29.854597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.618755, 22.617413, 29.715199>,  <30.394459, 22.600235, 29.631559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.618755, 22.617413, 29.715199>,  <30.992584, 22.646042, 29.854597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618755, 22.617413, 29.715199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292697, 0.402156, -0.867525,
		0.202242, -0.912769, -0.354896,
		-0.934573, -0.071573, -0.348498,
		30.338383, 22.595940, 29.610649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037670, 22.344610, 29.186096>,  <30.992584, 22.646042, 29.854597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037670, 22.344610, 29.186096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.696726, 22.553680, 29.192898>,  <30.492159, 22.679123, 29.196980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.696726, 22.553680, 29.192898>,  <31.037670, 22.344610, 29.186096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696726, 22.553680, 29.192898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207175, 0.367352, -0.906715,
		-0.480166, -0.769325, -0.421402,
		-0.852361, 0.522677, 0.017005,
		30.441017, 22.710484, 29.198000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738201, 22.259396, 28.485069>,  <31.037670, 22.344610, 29.186096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738201, 22.259396, 28.485069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.543653, 22.575886, 28.633343>,  <30.426926, 22.765779, 28.722307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.543653, 22.575886, 28.633343>,  <30.738201, 22.259396, 28.485069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543653, 22.575886, 28.633343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050324, 0.398173, -0.915929,
		-0.872303, -0.464134, -0.153841,
		-0.486368, 0.791226, 0.370684,
		30.397743, 22.813253, 28.744549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192097, 22.466557, 28.071138>,  <30.738201, 22.259396, 28.485069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192097, 22.466557, 28.071138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.238655, 22.806744, 28.276333>,  <30.266590, 23.010857, 28.399450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.238655, 22.806744, 28.276333>,  <30.192097, 22.466557, 28.071138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238655, 22.806744, 28.276333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100508, 0.523931, -0.845810,
		-0.988104, 0.046889, 0.146462,
		0.116395, 0.850469, 0.512986,
		30.273573, 23.061884, 28.430229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666288, 22.904633, 27.828783>,  <30.192097, 22.466557, 28.071138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666288, 22.904633, 27.828783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.921099, 23.161034, 28.000046>,  <30.073984, 23.314875, 28.102802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.921099, 23.161034, 28.000046>,  <29.666288, 22.904633, 27.828783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921099, 23.161034, 28.000046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169960, 0.658565, -0.733080,
		-0.751872, 0.394222, 0.528467,
		0.637026, 0.641000, 0.428155,
		30.112207, 23.353334, 28.128492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.922501, 30.819590, 17.144938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.171926, 30.631096, 17.394451>,  <21.321583, 30.518000, 17.544159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.171926, 30.631096, 17.394451>,  <20.922501, 30.819590, 17.144938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.171926, 30.631096, 17.394451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594781, 0.231854, 0.769727,
		-0.507347, -0.850989, -0.135705,
		0.623565, -0.471234, 0.623783,
		21.358995, 30.489725, 17.581587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.475761, 30.311577, 17.525450>,  <20.922501, 30.819590, 17.144938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.475761, 30.311577, 17.525450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.794645, 30.362164, 17.761574>,  <20.985975, 30.392515, 17.903248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.794645, 30.362164, 17.761574>,  <20.475761, 30.311577, 17.525450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.794645, 30.362164, 17.761574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599237, 0.284489, 0.748319,
		-0.073301, -0.950301, 0.302580,
		0.797209, 0.126464, 0.590309,
		21.033808, 30.400103, 17.938667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275978, 30.002550, 18.106930>,  <20.475761, 30.311577, 17.525450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.275978, 30.002550, 18.106930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.581509, 30.231411, 18.226402>,  <20.764828, 30.368727, 18.298086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.581509, 30.231411, 18.226402>,  <20.275978, 30.002550, 18.106930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.581509, 30.231411, 18.226402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528915, 0.289680, 0.797706,
		0.369888, -0.767285, 0.523885,
		0.763827, 0.572153, 0.298679,
		20.810658, 30.403057, 18.316006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.247465, 29.974396, 18.884459>,  <20.275978, 30.002550, 18.106930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.247465, 29.974396, 18.884459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.480915, 30.290283, 18.808849>,  <20.620985, 30.479816, 18.763483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.480915, 30.290283, 18.808849>,  <20.247465, 29.974396, 18.884459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.480915, 30.290283, 18.808849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391462, 0.477569, 0.786565,
		0.711436, -0.385062, 0.587865,
		0.583623, 0.789718, -0.189023,
		20.656002, 30.527199, 18.752142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.640423, 30.131407, 19.518269>,  <20.247465, 29.974396, 18.884459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.640423, 30.131407, 19.518269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.601860, 30.469990, 19.308807>,  <20.578722, 30.673140, 19.183130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.601860, 30.469990, 19.308807>,  <20.640423, 30.131407, 19.518269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.601860, 30.469990, 19.308807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029032, 0.523490, 0.851537,
		0.994918, 0.097298, -0.025895,
		-0.096408, 0.846458, -0.523654,
		20.572937, 30.723927, 19.151711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.103050, 30.630875, 19.868929>,  <20.640423, 30.131407, 19.518269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.103050, 30.630875, 19.868929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.833399, 30.835514, 19.655830>,  <20.671608, 30.958298, 19.527971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.833399, 30.835514, 19.655830>,  <21.103050, 30.630875, 19.868929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.833399, 30.835514, 19.655830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185304, 0.581066, 0.792480,
		0.714992, 0.632953, -0.296913,
		-0.674129, 0.511597, -0.532746,
		20.631161, 30.988993, 19.496006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.316051, 31.304363, 19.946676>,  <21.103050, 30.630875, 19.868929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.316051, 31.304363, 19.946676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.935144, 31.362125, 19.839100>,  <20.706600, 31.396782, 19.774553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.935144, 31.362125, 19.839100>,  <21.316051, 31.304363, 19.946676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.935144, 31.362125, 19.839100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079697, 0.732863, 0.675692,
		0.294670, 0.664875, -0.686375,
		-0.952270, 0.144404, -0.268941,
		20.649464, 31.405447, 19.758417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.267153, 32.073929, 19.819565>,  <21.316051, 31.304363, 19.946676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.267153, 32.073929, 19.819565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.895914, 31.929310, 19.855164>,  <20.673172, 31.842537, 19.876524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.895914, 31.929310, 19.855164>,  <21.267153, 32.073929, 19.819565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.895914, 31.929310, 19.855164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234347, 0.752938, 0.614952,
		-0.289347, 0.549877, -0.783526,
		-0.928095, -0.361552, 0.088999,
		20.617485, 31.820845, 19.881863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.752377, 32.635941, 19.594885>,  <21.267153, 32.073929, 19.819565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.752377, 32.635941, 19.594885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.591583, 32.371288, 19.848076>,  <20.495108, 32.212498, 19.999990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.591583, 32.371288, 19.848076>,  <20.752377, 32.635941, 19.594885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.591583, 32.371288, 19.848076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221541, 0.741027, 0.633876,
		-0.888442, 0.114578, -0.444458,
		-0.401984, -0.661628, 0.632976,
		20.470987, 32.172798, 20.037968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.305960, 33.062641, 20.022568>,  <20.752377, 32.635941, 19.594885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.305960, 33.062641, 20.022568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.274673, 32.727665, 20.238930>,  <20.255901, 32.526680, 20.368746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.274673, 32.727665, 20.238930>,  <20.305960, 33.062641, 20.022568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.274673, 32.727665, 20.238930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304614, 0.536693, 0.786874,
		-0.949259, -0.103220, -0.297075,
		-0.078217, -0.837440, 0.540903,
		20.251207, 32.476433, 20.401201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.608376, 33.104992, 20.390675>,  <20.305960, 33.062641, 20.022568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.608376, 33.104992, 20.390675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.859324, 32.861103, 20.584435>,  <20.009892, 32.714767, 20.700689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.859324, 32.861103, 20.584435>,  <19.608376, 33.104992, 20.390675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.859324, 32.861103, 20.584435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282344, 0.401612, 0.871200,
		-0.725733, -0.683332, 0.079807,
		0.627370, -0.609726, 0.484398,
		20.047535, 32.678185, 20.729753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.255928, 32.820316, 20.958273>,  <19.608376, 33.104992, 20.390675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.255928, 32.820316, 20.958273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.638966, 32.780193, 21.066311>,  <19.868788, 32.756119, 21.131134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.638966, 32.780193, 21.066311>,  <19.255928, 32.820316, 20.958273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.638966, 32.780193, 21.066311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180301, 0.522570, 0.833314,
		-0.224736, -0.846675, 0.482323,
		0.957593, -0.100312, 0.270097,
		19.926243, 32.750099, 21.147341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.196449, 32.856133, 21.665838>,  <19.255928, 32.820316, 20.958273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.196449, 32.856133, 21.665838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.589979, 32.908829, 21.617287>,  <19.826097, 32.940445, 21.588156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.589979, 32.908829, 21.617287>,  <19.196449, 32.856133, 21.665838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.589979, 32.908829, 21.617287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039635, 0.500722, 0.864700,
		0.174691, -0.855525, 0.487401,
		0.983825, 0.131737, -0.121381,
		19.885126, 32.948349, 21.580872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.484663, 33.002728, 22.365950>,  <19.196449, 32.856133, 21.665838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.484663, 33.002728, 22.365950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.754395, 33.161137, 22.116646>,  <19.916233, 33.256180, 21.967064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.754395, 33.161137, 22.116646>,  <19.484663, 33.002728, 22.365950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.754395, 33.161137, 22.116646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394607, 0.520153, 0.757447,
		0.624154, -0.756709, 0.194480,
		0.674327, 0.396021, -0.623258,
		19.956692, 33.279942, 21.929668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.009748, 33.025101, 22.860996>,  <19.484663, 33.002728, 22.365950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.009748, 33.025101, 22.860996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.128019, 33.256493, 22.556908>,  <20.198982, 33.395329, 22.374454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.128019, 33.256493, 22.556908>,  <20.009748, 33.025101, 22.860996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.128019, 33.256493, 22.556908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391454, 0.652552, 0.648799,
		0.871400, -0.489428, -0.033502,
		0.295678, 0.578478, -0.760222,
		20.216722, 33.430035, 22.328840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.767820, 33.226093, 22.983467>,  <20.009748, 33.025101, 22.860996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.767820, 33.226093, 22.983467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.583204, 33.484909, 22.740707>,  <20.472435, 33.640198, 22.595053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.583204, 33.484909, 22.740707>,  <20.767820, 33.226093, 22.983467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.583204, 33.484909, 22.740707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372372, 0.762239, 0.529463,
		0.805182, 0.018378, -0.592743,
		-0.461542, 0.647035, -0.606897,
		20.444742, 33.679020, 22.558638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313293, 33.752380, 22.956770>,  <20.767820, 33.226093, 22.983467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313293, 33.752380, 22.956770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.968435, 33.914013, 22.834507>,  <20.761520, 34.010990, 22.761148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.968435, 33.914013, 22.834507>,  <21.313293, 33.752380, 22.956770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.968435, 33.914013, 22.834507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253511, 0.866370, 0.430273,
		0.438678, 0.293470, -0.849375,
		-0.862145, 0.404077, -0.305659,
		20.709791, 34.035236, 22.742809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.497656, 34.267326, 22.536680>,  <21.313293, 33.752380, 22.956770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.497656, 34.267326, 22.536680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.125284, 34.368820, 22.641747>,  <20.901861, 34.429714, 22.704786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.125284, 34.368820, 22.641747>,  <21.497656, 34.267326, 22.536680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.125284, 34.368820, 22.641747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333369, 0.884088, 0.327497,
		-0.149123, 0.392441, -0.907608,
		-0.930928, 0.253731, 0.262665,
		20.846006, 34.444939, 22.720547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.453239, 34.952030, 22.370167>,  <21.497656, 34.267326, 22.536680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.453239, 34.952030, 22.370167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.157042, 34.896107, 22.633110>,  <20.979322, 34.862553, 22.790876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.157042, 34.896107, 22.633110>,  <21.453239, 34.952030, 22.370167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.157042, 34.896107, 22.633110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284209, 0.821212, 0.494809,
		-0.609007, 0.553231, -0.568371,
		-0.740497, -0.139806, 0.657357,
		20.934893, 34.854164, 22.830317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.207628, 35.666206, 22.509478>,  <21.453239, 34.952030, 22.370167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.207628, 35.666206, 22.509478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.058737, 35.437027, 22.801552>,  <20.969402, 35.299519, 22.976797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.058737, 35.437027, 22.801552>,  <21.207628, 35.666206, 22.509478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.058737, 35.437027, 22.801552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025250, 0.792679, 0.609116,
		-0.927798, 0.208293, -0.309524,
		-0.372228, -0.572952, 0.730187,
		20.947069, 35.265141, 23.020607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.478348, 35.955879, 22.784487>,  <21.207628, 35.666206, 22.509478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.478348, 35.955879, 22.784487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.678476, 35.741764, 23.056705>,  <20.798553, 35.613293, 23.220036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.678476, 35.741764, 23.056705>,  <20.478348, 35.955879, 22.784487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.678476, 35.741764, 23.056705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054668, 0.764896, 0.641830,
		-0.864113, -0.358324, 0.353430,
		0.500320, -0.535292, 0.680545,
		20.828573, 35.581177, 23.260868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.870127, 36.259434, 22.360771>,  <20.478348, 35.955879, 22.784487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.870127, 36.259434, 22.360771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.658936, 36.431194, 22.067688>,  <19.532221, 36.534248, 21.891838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.658936, 36.431194, 22.067688>,  <19.870127, 36.259434, 22.360771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.658936, 36.431194, 22.067688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653437, -0.345682, -0.673442,
		-0.542458, -0.834338, -0.098073,
		-0.527976, 0.429399, -0.732706,
		19.500542, 36.560013, 21.847876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.874979, 35.762417, 21.835287>,  <19.870127, 36.259434, 22.360771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.874979, 35.762417, 21.835287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.758415, 36.100502, 21.656090>,  <19.688477, 36.303352, 21.548573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.758415, 36.100502, 21.656090>,  <19.874979, 35.762417, 21.835287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.758415, 36.100502, 21.656090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532984, -0.245433, -0.809748,
		-0.794360, -0.474741, -0.378962,
		-0.291410, 0.845212, -0.447992,
		19.670992, 36.354065, 21.521692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.598671, 35.565758, 21.180038>,  <19.874979, 35.762417, 21.835287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.598671, 35.565758, 21.180038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.687082, 35.954460, 21.146969>,  <19.740129, 36.187683, 21.127127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.687082, 35.954460, 21.146969>,  <19.598671, 35.565758, 21.180038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.687082, 35.954460, 21.146969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337537, -0.155752, -0.928337,
		-0.914994, 0.177284, -0.362430,
		0.221028, 0.971757, -0.082673,
		19.753391, 36.245987, 21.122168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.396667, 35.757103, 20.552904>,  <19.598671, 35.565758, 21.180038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.396667, 35.757103, 20.552904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.670698, 36.039585, 20.624393>,  <19.835117, 36.209076, 20.667288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.670698, 36.039585, 20.624393>,  <19.396667, 35.757103, 20.552904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.670698, 36.039585, 20.624393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404236, -0.164436, -0.899752,
		-0.606020, 0.688648, -0.398125,
		0.685078, 0.706205, 0.178725,
		19.876221, 36.251446, 20.678011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.483431, 36.063557, 19.918776>,  <19.396667, 35.757103, 20.552904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.483431, 36.063557, 19.918776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.804937, 36.204071, 20.110840>,  <19.997841, 36.288380, 20.226078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.804937, 36.204071, 20.110840>,  <19.483431, 36.063557, 19.918776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.804937, 36.204071, 20.110840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511126, 0.005320, -0.859489,
		-0.304484, 0.936252, -0.175277,
		0.803766, 0.351289, 0.480162,
		20.046066, 36.309460, 20.254889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.774923, 36.601849, 19.521036>,  <19.483431, 36.063557, 19.918776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.774923, 36.601849, 19.521036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.087637, 36.484386, 19.741066>,  <20.275265, 36.413910, 19.873085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.087637, 36.484386, 19.741066>,  <19.774923, 36.601849, 19.521036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.087637, 36.484386, 19.741066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577484, 0.008194, -0.816361,
		0.235219, 0.955877, 0.175985,
		0.781783, -0.293652, 0.550076,
		20.322172, 36.396290, 19.906090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.339602, 37.055870, 19.270815>,  <19.774923, 36.601849, 19.521036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.339602, 37.055870, 19.270815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.482969, 36.727467, 19.448566>,  <20.568991, 36.530422, 19.555218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.482969, 36.727467, 19.448566>,  <20.339602, 37.055870, 19.270815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482969, 36.727467, 19.448566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602343, -0.160293, -0.781977,
		0.713244, 0.547946, 0.437079,
		0.358421, -0.821012, 0.444380,
		20.590496, 36.481163, 19.581881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.053385, 37.121891, 19.139666>,  <20.339602, 37.055870, 19.270815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.053385, 37.121891, 19.139666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.002964, 36.736462, 19.234016>,  <20.972712, 36.505203, 19.290627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.002964, 36.736462, 19.234016>,  <21.053385, 37.121891, 19.139666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.002964, 36.736462, 19.234016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465716, -0.267422, -0.843560,
		0.875911, 0.003518, 0.482461,
		-0.126053, -0.963573, 0.235876,
		20.965149, 36.447392, 19.304779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.659590, 36.712463, 19.168182>,  <21.053385, 37.121891, 19.139666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.659590, 36.712463, 19.168182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.406796, 36.404839, 19.129940>,  <21.255119, 36.220264, 19.106995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.406796, 36.404839, 19.129940>,  <21.659590, 36.712463, 19.168182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.406796, 36.404839, 19.129940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638531, -0.446829, -0.626595,
		0.439171, -0.457046, 0.773458,
		-0.631986, -0.769060, -0.095604,
		21.217199, 36.174122, 19.101259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.087534, 36.084953, 19.329010>,  <21.659590, 36.712463, 19.168182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.087534, 36.084953, 19.329010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.765875, 35.975811, 19.117767>,  <21.572880, 35.910328, 18.991022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.765875, 35.975811, 19.117767>,  <22.087534, 36.084953, 19.329010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.765875, 35.975811, 19.117767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589758, -0.477358, -0.651395,
		-0.074361, -0.835273, 0.544785,
		-0.804150, -0.272853, -0.528105,
		21.524630, 35.893955, 18.959335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.265375, 35.370018, 19.153210>,  <22.087534, 36.084953, 19.329010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.265375, 35.370018, 19.153210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.934454, 35.414364, 18.932926>,  <21.735901, 35.440971, 18.800756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.934454, 35.414364, 18.932926>,  <22.265375, 35.370018, 19.153210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.934454, 35.414364, 18.932926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338526, -0.683945, -0.646234,
		-0.448297, -0.721061, 0.528301,
		-0.827303, 0.110861, -0.550708,
		21.686264, 35.447624, 18.767714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.951437, 34.708206, 19.074371>,  <22.265375, 35.370018, 19.153210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.951437, 34.708206, 19.074371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.819405, 34.941143, 18.777206>,  <21.740185, 35.080906, 18.598907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.819405, 34.941143, 18.777206>,  <21.951437, 34.708206, 19.074371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.819405, 34.941143, 18.777206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181501, -0.733184, -0.655361,
		-0.926339, -0.351161, 0.136314,
		-0.330081, 0.582346, -0.742913,
		21.720381, 35.115849, 18.554333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.413343, 34.356480, 18.682804>,  <21.951437, 34.708206, 19.074371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.413343, 34.356480, 18.682804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.607113, 34.608093, 18.439610>,  <21.723375, 34.759060, 18.293692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.607113, 34.608093, 18.439610>,  <21.413343, 34.356480, 18.682804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.607113, 34.608093, 18.439610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038828, -0.709750, -0.703383,
		-0.873971, 0.317129, -0.368244,
		0.484425, 0.629034, -0.607987,
		21.752439, 34.796803, 18.257214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.142879, 34.210373, 18.038042>,  <21.413343, 34.356480, 18.682804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.142879, 34.210373, 18.038042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.479963, 34.417053, 17.977558>,  <21.682213, 34.541061, 17.941267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.479963, 34.417053, 17.977558>,  <21.142879, 34.210373, 18.038042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.479963, 34.417053, 17.977558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264546, -0.642043, -0.719580,
		-0.468889, 0.566395, -0.677746,
		0.842709, 0.516698, -0.151209,
		21.732777, 34.572063, 17.932196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.177771, 34.216030, 17.344749>,  <21.142879, 34.210373, 18.038042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.177771, 34.216030, 17.344749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.553745, 34.303104, 17.449924>,  <21.779329, 34.355347, 17.513029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.553745, 34.303104, 17.449924>,  <21.177771, 34.216030, 17.344749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.553745, 34.303104, 17.449924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340732, -0.551920, -0.761108,
		-0.020559, 0.804984, -0.592941,
		0.939936, 0.217682, 0.262937,
		21.835726, 34.368408, 17.528805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.626637, 34.415226, 16.742086>,  <21.177771, 34.216030, 17.344749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.626637, 34.415226, 16.742086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.886387, 34.285748, 17.017342>,  <22.042236, 34.208061, 17.182495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.886387, 34.285748, 17.017342>,  <21.626637, 34.415226, 16.742086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.886387, 34.285748, 17.017342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433835, -0.585501, -0.684818,
		0.624580, 0.743241, -0.239777,
		0.649374, -0.323700, 0.688136,
		22.081200, 34.188637, 17.223782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.147018, 34.290306, 16.403206>,  <21.626637, 34.415226, 16.742086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.147018, 34.290306, 16.403206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.254364, 34.094547, 16.735104>,  <22.318771, 33.977093, 16.934242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.254364, 34.094547, 16.735104>,  <22.147018, 34.290306, 16.403206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.254364, 34.094547, 16.735104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431182, -0.709212, -0.557763,
		0.861431, 0.507454, 0.020692,
		0.268364, -0.489396, 0.829742,
		22.334873, 33.947727, 16.984026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.834650, 34.087646, 16.280939>,  <22.147018, 34.290306, 16.403206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.834650, 34.087646, 16.280939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.678032, 33.858009, 16.568581>,  <22.584061, 33.720226, 16.741165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.678032, 33.858009, 16.568581>,  <22.834650, 34.087646, 16.280939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.678032, 33.858009, 16.568581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093700, -0.802314, -0.589502,
		0.915376, -0.163435, 0.367933,
		-0.391543, -0.574091, 0.719106,
		22.560570, 33.685783, 16.784313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.268961, 33.507099, 16.252506>,  <22.834650, 34.087646, 16.280939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.268961, 33.507099, 16.252506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.937458, 33.404076, 16.451233>,  <22.738556, 33.342262, 16.570469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.937458, 33.404076, 16.451233>,  <23.268961, 33.507099, 16.252506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.937458, 33.404076, 16.451233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128029, -0.951509, -0.279714,
		0.544769, -0.168207, 0.821543,
		-0.828755, -0.257561, 0.496817,
		22.688831, 33.326809, 16.600279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.394506, 33.011436, 16.719545>,  <23.268961, 33.507099, 16.252506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.394506, 33.011436, 16.719545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.000692, 32.977974, 16.657982>,  <22.764404, 32.957897, 16.621044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.000692, 32.977974, 16.657982>,  <23.394506, 33.011436, 16.719545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.000692, 32.977974, 16.657982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124170, -0.953024, -0.276273,
		-0.123567, -0.291112, 0.948675,
		-0.984537, -0.083658, -0.153909,
		22.705332, 32.952877, 16.611809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.134018, 32.432083, 17.078667>,  <23.394506, 33.011436, 16.719545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.134018, 32.432083, 17.078667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.891914, 32.508827, 16.769642>,  <22.746653, 32.554874, 16.584227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.891914, 32.508827, 16.769642>,  <23.134018, 32.432083, 17.078667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.891914, 32.508827, 16.769642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100973, -0.944177, -0.313582,
		-0.789601, -0.267806, 0.552097,
		-0.605257, 0.191858, -0.772564,
		22.710337, 32.566383, 16.537872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.828672, 27.594852, 25.612679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190092, 27.747551, 25.690521>,  <27.406944, 27.839170, 25.737226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190092, 27.747551, 25.690521>,  <26.828672, 27.594852, 25.612679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190092, 27.747551, 25.690521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129350, 0.675989, -0.725470,
		-0.408499, 0.630324, 0.660167,
		0.903547, 0.381746, 0.194608,
		27.461157, 27.862074, 25.748903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626429, 28.301174, 25.589542>,  <26.828672, 27.594852, 25.612679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626429, 28.301174, 25.589542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021204, 28.256416, 25.543186>,  <27.258070, 28.229563, 25.515373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021204, 28.256416, 25.543186>,  <26.626429, 28.301174, 25.589542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021204, 28.256416, 25.543186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024246, 0.608025, -0.793548,
		0.159255, 0.785994, 0.597371,
		0.986940, -0.111893, -0.115888,
		27.317286, 28.222849, 25.508419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876583, 28.962551, 25.680264>,  <26.626429, 28.301174, 25.589542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876583, 28.962551, 25.680264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149145, 28.758358, 25.470467>,  <27.312683, 28.635841, 25.344589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149145, 28.758358, 25.470467>,  <26.876583, 28.962551, 25.680264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149145, 28.758358, 25.470467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018554, 0.704334, -0.709626,
		0.731670, 0.493275, 0.470466,
		0.681406, -0.510483, -0.524493,
		27.353567, 28.605213, 25.313118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321838, 29.402891, 25.385372>,  <26.876583, 28.962551, 25.680264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321838, 29.402891, 25.385372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393669, 29.095184, 25.140102>,  <27.436768, 28.910561, 24.992941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393669, 29.095184, 25.140102>,  <27.321838, 29.402891, 25.385372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393669, 29.095184, 25.140102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180990, 0.638500, -0.748037,
		0.966951, 0.023352, 0.253890,
		0.179577, -0.769267, -0.613172,
		27.447542, 28.864405, 24.956150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923870, 29.534096, 24.898884>,  <27.321838, 29.402891, 25.385372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923870, 29.534096, 24.898884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709463, 29.247055, 24.721016>,  <27.580818, 29.074831, 24.614296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709463, 29.247055, 24.721016>,  <27.923870, 29.534096, 24.898884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709463, 29.247055, 24.721016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074687, 0.484357, -0.871677,
		0.840896, -0.500446, -0.206029,
		-0.536019, -0.717602, -0.444670,
		27.548658, 29.031775, 24.587614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336792, 29.463160, 24.305542>,  <27.923870, 29.534096, 24.898884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336792, 29.463160, 24.305542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979454, 29.303223, 24.223503>,  <27.765051, 29.207260, 24.174280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979454, 29.303223, 24.223503>,  <28.336792, 29.463160, 24.305542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979454, 29.303223, 24.223503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000778, 0.457779, -0.889066,
		0.449367, -0.794085, -0.409266,
		-0.893347, -0.399836, -0.205093,
		27.711451, 29.183271, 24.161974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327986, 29.104498, 23.632526>,  <28.336792, 29.463160, 24.305542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327986, 29.104498, 23.632526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957783, 29.240707, 23.698837>,  <27.735661, 29.322433, 23.738623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957783, 29.240707, 23.698837>,  <28.327986, 29.104498, 23.632526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957783, 29.240707, 23.698837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025663, 0.493096, -0.869597,
		-0.377861, -0.800563, -0.465102,
		-0.925507, 0.340523, 0.165776,
		27.680130, 29.342865, 23.748569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151894, 29.259109, 23.015411>,  <28.327986, 29.104498, 23.632526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151894, 29.259109, 23.015411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850386, 29.455967, 23.189594>,  <27.669481, 29.574081, 23.294104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850386, 29.455967, 23.189594>,  <28.151894, 29.259109, 23.015411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850386, 29.455967, 23.189594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010358, 0.653678, -0.756701,
		-0.657056, -0.574890, -0.487626,
		-0.753770, 0.492144, 0.435458,
		27.624254, 29.603611, 23.320232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707985, 29.347418, 22.447334>,  <28.151894, 29.259109, 23.015411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707985, 29.347418, 22.447334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579948, 29.578232, 22.747887>,  <27.503126, 29.716721, 22.928219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579948, 29.578232, 22.747887>,  <27.707985, 29.347418, 22.447334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579948, 29.578232, 22.747887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157597, 0.749626, -0.642825,
		-0.934187, -0.324177, -0.149009,
		-0.320091, 0.577035, 0.751380,
		27.483921, 29.751343, 22.973301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975252, 29.551376, 22.273712>,  <27.707985, 29.347418, 22.447334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975252, 29.551376, 22.273712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152636, 29.820591, 22.510479>,  <27.259066, 29.982119, 22.652540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152636, 29.820591, 22.510479>,  <26.975252, 29.551376, 22.273712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152636, 29.820591, 22.510479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350163, 0.738016, -0.576817,
		-0.825064, 0.048526, 0.562951,
		0.443458, 0.673036, 0.591919,
		27.285673, 30.022501, 22.688055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477003, 30.210327, 22.259007>,  <26.975252, 29.551376, 22.273712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477003, 30.210327, 22.259007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816671, 30.342113, 22.424107>,  <27.020472, 30.421186, 22.523167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816671, 30.342113, 22.424107>,  <26.477003, 30.210327, 22.259007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816671, 30.342113, 22.424107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097157, 0.865662, -0.491110,
		-0.519106, 0.376934, 0.767104,
		0.849170, 0.329468, 0.412749,
		27.071423, 30.440954, 22.547932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344673, 30.707165, 22.686094>,  <26.477003, 30.210327, 22.259007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344673, 30.707165, 22.686094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723932, 30.780243, 22.582066>,  <26.951488, 30.824091, 22.519648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723932, 30.780243, 22.582066>,  <26.344673, 30.707165, 22.686094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723932, 30.780243, 22.582066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251743, 0.931197, -0.263626,
		0.194015, 0.315427, 0.928905,
		0.948147, 0.182698, -0.260073,
		27.008377, 30.835052, 22.504044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549105, 31.371357, 22.989847>,  <26.344673, 30.707165, 22.686094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549105, 31.371357, 22.989847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686293, 31.258137, 22.631573>,  <26.768606, 31.190205, 22.416609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686293, 31.258137, 22.631573>,  <26.549105, 31.371357, 22.989847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686293, 31.258137, 22.631573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425835, 0.803064, -0.416837,
		0.837279, 0.524377, 0.154894,
		0.342969, -0.283050, -0.895687,
		26.789183, 31.173222, 22.362867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.036346, 31.901424, 22.960226>,  <26.549105, 31.371357, 22.989847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.036346, 31.901424, 22.960226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763056, 31.753651, 23.212170>,  <25.599081, 31.664988, 23.363337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763056, 31.753651, 23.212170>,  <26.036346, 31.901424, 22.960226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763056, 31.753651, 23.212170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431056, 0.900296, 0.060474,
		-0.589401, -0.230187, -0.774352,
		-0.683226, -0.369432, 0.629859,
		25.558088, 31.642820, 23.401127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.362539, 32.149654, 23.096788>,  <26.036346, 31.901424, 22.960226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.362539, 32.149654, 23.096788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040728, 32.299286, 23.281311>,  <24.847641, 32.389065, 23.392025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040728, 32.299286, 23.281311>,  <25.362539, 32.149654, 23.096788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040728, 32.299286, 23.281311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416516, -0.198322, 0.887233,
		0.423378, 0.905945, 0.003747,
		-0.804528, 0.374074, 0.461306,
		24.799370, 32.411507, 23.419703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.649094, 32.578392, 23.683590>,  <25.362539, 32.149654, 23.096788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.649094, 32.578392, 23.683590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275320, 32.485149, 23.791286>,  <25.051056, 32.429203, 23.855904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275320, 32.485149, 23.791286>,  <25.649094, 32.578392, 23.683590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275320, 32.485149, 23.791286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328756, -0.273946, 0.903811,
		-0.136929, 0.933067, 0.332620,
		-0.934436, -0.233109, 0.269240,
		24.994989, 32.415218, 23.872059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589359, 32.904884, 24.318510>,  <25.649094, 32.578392, 23.683590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589359, 32.904884, 24.318510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307791, 32.621262, 24.301888>,  <25.138849, 32.451088, 24.291914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307791, 32.621262, 24.301888>,  <25.589359, 32.904884, 24.318510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307791, 32.621262, 24.301888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320982, -0.369754, 0.871925,
		-0.633613, 0.600429, 0.487873,
		-0.703922, -0.709061, -0.041554,
		25.096615, 32.408543, 24.289421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336264, 32.954006, 24.903385>,  <25.589359, 32.904884, 24.318510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336264, 32.954006, 24.903385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185383, 32.591969, 24.824875>,  <25.094854, 32.374744, 24.777769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185383, 32.591969, 24.824875>,  <25.336264, 32.954006, 24.903385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185383, 32.591969, 24.824875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221756, -0.294034, 0.929714,
		-0.899190, 0.307165, 0.311620,
		-0.377202, -0.905093, -0.196277,
		25.072222, 32.320442, 24.765991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.931562, 32.825478, 25.493538>,  <25.336264, 32.954006, 24.903385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.931562, 32.825478, 25.493538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999979, 32.463936, 25.336674>,  <25.041029, 32.247009, 25.242556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999979, 32.463936, 25.336674>,  <24.931562, 32.825478, 25.493538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.999979, 32.463936, 25.336674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169933, -0.364999, 0.915368,
		-0.970498, -0.223209, 0.091164,
		0.171043, -0.903855, -0.392161,
		25.051292, 32.192780, 25.219025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538300, 32.271385, 25.899269>,  <24.931562, 32.825478, 25.493538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538300, 32.271385, 25.899269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.838488, 32.090500, 25.706482>,  <25.018600, 31.981968, 25.590809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.838488, 32.090500, 25.706482>,  <24.538300, 32.271385, 25.899269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838488, 32.090500, 25.706482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249310, -0.481675, 0.840139,
		-0.612079, -0.750658, -0.248740,
		0.750469, -0.452218, -0.481969,
		25.063629, 31.954834, 25.561892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.554483, 31.582190, 26.185974>,  <24.538300, 32.271385, 25.899269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.554483, 31.582190, 26.185974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.917620, 31.632061, 26.025833>,  <25.135502, 31.661983, 25.929749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.917620, 31.632061, 26.025833>,  <24.554483, 31.582190, 26.185974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917620, 31.632061, 26.025833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412612, -0.435675, 0.799962,
		-0.074687, -0.891427, -0.446966,
		0.907840, 0.124677, -0.400353,
		25.189972, 31.669464, 25.905727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.846781, 30.965698, 26.329256>,  <24.554483, 31.582190, 26.185974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.846781, 30.965698, 26.329256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146181, 31.210911, 26.228115>,  <25.325821, 31.358038, 26.167431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146181, 31.210911, 26.228115>,  <24.846781, 30.965698, 26.329256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146181, 31.210911, 26.228115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551627, -0.363984, 0.750482,
		0.368037, -0.701217, -0.610609,
		0.748503, 0.613034, -0.252850,
		25.370731, 31.394821, 26.152260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.342728, 30.531752, 26.113407>,  <24.846781, 30.965698, 26.329256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.342728, 30.531752, 26.113407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509892, 30.872608, 26.239395>,  <25.610189, 31.077122, 26.314987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509892, 30.872608, 26.239395>,  <25.342728, 30.531752, 26.113407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509892, 30.872608, 26.239395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475113, -0.500507, 0.723713,
		0.774351, -0.152800, -0.614030,
		0.417910, 0.852141, 0.314971,
		25.635265, 31.128250, 26.333887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989548, 30.346685, 26.251572>,  <25.342728, 30.531752, 26.113407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989548, 30.346685, 26.251572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982811, 30.684978, 26.464909>,  <25.978769, 30.887955, 26.592911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982811, 30.684978, 26.464909>,  <25.989548, 30.346685, 26.251572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982811, 30.684978, 26.464909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374290, -0.489300, 0.787714,
		0.927159, 0.212892, -0.308307,
		-0.016843, 0.845732, 0.533342,
		25.977758, 30.938698, 26.624910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604992, 30.472589, 26.554426>,  <25.989548, 30.346685, 26.251572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604992, 30.472589, 26.554426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389862, 30.716934, 26.786839>,  <26.260784, 30.863541, 26.926285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389862, 30.716934, 26.786839>,  <26.604992, 30.472589, 26.554426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389862, 30.716934, 26.786839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460347, -0.364584, 0.809419,
		0.706276, 0.702800, -0.085125,
		-0.537825, 0.610860, 0.581029,
		26.228514, 30.900192, 26.961147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104473, 30.728380, 27.025297>,  <26.604992, 30.472589, 26.554426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104473, 30.728380, 27.025297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726734, 30.755360, 27.154083>,  <26.500092, 30.771547, 27.231356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726734, 30.755360, 27.154083>,  <27.104473, 30.728380, 27.025297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726734, 30.755360, 27.154083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263063, -0.432804, 0.862252,
		0.197507, 0.898961, 0.390973,
		-0.944346, 0.067451, 0.321965,
		26.443430, 30.775595, 27.250673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236181, 30.725782, 27.665569>,  <27.104473, 30.728380, 27.025297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236181, 30.725782, 27.665569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841793, 30.660080, 27.677467>,  <26.605160, 30.620659, 27.684607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841793, 30.660080, 27.677467>,  <27.236181, 30.725782, 27.665569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841793, 30.660080, 27.677467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132186, -0.659459, 0.740027,
		-0.101938, 0.733576, 0.671919,
		-0.985969, -0.164255, 0.029744,
		26.546001, 30.610804, 27.686390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111650, 30.728346, 28.405062>,  <27.236181, 30.725782, 27.665569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111650, 30.728346, 28.405062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830692, 30.534100, 28.196899>,  <26.662117, 30.417553, 28.072002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830692, 30.534100, 28.196899>,  <27.111650, 30.728346, 28.405062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830692, 30.534100, 28.196899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143943, -0.812925, 0.564298,
		-0.697082, 0.321451, 0.640894,
		-0.702394, -0.485615, -0.520405,
		26.619974, 30.388414, 28.040777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519495, 30.819000, 29.067249>,  <27.111650, 30.728346, 28.405062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519495, 30.819000, 29.067249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883160, 30.754913, 29.221004>,  <28.101358, 30.716461, 29.313257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883160, 30.754913, 29.221004>,  <27.519495, 30.819000, 29.067249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883160, 30.754913, 29.221004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317199, 0.864491, -0.389923,
		-0.269826, 0.476431, 0.836784,
		0.909164, -0.160216, 0.384386,
		28.155909, 30.706848, 29.336321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804085, 31.460155, 29.303091>,  <27.519495, 30.819000, 29.067249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804085, 31.460155, 29.303091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123043, 31.227196, 29.239880>,  <28.314417, 31.087420, 29.201952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123043, 31.227196, 29.239880>,  <27.804085, 31.460155, 29.303091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123043, 31.227196, 29.239880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494215, 0.780524, -0.382797,
		0.346286, 0.227140, 0.910216,
		0.797394, -0.582399, -0.158029,
		28.362261, 31.052475, 29.192471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309818, 31.889566, 29.558947>,  <27.804085, 31.460155, 29.303091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309818, 31.889566, 29.558947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494364, 31.611523, 29.338413>,  <28.605091, 31.444696, 29.206093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494364, 31.611523, 29.338413>,  <28.309818, 31.889566, 29.558947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494364, 31.611523, 29.338413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618306, 0.697570, -0.362069,
		0.636271, -0.173847, 0.751623,
		0.461365, -0.695107, -0.551333,
		28.632772, 31.402990, 29.173014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054350, 31.829815, 29.671654>,  <28.309818, 31.889566, 29.558947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054350, 31.829815, 29.671654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001390, 31.711639, 29.293198>,  <28.969614, 31.640734, 29.066124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001390, 31.711639, 29.293198>,  <29.054350, 31.829815, 29.671654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001390, 31.711639, 29.293198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634902, 0.707740, -0.309843,
		0.761163, -0.641731, 0.093871,
		-0.132400, -0.295440, -0.946142,
		28.961670, 31.623007, 29.009356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723825, 31.976906, 29.336149>,  <29.054350, 31.829815, 29.671654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723825, 31.976906, 29.336149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456560, 31.922962, 29.043472>,  <29.296202, 31.890596, 28.867867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456560, 31.922962, 29.043472>,  <29.723825, 31.976906, 29.336149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456560, 31.922962, 29.043472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462845, 0.694634, -0.550688,
		0.582522, -0.706609, -0.401711,
		-0.668163, -0.134858, -0.731690,
		29.256111, 31.882504, 28.823965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210352, 32.026581, 28.777647>,  <29.723825, 31.976906, 29.336149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210352, 32.026581, 28.777647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848854, 32.068176, 28.611546>,  <29.631956, 32.093132, 28.511885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848854, 32.068176, 28.611546>,  <30.210352, 32.026581, 28.777647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848854, 32.068176, 28.611546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367133, 0.687133, -0.626947,
		0.220137, -0.719051, -0.659170,
		-0.903744, 0.103988, -0.415251,
		29.577730, 32.099373, 28.486971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256958, 31.897243, 28.078304>,  <30.210352, 32.026581, 28.777647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256958, 31.897243, 28.078304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943634, 32.141651, 28.124050>,  <29.755640, 32.288296, 28.151497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943634, 32.141651, 28.124050>,  <30.256958, 31.897243, 28.078304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943634, 32.141651, 28.124050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290503, 0.522462, -0.801649,
		-0.549575, -0.594716, -0.586754,
		-0.783310, 0.611020, 0.114365,
		29.708641, 32.324959, 28.158360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857721, 31.899010, 27.480558>,  <30.256958, 31.897243, 28.078304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857721, 31.899010, 27.480558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693323, 32.229607, 27.634438>,  <29.594685, 32.427963, 27.726765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693323, 32.229607, 27.634438>,  <29.857721, 31.899010, 27.480558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693323, 32.229607, 27.634438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138795, 0.473795, -0.869629,
		-0.901010, -0.304020, -0.309441,
		-0.410996, 0.826493, 0.384697,
		29.570024, 32.477554, 27.749847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377678, 32.075970, 27.021854>,  <29.857721, 31.899010, 27.480558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377678, 32.075970, 27.021854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410307, 32.414864, 27.231819>,  <29.429884, 32.618202, 27.357798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410307, 32.414864, 27.231819>,  <29.377678, 32.075970, 27.021854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410307, 32.414864, 27.231819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328602, 0.474357, -0.816705,
		-0.940939, 0.239108, -0.239709,
		0.081573, 0.847239, 0.524912,
		29.434778, 32.669037, 27.389294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952271, 32.497955, 26.761351>,  <29.377678, 32.075970, 27.021854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952271, 32.497955, 26.761351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237226, 32.727558, 26.922848>,  <29.408201, 32.865322, 27.019747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237226, 32.727558, 26.922848>,  <28.952271, 32.497955, 26.761351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237226, 32.727558, 26.922848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124264, 0.463045, -0.877581,
		-0.690693, 0.675352, 0.258540,
		0.712392, 0.574012, 0.403743,
		29.450945, 32.899761, 27.043970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872488, 33.069122, 26.434956>,  <28.952271, 32.497955, 26.761351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872488, 33.069122, 26.434956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243261, 33.105267, 26.580631>,  <29.465725, 33.126953, 26.668036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243261, 33.105267, 26.580631>,  <28.872488, 33.069122, 26.434956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243261, 33.105267, 26.580631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223197, 0.647420, -0.728719,
		-0.301630, 0.756758, 0.579945,
		0.926932, 0.090361, 0.364188,
		29.521341, 33.132374, 26.689888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984579, 33.821987, 26.568317>,  <28.872488, 33.069122, 26.434956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984579, 33.821987, 26.568317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338573, 33.644424, 26.512108>,  <29.550970, 33.537888, 26.478382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338573, 33.644424, 26.512108>,  <28.984579, 33.821987, 26.568317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338573, 33.644424, 26.512108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183208, 0.609435, -0.771378,
		0.428061, 0.656913, 0.620668,
		0.884985, -0.443909, -0.140524,
		29.604069, 33.511253, 26.469950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.037413, 28.067961, 31.739300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.412292, 27.999893, 31.617512>,  <27.637220, 27.959053, 31.544439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.412292, 27.999893, 31.617512>,  <27.037413, 28.067961, 31.739300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412292, 27.999893, 31.617512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087817, 0.959912, -0.266189,
		0.337561, 0.222735, 0.914572,
		0.937198, -0.170170, -0.304469,
		27.693453, 27.948843, 31.526171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383659, 28.602936, 32.073574>,  <27.037413, 28.067961, 31.739300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383659, 28.602936, 32.073574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.602798, 28.447964, 31.776993>,  <27.734282, 28.354980, 31.599043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.602798, 28.447964, 31.776993>,  <27.383659, 28.602936, 32.073574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602798, 28.447964, 31.776993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078610, 0.906217, -0.415440,
		0.832876, 0.169312, 0.526926,
		0.547848, -0.387432, -0.741457,
		27.767153, 28.331734, 31.554556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790350, 29.139009, 31.875658>,  <27.383659, 28.602936, 32.073574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790350, 29.139009, 31.875658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.873055, 28.887249, 31.576031>,  <27.922676, 28.736193, 31.396254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.873055, 28.887249, 31.576031>,  <27.790350, 29.139009, 31.875658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873055, 28.887249, 31.576031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269762, 0.772608, -0.574722,
		0.940467, -0.083240, 0.329533,
		0.206760, -0.629402, -0.749068,
		27.935083, 28.698429, 31.351311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426029, 29.251463, 31.575056>,  <27.790350, 29.139009, 31.875658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426029, 29.251463, 31.575056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.210955, 29.079212, 31.285103>,  <28.081909, 28.975863, 31.111132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.210955, 29.079212, 31.285103>,  <28.426029, 29.251463, 31.575056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210955, 29.079212, 31.285103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223900, 0.755943, -0.615158,
		0.812874, -0.493062, -0.310042,
		-0.537685, -0.430627, -0.724883,
		28.049648, 28.950024, 31.067638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911917, 29.215803, 30.957472>,  <28.426029, 29.251463, 31.575056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911917, 29.215803, 30.957472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.533642, 29.189106, 30.830212>,  <28.306677, 29.173088, 30.753855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.533642, 29.189106, 30.830212>,  <28.911917, 29.215803, 30.957472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533642, 29.189106, 30.830212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191233, 0.677216, -0.710499,
		0.262875, -0.732751, -0.627672,
		-0.945688, -0.066741, -0.318150,
		28.249935, 29.169085, 30.734766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992834, 29.163626, 30.157143>,  <28.911917, 29.215803, 30.957472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992834, 29.163626, 30.157143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.627991, 29.301094, 30.246540>,  <28.409084, 29.383575, 30.300179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.627991, 29.301094, 30.246540>,  <28.992834, 29.163626, 30.157143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627991, 29.301094, 30.246540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127364, 0.755753, -0.642352,
		-0.389662, -0.557431, -0.733100,
		-0.912109, 0.343670, 0.223491,
		28.354359, 29.404196, 30.313587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615145, 29.285988, 29.543890>,  <28.992834, 29.163626, 30.157143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615145, 29.285988, 29.543890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.428564, 29.510845, 29.817070>,  <28.316616, 29.645760, 29.980978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.428564, 29.510845, 29.817070>,  <28.615145, 29.285988, 29.543890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428564, 29.510845, 29.817070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228015, 0.822410, -0.521202,
		-0.854654, -0.087393, -0.511791,
		-0.466451, 0.562143, 0.682949,
		28.288630, 29.679487, 30.021955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192303, 29.661064, 29.107176>,  <28.615145, 29.285988, 29.543890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192303, 29.661064, 29.107176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.164686, 29.876297, 29.443199>,  <28.148117, 30.005438, 29.644814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.164686, 29.876297, 29.443199>,  <28.192303, 29.661064, 29.107176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164686, 29.876297, 29.443199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255763, 0.823471, -0.506440,
		-0.964271, 0.179892, -0.194473,
		-0.069039, 0.538084, 0.840059,
		28.143974, 30.037722, 29.695217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710999, 30.137741, 28.917683>,  <28.192303, 29.661064, 29.107176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710999, 30.137741, 28.917683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.906494, 30.281990, 29.235447>,  <28.023790, 30.368540, 29.426105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.906494, 30.281990, 29.235447>,  <27.710999, 30.137741, 28.917683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906494, 30.281990, 29.235447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353939, 0.750311, -0.558356,
		-0.797410, 0.554062, 0.239067,
		0.488738, 0.360623, 0.794409,
		28.053116, 30.390177, 29.473770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890194, 30.328827, 28.966524>,  <27.710999, 30.137741, 28.917683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890194, 30.328827, 28.966524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.693090, 30.174755, 28.654415>,  <26.574827, 30.082312, 28.467150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.693090, 30.174755, 28.654415>,  <26.890194, 30.328827, 28.966524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693090, 30.174755, 28.654415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155917, -0.843099, 0.514658,
		-0.856083, 0.375261, 0.355390,
		-0.492760, -0.385179, -0.780272,
		26.545263, 30.059202, 28.420334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198112, 30.096945, 29.139736>,  <26.890194, 30.328827, 28.966524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198112, 30.096945, 29.139736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.323332, 29.887028, 28.823105>,  <26.398464, 29.761078, 28.633125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.323332, 29.887028, 28.823105>,  <26.198112, 30.096945, 29.139736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323332, 29.887028, 28.823105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089661, -0.846078, 0.525465,
		-0.945495, -0.093522, -0.311916,
		0.313048, -0.524791, -0.791578,
		26.417246, 29.729589, 28.585632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846352, 29.481194, 29.208504>,  <26.198112, 30.096945, 29.139736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846352, 29.481194, 29.208504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.122911, 29.361210, 28.945599>,  <26.288847, 29.289219, 28.787855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.122911, 29.361210, 28.945599>,  <25.846352, 29.481194, 29.208504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122911, 29.361210, 28.945599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110425, -0.942922, 0.314171,
		-0.713985, -0.144639, -0.685059,
		0.691399, -0.299961, -0.657260,
		26.330332, 29.271221, 28.748421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503361, 29.091711, 28.746300>,  <25.846352, 29.481194, 29.208504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503361, 29.091711, 28.746300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.884987, 28.972324, 28.756687>,  <26.113962, 28.900692, 28.762918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.884987, 28.972324, 28.756687>,  <25.503361, 29.091711, 28.746300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884987, 28.972324, 28.756687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296457, -0.953033, -0.061972,
		0.043245, 0.051427, -0.997740,
		0.954066, -0.298467, 0.025968,
		26.171207, 28.882784, 28.764477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597561, 28.520647, 28.128601>,  <25.503361, 29.091711, 28.746300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.597561, 28.520647, 28.128601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.887224, 28.484707, 28.402103>,  <26.061022, 28.463142, 28.566206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.887224, 28.484707, 28.402103>,  <25.597561, 28.520647, 28.128601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.887224, 28.484707, 28.402103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172863, -0.983473, 0.053845,
		0.667619, -0.157189, -0.727720,
		0.724157, -0.089848, 0.683757,
		26.104471, 28.457752, 28.607231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741825, 27.781254, 28.029675>,  <25.597561, 28.520647, 28.128601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741825, 27.781254, 28.029675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.930420, 27.871868, 28.370586>,  <26.043577, 27.926237, 28.575134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.930420, 27.871868, 28.370586>,  <25.741825, 27.781254, 28.029675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930420, 27.871868, 28.370586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108175, -0.944288, 0.310834,
		0.875213, -0.238750, -0.420715,
		0.471488, 0.226535, 0.852280,
		26.071867, 27.939829, 28.626270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303499, 27.325768, 28.111387>,  <25.741825, 27.781254, 28.029675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303499, 27.325768, 28.111387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.268290, 27.442337, 28.492401>,  <26.247164, 27.512278, 28.721010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.268290, 27.442337, 28.492401>,  <26.303499, 27.325768, 28.111387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268290, 27.442337, 28.492401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011388, -0.956480, 0.291576,
		0.996053, 0.014818, 0.087513,
		-0.088025, 0.291422, 0.952536,
		26.241882, 27.529764, 28.778162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665844, 26.796627, 28.590456>,  <26.303499, 27.325768, 28.111387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665844, 26.796627, 28.590456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.476423, 26.992298, 28.883427>,  <26.362770, 27.109701, 29.059210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.476423, 26.992298, 28.883427>,  <26.665844, 26.796627, 28.590456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476423, 26.992298, 28.883427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012864, -0.835334, 0.549592,
		0.880671, 0.250840, 0.401868,
		-0.473554, 0.489179, 0.732428,
		26.334356, 27.139051, 29.103155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945145, 26.537739, 29.247522>,  <26.665844, 26.796627, 28.590456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945145, 26.537739, 29.247522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.583208, 26.684528, 29.333858>,  <26.366045, 26.772602, 29.385660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.583208, 26.684528, 29.333858>,  <26.945145, 26.537739, 29.247522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583208, 26.684528, 29.333858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107030, -0.686767, 0.718955,
		0.412071, 0.627440, 0.660694,
		-0.904843, 0.366975, 0.215842,
		26.311754, 26.794621, 29.398611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931412, 26.741154, 29.986042>,  <26.945145, 26.537739, 29.247522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931412, 26.741154, 29.986042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.555929, 26.667206, 29.869663>,  <26.330639, 26.622837, 29.799835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.555929, 26.667206, 29.869663>,  <26.931412, 26.741154, 29.986042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555929, 26.667206, 29.869663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123324, -0.608060, 0.784254,
		-0.321900, 0.772066, 0.547992,
		-0.938707, -0.184871, -0.290949,
		26.274317, 26.611744, 29.782379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551470, 26.542084, 30.613237>,  <26.931412, 26.741154, 29.986042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551470, 26.542084, 30.613237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.288780, 26.426430, 30.334637>,  <26.131166, 26.357037, 30.167477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.288780, 26.426430, 30.334637>,  <26.551470, 26.542084, 30.613237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288780, 26.426430, 30.334637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335538, -0.715097, 0.613229,
		-0.675374, 0.636425, 0.372605,
		-0.656723, -0.289135, -0.696503,
		26.091763, 26.339689, 30.125687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989681, 26.463057, 30.917850>,  <26.551470, 26.542084, 30.613237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989681, 26.463057, 30.917850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.920403, 26.253796, 30.584068>,  <25.878836, 26.128239, 30.383799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.920403, 26.253796, 30.584068>,  <25.989681, 26.463057, 30.917850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920403, 26.253796, 30.584068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396267, -0.738640, 0.545329,
		-0.901652, 0.425116, -0.079379,
		-0.173196, -0.523152, -0.834455,
		25.868444, 26.096849, 30.333733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.294250, 26.367598, 30.788708>,  <25.989681, 26.463057, 30.917850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.294250, 26.367598, 30.788708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.455013, 26.059303, 30.590946>,  <25.551472, 25.874327, 30.472290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.455013, 26.059303, 30.590946>,  <25.294250, 26.367598, 30.788708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455013, 26.059303, 30.590946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555733, -0.634431, 0.537269,
		-0.727758, 0.058824, -0.683306,
		0.401907, -0.770738, -0.494403,
		25.575586, 25.828081, 30.442625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.745832, 25.915983, 30.533651>,  <25.294250, 26.367598, 30.788708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.745832, 25.915983, 30.533651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.074564, 25.690109, 30.563927>,  <25.271803, 25.554585, 30.582092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.074564, 25.690109, 30.563927>,  <24.745832, 25.915983, 30.533651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.074564, 25.690109, 30.563927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532468, -0.714011, 0.454605,
		-0.202667, -0.413909, -0.887471,
		0.821829, -0.564684, 0.075687,
		25.321114, 25.520704, 30.586632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.580025, 23.283909, 30.430634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.287479, 23.531101, 30.546017>,  <32.111954, 23.679417, 30.615246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.287479, 23.531101, 30.546017>,  <32.580025, 23.283909, 30.430634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287479, 23.531101, 30.546017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017192, 0.439535, -0.898061,
		-0.681773, -0.651849, -0.332083,
		-0.731362, 0.617983, 0.288457,
		32.068069, 23.716496, 30.632553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128479, 23.202209, 29.924168>,  <32.580025, 23.283909, 30.430634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128479, 23.202209, 29.924168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.031712, 23.550304, 30.095825>,  <31.973652, 23.759161, 30.198820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.031712, 23.550304, 30.095825>,  <32.128479, 23.202209, 29.924168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031712, 23.550304, 30.095825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028192, 0.435790, -0.899607,
		-0.969888, -0.229726, -0.080890,
		-0.241914, 0.870237, 0.429144,
		31.959137, 23.811375, 30.224567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647924, 23.587204, 29.521423>,  <32.128479, 23.202209, 29.924168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647924, 23.587204, 29.521423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.830786, 23.875122, 29.730385>,  <31.940502, 24.047873, 29.855761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.830786, 23.875122, 29.730385>,  <31.647924, 23.587204, 29.521423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830786, 23.875122, 29.730385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136489, 0.637194, -0.758521,
		-0.878852, 0.275458, 0.389540,
		0.457153, 0.719796, 0.522402,
		31.967932, 24.091061, 29.887106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313986, 24.133114, 29.324863>,  <31.647924, 23.587204, 29.521423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313986, 24.133114, 29.324863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.622744, 24.320473, 29.496811>,  <31.807999, 24.432888, 29.599979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.622744, 24.320473, 29.496811>,  <31.313986, 24.133114, 29.324863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622744, 24.320473, 29.496811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062859, 0.729070, -0.681547,
		-0.632638, 0.499060, 0.592207,
		0.771893, 0.468398, 0.429866,
		31.854311, 24.460993, 29.625771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148115, 24.886206, 29.308744>,  <31.313986, 24.133114, 29.324863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148115, 24.886206, 29.308744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.544849, 24.854984, 29.349083>,  <31.782890, 24.836252, 29.373287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.544849, 24.854984, 29.349083>,  <31.148115, 24.886206, 29.308744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544849, 24.854984, 29.349083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127452, 0.580212, -0.804432,
		0.004274, 0.810717, 0.585422,
		0.991836, -0.078051, 0.100847,
		31.842400, 24.831570, 29.379337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432844, 25.524380, 29.249802>,  <31.148115, 24.886206, 29.308744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432844, 25.524380, 29.249802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.762831, 25.308495, 29.182697>,  <31.960823, 25.178963, 29.142435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.762831, 25.308495, 29.182697>,  <31.432844, 25.524380, 29.249802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762831, 25.308495, 29.182697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248892, 0.613413, -0.749518,
		0.507431, 0.576571, 0.640374,
		0.824965, -0.539713, -0.167761,
		32.010319, 25.146582, 29.132368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916428, 25.950241, 29.259254>,  <31.432844, 25.524380, 29.249802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916428, 25.950241, 29.259254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.075386, 25.659779, 29.034836>,  <32.170761, 25.485500, 28.900185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.075386, 25.659779, 29.034836>,  <31.916428, 25.950241, 29.259254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075386, 25.659779, 29.034836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219117, 0.668801, -0.710417,
		0.891102, 0.159383, 0.424893,
		0.397397, -0.726156, -0.561046,
		32.194607, 25.441933, 28.866522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585979, 26.271572, 29.127512>,  <31.916428, 25.950241, 29.259254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585979, 26.271572, 29.127512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.482838, 26.000572, 28.851974>,  <32.420952, 25.837973, 28.686653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.482838, 26.000572, 28.851974>,  <32.585979, 26.271572, 29.127512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482838, 26.000572, 28.851974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045360, 0.703677, -0.709071,
		0.965118, -0.214083, -0.150715,
		-0.257855, -0.677501, -0.688842,
		32.405479, 25.797321, 28.645321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005222, 26.501999, 28.593512>,  <32.585979, 26.271572, 29.127512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005222, 26.501999, 28.593512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.723118, 26.275730, 28.422577>,  <32.553856, 26.139969, 28.320017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.723118, 26.275730, 28.422577>,  <33.005222, 26.501999, 28.593512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723118, 26.275730, 28.422577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064491, 0.651469, -0.755929,
		0.706006, -0.505570, -0.495938,
		-0.705264, -0.565675, -0.427336,
		32.511539, 26.106028, 28.294376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247322, 26.390875, 27.838560>,  <33.005222, 26.501999, 28.593512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247322, 26.390875, 27.838560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855808, 26.313972, 27.866905>,  <32.620899, 26.267832, 27.883913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855808, 26.313972, 27.866905>,  <33.247322, 26.390875, 27.838560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855808, 26.313972, 27.866905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173838, 0.596087, -0.783876,
		0.108463, -0.779563, -0.616861,
		-0.978783, -0.192256, 0.070864,
		32.562172, 26.256296, 27.888165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094646, 26.134581, 27.205488>,  <33.247322, 26.390875, 27.838560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094646, 26.134581, 27.205488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.754768, 26.279785, 27.358452>,  <32.550842, 26.366909, 27.450230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.754768, 26.279785, 27.358452>,  <33.094646, 26.134581, 27.205488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754768, 26.279785, 27.358452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110358, 0.586756, -0.802208,
		-0.515593, -0.723836, -0.458503,
		-0.849697, 0.363014, 0.382409,
		32.499859, 26.388689, 27.473175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706871, 26.194979, 26.634638>,  <33.094646, 26.134581, 27.205488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706871, 26.194979, 26.634638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.559990, 26.449894, 26.905643>,  <32.471859, 26.602842, 27.068247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.559990, 26.449894, 26.905643>,  <32.706871, 26.194979, 26.634638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559990, 26.449894, 26.905643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183021, 0.664653, -0.724389,
		-0.911956, -0.389999, -0.127427,
		-0.367205, 0.637289, 0.677512,
		32.449829, 26.641081, 27.108898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232220, 26.524942, 26.248787>,  <32.706871, 26.194979, 26.634638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232220, 26.524942, 26.248787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.273666, 26.750389, 26.576591>,  <32.298534, 26.885656, 26.773273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.273666, 26.750389, 26.576591>,  <32.232220, 26.524942, 26.248787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273666, 26.750389, 26.576591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220902, 0.816410, -0.533552,
		-0.969776, -0.125746, 0.209099,
		0.103619, 0.563617, 0.819512,
		32.304752, 26.919474, 26.822445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685778, 26.966173, 26.246944>,  <32.232220, 26.524942, 26.248787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685778, 26.966173, 26.246944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.967558, 27.144279, 26.468029>,  <32.136627, 27.251143, 26.600679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.967558, 27.144279, 26.468029>,  <31.685778, 26.966173, 26.246944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967558, 27.144279, 26.468029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217307, 0.876648, -0.429262,
		-0.675666, 0.182287, 0.714315,
		0.704452, 0.445264, 0.552710,
		32.178894, 27.277859, 26.633842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865953, 27.258944, 26.267344>,  <31.685778, 26.966173, 26.246944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865953, 27.258944, 26.267344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.778889, 27.049854, 25.937645>,  <30.726650, 26.924400, 25.739826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.778889, 27.049854, 25.937645>,  <30.865953, 27.258944, 26.267344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778889, 27.049854, 25.937645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244461, -0.788380, 0.564531,
		-0.944914, 0.324374, 0.043816,
		-0.217663, -0.522722, -0.824248,
		30.713591, 26.893038, 25.690371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152407, 26.976999, 26.309513>,  <30.865953, 27.258944, 26.267344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152407, 26.976999, 26.309513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.353317, 26.717171, 26.081207>,  <30.473864, 26.561274, 25.944223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.353317, 26.717171, 26.081207>,  <30.152407, 26.976999, 26.309513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353317, 26.717171, 26.081207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352931, -0.756586, 0.550470,
		-0.789405, -0.075045, -0.609268,
		0.502274, -0.649573, -0.570767,
		30.504002, 26.522299, 25.909979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712027, 26.415768, 26.324701>,  <30.152407, 26.976999, 26.309513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712027, 26.415768, 26.324701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.062338, 26.267521, 26.200985>,  <30.272524, 26.178574, 26.126755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.062338, 26.267521, 26.200985>,  <29.712027, 26.415768, 26.324701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062338, 26.267521, 26.200985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176001, -0.841779, 0.510325,
		-0.449488, -0.392494, -0.802439,
		0.875776, -0.370615, -0.309290,
		30.325071, 26.156336, 26.108198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534706, 25.710501, 26.251875>,  <29.712027, 26.415768, 26.324701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534706, 25.710501, 26.251875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.930758, 25.666649, 26.216934>,  <30.168388, 25.640339, 26.195971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.930758, 25.666649, 26.216934>,  <29.534706, 25.710501, 26.251875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930758, 25.666649, 26.216934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050886, -0.861765, 0.504749,
		-0.130609, -0.495321, -0.858836,
		0.990127, -0.109627, -0.087350,
		30.227797, 25.633760, 26.190729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624657, 24.978376, 25.990881>,  <29.534706, 25.710501, 26.251875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624657, 24.978376, 25.990881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.965157, 25.087902, 26.169945>,  <30.169456, 25.153618, 26.277384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.965157, 25.087902, 26.169945>,  <29.624657, 24.978376, 25.990881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965157, 25.087902, 26.169945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041206, -0.885319, 0.463155,
		0.523142, -0.375813, -0.764910,
		0.851249, 0.273815, 0.447662,
		30.220531, 25.170046, 26.304243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090574, 24.437778, 25.950251>,  <29.624657, 24.978376, 25.990881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090574, 24.437778, 25.950251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.194220, 24.671825, 26.257626>,  <30.256407, 24.812254, 26.442051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.194220, 24.671825, 26.257626>,  <30.090574, 24.437778, 25.950251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194220, 24.671825, 26.257626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241776, -0.809574, 0.534915,
		0.935096, 0.047186, -0.351239,
		0.259114, 0.585118, 0.768438,
		30.271954, 24.847361, 26.488157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232393, 23.912558, 26.398264>,  <30.090574, 24.437778, 25.950251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232393, 23.912558, 26.398264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.294977, 24.234005, 26.627949>,  <30.332527, 24.426874, 26.765759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.294977, 24.234005, 26.627949>,  <30.232393, 23.912558, 26.398264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294977, 24.234005, 26.627949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083683, -0.590067, 0.803006,
		0.984133, -0.077588, -0.159572,
		0.156462, 0.803618, 0.574211,
		30.341915, 24.475090, 26.800213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795643, 23.821293, 26.814711>,  <30.232393, 23.912558, 26.398264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795643, 23.821293, 26.814711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.584063, 24.078285, 27.036495>,  <30.457113, 24.232481, 27.169565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.584063, 24.078285, 27.036495>,  <30.795643, 23.821293, 26.814711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584063, 24.078285, 27.036495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131498, -0.583404, 0.801466,
		0.838402, 0.496848, 0.224108,
		-0.528953, 0.642481, 0.554462,
		30.425377, 24.271029, 27.202833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246128, 23.750044, 27.384596>,  <30.795643, 23.821293, 26.814711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246128, 23.750044, 27.384596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.886637, 23.891361, 27.488499>,  <30.670942, 23.976152, 27.550840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.886637, 23.891361, 27.488499>,  <31.246128, 23.750044, 27.384596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886637, 23.891361, 27.488499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084861, -0.441041, 0.893466,
		0.430221, 0.825024, 0.366394,
		-0.898726, 0.353295, 0.259758,
		30.617020, 23.997351, 27.566425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337257, 23.960310, 28.037888>,  <31.246128, 23.750044, 27.384596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337257, 23.960310, 28.037888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.950117, 23.874779, 27.984913>,  <30.717833, 23.823460, 27.953129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.950117, 23.874779, 27.984913>,  <31.337257, 23.960310, 28.037888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950117, 23.874779, 27.984913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025426, -0.440664, 0.897312,
		-0.250232, 0.871833, 0.421060,
		-0.967852, -0.213830, -0.132436,
		30.659761, 23.810629, 27.945183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918613, 24.228981, 28.599751>,  <31.337257, 23.960310, 28.037888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918613, 24.228981, 28.599751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.690804, 23.934582, 28.453358>,  <30.554117, 23.757942, 28.365522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.690804, 23.934582, 28.453358>,  <30.918613, 24.228981, 28.599751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690804, 23.934582, 28.453358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193604, -0.312611, 0.929942,
		-0.798847, 0.600483, 0.035548,
		-0.569527, -0.735999, -0.365984,
		30.519945, 23.713781, 28.343563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447426, 24.156178, 29.053032>,  <30.918613, 24.228981, 28.599751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447426, 24.156178, 29.053032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.379202, 23.820709, 28.846134>,  <30.338266, 23.619429, 28.721996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.379202, 23.820709, 28.846134>,  <30.447426, 24.156178, 29.053032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379202, 23.820709, 28.846134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297842, -0.456499, 0.838391,
		-0.939255, 0.297054, -0.171930,
		-0.170561, -0.838670, -0.517244,
		30.328033, 23.569109, 28.690962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801668, 23.916904, 29.267656>,  <30.447426, 24.156178, 29.053032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801668, 23.916904, 29.267656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.981102, 23.594414, 29.113373>,  <30.088762, 23.400919, 29.020803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.981102, 23.594414, 29.113373>,  <29.801668, 23.916904, 29.267656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981102, 23.594414, 29.113373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322580, -0.548528, 0.771400,
		-0.833496, -0.221615, -0.506134,
		0.448583, -0.806228, -0.385707,
		30.115677, 23.352545, 28.997662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288973, 23.384823, 29.322086>,  <29.801668, 23.916904, 29.267656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288973, 23.384823, 29.322086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.625124, 23.174160, 29.270859>,  <29.826815, 23.047762, 29.240122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.625124, 23.174160, 29.270859>,  <29.288973, 23.384823, 29.322086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625124, 23.174160, 29.270859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306105, -0.656171, 0.689739,
		-0.447288, -0.540438, -0.712643,
		0.840377, -0.526655, -0.128067,
		29.877237, 23.016163, 29.232439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672632, 23.565342, 28.901337>,  <29.288973, 23.384823, 29.322086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672632, 23.565342, 28.901337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.283598, 23.641483, 28.954769>,  <28.050179, 23.687168, 28.986830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.283598, 23.641483, 28.954769>,  <28.672632, 23.565342, 28.901337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283598, 23.641483, 28.954769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118204, 0.899346, -0.420956,
		-0.200268, -0.393626, -0.897191,
		-0.972584, 0.190356, 0.133583,
		27.991823, 23.698589, 28.994844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417423, 23.830446, 28.287912>,  <28.672632, 23.565342, 28.901337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417423, 23.830446, 28.287912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.172312, 23.974861, 28.569096>,  <28.025244, 24.061510, 28.737806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.172312, 23.974861, 28.569096>,  <28.417423, 23.830446, 28.287912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172312, 23.974861, 28.569096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017104, 0.895388, -0.444958,
		-0.790069, -0.260638, -0.554851,
		-0.612780, 0.361038, 0.702960,
		27.988478, 24.083172, 28.779984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778669, 23.985031, 27.854813>,  <28.417423, 23.830446, 28.287912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778669, 23.985031, 27.854813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.809454, 24.202824, 28.188908>,  <27.827925, 24.333498, 28.389364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.809454, 24.202824, 28.188908>,  <27.778669, 23.985031, 27.854813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809454, 24.202824, 28.188908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188660, 0.814634, -0.548433,
		-0.979022, 0.199784, -0.040026,
		0.076962, 0.544480, 0.835236,
		27.832542, 24.366167, 28.439478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409019, 24.556147, 27.746201>,  <27.778669, 23.985031, 27.854813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409019, 24.556147, 27.746201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.597860, 24.682854, 28.075268>,  <27.711164, 24.758877, 28.272707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.597860, 24.682854, 28.075268>,  <27.409019, 24.556147, 27.746201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597860, 24.682854, 28.075268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047716, 0.922660, -0.382651,
		-0.880251, 0.219905, 0.420475,
		0.472102, 0.316766, 0.822666,
		27.739491, 24.777884, 28.322067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973478, 25.101070, 28.087132>,  <27.409019, 24.556147, 27.746201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973478, 25.101070, 28.087132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.353628, 25.139641, 28.205448>,  <27.581718, 25.162783, 28.276438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.353628, 25.139641, 28.205448>,  <26.973478, 25.101070, 28.087132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353628, 25.139641, 28.205448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002385, 0.948467, -0.316866,
		-0.311101, 0.301847, 0.901168,
		0.950374, 0.096428, 0.295789,
		27.638741, 25.168570, 28.294186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037354, 25.709326, 28.498516>,  <26.973478, 25.101070, 28.087132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037354, 25.709326, 28.498516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.410425, 25.621487, 28.384052>,  <27.634268, 25.568783, 28.315374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.410425, 25.621487, 28.384052>,  <27.037354, 25.709326, 28.498516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410425, 25.621487, 28.384052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149954, 0.957577, -0.246089,
		0.328060, 0.186612, 0.926042,
		0.932679, -0.219595, -0.286159,
		27.690229, 25.555609, 28.298204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472017, 26.282072, 28.762981>,  <27.037354, 25.709326, 28.498516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472017, 26.282072, 28.762981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.651768, 26.112602, 28.448387>,  <27.759619, 26.010920, 28.259630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.651768, 26.112602, 28.448387>,  <27.472017, 26.282072, 28.762981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651768, 26.112602, 28.448387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174482, 0.905055, -0.387855,
		0.876137, 0.037066, 0.480636,
		0.449378, -0.423676, -0.786484,
		27.786581, 25.985498, 28.212442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948212, 26.772011, 28.588724>,  <27.472017, 26.282072, 28.762981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948212, 26.772011, 28.588724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.970263, 26.535713, 28.266735>,  <27.983494, 26.393934, 28.073542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.970263, 26.535713, 28.266735>,  <27.948212, 26.772011, 28.588724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970263, 26.535713, 28.266735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175971, 0.799329, -0.574550,
		0.982850, -0.109978, 0.148020,
		0.055129, -0.590744, -0.804974,
		27.986801, 26.358490, 28.025244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587900, 26.993635, 28.137337>,  <27.948212, 26.772011, 28.588724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587900, 26.993635, 28.137337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.339781, 26.782936, 27.904865>,  <28.190908, 26.656517, 27.765383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.339781, 26.782936, 27.904865>,  <28.587900, 26.993635, 28.137337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339781, 26.782936, 27.904865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204639, 0.606609, -0.768212,
		0.757201, -0.595452, -0.268484,
		-0.620298, -0.526748, -0.581177,
		28.153692, 26.624912, 27.730513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924412, 26.880445, 27.418335>,  <28.587900, 26.993635, 28.137337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924412, 26.880445, 27.418335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.533672, 26.834911, 27.345879>,  <28.299229, 26.807590, 27.302404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.533672, 26.834911, 27.345879>,  <28.924412, 26.880445, 27.418335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533672, 26.834911, 27.345879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091307, 0.543881, -0.834180,
		0.193476, -0.831406, -0.520894,
		-0.976847, -0.113833, -0.181141,
		28.240618, 26.800762, 27.291536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926828, 26.912975, 26.775715>,  <28.924412, 26.880445, 27.418335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926828, 26.912975, 26.775715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.541653, 26.978279, 26.861595>,  <28.310547, 27.017462, 26.913122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.541653, 26.978279, 26.861595>,  <28.926828, 26.912975, 26.775715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541653, 26.978279, 26.861595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081695, 0.582068, -0.809026,
		-0.257052, -0.796581, -0.547158,
		-0.962938, 0.163262, 0.214699,
		28.252771, 27.027258, 26.926004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570421, 26.839647, 26.097401>,  <28.926828, 26.912975, 26.775715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570421, 26.839647, 26.097401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.309164, 27.024216, 26.337566>,  <28.152411, 27.134956, 26.481665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.309164, 27.024216, 26.337566>,  <28.570421, 26.839647, 26.097401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309164, 27.024216, 26.337566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190721, 0.667099, -0.720142,
		-0.732825, -0.584866, -0.347706,
		-0.653141, 0.461423, 0.600413,
		28.113222, 27.162643, 26.517691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916616, 26.795355, 25.729263>,  <28.570421, 26.839647, 26.097401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916616, 26.795355, 25.729263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.854246, 27.088005, 25.994717>,  <27.816824, 27.263596, 26.153990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.854246, 27.088005, 25.994717>,  <27.916616, 26.795355, 25.729263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854246, 27.088005, 25.994717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300250, 0.604956, -0.737481,
		-0.941030, -0.314249, 0.125342,
		-0.155926, 0.731626, 0.663635,
		27.807468, 27.307493, 26.193808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275013, 27.023182, 25.701324>,  <27.916616, 26.795355, 25.729263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275013, 27.023182, 25.701324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.472281, 27.324371, 25.875595>,  <27.590641, 27.505085, 25.980158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.472281, 27.324371, 25.875595>,  <27.275013, 27.023182, 25.701324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472281, 27.324371, 25.875595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229714, 0.595756, -0.769615,
		-0.839057, 0.279469, 0.466776,
		0.493168, 0.752976, 0.435675,
		27.620232, 27.550264, 26.006298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.428204, 33.331219, 31.988007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735397, 33.135029, 32.152752>,  <39.919716, 33.017315, 32.251598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735397, 33.135029, 32.152752>,  <39.428204, 33.331219, 31.988007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735397, 33.135029, 32.152752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273889, -0.329793, -0.903450,
		0.578949, 0.806642, -0.118941,
		0.767986, -0.490475, 0.411864,
		39.965794, 32.987885, 32.276310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026646, 33.566578, 31.666674>,  <39.428204, 33.331219, 31.988007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026646, 33.566578, 31.666674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.128838, 33.219307, 31.836849>,  <40.190151, 33.010944, 31.938955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.128838, 33.219307, 31.836849>,  <40.026646, 33.566578, 31.666674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128838, 33.219307, 31.836849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309807, -0.343325, -0.886650,
		0.915833, 0.358326, 0.181255,
		0.255481, -0.868177, 0.425440,
		40.205482, 32.958855, 31.964481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636257, 33.561798, 31.484581>,  <40.026646, 33.566578, 31.666674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636257, 33.561798, 31.484581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.546764, 33.181561, 31.570671>,  <40.493069, 32.953419, 31.622326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.546764, 33.181561, 31.570671>,  <40.636257, 33.561798, 31.484581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546764, 33.181561, 31.570671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383891, -0.288921, -0.877013,
		0.895863, -0.113596, 0.429565,
		-0.223736, -0.950589, 0.215225,
		40.479645, 32.896385, 31.635239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235615, 33.162697, 31.380600>,  <40.636257, 33.561798, 31.484581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235615, 33.162697, 31.380600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.929901, 32.905014, 31.368767>,  <40.746471, 32.750404, 31.361666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.929901, 32.905014, 31.368767>,  <41.235615, 33.162697, 31.380600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929901, 32.905014, 31.368767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271733, -0.280100, -0.920709,
		0.584836, -0.711721, 0.389127,
		-0.764283, -0.644203, -0.029585,
		40.700615, 32.711754, 31.359892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559837, 32.619362, 31.170034>,  <41.235615, 33.162697, 31.380600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559837, 32.619362, 31.170034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.175346, 32.562328, 31.075615>,  <40.944653, 32.528107, 31.018963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.175346, 32.562328, 31.075615>,  <41.559837, 32.619362, 31.170034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175346, 32.562328, 31.075615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270326, -0.317919, -0.908764,
		0.054533, -0.937335, 0.344136,
		-0.961223, -0.142586, -0.236049,
		40.886978, 32.519554, 31.004801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581203, 31.997015, 30.871967>,  <41.559837, 32.619362, 31.170034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581203, 31.997015, 30.871967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.251293, 32.169735, 30.725925>,  <41.053349, 32.273365, 30.638300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.251293, 32.169735, 30.725925>,  <41.581203, 31.997015, 30.871967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251293, 32.169735, 30.725925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323652, -0.168966, -0.930967,
		-0.463681, -0.886003, -0.000394,
		-0.824773, 0.431799, -0.365102,
		41.003860, 32.299274, 30.616394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359554, 31.565546, 30.348728>,  <41.581203, 31.997015, 30.871967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359554, 31.565546, 30.348728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.114700, 31.873863, 30.278111>,  <40.967789, 32.058853, 30.235741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.114700, 31.873863, 30.278111>,  <41.359554, 31.565546, 30.348728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114700, 31.873863, 30.278111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059184, -0.177976, -0.982254,
		-0.788535, -0.611720, 0.063326,
		-0.612135, 0.770794, -0.176544,
		40.931061, 32.105103, 30.225147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881721, 31.348667, 29.900846>,  <41.359554, 31.565546, 30.348728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881721, 31.348667, 29.900846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.848557, 31.741425, 29.832722>,  <40.828655, 31.977079, 29.791847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.848557, 31.741425, 29.832722>,  <40.881721, 31.348667, 29.900846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848557, 31.741425, 29.832722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133617, -0.180312, -0.974492,
		-0.987558, -0.058043, 0.146148,
		-0.082914, 0.981896, -0.170313,
		40.823681, 32.035992, 29.781628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395161, 31.464165, 29.517883>,  <40.881721, 31.348667, 29.900846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395161, 31.464165, 29.517883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.568851, 31.816158, 29.440861>,  <40.673065, 32.027355, 29.394648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.568851, 31.816158, 29.440861>,  <40.395161, 31.464165, 29.517883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568851, 31.816158, 29.440861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039497, -0.194957, -0.980016,
		-0.899939, 0.433152, -0.049899,
		0.434224, 0.879984, -0.192558,
		40.699120, 32.080154, 29.383093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044342, 31.687607, 28.913054>,  <40.395161, 31.464165, 29.517883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044342, 31.687607, 28.913054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.388874, 31.887585, 28.949192>,  <40.595592, 32.007572, 28.970875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.388874, 31.887585, 28.949192>,  <40.044342, 31.687607, 28.913054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388874, 31.887585, 28.949192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072033, 0.055858, -0.995837,
		-0.502909, 0.864255, 0.012099,
		0.861333, 0.499943, 0.090346,
		40.647274, 32.037567, 28.976295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927998, 32.266373, 28.598534>,  <40.044342, 31.687607, 28.913054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927998, 32.266373, 28.598534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.324440, 32.213234, 28.595642>,  <40.562305, 32.181351, 28.593906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.324440, 32.213234, 28.595642>,  <39.927998, 32.266373, 28.598534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324440, 32.213234, 28.595642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034032, 0.305691, -0.951522,
		0.128616, 0.942818, 0.307494,
		0.991110, -0.132846, -0.007231,
		40.621773, 32.173382, 28.593473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236275, 32.961983, 28.291025>,  <39.927998, 32.266373, 28.598534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236275, 32.961983, 28.291025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.502644, 32.664471, 28.267925>,  <40.662464, 32.485962, 28.254065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.502644, 32.664471, 28.267925>,  <40.236275, 32.961983, 28.291025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502644, 32.664471, 28.267925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142339, 0.202667, -0.968848,
		0.732314, 0.636959, 0.240830,
		0.665924, -0.743780, -0.057752,
		40.702419, 32.441338, 28.250599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673851, 33.216267, 27.846914>,  <40.236275, 32.961983, 28.291025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673851, 33.216267, 27.846914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.726685, 32.819786, 27.843616>,  <40.758385, 32.581898, 27.841637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.726685, 32.819786, 27.843616>,  <40.673851, 33.216267, 27.846914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726685, 32.819786, 27.843616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039286, 0.013547, -0.999136,
		0.990459, 0.131649, 0.040730,
		0.132087, -0.991204, -0.008246,
		40.766312, 32.522427, 27.841143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154385, 33.080418, 27.336288>,  <40.673851, 33.216267, 27.846914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154385, 33.080418, 27.336288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.007027, 32.710468, 27.374004>,  <40.918613, 32.488499, 27.396635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.007027, 32.710468, 27.374004>,  <41.154385, 33.080418, 27.336288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007027, 32.710468, 27.374004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054434, -0.079791, -0.995324,
		0.928075, -0.371803, -0.020951,
		-0.368392, -0.924876, 0.094291,
		40.896507, 32.433006, 27.402292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456524, 32.631760, 26.773600>,  <41.154385, 33.080418, 27.336288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456524, 32.631760, 26.773600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.127533, 32.429947, 26.878658>,  <40.930138, 32.308857, 26.941692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.127533, 32.429947, 26.878658>,  <41.456524, 32.631760, 26.773600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127533, 32.429947, 26.878658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231499, -0.124858, -0.964790,
		0.519564, -0.854315, -0.014107,
		-0.822473, -0.504536, 0.262644,
		40.880791, 32.278587, 26.957451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372669, 32.032005, 26.364174>,  <41.456524, 32.631760, 26.773600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372669, 32.032005, 26.364174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.999950, 32.104019, 26.490246>,  <40.776318, 32.147228, 26.565889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.999950, 32.104019, 26.490246>,  <41.372669, 32.032005, 26.364174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999950, 32.104019, 26.490246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332617, -0.075890, -0.940004,
		-0.145315, -0.980728, 0.130597,
		-0.931799, 0.180035, 0.315179,
		40.720409, 32.158028, 26.584799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002865, 31.522465, 25.980955>,  <41.372669, 32.032005, 26.364174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002865, 31.522465, 25.980955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.716869, 31.776081, 26.098797>,  <40.545273, 31.928251, 26.169502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.716869, 31.776081, 26.098797>,  <41.002865, 31.522465, 25.980955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716869, 31.776081, 26.098797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412110, -0.041809, -0.910175,
		-0.564769, -0.772170, 0.291187,
		-0.714984, 0.634039, 0.294606,
		40.502373, 31.966293, 26.187180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377483, 31.169857, 25.920431>,  <41.002865, 31.522465, 25.980955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377483, 31.169857, 25.920431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.278221, 31.557343, 25.919140>,  <40.218666, 31.789835, 25.918365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.278221, 31.557343, 25.919140>,  <40.377483, 31.169857, 25.920431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278221, 31.557343, 25.919140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391477, -0.103331, -0.914368,
		-0.886096, -0.225637, 0.404872,
		-0.248151, 0.968716, -0.003229,
		40.203777, 31.847958, 25.918171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600471, 31.169640, 25.743563>,  <40.377483, 31.169857, 25.920431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600471, 31.169640, 25.743563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.746395, 31.524254, 25.629742>,  <39.833950, 31.737022, 25.561449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.746395, 31.524254, 25.629742>,  <39.600471, 31.169640, 25.743563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746395, 31.524254, 25.629742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558812, -0.035978, -0.828513,
		-0.744744, 0.461260, 0.482282,
		0.364808, 0.886535, -0.284552,
		39.855839, 31.790215, 25.544376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104416, 31.358864, 25.371738>,  <39.600471, 31.169640, 25.743563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104416, 31.358864, 25.371738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.370705, 31.639389, 25.269779>,  <39.530479, 31.807705, 25.208603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.370705, 31.639389, 25.269779>,  <39.104416, 31.358864, 25.371738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370705, 31.639389, 25.269779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454247, 0.109867, -0.884075,
		-0.592009, 0.704335, 0.391711,
		0.665721, 0.701314, -0.254900,
		39.570419, 31.849783, 25.193310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759346, 31.877569, 25.090307>,  <39.104416, 31.358864, 25.371738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759346, 31.877569, 25.090307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.121647, 31.942123, 24.933559>,  <39.339027, 31.980856, 24.839510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.121647, 31.942123, 24.933559>,  <38.759346, 31.877569, 25.090307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121647, 31.942123, 24.933559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403995, 0.049434, -0.913424,
		-0.128044, 0.985652, 0.109975,
		0.905755, 0.161388, -0.391869,
		39.393372, 31.990540, 24.815998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119576, 32.108929, 24.772198>,  <38.759346, 31.877569, 25.090307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119576, 32.108929, 24.772198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.724201, 32.169369, 24.777374>,  <37.486977, 32.205631, 24.780479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.724201, 32.169369, 24.777374>,  <38.119576, 32.108929, 24.772198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724201, 32.169369, 24.777374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107938, 0.641020, 0.759897,
		0.106521, 0.752505, -0.649915,
		-0.988434, 0.151095, 0.012942,
		37.427670, 32.214699, 24.781258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999245, 32.834572, 24.817106>,  <38.119576, 32.108929, 24.772198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999245, 32.834572, 24.817106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.689541, 32.641651, 24.981014>,  <37.503719, 32.525898, 25.079359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.689541, 32.641651, 24.981014>,  <37.999245, 32.834572, 24.817106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689541, 32.641651, 24.981014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028896, 0.619858, 0.784182,
		-0.632214, 0.618997, -0.465992,
		-0.774255, -0.482305, 0.409769,
		37.457264, 32.496960, 25.103945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730728, 33.306168, 25.144705>,  <37.999245, 32.834572, 24.817106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730728, 33.306168, 25.144705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.534744, 33.006733, 25.323391>,  <37.417152, 32.827072, 25.430603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.534744, 33.006733, 25.323391>,  <37.730728, 33.306168, 25.144705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534744, 33.006733, 25.323391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016804, 0.520452, 0.853725,
		-0.871582, 0.410786, -0.267581,
		-0.489962, -0.748588, 0.446714,
		37.387756, 32.782158, 25.457405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139774, 33.612511, 25.560028>,  <37.730728, 33.306168, 25.144705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139774, 33.612511, 25.560028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.234497, 33.261219, 25.726227>,  <37.291328, 33.050446, 25.825947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.234497, 33.261219, 25.726227>,  <37.139774, 33.612511, 25.560028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234497, 33.261219, 25.726227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089185, 0.406207, 0.909419,
		-0.967455, -0.252410, 0.017867,
		0.236804, -0.878228, 0.415498,
		37.305538, 32.997749, 25.850876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785336, 33.677044, 26.231686>,  <37.139774, 33.612511, 25.560028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785336, 33.677044, 26.231686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.023155, 33.360546, 26.288876>,  <37.165848, 33.170647, 26.323189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.023155, 33.360546, 26.288876>,  <36.785336, 33.677044, 26.231686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023155, 33.360546, 26.288876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101531, 0.102513, 0.989537,
		-0.797627, -0.602840, -0.019387,
		0.594545, -0.791249, 0.142974,
		37.201519, 33.123173, 26.331768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440807, 33.209991, 26.763378>,  <36.785336, 33.677044, 26.231686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440807, 33.209991, 26.763378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.828625, 33.112694, 26.751945>,  <37.061314, 33.054314, 26.745085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.828625, 33.112694, 26.751945>,  <36.440807, 33.209991, 26.763378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828625, 33.112694, 26.751945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024275, -0.020688, 0.999491,
		-0.243713, -0.969744, -0.014153,
		0.969543, -0.243245, -0.028582,
		37.119488, 33.039719, 26.743370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554802, 32.801792, 27.264585>,  <36.440807, 33.209991, 26.763378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554802, 32.801792, 27.264585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.921127, 32.946682, 27.195202>,  <37.140923, 33.033615, 27.153572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.921127, 32.946682, 27.195202>,  <36.554802, 32.801792, 27.264585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921127, 32.946682, 27.195202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169982, 0.041715, 0.984564,
		0.363869, -0.931157, -0.023369,
		0.915808, 0.362224, -0.173459,
		37.195869, 33.055347, 27.143164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015560, 32.265312, 27.652807>,  <36.554802, 32.801792, 27.264585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015560, 32.265312, 27.652807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.202686, 32.611420, 27.580742>,  <37.314960, 32.819084, 27.537502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.202686, 32.611420, 27.580742>,  <37.015560, 32.265312, 27.652807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202686, 32.611420, 27.580742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230918, 0.077107, 0.969913,
		0.853129, -0.495340, -0.163735,
		0.467812, 0.865270, -0.180165,
		37.343029, 32.871002, 27.526693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734749, 32.212315, 27.899490>,  <37.015560, 32.265312, 27.652807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734749, 32.212315, 27.899490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.650204, 32.602631, 27.876976>,  <37.599476, 32.836819, 27.863466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.650204, 32.602631, 27.876976>,  <37.734749, 32.212315, 27.899490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650204, 32.602631, 27.876976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270620, 0.113760, 0.955941,
		0.939197, 0.186816, -0.288111,
		-0.211361, 0.975786, -0.056287,
		37.586796, 32.895367, 27.860090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288689, 32.585999, 28.282337>,  <37.734749, 32.212315, 27.899490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288689, 32.585999, 28.282337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.019966, 32.882240, 28.277122>,  <37.858730, 33.059986, 28.273994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.019966, 32.882240, 28.277122>,  <38.288689, 32.585999, 28.282337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019966, 32.882240, 28.277122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325843, 0.311285, 0.892708,
		0.665205, 0.595483, -0.450446,
		-0.671810, 0.740609, -0.013034,
		37.818424, 33.104424, 28.273212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684860, 33.231182, 28.428640>,  <38.288689, 32.585999, 28.282337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684860, 33.231182, 28.428640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.297176, 33.257030, 28.523678>,  <38.064564, 33.272541, 28.580700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.297176, 33.257030, 28.523678>,  <38.684860, 33.231182, 28.428640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297176, 33.257030, 28.523678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245968, 0.298247, 0.922252,
		-0.011264, 0.952299, -0.304959,
		-0.969212, 0.064622, 0.237595,
		38.006413, 33.276417, 28.594955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675819, 33.721577, 28.942215>,  <38.684860, 33.231182, 28.428640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675819, 33.721577, 28.942215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.315224, 33.553875, 28.985188>,  <38.098866, 33.453255, 29.010971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.315224, 33.553875, 28.985188>,  <38.675819, 33.721577, 28.942215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315224, 33.553875, 28.985188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058472, 0.127963, 0.990054,
		-0.428832, 0.898805, -0.090843,
		-0.901490, -0.419255, 0.107429,
		38.044777, 33.428097, 29.017416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248245, 34.213974, 29.246092>,  <38.675819, 33.721577, 28.942215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248245, 34.213974, 29.246092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.069023, 33.868587, 29.338757>,  <37.961491, 33.661354, 29.394356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.069023, 33.868587, 29.338757>,  <38.248245, 34.213974, 29.246092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069023, 33.868587, 29.338757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084753, 0.298984, 0.950487,
		-0.889980, 0.406236, -0.207143,
		-0.448054, -0.863470, 0.231660,
		37.934608, 33.609547, 29.408255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571011, 34.299599, 29.647921>,  <38.248245, 34.213974, 29.246092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571011, 34.299599, 29.647921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.714165, 33.934364, 29.726086>,  <37.800056, 33.715221, 29.772985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.714165, 33.934364, 29.726086>,  <37.571011, 34.299599, 29.647921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714165, 33.934364, 29.726086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163993, 0.144561, 0.975812,
		-0.919254, -0.381272, -0.098005,
		0.357882, -0.913090, 0.195414,
		37.821529, 33.660439, 29.784710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240421, 34.123310, 30.283205>,  <37.571011, 34.299599, 29.647921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240421, 34.123310, 30.283205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.524067, 33.846428, 30.229527>,  <37.694252, 33.680298, 30.197319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.524067, 33.846428, 30.229527>,  <37.240421, 34.123310, 30.283205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524067, 33.846428, 30.229527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177562, -0.008878, 0.984070,
		-0.682372, -0.721644, 0.116614,
		0.709112, -0.692208, -0.134194,
		37.736801, 33.638767, 30.189268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023155, 33.573547, 30.759813>,  <37.240421, 34.123310, 30.283205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023155, 33.573547, 30.759813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.411797, 33.531445, 30.675053>,  <37.644981, 33.506184, 30.624197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.411797, 33.531445, 30.675053>,  <37.023155, 33.573547, 30.759813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411797, 33.531445, 30.675053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178873, -0.259458, 0.949045,
		-0.154868, -0.960002, -0.233264,
		0.971607, -0.105252, -0.211900,
		37.703278, 33.499870, 30.611483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261368, 32.857784, 31.054310>,  <37.023155, 33.573547, 30.759813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261368, 32.857784, 31.054310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.584969, 33.082787, 30.986061>,  <37.779129, 33.217789, 30.945112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.584969, 33.082787, 30.986061>,  <37.261368, 32.857784, 31.054310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584969, 33.082787, 30.986061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359967, -0.244620, 0.900325,
		0.464699, -0.789779, -0.400380,
		0.808998, 0.562504, -0.170620,
		37.827667, 33.251537, 30.934875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725483, 32.428242, 31.214134>,  <37.261368, 32.857784, 31.054310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725483, 32.428242, 31.214134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.905323, 32.785141, 31.230850>,  <38.013226, 32.999283, 31.240881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.905323, 32.785141, 31.230850>,  <37.725483, 32.428242, 31.214134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905323, 32.785141, 31.230850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295111, -0.192539, 0.935862,
		0.843071, -0.408431, -0.349879,
		0.449601, 0.892251, 0.041791,
		38.040203, 33.052818, 31.243387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365219, 32.293102, 31.407961>,  <37.725483, 32.428242, 31.214134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365219, 32.293102, 31.407961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.316734, 32.670284, 31.531994>,  <38.287643, 32.896591, 31.606413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.316734, 32.670284, 31.531994>,  <38.365219, 32.293102, 31.407961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316734, 32.670284, 31.531994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321936, -0.258152, 0.910887,
		0.938970, 0.210237, -0.272279,
		-0.121213, 0.942952, 0.310080,
		38.280369, 32.953171, 31.625017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938564, 32.412800, 32.002594>,  <38.365219, 32.293102, 31.407961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938564, 32.412800, 32.002594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686260, 32.719074, 32.052979>,  <38.534878, 32.902840, 32.083210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686260, 32.719074, 32.052979>,  <38.938564, 32.412800, 32.002594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686260, 32.719074, 32.052979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152795, -0.036589, 0.987580,
		0.760782, 0.642176, -0.093913,
		-0.630764, 0.765683, 0.125958,
		38.497032, 32.948780, 32.090767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207016, 32.664360, 32.535583>,  <38.938564, 32.412800, 32.002594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207016, 32.664360, 32.535583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.819656, 32.757931, 32.500973>,  <38.587242, 32.814075, 32.480206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.819656, 32.757931, 32.500973>,  <39.207016, 32.664360, 32.535583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819656, 32.757931, 32.500973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152448, -0.280559, 0.947653,
		0.197407, 0.930894, 0.307354,
		-0.968396, 0.233929, -0.086528,
		38.529137, 32.828110, 32.475014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<24.508457, 25.241034, 30.615362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.892860, 25.183121, 30.709599>,  <25.123503, 25.148373, 30.766140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.892860, 25.183121, 30.709599>,  <24.508457, 25.241034, 30.615362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.892860, 25.183121, 30.709599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261016, -0.756227, 0.599992,
		0.091293, -0.638090, -0.764530,
		0.961008, -0.144780, 0.235590,
		25.181162, 25.139687, 30.780275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.643192, 24.478477, 30.493164>,  <24.508457, 25.241034, 30.615362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.643192, 24.478477, 30.493164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.909416, 24.604755, 30.763680>,  <25.069151, 24.680521, 30.925989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.909416, 24.604755, 30.763680>,  <24.643192, 24.478477, 30.493164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909416, 24.604755, 30.763680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089457, -0.865861, 0.492223,
		0.740965, -0.388102, -0.548040,
		0.665559, 0.315694, 0.676291,
		25.109083, 24.699463, 30.966566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154493, 23.910002, 30.566599>,  <24.643192, 24.478477, 30.493164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154493, 23.910002, 30.566599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.163017, 24.143112, 30.891541>,  <25.168131, 24.282978, 31.086506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.163017, 24.143112, 30.891541>,  <25.154493, 23.910002, 30.566599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163017, 24.143112, 30.891541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067393, -0.809851, 0.582751,
		0.997499, -0.067164, 0.022018,
		0.021308, 0.582778, 0.812352,
		25.169411, 24.317945, 31.135246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613228, 23.657053, 30.989651>,  <25.154493, 23.910002, 30.566599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613228, 23.657053, 30.989651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.417929, 23.874508, 31.262730>,  <25.300749, 24.004980, 31.426577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.417929, 23.874508, 31.262730>,  <25.613228, 23.657053, 30.989651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417929, 23.874508, 31.262730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003247, -0.781138, 0.624350,
		0.872700, 0.307053, 0.379622,
		-0.488246, 0.543638, 0.682696,
		25.271456, 24.037600, 31.467539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023001, 23.546835, 31.622787>,  <25.613228, 23.657053, 30.989651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023001, 23.546835, 31.622787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.655100, 23.679436, 31.706844>,  <25.434359, 23.758995, 31.757278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.655100, 23.679436, 31.706844>,  <26.023001, 23.546835, 31.622787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.655100, 23.679436, 31.706844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060722, -0.649138, 0.758243,
		0.387770, 0.684637, 0.617177,
		-0.919754, 0.331500, 0.210144,
		25.379173, 23.778885, 31.769888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.964911, 23.660082, 32.349743>,  <26.023001, 23.546835, 31.622787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.964911, 23.660082, 32.349743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.588781, 23.605938, 32.224861>,  <25.363104, 23.573452, 32.149933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.588781, 23.605938, 32.224861>,  <25.964911, 23.660082, 32.349743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588781, 23.605938, 32.224861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164475, -0.622389, 0.765232,
		-0.297894, 0.770915, 0.562983,
		-0.940323, -0.135362, -0.312202,
		25.306684, 23.565329, 32.131199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627567, 23.525021, 32.911549>,  <25.964911, 23.660082, 32.349743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627567, 23.525021, 32.911549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.338516, 23.422462, 32.654778>,  <25.165087, 23.360928, 32.500713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.338516, 23.422462, 32.654778>,  <25.627567, 23.525021, 32.911549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.338516, 23.422462, 32.654778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344963, -0.670993, 0.656330,
		-0.599009, 0.695723, 0.396431,
		-0.722626, -0.256394, -0.641930,
		25.121729, 23.345545, 32.462200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922113, 23.525507, 33.288685>,  <25.627567, 23.525021, 32.911549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922113, 23.525507, 33.288685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.893175, 23.292614, 32.964767>,  <24.875813, 23.152878, 32.770416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.893175, 23.292614, 32.964767>,  <24.922113, 23.525507, 33.288685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893175, 23.292614, 32.964767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360597, -0.741732, 0.565512,
		-0.929912, 0.332922, -0.156292,
		-0.072344, -0.582234, -0.809796,
		24.871471, 23.117945, 32.721828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.273216, 23.222418, 33.357746>,  <24.922113, 23.525507, 33.288685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.273216, 23.222418, 33.357746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.478466, 22.967625, 33.127632>,  <24.601616, 22.814749, 32.989563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.478466, 22.967625, 33.127632>,  <24.273216, 23.222418, 33.357746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.478466, 22.967625, 33.127632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347894, -0.767078, 0.539037,
		-0.784654, -0.076445, -0.615202,
		0.513115, -0.636983, -0.575296,
		24.632404, 22.776529, 32.955048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.911531, 22.518332, 33.404800>,  <24.273216, 23.222418, 33.357746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.911531, 22.518332, 33.404800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.264805, 22.429363, 33.239624>,  <24.476768, 22.375982, 33.140518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.264805, 22.429363, 33.239624>,  <23.911531, 22.518332, 33.404800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.264805, 22.429363, 33.239624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035510, -0.909592, 0.413984,
		-0.467682, -0.350960, -0.811234,
		0.883183, -0.222419, -0.412937,
		24.529760, 22.362637, 33.115742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.763716, 21.952784, 33.051640>,  <23.911531, 22.518332, 33.404800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.763716, 21.952784, 33.051640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.156843, 21.960003, 33.125111>,  <24.392719, 21.964334, 33.169193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.156843, 21.960003, 33.125111>,  <23.763716, 21.952784, 33.051640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.156843, 21.960003, 33.125111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056582, -0.917818, 0.392949,
		0.175676, -0.396591, -0.901029,
		0.982821, 0.018050, 0.183679,
		24.451689, 21.965418, 33.180214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.946981, 21.285986, 32.776031>,  <23.763716, 21.952784, 33.051640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.946981, 21.285986, 32.776031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.253077, 21.407520, 33.003044>,  <24.436733, 21.480440, 33.139252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.253077, 21.407520, 33.003044>,  <23.946981, 21.285986, 32.776031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.253077, 21.407520, 33.003044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141906, -0.939539, 0.311655,
		0.627911, -0.157954, -0.762088,
		0.765239, 0.303837, 0.567532,
		24.482649, 21.498671, 33.173306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.688728, 21.027348, 33.058777>,  <23.946981, 21.285986, 32.776031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.688728, 21.027348, 33.058777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.821463, 21.208519, 32.727779>,  <24.901104, 21.317223, 32.529182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.821463, 21.208519, 32.727779>,  <24.688728, 21.027348, 33.058777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.821463, 21.208519, 32.727779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939178, -0.076350, 0.334837,
		0.088479, -0.888272, -0.450717,
		0.331838, 0.452929, -0.827489,
		24.921015, 21.344398, 32.479534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.240931, 20.653261, 32.604092>,  <24.688728, 21.027348, 33.058777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.240931, 20.653261, 32.604092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.263079, 21.052315, 32.587772>,  <25.276367, 21.291746, 32.577980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.263079, 21.052315, 32.587772>,  <25.240931, 20.653261, 32.604092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.263079, 21.052315, 32.587772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842462, -0.024746, 0.538186,
		0.535902, -0.064173, -0.841838,
		0.055369, 0.997632, -0.040801,
		25.279690, 21.351604, 32.575531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870764, 20.198658, 32.732010>,  <25.240931, 20.653261, 32.604092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870764, 20.198658, 32.732010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.015194, 19.896458, 32.513344>,  <26.101852, 19.715137, 32.382145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.015194, 19.896458, 32.513344>,  <25.870764, 20.198658, 32.732010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015194, 19.896458, 32.513344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454703, 0.654440, -0.604114,
		0.814168, -0.030439, 0.579831,
		0.361076, -0.755501, -0.546665,
		26.123516, 19.669807, 32.349346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549055, 20.263979, 32.615150>,  <25.870764, 20.198658, 32.732010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549055, 20.263979, 32.615150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.401379, 20.072495, 32.296520>,  <26.312773, 19.957603, 32.105343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.401379, 20.072495, 32.296520>,  <26.549055, 20.263979, 32.615150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401379, 20.072495, 32.296520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290655, 0.754656, -0.588230,
		0.882733, -0.448698, -0.139473,
		-0.369192, -0.478711, -0.796576,
		26.290621, 19.928881, 32.057549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005632, 20.314987, 32.106556>,  <26.549055, 20.263979, 32.615150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005632, 20.314987, 32.106556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.666943, 20.229729, 31.911568>,  <26.463730, 20.178574, 31.794575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.666943, 20.229729, 31.911568>,  <27.005632, 20.314987, 32.106556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666943, 20.229729, 31.911568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211377, 0.706052, -0.675878,
		0.488242, -0.675321, -0.552776,
		-0.846723, -0.213148, -0.487472,
		26.412926, 20.165785, 31.765326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204782, 20.356541, 31.479124>,  <27.005632, 20.314987, 32.106556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204782, 20.356541, 31.479124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.810324, 20.388809, 31.421146>,  <26.573648, 20.408171, 31.386360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.810324, 20.388809, 31.421146>,  <27.204782, 20.356541, 31.479124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810324, 20.388809, 31.421146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163927, 0.607715, -0.777052,
		0.025398, -0.790047, -0.612520,
		-0.986145, 0.080673, -0.144945,
		26.514481, 20.413012, 31.377663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157280, 20.260590, 30.755949>,  <27.204782, 20.356541, 31.479124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157280, 20.260590, 30.755949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.844076, 20.449989, 30.917290>,  <26.656153, 20.563629, 31.014093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.844076, 20.449989, 30.917290>,  <27.157280, 20.260590, 30.755949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844076, 20.449989, 30.917290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145676, 0.770032, -0.621152,
		-0.604708, -0.427611, -0.671921,
		-0.783012, 0.473498, 0.403352,
		26.609173, 20.592039, 31.038296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731468, 20.435125, 30.184788>,  <27.157280, 20.260590, 30.755949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731468, 20.435125, 30.184788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.607267, 20.690414, 30.466572>,  <26.532747, 20.843588, 30.635641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.607267, 20.690414, 30.466572>,  <26.731468, 20.435125, 30.184788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.607267, 20.690414, 30.466572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159123, 0.765529, -0.623414,
		-0.937160, -0.081476, -0.339255,
		-0.310503, 0.638222, 0.704458,
		26.514116, 20.881882, 30.677910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311052, 20.871655, 29.886066>,  <26.731468, 20.435125, 30.184788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311052, 20.871655, 29.886066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.380648, 21.069569, 30.226635>,  <26.422405, 21.188318, 30.430975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.380648, 21.069569, 30.226635>,  <26.311052, 20.871655, 29.886066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380648, 21.069569, 30.226635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247018, 0.815034, -0.524120,
		-0.953263, 0.301506, 0.019584,
		0.173987, 0.494787, 0.851419,
		26.432844, 21.218004, 30.482061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004967, 21.460047, 29.686451>,  <26.311052, 20.871655, 29.886066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004967, 21.460047, 29.686451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.251961, 21.529118, 29.993408>,  <26.400158, 21.570560, 30.177582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.251961, 21.529118, 29.993408>,  <26.004967, 21.460047, 29.686451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251961, 21.529118, 29.993408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339957, 0.821195, -0.458330,
		-0.709323, 0.543894, 0.448375,
		0.617487, 0.172676, 0.767393,
		26.437206, 21.580921, 30.223627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887428, 22.134987, 29.772226>,  <26.004967, 21.460047, 29.686451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887428, 22.134987, 29.772226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.249672, 22.038105, 29.911488>,  <26.467018, 21.979977, 29.995045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.249672, 22.038105, 29.911488>,  <25.887428, 22.134987, 29.772226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249672, 22.038105, 29.911488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381262, 0.824499, -0.418140,
		-0.185776, 0.511408, 0.839016,
		0.905609, -0.242204, 0.348152,
		26.521355, 21.965445, 30.015934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138485, 22.738077, 30.055702>,  <25.887428, 22.134987, 29.772226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138485, 22.738077, 30.055702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.478367, 22.527195, 30.058640>,  <26.682297, 22.400665, 30.060402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.478367, 22.527195, 30.058640>,  <26.138485, 22.738077, 30.055702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478367, 22.527195, 30.058640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486907, 0.779262, -0.394554,
		0.202287, 0.338831, 0.918844,
		0.849707, -0.527204, 0.007345,
		26.733278, 22.369034, 30.060843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676563, 23.126410, 30.486210>,  <26.138485, 22.738077, 30.055702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676563, 23.126410, 30.486210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.861982, 22.880421, 30.231045>,  <26.973234, 22.732828, 30.077946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.861982, 22.880421, 30.231045>,  <26.676563, 23.126410, 30.486210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861982, 22.880421, 30.231045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475607, 0.780122, -0.406458,
		0.747609, -0.114982, 0.654110,
		0.463550, -0.614970, -0.637913,
		27.001047, 22.695930, 30.039671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428963, 23.197475, 30.588720>,  <26.676563, 23.126410, 30.486210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428963, 23.197475, 30.588720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.355299, 23.067017, 30.217838>,  <27.311100, 22.988741, 29.995308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.355299, 23.067017, 30.217838>,  <27.428963, 23.197475, 30.588720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355299, 23.067017, 30.217838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458518, 0.805901, -0.374547,
		0.869394, -0.494118, 0.001128,
		-0.184161, -0.326146, -0.927207,
		27.300051, 22.969173, 29.939676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078257, 23.393721, 30.237040>,  <27.428963, 23.197475, 30.588720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078257, 23.393721, 30.237040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.834787, 23.285633, 29.938644>,  <27.688705, 23.220781, 29.759607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.834787, 23.285633, 29.938644>,  <28.078257, 23.393721, 30.237040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834787, 23.285633, 29.938644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389977, 0.716916, -0.577884,
		0.690966, -0.642660, -0.330988,
		-0.608674, -0.270220, -0.745988,
		27.652185, 23.204567, 29.714848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553381, 23.137281, 29.626066>,  <28.078257, 23.393721, 30.237040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553381, 23.137281, 29.626066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.191458, 23.262295, 29.510380>,  <27.974304, 23.337303, 29.440968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.191458, 23.262295, 29.510380>,  <28.553381, 23.137281, 29.626066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191458, 23.262295, 29.510380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424922, 0.706837, -0.565529,
		0.027683, -0.634589, -0.772353,
		-0.904807, 0.312534, -0.289218,
		27.920015, 23.356054, 29.423615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088764, 22.668074, 29.255314>,  <28.553381, 23.137281, 29.626066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088764, 22.668074, 29.255314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.475632, 22.643688, 29.353996>,  <29.707752, 22.629057, 29.413206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.475632, 22.643688, 29.353996>,  <29.088764, 22.668074, 29.255314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475632, 22.643688, 29.353996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193148, -0.807235, 0.557732,
		0.165148, -0.587073, -0.792510,
		0.967171, -0.060964, 0.246706,
		29.765783, 22.625399, 29.428007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188866, 21.948372, 29.302813>,  <29.088764, 22.668074, 29.255314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188866, 21.948372, 29.302813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.465933, 22.134369, 29.523354>,  <29.632174, 22.245968, 29.655678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.465933, 22.134369, 29.523354>,  <29.188866, 21.948372, 29.302813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465933, 22.134369, 29.523354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204703, -0.606258, 0.768471,
		0.691597, -0.645159, -0.324750,
		0.692669, 0.464995, 0.551353,
		29.673733, 22.273867, 29.688759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596308, 21.385281, 29.550117>,  <29.188866, 21.948372, 29.302813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596308, 21.385281, 29.550117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.720200, 21.675724, 29.795666>,  <29.794535, 21.849991, 29.942995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.720200, 21.675724, 29.795666>,  <29.596308, 21.385281, 29.550117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720200, 21.675724, 29.795666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078548, -0.623871, 0.777570,
		0.947575, -0.289053, -0.136196,
		0.309728, 0.726108, 0.613869,
		29.813118, 21.893557, 29.979826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237856, 21.215210, 29.968973>,  <29.596308, 21.385281, 29.550117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237856, 21.215210, 29.968973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.051870, 21.497730, 30.182495>,  <29.940279, 21.667242, 30.310608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.051870, 21.497730, 30.182495>,  <30.237856, 21.215210, 29.968973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051870, 21.497730, 30.182495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067531, -0.629480, 0.774076,
		0.882750, 0.323869, 0.340383,
		-0.464964, 0.706303, 0.533803,
		29.912382, 21.709621, 30.342636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608864, 21.229506, 30.592890>,  <30.237856, 21.215210, 29.968973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608864, 21.229506, 30.592890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.270205, 21.419945, 30.687981>,  <30.067009, 21.534208, 30.745035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.270205, 21.419945, 30.687981>,  <30.608864, 21.229506, 30.592890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270205, 21.419945, 30.687981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016953, -0.422369, 0.906265,
		0.531879, 0.771320, 0.349528,
		-0.846650, 0.476098, 0.237726,
		30.016209, 21.562775, 30.759298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734083, 21.528336, 31.246197>,  <30.608864, 21.229506, 30.592890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734083, 21.528336, 31.246197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.340456, 21.485046, 31.189774>,  <30.104280, 21.459072, 31.155920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.340456, 21.485046, 31.189774>,  <30.734083, 21.528336, 31.246197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340456, 21.485046, 31.189774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050974, -0.588339, 0.807006,
		-0.170329, 0.801339, 0.573449,
		-0.984068, -0.108225, -0.141059,
		30.045235, 21.452579, 31.147455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355125, 21.559296, 31.906019>,  <30.734083, 21.528336, 31.246197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355125, 21.559296, 31.906019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.076395, 21.373741, 31.687206>,  <29.909157, 21.262407, 31.555918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.076395, 21.373741, 31.687206>,  <30.355125, 21.559296, 31.906019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076395, 21.373741, 31.687206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275963, -0.530575, 0.801458,
		-0.662028, 0.709436, 0.241701,
		-0.696824, -0.463887, -0.547033,
		29.867348, 21.234575, 31.523096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332594, 22.151455, 32.501633>,  <30.355125, 21.559296, 31.906019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332594, 22.151455, 32.501633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.686949, 22.186207, 32.683910>,  <30.899563, 22.207058, 32.793278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.686949, 22.186207, 32.683910>,  <30.332594, 22.151455, 32.501633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686949, 22.186207, 32.683910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367610, 0.467690, -0.803822,
		-0.282958, 0.879612, 0.382383,
		0.885888, 0.086880, 0.455691,
		30.952715, 22.212271, 32.820618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540409, 22.879683, 32.679817>,  <30.332594, 22.151455, 32.501633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540409, 22.879683, 32.679817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.878046, 22.671333, 32.628914>,  <31.080629, 22.546324, 32.598373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.878046, 22.671333, 32.628914>,  <30.540409, 22.879683, 32.679817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878046, 22.671333, 32.628914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327287, 0.688498, -0.647189,
		0.424722, 0.504638, 0.751632,
		0.844094, -0.520875, -0.127259,
		31.131273, 22.515070, 32.590736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988665, 23.306019, 32.800896>,  <30.540409, 22.879683, 32.679817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988665, 23.306019, 32.800896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.191181, 23.034843, 32.587704>,  <31.312691, 22.872137, 32.459789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.191181, 23.034843, 32.587704>,  <30.988665, 23.306019, 32.800896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191181, 23.034843, 32.587704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413107, 0.733181, -0.540174,
		0.756975, 0.053309, 0.651265,
		0.506292, -0.677941, -0.532978,
		31.343069, 22.831461, 32.427811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508587, 23.683786, 32.628326>,  <30.988665, 23.306019, 32.800896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508587, 23.683786, 32.628326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.553791, 23.377895, 32.374580>,  <31.580914, 23.194361, 32.222332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.553791, 23.377895, 32.374580>,  <31.508587, 23.683786, 32.628326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553791, 23.377895, 32.374580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327750, 0.631415, -0.702776,
		0.937981, -0.128492, 0.321997,
		0.113012, -0.764726, -0.634368,
		31.587694, 23.148478, 32.184269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154530, 23.721754, 32.396072>,  <31.508587, 23.683786, 32.628326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154530, 23.721754, 32.396072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957254, 23.504803, 32.124016>,  <31.838890, 23.374632, 31.960781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957254, 23.504803, 32.124016>,  <32.154530, 23.721754, 32.396072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957254, 23.504803, 32.124016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303078, 0.625727, -0.718755,
		0.815421, -0.560616, -0.144217,
		-0.493186, -0.542379, -0.680141,
		31.809299, 23.342089, 31.919973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646130, 23.765553, 31.782198>,  <32.154530, 23.721754, 32.396072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646130, 23.765553, 31.782198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.301182, 23.636406, 31.626213>,  <32.094212, 23.558918, 31.532623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.301182, 23.636406, 31.626213>,  <32.646130, 23.765553, 31.782198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301182, 23.636406, 31.626213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221618, 0.451790, -0.864159,
		0.455218, -0.831639, -0.318045,
		-0.862358, -0.322896, -0.389969,
		32.042469, 23.539547, 31.509226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784660, 23.502806, 31.097527>,  <32.646130, 23.765553, 31.782198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784660, 23.502806, 31.097527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399868, 23.612049, 31.097054>,  <32.168991, 23.677595, 31.096769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399868, 23.612049, 31.097054>,  <32.784660, 23.502806, 31.097527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399868, 23.612049, 31.097054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109916, 0.383192, -0.917105,
		-0.250015, -0.882370, -0.398643,
		-0.961983, 0.273107, -0.001182,
		32.111275, 23.693981, 31.096699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.705853, 21.965359, 35.239399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.388659, 21.918034, 35.000340>,  <27.198343, 21.889639, 34.856903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.388659, 21.918034, 35.000340>,  <27.705853, 21.965359, 35.239399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388659, 21.918034, 35.000340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050246, 0.964920, -0.257690,
		0.607167, -0.234373, -0.759221,
		-0.792984, -0.118313, -0.597644,
		27.150763, 21.882540, 34.821045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974661, 22.111750, 34.565651>,  <27.705853, 21.965359, 35.239399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974661, 22.111750, 34.565651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.581047, 22.158566, 34.512024>,  <27.344879, 22.186655, 34.479847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.581047, 22.158566, 34.512024>,  <27.974661, 22.111750, 34.565651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581047, 22.158566, 34.512024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172438, 0.813329, -0.555662,
		0.044006, -0.569910, -0.820528,
		-0.984037, 0.117038, -0.134065,
		27.285835, 22.193676, 34.471806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848911, 22.280085, 33.881794>,  <27.974661, 22.111750, 34.565651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848911, 22.280085, 33.881794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.507254, 22.396851, 34.053944>,  <27.302259, 22.466909, 34.157234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.507254, 22.396851, 34.053944>,  <27.848911, 22.280085, 33.881794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507254, 22.396851, 34.053944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007297, 0.820777, -0.571202,
		-0.519982, -0.491031, -0.698934,
		-0.854146, 0.291915, 0.430372,
		27.251009, 22.484425, 34.183056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390123, 22.331161, 33.379417>,  <27.848911, 22.280085, 33.881794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390123, 22.331161, 33.379417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.249359, 22.581535, 33.657803>,  <27.164902, 22.731760, 33.824833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.249359, 22.581535, 33.657803>,  <27.390123, 22.331161, 33.379417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249359, 22.581535, 33.657803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121553, 0.706669, -0.697025,
		-0.928108, -0.329886, -0.172599,
		-0.351909, 0.625935, 0.695964,
		27.143787, 22.769316, 33.866592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957260, 22.774710, 32.985161>,  <27.390123, 22.331161, 33.379417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957260, 22.774710, 32.985161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.000118, 22.996685, 33.315147>,  <27.025833, 23.129869, 33.513138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.000118, 22.996685, 33.315147>,  <26.957260, 22.774710, 32.985161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000118, 22.996685, 33.315147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124657, 0.830691, -0.542599,
		-0.986398, -0.044700, 0.158182,
		0.107146, 0.554937, 0.824964,
		27.032263, 23.163166, 33.562637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498928, 23.322948, 32.828407>,  <26.957260, 22.774710, 32.985161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498928, 23.322948, 32.828407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.709768, 23.465176, 33.137142>,  <26.836273, 23.550512, 33.322384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.709768, 23.465176, 33.137142>,  <26.498928, 23.322948, 32.828407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709768, 23.465176, 33.137142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021567, 0.913562, -0.406127,
		-0.849529, 0.197424, 0.489208,
		0.527101, 0.355568, 0.771839,
		26.867899, 23.571846, 33.368694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225191, 23.950115, 32.958344>,  <26.498928, 23.322948, 32.828407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225191, 23.950115, 32.958344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.605776, 23.946262, 33.081390>,  <26.834127, 23.943951, 33.155216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.605776, 23.946262, 33.081390>,  <26.225191, 23.950115, 32.958344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605776, 23.946262, 33.081390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137047, 0.908206, -0.395448,
		-0.275568, 0.418412, 0.865444,
		0.951462, -0.009633, 0.307615,
		26.891214, 23.943373, 33.173676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390797, 24.666273, 33.298782>,  <26.225191, 23.950115, 32.958344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390797, 24.666273, 33.298782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.740532, 24.521278, 33.169701>,  <26.950373, 24.434280, 33.092251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.740532, 24.521278, 33.169701>,  <26.390797, 24.666273, 33.298782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740532, 24.521278, 33.169701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230582, 0.895360, -0.381002,
		0.427045, 0.258714, 0.866429,
		0.874336, -0.362488, -0.322704,
		27.002832, 24.412533, 33.072887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839558, 25.114969, 33.514687>,  <26.390797, 24.666273, 33.298782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839558, 25.114969, 33.514687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.035336, 24.920738, 33.224953>,  <27.152802, 24.804199, 33.051113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.035336, 24.920738, 33.224953>,  <26.839558, 25.114969, 33.514687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035336, 24.920738, 33.224953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384809, 0.865644, -0.320286,
		0.782538, -0.121967, 0.610540,
		0.489445, -0.485577, -0.724333,
		27.182169, 24.775064, 33.007652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549038, 25.352390, 33.625549>,  <26.839558, 25.114969, 33.514687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549038, 25.352390, 33.625549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.527113, 25.199677, 33.256500>,  <27.513958, 25.108049, 33.035069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.527113, 25.199677, 33.256500>,  <27.549038, 25.352390, 33.625549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527113, 25.199677, 33.256500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541724, 0.764829, -0.348671,
		0.838767, -0.518921, 0.164897,
		-0.054814, -0.381782, -0.922625,
		27.510668, 25.085142, 32.979713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146961, 25.459606, 33.415592>,  <27.549038, 25.352390, 33.625549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146961, 25.459606, 33.415592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.946507, 25.404598, 33.073845>,  <27.826233, 25.371593, 32.868797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.946507, 25.404598, 33.073845>,  <28.146961, 25.459606, 33.415592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946507, 25.404598, 33.073845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330187, 0.882213, -0.335674,
		0.799899, -0.450321, -0.396703,
		-0.501137, -0.137519, -0.854371,
		27.796165, 25.363342, 32.817532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604256, 25.764153, 32.984970>,  <28.146961, 25.459606, 33.415592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604256, 25.764153, 32.984970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.259295, 25.731186, 32.785183>,  <28.052319, 25.711407, 32.665310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.259295, 25.731186, 32.785183>,  <28.604256, 25.764153, 32.984970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259295, 25.731186, 32.785183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267819, 0.762986, -0.588325,
		0.429574, -0.641140, -0.635929,
		-0.862403, -0.082415, -0.499469,
		28.000574, 25.706461, 32.635342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222467, 25.518373, 32.604065>,  <28.604256, 25.764153, 32.984970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222467, 25.518373, 32.604065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.560062, 25.600922, 32.802094>,  <29.762619, 25.650450, 32.920914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.560062, 25.600922, 32.802094>,  <29.222467, 25.518373, 32.604065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560062, 25.600922, 32.802094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186896, -0.752021, 0.632087,
		0.502750, -0.626000, -0.596126,
		0.843986, 0.206368, 0.495076,
		29.813257, 25.662832, 32.950615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340855, 24.867296, 32.850803>,  <29.222467, 25.518373, 32.604065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340855, 24.867296, 32.850803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.583649, 25.103203, 33.063873>,  <29.729326, 25.244747, 33.191715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.583649, 25.103203, 33.063873>,  <29.340855, 24.867296, 32.850803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583649, 25.103203, 33.063873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035018, -0.689473, 0.723464,
		0.793940, -0.420480, -0.439153,
		0.606987, 0.589766, 0.532676,
		29.765745, 25.280132, 33.223675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868204, 24.460928, 33.125305>,  <29.340855, 24.867296, 32.850803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868204, 24.460928, 33.125305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.852703, 24.774979, 33.372555>,  <29.843403, 24.963409, 33.520905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.852703, 24.774979, 33.372555>,  <29.868204, 24.460928, 33.125305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852703, 24.774979, 33.372555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210962, -0.611071, 0.762946,
		0.976726, -0.100834, 0.189313,
		-0.038753, 0.785128, 0.618121,
		29.841078, 25.010517, 33.557991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350260, 24.295061, 33.778797>,  <29.868204, 24.460928, 33.125305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350260, 24.295061, 33.778797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.110680, 24.596207, 33.887947>,  <29.966932, 24.776894, 33.953438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.110680, 24.596207, 33.887947>,  <30.350260, 24.295061, 33.778797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110680, 24.596207, 33.887947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277707, -0.514886, 0.811031,
		0.751092, 0.409987, 0.517466,
		-0.598948, 0.752863, 0.272870,
		29.930996, 24.822065, 33.969807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541382, 24.557180, 34.523369>,  <30.350260, 24.295061, 33.778797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541382, 24.557180, 34.523369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.163376, 24.679977, 34.478287>,  <29.936571, 24.753654, 34.451237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.163376, 24.679977, 34.478287>,  <30.541382, 24.557180, 34.523369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163376, 24.679977, 34.478287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265543, -0.519191, 0.812359,
		0.190872, 0.797620, 0.572163,
		-0.945016, 0.306990, -0.112703,
		29.879871, 24.772074, 34.444477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264803, 24.820478, 35.163139>,  <30.541382, 24.557180, 34.523369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264803, 24.820478, 35.163139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.924212, 24.722542, 34.977650>,  <29.719856, 24.663780, 34.866356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.924212, 24.722542, 34.977650>,  <30.264803, 24.820478, 35.163139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924212, 24.722542, 34.977650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297283, -0.503094, 0.811492,
		-0.431985, 0.828824, 0.355585,
		-0.851476, -0.244843, -0.463724,
		29.668768, 24.649090, 34.838531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745598, 24.838860, 35.686512>,  <30.264803, 24.820478, 35.163139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745598, 24.838860, 35.686512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.568373, 24.632980, 35.392906>,  <29.462038, 24.509453, 35.216743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.568373, 24.632980, 35.392906>,  <29.745598, 24.838860, 35.686512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568373, 24.632980, 35.392906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315568, -0.676824, 0.665077,
		-0.839114, 0.526302, 0.137452,
		-0.443062, -0.514700, -0.734016,
		29.435453, 24.478571, 35.172703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068399, 24.625055, 35.943737>,  <29.745598, 24.838860, 35.686512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068399, 24.625055, 35.943737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.141241, 24.358868, 35.654190>,  <29.184946, 24.199154, 35.480461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.141241, 24.358868, 35.654190>,  <29.068399, 24.625055, 35.943737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141241, 24.358868, 35.654190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260189, -0.742550, 0.617189,
		-0.948230, 0.075949, -0.308370,
		0.182104, -0.665471, -0.723869,
		29.195873, 24.159225, 35.437031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670811, 24.071630, 36.026127>,  <29.068399, 24.625055, 35.943737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670811, 24.071630, 36.026127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.915136, 23.889584, 35.766968>,  <29.061731, 23.780355, 35.611473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.915136, 23.889584, 35.766968>,  <28.670811, 24.071630, 36.026127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915136, 23.889584, 35.766968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050786, -0.839125, 0.541562,
		-0.790143, -0.297890, -0.535664,
		0.610815, -0.455116, -0.647900,
		29.098381, 23.753048, 35.572598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294594, 23.363670, 35.680565>,  <28.670811, 24.071630, 36.026127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294594, 23.363670, 35.680565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.693710, 23.379356, 35.702011>,  <28.933180, 23.388767, 35.714878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.693710, 23.379356, 35.702011>,  <28.294594, 23.363670, 35.680565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693710, 23.379356, 35.702011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006585, -0.861579, 0.507581,
		0.066100, -0.506107, -0.859934,
		0.997791, 0.039213, 0.053618,
		28.993048, 23.391121, 35.718098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406136, 22.732761, 35.533348>,  <28.294594, 23.363670, 35.680565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406136, 22.732761, 35.533348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.744280, 22.872028, 35.695408>,  <28.947166, 22.955589, 35.792645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.744280, 22.872028, 35.695408>,  <28.406136, 22.732761, 35.533348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744280, 22.872028, 35.695408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034762, -0.720965, 0.692099,
		0.533067, -0.599156, -0.597371,
		0.845358, 0.348170, 0.405150,
		28.997887, 22.976479, 35.816952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830570, 22.054716, 35.616047>,  <28.406136, 22.732761, 35.533348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830570, 22.054716, 35.616047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.982546, 22.329975, 35.863304>,  <29.073730, 22.495131, 36.011658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.982546, 22.329975, 35.863304>,  <28.830570, 22.054716, 35.616047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982546, 22.329975, 35.863304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239787, -0.718681, 0.652686,
		0.893392, -0.099758, -0.438063,
		0.379938, 0.688147, 0.618143,
		29.096527, 22.536419, 36.048748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416857, 21.717257, 35.879536>,  <28.830570, 22.054716, 35.616047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416857, 21.717257, 35.879536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.361053, 22.027004, 36.126400>,  <29.327572, 22.212852, 36.274521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.361053, 22.027004, 36.126400>,  <29.416857, 21.717257, 35.879536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361053, 22.027004, 36.126400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277789, -0.567627, 0.775005,
		0.950458, 0.279561, -0.135923,
		-0.139507, 0.774368, 0.617164,
		29.319201, 22.259315, 36.311550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026367, 21.743788, 36.291191>,  <29.416857, 21.717257, 35.879536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026367, 21.743788, 36.291191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.766998, 21.939247, 36.524693>,  <29.611378, 22.056522, 36.664795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.766998, 21.939247, 36.524693>,  <30.026367, 21.743788, 36.291191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766998, 21.939247, 36.524693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460311, -0.359093, 0.811890,
		0.606353, 0.795156, 0.007912,
		-0.648421, 0.488650, 0.583757,
		29.572472, 22.085842, 36.699818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428652, 21.981319, 35.694897>,  <30.026367, 21.743788, 36.291191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428652, 21.981319, 35.694897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.338348, 21.638191, 35.510212>,  <30.284166, 21.432314, 35.399403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.338348, 21.638191, 35.510212>,  <30.428652, 21.981319, 35.694897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338348, 21.638191, 35.510212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201143, 0.422689, -0.883672,
		0.953191, -0.292368, 0.077119,
		-0.225760, -0.857820, -0.461711,
		30.270620, 21.380846, 35.371700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001495, 21.835831, 35.404762>,  <30.428652, 21.981319, 35.694897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001495, 21.835831, 35.404762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.729143, 21.622257, 35.204239>,  <30.565731, 21.494112, 35.083923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.729143, 21.622257, 35.204239>,  <31.001495, 21.835831, 35.404762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729143, 21.622257, 35.204239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500092, 0.161139, -0.850848,
		0.535079, -0.830029, 0.157301,
		-0.680881, -0.533935, -0.501313,
		30.524879, 21.462076, 35.053844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384634, 21.335999, 34.956509>,  <31.001495, 21.835831, 35.404762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384634, 21.335999, 34.956509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.017704, 21.401806, 34.811485>,  <30.797546, 21.441290, 34.724472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.017704, 21.401806, 34.811485>,  <31.384634, 21.335999, 34.956509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017704, 21.401806, 34.811485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376615, 0.063235, -0.924209,
		-0.129125, -0.984344, -0.119968,
		-0.917327, 0.164521, -0.362554,
		30.742506, 21.451162, 34.702721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321510, 20.946095, 34.309326>,  <31.384634, 21.335999, 34.956509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321510, 20.946095, 34.309326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.022331, 21.209839, 34.278816>,  <30.842823, 21.368086, 34.260509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.022331, 21.209839, 34.278816>,  <31.321510, 20.946095, 34.309326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022331, 21.209839, 34.278816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376157, 0.326376, -0.867170,
		-0.546882, -0.677291, -0.492135,
		-0.747948, 0.659360, -0.076279,
		30.797947, 21.407646, 34.255932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012241, 20.750032, 33.631664>,  <31.321510, 20.946095, 34.309326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012241, 20.750032, 33.631664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.912109, 21.120575, 33.744236>,  <30.852030, 21.342899, 33.811779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.912109, 21.120575, 33.744236>,  <31.012241, 20.750032, 33.631664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912109, 21.120575, 33.744236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262386, 0.344718, -0.901289,
		-0.931927, -0.151777, -0.329356,
		-0.250330, 0.926355, 0.281428,
		30.837009, 21.398481, 33.828663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458149, 21.044479, 33.204521>,  <31.012241, 20.750032, 33.631664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458149, 21.044479, 33.204521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.669464, 21.344856, 33.363014>,  <30.796253, 21.525082, 33.458111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.669464, 21.344856, 33.363014>,  <30.458149, 21.044479, 33.204521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669464, 21.344856, 33.363014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220451, 0.329353, -0.918111,
		-0.819947, 0.572377, 0.008448,
		0.528288, 0.750940, 0.396233,
		30.827951, 21.570139, 33.481884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438337, 21.353733, 32.708061>,  <30.458149, 21.044479, 33.204521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438337, 21.353733, 32.708061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.670311, 21.593273, 32.928989>,  <30.809494, 21.736998, 33.061546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.670311, 21.593273, 32.928989>,  <30.438337, 21.353733, 32.708061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670311, 21.593273, 32.928989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148811, 0.588694, -0.794541,
		-0.800958, 0.542971, 0.252287,
		0.579933, 0.598850, 0.552319,
		30.844292, 21.772928, 33.094685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741533, 21.441639, 32.344219>,  <30.438337, 21.353733, 32.708061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741533, 21.441639, 32.344219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.645271, 21.191963, 32.046906>,  <29.587513, 21.042158, 31.868517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.645271, 21.191963, 32.046906>,  <29.741533, 21.441639, 32.344219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645271, 21.191963, 32.046906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384628, -0.641769, 0.663471,
		-0.891149, 0.445556, -0.085635,
		-0.240656, -0.624189, -0.743285,
		29.573074, 21.004707, 31.823919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231239, 21.045511, 32.625683>,  <29.741533, 21.441639, 32.344219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231239, 21.045511, 32.625683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.320335, 20.831364, 32.299797>,  <29.373793, 20.702875, 32.104263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.320335, 20.831364, 32.299797>,  <29.231239, 21.045511, 32.625683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320335, 20.831364, 32.299797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365319, -0.820655, 0.439394,
		-0.903841, 0.199760, -0.378375,
		0.222742, -0.535370, -0.814718,
		29.387157, 20.670753, 32.055382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600952, 20.630934, 32.381248>,  <29.231239, 21.045511, 32.625683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600952, 20.630934, 32.381248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.908333, 20.429729, 32.223030>,  <29.092762, 20.309006, 32.128098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.908333, 20.429729, 32.223030>,  <28.600952, 20.630934, 32.381248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908333, 20.429729, 32.223030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379445, -0.855927, 0.351299,
		-0.515267, -0.119868, -0.848605,
		0.768453, -0.503012, -0.395548,
		29.138868, 20.278826, 32.104366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310469, 20.065981, 31.899702>,  <28.600952, 20.630934, 32.381248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310469, 20.065981, 31.899702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.687458, 19.959919, 31.981125>,  <28.913652, 19.896282, 32.029980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.687458, 19.959919, 31.981125>,  <28.310469, 20.065981, 31.899702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687458, 19.959919, 31.981125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308602, -0.924205, 0.224966,
		0.128477, -0.274843, -0.952867,
		0.942474, -0.265154, 0.203556,
		28.970200, 19.880373, 32.042191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423185, 19.517824, 31.563614>,  <28.310469, 20.065981, 31.899702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423185, 19.517824, 31.563614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.679321, 19.505005, 31.870583>,  <28.833002, 19.497314, 32.054764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.679321, 19.505005, 31.870583>,  <28.423185, 19.517824, 31.563614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679321, 19.505005, 31.870583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307529, -0.926248, 0.217924,
		0.703840, -0.375550, -0.602969,
		0.640340, -0.032047, 0.767423,
		28.871424, 19.495390, 32.100811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696623, 18.848431, 31.665325>,  <28.423185, 19.517824, 31.563614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696623, 18.848431, 31.665325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.774982, 19.000980, 32.026695>,  <28.821999, 19.092510, 32.243519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.774982, 19.000980, 32.026695>,  <28.696623, 18.848431, 31.665325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774982, 19.000980, 32.026695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313548, -0.848551, 0.426202,
		0.929145, -0.366760, -0.046651,
		0.195900, 0.381376, 0.903424,
		28.833752, 19.115393, 32.297722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001440, 18.370132, 31.953238>,  <28.696623, 18.848431, 31.665325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001440, 18.370132, 31.953238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.878864, 18.580856, 32.270367>,  <28.805319, 18.707291, 32.460644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.878864, 18.580856, 32.270367>,  <29.001440, 18.370132, 31.953238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878864, 18.580856, 32.270367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403318, -0.826293, 0.393160,
		0.862223, -0.199280, 0.465682,
		-0.306441, 0.526809, 0.792822,
		28.786932, 18.738899, 32.508213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050568, 17.923330, 32.472385>,  <29.001440, 18.370132, 31.953238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050568, 17.923330, 32.472385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.797930, 18.198383, 32.615635>,  <28.646347, 18.363415, 32.701584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.797930, 18.198383, 32.615635>,  <29.050568, 17.923330, 32.472385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797930, 18.198383, 32.615635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564035, -0.724454, 0.396272,
		0.531935, 0.048287, 0.845408,
		-0.631593, 0.687630, 0.358126,
		28.608452, 18.404673, 32.723072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011694, 17.812109, 33.257736>,  <29.050568, 17.923330, 32.472385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011694, 17.812109, 33.257736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.698124, 17.996719, 33.091625>,  <28.509981, 18.107487, 32.991959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.698124, 17.996719, 33.091625>,  <29.011694, 17.812109, 33.257736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698124, 17.996719, 33.091625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599623, -0.736246, 0.313678,
		-0.160973, 0.494909, 0.853904,
		-0.783926, 0.461527, -0.415274,
		28.462946, 18.135178, 32.967041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.775032, 31.278839, 23.548792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418394, 31.139416, 23.433163>,  <30.204411, 31.055761, 23.363785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418394, 31.139416, 23.433163>,  <30.775032, 31.278839, 23.548792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418394, 31.139416, 23.433163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170971, -0.850233, 0.497867,
		-0.419314, 0.394474, 0.817658,
		-0.891596, -0.348559, -0.289072,
		30.150915, 31.034847, 23.346441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306622, 31.043205, 24.120489>,  <30.775032, 31.278839, 23.548792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306622, 31.043205, 24.120489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185688, 30.853924, 23.789509>,  <30.113129, 30.740355, 23.590921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185688, 30.853924, 23.789509>,  <30.306622, 31.043205, 24.120489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185688, 30.853924, 23.789509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085182, -0.851188, 0.517903,
		-0.949389, 0.227063, 0.217034,
		-0.302333, -0.473204, -0.827450,
		30.094988, 30.711962, 23.541273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053026, 30.469952, 24.455257>,  <30.306622, 31.043205, 24.120489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053026, 30.469952, 24.455257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063231, 30.358467, 24.071243>,  <30.069353, 30.291576, 23.840834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063231, 30.358467, 24.071243>,  <30.053026, 30.469952, 24.455257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063231, 30.358467, 24.071243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047631, -0.958919, 0.279652,
		-0.998539, -0.052862, -0.011190,
		0.025513, -0.278710, -0.960036,
		30.070885, 30.274855, 23.783232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588531, 29.851187, 24.419254>,  <30.053026, 30.469952, 24.455257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588531, 29.851187, 24.419254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840904, 29.829613, 24.109669>,  <29.992327, 29.816668, 23.923918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840904, 29.829613, 24.109669>,  <29.588531, 29.851187, 24.419254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840904, 29.829613, 24.109669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287940, -0.910054, 0.298147,
		-0.720429, -0.410965, -0.558650,
		0.630930, -0.053937, -0.773963,
		30.030184, 29.813431, 23.877480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474405, 29.146894, 24.182550>,  <29.588531, 29.851187, 24.419254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474405, 29.146894, 24.182550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835148, 29.220856, 24.026363>,  <30.051594, 29.265232, 23.932652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835148, 29.220856, 24.026363>,  <29.474405, 29.146894, 24.182550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835148, 29.220856, 24.026363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280791, -0.937735, 0.204475,
		-0.328348, -0.294048, -0.897621,
		0.901856, 0.184905, -0.390469,
		30.105705, 29.276327, 23.909222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576897, 28.526655, 23.970867>,  <29.474405, 29.146894, 24.182550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576897, 28.526655, 23.970867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927652, 28.718910, 23.973808>,  <30.138105, 28.834263, 23.975573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927652, 28.718910, 23.973808>,  <29.576897, 28.526655, 23.970867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927652, 28.718910, 23.973808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454891, -0.834660, 0.310511,
		0.155381, -0.268939, -0.950541,
		0.876887, 0.480640, 0.007353,
		30.190718, 28.863102, 23.976013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023174, 28.196020, 23.501314>,  <29.576897, 28.526655, 23.970867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023174, 28.196020, 23.501314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245117, 28.386959, 23.773865>,  <30.378283, 28.501522, 23.937395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245117, 28.386959, 23.773865>,  <30.023174, 28.196020, 23.501314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245117, 28.386959, 23.773865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430543, -0.865568, 0.255785,
		0.711875, 0.151437, -0.685785,
		0.554858, 0.477347, 0.681376,
		30.411575, 28.530163, 23.978277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543140, 27.796026, 23.541901>,  <30.023174, 28.196020, 23.501314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543140, 27.796026, 23.541901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609537, 28.010849, 23.872723>,  <30.649374, 28.139742, 24.071217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609537, 28.010849, 23.872723>,  <30.543140, 27.796026, 23.541901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609537, 28.010849, 23.872723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394124, -0.804923, 0.443583,
		0.903943, 0.252331, -0.345276,
		0.165991, 0.537055, 0.827054,
		30.659334, 28.171965, 24.120838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092707, 27.449461, 23.755894>,  <30.543140, 27.796026, 23.541901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092707, 27.449461, 23.755894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968782, 27.682396, 24.056534>,  <30.894428, 27.822157, 24.236917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968782, 27.682396, 24.056534>,  <31.092707, 27.449461, 23.755894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968782, 27.682396, 24.056534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327061, -0.676980, 0.659340,
		0.892776, 0.450088, 0.019274,
		-0.309809, 0.582339, 0.751598,
		30.875839, 27.857098, 24.282013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610004, 27.481400, 24.215748>,  <31.092707, 27.449461, 23.755894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610004, 27.481400, 24.215748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255720, 27.539642, 24.392075>,  <31.043150, 27.574587, 24.497869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255720, 27.539642, 24.392075>,  <31.610004, 27.481400, 24.215748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255720, 27.539642, 24.392075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191520, -0.750368, 0.632667,
		0.422894, 0.644784, 0.636721,
		-0.885709, 0.145606, 0.440816,
		30.990007, 27.583324, 24.524319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728802, 27.381971, 24.991606>,  <31.610004, 27.481400, 24.215748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728802, 27.381971, 24.991606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331041, 27.346233, 24.969040>,  <31.092384, 27.324791, 24.955500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331041, 27.346233, 24.969040>,  <31.728802, 27.381971, 24.991606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331041, 27.346233, 24.969040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017811, -0.668001, 0.743948,
		-0.104154, 0.738778, 0.665852,
		-0.994402, -0.089345, -0.056417,
		31.032721, 27.319429, 24.952114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434994, 27.511255, 25.684629>,  <31.728802, 27.381971, 24.991606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434994, 27.511255, 25.684629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131861, 27.324821, 25.502003>,  <30.949980, 27.212961, 25.392427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131861, 27.324821, 25.502003>,  <31.434994, 27.511255, 25.684629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131861, 27.324821, 25.502003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056825, -0.649967, 0.757835,
		-0.649967, 0.600258, 0.466083,
		-0.757835, -0.466083, -0.456567,
		30.904510, 27.184998, 25.365032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375608, 27.775467, 26.391653>,  <31.434994, 27.511255, 25.684629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375608, 27.775467, 26.391653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760321, 27.774151, 26.501175>,  <31.991148, 27.773361, 26.566889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760321, 27.774151, 26.501175>,  <31.375608, 27.775467, 26.391653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760321, 27.774151, 26.501175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029659, 0.995297, -0.092221,
		-0.272213, 0.096817, 0.957354,
		0.961780, -0.003291, 0.273805,
		32.048855, 27.773163, 26.583317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459223, 28.409077, 26.807058>,  <31.375608, 27.775467, 26.391653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459223, 28.409077, 26.807058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815718, 28.308208, 26.656269>,  <32.029613, 28.247686, 26.565796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815718, 28.308208, 26.656269>,  <31.459223, 28.409077, 26.807058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815718, 28.308208, 26.656269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138909, 0.943004, -0.302403,
		0.431745, 0.217147, 0.875467,
		0.891235, -0.252172, -0.376974,
		32.083088, 28.232557, 26.543177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907291, 28.965454, 26.820353>,  <31.459223, 28.409077, 26.807058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907291, 28.965454, 26.820353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129921, 28.758572, 26.560284>,  <32.263500, 28.634441, 26.404242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129921, 28.758572, 26.560284>,  <31.907291, 28.965454, 26.820353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129921, 28.758572, 26.560284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287286, 0.854124, -0.433519,
		0.779547, 0.054499, 0.623968,
		0.556573, -0.517205, -0.650173,
		32.296894, 28.603411, 26.365232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618580, 29.283728, 26.753805>,  <31.907291, 28.965454, 26.820353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618580, 29.283728, 26.753805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613743, 29.058346, 26.423382>,  <32.610840, 28.923117, 26.225128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613743, 29.058346, 26.423382>,  <32.618580, 29.283728, 26.753805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613743, 29.058346, 26.423382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334174, 0.776343, -0.534434,
		0.942434, -0.282509, 0.178906,
		-0.012090, -0.563454, -0.826059,
		32.610115, 28.889309, 26.175564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233967, 29.284910, 26.473116>,  <32.618580, 29.283728, 26.753805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233967, 29.284910, 26.473116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005013, 29.190453, 26.159019>,  <32.867638, 29.133778, 25.970562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005013, 29.190453, 26.159019>,  <33.233967, 29.284910, 26.473116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005013, 29.190453, 26.159019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408985, 0.747794, -0.523006,
		0.710705, -0.620515, -0.331451,
		-0.572390, -0.236144, -0.785243,
		32.833294, 29.119610, 25.923447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716129, 29.288048, 25.884821>,  <33.233967, 29.284910, 26.473116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716129, 29.288048, 25.884821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354061, 29.305347, 25.715687>,  <33.136818, 29.315727, 25.614206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354061, 29.305347, 25.715687>,  <33.716129, 29.288048, 25.884821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354061, 29.305347, 25.715687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337869, 0.676794, -0.654060,
		0.257884, -0.734901, -0.627229,
		-0.905174, 0.043250, -0.422835,
		33.082508, 29.318323, 25.588837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804764, 29.305931, 25.124510>,  <33.716129, 29.288048, 25.884821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804764, 29.305931, 25.124510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440201, 29.463276, 25.172832>,  <33.221462, 29.557682, 25.201826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440201, 29.463276, 25.172832>,  <33.804764, 29.305931, 25.124510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440201, 29.463276, 25.172832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269742, 0.792825, -0.546504,
		-0.310754, -0.465504, -0.828697,
		-0.911412, 0.393363, 0.120808,
		33.166779, 29.581285, 25.209074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501446, 29.619774, 24.415190>,  <33.804764, 29.305931, 25.124510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501446, 29.619774, 24.415190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309422, 29.795200, 24.719086>,  <33.194206, 29.900455, 24.901423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309422, 29.795200, 24.719086>,  <33.501446, 29.619774, 24.415190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309422, 29.795200, 24.719086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152987, 0.894643, -0.419774,
		-0.863792, -0.085287, -0.496577,
		-0.480060, 0.438567, 0.759738,
		33.165405, 29.926771, 24.947006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274277, 30.204521, 24.057726>,  <33.501446, 29.619774, 24.415190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274277, 30.204521, 24.057726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213806, 30.294586, 24.442734>,  <33.177525, 30.348625, 24.673738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213806, 30.294586, 24.442734>,  <33.274277, 30.204521, 24.057726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213806, 30.294586, 24.442734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089496, 0.972831, -0.213517,
		-0.984447, 0.053863, -0.167222,
		-0.151179, 0.225162, 0.962521,
		33.168453, 30.362135, 24.731489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827358, 30.693365, 23.929831>,  <33.274277, 30.204521, 24.057726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827358, 30.693365, 23.929831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966568, 30.765907, 24.297741>,  <33.050095, 30.809433, 24.518488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966568, 30.765907, 24.297741>,  <32.827358, 30.693365, 23.929831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966568, 30.765907, 24.297741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076180, 0.983337, -0.165061,
		-0.934384, -0.012623, 0.356043,
		0.348027, 0.181354, 0.919776,
		33.070976, 30.820312, 24.573673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482727, 31.327330, 24.201166>,  <32.827358, 30.693365, 23.929831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482727, 31.327330, 24.201166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810081, 31.274967, 24.424988>,  <33.006496, 31.243549, 24.559280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810081, 31.274967, 24.424988>,  <32.482727, 31.327330, 24.201166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810081, 31.274967, 24.424988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290534, 0.934354, -0.206333,
		-0.495812, 0.331431, 0.802698,
		0.818389, -0.130908, 0.559556,
		33.055599, 31.235695, 24.592854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454655, 31.946369, 24.656990>,  <32.482727, 31.327330, 24.201166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454655, 31.946369, 24.656990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830189, 31.813396, 24.621052>,  <33.055511, 31.733612, 24.599489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830189, 31.813396, 24.621052>,  <32.454655, 31.946369, 24.656990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830189, 31.813396, 24.621052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334934, 0.942139, 0.013928,
		0.080019, -0.043169, 0.995858,
		0.938838, -0.332432, -0.089847,
		33.111839, 31.713667, 24.594097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787327, 32.311337, 25.181303>,  <32.454655, 31.946369, 24.656990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787327, 32.311337, 25.181303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088497, 32.167053, 24.961124>,  <33.269199, 32.080482, 24.829018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088497, 32.167053, 24.961124>,  <32.787327, 32.311337, 25.181303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088497, 32.167053, 24.961124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402186, 0.914247, -0.048975,
		0.520911, -0.184508, 0.833432,
		0.752927, -0.360706, -0.550447,
		33.314377, 32.058842, 24.795990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459579, 32.665672, 25.421297>,  <32.787327, 32.311337, 25.181303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459579, 32.665672, 25.421297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483589, 32.531002, 25.045414>,  <33.497993, 32.450199, 24.819885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483589, 32.531002, 25.045414>,  <33.459579, 32.665672, 25.421297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483589, 32.531002, 25.045414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398631, 0.871163, -0.286652,
		0.915145, -0.357390, 0.186499,
		0.060024, -0.336672, -0.939707,
		33.501595, 32.430000, 24.763502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550529, 31.922611, 25.551037>,  <33.459579, 32.665672, 25.421297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550529, 31.922611, 25.551037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943634, 31.969219, 25.493618>,  <34.179497, 31.997185, 25.459166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943634, 31.969219, 25.493618>,  <33.550529, 31.922611, 25.551037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943634, 31.969219, 25.493618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131415, 0.986368, -0.099039,
		0.130051, 0.116196, 0.984675,
		0.982760, 0.116521, -0.143548,
		34.238461, 32.004177, 25.450554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778324, 32.369415, 26.034594>,  <33.550529, 31.922611, 25.551037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778324, 32.369415, 26.034594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979111, 32.392456, 25.689407>,  <34.099583, 32.406281, 25.482296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979111, 32.392456, 25.689407>,  <33.778324, 32.369415, 26.034594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979111, 32.392456, 25.689407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354015, 0.924050, -0.144242,
		0.789113, 0.377907, 0.484239,
		0.501971, 0.057605, -0.862964,
		34.129704, 32.409737, 25.430517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261791, 32.675125, 26.489771>,  <33.778324, 32.369415, 26.034594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261791, 32.675125, 26.489771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874977, 32.734261, 26.406845>,  <32.642887, 32.769741, 26.357090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874977, 32.734261, 26.406845>,  <33.261791, 32.675125, 26.489771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874977, 32.734261, 26.406845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254177, -0.512163, 0.820417,
		0.015110, 0.846069, 0.532858,
		-0.967040, 0.147837, -0.207313,
		32.584866, 32.778610, 26.344652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996231, 32.853691, 27.128941>,  <33.261791, 32.675125, 26.489771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996231, 32.853691, 27.128941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714077, 32.683147, 26.902439>,  <32.544785, 32.580822, 26.766539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714077, 32.683147, 26.902439>,  <32.996231, 32.853691, 27.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714077, 32.683147, 26.902439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213261, -0.634195, 0.743180,
		-0.675980, 0.644989, 0.356426,
		-0.705387, -0.426363, -0.566254,
		32.502460, 32.555237, 26.732563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407616, 32.687290, 27.571827>,  <32.996231, 32.853691, 27.128941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407616, 32.687290, 27.571827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347477, 32.450516, 27.255093>,  <32.311394, 32.308449, 27.065052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347477, 32.450516, 27.255093>,  <32.407616, 32.687290, 27.571827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347477, 32.450516, 27.255093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132958, -0.781557, 0.609500,
		-0.979651, 0.196920, 0.038804,
		-0.150350, -0.591938, -0.791836,
		32.302372, 32.272934, 27.017542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864256, 32.185200, 27.818350>,  <32.407616, 32.687290, 27.571827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864256, 32.185200, 27.818350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054527, 32.030029, 27.502567>,  <32.168690, 31.936928, 27.313097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054527, 32.030029, 27.502567>,  <31.864256, 32.185200, 27.818350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054527, 32.030029, 27.502567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040754, -0.906255, 0.420763,
		-0.878673, -0.167976, -0.446898,
		0.475681, -0.387926, -0.789456,
		32.197231, 31.913651, 27.265730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513168, 31.590134, 27.521200>,  <31.864256, 32.185200, 27.818350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513168, 31.590134, 27.521200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895212, 31.544872, 27.411682>,  <32.124439, 31.517715, 27.345972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895212, 31.544872, 27.411682>,  <31.513168, 31.590134, 27.521200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895212, 31.544872, 27.411682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030362, -0.956706, 0.289469,
		-0.294695, -0.268162, -0.917194,
		0.955109, -0.113153, -0.273795,
		32.181744, 31.510927, 27.329544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590317, 30.842014, 27.312702>,  <31.513168, 31.590134, 27.521200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590317, 30.842014, 27.312702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979982, 30.924572, 27.349377>,  <32.213783, 30.974106, 27.371382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979982, 30.924572, 27.349377>,  <31.590317, 30.842014, 27.312702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979982, 30.924572, 27.349377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133839, -0.854604, 0.501737,
		0.181910, -0.476503, -0.860148,
		0.974164, 0.206392, 0.091687,
		32.272232, 30.986490, 27.376883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047359, 30.178814, 27.149605>,  <31.590317, 30.842014, 27.312702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047359, 30.178814, 27.149605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253586, 30.418312, 27.394779>,  <32.377323, 30.562012, 27.541883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253586, 30.418312, 27.394779>,  <32.047359, 30.178814, 27.149605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253586, 30.418312, 27.394779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113986, -0.756907, 0.643506,
		0.849234, -0.261903, -0.458484,
		0.515566, 0.598748, 0.612938,
		32.408257, 30.597937, 27.578661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523479, 29.788584, 27.416952>,  <32.047359, 30.178814, 27.149605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523479, 29.788584, 27.416952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539631, 30.077259, 27.693367>,  <32.549320, 30.250465, 27.859217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539631, 30.077259, 27.693367>,  <32.523479, 29.788584, 27.416952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539631, 30.077259, 27.693367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155012, -0.687752, 0.709202,
		0.987087, 0.078486, -0.139638,
		0.040374, 0.721690, 0.691038,
		32.551743, 30.293766, 27.900679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156418, 29.664558, 27.899473>,  <32.523479, 29.788584, 27.416952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156418, 29.664558, 27.899473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923065, 29.920265, 28.099873>,  <32.783054, 30.073689, 28.220112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923065, 29.920265, 28.099873>,  <33.156418, 29.664558, 27.899473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923065, 29.920265, 28.099873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152810, -0.519439, 0.840734,
		0.797691, 0.567029, 0.205347,
		-0.583386, 0.639266, 0.500999,
		32.748051, 30.112045, 28.250172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476547, 29.788408, 28.592144>,  <33.156418, 29.664558, 27.899473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476547, 29.788408, 28.592144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081619, 29.848434, 28.612858>,  <32.844662, 29.884449, 28.625286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081619, 29.848434, 28.612858>,  <33.476547, 29.788408, 28.592144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081619, 29.848434, 28.612858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023295, -0.459637, 0.887801,
		0.157030, 0.875337, 0.457304,
		-0.987319, 0.150064, 0.051786,
		32.785423, 29.893454, 28.628393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400948, 29.877386, 29.319670>,  <33.476547, 29.788408, 28.592144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400948, 29.877386, 29.319670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032669, 29.822250, 29.173622>,  <32.811703, 29.789169, 29.085995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032669, 29.822250, 29.173622>,  <33.400948, 29.877386, 29.319670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032669, 29.822250, 29.173622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219381, -0.590955, 0.776302,
		-0.322772, 0.794842, 0.513853,
		-0.920701, -0.137839, -0.365117,
		32.756458, 29.780899, 29.064087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062691, 29.920452, 29.922249>,  <33.400948, 29.877386, 29.319670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062691, 29.920452, 29.922249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811394, 29.762344, 29.654198>,  <32.660614, 29.667479, 29.493366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811394, 29.762344, 29.654198>,  <33.062691, 29.920452, 29.922249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811394, 29.762344, 29.654198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489590, -0.468556, 0.735362,
		-0.604659, 0.790074, 0.100847,
		-0.628243, -0.395270, -0.670129,
		32.622921, 29.643763, 29.453159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413422, 30.062330, 30.114567>,  <33.062691, 29.920452, 29.922249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413422, 30.062330, 30.114567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376282, 29.733101, 29.890450>,  <32.353996, 29.535563, 29.755980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376282, 29.733101, 29.890450>,  <32.413422, 30.062330, 30.114567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376282, 29.733101, 29.890450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458747, -0.464075, 0.757750,
		-0.883702, 0.327391, -0.334493,
		-0.092851, -0.823073, -0.560294,
		32.348427, 29.486179, 29.722361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784290, 29.851774, 30.330896>,  <32.413422, 30.062330, 30.114567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784290, 29.851774, 30.330896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922541, 29.520699, 30.154049>,  <32.005493, 29.322052, 30.047941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922541, 29.520699, 30.154049>,  <31.784290, 29.851774, 30.330896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922541, 29.520699, 30.154049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491988, -0.561043, 0.665716,
		-0.799055, -0.012572, -0.601126,
		0.345627, -0.827691, -0.442119,
		32.026230, 29.272390, 30.021414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232851, 29.303417, 30.428812>,  <31.784290, 29.851774, 30.330896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232851, 29.303417, 30.428812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566429, 29.105827, 30.330406>,  <31.766577, 28.987274, 30.271362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566429, 29.105827, 30.330406>,  <31.232851, 29.303417, 30.428812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566429, 29.105827, 30.330406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332071, -0.805254, 0.491218,
		-0.440752, -0.327956, -0.835573,
		0.833946, -0.493975, -0.246012,
		31.816612, 28.957634, 30.256603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029400, 28.672001, 30.315580>,  <31.232851, 29.303417, 30.428812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029400, 28.672001, 30.315580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417479, 28.629028, 30.402458>,  <31.650326, 28.603245, 30.454584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417479, 28.629028, 30.402458>,  <31.029400, 28.672001, 30.315580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417479, 28.629028, 30.402458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226133, -0.723460, 0.652280,
		0.087054, -0.681956, -0.726194,
		0.970199, -0.107433, 0.217193,
		31.708538, 28.596798, 30.467615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209372, 28.012955, 30.213861>,  <31.029400, 28.672001, 30.315580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209372, 28.012955, 30.213861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486719, 28.140934, 30.472122>,  <31.653128, 28.217722, 30.627079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486719, 28.140934, 30.472122>,  <31.209372, 28.012955, 30.213861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486719, 28.140934, 30.472122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336982, -0.648025, 0.683013,
		0.636930, -0.691155, -0.341505,
		0.693371, 0.319950, 0.645654,
		31.694731, 28.236919, 30.665819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532194, 27.367931, 30.394451>,  <31.209372, 28.012955, 30.213861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532194, 27.367931, 30.394451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601873, 27.649784, 30.669594>,  <31.643681, 27.818895, 30.834681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601873, 27.649784, 30.669594>,  <31.532194, 27.367931, 30.394451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601873, 27.649784, 30.669594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306542, -0.625025, 0.717897,
		0.935782, -0.335912, 0.107122,
		0.174196, 0.704632, 0.687858,
		31.654133, 27.861174, 30.875952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811878, 26.960320, 30.976805>,  <31.532194, 27.367931, 30.394451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811878, 26.960320, 30.976805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715250, 27.314407, 31.135818>,  <31.657274, 27.526859, 31.231226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715250, 27.314407, 31.135818>,  <31.811878, 26.960320, 30.976805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715250, 27.314407, 31.135818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317968, -0.459256, 0.829445,
		0.916810, 0.073965, 0.392413,
		-0.241568, 0.885219, 0.397532,
		31.642780, 27.579973, 31.255077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142765, 26.907412, 31.640120>,  <31.811878, 26.960320, 30.976805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142765, 26.907412, 31.640120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859713, 27.190010, 31.635612>,  <31.689882, 27.359570, 31.632908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859713, 27.190010, 31.635612>,  <32.142765, 26.907412, 31.640120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859713, 27.190010, 31.635612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470400, -0.459134, 0.753605,
		0.527243, 0.538573, 0.657231,
		-0.707628, 0.706495, -0.011270,
		31.647425, 27.401958, 31.632231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003506, 27.217402, 32.356640>,  <32.142765, 26.907412, 31.640120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003506, 27.217402, 32.356640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670694, 27.291965, 32.147652>,  <31.471006, 27.336704, 32.022259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670694, 27.291965, 32.147652>,  <32.003506, 27.217402, 32.356640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670694, 27.291965, 32.147652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527952, -0.555183, 0.642681,
		-0.170266, 0.810570, 0.560344,
		-0.832031, 0.186408, -0.522471,
		31.421085, 27.347887, 31.990910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411089, 27.306011, 32.940388>,  <32.003506, 27.217402, 32.356640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411089, 27.306011, 32.940388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205711, 27.305359, 32.597141>,  <31.082485, 27.304968, 32.391193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205711, 27.305359, 32.597141>,  <31.411089, 27.306011, 32.940388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205711, 27.305359, 32.597141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709425, -0.561810, 0.425542,
		-0.482794, 0.827265, 0.287303,
		-0.513446, -0.001630, -0.858121,
		31.051678, 27.304871, 32.339706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752806, 27.373518, 33.134060>,  <31.411089, 27.306011, 32.940388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752806, 27.373518, 33.134060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740442, 27.206093, 32.770996>,  <30.733025, 27.105637, 32.553158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740442, 27.206093, 32.770996>,  <30.752806, 27.373518, 33.134060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740442, 27.206093, 32.770996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756285, -0.583942, 0.295035,
		-0.653512, 0.695569, -0.298505,
		-0.030908, -0.418564, -0.907661,
		30.731171, 27.080524, 32.498699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105000, 27.397854, 32.779953>,  <30.752806, 27.373518, 33.134060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105000, 27.397854, 32.779953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270864, 27.076965, 32.608139>,  <30.370384, 26.884432, 32.505051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270864, 27.076965, 32.608139>,  <30.105000, 27.397854, 32.779953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270864, 27.076965, 32.608139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681250, -0.586613, 0.437932,
		-0.603286, 0.111024, -0.789759,
		0.414662, -0.802222, -0.429530,
		30.395264, 26.836300, 32.479279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591568, 26.835892, 32.857635>,  <30.105000, 27.397854, 32.779953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591568, 26.835892, 32.857635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898455, 26.615623, 32.726093>,  <30.082586, 26.483463, 32.647167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898455, 26.615623, 32.726093>,  <29.591568, 26.835892, 32.857635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898455, 26.615623, 32.726093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314905, -0.770070, 0.554822,
		-0.558763, -0.322110, -0.764217,
		0.767215, -0.550670, -0.328853,
		30.128618, 26.450422, 32.627438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298300, 26.290230, 32.578144>,  <29.591568, 26.835892, 32.857635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298300, 26.290230, 32.578144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672514, 26.181095, 32.667881>,  <29.897043, 26.115614, 32.721722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672514, 26.181095, 32.667881>,  <29.298300, 26.290230, 32.578144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672514, 26.181095, 32.667881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353184, -0.732417, 0.582088,
		0.005498, -0.623800, -0.781564,
		0.935537, -0.272836, 0.224343,
		29.953175, 26.099245, 32.735184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743353, 25.936880, 32.081894>,  <29.298300, 26.290230, 32.578144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743353, 25.936880, 32.081894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347475, 25.976460, 32.123302>,  <28.109949, 26.000206, 32.148148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347475, 25.976460, 32.123302>,  <28.743353, 25.936880, 32.081894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347475, 25.976460, 32.123302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048209, 0.910915, -0.409768,
		-0.134847, -0.400553, -0.906296,
		-0.989693, 0.098947, 0.103524,
		28.050568, 26.006144, 32.154358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500240, 26.124039, 31.440701>,  <28.743353, 25.936880, 32.081894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500240, 26.124039, 31.440701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208294, 26.238525, 31.689014>,  <28.033125, 26.307217, 31.838003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208294, 26.238525, 31.689014>,  <28.500240, 26.124039, 31.440701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208294, 26.238525, 31.689014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104814, 0.850533, -0.515371,
		-0.675506, -0.441219, -0.590777,
		-0.729867, 0.286215, 0.620786,
		27.989334, 26.324390, 31.875250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932034, 26.343477, 31.086025>,  <28.500240, 26.124039, 31.440701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932034, 26.343477, 31.086025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939636, 26.539268, 31.434750>,  <27.944199, 26.656742, 31.643984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939636, 26.539268, 31.434750>,  <27.932034, 26.343477, 31.086025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939636, 26.539268, 31.434750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001165, 0.871978, -0.489545,
		-0.999819, 0.008289, 0.017143,
		0.019006, 0.489476, 0.871810,
		27.945337, 26.686111, 31.696293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428051, 26.855452, 31.041292>,  <27.932034, 26.343477, 31.086025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428051, 26.855452, 31.041292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645321, 26.981895, 31.352428>,  <27.775682, 27.057762, 31.539110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645321, 26.981895, 31.352428>,  <27.428051, 26.855452, 31.041292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645321, 26.981895, 31.352428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075989, 0.941126, -0.329406,
		-0.836174, 0.119818, 0.535217,
		0.543175, 0.316111, 0.777839,
		27.808273, 27.076729, 31.585781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980627, 27.482323, 31.329575>,  <27.428051, 26.855452, 31.041292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980627, 27.482323, 31.329575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362207, 27.504704, 31.447453>,  <27.591156, 27.518131, 31.518179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362207, 27.504704, 31.447453>,  <26.980627, 27.482323, 31.329575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362207, 27.504704, 31.447453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031804, 0.958045, -0.284849,
		-0.298270, 0.281104, 0.912149,
		0.953952, 0.055951, 0.294696,
		27.648394, 27.521488, 31.535862>
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
