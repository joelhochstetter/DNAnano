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
	right 1.6 * <1, 0, 0>
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<22.732758, 16.544071, -1.781304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.604458, 16.740089, -2.105520>,  <22.527479, 16.857700, -2.300050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.604458, 16.740089, -2.105520>,  <22.732758, 16.544071, -1.781304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.604458, 16.740089, -2.105520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338443, 0.739961, 0.581304,
		0.884634, 0.460774, -0.071488,
		-0.320748, 0.490046, -0.810540,
		22.508234, 16.887104, -2.348682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.066919, 17.187449, -1.828495>,  <22.732758, 16.544071, -1.781304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.066919, 17.187449, -1.828495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.716949, 17.278114, -1.999669>,  <22.506968, 17.332514, -2.102374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.716949, 17.278114, -1.999669>,  <23.066919, 17.187449, -1.828495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.716949, 17.278114, -1.999669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199046, 0.637264, 0.744496,
		0.441460, 0.736557, -0.512441,
		-0.874925, 0.226666, -0.427936,
		22.454472, 17.346113, -2.128050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.967585, 17.949093, -2.025815>,  <23.066919, 17.187449, -1.828495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.967585, 17.949093, -2.025815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.648964, 17.748138, -1.891284>,  <22.457792, 17.627565, -1.810565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.648964, 17.748138, -1.891284>,  <22.967585, 17.949093, -2.025815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.648964, 17.748138, -1.891284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139367, 0.693910, 0.706446,
		-0.588289, 0.515846, -0.622751,
		-0.796551, -0.502385, 0.336328,
		22.409998, 17.597424, -1.790386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.941530, 18.393002, -1.438455>,  <22.967585, 17.949093, -2.025815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.941530, 18.393002, -1.438455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.637978, 18.134003, -1.466290>,  <22.455845, 17.978603, -1.482991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.637978, 18.134003, -1.466290>,  <22.941530, 18.393002, -1.438455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.637978, 18.134003, -1.466290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502395, 0.514106, 0.695194,
		-0.414361, 0.562531, -0.715446,
		-0.758883, -0.647498, -0.069588,
		22.410313, 17.939753, -1.487166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.346289, 18.842794, -1.594897>,  <22.941530, 18.393002, -1.438455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.346289, 18.842794, -1.594897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.309555, 18.510551, -1.375203>,  <22.287516, 18.311205, -1.243387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.309555, 18.510551, -1.375203>,  <22.346289, 18.842794, -1.594897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.309555, 18.510551, -1.375203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479255, 0.520348, 0.706790,
		-0.872858, -0.198318, -0.445857,
		-0.091832, -0.830607, 0.549235,
		22.282005, 18.261370, -1.210432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.665474, 18.526670, -1.571399>,  <22.346289, 18.842794, -1.594897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.665474, 18.526670, -1.571399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.895123, 18.493675, -1.245558>,  <22.032911, 18.473879, -1.050053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.895123, 18.493675, -1.245558>,  <21.665474, 18.526670, -1.571399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.895123, 18.493675, -1.245558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743750, 0.363488, 0.560992,
		-0.342375, -0.927940, 0.147335,
		0.574121, -0.082489, 0.814604,
		22.067360, 18.468929, -1.001176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.330755, 18.141140, -0.999087>,  <21.665474, 18.526670, -1.571399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.330755, 18.141140, -0.999087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.595104, 18.422848, -0.895358>,  <21.753714, 18.591873, -0.833120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.595104, 18.422848, -0.895358>,  <21.330755, 18.141140, -0.999087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.595104, 18.422848, -0.895358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650676, 0.365491, 0.665610,
		0.374012, -0.608595, 0.699805,
		0.660859, 0.704293, 0.259300,
		21.793365, 18.634129, -0.817560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.257147, 18.159101, -0.258320>,  <21.330755, 18.141140, -0.999087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.257147, 18.159101, -0.258320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.411350, 18.515354, -0.354783>,  <21.503872, 18.729107, -0.412660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.411350, 18.515354, -0.354783>,  <21.257147, 18.159101, -0.258320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.411350, 18.515354, -0.354783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669859, 0.449884, 0.590672,
		0.634564, -0.066168, 0.770033,
		0.385509, 0.890632, -0.241157,
		21.527002, 18.782543, -0.427129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.008127, 18.643021, 0.261802>,  <21.257147, 18.159101, -0.258320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.008127, 18.643021, 0.261802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.146641, 18.876358, -0.032082>,  <21.229748, 19.016359, -0.208413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.146641, 18.876358, -0.032082>,  <21.008127, 18.643021, 0.261802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.146641, 18.876358, -0.032082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498515, 0.777861, 0.382643,
		0.794715, 0.233763, 0.560163,
		0.346281, 0.583342, -0.734712,
		21.250526, 19.051361, -0.252495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.386236, 19.146799, 0.476970>,  <21.008127, 18.643021, 0.261802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.386236, 19.146799, 0.476970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.232792, 19.302826, 0.142141>,  <21.140724, 19.396442, -0.058756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.232792, 19.302826, 0.142141>,  <21.386236, 19.146799, 0.476970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.232792, 19.302826, 0.142141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184308, 0.855846, 0.483279,
		0.904916, 0.339670, -0.256421,
		-0.383612, 0.390066, -0.837072,
		21.117708, 19.419846, -0.108981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.691330, 19.891869, 0.203574>,  <21.386236, 19.146799, 0.476970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.691330, 19.891869, 0.203574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304333, 19.833351, 0.121054>,  <21.072134, 19.798241, 0.071542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304333, 19.833351, 0.121054>,  <21.691330, 19.891869, 0.203574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.304333, 19.833351, 0.121054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236163, 0.814464, 0.529977,
		0.090492, 0.561469, -0.822535,
		-0.967491, -0.146293, -0.206301,
		21.014086, 19.789463, 0.059163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262363, 20.400084, -0.137086>,  <21.691330, 19.891869, 0.203574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262363, 20.400084, -0.137086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.108398, 20.197769, 0.171725>,  <21.016020, 20.076382, 0.357011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.108398, 20.197769, 0.171725>,  <21.262363, 20.400084, -0.137086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.108398, 20.197769, 0.171725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054701, 0.822503, 0.566124,
		-0.921331, 0.260138, -0.288923,
		-0.384911, -0.505784, 0.772028,
		20.992926, 20.046034, 0.403333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.634338, 20.676208, 0.135684>,  <21.262363, 20.400084, -0.137086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.634338, 20.676208, 0.135684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.805264, 20.468975, 0.432060>,  <20.907820, 20.344635, 0.609886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.805264, 20.468975, 0.432060>,  <20.634338, 20.676208, 0.135684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.805264, 20.468975, 0.432060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036073, 0.809107, 0.586553,
		-0.903383, -0.277370, 0.327054,
		0.427314, -0.518084, 0.740940,
		20.933458, 20.313549, 0.654342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.354904, 20.941631, 0.740586>,  <20.634338, 20.676208, 0.135684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.354904, 20.941631, 0.740586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.708538, 20.773113, 0.821484>,  <20.920719, 20.672003, 0.870023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.708538, 20.773113, 0.821484>,  <20.354904, 20.941631, 0.740586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.708538, 20.773113, 0.821484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293630, 0.837455, 0.460924,
		-0.363557, -0.348111, 0.864087,
		0.884086, -0.421294, 0.202247,
		20.973764, 20.646725, 0.882158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.507656, 20.827644, 1.423660>,  <20.354904, 20.941631, 0.740586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.507656, 20.827644, 1.423660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.835087, 20.922287, 1.214300>,  <21.031546, 20.979073, 1.088684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.835087, 20.922287, 1.214300>,  <20.507656, 20.827644, 1.423660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.835087, 20.922287, 1.214300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049484, 0.878783, 0.474649,
		0.572258, -0.414438, 0.707645,
		0.818579, 0.236605, -0.523399,
		21.080660, 20.993269, 1.057280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.090494, 20.915785, 1.821902>,  <20.507656, 20.827644, 1.423660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.090494, 20.915785, 1.821902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.142998, 21.163448, 1.512214>,  <21.174500, 21.312046, 1.326401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.142998, 21.163448, 1.512214>,  <21.090494, 20.915785, 1.821902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.142998, 21.163448, 1.512214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003512, 0.781262, 0.624193,
		0.991342, -0.079211, 0.104721,
		0.131257, 0.619157, -0.774220,
		21.182375, 21.349195, 1.279948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.677780, 21.233664, 1.953333>,  <21.090494, 20.915785, 1.821902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.677780, 21.233664, 1.953333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.429661, 21.451305, 1.727350>,  <21.280788, 21.581890, 1.591760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.429661, 21.451305, 1.727350>,  <21.677780, 21.233664, 1.953333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.429661, 21.451305, 1.727350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237718, 0.555990, 0.796470,
		0.747474, 0.628352, -0.215538,
		-0.620301, 0.544103, -0.564959,
		21.243570, 21.614536, 1.557862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.838404, 21.878233, 1.949609>,  <21.677780, 21.233664, 1.953333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.838404, 21.878233, 1.949609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.446602, 21.810474, 1.906025>,  <21.211521, 21.769819, 1.879875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.446602, 21.810474, 1.906025>,  <21.838404, 21.878233, 1.949609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.446602, 21.810474, 1.906025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174368, 0.442419, 0.879694,
		-0.100810, 0.880665, -0.462889,
		-0.979507, -0.169395, -0.108960,
		21.152750, 21.759655, 1.873337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.546295, 22.535629, 2.213729>,  <21.838404, 21.878233, 1.949609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.546295, 22.535629, 2.213729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.286110, 22.231968, 2.223416>,  <21.129999, 22.049772, 2.229228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.286110, 22.231968, 2.223416>,  <21.546295, 22.535629, 2.213729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.286110, 22.231968, 2.223416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197447, 0.199795, 0.959738,
		-0.733426, 0.619492, -0.279851,
		-0.650462, -0.759152, 0.024218,
		21.090971, 22.004223, 2.230681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.895666, 22.696321, 2.615328>,  <21.546295, 22.535629, 2.213729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.895666, 22.696321, 2.615328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.957981, 22.301315, 2.606035>,  <20.995369, 22.064312, 2.600460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.957981, 22.301315, 2.606035>,  <20.895666, 22.696321, 2.615328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.957981, 22.301315, 2.606035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025426, -0.027519, 0.999298,
		-0.987464, -0.155086, -0.029396,
		0.155786, -0.987518, -0.023231,
		21.004717, 22.005060, 2.599066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.313780, 22.298807, 3.009529>,  <20.895666, 22.696321, 2.615328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.313780, 22.298807, 3.009529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.670017, 22.118504, 2.985334>,  <20.883760, 22.010321, 2.970817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.670017, 22.118504, 2.985334>,  <20.313780, 22.298807, 3.009529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.670017, 22.118504, 2.985334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098006, -0.320087, 0.942305,
		-0.444117, -0.833282, -0.329244,
		0.890592, -0.450761, -0.060489,
		20.937195, 21.983276, 2.967187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.123058, 21.712612, 3.158383>,  <20.313780, 22.298807, 3.009529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.123058, 21.712612, 3.158383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.503872, 21.789768, 3.253398>,  <20.732361, 21.836061, 3.310407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.503872, 21.789768, 3.253398>,  <20.123058, 21.712612, 3.158383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.503872, 21.789768, 3.253398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160087, -0.347596, 0.923877,
		0.260774, -0.917589, -0.300044,
		0.952034, 0.192890, 0.237538,
		20.789482, 21.847635, 3.324660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.489124, 21.103289, 3.447307>,  <20.123058, 21.712612, 3.158383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.489124, 21.103289, 3.447307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.646027, 21.437790, 3.600574>,  <20.740168, 21.638491, 3.692535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.646027, 21.437790, 3.600574>,  <20.489124, 21.103289, 3.447307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.646027, 21.437790, 3.600574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148613, -0.353466, 0.923567,
		0.907773, -0.419216, -0.014370,
		0.392254, 0.836253, 0.383168,
		20.763702, 21.688665, 3.715525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.193489, 21.029755, 3.850955>,  <20.489124, 21.103289, 3.447307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.193489, 21.029755, 3.850955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.924866, 21.300789, 3.970880>,  <20.763691, 21.463409, 4.042835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.924866, 21.300789, 3.970880>,  <21.193489, 21.029755, 3.850955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.924866, 21.300789, 3.970880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155437, -0.524462, 0.837126,
		0.724463, 0.515578, 0.457529,
		-0.671560, 0.677583, 0.299813,
		20.723398, 21.504065, 4.060824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.418186, 21.452984, 4.435424>,  <21.193489, 21.029755, 3.850955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.418186, 21.452984, 4.435424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.030533, 21.357262, 4.411723>,  <20.797941, 21.299829, 4.397502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.030533, 21.357262, 4.411723>,  <21.418186, 21.452984, 4.435424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.030533, 21.357262, 4.411723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027525, -0.343879, 0.938610,
		-0.244990, 0.908009, 0.339852,
		-0.969135, -0.239304, -0.059254,
		20.739792, 21.285471, 4.393947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.833687, 21.928282, 4.879806>,  <21.418186, 21.452984, 4.435424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.833687, 21.928282, 4.879806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787197, 21.537609, 4.807599>,  <20.759304, 21.303205, 4.764274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787197, 21.537609, 4.807599>,  <20.833687, 21.928282, 4.879806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.787197, 21.537609, 4.807599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169179, -0.198560, 0.965377,
		-0.978709, 0.081659, 0.188311,
		-0.116222, -0.976681, -0.180518,
		20.752331, 21.244604, 4.753443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.117380, 21.675655, 5.208304>,  <20.833687, 21.928282, 4.879806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.117380, 21.675655, 5.208304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.430775, 21.429585, 5.173182>,  <20.618811, 21.281942, 5.152108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.430775, 21.429585, 5.173182>,  <20.117380, 21.675655, 5.208304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.430775, 21.429585, 5.173182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064757, -0.059704, 0.996113,
		-0.618028, -0.786125, -0.006940,
		0.783484, -0.615177, -0.087806,
		20.665819, 21.245031, 5.146840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.846272, 21.136473, 5.595305>,  <20.117380, 21.675655, 5.208304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.846272, 21.136473, 5.595305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.240284, 21.192543, 5.555167>,  <20.476690, 21.226185, 5.531085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.240284, 21.192543, 5.555167>,  <19.846272, 21.136473, 5.595305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.240284, 21.192543, 5.555167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128782, -0.211397, 0.968879,
		0.114602, -0.967296, -0.226284,
		0.985029, 0.140177, -0.100344,
		20.535793, 21.234596, 5.525064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.296480, 20.474854, 5.748462>,  <19.846272, 21.136473, 5.595305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.296480, 20.474854, 5.748462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.491379, 20.818096, 5.813263>,  <20.608318, 21.024042, 5.852143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.491379, 20.818096, 5.813263>,  <20.296480, 20.474854, 5.748462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.491379, 20.818096, 5.813263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000510, -0.185234, 0.982694,
		0.873264, -0.478897, -0.089817,
		0.487247, 0.858106, 0.162002,
		20.637552, 21.075527, 5.861864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.928036, 20.383932, 6.220029>,  <20.296480, 20.474854, 5.748462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.928036, 20.383932, 6.220029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.764790, 20.748520, 6.240697>,  <20.666842, 20.967272, 6.253098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.764790, 20.748520, 6.240697>,  <20.928036, 20.383932, 6.220029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.764790, 20.748520, 6.240697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072600, -0.088820, 0.993398,
		0.910039, 0.401669, 0.102421,
		-0.408115, 0.911467, 0.051669,
		20.642355, 21.021959, 6.256197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.254065, 20.929996, 6.616209>,  <20.928036, 20.383932, 6.220029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.254065, 20.929996, 6.616209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.857315, 20.979946, 6.606432>,  <20.619267, 21.009916, 6.600565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.857315, 20.979946, 6.606432>,  <21.254065, 20.929996, 6.616209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.857315, 20.979946, 6.606432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022682, 0.015508, 0.999622,
		0.125206, 0.992051, -0.012550,
		-0.991871, 0.124874, -0.024443,
		20.559753, 21.017408, 6.599099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.013580, 21.505077, 7.064692>,  <21.254065, 20.929996, 6.616209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.013580, 21.505077, 7.064692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.708031, 21.246952, 7.061303>,  <20.524702, 21.092077, 7.059269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.708031, 21.246952, 7.061303>,  <21.013580, 21.505077, 7.064692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.708031, 21.246952, 7.061303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054868, -0.078020, 0.995441,
		-0.643030, 0.759926, 0.095004,
		-0.763873, -0.645311, -0.008474,
		20.478868, 21.053358, 7.058761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.417051, 21.729092, 7.437491>,  <21.013580, 21.505077, 7.064692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.417051, 21.729092, 7.437491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.445900, 21.330193, 7.444319>,  <20.463209, 21.090853, 7.448416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.445900, 21.330193, 7.444319>,  <20.417051, 21.729092, 7.437491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.445900, 21.330193, 7.444319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009554, 0.017804, 0.999796,
		-0.997350, -0.071943, 0.010812,
		0.072121, -0.997250, 0.017070,
		20.467537, 21.031017, 7.449440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.893604, 21.345543, 7.828863>,  <20.417051, 21.729092, 7.437491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.893604, 21.345543, 7.828863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.240746, 21.147949, 7.850065>,  <20.449030, 21.029392, 7.862787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.240746, 21.147949, 7.850065>,  <19.893604, 21.345543, 7.828863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.240746, 21.147949, 7.850065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108679, -0.084652, 0.990466,
		-0.484788, -0.865340, -0.127151,
		0.867853, -0.493984, 0.053006,
		20.501102, 20.999754, 7.865967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.840071, 20.671999, 8.117870>,  <19.893604, 21.345543, 7.828863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.840071, 20.671999, 8.117870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.215012, 20.803684, 8.163468>,  <20.439976, 20.882694, 8.190827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.215012, 20.803684, 8.163468>,  <19.840071, 20.671999, 8.117870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.215012, 20.803684, 8.163468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022038, -0.270518, 0.962463,
		0.347692, -0.904676, -0.246315,
		0.937350, 0.329212, 0.113994,
		20.496216, 20.902449, 8.197666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.227655, 20.122326, 8.364208>,  <19.840071, 20.671999, 8.117870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.227655, 20.122326, 8.364208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.364506, 20.476986, 8.488661>,  <20.446617, 20.689781, 8.563333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.364506, 20.476986, 8.488661>,  <20.227655, 20.122326, 8.364208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.364506, 20.476986, 8.488661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040000, -0.317070, 0.947558,
		0.938802, -0.336630, -0.073012,
		0.342127, 0.886649, 0.311131,
		20.467144, 20.742981, 8.582000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.902805, 20.087347, 8.650851>,  <20.227655, 20.122326, 8.364208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.902805, 20.087347, 8.650851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.745644, 20.414600, 8.818795>,  <20.651346, 20.610952, 8.919561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.745644, 20.414600, 8.818795>,  <20.902805, 20.087347, 8.650851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.745644, 20.414600, 8.818795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253474, -0.342536, 0.904665,
		0.883956, 0.461870, -0.072792,
		-0.392903, 0.818135, 0.419859,
		20.627773, 20.660042, 8.944753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.258839, 20.222858, 9.289488>,  <20.902805, 20.087347, 8.650851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.258839, 20.222858, 9.289488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.943401, 20.460064, 9.354549>,  <20.754139, 20.602386, 9.393586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.943401, 20.460064, 9.354549>,  <21.258839, 20.222858, 9.289488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.943401, 20.460064, 9.354549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043342, -0.317461, 0.947280,
		0.613385, 0.739970, 0.276050,
		-0.788594, 0.593012, 0.162654,
		20.706823, 20.637968, 9.403345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.505007, 20.554081, 9.917207>,  <21.258839, 20.222858, 9.289488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.505007, 20.554081, 9.917207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.109062, 20.593315, 9.876122>,  <20.871494, 20.616856, 9.851471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.109062, 20.593315, 9.876122>,  <21.505007, 20.554081, 9.917207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.109062, 20.593315, 9.876122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119457, -0.183855, 0.975668,
		0.076813, 0.978048, 0.193708,
		-0.989864, 0.098084, -0.102713,
		20.812103, 20.622740, 9.845307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.230703, 21.139471, 10.360382>,  <21.505007, 20.554081, 9.917207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.230703, 21.139471, 10.360382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.939087, 20.873531, 10.295291>,  <20.764118, 20.713968, 10.256236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.939087, 20.873531, 10.295291>,  <21.230703, 21.139471, 10.360382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.939087, 20.873531, 10.295291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153916, -0.072417, 0.985427,
		-0.666942, 0.743461, -0.049536,
		-0.729039, -0.664847, -0.162729,
		20.720375, 20.674078, 10.246472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.620255, 21.396116, 10.666917>,  <21.230703, 21.139471, 10.360382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.620255, 21.396116, 10.666917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.567245, 21.001976, 10.623982>,  <20.535440, 20.765491, 10.598222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.567245, 21.001976, 10.623982>,  <20.620255, 21.396116, 10.666917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.567245, 21.001976, 10.623982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190510, -0.080951, 0.978342,
		-0.972699, 0.150103, -0.176992,
		-0.132524, -0.985351, -0.107337,
		20.527489, 20.706371, 10.591782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.026962, 21.250401, 11.194010>,  <20.620255, 21.396116, 10.666917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.026962, 21.250401, 11.194010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.189751, 20.894817, 11.109981>,  <20.287424, 20.681467, 11.059564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.189751, 20.894817, 11.109981>,  <20.026962, 21.250401, 11.194010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.189751, 20.894817, 11.109981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244553, -0.327620, 0.912611,
		-0.880096, -0.320032, -0.350729,
		0.406971, -0.888957, -0.210072,
		20.311842, 20.628130, 11.046959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.554516, 20.715166, 11.426934>,  <20.026962, 21.250401, 11.194010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.554516, 20.715166, 11.426934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.905563, 20.526718, 11.391537>,  <20.116192, 20.413651, 11.370298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.905563, 20.526718, 11.391537>,  <19.554516, 20.715166, 11.426934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.905563, 20.526718, 11.391537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222719, -0.564226, 0.795013,
		-0.424474, -0.678010, -0.600103,
		0.877621, -0.471117, -0.088494,
		20.168850, 20.385384, 11.364988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.537281, 19.932152, 11.506479>,  <19.554516, 20.715166, 11.426934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.537281, 19.932152, 11.506479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.914173, 20.025211, 11.602874>,  <20.140308, 20.081047, 11.660710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.914173, 20.025211, 11.602874>,  <19.537281, 19.932152, 11.506479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.914173, 20.025211, 11.602874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030668, -0.656507, 0.753696,
		0.333554, -0.717547, -0.611447,
		0.942232, 0.232647, 0.240986,
		20.196842, 20.095005, 11.675170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.692579, 19.320927, 11.956768>,  <19.537281, 19.932152, 11.506479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.692579, 19.320927, 11.956768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.990299, 19.582924, 12.008925>,  <20.168930, 19.740122, 12.040220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.990299, 19.582924, 12.008925>,  <19.692579, 19.320927, 11.956768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.990299, 19.582924, 12.008925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286037, -0.489077, 0.824006,
		0.603492, -0.576009, -0.551372,
		0.744298, 0.654994, 0.130394,
		20.213589, 19.779423, 12.048043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.243431, 19.005989, 12.111440>,  <19.692579, 19.320927, 11.956768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.243431, 19.005989, 12.111440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356125, 19.368908, 12.236300>,  <20.423742, 19.586658, 12.311215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356125, 19.368908, 12.236300>,  <20.243431, 19.005989, 12.111440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.356125, 19.368908, 12.236300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404306, -0.407294, 0.818931,
		0.870151, -0.104517, -0.481575,
		0.281735, 0.907297, 0.312151,
		20.440645, 19.641096, 12.329945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.933489, 18.936005, 12.352028>,  <20.243431, 19.005989, 12.111440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.933489, 18.936005, 12.352028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787983, 19.258118, 12.539301>,  <20.700680, 19.451385, 12.651665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787983, 19.258118, 12.539301>,  <20.933489, 18.936005, 12.352028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.787983, 19.258118, 12.539301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391891, -0.323665, 0.861198,
		0.845042, 0.496752, -0.197844,
		-0.363767, 0.805282, 0.468183,
		20.678852, 19.499702, 12.679756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.460165, 19.064693, 12.748159>,  <20.933489, 18.936005, 12.352028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.460165, 19.064693, 12.748159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.161728, 19.275482, 12.910957>,  <20.982666, 19.401957, 13.008636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.161728, 19.275482, 12.910957>,  <21.460165, 19.064693, 12.748159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.161728, 19.275482, 12.910957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402836, -0.129446, 0.906072,
		0.530160, 0.839966, -0.115705,
		-0.746093, 0.526973, 0.406995,
		20.937901, 19.433575, 13.033056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.783777, 19.652256, 13.226043>,  <21.460165, 19.064693, 12.748159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.783777, 19.652256, 13.226043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.403774, 19.561527, 13.311869>,  <21.175772, 19.507090, 13.363364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.403774, 19.561527, 13.311869>,  <21.783777, 19.652256, 13.226043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.403774, 19.561527, 13.311869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265388, -0.224586, 0.937620,
		-0.164486, 0.947688, 0.273554,
		-0.950007, -0.226824, 0.214564,
		21.118773, 19.493481, 13.376238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.638195, 20.001253, 13.917105>,  <21.783777, 19.652256, 13.226043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.638195, 20.001253, 13.917105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.339043, 19.743065, 13.855085>,  <21.159552, 19.588152, 13.817874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.339043, 19.743065, 13.855085>,  <21.638195, 20.001253, 13.917105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.339043, 19.743065, 13.855085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060529, -0.298900, 0.952363,
		-0.661068, 0.702869, 0.262611,
		-0.747881, -0.645473, -0.155049,
		21.114679, 19.549423, 13.808571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.061113, 20.211784, 14.265544>,  <21.638195, 20.001253, 13.917105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.061113, 20.211784, 14.265544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.001434, 19.818459, 14.223907>,  <20.965628, 19.582464, 14.198925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.001434, 19.818459, 14.223907>,  <21.061113, 20.211784, 14.265544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.001434, 19.818459, 14.223907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077819, -0.116620, 0.990123,
		-0.985741, 0.139623, 0.093920,
		-0.149197, -0.983313, -0.104092,
		20.956675, 19.523464, 14.192680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.583263, 19.911987, 14.767829>,  <21.061113, 20.211784, 14.265544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.583263, 19.911987, 14.767829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.766014, 19.573925, 14.656851>,  <20.875664, 19.371088, 14.590264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.766014, 19.573925, 14.656851>,  <20.583263, 19.911987, 14.767829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.766014, 19.573925, 14.656851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048210, -0.334968, 0.940996,
		-0.888224, -0.416541, -0.193783,
		0.456875, -0.845157, -0.277445,
		20.903076, 19.320377, 14.573617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.249220, 19.419807, 15.194901>,  <20.583263, 19.911987, 14.767829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.249220, 19.419807, 15.194901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.606770, 19.296692, 15.064514>,  <20.821299, 19.222822, 14.986281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.606770, 19.296692, 15.064514>,  <20.249220, 19.419807, 15.194901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.606770, 19.296692, 15.064514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265226, -0.223149, 0.938009,
		-0.361450, -0.924916, -0.117833,
		0.893873, -0.307791, -0.325969,
		20.874931, 19.204355, 14.966723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.313786, 18.798876, 15.584021>,  <20.249220, 19.419807, 15.194901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.313786, 18.798876, 15.584021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.667934, 18.903507, 15.430300>,  <20.880424, 18.966286, 15.338067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.667934, 18.903507, 15.430300>,  <20.313786, 18.798876, 15.584021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.667934, 18.903507, 15.430300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451828, -0.289694, 0.843759,
		0.109379, -0.920681, -0.374676,
		0.885374, 0.261579, -0.384303,
		20.933546, 18.981981, 15.315009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.823307, 18.255497, 15.649180>,  <20.313786, 18.798876, 15.584021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.823307, 18.255497, 15.649180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.082737, 18.557362, 15.609510>,  <21.238396, 18.738480, 15.585709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.082737, 18.557362, 15.609510>,  <20.823307, 18.255497, 15.649180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.082737, 18.557362, 15.609510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548468, -0.373020, 0.748358,
		0.527763, -0.539761, -0.655839,
		0.648575, 0.754662, -0.099175,
		21.277309, 18.783760, 15.579758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.574249, 18.044477, 15.549967>,  <20.823307, 18.255497, 15.649180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.574249, 18.044477, 15.549967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.605186, 18.410851, 15.707489>,  <21.623749, 18.630674, 15.802002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.605186, 18.410851, 15.707489>,  <21.574249, 18.044477, 15.549967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.605186, 18.410851, 15.707489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558354, -0.367030, 0.743996,
		0.825990, 0.162338, -0.539803,
		0.077345, 0.915934, 0.393805,
		21.628389, 18.685631, 15.825630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.212486, 18.044361, 15.922277>,  <21.574249, 18.044477, 15.549967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.212486, 18.044361, 15.922277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.012680, 18.364464, 16.054987>,  <21.892796, 18.556524, 16.134613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.012680, 18.364464, 16.054987>,  <22.212486, 18.044361, 15.922277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.012680, 18.364464, 16.054987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490808, -0.054154, 0.869583,
		0.713856, 0.597209, -0.365721,
		-0.499517, 0.800256, 0.331773,
		21.862825, 18.604540, 16.154518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.537109, 18.232407, 16.480736>,  <22.212486, 18.044361, 15.922277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.537109, 18.232407, 16.480736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.246803, 18.496841, 16.556875>,  <22.072620, 18.655502, 16.602560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.246803, 18.496841, 16.556875>,  <22.537109, 18.232407, 16.480736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.246803, 18.496841, 16.556875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416159, 0.201571, 0.886668,
		0.547795, 0.722727, -0.421410,
		-0.725764, 0.661086, 0.190350,
		22.029074, 18.695168, 16.613979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.788195, 18.793730, 16.940195>,  <22.537109, 18.232407, 16.480736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.788195, 18.793730, 16.940195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.391167, 18.778923, 16.986561>,  <22.152950, 18.770039, 17.014380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.391167, 18.778923, 16.986561>,  <22.788195, 18.793730, 16.940195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.391167, 18.778923, 16.986561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113574, 0.060014, 0.991715,
		-0.043665, 0.997511, -0.055364,
		-0.992570, -0.037016, 0.115912,
		22.093395, 18.767818, 17.021334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.699490, 19.434881, 17.409191>,  <22.788195, 18.793730, 16.940195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.699490, 19.434881, 17.409191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.402512, 19.170563, 17.453239>,  <22.224325, 19.011972, 17.479668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.402512, 19.170563, 17.453239>,  <22.699490, 19.434881, 17.409191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.402512, 19.170563, 17.453239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127056, 0.022500, 0.991640,
		-0.657749, 0.750229, 0.067253,
		-0.742444, -0.660796, 0.110120,
		22.179779, 18.972324, 17.486275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.485304, 19.595032, 18.039614>,  <22.699490, 19.434881, 17.409191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.485304, 19.595032, 18.039614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.257370, 19.271938, 17.979136>,  <22.120609, 19.078083, 17.942848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.257370, 19.271938, 17.979136>,  <22.485304, 19.595032, 18.039614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.257370, 19.271938, 17.979136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137431, -0.087725, 0.986619,
		-0.810187, 0.582987, -0.061019,
		-0.569833, -0.807732, -0.151194,
		22.086420, 19.029619, 17.933777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.871071, 19.737091, 18.296406>,  <22.485304, 19.595032, 18.039614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.871071, 19.737091, 18.296406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.925709, 19.340878, 18.301855>,  <21.958492, 19.103149, 18.305124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.925709, 19.340878, 18.301855>,  <21.871071, 19.737091, 18.296406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.925709, 19.340878, 18.301855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289274, -0.026730, 0.956873,
		-0.947451, -0.134644, -0.290187,
		0.136594, -0.990533, 0.013624,
		21.966686, 19.043718, 18.305943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.229652, 19.432520, 18.711113>,  <21.871071, 19.737091, 18.296406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.229652, 19.432520, 18.711113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530132, 19.170155, 18.740715>,  <21.710421, 19.012735, 18.758476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530132, 19.170155, 18.740715>,  <21.229652, 19.432520, 18.711113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530132, 19.170155, 18.740715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109939, -0.013780, 0.993843,
		-0.650857, -0.754709, -0.082462,
		0.751198, -0.655915, 0.074003,
		21.755491, 18.973379, 18.762917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.023790, 19.034824, 19.276165>,  <21.229652, 19.432520, 18.711113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.023790, 19.034824, 19.276165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.412495, 18.948006, 19.239126>,  <21.645718, 18.895914, 19.216904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.412495, 18.948006, 19.239126>,  <21.023790, 19.034824, 19.276165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.412495, 18.948006, 19.239126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116533, 0.100192, 0.988120,
		-0.205192, -0.971005, 0.122656,
		0.971759, -0.217048, -0.092595,
		21.704023, 18.882891, 19.211348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.150673, 18.748135, 19.832203>,  <21.023790, 19.034824, 19.276165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.150673, 18.748135, 19.832203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.516159, 18.853516, 19.708452>,  <21.735451, 18.916744, 19.634201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.516159, 18.853516, 19.708452>,  <21.150673, 18.748135, 19.832203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.516159, 18.853516, 19.708452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246898, 0.244767, 0.937619,
		0.322745, -0.933103, 0.158602,
		0.913716, 0.263453, -0.309379,
		21.790274, 18.932550, 19.615639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.495474, 18.536488, 20.352770>,  <21.150673, 18.748135, 19.832203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.495474, 18.536488, 20.352770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.775990, 18.751591, 20.165575>,  <21.944300, 18.880651, 20.053259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.775990, 18.751591, 20.165575>,  <21.495474, 18.536488, 20.352770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.775990, 18.751591, 20.165575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360553, 0.298760, 0.883598,
		0.614975, -0.788392, 0.015628,
		0.701290, 0.537755, -0.467986,
		21.986376, 18.912918, 20.025179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.126381, 18.338871, 20.652203>,  <21.495474, 18.536488, 20.352770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.126381, 18.338871, 20.652203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.194679, 18.707531, 20.512829>,  <22.235659, 18.928726, 20.429205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.194679, 18.707531, 20.512829>,  <22.126381, 18.338871, 20.652203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.194679, 18.707531, 20.512829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321050, 0.282287, 0.904014,
		0.931543, -0.266222, -0.247697,
		0.170747, 0.921651, -0.348433,
		22.245903, 18.984026, 20.408298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.848333, 18.522627, 20.921486>,  <22.126381, 18.338871, 20.652203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.848333, 18.522627, 20.921486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.679878, 18.866386, 20.805506>,  <22.578806, 19.072643, 20.735918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.679878, 18.866386, 20.805506>,  <22.848333, 18.522627, 20.921486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.679878, 18.866386, 20.805506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287015, 0.429530, 0.856228,
		0.860386, 0.277369, -0.427553,
		-0.421138, 0.859401, -0.289953,
		22.553537, 19.124207, 20.718519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.336758, 19.049597, 21.090076>,  <22.848333, 18.522627, 20.921486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.336758, 19.049597, 21.090076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.968472, 19.204678, 21.072319>,  <22.747499, 19.297726, 21.061665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.968472, 19.204678, 21.072319>,  <23.336758, 19.049597, 21.090076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.968472, 19.204678, 21.072319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158638, 0.475798, 0.865130,
		0.356537, 0.789495, -0.499579,
		-0.920715, 0.387703, -0.044396,
		22.692257, 19.320988, 21.059000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.414452, 19.661205, 21.302954>,  <23.336758, 19.049597, 21.090076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.414452, 19.661205, 21.302954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.018707, 19.623932, 21.347641>,  <22.781261, 19.601568, 21.374454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.018707, 19.623932, 21.347641>,  <23.414452, 19.661205, 21.302954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.018707, 19.623932, 21.347641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054792, 0.472726, 0.879504,
		-0.134767, 0.876269, -0.462591,
		-0.989361, -0.093182, 0.111720,
		22.721899, 19.595978, 21.381157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.069862, 20.310999, 21.465445>,  <23.414452, 19.661205, 21.302954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.069862, 20.310999, 21.465445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.803925, 20.044956, 21.601452>,  <22.644361, 19.885330, 21.683056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.803925, 20.044956, 21.601452>,  <23.069862, 20.310999, 21.465445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.803925, 20.044956, 21.601452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058734, 0.407233, 0.911434,
		-0.744669, 0.625933, -0.231682,
		-0.664845, -0.665109, 0.340017,
		22.604471, 19.845423, 21.703457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.632759, 20.715122, 21.928017>,  <23.069862, 20.310999, 21.465445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.632759, 20.715122, 21.928017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.592369, 20.330559, 22.030388>,  <22.568134, 20.099821, 22.091810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.592369, 20.330559, 22.030388>,  <22.632759, 20.715122, 21.928017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.592369, 20.330559, 22.030388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236679, 0.226643, 0.944784,
		-0.966327, 0.155972, 0.204660,
		-0.100975, -0.961408, 0.255926,
		22.562077, 20.042137, 22.107166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.152443, 20.787149, 22.501331>,  <22.632759, 20.715122, 21.928017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.152443, 20.787149, 22.501331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.335587, 20.432873, 22.532101>,  <22.445473, 20.220306, 22.550562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.335587, 20.432873, 22.532101>,  <22.152443, 20.787149, 22.501331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.335587, 20.432873, 22.532101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178532, 0.176362, 0.967999,
		-0.870914, -0.429474, 0.238873,
		0.457859, -0.885691, 0.076922,
		22.472944, 20.167166, 22.555178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.885572, 20.576370, 23.090984>,  <22.152443, 20.787149, 22.501331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.885572, 20.576370, 23.090984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.214573, 20.355427, 23.036736>,  <22.411974, 20.222860, 23.004187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.214573, 20.355427, 23.036736>,  <21.885572, 20.576370, 23.090984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.214573, 20.355427, 23.036736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113097, -0.074855, 0.990760,
		-0.557407, -0.830239, 0.000902,
		0.822500, -0.552358, -0.135622,
		22.461323, 20.189720, 22.996048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.840254, 19.936197, 23.525736>,  <21.885572, 20.576370, 23.090984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.840254, 19.936197, 23.525736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.225922, 20.009991, 23.449480>,  <22.457323, 20.054266, 23.403727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.225922, 20.009991, 23.449480>,  <21.840254, 19.936197, 23.525736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.225922, 20.009991, 23.449480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177583, 0.085031, 0.980425,
		0.197082, -0.979150, 0.049223,
		0.964170, 0.184483, -0.190639,
		22.515173, 20.065334, 23.392288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.213299, 19.479929, 23.833950>,  <21.840254, 19.936197, 23.525736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.213299, 19.479929, 23.833950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.497189, 19.752880, 23.763918>,  <22.667522, 19.916651, 23.721899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.497189, 19.752880, 23.763918>,  <22.213299, 19.479929, 23.833950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.497189, 19.752880, 23.763918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172680, 0.072432, 0.982311,
		0.682987, -0.727404, -0.066426,
		0.709726, 0.682376, -0.175079,
		22.710106, 19.957592, 23.711395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.862833, 19.187342, 24.082773>,  <22.213299, 19.479929, 23.833950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.862833, 19.187342, 24.082773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.916767, 19.583145, 24.062004>,  <22.949127, 19.820627, 24.049541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.916767, 19.583145, 24.062004>,  <22.862833, 19.187342, 24.082773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.916767, 19.583145, 24.062004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227104, 0.020146, 0.973662,
		0.964491, -0.143077, -0.222004,
		0.134836, 0.989506, -0.051924,
		22.957218, 19.879997, 24.046427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.483049, 19.330889, 24.485470>,  <22.862833, 19.187342, 24.082773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.483049, 19.330889, 24.485470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.255951, 19.659927, 24.472807>,  <23.119692, 19.857349, 24.465210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.255951, 19.659927, 24.472807>,  <23.483049, 19.330889, 24.485470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.255951, 19.659927, 24.472807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186953, 0.166294, 0.968192,
		0.801695, 0.543767, -0.248199,
		-0.567745, 0.822596, -0.031658,
		23.085627, 19.906706, 24.463310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.027100, 19.778864, 24.379433>,  <23.483049, 19.330889, 24.485470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.027100, 19.778864, 24.379433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.127590, 19.896164, 24.748407>,  <24.187885, 19.966545, 24.969791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.127590, 19.896164, 24.748407>,  <24.027100, 19.778864, 24.379433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.127590, 19.896164, 24.748407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568482, 0.816020, -0.104594,
		-0.783398, -0.498111, 0.371716,
		0.251228, 0.293252, 0.922436,
		24.202959, 19.984140, 25.025139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.663164, 20.341467, 24.411747>,  <24.027100, 19.778864, 24.379433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.663164, 20.341467, 24.411747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.802792, 20.318600, 24.785887>,  <23.886568, 20.304880, 25.010370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.802792, 20.318600, 24.785887>,  <23.663164, 20.341467, 24.411747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.802792, 20.318600, 24.785887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584478, 0.766917, 0.264998,
		-0.732485, -0.639196, 0.234296,
		0.349071, -0.057166, 0.935351,
		23.907513, 20.301451, 25.066492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.249580, 20.172430, 25.017893>,  <23.663164, 20.341467, 24.411747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.249580, 20.172430, 25.017893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.507027, 20.444729, 25.157801>,  <23.661495, 20.608109, 25.241745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.507027, 20.444729, 25.157801>,  <23.249580, 20.172430, 25.017893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.507027, 20.444729, 25.157801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763398, 0.603622, 0.229922,
		-0.054610, -0.414996, 0.908183,
		0.643616, 0.680749, 0.349771,
		23.700111, 20.648954, 25.262732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.876556, 20.467215, 25.579487>,  <23.249580, 20.172430, 25.017893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.876556, 20.467215, 25.579487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.183575, 20.707485, 25.489988>,  <23.367785, 20.851648, 25.436289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.183575, 20.707485, 25.489988>,  <22.876556, 20.467215, 25.579487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.183575, 20.707485, 25.489988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582994, 0.799278, 0.145852,
		0.266446, 0.018495, 0.963672,
		0.767545, 0.600677, -0.223747,
		23.413837, 20.887688, 25.422865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.126242, 20.814461, 26.138271>,  <22.876556, 20.467215, 25.579487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.126242, 20.814461, 26.138271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.183422, 21.008007, 25.792915>,  <23.217730, 21.124134, 25.585703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.183422, 21.008007, 25.792915>,  <23.126242, 20.814461, 26.138271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.183422, 21.008007, 25.792915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655645, 0.699779, 0.283618,
		0.741415, 0.525533, 0.417276,
		0.142951, 0.483863, -0.863389,
		23.226307, 21.153166, 25.533899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.336494, 21.485790, 26.364901>,  <23.126242, 20.814461, 26.138271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.336494, 21.485790, 26.364901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.123806, 21.430832, 26.030621>,  <22.996193, 21.397858, 25.830051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.123806, 21.430832, 26.030621>,  <23.336494, 21.485790, 26.364901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.123806, 21.430832, 26.030621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710240, 0.609849, 0.351630,
		0.461340, 0.780517, -0.421852,
		-0.531719, -0.137395, -0.835702,
		22.964291, 21.389614, 25.779909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.152359, 22.131971, 26.156906>,  <23.336494, 21.485790, 26.364901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.152359, 22.131971, 26.156906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.886154, 21.876511, 26.002390>,  <22.726431, 21.723234, 25.909679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.886154, 21.876511, 26.002390>,  <23.152359, 22.131971, 26.156906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.886154, 21.876511, 26.002390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742505, 0.513759, 0.429811,
		-0.076038, 0.572868, -0.816113,
		-0.665510, -0.638650, -0.386293,
		22.686501, 21.684916, 25.886501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.638554, 22.504168, 25.836782>,  <23.152359, 22.131971, 26.156906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.638554, 22.504168, 25.836782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.474781, 22.162075, 25.963871>,  <22.376518, 21.956820, 26.040125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.474781, 22.162075, 25.963871>,  <22.638554, 22.504168, 25.836782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.474781, 22.162075, 25.963871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739701, 0.515027, 0.433115,
		-0.534048, -0.057687, -0.843484,
		-0.409432, -0.855230, 0.317721,
		22.351952, 21.905506, 26.059187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.293331, 22.153658, 25.255970>,  <22.638554, 22.504168, 25.836782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.293331, 22.153658, 25.255970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.611469, 22.166580, 25.013853>,  <22.802353, 22.174334, 24.868582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.611469, 22.166580, 25.013853>,  <22.293331, 22.153658, 25.255970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.611469, 22.166580, 25.013853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565108, 0.400731, -0.721157,
		0.219264, 0.915626, 0.336975,
		0.795346, 0.032303, -0.605294,
		22.850073, 22.176271, 24.832264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.188303, 22.758320, 24.869570>,  <22.293331, 22.153658, 25.255970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.188303, 22.758320, 24.869570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.476063, 22.574696, 24.661060>,  <22.648720, 22.464521, 24.535955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.476063, 22.574696, 24.661060>,  <22.188303, 22.758320, 24.869570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.476063, 22.574696, 24.661060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175690, 0.605804, -0.775973,
		0.672009, 0.649818, 0.355163,
		0.719400, -0.459062, -0.521272,
		22.691883, 22.436977, 24.504679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.595072, 23.238365, 24.769707>,  <22.188303, 22.758320, 24.869570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.595072, 23.238365, 24.769707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.657536, 22.953861, 24.495562>,  <22.695015, 22.783159, 24.331074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.657536, 22.953861, 24.495562>,  <22.595072, 23.238365, 24.769707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.657536, 22.953861, 24.495562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089191, 0.680888, -0.726936,
		0.983697, 0.174647, 0.042890,
		0.156161, -0.711259, -0.685365,
		22.704384, 22.740484, 24.289951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.051826, 23.553482, 24.225403>,  <22.595072, 23.238365, 24.769707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.051826, 23.553482, 24.225403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.879623, 23.248108, 24.032808>,  <22.776302, 23.064882, 23.917252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.879623, 23.248108, 24.032808>,  <23.051826, 23.553482, 24.225403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.879623, 23.248108, 24.032808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112793, 0.574773, -0.810502,
		0.895513, -0.294618, -0.333553,
		-0.430505, -0.763437, -0.481486,
		22.750471, 23.019077, 23.888363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.277462, 23.516275, 23.529129>,  <23.051826, 23.553482, 24.225403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.277462, 23.516275, 23.529129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.948666, 23.290390, 23.499649>,  <22.751389, 23.154860, 23.481962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.948666, 23.290390, 23.499649>,  <23.277462, 23.516275, 23.529129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.948666, 23.290390, 23.499649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188265, 0.391580, -0.900678,
		0.537485, -0.726473, -0.428190,
		-0.821989, -0.564714, -0.073699,
		22.702068, 23.120975, 23.477539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.286535, 23.095053, 22.943089>,  <23.277462, 23.516275, 23.529129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.286535, 23.095053, 22.943089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.898682, 23.123905, 23.036558>,  <22.665970, 23.141216, 23.092640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.898682, 23.123905, 23.036558>,  <23.286535, 23.095053, 22.943089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.898682, 23.123905, 23.036558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191552, 0.369998, -0.909071,
		-0.152031, -0.926228, -0.344946,
		-0.969636, 0.072131, 0.233672,
		22.607790, 23.145544, 23.106659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.950815, 22.801231, 22.282349>,  <23.286535, 23.095053, 22.943089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.950815, 22.801231, 22.282349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.633812, 22.963783, 22.464243>,  <22.443609, 23.061316, 22.573380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.633812, 22.963783, 22.464243>,  <22.950815, 22.801231, 22.282349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.633812, 22.963783, 22.464243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428398, 0.159738, -0.889359,
		-0.434057, -0.899632, 0.047499,
		-0.792508, 0.406381, 0.454736,
		22.396059, 23.085697, 22.600664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.447954, 22.491919, 21.945177>,  <22.950815, 22.801231, 22.282349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.447954, 22.491919, 21.945177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.275219, 22.804134, 22.125963>,  <22.171577, 22.991465, 22.234434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.275219, 22.804134, 22.125963>,  <22.447954, 22.491919, 21.945177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.275219, 22.804134, 22.125963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524386, 0.190436, -0.829912,
		-0.733850, -0.595391, 0.327068,
		-0.431837, 0.780541, 0.451966,
		22.145668, 23.038296, 22.261553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.760822, 22.410250, 21.906750>,  <22.447954, 22.491919, 21.945177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.760822, 22.410250, 21.906750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.819660, 22.803856, 21.946905>,  <21.854963, 23.040020, 21.970999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.819660, 22.803856, 21.946905>,  <21.760822, 22.410250, 21.906750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.819660, 22.803856, 21.946905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601122, 0.169532, -0.780968,
		-0.785504, 0.054529, 0.616450,
		0.147094, 0.984015, 0.100389,
		21.863789, 23.099060, 21.977022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.084747, 22.645584, 22.054354>,  <21.760822, 22.410250, 21.906750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.084747, 22.645584, 22.054354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.318829, 22.934925, 21.907766>,  <21.459276, 23.108530, 21.819815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.318829, 22.934925, 21.907766>,  <21.084747, 22.645584, 22.054354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.318829, 22.934925, 21.907766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644936, 0.141253, -0.751069,
		-0.491525, 0.675874, 0.549179,
		0.585201, 0.723354, -0.366466,
		21.494389, 23.151932, 21.797827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.647413, 22.985941, 21.685015>,  <21.084747, 22.645584, 22.054354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.647413, 22.985941, 21.685015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.993004, 23.151260, 21.569962>,  <21.200357, 23.250452, 21.500931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.993004, 23.151260, 21.569962>,  <20.647413, 22.985941, 21.685015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.993004, 23.151260, 21.569962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345312, 0.070572, -0.935831,
		-0.366477, 0.907858, 0.203689,
		0.863976, 0.413297, -0.287632,
		21.252197, 23.275249, 21.483671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.526693, 23.611002, 21.307814>,  <20.647413, 22.985941, 21.685015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.526693, 23.611002, 21.307814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.867840, 23.444717, 21.181446>,  <21.072527, 23.344946, 21.105625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.867840, 23.444717, 21.181446>,  <20.526693, 23.611002, 21.307814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.867840, 23.444717, 21.181446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347839, -0.001124, -0.937553,
		0.389397, 0.909495, -0.145560,
		0.852864, -0.415712, -0.315921,
		21.123699, 23.320004, 21.086670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.609419, 23.904898, 20.666525>,  <20.526693, 23.611002, 21.307814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.609419, 23.904898, 20.666525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.838463, 23.577259, 20.680372>,  <20.975889, 23.380676, 20.688681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.838463, 23.577259, 20.680372>,  <20.609419, 23.904898, 20.666525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.838463, 23.577259, 20.680372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262691, -0.223311, -0.938683,
		0.776603, 0.528405, -0.343039,
		0.572609, -0.819097, 0.034617,
		21.010246, 23.331530, 20.690758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.892529, 23.813620, 19.985615>,  <20.609419, 23.904898, 20.666525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.892529, 23.813620, 19.985615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.964783, 23.447056, 20.128481>,  <21.008135, 23.227118, 20.214201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.964783, 23.447056, 20.128481>,  <20.892529, 23.813620, 19.985615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.964783, 23.447056, 20.128481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182921, -0.388106, -0.903280,
		0.966390, 0.097832, -0.237736,
		0.180636, -0.916408, 0.357166,
		21.018974, 23.172134, 20.235630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.341757, 23.495775, 19.555723>,  <20.892529, 23.813620, 19.985615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.341757, 23.495775, 19.555723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.173340, 23.188908, 19.749289>,  <21.072289, 23.004787, 19.865427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.173340, 23.188908, 19.749289>,  <21.341757, 23.495775, 19.555723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.173340, 23.188908, 19.749289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151408, -0.466579, -0.871424,
		0.894314, -0.440176, 0.080294,
		-0.421044, -0.767170, 0.483914,
		21.047028, 22.958757, 19.894463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.799635, 22.935425, 19.467150>,  <21.341757, 23.495775, 19.555723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.799635, 22.935425, 19.467150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.425911, 22.813545, 19.541147>,  <21.201677, 22.740417, 19.585546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.425911, 22.813545, 19.541147>,  <21.799635, 22.935425, 19.467150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.425911, 22.813545, 19.541147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063000, -0.369656, -0.927031,
		0.350850, -0.877789, 0.326177,
		-0.934310, -0.304699, 0.184994,
		21.145618, 22.722136, 19.596645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.693455, 22.121819, 19.303816>,  <21.799635, 22.935425, 19.467150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.693455, 22.121819, 19.303816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.347198, 22.320499, 19.278679>,  <21.139444, 22.439709, 19.263597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.347198, 22.320499, 19.278679>,  <21.693455, 22.121819, 19.303816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.347198, 22.320499, 19.278679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155711, -0.386385, -0.909099,
		-0.475833, -0.777170, 0.411814,
		-0.865643, 0.496702, -0.062841,
		21.087505, 22.469511, 19.259827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.492252, 21.682384, 18.756493>,  <21.693455, 22.121819, 19.303816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.492252, 21.682384, 18.756493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.215969, 21.969326, 18.792994>,  <21.050200, 22.141491, 18.814894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.215969, 21.969326, 18.792994>,  <21.492252, 21.682384, 18.756493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.215969, 21.969326, 18.792994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332006, -0.202481, -0.921289,
		-0.642415, -0.666636, 0.378021,
		-0.690706, 0.717355, 0.091251,
		21.008757, 22.184532, 18.820370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.866940, 21.349541, 18.529377>,  <21.492252, 21.682384, 18.756493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.866940, 21.349541, 18.529377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.824673, 21.746136, 18.498938>,  <20.799313, 21.984093, 18.480675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.824673, 21.746136, 18.498938>,  <20.866940, 21.349541, 18.529377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.824673, 21.746136, 18.498938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288588, -0.103807, -0.951809,
		-0.951605, -0.078614, 0.297100,
		-0.105666, 0.991486, -0.076096,
		20.792973, 22.043581, 18.476109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.116274, 21.517185, 18.356730>,  <20.866940, 21.349541, 18.529377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.116274, 21.517185, 18.356730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.357586, 21.817596, 18.249390>,  <20.502373, 21.997843, 18.184986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.357586, 21.817596, 18.249390>,  <20.116274, 21.517185, 18.356730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.357586, 21.817596, 18.249390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296482, -0.101171, -0.949665,
		-0.740373, 0.652474, 0.161632,
		0.603279, 0.751027, -0.268351,
		20.538570, 22.042904, 18.168884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.723997, 21.819504, 17.795630>,  <20.116274, 21.517185, 18.356730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.723997, 21.819504, 17.795630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.100307, 21.941017, 17.735420>,  <20.326094, 22.013926, 17.699295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.100307, 21.941017, 17.735420>,  <19.723997, 21.819504, 17.795630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.100307, 21.941017, 17.735420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170319, 0.039586, -0.984594,
		-0.293145, 0.951918, 0.088982,
		0.940775, 0.303784, -0.150525,
		20.382540, 22.032152, 17.690262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.663599, 22.331308, 17.257713>,  <19.723997, 21.819504, 17.795630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.663599, 22.331308, 17.257713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.059387, 22.274334, 17.247402>,  <20.296860, 22.240149, 17.241217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.059387, 22.274334, 17.247402>,  <19.663599, 22.331308, 17.257713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.059387, 22.274334, 17.247402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005679, 0.216138, -0.976346,
		0.144639, 0.965917, 0.214671,
		0.989468, -0.142437, -0.025777,
		20.356228, 22.231604, 17.239670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.913967, 22.870771, 16.929504>,  <19.663599, 22.331308, 17.257713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.913967, 22.870771, 16.929504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.182926, 22.579346, 16.877235>,  <20.344301, 22.404491, 16.845873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.182926, 22.579346, 16.877235>,  <19.913967, 22.870771, 16.929504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.182926, 22.579346, 16.877235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012894, 0.188043, -0.982076,
		0.740076, 0.658662, 0.135834,
		0.672399, -0.728563, -0.130674,
		20.384645, 22.360777, 16.838034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.396063, 23.097109, 16.431868>,  <19.913967, 22.870771, 16.929504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.396063, 23.097109, 16.431868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.482750, 22.706757, 16.421343>,  <20.534761, 22.472546, 16.415028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.482750, 22.706757, 16.421343>,  <20.396063, 23.097109, 16.431868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482750, 22.706757, 16.421343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170375, 0.064349, -0.983276,
		0.961252, 0.208611, 0.180211,
		0.216718, -0.975880, -0.026313,
		20.547766, 22.413992, 16.413448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.027744, 23.000547, 16.069752>,  <20.396063, 23.097109, 16.431868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.027744, 23.000547, 16.069752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.835705, 22.650108, 16.052034>,  <20.720482, 22.439846, 16.041403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.835705, 22.650108, 16.052034>,  <21.027744, 23.000547, 16.069752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.835705, 22.650108, 16.052034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261294, -0.094620, -0.960611,
		0.837396, -0.472760, 0.274346,
		-0.480097, -0.876097, -0.044294,
		20.691675, 22.387280, 16.038746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.482233, 22.409204, 15.893459>,  <21.027744, 23.000547, 16.069752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.482233, 22.409204, 15.893459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.110825, 22.302387, 15.790279>,  <20.887980, 22.238297, 15.728372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.110825, 22.302387, 15.790279>,  <21.482233, 22.409204, 15.893459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.110825, 22.302387, 15.790279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287246, -0.076485, -0.954798,
		0.235243, -0.960644, 0.147725,
		-0.928521, -0.267043, -0.257949,
		20.832268, 22.222275, 15.712894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.601400, 21.820587, 15.451522>,  <21.482233, 22.409204, 15.893459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.601400, 21.820587, 15.451522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.227425, 21.951782, 15.397387>,  <21.003040, 22.030499, 15.364905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.227425, 21.951782, 15.397387>,  <21.601400, 21.820587, 15.451522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.227425, 21.951782, 15.397387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066465, -0.212786, -0.974836,
		-0.348532, -0.920405, 0.177141,
		-0.934937, 0.327987, -0.135338,
		20.946943, 22.050179, 15.356785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.265606, 21.298662, 14.989755>,  <21.601400, 21.820587, 15.451522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.265606, 21.298662, 14.989755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.072178, 21.647930, 14.965305>,  <20.956121, 21.857491, 14.950636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.072178, 21.647930, 14.965305>,  <21.265606, 21.298662, 14.989755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.072178, 21.647930, 14.965305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062221, -0.035364, -0.997436,
		-0.873092, -0.486132, -0.037228,
		-0.483569, 0.873170, -0.061124,
		20.927107, 21.909882, 14.946968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.930935, 21.265356, 14.313619>,  <21.265606, 21.298662, 14.989755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.930935, 21.265356, 14.313619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.918438, 21.654705, 14.404457>,  <20.910940, 21.888313, 14.458961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.918438, 21.654705, 14.404457>,  <20.930935, 21.265356, 14.313619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.918438, 21.654705, 14.404457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212868, 0.228474, -0.949993,
		-0.976581, 0.018662, -0.214337,
		-0.031242, 0.973371, 0.227096,
		20.909065, 21.946716, 14.472586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.723919, 21.501617, 13.709018>,  <20.930935, 21.265356, 14.313619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.723919, 21.501617, 13.709018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.859455, 21.819241, 13.910873>,  <20.940777, 22.009813, 14.031987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.859455, 21.819241, 13.910873>,  <20.723919, 21.501617, 13.709018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859455, 21.819241, 13.910873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192287, 0.466601, -0.863313,
		-0.920984, 0.389562, 0.005417,
		0.338842, 0.794056, 0.504640,
		20.961107, 22.057457, 14.062265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.264660, 22.066332, 13.608708>,  <20.723919, 21.501617, 13.709018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.264660, 22.066332, 13.608708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.626087, 22.216446, 13.691385>,  <20.842943, 22.306515, 13.740992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.626087, 22.216446, 13.691385>,  <20.264660, 22.066332, 13.608708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.626087, 22.216446, 13.691385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032632, 0.541311, -0.840189,
		-0.427195, 0.752425, 0.501359,
		0.903570, 0.375285, 0.206692,
		20.897158, 22.329031, 13.753393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.116714, 22.831480, 13.610518>,  <20.264660, 22.066332, 13.608708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.116714, 22.831480, 13.610518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506401, 22.761921, 13.553022>,  <20.740213, 22.720186, 13.518525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506401, 22.761921, 13.553022>,  <20.116714, 22.831480, 13.610518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.506401, 22.761921, 13.553022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023062, 0.710517, -0.703302,
		0.224431, 0.681854, 0.696208,
		0.974217, -0.173898, -0.143737,
		20.798666, 22.709751, 13.509901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.395350, 23.511015, 13.542320>,  <20.116714, 22.831480, 13.610518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.395350, 23.511015, 13.542320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.651646, 23.252308, 13.376842>,  <20.805424, 23.097084, 13.277555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.651646, 23.252308, 13.376842>,  <20.395350, 23.511015, 13.542320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.651646, 23.252308, 13.376842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038586, 0.511027, -0.858698,
		0.766788, 0.566165, 0.302479,
		0.640740, -0.646768, -0.413695,
		20.843868, 23.058277, 13.252734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.695000, 23.868853, 12.971542>,  <20.395350, 23.511015, 13.542320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.695000, 23.868853, 12.971542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.817047, 23.498180, 12.883753>,  <20.890276, 23.275778, 12.831079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.817047, 23.498180, 12.883753>,  <20.695000, 23.868853, 12.971542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.817047, 23.498180, 12.883753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089455, 0.257333, -0.962173,
		0.948104, 0.273943, 0.161413,
		0.305118, -0.926680, -0.219473,
		20.908583, 23.220177, 12.817911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.323805, 23.904388, 12.598775>,  <20.695000, 23.868853, 12.971542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.323805, 23.904388, 12.598775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.161980, 23.557129, 12.483781>,  <21.064884, 23.348774, 12.414784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.161980, 23.557129, 12.483781>,  <21.323805, 23.904388, 12.598775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.161980, 23.557129, 12.483781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211221, 0.217158, -0.953010,
		0.889784, -0.446275, 0.095517,
		-0.404562, -0.868148, -0.287486,
		21.040611, 23.296684, 12.397535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.741631, 23.617678, 12.015717>,  <21.323805, 23.904388, 12.598775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.741631, 23.617678, 12.015717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.378819, 23.450695, 11.993724>,  <21.161131, 23.350506, 11.980529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.378819, 23.450695, 11.993724>,  <21.741631, 23.617678, 12.015717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.378819, 23.450695, 11.993724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014223, 0.160878, -0.986872,
		0.420823, -0.894342, -0.151858,
		-0.907031, -0.417458, -0.054981,
		21.106709, 23.325459, 11.977229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.809887, 23.167627, 11.410798>,  <21.741631, 23.617678, 12.015717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.809887, 23.167627, 11.410798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.411697, 23.145336, 11.441580>,  <21.172783, 23.131962, 11.460049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.411697, 23.145336, 11.441580>,  <21.809887, 23.167627, 11.410798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.411697, 23.145336, 11.441580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074363, -0.047165, -0.996115,
		0.059142, -0.997331, 0.042808,
		-0.995476, -0.055729, 0.076954,
		21.113054, 23.128618, 11.464666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.519249, 22.643124, 10.925413>,  <21.809887, 23.167627, 11.410798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.519249, 22.643124, 10.925413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.213161, 22.890034, 10.998528>,  <21.029509, 23.038179, 11.042397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.213161, 22.890034, 10.998528>,  <21.519249, 22.643124, 10.925413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.213161, 22.890034, 10.998528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267093, -0.046072, -0.962569,
		-0.585749, -0.785397, 0.200125,
		-0.765219, 0.617276, 0.182788,
		20.983597, 23.075216, 11.053365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.976748, 22.334829, 10.710973>,  <21.519249, 22.643124, 10.925413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.976748, 22.334829, 10.710973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.849819, 22.713753, 10.728492>,  <20.773663, 22.941107, 10.739003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.849819, 22.713753, 10.728492>,  <20.976748, 22.334829, 10.710973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.849819, 22.713753, 10.728492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507343, -0.130564, -0.851796,
		-0.801194, -0.292511, 0.522040,
		-0.317320, 0.947307, 0.043796,
		20.754623, 22.997944, 10.741631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.274868, 22.329762, 10.445984>,  <20.976748, 22.334829, 10.710973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.274868, 22.329762, 10.445984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.378826, 22.714603, 10.412985>,  <20.441202, 22.945509, 10.393186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.378826, 22.714603, 10.412985>,  <20.274868, 22.329762, 10.445984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.378826, 22.714603, 10.412985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436914, 0.040975, -0.898569,
		-0.861138, 0.269580, 0.431007,
		0.259897, 0.962106, -0.082498,
		20.456795, 23.003235, 10.388235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.672106, 22.996180, 10.287756>,  <20.274868, 22.329762, 10.445984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.672106, 22.996180, 10.287756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.041298, 23.038204, 10.139665>,  <20.262814, 23.063419, 10.050810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.041298, 23.038204, 10.139665>,  <19.672106, 22.996180, 10.287756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.041298, 23.038204, 10.139665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376692, 0.049642, -0.925008,
		-0.078802, 0.993226, 0.085393,
		0.922981, 0.105059, -0.370228,
		20.318192, 23.069721, 10.028596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004921, 22.932535, 10.568759>,  <19.672106, 22.996180, 10.287756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004921, 22.932535, 10.568759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.633690, 23.080944, 10.556039>,  <18.410952, 23.169991, 10.548407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.633690, 23.080944, 10.556039>,  <19.004921, 22.932535, 10.568759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.633690, 23.080944, 10.556039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061224, -0.067796, 0.995819,
		0.367316, 0.926146, 0.085636,
		-0.928079, 0.371023, -0.031800,
		18.355267, 23.192251, 10.546499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.102621, 23.468575, 10.992665>,  <19.004921, 22.932535, 10.568759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.102621, 23.468575, 10.992665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.716064, 23.366879, 11.007913>,  <18.484131, 23.305861, 11.017061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.716064, 23.366879, 11.007913>,  <19.102621, 23.468575, 10.992665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.716064, 23.366879, 11.007913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009188, 0.182338, 0.983193,
		-0.256917, 0.949797, -0.178545,
		-0.966390, -0.254239, 0.038119,
		18.426147, 23.290607, 11.019348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.758331, 23.980753, 11.425168>,  <19.102621, 23.468575, 10.992665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.758331, 23.980753, 11.425168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.545376, 23.642292, 11.415458>,  <18.417603, 23.439217, 11.409632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.545376, 23.642292, 11.415458>,  <18.758331, 23.980753, 11.425168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.545376, 23.642292, 11.415458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193964, 0.094026, 0.976492,
		-0.823977, 0.524584, -0.214181,
		-0.532391, -0.846151, -0.024276,
		18.385658, 23.388447, 11.408175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190422, 24.117916, 11.697165>,  <18.758331, 23.980753, 11.425168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190422, 24.117916, 11.697165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.179188, 23.720905, 11.744665>,  <18.172447, 23.482698, 11.773165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.179188, 23.720905, 11.744665>,  <18.190422, 24.117916, 11.697165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.179188, 23.720905, 11.744665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284004, 0.121824, 0.951052,
		-0.958412, -0.007012, -0.285303,
		-0.028088, -0.992527, 0.118749,
		18.170761, 23.423147, 11.780290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.589130, 24.043386, 12.116305>,  <18.190422, 24.117916, 11.697165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.589130, 24.043386, 12.116305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.786217, 23.700493, 12.176149>,  <17.904469, 23.494757, 12.212055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.786217, 23.700493, 12.176149>,  <17.589130, 24.043386, 12.116305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.786217, 23.700493, 12.176149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276788, 0.008609, 0.960892,
		-0.824996, -0.514858, -0.233030,
		0.492717, -0.857232, 0.149609,
		17.934032, 23.443323, 12.221032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.130863, 23.604177, 12.473804>,  <17.589130, 24.043386, 12.116305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.130863, 23.604177, 12.473804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.482365, 23.427479, 12.546085>,  <17.693266, 23.321461, 12.589455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.482365, 23.427479, 12.546085>,  <17.130863, 23.604177, 12.473804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.482365, 23.427479, 12.546085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255312, -0.115192, 0.959972,
		-0.403248, -0.889714, -0.214008,
		0.878753, -0.441746, 0.180704,
		17.745991, 23.294956, 12.600297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.938547, 23.096258, 12.951847>,  <17.130863, 23.604177, 12.473804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.938547, 23.096258, 12.951847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.332413, 23.151695, 12.994228>,  <17.568733, 23.184958, 13.019657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.332413, 23.151695, 12.994228>,  <16.938547, 23.096258, 12.951847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.332413, 23.151695, 12.994228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093599, -0.092825, 0.991273,
		0.147219, -0.985989, -0.078429,
		0.984666, 0.138594, 0.105954,
		17.627811, 23.193274, 13.026014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.130022, 22.605446, 13.399456>,  <16.938547, 23.096258, 12.951847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.130022, 22.605446, 13.399456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.412800, 22.887119, 13.425859>,  <17.582466, 23.056124, 13.441702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.412800, 22.887119, 13.425859>,  <17.130022, 22.605446, 13.399456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.412800, 22.887119, 13.425859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066320, -0.026918, 0.997435,
		0.704152, -0.709509, 0.027672,
		0.706945, 0.704181, 0.066009,
		17.624884, 23.098373, 13.445662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.491230, 22.470997, 14.002874>,  <17.130022, 22.605446, 13.399456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.491230, 22.470997, 14.002874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.638260, 22.839172, 13.949682>,  <17.726477, 23.060078, 13.917767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.638260, 22.839172, 13.949682>,  <17.491230, 22.470997, 14.002874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.638260, 22.839172, 13.949682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143648, 0.085082, 0.985965,
		0.918834, -0.381517, -0.100945,
		0.367573, 0.920438, -0.132980,
		17.748531, 23.115303, 13.909788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.080967, 22.492203, 14.217650>,  <17.491230, 22.470997, 14.002874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.080967, 22.492203, 14.217650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032871, 22.889168, 14.227940>,  <18.004013, 23.127346, 14.234113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032871, 22.889168, 14.227940>,  <18.080967, 22.492203, 14.217650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032871, 22.889168, 14.227940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001655, -0.026110, 0.999658,
		0.992744, 0.120155, 0.004782,
		-0.120239, 0.992412, 0.025722,
		17.996799, 23.186892, 14.235656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.595406, 22.789177, 14.573795>,  <18.080967, 22.492203, 14.217650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.595406, 22.789177, 14.573795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.306942, 23.063980, 14.609467>,  <18.133863, 23.228863, 14.630870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.306942, 23.063980, 14.609467>,  <18.595406, 22.789177, 14.573795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.306942, 23.063980, 14.609467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127055, 0.004617, 0.991885,
		0.681021, 0.726635, -0.090617,
		-0.721157, 0.687008, 0.089179,
		18.090595, 23.270082, 14.636220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.859579, 23.248653, 15.028290>,  <18.595406, 22.789177, 14.573795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.859579, 23.248653, 15.028290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.466099, 23.310738, 15.064596>,  <18.230011, 23.347988, 15.086380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.466099, 23.310738, 15.064596>,  <18.859579, 23.248653, 15.028290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.466099, 23.310738, 15.064596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126087, 0.235597, 0.963637,
		0.128184, 0.959377, -0.251328,
		-0.983703, 0.155212, 0.090766,
		18.170988, 23.357302, 15.091825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.886063, 23.843470, 15.330935>,  <18.859579, 23.248653, 15.028290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.886063, 23.843470, 15.330935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.518444, 23.695038, 15.384073>,  <18.297873, 23.605978, 15.415956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.518444, 23.695038, 15.384073>,  <18.886063, 23.843470, 15.330935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.518444, 23.695038, 15.384073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016676, 0.300138, 0.953750,
		-0.393791, 0.878758, -0.269653,
		-0.919049, -0.371082, 0.132846,
		18.242729, 23.583714, 15.423927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.506535, 24.403025, 15.790444>,  <18.886063, 23.843470, 15.330935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.506535, 24.403025, 15.790444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305141, 24.058167, 15.813124>,  <18.184305, 23.851252, 15.826732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305141, 24.058167, 15.813124>,  <18.506535, 24.403025, 15.790444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305141, 24.058167, 15.813124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225754, 0.194613, 0.954547,
		-0.833992, 0.467796, -0.292616,
		-0.503481, -0.862144, 0.056699,
		18.154097, 23.799522, 15.830133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.840651, 24.546539, 16.237463>,  <18.506535, 24.403025, 15.790444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.840651, 24.546539, 16.237463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.924625, 24.155457, 16.235680>,  <17.975010, 23.920807, 16.234610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.924625, 24.155457, 16.235680>,  <17.840651, 24.546539, 16.237463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.924625, 24.155457, 16.235680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358652, -0.081250, 0.929929,
		-0.909558, -0.193628, -0.367713,
		0.209937, -0.977704, -0.004456,
		17.987606, 23.862144, 16.234343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.329264, 24.314857, 16.611191>,  <17.840651, 24.546539, 16.237463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.329264, 24.314857, 16.611191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.589760, 24.011421, 16.619413>,  <17.746058, 23.829359, 16.624346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.589760, 24.011421, 16.619413>,  <17.329264, 24.314857, 16.611191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.589760, 24.011421, 16.619413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083026, -0.044300, 0.995562,
		-0.754316, -0.650057, -0.091832,
		0.651240, -0.758593, 0.020555,
		17.785131, 23.783844, 16.625580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.993933, 23.698404, 17.014908>,  <17.329264, 24.314857, 16.611191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.993933, 23.698404, 17.014908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.392899, 23.693932, 17.043314>,  <17.632278, 23.691248, 17.060358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.392899, 23.693932, 17.043314>,  <16.993933, 23.698404, 17.014908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.392899, 23.693932, 17.043314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071878, -0.139190, 0.987654,
		-0.001156, -0.990203, -0.139633,
		0.997413, -0.011179, 0.071013,
		17.692122, 23.690578, 17.064617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.119610, 23.386404, 17.645258>,  <16.993933, 23.698404, 17.014908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.119610, 23.386404, 17.645258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.501060, 23.493752, 17.590744>,  <17.729931, 23.558159, 17.558035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.501060, 23.493752, 17.590744>,  <17.119610, 23.386404, 17.645258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.501060, 23.493752, 17.590744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187524, -0.175560, 0.966444,
		0.235435, -0.947184, -0.217744,
		0.953627, 0.268367, -0.136286,
		17.787149, 23.574261, 17.549858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.465904, 22.879183, 17.870901>,  <17.119610, 23.386404, 17.645258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.465904, 22.879183, 17.870901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.695446, 23.204582, 17.908669>,  <17.833170, 23.399822, 17.931330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.695446, 23.204582, 17.908669>,  <17.465904, 22.879183, 17.870901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.695446, 23.204582, 17.908669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346104, -0.345391, 0.872306,
		0.742230, -0.467896, -0.479758,
		0.573852, 0.813498, 0.094419,
		17.867601, 23.448631, 17.936995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.149544, 22.628267, 17.839926>,  <17.465904, 22.879183, 17.870901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.149544, 22.628267, 17.839926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.170185, 22.973503, 18.040888>,  <18.182570, 23.180645, 18.161465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.170185, 22.973503, 18.040888>,  <18.149544, 22.628267, 17.839926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.170185, 22.973503, 18.040888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394249, -0.479821, 0.783798,
		0.917553, 0.157625, -0.365034,
		0.051605, 0.863091, 0.502405,
		18.185667, 23.232431, 18.191608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.815294, 22.536819, 18.219692>,  <18.149544, 22.628267, 17.839926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.815294, 22.536819, 18.219692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.612827, 22.834724, 18.393648>,  <18.491348, 23.013468, 18.498022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.612827, 22.834724, 18.393648>,  <18.815294, 22.536819, 18.219692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.612827, 22.834724, 18.393648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316447, -0.308703, 0.896975,
		0.802283, 0.591637, -0.079422,
		-0.506166, 0.744760, 0.434889,
		18.460978, 23.058153, 18.524115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.309774, 23.018394, 18.548973>,  <18.815294, 22.536819, 18.219692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.309774, 23.018394, 18.548973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.951294, 23.048374, 18.723881>,  <18.736206, 23.066362, 18.828825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.951294, 23.048374, 18.723881>,  <19.309774, 23.018394, 18.548973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.951294, 23.048374, 18.723881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428472, -0.109361, 0.896912,
		0.115044, 0.991172, 0.065895,
		-0.896201, 0.074950, 0.437271,
		18.682434, 23.070860, 18.855062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.413237, 23.354445, 19.185163>,  <19.309774, 23.018394, 18.548973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.413237, 23.354445, 19.185163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.053646, 23.184505, 19.227776>,  <18.837893, 23.082542, 19.253344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.053646, 23.184505, 19.227776>,  <19.413237, 23.354445, 19.185163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.053646, 23.184505, 19.227776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274294, -0.356446, 0.893146,
		-0.341478, 0.832137, 0.436969,
		-0.898975, -0.424847, 0.106532,
		18.783953, 23.057051, 19.259735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.218449, 23.605671, 19.825390>,  <19.413237, 23.354445, 19.185163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.218449, 23.605671, 19.825390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.953766, 23.310562, 19.771976>,  <18.794956, 23.133497, 19.739929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.953766, 23.310562, 19.771976>,  <19.218449, 23.605671, 19.825390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.953766, 23.310562, 19.771976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139124, -0.295828, 0.945056,
		-0.736740, 0.606775, 0.298394,
		-0.661709, -0.737774, -0.133531,
		18.755253, 23.089230, 19.731916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.832167, 23.617069, 20.448261>,  <19.218449, 23.605671, 19.825390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.832167, 23.617069, 20.448261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.767670, 23.255417, 20.289995>,  <18.728971, 23.038425, 20.195036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.767670, 23.255417, 20.289995>,  <18.832167, 23.617069, 20.448261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.767670, 23.255417, 20.289995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035518, -0.405968, 0.913197,
		-0.986275, 0.133192, 0.097572,
		-0.161242, -0.904129, -0.395665,
		18.719297, 22.984179, 20.171295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.270901, 23.308002, 20.812855>,  <18.832167, 23.617069, 20.448261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.270901, 23.308002, 20.812855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.495407, 23.022358, 20.645510>,  <18.630112, 22.850971, 20.545103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.495407, 23.022358, 20.645510>,  <18.270901, 23.308002, 20.812855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.495407, 23.022358, 20.645510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086846, -0.451884, 0.887839,
		-0.823066, -0.534647, -0.191610,
		0.561266, -0.714110, -0.418362,
		18.663788, 22.808125, 20.520000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.957251, 22.734835, 21.023718>,  <18.270901, 23.308002, 20.812855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.957251, 22.734835, 21.023718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.332245, 22.644650, 20.917669>,  <18.557241, 22.590538, 20.854040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.332245, 22.644650, 20.917669>,  <17.957251, 22.734835, 21.023718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.332245, 22.644650, 20.917669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044288, -0.678307, 0.733442,
		-0.345199, -0.699333, -0.625917,
		0.937484, -0.225462, -0.265123,
		18.613491, 22.577011, 20.838133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.073496, 22.022787, 21.214325>,  <17.957251, 22.734835, 21.023718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.073496, 22.022787, 21.214325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.454865, 22.133163, 21.165583>,  <18.683685, 22.199389, 21.136337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.454865, 22.133163, 21.165583>,  <18.073496, 22.022787, 21.214325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.454865, 22.133163, 21.165583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284255, -0.686701, 0.669060,
		0.100943, -0.672532, -0.733151,
		0.953420, 0.275939, -0.121853,
		18.740891, 22.215944, 21.129026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.444044, 21.367933, 21.069975>,  <18.073496, 22.022787, 21.214325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.444044, 21.367933, 21.069975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711597, 21.629009, 21.212294>,  <18.872129, 21.785656, 21.297686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711597, 21.629009, 21.212294>,  <18.444044, 21.367933, 21.069975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.711597, 21.629009, 21.212294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202340, -0.620412, 0.757725,
		0.715301, -0.434836, -0.547048,
		0.668882, 0.652691, 0.355797,
		18.912262, 21.824816, 21.319033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.050390, 21.018665, 21.124537>,  <18.444044, 21.367933, 21.069975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.050390, 21.018665, 21.124537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.084042, 21.331905, 21.371008>,  <19.104233, 21.519850, 21.518890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.084042, 21.331905, 21.371008>,  <19.050390, 21.018665, 21.124537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.084042, 21.331905, 21.371008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234795, -0.616539, 0.751499,
		0.968397, 0.081453, -0.235736,
		0.084129, 0.783100, 0.616180,
		19.109280, 21.566835, 21.555862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.594009, 20.896170, 21.584270>,  <19.050390, 21.018665, 21.124537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.594009, 20.896170, 21.584270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.399647, 21.192345, 21.770020>,  <19.283030, 21.370050, 21.881470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.399647, 21.192345, 21.770020>,  <19.594009, 20.896170, 21.584270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.399647, 21.192345, 21.770020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225646, -0.407024, 0.885107,
		0.844380, 0.534865, 0.030700,
		-0.485908, 0.740440, 0.464373,
		19.253874, 21.414476, 21.909332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.034966, 21.016092, 22.057684>,  <19.594009, 20.896170, 21.584270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.034966, 21.016092, 22.057684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.693417, 21.172737, 22.194822>,  <19.488487, 21.266724, 22.277105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.693417, 21.172737, 22.194822>,  <20.034966, 21.016092, 22.057684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.693417, 21.172737, 22.194822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133177, -0.472389, 0.871271,
		0.503156, 0.789613, 0.351206,
		-0.853873, 0.391612, 0.342844,
		19.437254, 21.290220, 22.297676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.224373, 21.204298, 22.682035>,  <20.034966, 21.016092, 22.057684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.224373, 21.204298, 22.682035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.825298, 21.216003, 22.706581>,  <19.585854, 21.223026, 22.721308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.825298, 21.216003, 22.706581>,  <20.224373, 21.204298, 22.682035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.825298, 21.216003, 22.706581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043524, -0.418436, 0.907203,
		0.052223, 0.907775, 0.416194,
		-0.997687, 0.029263, 0.061362,
		19.525991, 21.224783, 22.724989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.042048, 21.414309, 23.336594>,  <20.224373, 21.204298, 22.682035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.042048, 21.414309, 23.336594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.712730, 21.218044, 23.222443>,  <19.515141, 21.100285, 23.153952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.712730, 21.218044, 23.222443>,  <20.042048, 21.414309, 23.336594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.712730, 21.218044, 23.222443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052737, -0.434465, 0.899144,
		-0.565161, 0.755309, 0.331816,
		-0.823293, -0.490662, -0.285375,
		19.465742, 21.070847, 23.136829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466763, 21.663185, 23.811422>,  <20.042048, 21.414309, 23.336594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.466763, 21.663185, 23.811422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.333088, 21.328003, 23.638844>,  <19.252884, 21.126894, 23.535295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.333088, 21.328003, 23.638844>,  <19.466763, 21.663185, 23.811422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.333088, 21.328003, 23.638844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233380, -0.369941, 0.899265,
		-0.913156, 0.401212, -0.071933,
		-0.334185, -0.837957, -0.431449,
		19.232832, 21.076616, 23.509409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.828938, 21.541885, 24.247076>,  <19.466763, 21.663185, 23.811422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.828938, 21.541885, 24.247076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.968224, 21.218586, 24.057135>,  <19.051796, 21.024607, 23.943171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.968224, 21.218586, 24.057135>,  <18.828938, 21.541885, 24.247076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.968224, 21.218586, 24.057135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218359, -0.562556, 0.797402,
		-0.911628, -0.173980, -0.372379,
		0.348216, -0.808246, -0.474851,
		19.072689, 20.976112, 23.914679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265215, 21.041851, 24.327229>,  <18.828938, 21.541885, 24.247076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265215, 21.041851, 24.327229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.594742, 20.834072, 24.236456>,  <18.792458, 20.709404, 24.181992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.594742, 20.834072, 24.236456>,  <18.265215, 21.041851, 24.327229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.594742, 20.834072, 24.236456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209897, -0.651416, 0.729109,
		-0.526561, -0.553021, -0.645679,
		0.823819, -0.519446, -0.226933,
		18.841887, 20.678238, 24.168375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143848, 20.263227, 24.368860>,  <18.265215, 21.041851, 24.327229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143848, 20.263227, 24.368860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.535065, 20.325981, 24.423733>,  <18.769794, 20.363634, 24.456656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.535065, 20.325981, 24.423733>,  <18.143848, 20.263227, 24.368860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.535065, 20.325981, 24.423733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034404, -0.770765, 0.636190,
		0.205543, -0.617502, -0.759239,
		0.978043, 0.156886, 0.137181,
		18.828478, 20.373047, 24.464888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.457254, 19.993370, 24.171154>,  <18.143848, 20.263227, 24.368860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.457254, 19.993370, 24.171154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.139263, 19.755852, 24.220819>,  <16.948469, 19.613340, 24.250618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.139263, 19.755852, 24.220819>,  <17.457254, 19.993370, 24.171154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.139263, 19.755852, 24.220819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211290, 0.079165, -0.974212,
		0.568656, -0.800710, -0.188398,
		-0.794976, -0.593798, 0.124164,
		16.900770, 19.577713, 24.258068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.501234, 19.459202, 23.629091>,  <17.457254, 19.993370, 24.171154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.501234, 19.459202, 23.629091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115494, 19.441341, 23.733427>,  <16.884050, 19.430626, 23.796028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115494, 19.441341, 23.733427>,  <17.501234, 19.459202, 23.629091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115494, 19.441341, 23.733427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263051, 0.054060, -0.963266,
		0.028900, -0.997539, -0.063876,
		-0.964349, -0.044641, 0.260842,
		16.826189, 19.427946, 23.811680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.244621, 18.983147, 23.241282>,  <17.501234, 19.459202, 23.629091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.244621, 18.983147, 23.241282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.913780, 19.183067, 23.344120>,  <16.715275, 19.303020, 23.405823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.913780, 19.183067, 23.344120>,  <17.244621, 18.983147, 23.241282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.913780, 19.183067, 23.344120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337948, -0.076735, -0.938031,
		-0.449102, -0.862734, 0.232375,
		-0.827102, 0.499802, 0.257098,
		16.665649, 19.333008, 23.421249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.677172, 18.625809, 23.046490>,  <17.244621, 18.983147, 23.241282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.677172, 18.625809, 23.046490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.563000, 19.009071, 23.037844>,  <16.494497, 19.239029, 23.032656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.563000, 19.009071, 23.037844>,  <16.677172, 18.625809, 23.046490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.563000, 19.009071, 23.037844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306714, -0.112691, -0.945107,
		-0.907996, -0.263132, 0.326045,
		-0.285430, 0.958156, -0.021617,
		16.477371, 19.296518, 23.031359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.208431, 18.594830, 22.547203>,  <16.677172, 18.625809, 23.046490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.208431, 18.594830, 22.547203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.224648, 18.993717, 22.572214>,  <16.234377, 19.233049, 22.587221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.224648, 18.993717, 22.572214>,  <16.208431, 18.594830, 22.547203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224648, 18.993717, 22.572214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318514, 0.072210, -0.945164,
		-0.947051, 0.018401, 0.320555,
		0.040539, 0.997220, 0.062526,
		16.236809, 19.292883, 22.590971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.566961, 18.786446, 22.328648>,  <16.208431, 18.594830, 22.547203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.566961, 18.786446, 22.328648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.813334, 19.100033, 22.297598>,  <15.961158, 19.288185, 22.278969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.813334, 19.100033, 22.297598>,  <15.566961, 18.786446, 22.328648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.813334, 19.100033, 22.297598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220845, 0.077243, -0.972245,
		-0.756211, 0.615980, 0.220711,
		0.615932, 0.783966, -0.077624,
		15.998114, 19.335222, 22.274311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.179171, 19.280363, 21.904837>,  <15.566961, 18.786446, 22.328648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.179171, 19.280363, 21.904837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.566161, 19.380627, 21.891224>,  <15.798356, 19.440784, 21.883057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.566161, 19.380627, 21.891224>,  <15.179171, 19.280363, 21.904837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.566161, 19.380627, 21.891224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113177, 0.308615, -0.944430,
		-0.226228, 0.917566, 0.326946,
		0.967477, 0.250659, -0.034030,
		15.856404, 19.455824, 21.881016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.143160, 19.879087, 21.572683>,  <15.179171, 19.280363, 21.904837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.143160, 19.879087, 21.572683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.508002, 19.716476, 21.551519>,  <15.726908, 19.618910, 21.538820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.508002, 19.716476, 21.551519>,  <15.143160, 19.879087, 21.572683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.508002, 19.716476, 21.551519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121587, 0.391510, -0.912105,
		0.391510, 0.825503, 0.406527,
		0.912105, -0.406527, -0.052910,
		15.781634, 19.594519, 21.535646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415890, 20.378695, 21.289263>,  <15.143160, 19.879087, 21.572683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.415890, 20.378695, 21.289263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.648671, 20.058601, 21.231356>,  <15.788340, 19.866545, 21.196611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.648671, 20.058601, 21.231356>,  <15.415890, 20.378695, 21.289263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.648671, 20.058601, 21.231356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186937, 0.304890, -0.933861,
		0.791445, 0.516400, 0.327025,
		0.581953, -0.800233, -0.144770,
		15.823257, 19.818531, 21.187925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.931973, 20.705257, 20.818071>,  <15.415890, 20.378695, 21.289263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.931973, 20.705257, 20.818071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.979209, 20.308064, 20.815599>,  <16.007549, 20.069748, 20.814117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.979209, 20.308064, 20.815599>,  <15.931973, 20.705257, 20.818071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.979209, 20.308064, 20.815599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094983, 0.017488, -0.995325,
		0.988450, 0.116949, 0.096381,
		0.118088, -0.992984, -0.006178,
		16.014635, 20.010168, 20.813745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.702776, 20.546749, 20.581978>,  <15.931973, 20.705257, 20.818071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.702776, 20.546749, 20.581978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.451050, 20.248131, 20.495604>,  <16.300014, 20.068960, 20.443779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.451050, 20.248131, 20.495604>,  <16.702776, 20.546749, 20.581978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.451050, 20.248131, 20.495604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045971, 0.241609, -0.969284,
		0.775789, -0.619913, -0.117729,
		-0.629316, -0.746547, -0.215935,
		16.262255, 20.024166, 20.430822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.064062, 20.233721, 20.068239>,  <16.702776, 20.546749, 20.581978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.064062, 20.233721, 20.068239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691498, 20.093983, 20.027380>,  <16.467960, 20.010139, 20.002865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691498, 20.093983, 20.027380>,  <17.064062, 20.233721, 20.068239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.691498, 20.093983, 20.027380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073797, 0.093567, -0.992874,
		0.356415, -0.932310, -0.061369,
		-0.931409, -0.349346, -0.102150,
		16.412075, 19.989180, 19.996735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.041718, 19.591852, 19.680952>,  <17.064062, 20.233721, 20.068239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.041718, 19.591852, 19.680952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.675480, 19.749065, 19.646980>,  <16.455738, 19.843393, 19.626596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.675480, 19.749065, 19.646980>,  <17.041718, 19.591852, 19.680952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.675480, 19.749065, 19.646980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071995, -0.047570, -0.996270,
		-0.395610, -0.918292, 0.015258,
		-0.915592, 0.393035, -0.084931,
		16.400803, 19.866976, 19.621500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849943, 19.337475, 19.085340>,  <17.041718, 19.591852, 19.680952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.849943, 19.337475, 19.085340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.581306, 19.622623, 19.166119>,  <16.420124, 19.793713, 19.214586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.581306, 19.622623, 19.166119>,  <16.849943, 19.337475, 19.085340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581306, 19.622623, 19.166119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102953, 0.359700, -0.927371,
		-0.733735, -0.602022, -0.314964,
		-0.671590, 0.712871, 0.201945,
		16.379829, 19.836485, 19.226702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.288639, 19.264910, 18.653366>,  <16.849943, 19.337475, 19.085340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.288639, 19.264910, 18.653366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.307278, 19.646072, 18.773233>,  <16.318460, 19.874769, 18.845154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.307278, 19.646072, 18.773233>,  <16.288639, 19.264910, 18.653366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.307278, 19.646072, 18.773233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059333, 0.296825, -0.953087,
		-0.997150, 0.062190, -0.042708,
		0.046596, 0.952904, 0.299669,
		16.321257, 19.931944, 18.863134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.716534, 19.592731, 18.151901>,  <16.288639, 19.264910, 18.653366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.716534, 19.592731, 18.151901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.935115, 19.899555, 18.286369>,  <16.066263, 20.083649, 18.367050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.935115, 19.899555, 18.286369>,  <15.716534, 19.592731, 18.151901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.935115, 19.899555, 18.286369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028693, 0.418313, -0.907850,
		-0.836998, 0.486451, 0.250598,
		0.546453, 0.767059, 0.336169,
		16.099051, 20.129673, 18.387220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445134, 20.198997, 17.748676>,  <15.716534, 19.592731, 18.151901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445134, 20.198997, 17.748676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.770188, 20.358578, 17.918600>,  <15.965220, 20.454325, 18.020554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.770188, 20.358578, 17.918600>,  <15.445134, 20.198997, 17.748676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.770188, 20.358578, 17.918600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029589, 0.699760, -0.713765,
		-0.582020, 0.592601, 0.556845,
		0.812636, 0.398949, 0.424809,
		16.013979, 20.478262, 18.046043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.365825, 20.964502, 17.825928>,  <15.445134, 20.198997, 17.748676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.365825, 20.964502, 17.825928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.761323, 20.904690, 17.827726>,  <15.998622, 20.868801, 17.828806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.761323, 20.904690, 17.827726>,  <15.365825, 20.964502, 17.825928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.761323, 20.904690, 17.827726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101126, 0.645913, -0.756683,
		0.110243, 0.748623, 0.653766,
		0.988747, -0.149532, 0.004498,
		16.057947, 20.859831, 17.829075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.709085, 21.686321, 17.842695>,  <15.365825, 20.964502, 17.825928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.709085, 21.686321, 17.842695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.985419, 21.426826, 17.715017>,  <16.151220, 21.271130, 17.638411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.985419, 21.426826, 17.715017>,  <15.709085, 21.686321, 17.842695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.985419, 21.426826, 17.715017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160261, 0.567895, -0.807349,
		0.705028, 0.506590, 0.496289,
		0.690834, -0.648739, -0.319195,
		16.192669, 21.232204, 17.619259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.390978, 22.073034, 17.831911>,  <15.709085, 21.686321, 17.842695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.390978, 22.073034, 17.831911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.385124, 21.763184, 17.579010>,  <16.381611, 21.577274, 17.427269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.385124, 21.763184, 17.579010>,  <16.390978, 22.073034, 17.831911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.385124, 21.763184, 17.579010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068516, 0.630056, -0.773521,
		0.997543, -0.054640, 0.043853,
		-0.014636, -0.774625, -0.632252,
		16.380733, 21.530796, 17.389334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.821533, 22.260015, 17.396778>,  <16.390978, 22.073034, 17.831911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.821533, 22.260015, 17.396778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646660, 21.959026, 17.199738>,  <16.541737, 21.778433, 17.081512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646660, 21.959026, 17.199738>,  <16.821533, 22.260015, 17.396778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646660, 21.959026, 17.199738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064206, 0.520206, -0.851624,
		0.897078, -0.403942, -0.179112,
		-0.437182, -0.752473, -0.492601,
		16.515505, 21.733284, 17.051956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.319052, 22.049553, 16.797295>,  <16.821533, 22.260015, 17.396778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.319052, 22.049553, 16.797295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.940445, 21.951012, 16.713949>,  <16.713282, 21.891888, 16.663942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.940445, 21.951012, 16.713949>,  <17.319052, 22.049553, 16.797295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.940445, 21.951012, 16.713949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049358, 0.527624, -0.848043,
		0.318855, -0.812972, -0.487246,
		-0.946518, -0.246353, -0.208362,
		16.656490, 21.877106, 16.651440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.355127, 21.982939, 16.016375>,  <17.319052, 22.049553, 16.797295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.355127, 21.982939, 16.016375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.966469, 21.995171, 16.110157>,  <16.733274, 22.002510, 16.166428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.966469, 21.995171, 16.110157>,  <17.355127, 21.982939, 16.016375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.966469, 21.995171, 16.110157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200989, 0.415463, -0.887127,
		-0.124537, -0.909096, -0.397536,
		-0.971645, 0.030580, 0.234458,
		16.674974, 22.004345, 16.180494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986757, 21.686447, 15.425602>,  <17.355127, 21.982939, 16.016375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986757, 21.686447, 15.425602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.742100, 21.927010, 15.631205>,  <16.595306, 22.071348, 15.754566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.742100, 21.927010, 15.631205>,  <16.986757, 21.686447, 15.425602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742100, 21.927010, 15.631205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243724, 0.474870, -0.845634,
		-0.752657, -0.642501, -0.143873,
		-0.611642, 0.601407, 0.514007,
		16.558607, 22.107431, 15.785407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.549036, 21.894941, 14.934430>,  <16.986757, 21.686447, 15.425602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.549036, 21.894941, 14.934430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.451973, 22.154442, 15.222940>,  <16.393734, 22.310143, 15.396047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.451973, 22.154442, 15.222940>,  <16.549036, 21.894941, 14.934430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.451973, 22.154442, 15.222940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284283, 0.663306, -0.692249,
		-0.927524, -0.373027, 0.023471,
		-0.242659, 0.648750, 0.721277,
		16.379175, 22.349068, 15.439323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.890090, 22.104805, 14.665473>,  <16.549036, 21.894941, 14.934430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.890090, 22.104805, 14.665473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.023479, 22.400482, 14.899529>,  <16.103514, 22.577888, 15.039962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.023479, 22.400482, 14.899529>,  <15.890090, 22.104805, 14.665473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.023479, 22.400482, 14.899529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154075, 0.655052, -0.739708,
		-0.930084, 0.156518, 0.332334,
		0.333474, 0.739194, 0.585138,
		16.123522, 22.622240, 15.075069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.306372, 22.548391, 14.834848>,  <15.890090, 22.104805, 14.665473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.306372, 22.548391, 14.834848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.657731, 22.738071, 14.811016>,  <15.868546, 22.851879, 14.796717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.657731, 22.738071, 14.811016>,  <15.306372, 22.548391, 14.834848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.657731, 22.738071, 14.811016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307104, 0.464511, -0.830612,
		-0.366201, 0.747906, 0.553654,
		0.878399, 0.474201, -0.059580,
		15.921250, 22.880331, 14.793142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.098292, 23.162443, 14.745882>,  <15.306372, 22.548391, 14.834848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.098292, 23.162443, 14.745882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.472924, 23.137611, 14.607916>,  <15.697703, 23.122713, 14.525136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.472924, 23.137611, 14.607916>,  <15.098292, 23.162443, 14.745882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.472924, 23.137611, 14.607916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291520, 0.408250, -0.865071,
		0.194515, 0.910757, 0.364260,
		0.936579, -0.062080, -0.344914,
		15.753898, 23.118988, 14.504441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.126058, 23.773340, 14.411763>,  <15.098292, 23.162443, 14.745882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.126058, 23.773340, 14.411763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.422771, 23.556580, 14.253725>,  <15.600799, 23.426523, 14.158902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.422771, 23.556580, 14.253725>,  <15.126058, 23.773340, 14.411763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.422771, 23.556580, 14.253725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243752, 0.330987, -0.911610,
		0.624775, 0.772522, 0.113431,
		0.741783, -0.541902, -0.395096,
		15.645306, 23.394009, 14.135196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.517217, 24.170490, 13.955733>,  <15.126058, 23.773340, 14.411763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.517217, 24.170490, 13.955733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.575530, 23.788139, 13.853716>,  <15.610518, 23.558729, 13.792505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.575530, 23.788139, 13.853716>,  <15.517217, 24.170490, 13.955733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575530, 23.788139, 13.853716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275500, 0.208376, -0.938445,
		0.950183, 0.207074, -0.232967,
		0.145783, -0.955877, -0.255044,
		15.619265, 23.501377, 13.777203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.812990, 24.221243, 13.273425>,  <15.517217, 24.170490, 13.955733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.812990, 24.221243, 13.273425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.665168, 23.853745, 13.329048>,  <15.576474, 23.633245, 13.362422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.665168, 23.853745, 13.329048>,  <15.812990, 24.221243, 13.273425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.665168, 23.853745, 13.329048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203956, -0.065801, -0.976766,
		0.906549, -0.389331, -0.163067,
		-0.369555, -0.918744, 0.139058,
		15.554301, 23.578121, 13.370766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.947479, 23.903502, 12.683289>,  <15.812990, 24.221243, 13.273425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.947479, 23.903502, 12.683289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.649987, 23.682674, 12.834065>,  <15.471492, 23.550179, 12.924532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.649987, 23.682674, 12.834065>,  <15.947479, 23.903502, 12.683289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.649987, 23.682674, 12.834065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335838, -0.178978, -0.924759,
		0.577996, -0.814363, -0.052295,
		-0.743730, -0.552069, 0.376943,
		15.426868, 23.517054, 12.947148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.084209, 23.197426, 12.457011>,  <15.947479, 23.903502, 12.683289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.084209, 23.197426, 12.457011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.705235, 23.300018, 12.533519>,  <15.477851, 23.361574, 12.579424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.705235, 23.300018, 12.533519>,  <16.084209, 23.197426, 12.457011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.705235, 23.300018, 12.533519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275996, -0.352760, -0.894084,
		-0.161842, -0.899877, 0.405005,
		-0.947435, 0.256481, 0.191270,
		15.421005, 23.376963, 12.590899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.678812, 22.684809, 12.031028>,  <16.084209, 23.197426, 12.457011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.678812, 22.684809, 12.031028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.390178, 22.954494, 12.093950>,  <15.216997, 23.116306, 12.131703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.390178, 22.954494, 12.093950>,  <15.678812, 22.684809, 12.031028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.390178, 22.954494, 12.093950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459223, -0.296078, -0.837527,
		-0.518100, -0.676586, 0.523262,
		-0.721586, 0.674217, 0.157306,
		15.173701, 23.156759, 12.141142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.164303, 22.322964, 12.080680>,  <15.678812, 22.684809, 12.031028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.164303, 22.322964, 12.080680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.018817, 22.685318, 11.993883>,  <14.931525, 22.902731, 11.941805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.018817, 22.685318, 11.993883>,  <15.164303, 22.322964, 12.080680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.018817, 22.685318, 11.993883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416650, -0.366554, -0.831890,
		-0.833135, -0.212162, 0.510758,
		-0.363716, 0.905884, -0.216991,
		14.909702, 22.957083, 11.928785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.331958, 22.342138, 12.019423>,  <15.164303, 22.322964, 12.080680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.331958, 22.342138, 12.019423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.501708, 22.628666, 11.797868>,  <14.603559, 22.800583, 11.664934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.501708, 22.628666, 11.797868>,  <14.331958, 22.342138, 12.019423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.501708, 22.628666, 11.797868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524954, -0.303783, -0.795072,
		-0.737786, 0.628177, 0.247115,
		0.424376, 0.716317, -0.553890,
		14.629021, 22.843561, 11.631701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.762920, 22.683485, 11.623305>,  <14.331958, 22.342138, 12.019423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.762920, 22.683485, 11.623305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.079543, 22.797333, 11.407000>,  <14.269517, 22.865643, 11.277216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.079543, 22.797333, 11.407000>,  <13.762920, 22.683485, 11.623305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.079543, 22.797333, 11.407000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537523, -0.096668, -0.837690,
		-0.290699, 0.953754, 0.076472,
		0.791558, 0.284621, -0.540765,
		14.317011, 22.882719, 11.244770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.563626, 23.104044, 10.992689>,  <13.762920, 22.683485, 11.623305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.563626, 23.104044, 10.992689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.935622, 22.995022, 10.894031>,  <14.158819, 22.929609, 10.834835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.935622, 22.995022, 10.894031>,  <13.563626, 23.104044, 10.992689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.935622, 22.995022, 10.894031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294179, -0.149523, -0.943982,
		0.220408, 0.950451, -0.219235,
		0.929989, -0.272555, -0.246646,
		14.214619, 22.913256, 10.820037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.562382, 23.352160, 10.373013>,  <13.563626, 23.104044, 10.992689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.562382, 23.352160, 10.373013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.851378, 23.078545, 10.413204>,  <14.024776, 22.914375, 10.437319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.851378, 23.078545, 10.413204>,  <13.562382, 23.352160, 10.373013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.851378, 23.078545, 10.413204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298746, -0.439938, -0.846880,
		0.623502, 0.581847, -0.522206,
		0.722493, -0.684039, 0.100478,
		14.068127, 22.873333, 10.443347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.787737, 23.248314, 9.671847>,  <13.562382, 23.352160, 10.373013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.787737, 23.248314, 9.671847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.938342, 22.958599, 9.902895>,  <14.028705, 22.784769, 10.041524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.938342, 22.958599, 9.902895>,  <13.787737, 23.248314, 9.671847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.938342, 22.958599, 9.902895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282710, -0.683592, -0.672887,
		0.882221, 0.090051, -0.462144,
		0.376513, -0.724288, 0.577620,
		14.051296, 22.741312, 10.076181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472493, 22.950506, 9.332338>,  <13.787737, 23.248314, 9.671847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.472493, 22.950506, 9.332338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.219115, 22.736183, 9.555645>,  <14.067088, 22.607590, 9.689629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.219115, 22.736183, 9.555645>,  <14.472493, 22.950506, 9.332338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.219115, 22.736183, 9.555645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198802, -0.584562, -0.786616,
		0.747814, -0.609262, 0.263768,
		-0.633444, -0.535805, 0.558266,
		14.029082, 22.575441, 9.723125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.718951, 22.267010, 9.250541>,  <14.472493, 22.950506, 9.332338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.718951, 22.267010, 9.250541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.331384, 22.290123, 9.346754>,  <14.098843, 22.303991, 9.404482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.331384, 22.290123, 9.346754>,  <14.718951, 22.267010, 9.250541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.331384, 22.290123, 9.346754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238268, -0.479393, -0.844637,
		0.066506, -0.875696, 0.478261,
		-0.968919, 0.057781, 0.240532,
		14.040708, 22.307457, 9.418914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.453447, 21.665152, 8.838676>,  <14.718951, 22.267010, 9.250541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.453447, 21.665152, 8.838676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.156837, 21.933380, 8.829975>,  <13.978870, 22.094316, 8.824755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.156837, 21.933380, 8.829975>,  <14.453447, 21.665152, 8.838676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.156837, 21.933380, 8.829975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229410, -0.283887, -0.931010,
		-0.630484, -0.685377, 0.364346,
		-0.741526, 0.670572, -0.021754,
		13.934379, 22.134552, 8.823449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.819154, 21.352962, 8.608907>,  <14.453447, 21.665152, 8.838676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.819154, 21.352962, 8.608907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.794654, 21.741325, 8.516313>,  <13.779954, 21.974344, 8.460756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.794654, 21.741325, 8.516313>,  <13.819154, 21.352962, 8.608907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.794654, 21.741325, 8.516313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312494, -0.238915, -0.919384,
		-0.947943, 0.016025, 0.318037,
		-0.061251, 0.970908, -0.231485,
		13.776278, 22.032598, 8.446867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.103287, 21.565762, 8.507782>,  <13.819154, 21.352962, 8.608907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.103287, 21.565762, 8.507782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.386685, 21.758457, 8.301497>,  <13.556725, 21.874075, 8.177727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.386685, 21.758457, 8.301497>,  <13.103287, 21.565762, 8.507782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.386685, 21.758457, 8.301497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414338, -0.307603, -0.856566,
		-0.571275, 0.820553, -0.018333,
		0.708497, 0.481739, -0.515712,
		13.599235, 21.902979, 8.146784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.833646, 21.984444, 8.029888>,  <13.103287, 21.565762, 8.507782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.833646, 21.984444, 8.029888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.177562, 21.884800, 7.851581>,  <13.383911, 21.825014, 7.744596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.177562, 21.884800, 7.851581>,  <12.833646, 21.984444, 8.029888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.177562, 21.884800, 7.851581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484851, -0.124278, -0.865722,
		0.160258, 0.960469, -0.227633,
		0.859789, -0.249107, -0.445768,
		13.435498, 21.810068, 7.717850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.744986, 21.427919, 7.497190>,  <12.833646, 21.984444, 8.029888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.744986, 21.427919, 7.497190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.103152, 21.381721, 7.325195>,  <13.318052, 21.354004, 7.221998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.103152, 21.381721, 7.325195>,  <12.744986, 21.427919, 7.497190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.103152, 21.381721, 7.325195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097309, -0.891654, 0.442135,
		-0.434465, -0.437737, -0.787164,
		0.895417, -0.115494, -0.429988,
		13.371778, 21.347073, 7.196199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.808524, 20.866661, 6.954169>,  <12.744986, 21.427919, 7.497190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.808524, 20.866661, 6.954169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.171113, 20.922268, 7.113660>,  <13.388666, 20.955631, 7.209354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.171113, 20.922268, 7.113660>,  <12.808524, 20.866661, 6.954169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.171113, 20.922268, 7.113660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008620, -0.937966, 0.346621,
		0.422180, -0.317639, -0.849041,
		0.906471, 0.139017, 0.398728,
		13.443054, 20.963974, 7.233278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208483, 20.334049, 6.815500>,  <12.808524, 20.866661, 6.954169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.208483, 20.334049, 6.815500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.300971, 20.479507, 7.176454>,  <13.356464, 20.566782, 7.393026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.300971, 20.479507, 7.176454>,  <13.208483, 20.334049, 6.815500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.300971, 20.479507, 7.176454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102863, -0.931458, 0.349006,
		0.967448, 0.012125, -0.252778,
		0.231220, 0.363647, 0.902385,
		13.370337, 20.588602, 7.447169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.920471, 20.293661, 6.994483>,  <13.208483, 20.334049, 6.815500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.920471, 20.293661, 6.994483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.650018, 20.260078, 7.287275>,  <13.487746, 20.239929, 7.462951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.650018, 20.260078, 7.287275>,  <13.920471, 20.293661, 6.994483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.650018, 20.260078, 7.287275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300501, -0.938523, 0.169924,
		0.672714, 0.334852, 0.659796,
		-0.676133, -0.083959, 0.731981,
		13.447178, 20.234890, 7.506869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.366571, 19.915249, 7.407411>,  <13.920471, 20.293661, 6.994483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.366571, 19.915249, 7.407411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.994699, 19.881310, 7.550794>,  <13.771575, 19.860947, 7.636823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.994699, 19.881310, 7.550794>,  <14.366571, 19.915249, 7.407411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.994699, 19.881310, 7.550794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264230, -0.831625, 0.488449,
		0.256657, 0.548817, 0.795567,
		-0.929682, -0.084849, 0.358457,
		13.715794, 19.855854, 7.658330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.423633, 19.224628, 7.742673>,  <14.366571, 19.915249, 7.407411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.423633, 19.224628, 7.742673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.059966, 19.382271, 7.796486>,  <13.841766, 19.476856, 7.828773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.059966, 19.382271, 7.796486>,  <14.423633, 19.224628, 7.742673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.059966, 19.382271, 7.796486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274002, -0.809404, 0.519412,
		0.313593, 0.435370, 0.843868,
		-0.909166, 0.394105, 0.134531,
		13.787216, 19.500502, 7.836845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.357164, 19.502630, 8.408017>,  <14.423633, 19.224628, 7.742673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.357164, 19.502630, 8.408017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.022399, 19.344986, 8.256095>,  <13.821540, 19.250399, 8.164942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.022399, 19.344986, 8.256095>,  <14.357164, 19.502630, 8.408017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.022399, 19.344986, 8.256095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019401, -0.672123, 0.740186,
		-0.546991, 0.626840, 0.554863,
		-0.836914, -0.394110, -0.379806,
		13.771325, 19.226753, 8.142153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.050553, 19.257105, 8.993598>,  <14.357164, 19.502630, 8.408017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.050553, 19.257105, 8.993598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.847804, 19.077023, 8.699552>,  <13.726154, 18.968973, 8.523124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.847804, 19.077023, 8.699552>,  <14.050553, 19.257105, 8.993598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.847804, 19.077023, 8.699552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241815, -0.744281, 0.622552,
		-0.827408, 0.493317, 0.268391,
		-0.506874, -0.450204, -0.735116,
		13.695742, 18.941961, 8.479017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.428858, 18.919519, 9.290146>,  <14.050553, 19.257105, 8.993598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.428858, 18.919519, 9.290146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.549424, 18.726181, 8.961384>,  <13.621764, 18.610178, 8.764127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.549424, 18.726181, 8.961384>,  <13.428858, 18.919519, 9.290146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.549424, 18.726181, 8.961384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027480, -0.866039, 0.499221,
		-0.953097, -0.127887, -0.274320,
		0.301416, -0.483344, -0.821905,
		13.639849, 18.581179, 8.714812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.051625, 18.204382, 9.154457>,  <13.428858, 18.919519, 9.290146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.051625, 18.204382, 9.154457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410867, 18.203026, 8.978548>,  <13.626411, 18.202211, 8.873003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410867, 18.203026, 8.978548>,  <13.051625, 18.204382, 9.154457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.410867, 18.203026, 8.978548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154339, -0.933939, 0.322392,
		-0.411814, -0.357415, -0.838250,
		0.898103, -0.003390, -0.439773,
		13.680298, 18.202009, 8.846616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.026594, 17.599493, 8.854984>,  <13.051625, 18.204382, 9.154457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.026594, 17.599493, 8.854984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.168162, 17.485092, 8.498795>,  <13.253103, 17.416452, 8.285081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.168162, 17.485092, 8.498795>,  <13.026594, 17.599493, 8.854984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.168162, 17.485092, 8.498795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915113, -0.090734, 0.392855,
		-0.193153, -0.953924, 0.229611,
		0.353921, -0.286002, -0.890474,
		13.274339, 17.399292, 8.231652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.647692, 17.224762, 8.235714>,  <13.026594, 17.599493, 8.854984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.647692, 17.224762, 8.235714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.446078, 17.441551, 8.504703>,  <12.325110, 17.571625, 8.666096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.446078, 17.441551, 8.504703>,  <12.647692, 17.224762, 8.235714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.446078, 17.441551, 8.504703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247326, -0.836573, 0.488851,
		0.827514, 0.080078, 0.555704,
		-0.504034, 0.541971, 0.672471,
		12.294868, 17.604143, 8.706444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.693529, 16.922525, 8.784780>,  <12.647692, 17.224762, 8.235714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.693529, 16.922525, 8.784780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.352984, 17.118275, 8.860353>,  <12.148658, 17.235723, 8.905696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.352984, 17.118275, 8.860353>,  <12.693529, 16.922525, 8.784780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.352984, 17.118275, 8.860353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353930, -0.801696, 0.481681,
		0.387188, 0.343217, 0.855738,
		-0.851363, 0.489373, 0.188932,
		12.097575, 17.265087, 8.917032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.789126, 16.338896, 8.265879>,  <12.693529, 16.922525, 8.784780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.789126, 16.338896, 8.265879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.097772, 16.274822, 8.019642>,  <13.282959, 16.236378, 7.871900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.097772, 16.274822, 8.019642>,  <12.789126, 16.338896, 8.265879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.097772, 16.274822, 8.019642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434537, 0.839499, 0.326220,
		0.464532, -0.519213, 0.717376,
		0.771614, -0.160186, -0.615591,
		13.329256, 16.226767, 7.834964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.357649, 16.137892, 8.650617>,  <12.789126, 16.338896, 8.265879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.357649, 16.137892, 8.650617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.449086, 16.333954, 8.314166>,  <13.503948, 16.451591, 8.112296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.449086, 16.333954, 8.314166>,  <13.357649, 16.137892, 8.650617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.449086, 16.333954, 8.314166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441145, 0.718051, 0.538325,
		0.867835, -0.494115, -0.052089,
		0.228592, 0.490156, -0.841126,
		13.517664, 16.481001, 8.061829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.109976, 16.146511, 8.299967>,  <13.357649, 16.137892, 8.650617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.109976, 16.146511, 8.299967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.932220, 16.484081, 8.179762>,  <13.825565, 16.686623, 8.107639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.932220, 16.484081, 8.179762>,  <14.109976, 16.146511, 8.299967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.932220, 16.484081, 8.179762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546447, 0.521185, 0.655563,
		0.709868, 0.127113, -0.692770,
		-0.444392, 0.843924, -0.300512,
		13.798902, 16.737259, 8.089608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.374504, 15.722366, 7.700180>,  <14.109976, 16.146511, 8.299967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.374504, 15.722366, 7.700180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.503610, 16.025208, 7.472981>,  <14.581073, 16.206911, 7.336662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.503610, 16.025208, 7.472981>,  <14.374504, 15.722366, 7.700180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.503610, 16.025208, 7.472981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131963, 0.558256, 0.819107,
		0.937234, -0.339334, 0.080276,
		0.322765, 0.757102, -0.567996,
		14.600439, 16.252338, 7.302583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.156137, 15.910750, 7.814304>,  <14.374504, 15.722366, 7.700180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.156137, 15.910750, 7.814304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.890332, 16.201469, 7.744804>,  <14.730849, 16.375900, 7.703105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.890332, 16.201469, 7.744804>,  <15.156137, 15.910750, 7.814304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.890332, 16.201469, 7.744804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090868, 0.309372, 0.946590,
		0.741733, 0.613231, -0.271624,
		-0.664511, 0.726799, -0.173749,
		14.690979, 16.419510, 7.692680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.165472, 16.270159, 8.377461>,  <15.156137, 15.910750, 7.814304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.165472, 16.270159, 8.377461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.383664, 16.043083, 8.624097>,  <15.514580, 15.906838, 8.772079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.383664, 16.043083, 8.624097>,  <15.165472, 16.270159, 8.377461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.383664, 16.043083, 8.624097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759038, 0.646570, -0.076210,
		-0.355405, 0.509586, 0.783588,
		0.545480, -0.567688, 0.616589,
		15.547308, 15.872777, 8.809073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.330550, 16.677317, 9.050812>,  <15.165472, 16.270159, 8.377461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.330550, 16.677317, 9.050812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.583198, 16.420490, 8.877005>,  <15.734786, 16.266394, 8.772720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.583198, 16.420490, 8.877005>,  <15.330550, 16.677317, 9.050812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.583198, 16.420490, 8.877005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694697, 0.717531, -0.050447,
		0.344170, -0.269996, 0.899249,
		0.631619, -0.642068, -0.434519,
		15.772683, 16.227869, 8.746649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.955769, 16.437508, 9.501859>,  <15.330550, 16.677317, 9.050812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.955769, 16.437508, 9.501859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037590, 16.442646, 9.110351>,  <16.086683, 16.445728, 8.875445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037590, 16.442646, 9.110351>,  <15.955769, 16.437508, 9.501859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037590, 16.442646, 9.110351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380479, 0.920242, 0.091592,
		0.901884, -0.391138, 0.183351,
		0.204552, 0.012844, -0.978771,
		16.098955, 16.446499, 8.816719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564550, 15.963832, 9.580215>,  <15.955769, 16.437508, 9.501859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564550, 15.963832, 9.580215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.890038, 15.931438, 9.810452>,  <17.085329, 15.912003, 9.948593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.890038, 15.931438, 9.810452>,  <16.564550, 15.963832, 9.580215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.890038, 15.931438, 9.810452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034769, -0.981692, -0.187272,
		0.580219, 0.172400, -0.796005,
		0.813718, -0.080982, 0.575591,
		17.134153, 15.907144, 9.983129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047083, 15.714416, 9.199079>,  <16.564550, 15.963832, 9.580215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.047083, 15.714416, 9.199079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157299, 15.617535, 9.571190>,  <17.223429, 15.559406, 9.794456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157299, 15.617535, 9.571190>,  <17.047083, 15.714416, 9.199079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.157299, 15.617535, 9.571190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232781, -0.922125, -0.309028,
		0.932680, 0.301701, -0.197701,
		0.275539, -0.242203, 0.930277,
		17.239962, 15.544873, 9.850273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.554249, 15.249752, 9.115743>,  <17.047083, 15.714416, 9.199079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.554249, 15.249752, 9.115743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.474918, 15.222626, 9.506857>,  <17.427320, 15.206349, 9.741526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.474918, 15.222626, 9.506857>,  <17.554249, 15.249752, 9.115743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.474918, 15.222626, 9.506857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288834, -0.957347, -0.007813,
		0.936611, 0.280869, 0.209457,
		-0.198328, -0.067816, 0.977787,
		17.415421, 15.202281, 9.800193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.079174, 14.845296, 9.451936>,  <17.554249, 15.249752, 9.115743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.079174, 14.845296, 9.451936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.744339, 14.816551, 9.668866>,  <17.543438, 14.799304, 9.799025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.744339, 14.816551, 9.668866>,  <18.079174, 14.845296, 9.451936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.744339, 14.816551, 9.668866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077824, -0.996895, -0.011973,
		0.541502, 0.032183, 0.840083,
		-0.837090, -0.071862, 0.542325,
		17.493212, 14.794992, 9.831564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.751535, 14.842308, 9.880780>,  <18.079174, 14.845296, 9.451936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.751535, 14.842308, 9.880780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.629578, 15.217369, 9.947530>,  <18.556402, 15.442406, 9.987579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.629578, 15.217369, 9.947530>,  <18.751535, 14.842308, 9.880780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.629578, 15.217369, 9.947530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817834, 0.347559, -0.458640,
		-0.488044, -0.003362, -0.872813,
		-0.304895, 0.937652, 0.166874,
		18.538109, 15.498665, 9.997592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.671816, 15.176802, 9.188821>,  <18.751535, 14.842308, 9.880780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.671816, 15.176802, 9.188821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.750664, 15.422077, 9.494800>,  <18.797972, 15.569242, 9.678387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.750664, 15.422077, 9.494800>,  <18.671816, 15.176802, 9.188821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.750664, 15.422077, 9.494800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793593, 0.358331, -0.491741,
		-0.575634, 0.703988, -0.415988,
		0.197119, 0.613188, 0.764948,
		18.809799, 15.606033, 9.724284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.698076, 15.989391, 9.107592>,  <18.671816, 15.176802, 9.188821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.698076, 15.989391, 9.107592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.928596, 15.890347, 9.419122>,  <19.066908, 15.830919, 9.606040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.928596, 15.890347, 9.419122>,  <18.698076, 15.989391, 9.107592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.928596, 15.890347, 9.419122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790505, 0.410658, -0.454380,
		-0.207321, 0.877524, 0.432400,
		0.576298, -0.247612, 0.778825,
		19.101486, 15.816063, 9.652769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.043736, 16.607309, 9.386120>,  <18.698076, 15.989391, 9.107592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.043736, 16.607309, 9.386120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.276768, 16.286484, 9.438717>,  <19.416588, 16.093988, 9.470275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.276768, 16.286484, 9.438717>,  <19.043736, 16.607309, 9.386120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.276768, 16.286484, 9.438717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792248, 0.524263, -0.312235,
		0.181497, 0.286077, 0.940861,
		0.582582, -0.802065, 0.131492,
		19.451542, 16.045864, 9.478165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.770439, 17.492401, 17.895617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.138538, 17.423141, 17.755238>,  <19.359398, 17.381586, 17.671011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.138538, 17.423141, 17.755238>,  <18.770439, 17.492401, 17.895617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.138538, 17.423141, 17.755238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333342, 0.122971, -0.934752,
		0.205008, 0.977188, 0.055446,
		0.920247, -0.173149, -0.350948,
		19.414612, 17.371197, 17.649954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.971596, 18.044123, 17.469772>,  <18.770439, 17.492401, 17.895617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.971596, 18.044123, 17.469772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.199272, 17.729427, 17.374218>,  <19.335878, 17.540611, 17.316885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.199272, 17.729427, 17.374218>,  <18.971596, 18.044123, 17.469772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.199272, 17.729427, 17.374218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215274, 0.137808, -0.966781,
		0.793523, 0.601710, -0.090925,
		0.569191, -0.786737, -0.238886,
		19.370029, 17.493406, 17.302551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511005, 18.280251, 16.916555>,  <18.971596, 18.044123, 17.469772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.511005, 18.280251, 16.916555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.543552, 17.881985, 16.898542>,  <19.563080, 17.643024, 16.887735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.543552, 17.881985, 16.898542>,  <19.511005, 18.280251, 16.916555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.543552, 17.881985, 16.898542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065755, 0.050447, -0.996560,
		0.994513, 0.078125, 0.069575,
		0.081366, -0.995667, -0.045033,
		19.567963, 17.583284, 16.885033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.204351, 18.096037, 16.566269>,  <19.511005, 18.280251, 16.916555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.204351, 18.096037, 16.566269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.930420, 17.806938, 16.529081>,  <19.766060, 17.633478, 16.506769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.930420, 17.806938, 16.529081>,  <20.204351, 18.096037, 16.566269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.930420, 17.806938, 16.529081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112697, 0.021001, -0.993408,
		0.719935, -0.690793, 0.067069,
		-0.684831, -0.722748, -0.092970,
		19.724970, 17.590115, 16.501190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.453085, 17.642805, 16.089098>,  <20.204351, 18.096037, 16.566269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.453085, 17.642805, 16.089098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.058201, 17.579159, 16.085094>,  <19.821270, 17.540972, 16.082691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.058201, 17.579159, 16.085094>,  <20.453085, 17.642805, 16.089098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.058201, 17.579159, 16.085094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019546, 0.183113, -0.982898,
		0.158218, -0.970132, -0.183881,
		-0.987211, -0.159107, -0.010009,
		19.762037, 17.531424, 16.082090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.305624, 17.259398, 15.469621>,  <20.453085, 17.642805, 16.089098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.305624, 17.259398, 15.469621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.946480, 17.388733, 15.589151>,  <19.730993, 17.466333, 15.660870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.946480, 17.388733, 15.589151>,  <20.305624, 17.259398, 15.469621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.946480, 17.388733, 15.589151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244363, 0.198613, -0.949126,
		-0.366238, -0.925206, -0.099315,
		-0.897862, 0.323337, 0.298826,
		19.677120, 17.485733, 15.678799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.849174, 17.131828, 14.845087>,  <20.305624, 17.259398, 15.469621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.849174, 17.131828, 14.845087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.630322, 17.374886, 15.075361>,  <19.499010, 17.520720, 15.213526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.630322, 17.374886, 15.075361>,  <19.849174, 17.131828, 14.845087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.630322, 17.374886, 15.075361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415327, 0.400047, -0.816986,
		-0.726737, -0.686099, 0.033492,
		-0.547135, 0.607644, 0.575684,
		19.466181, 17.557178, 15.248067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.238962, 16.998209, 14.541825>,  <19.849174, 17.131828, 14.845087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.238962, 16.998209, 14.541825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.231991, 17.354626, 14.723259>,  <19.227808, 17.568476, 14.832119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.231991, 17.354626, 14.723259>,  <19.238962, 16.998209, 14.541825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.231991, 17.354626, 14.723259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669469, 0.326551, -0.667215,
		-0.742635, -0.315287, 0.590836,
		-0.017426, 0.891043, 0.453584,
		19.226763, 17.621939, 14.859334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.615173, 17.169594, 14.305134>,  <19.238962, 16.998209, 14.541825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.615173, 17.169594, 14.305134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.777512, 17.500870, 14.459738>,  <18.874914, 17.699635, 14.552501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.777512, 17.500870, 14.459738>,  <18.615173, 17.169594, 14.305134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.777512, 17.500870, 14.459738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561164, 0.559610, -0.609861,
		-0.721376, 0.030613, 0.691866,
		0.405846, 0.828190, 0.386511,
		18.899265, 17.749327, 14.575691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015121, 17.605223, 14.478024>,  <18.615173, 17.169594, 14.305134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.015121, 17.605223, 14.478024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.340538, 17.829212, 14.415316>,  <18.535788, 17.963606, 14.377690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.340538, 17.829212, 14.415316>,  <18.015121, 17.605223, 14.478024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.340538, 17.829212, 14.415316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533346, 0.611111, -0.584881,
		-0.231713, 0.559439, 0.795824,
		0.813542, 0.559974, -0.156773,
		18.584600, 17.997204, 14.368284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759954, 18.375896, 14.478680>,  <18.015121, 17.605223, 14.478024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.759954, 18.375896, 14.478680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.121872, 18.364075, 14.308752>,  <18.339024, 18.356981, 14.206796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.121872, 18.364075, 14.308752>,  <17.759954, 18.375896, 14.478680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.121872, 18.364075, 14.308752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367047, 0.451691, -0.813174,
		0.215921, 0.891685, 0.397840,
		0.904795, -0.029556, -0.424819,
		18.393311, 18.355207, 14.181306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826262, 19.050955, 14.249004>,  <17.759954, 18.375896, 14.478680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.826262, 19.050955, 14.249004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.093231, 18.837872, 14.040863>,  <18.253412, 18.710022, 13.915978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.093231, 18.837872, 14.040863>,  <17.826262, 19.050955, 14.249004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.093231, 18.837872, 14.040863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208383, 0.537244, -0.817279,
		0.714928, 0.653904, 0.247562,
		0.667424, -0.532708, -0.520353,
		18.293459, 18.678059, 13.884757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.351194, 19.454870, 14.057148>,  <17.826262, 19.050955, 14.249004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.351194, 19.454870, 14.057148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.308388, 19.157219, 13.793385>,  <18.282703, 18.978628, 13.635126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.308388, 19.157219, 13.793385>,  <18.351194, 19.454870, 14.057148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.308388, 19.157219, 13.793385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254644, 0.661609, -0.705287,
		0.961095, 0.092438, -0.260290,
		-0.107015, -0.744129, -0.659408,
		18.276283, 18.933981, 13.595562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.591082, 19.735237, 13.421730>,  <18.351194, 19.454870, 14.057148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.591082, 19.735237, 13.421730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.407154, 19.404552, 13.292046>,  <18.296797, 19.206142, 13.214234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.407154, 19.404552, 13.292046>,  <18.591082, 19.735237, 13.421730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.407154, 19.404552, 13.292046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274785, 0.479643, -0.833328,
		0.844429, -0.294091, -0.447717,
		-0.459819, -0.826713, -0.324212,
		18.269209, 19.156538, 13.194782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842857, 19.599844, 12.745936>,  <18.591082, 19.735237, 13.421730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842857, 19.599844, 12.745936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.496140, 19.400387, 12.744046>,  <18.288109, 19.280712, 12.742912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.496140, 19.400387, 12.744046>,  <18.842857, 19.599844, 12.745936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.496140, 19.400387, 12.744046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277579, 0.490348, -0.826141,
		0.414264, -0.714784, -0.563444,
		-0.866796, -0.498641, -0.004724,
		18.236101, 19.250793, 12.742628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.739168, 19.450615, 12.084443>,  <18.842857, 19.599844, 12.745936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.739168, 19.450615, 12.084443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.368149, 19.380936, 12.216689>,  <18.145536, 19.339128, 12.296037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.368149, 19.380936, 12.216689>,  <18.739168, 19.450615, 12.084443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.368149, 19.380936, 12.216689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373680, 0.423211, -0.825382,
		0.003862, -0.889127, -0.457644,
		-0.927550, -0.174200, 0.330614,
		18.089884, 19.328676, 12.315873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.347435, 19.068800, 11.559460>,  <18.739168, 19.450615, 12.084443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.347435, 19.068800, 11.559460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.053284, 19.217403, 11.786158>,  <17.876793, 19.306566, 11.922176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.053284, 19.217403, 11.786158>,  <18.347435, 19.068800, 11.559460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.053284, 19.217403, 11.786158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504267, 0.258692, -0.823889,
		-0.452695, -0.891660, -0.002896,
		-0.735378, 0.371511, 0.566744,
		17.832670, 19.328857, 11.956181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.742712, 18.770849, 11.415521>,  <18.347435, 19.068800, 11.559460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.742712, 18.770849, 11.415521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.644501, 19.139423, 11.535969>,  <17.585575, 19.360567, 11.608237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.644501, 19.139423, 11.535969>,  <17.742712, 18.770849, 11.415521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.644501, 19.139423, 11.535969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564256, 0.116738, -0.817305,
		-0.788246, -0.370579, 0.491264,
		-0.245527, 0.921435, 0.301120,
		17.570843, 19.415854, 11.626305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.126196, 18.877085, 11.091370>,  <17.742712, 18.770849, 11.415521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.126196, 18.877085, 11.091370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.193420, 19.249977, 11.219558>,  <17.233755, 19.473713, 11.296471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.193420, 19.249977, 11.219558>,  <17.126196, 18.877085, 11.091370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.193420, 19.249977, 11.219558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418786, 0.361818, -0.832890,
		-0.892398, 0.005767, 0.451213,
		0.168060, 0.932231, 0.320470,
		17.243839, 19.529646, 11.315699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.521404, 19.246593, 10.874247>,  <17.126196, 18.877085, 11.091370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.521404, 19.246593, 10.874247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.804382, 19.521378, 10.940708>,  <16.974169, 19.686249, 10.980585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.804382, 19.521378, 10.940708>,  <16.521404, 19.246593, 10.874247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.804382, 19.521378, 10.940708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162517, 0.386904, -0.907686,
		-0.687831, 0.615134, 0.385356,
		0.707444, 0.686961, 0.166155,
		17.016615, 19.727467, 10.990555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.269890, 19.823908, 10.506298>,  <16.521404, 19.246593, 10.874247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.269890, 19.823908, 10.506298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.659134, 19.904003, 10.551834>,  <16.892681, 19.952061, 10.579156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.659134, 19.904003, 10.551834>,  <16.269890, 19.823908, 10.506298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659134, 19.904003, 10.551834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012112, 0.449065, -0.893417,
		-0.230019, 0.870773, 0.434565,
		0.973111, 0.200240, 0.113840,
		16.951067, 19.964075, 10.585986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.304590, 20.635221, 10.488281>,  <16.269890, 19.823908, 10.506298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.304590, 20.635221, 10.488281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.663475, 20.473995, 10.416120>,  <16.878807, 20.377260, 10.372823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.663475, 20.473995, 10.416120>,  <16.304590, 20.635221, 10.488281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.663475, 20.473995, 10.416120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050626, 0.499721, -0.864706,
		0.438684, 0.766693, 0.468762,
		0.897214, -0.403065, -0.180405,
		16.932640, 20.353075, 10.361999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.615502, 20.274508, 10.668674>,  <16.304590, 20.635221, 10.488281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.615502, 20.274508, 10.668674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.216678, 20.255928, 10.693047>,  <14.977383, 20.244781, 10.707670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.216678, 20.255928, 10.693047>,  <15.615502, 20.274508, 10.668674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.216678, 20.255928, 10.693047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070730, -0.252329, 0.965053,
		-0.029448, 0.966526, 0.254872,
		-0.997061, -0.046446, 0.060932,
		14.917560, 20.241995, 10.711326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.333220, 20.782278, 11.200575>,  <15.615502, 20.274508, 10.668674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.333220, 20.782278, 11.200575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.041320, 20.513317, 11.151038>,  <14.866179, 20.351940, 11.121316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.041320, 20.513317, 11.151038>,  <15.333220, 20.782278, 11.200575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.041320, 20.513317, 11.151038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030779, -0.213256, 0.976511,
		-0.683020, 0.708798, 0.176320,
		-0.729751, -0.672404, -0.123842,
		14.822394, 20.311596, 11.113886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.794457, 20.873724, 11.824038>,  <15.333220, 20.782278, 11.200575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.794457, 20.873724, 11.824038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.739135, 20.502728, 11.685108>,  <14.705941, 20.280130, 11.601750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.739135, 20.502728, 11.685108>,  <14.794457, 20.873724, 11.824038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.739135, 20.502728, 11.685108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074378, -0.339975, 0.937489,
		-0.987593, 0.155494, -0.021964,
		-0.138307, -0.927490, -0.347322,
		14.697643, 20.224480, 11.580912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.166127, 20.563753, 12.096744>,  <14.794457, 20.873724, 11.824038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.166127, 20.563753, 12.096744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.362973, 20.231991, 11.990981>,  <14.481081, 20.032934, 11.927524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.362973, 20.231991, 11.990981>,  <14.166127, 20.563753, 12.096744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.362973, 20.231991, 11.990981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095573, -0.353370, 0.930589,
		-0.865268, -0.432687, -0.253167,
		0.492115, -0.829404, -0.264406,
		14.510608, 19.983170, 11.911659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.815241, 20.044744, 12.440778>,  <14.166127, 20.563753, 12.096744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.815241, 20.044744, 12.440778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.154222, 19.858707, 12.338393>,  <14.357610, 19.747086, 12.276962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.154222, 19.858707, 12.338393>,  <13.815241, 20.044744, 12.440778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.154222, 19.858707, 12.338393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000511, -0.482866, 0.875694,
		-0.530875, -0.741976, -0.409442,
		0.847450, -0.465093, -0.255962,
		14.408457, 19.719181, 12.261605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.814711, 19.219368, 12.521871>,  <13.815241, 20.044744, 12.440778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.814711, 19.219368, 12.521871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.194985, 19.331947, 12.573996>,  <14.423150, 19.399496, 12.605270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.194985, 19.331947, 12.573996>,  <13.814711, 19.219368, 12.521871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.194985, 19.331947, 12.573996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024066, -0.485831, 0.873722,
		0.309219, -0.827499, -0.468646,
		0.950686, 0.281450, 0.130313,
		14.480191, 19.416382, 12.613090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.084821, 18.566904, 12.686893>,  <13.814711, 19.219368, 12.521871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.084821, 18.566904, 12.686893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.326064, 18.870407, 12.785317>,  <14.470810, 19.052509, 12.844372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.326064, 18.870407, 12.785317>,  <14.084821, 18.566904, 12.686893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.326064, 18.870407, 12.785317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122414, -0.392867, 0.911411,
		0.788209, -0.519560, -0.329824,
		0.603109, 0.758758, 0.246060,
		14.506997, 19.098034, 12.859136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.666514, 18.268353, 12.912948>,  <14.084821, 18.566904, 12.686893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.666514, 18.268353, 12.912948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.673863, 18.634670, 13.073441>,  <14.678273, 18.854460, 13.169736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.673863, 18.634670, 13.073441>,  <14.666514, 18.268353, 12.912948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673863, 18.634670, 13.073441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286752, -0.389268, 0.875354,
		0.957829, 0.098972, -0.269757,
		0.018372, 0.915792, 0.401232,
		14.679375, 18.909409, 13.193810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277235, 18.226948, 13.187810>,  <14.666514, 18.268353, 12.912948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.277235, 18.226948, 13.187810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.114707, 18.547531, 13.363340>,  <15.017190, 18.739882, 13.468658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.114707, 18.547531, 13.363340>,  <15.277235, 18.226948, 13.187810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.114707, 18.547531, 13.363340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446757, -0.244684, 0.860545,
		0.797065, 0.545706, -0.258636,
		-0.406321, 0.801458, 0.438827,
		14.992811, 18.787968, 13.494988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.817707, 18.607491, 13.507440>,  <15.277235, 18.226948, 13.187810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.817707, 18.607491, 13.507440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.475656, 18.704479, 13.690725>,  <15.270425, 18.762672, 13.800697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.475656, 18.704479, 13.690725>,  <15.817707, 18.607491, 13.507440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.475656, 18.704479, 13.690725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426879, -0.172184, 0.887765,
		0.294156, 0.954756, 0.043733,
		-0.855129, 0.242473, 0.458215,
		15.219117, 18.777222, 13.828190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.974756, 18.970121, 14.144195>,  <15.817707, 18.607491, 13.507440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.974756, 18.970121, 14.144195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.587646, 18.876442, 14.181198>,  <15.355379, 18.820234, 14.203401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.587646, 18.876442, 14.181198>,  <15.974756, 18.970121, 14.144195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587646, 18.876442, 14.181198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146919, -0.226807, 0.962794,
		-0.204505, 0.945362, 0.253908,
		-0.967777, -0.234201, 0.092509,
		15.297313, 18.806181, 14.208951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.785941, 19.332685, 14.700512>,  <15.974756, 18.970121, 14.144195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.785941, 19.332685, 14.700512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.522571, 19.035999, 14.649391>,  <15.364548, 18.857988, 14.618718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.522571, 19.035999, 14.649391>,  <15.785941, 19.332685, 14.700512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.522571, 19.035999, 14.649391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131544, -0.280598, 0.950769,
		-0.741060, 0.609200, 0.282322,
		-0.658427, -0.741714, -0.127802,
		15.325043, 18.813484, 14.611051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367796, 19.311501, 15.253725>,  <15.785941, 19.332685, 14.700512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.367796, 19.311501, 15.253725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.327525, 18.944641, 15.099478>,  <15.303363, 18.724525, 15.006929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.327525, 18.944641, 15.099478>,  <15.367796, 19.311501, 15.253725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.327525, 18.944641, 15.099478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102452, -0.395084, 0.912914,
		-0.989630, 0.052402, 0.133740,
		-0.100677, -0.917149, -0.385618,
		15.297322, 18.669497, 14.983792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.291595, 19.035646, 15.814109>,  <15.367796, 19.311501, 15.253725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.291595, 19.035646, 15.814109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.305900, 18.734749, 15.550943>,  <15.314482, 18.554211, 15.393044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.305900, 18.734749, 15.550943>,  <15.291595, 19.035646, 15.814109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.305900, 18.734749, 15.550943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262830, -0.628080, 0.732418,
		-0.964179, -0.199111, 0.175252,
		0.035760, -0.752244, -0.657914,
		15.316628, 18.509075, 15.353569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.777556, 18.612122, 16.070042>,  <15.291595, 19.035646, 15.814109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.777556, 18.612122, 16.070042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.054423, 18.401398, 15.872709>,  <15.220543, 18.274963, 15.754310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.054423, 18.401398, 15.872709>,  <14.777556, 18.612122, 16.070042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.054423, 18.401398, 15.872709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134090, -0.577766, 0.805112,
		-0.709173, -0.623422, -0.329270,
		0.692165, -0.526812, -0.493331,
		15.262074, 18.243355, 15.724710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.759222, 17.960186, 16.300039>,  <14.777556, 18.612122, 16.070042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.759222, 17.960186, 16.300039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.116097, 17.964649, 16.119429>,  <15.330223, 17.967327, 16.011063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.116097, 17.964649, 16.119429>,  <14.759222, 17.960186, 16.300039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.116097, 17.964649, 16.119429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410274, -0.438072, 0.799855,
		-0.188875, -0.898871, -0.395421,
		0.892189, 0.011158, -0.451524,
		15.383754, 17.967997, 15.983972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.022904, 17.178986, 16.307678>,  <14.759222, 17.960186, 16.300039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.022904, 17.178986, 16.307678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.310769, 17.456379, 16.293995>,  <15.483488, 17.622814, 16.285786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.310769, 17.456379, 16.293995>,  <15.022904, 17.178986, 16.307678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.310769, 17.456379, 16.293995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467115, -0.447121, 0.762815,
		0.513705, -0.564946, -0.645711,
		0.719661, 0.693483, -0.034207,
		15.526668, 17.664423, 16.283733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.651960, 16.760103, 16.282902>,  <15.022904, 17.178986, 16.307678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.651960, 16.760103, 16.282902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.772134, 17.108536, 16.438313>,  <15.844238, 17.317596, 16.531559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.772134, 17.108536, 16.438313>,  <15.651960, 16.760103, 16.282902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.772134, 17.108536, 16.438313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484386, -0.490250, 0.724586,
		0.821651, -0.029493, -0.569228,
		0.300435, 0.871083, 0.388528,
		15.862265, 17.369860, 16.554871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.501869, 16.691717, 16.391806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.382523, 17.009819, 16.602915>,  <16.310915, 17.200680, 16.729580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.382523, 17.009819, 16.602915>,  <16.501869, 16.691717, 16.391806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.382523, 17.009819, 16.602915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562495, -0.300217, 0.770369,
		0.771088, 0.526722, -0.357753,
		-0.298367, 0.795257, 0.527772,
		16.293013, 17.248396, 16.761246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.109642, 16.998796, 16.635899>,  <16.501869, 16.691717, 16.391806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.109642, 16.998796, 16.635899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.827744, 17.143902, 16.879780>,  <16.658606, 17.230965, 17.026108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.827744, 17.143902, 16.879780>,  <17.109642, 16.998796, 16.635899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.827744, 17.143902, 16.879780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553975, -0.255511, 0.792354,
		0.443222, 0.896169, -0.020890,
		-0.704745, 0.362761, 0.609704,
		16.616320, 17.252729, 17.062691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.536657, 17.397142, 17.121363>,  <17.109642, 16.998796, 16.635899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.536657, 17.397142, 17.121363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.173553, 17.338116, 17.278437>,  <16.955692, 17.302700, 17.372681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.173553, 17.338116, 17.278437>,  <17.536657, 17.397142, 17.121363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.173553, 17.338116, 17.278437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419142, -0.280683, 0.863445,
		-0.017197, 0.948389, 0.316644,
		-0.907758, -0.147568, 0.392683,
		16.901226, 17.293846, 17.396242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.540356, 17.736454, 17.708195>,  <17.536657, 17.397142, 17.121363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.540356, 17.736454, 17.708195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.255920, 17.467304, 17.789772>,  <17.085258, 17.305815, 17.838718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.255920, 17.467304, 17.789772>,  <17.540356, 17.736454, 17.708195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.255920, 17.467304, 17.789772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399951, -0.148543, 0.904419,
		-0.578266, 0.724689, 0.374744,
		-0.711089, -0.672875, 0.203943,
		17.042593, 17.265442, 17.850954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.211807, 17.934736, 18.356070>,  <17.540356, 17.736454, 17.708195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.211807, 17.934736, 18.356070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.109585, 17.548561, 18.335604>,  <17.048250, 17.316856, 18.323324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.109585, 17.548561, 18.335604>,  <17.211807, 17.934736, 18.356070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.109585, 17.548561, 18.335604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357694, -0.143587, 0.922734,
		-0.898190, 0.217510, 0.382026,
		-0.255558, -0.965439, -0.051167,
		17.032917, 17.258930, 18.320253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.813478, 17.804972, 19.008968>,  <17.211807, 17.934736, 18.356070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.813478, 17.804972, 19.008968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.971123, 17.466301, 18.865967>,  <17.065710, 17.263098, 18.780165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.971123, 17.466301, 18.865967>,  <16.813478, 17.804972, 19.008968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.971123, 17.466301, 18.865967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342123, -0.225879, 0.912102,
		-0.853011, -0.481782, 0.200647,
		0.394112, -0.846679, -0.357506,
		17.089357, 17.212297, 18.758715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.611019, 17.236006, 19.440472>,  <16.813478, 17.804972, 19.008968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.611019, 17.236006, 19.440472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.946415, 17.100777, 19.269524>,  <17.147652, 17.019638, 19.166954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.946415, 17.100777, 19.269524>,  <16.611019, 17.236006, 19.440472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946415, 17.100777, 19.269524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378006, -0.204035, 0.903040,
		-0.392493, -0.918736, -0.043286,
		0.838487, -0.338075, -0.427370,
		17.197962, 16.999355, 19.141314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628263, 16.615498, 19.780947>,  <16.611019, 17.236006, 19.440472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.628263, 16.615498, 19.780947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.985458, 16.661842, 19.606983>,  <17.199776, 16.689650, 19.502605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.985458, 16.661842, 19.606983>,  <16.628263, 16.615498, 19.780947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.985458, 16.661842, 19.606983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444545, -0.378101, 0.812046,
		-0.070353, -0.918485, -0.389147,
		0.892989, 0.115863, -0.434909,
		17.253355, 16.696602, 19.476511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.942780, 16.049643, 19.875217>,  <16.628263, 16.615498, 19.780947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.942780, 16.049643, 19.875217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.237236, 16.316940, 19.832239>,  <17.413910, 16.477320, 19.806452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.237236, 16.316940, 19.832239>,  <16.942780, 16.049643, 19.875217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.237236, 16.316940, 19.832239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423416, -0.330831, 0.843368,
		0.528032, -0.666331, -0.526484,
		0.736140, 0.668247, -0.107446,
		17.458078, 16.517414, 19.800005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545893, 15.700336, 19.999912>,  <16.942780, 16.049643, 19.875217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545893, 15.700336, 19.999912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.633263, 16.085911, 20.060732>,  <17.685684, 16.317255, 20.097223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.633263, 16.085911, 20.060732>,  <17.545893, 15.700336, 19.999912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.633263, 16.085911, 20.060732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508110, -0.245366, 0.825603,
		0.833135, -0.103077, -0.543380,
		0.218427, 0.963935, 0.152049,
		17.698792, 16.375092, 20.106346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.247252, 15.620912, 20.186232>,  <17.545893, 15.700336, 19.999912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.247252, 15.620912, 20.186232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.074730, 15.956207, 20.319700>,  <17.971218, 16.157385, 20.399780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.074730, 15.956207, 20.319700>,  <18.247252, 15.620912, 20.186232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.074730, 15.956207, 20.319700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400425, -0.153564, 0.903370,
		0.808479, 0.523235, -0.269420,
		-0.431302, 0.838238, 0.333670,
		17.945339, 16.207678, 20.419802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.840023, 15.982151, 20.614464>,  <18.247252, 15.620912, 20.186232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.840023, 15.982151, 20.614464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.488613, 16.149021, 20.707554>,  <18.277767, 16.249144, 20.763409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.488613, 16.149021, 20.707554>,  <18.840023, 15.982151, 20.614464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.488613, 16.149021, 20.707554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190751, -0.140299, 0.971561,
		0.437962, 0.897932, 0.043679,
		-0.878523, 0.417175, 0.232727,
		18.225056, 16.274174, 20.777372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.954838, 16.572367, 21.095310>,  <18.840023, 15.982151, 20.614464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.954838, 16.572367, 21.095310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.565945, 16.504993, 21.160299>,  <18.332609, 16.464569, 21.199293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.565945, 16.504993, 21.160299>,  <18.954838, 16.572367, 21.095310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.565945, 16.504993, 21.160299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147026, 0.100526, 0.984011,
		-0.182074, 0.980573, -0.072970,
		-0.972230, -0.168434, 0.162473,
		18.274275, 16.454464, 21.209042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.755869, 17.191967, 21.506863>,  <18.954838, 16.572367, 21.095310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.755869, 17.191967, 21.506863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.461941, 16.927872, 21.568989>,  <18.285583, 16.769415, 21.606264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.461941, 16.927872, 21.568989>,  <18.755869, 17.191967, 21.506863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.461941, 16.927872, 21.568989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146370, 0.069232, 0.986804,
		-0.662280, 0.747857, 0.045766,
		-0.734820, -0.660240, 0.155315,
		18.241495, 16.729799, 21.615583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.411829, 17.516617, 22.057371>,  <18.755869, 17.191967, 21.506863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.411829, 17.516617, 22.057371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.264637, 17.144863, 22.068918>,  <18.176321, 16.921810, 22.075846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.264637, 17.144863, 22.068918>,  <18.411829, 17.516617, 22.057371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.264637, 17.144863, 22.068918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081011, 0.062972, 0.994722,
		-0.926297, 0.363701, -0.098463,
		-0.367982, -0.929384, 0.028867,
		18.154242, 16.866047, 22.077578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.804249, 17.552338, 22.452053>,  <18.411829, 17.516617, 22.057371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.804249, 17.552338, 22.452053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.932003, 17.173748, 22.470713>,  <18.008656, 16.946594, 22.481909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.932003, 17.173748, 22.470713>,  <17.804249, 17.552338, 22.452053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.932003, 17.173748, 22.470713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035070, 0.037389, 0.998685,
		-0.946976, -0.320602, -0.021252,
		0.319386, -0.946476, 0.046650,
		18.027819, 16.889805, 22.484707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.283861, 17.103312, 22.880665>,  <17.804249, 17.552338, 22.452053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.283861, 17.103312, 22.880665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.657970, 16.961742, 22.880205>,  <17.882437, 16.876801, 22.879929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.657970, 16.961742, 22.880205>,  <17.283861, 17.103312, 22.880665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.657970, 16.961742, 22.880205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042564, -0.115707, 0.992371,
		-0.351358, -0.928089, -0.123282,
		0.935273, -0.353925, -0.001152,
		17.938553, 16.855566, 22.879860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.357571, 16.663584, 23.405260>,  <17.283861, 17.103312, 22.880665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.357571, 16.663584, 23.405260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.745502, 16.734962, 23.338821>,  <17.978262, 16.777790, 23.298958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.745502, 16.734962, 23.338821>,  <17.357571, 16.663584, 23.405260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.745502, 16.734962, 23.338821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163638, 0.028513, 0.986108,
		0.180705, -0.983536, -0.001549,
		0.969829, 0.178448, -0.166096,
		18.036451, 16.788496, 23.288992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.514830, 16.543041, 23.993063>,  <17.357571, 16.663584, 23.405260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.514830, 16.543041, 23.993063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.849239, 16.709911, 23.850502>,  <18.049885, 16.810034, 23.764965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.849239, 16.709911, 23.850502>,  <17.514830, 16.543041, 23.993063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.849239, 16.709911, 23.850502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329107, 0.138473, 0.934084,
		0.439032, -0.898213, -0.021529,
		0.836026, 0.417178, -0.356403,
		18.100048, 16.835064, 23.743582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.063492, 16.191641, 24.294044>,  <17.514830, 16.543041, 23.993063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.063492, 16.191641, 24.294044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.185097, 16.559109, 24.193151>,  <18.258060, 16.779589, 24.132616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.185097, 16.559109, 24.193151>,  <18.063492, 16.191641, 24.294044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.185097, 16.559109, 24.193151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299479, 0.159184, 0.940730,
		0.904372, -0.361532, -0.226728,
		0.304012, 0.918670, -0.252233,
		18.276300, 16.834709, 24.117481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.602558, 16.354729, 24.722969>,  <18.063492, 16.191641, 24.294044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.602558, 16.354729, 24.722969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.537418, 16.722240, 24.579123>,  <18.498335, 16.942747, 24.492815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.537418, 16.722240, 24.579123>,  <18.602558, 16.354729, 24.722969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.537418, 16.722240, 24.579123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216987, 0.388911, 0.895357,
		0.962495, 0.067776, -0.262698,
		-0.162850, 0.918779, -0.359619,
		18.488564, 16.997873, 24.471237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.201118, 16.871414, 24.934805>,  <18.602558, 16.354729, 24.722969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.201118, 16.871414, 24.934805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.874279, 17.091175, 24.864943>,  <18.678175, 17.223032, 24.823025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.874279, 17.091175, 24.864943>,  <19.201118, 16.871414, 24.934805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.874279, 17.091175, 24.864943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116499, 0.454070, 0.883317,
		0.564601, 0.701411, -0.435026,
		-0.817100, 0.549402, -0.174655,
		18.629148, 17.255995, 24.812546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.277678, 17.598946, 24.995407>,  <19.201118, 16.871414, 24.934805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.277678, 17.598946, 24.995407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.895889, 17.519894, 25.084785>,  <18.666817, 17.472462, 25.138412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.895889, 17.519894, 25.084785>,  <19.277678, 17.598946, 24.995407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.895889, 17.519894, 25.084785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103000, 0.484644, 0.868626,
		-0.279958, 0.852093, -0.442222,
		-0.954471, -0.197630, 0.223446,
		18.609549, 17.460606, 25.151819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.916340, 18.317993, 25.175938>,  <19.277678, 17.598946, 24.995407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.916340, 18.317993, 25.175938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.717773, 18.016552, 25.348289>,  <18.598633, 17.835688, 25.451700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.717773, 18.016552, 25.348289>,  <18.916340, 18.317993, 25.175938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.717773, 18.016552, 25.348289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113483, 0.548433, 0.828458,
		-0.860634, 0.362364, -0.357772,
		-0.496417, -0.753601, 0.430878,
		18.568848, 17.790472, 25.477552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.626831, 18.357712, 25.120733>,  <18.916340, 18.317993, 25.175938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.626831, 18.357712, 25.120733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.025215, 18.371296, 25.153978>,  <20.264246, 18.379446, 25.173925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.025215, 18.371296, 25.153978>,  <19.626831, 18.357712, 25.120733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.025215, 18.371296, 25.153978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083193, -0.000999, -0.996533,
		-0.033759, 0.999423, -0.003820,
		0.995961, 0.033960, 0.083111,
		20.324003, 18.381483, 25.178911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.847252, 18.869307, 24.735758>,  <19.626831, 18.357712, 25.120733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.847252, 18.869307, 24.735758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.162933, 18.627529, 24.779219>,  <20.352343, 18.482462, 24.805296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.162933, 18.627529, 24.779219>,  <19.847252, 18.869307, 24.735758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.162933, 18.627529, 24.779219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121631, -0.019577, -0.992382,
		0.601968, 0.796406, 0.058069,
		0.789202, -0.604446, 0.108652,
		20.399694, 18.446196, 24.811815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.324039, 19.239689, 24.327736>,  <19.847252, 18.869307, 24.735758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.324039, 19.239689, 24.327736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.456383, 18.865620, 24.378311>,  <20.535788, 18.641178, 24.408657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.456383, 18.865620, 24.378311>,  <20.324039, 19.239689, 24.327736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.456383, 18.865620, 24.378311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159487, -0.076647, -0.984220,
		0.930106, 0.345801, 0.123789,
		0.330857, -0.935172, 0.126440,
		20.555639, 18.585068, 24.416243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.843140, 19.133968, 23.896830>,  <20.324039, 19.239689, 24.327736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.843140, 19.133968, 23.896830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.813114, 18.740295, 23.961021>,  <20.795099, 18.504091, 23.999537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.813114, 18.740295, 23.961021>,  <20.843140, 19.133968, 23.896830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.813114, 18.740295, 23.961021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273501, -0.175079, -0.945803,
		0.958938, -0.027104, 0.282317,
		-0.075063, -0.984181, 0.160477,
		20.790596, 18.445042, 24.009165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.432575, 18.778648, 23.531914>,  <20.843140, 19.133968, 23.896830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.432575, 18.778648, 23.531914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.141575, 18.506672, 23.568623>,  <20.966974, 18.343487, 23.590647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.141575, 18.506672, 23.568623>,  <21.432575, 18.778648, 23.531914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.141575, 18.506672, 23.568623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110570, -0.248196, -0.962379,
		0.677137, -0.689986, 0.255744,
		-0.727502, -0.679940, 0.091771,
		20.923325, 18.302691, 23.596153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.649992, 18.331974, 23.164766>,  <21.432575, 18.778648, 23.531914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.649992, 18.331974, 23.164766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.278572, 18.187382, 23.198536>,  <21.055719, 18.100626, 23.218798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.278572, 18.187382, 23.198536>,  <21.649992, 18.331974, 23.164766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.278572, 18.187382, 23.198536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038811, -0.320723, -0.946377,
		0.369174, -0.875482, 0.311837,
		-0.928550, -0.361481, 0.084424,
		21.000008, 18.078938, 23.223864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.634977, 17.566927, 22.947027>,  <21.649992, 18.331974, 23.164766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.634977, 17.566927, 22.947027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.266220, 17.720745, 22.928093>,  <21.044966, 17.813036, 22.916733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.266220, 17.720745, 22.928093>,  <21.634977, 17.566927, 22.947027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.266220, 17.720745, 22.928093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018761, -0.077725, -0.996798,
		-0.386994, -0.919828, 0.064440,
		-0.921891, 0.384546, -0.047336,
		20.989653, 17.836109, 22.913893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.052467, 17.065464, 22.611183>,  <21.634977, 17.566927, 22.947027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.052467, 17.065464, 22.611183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.881710, 17.424614, 22.568129>,  <20.779255, 17.640104, 22.542295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.881710, 17.424614, 22.568129>,  <21.052467, 17.065464, 22.611183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.881710, 17.424614, 22.568129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166773, -0.195155, -0.966489,
		-0.888791, -0.394636, 0.233052,
		-0.426893, 0.897874, -0.107637,
		20.753643, 17.693975, 22.535837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.432695, 17.000933, 22.150980>,  <21.052467, 17.065464, 22.611183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.432695, 17.000933, 22.150980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.525703, 17.388947, 22.122774>,  <20.581509, 17.621754, 22.105850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.525703, 17.388947, 22.122774>,  <20.432695, 17.000933, 22.150980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.525703, 17.388947, 22.122774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154148, -0.034831, -0.987434,
		-0.960299, 0.240467, 0.141429,
		0.232519, 0.970032, -0.070515,
		20.595459, 17.679956, 22.101620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.938562, 17.261749, 21.770565>,  <20.432695, 17.000933, 22.150980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.938562, 17.261749, 21.770565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.264538, 17.491741, 21.741526>,  <20.460123, 17.629736, 21.724102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.264538, 17.491741, 21.741526>,  <19.938562, 17.261749, 21.770565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.264538, 17.491741, 21.741526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025212, -0.089972, -0.995625,
		-0.578998, 0.813204, -0.058825,
		0.814939, 0.574982, -0.072596,
		20.509020, 17.664236, 21.719748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.703556, 17.682255, 21.315781>,  <19.938562, 17.261749, 21.770565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.703556, 17.682255, 21.315781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.094650, 17.764126, 21.297287>,  <20.329308, 17.813250, 21.286192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.094650, 17.764126, 21.297287>,  <19.703556, 17.682255, 21.315781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.094650, 17.764126, 21.297287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034213, -0.061884, -0.997497,
		-0.207027, 0.976871, -0.053504,
		0.977737, 0.204679, -0.046233,
		20.387972, 17.825529, 21.283417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.906136, 18.364178, 21.101793>,  <19.703556, 17.682255, 21.315781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.906136, 18.364178, 21.101793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.183880, 18.097931, 20.992382>,  <20.350527, 17.938183, 20.926735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.183880, 18.097931, 20.992382>,  <19.906136, 18.364178, 21.101793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.183880, 18.097931, 20.992382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173397, 0.214149, -0.961287,
		0.698425, 0.714909, 0.033281,
		0.694360, -0.665616, -0.273530,
		20.392187, 17.898247, 20.910322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.967247, 18.597612, 20.451324>,  <19.906136, 18.364178, 21.101793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.967247, 18.597612, 20.451324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.184746, 18.261929, 20.448160>,  <20.315245, 18.060518, 20.446260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.184746, 18.261929, 20.448160>,  <19.967247, 18.597612, 20.451324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.184746, 18.261929, 20.448160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170617, -0.101306, -0.980116,
		0.821723, 0.534285, -0.198269,
		0.543747, -0.839212, -0.007913,
		20.347870, 18.010164, 20.445786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.352047, 18.599417, 19.819677>,  <19.967247, 18.597612, 20.451324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.352047, 18.599417, 19.819677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.317802, 18.228119, 19.964472>,  <20.297256, 18.005341, 20.051350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.317802, 18.228119, 19.964472>,  <20.352047, 18.599417, 19.819677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.317802, 18.228119, 19.964472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236667, -0.333976, -0.912387,
		0.967812, -0.163780, -0.191092,
		-0.085611, -0.928244, 0.361987,
		20.292120, 17.949646, 20.073069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.778521, 18.171070, 19.325922>,  <20.352047, 18.599417, 19.819677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.778521, 18.171070, 19.325922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.553448, 17.905537, 19.522987>,  <20.418404, 17.746218, 19.641226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.553448, 17.905537, 19.522987>,  <20.778521, 18.171070, 19.325922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.553448, 17.905537, 19.522987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161163, -0.496435, -0.852983,
		0.810813, -0.559356, 0.172349,
		-0.562681, -0.663833, 0.492663,
		20.384644, 17.706387, 19.670786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.075518, 17.617891, 19.198355>,  <20.778521, 18.171070, 19.325922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.075518, 17.617891, 19.198355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.708233, 17.500835, 19.305124>,  <20.487862, 17.430603, 19.369186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.708233, 17.500835, 19.305124>,  <21.075518, 17.617891, 19.198355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.708233, 17.500835, 19.305124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097010, -0.487229, -0.867869,
		0.384026, -0.822782, 0.418991,
		-0.918212, -0.292638, 0.266926,
		20.432770, 17.413044, 19.385202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.029644, 16.842833, 19.388554>,  <21.075518, 17.617891, 19.198355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.029644, 16.842833, 19.388554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.677261, 16.987003, 19.265909>,  <20.465832, 17.073505, 19.192322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.677261, 16.987003, 19.265909>,  <21.029644, 16.842833, 19.388554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677261, 16.987003, 19.265909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024676, -0.612082, -0.790410,
		-0.472556, -0.703881, 0.530323,
		-0.880955, 0.360427, -0.306612,
		20.412975, 17.095131, 19.173925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.510612, 16.261751, 19.143274>,  <21.029644, 16.842833, 19.388554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.510612, 16.261751, 19.143274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.323891, 16.569592, 18.969007>,  <20.211859, 16.754295, 18.864447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.323891, 16.569592, 18.969007>,  <20.510612, 16.261751, 19.143274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.323891, 16.569592, 18.969007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015110, -0.499505, -0.866179,
		-0.884232, -0.397752, 0.244800,
		-0.466803, 0.769602, -0.435668,
		20.183849, 16.800472, 18.838306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.083849, 16.002380, 18.670727>,  <20.510612, 16.261751, 19.143274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.083849, 16.002380, 18.670727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.093769, 16.380154, 18.539623>,  <20.099722, 16.606817, 18.460960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.093769, 16.380154, 18.539623>,  <20.083849, 16.002380, 18.670727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093769, 16.380154, 18.539623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005278, -0.327733, -0.944755,
		-0.999678, 0.025162, -0.003144,
		0.024802, 0.944435, -0.327760,
		20.101210, 16.663485, 18.441296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.648079, 15.937775, 18.056879>,  <20.083849, 16.002380, 18.670727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.648079, 15.937775, 18.056879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.870892, 16.269951, 18.053230>,  <20.004580, 16.469257, 18.051041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.870892, 16.269951, 18.053230>,  <19.648079, 15.937775, 18.056879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.870892, 16.269951, 18.053230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091861, -0.072525, -0.993127,
		-0.825395, 0.552365, -0.116684,
		0.557032, 0.830441, -0.009121,
		20.038002, 16.519083, 18.050493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<14.402204, 17.892391, 14.580506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.690717, 18.168369, 14.556093>,  <14.863825, 18.333956, 14.541446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.690717, 18.168369, 14.556093>,  <14.402204, 17.892391, 14.580506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.690717, 18.168369, 14.556093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550832, 0.517958, -0.654449,
		-0.419923, 0.505662, 0.753639,
		0.721283, 0.689946, -0.061032,
		14.907102, 18.375353, 14.537784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.998733, 18.488071, 14.330036>,  <14.402204, 17.892391, 14.580506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.998733, 18.488071, 14.330036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.390578, 18.561878, 14.298264>,  <14.625686, 18.606163, 14.279200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.390578, 18.561878, 14.298264>,  <13.998733, 18.488071, 14.330036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.390578, 18.561878, 14.298264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186126, 0.684887, -0.704476,
		-0.075588, 0.704899, 0.705269,
		0.979614, 0.184519, -0.079431,
		14.684463, 18.617233, 14.274434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.144803, 19.190462, 14.407341>,  <13.998733, 18.488071, 14.330036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.144803, 19.190462, 14.407341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.472819, 19.064465, 14.216213>,  <14.669629, 18.988867, 14.101537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.472819, 19.064465, 14.216213>,  <14.144803, 19.190462, 14.407341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.472819, 19.064465, 14.216213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148882, 0.688744, -0.709554,
		0.552600, 0.653003, 0.517901,
		0.820041, -0.314993, -0.477820,
		14.718832, 18.969967, 14.072867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.495499, 19.777248, 14.069508>,  <14.144803, 19.190462, 14.407341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.495499, 19.777248, 14.069508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.625581, 19.447201, 13.884720>,  <14.703630, 19.249172, 13.773847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.625581, 19.447201, 13.884720>,  <14.495499, 19.777248, 14.069508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.625581, 19.447201, 13.884720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140012, 0.441127, -0.886455,
		0.935221, 0.352962, 0.027930,
		0.325206, -0.825121, -0.461970,
		14.723143, 19.199665, 13.746129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.019901, 20.033928, 13.673205>,  <14.495499, 19.777248, 14.069508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.019901, 20.033928, 13.673205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.898479, 19.685669, 13.518375>,  <14.825624, 19.476713, 13.425477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.898479, 19.685669, 13.518375>,  <15.019901, 20.033928, 13.673205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.898479, 19.685669, 13.518375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068513, 0.385248, -0.920266,
		0.950347, -0.305874, -0.057294,
		-0.303558, -0.870646, -0.387076,
		14.807411, 19.424475, 13.402252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.557423, 19.862612, 13.135079>,  <15.019901, 20.033928, 13.673205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.557423, 19.862612, 13.135079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.243264, 19.629761, 13.050907>,  <15.054770, 19.490049, 13.000404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.243264, 19.629761, 13.050907>,  <15.557423, 19.862612, 13.135079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.243264, 19.629761, 13.050907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022475, 0.312911, -0.949516,
		0.618587, -0.750474, -0.232676,
		-0.785394, -0.582129, -0.210430,
		15.007646, 19.455122, 12.987778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.730090, 19.598658, 12.573409>,  <15.557423, 19.862612, 13.135079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.730090, 19.598658, 12.573409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.337691, 19.521454, 12.581334>,  <15.102252, 19.475132, 12.586089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.337691, 19.521454, 12.581334>,  <15.730090, 19.598658, 12.573409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.337691, 19.521454, 12.581334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079406, 0.306219, -0.948644,
		0.177028, -0.932190, -0.315726,
		-0.980997, -0.193007, 0.019812,
		15.043392, 19.463551, 12.587277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.599487, 19.293905, 11.991847>,  <15.730090, 19.598658, 12.573409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.599487, 19.293905, 11.991847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.218581, 19.391693, 12.064978>,  <14.990037, 19.450365, 12.108856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.218581, 19.391693, 12.064978>,  <15.599487, 19.293905, 11.991847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.218581, 19.391693, 12.064978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105051, 0.299893, -0.948171,
		-0.286626, -0.922117, -0.259896,
		-0.952265, 0.244468, 0.182826,
		14.932901, 19.465033, 12.119825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.173765, 19.001097, 11.434203>,  <15.599487, 19.293905, 11.991847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.173765, 19.001097, 11.434203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.963054, 19.294857, 11.605391>,  <14.836627, 19.471113, 11.708103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.963054, 19.294857, 11.605391>,  <15.173765, 19.001097, 11.434203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.963054, 19.294857, 11.605391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241537, 0.353404, -0.903751,
		-0.814962, -0.579447, -0.008781,
		-0.526779, 0.734402, 0.427969,
		14.805020, 19.515177, 11.733781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.541147, 19.004879, 11.169394>,  <15.173765, 19.001097, 11.434203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.541147, 19.004879, 11.169394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.588254, 19.381351, 11.296082>,  <14.616518, 19.607235, 11.372095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.588254, 19.381351, 11.296082>,  <14.541147, 19.004879, 11.169394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588254, 19.381351, 11.296082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302668, 0.337784, -0.891232,
		-0.945792, 0.009098, 0.324645,
		0.117768, 0.941180, 0.316720,
		14.623585, 19.663706, 11.391098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.921782, 19.355543, 11.004162>,  <14.541147, 19.004879, 11.169394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.921782, 19.355543, 11.004162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.195651, 19.644718, 11.041224>,  <14.359973, 19.818222, 11.063460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.195651, 19.644718, 11.041224>,  <13.921782, 19.355543, 11.004162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.195651, 19.644718, 11.041224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280522, 0.378713, -0.881977,
		-0.672703, 0.577875, 0.462094,
		0.684674, 0.722936, 0.092655,
		14.401053, 19.861599, 11.069020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.624230, 20.029556, 10.938898>,  <13.921782, 19.355543, 11.004162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.624230, 20.029556, 10.938898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.007207, 20.081734, 10.835911>,  <14.236993, 20.113041, 10.774118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.007207, 20.081734, 10.835911>,  <13.624230, 20.029556, 10.938898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.007207, 20.081734, 10.835911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288608, 0.422003, -0.859429,
		-0.003456, 0.897161, 0.441691,
		0.957441, 0.130446, -0.257469,
		14.294439, 20.120867, 10.758670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.839945, 20.760361, 10.859546>,  <13.624230, 20.029556, 10.938898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.839945, 20.760361, 10.859546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.019149, 20.505116, 10.609074>,  <14.126671, 20.351969, 10.458791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.019149, 20.505116, 10.609074>,  <13.839945, 20.760361, 10.859546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.019149, 20.505116, 10.609074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395689, 0.486541, -0.778914,
		0.801696, 0.596734, -0.034518,
		0.448010, -0.638111, -0.626180,
		14.153552, 20.313683, 10.421220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.133243, 21.212425, 10.354142>,  <13.839945, 20.760361, 10.859546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.133243, 21.212425, 10.354142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.012675, 20.846684, 10.245995>,  <13.940334, 20.627237, 10.181106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.012675, 20.846684, 10.245995>,  <14.133243, 21.212425, 10.354142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.012675, 20.846684, 10.245995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518489, 0.395148, -0.758306,
		0.800197, -0.088384, -0.593188,
		-0.301419, -0.914356, -0.270370,
		13.922250, 20.572376, 10.164884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.469189, 21.748384, 10.722664>,  <14.133243, 21.212425, 10.354142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.469189, 21.748384, 10.722664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.365335, 22.065628, 10.502277>,  <14.303021, 22.255974, 10.370046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.365335, 22.065628, 10.502277>,  <14.469189, 21.748384, 10.722664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.365335, 22.065628, 10.502277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438336, 0.605161, 0.664561,
		0.860494, -0.068964, -0.504771,
		-0.259637, 0.793110, -0.550967,
		14.287443, 22.303562, 10.336987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.167556, 22.049030, 10.498726>,  <14.469189, 21.748384, 10.722664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.167556, 22.049030, 10.498726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.851001, 22.293140, 10.484466>,  <14.661068, 22.439606, 10.475909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.851001, 22.293140, 10.484466>,  <15.167556, 22.049030, 10.498726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.851001, 22.293140, 10.484466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454431, 0.626297, 0.633439,
		0.408899, 0.485095, -0.772971,
		-0.791387, 0.610274, -0.035650,
		14.613585, 22.476223, 10.473770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.419479, 22.670830, 10.444319>,  <15.167556, 22.049030, 10.498726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.419479, 22.670830, 10.444319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.045047, 22.726307, 10.573634>,  <14.820387, 22.759592, 10.651223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.045047, 22.726307, 10.573634>,  <15.419479, 22.670830, 10.444319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.045047, 22.726307, 10.573634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336592, 0.620254, 0.708513,
		-0.102257, 0.772043, -0.627290,
		-0.936082, 0.138691, 0.323289,
		14.764222, 22.767914, 10.670621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.396526, 23.382734, 10.678267>,  <15.419479, 22.670830, 10.444319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.396526, 23.382734, 10.678267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.087338, 23.191685, 10.845309>,  <14.901826, 23.077055, 10.945535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.087338, 23.191685, 10.845309>,  <15.396526, 23.382734, 10.678267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.087338, 23.191685, 10.845309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158728, 0.491709, 0.856170,
		-0.614267, 0.728079, -0.304264,
		-0.772969, -0.477622, 0.417607,
		14.855448, 23.048399, 10.970592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.032502, 23.914494, 11.019596>,  <15.396526, 23.382734, 10.678267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.032502, 23.914494, 11.019596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.941503, 23.570107, 11.201574>,  <14.886903, 23.363474, 11.310761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.941503, 23.570107, 11.201574>,  <15.032502, 23.914494, 11.019596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.941503, 23.570107, 11.201574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234981, 0.404853, 0.883673,
		-0.945002, 0.307938, 0.110208,
		-0.227498, -0.860969, 0.454947,
		14.873253, 23.311815, 11.338058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592826, 24.165041, 11.600825>,  <15.032502, 23.914494, 11.019596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592826, 24.165041, 11.600825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.686736, 23.792015, 11.710522>,  <14.743082, 23.568199, 11.776340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.686736, 23.792015, 11.710522>,  <14.592826, 24.165041, 11.600825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.686736, 23.792015, 11.710522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171363, 0.317414, 0.932675,
		-0.956826, -0.171974, 0.234327,
		0.234775, -0.932563, 0.274240,
		14.757169, 23.512247, 11.792793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.260751, 24.019295, 12.351599>,  <14.592826, 24.165041, 11.600825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.260751, 24.019295, 12.351599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.553369, 23.752293, 12.296059>,  <14.728939, 23.592091, 12.262734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.553369, 23.752293, 12.296059>,  <14.260751, 24.019295, 12.351599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.553369, 23.752293, 12.296059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270271, 0.096948, 0.957891,
		-0.625936, -0.738267, 0.251329,
		0.731545, -0.667505, -0.138849,
		14.772832, 23.552042, 12.254404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.138311, 23.330647, 12.833661>,  <14.260751, 24.019295, 12.351599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.138311, 23.330647, 12.833661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.530572, 23.342762, 12.756297>,  <14.765928, 23.350031, 12.709879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.530572, 23.342762, 12.756297>,  <14.138311, 23.330647, 12.833661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.530572, 23.342762, 12.756297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195553, -0.105321, 0.975021,
		0.009166, -0.993977, -0.109206,
		0.980651, 0.030292, -0.193409,
		14.824767, 23.351849, 12.698275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.406629, 22.891920, 13.376677>,  <14.138311, 23.330647, 12.833661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.406629, 22.891920, 13.376677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.743329, 23.042229, 13.221628>,  <14.945350, 23.132414, 13.128599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.743329, 23.042229, 13.221628>,  <14.406629, 22.891920, 13.376677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.743329, 23.042229, 13.221628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471757, -0.162889, 0.866552,
		0.262487, -0.912284, -0.314386,
		0.841751, 0.375772, -0.387621,
		14.995854, 23.154961, 13.105342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.027754, 22.403038, 13.280606>,  <14.406629, 22.891920, 13.376677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.027754, 22.403038, 13.280606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.189620, 22.761143, 13.355177>,  <15.286739, 22.976006, 13.399920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.189620, 22.761143, 13.355177>,  <15.027754, 22.403038, 13.280606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.189620, 22.761143, 13.355177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596486, -0.412936, 0.688250,
		0.693146, -0.167310, -0.701111,
		0.404665, 0.895261, 0.186426,
		15.311020, 23.029720, 13.411105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.834955, 22.272978, 13.280106>,  <15.027754, 22.403038, 13.280606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.834955, 22.272978, 13.280106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.777808, 22.644218, 13.417635>,  <15.743520, 22.866962, 13.500153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.777808, 22.644218, 13.417635>,  <15.834955, 22.272978, 13.280106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.777808, 22.644218, 13.417635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502263, -0.231347, 0.833192,
		0.852830, 0.291728, -0.433099,
		-0.142869, 0.928102, 0.343824,
		15.734947, 22.922649, 13.520782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.459211, 22.451160, 13.635877>,  <15.834955, 22.272978, 13.280106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.459211, 22.451160, 13.635877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.225513, 22.739342, 13.785330>,  <16.085295, 22.912251, 13.875002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.225513, 22.739342, 13.785330>,  <16.459211, 22.451160, 13.635877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.225513, 22.739342, 13.785330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433083, -0.112581, 0.894295,
		0.686363, 0.684303, -0.246242,
		-0.584247, 0.720455, 0.373632,
		16.050240, 22.955479, 13.897419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.926165, 23.061932, 13.909077>,  <16.459211, 22.451160, 13.635877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.926165, 23.061932, 13.909077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.574791, 23.067665, 14.100136>,  <16.363966, 23.071106, 14.214771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.574791, 23.067665, 14.100136>,  <16.926165, 23.061932, 13.909077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.574791, 23.067665, 14.100136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477787, 0.008521, 0.878435,
		0.008521, 0.999861, -0.014333,
		-0.878435, 0.014333, 0.477648,
		16.311260, 23.071964, 14.243430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.050890, 23.415766, 14.459091>,  <16.926165, 23.061932, 13.909077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.050890, 23.415766, 14.459091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.724224, 23.209942, 14.563620>,  <16.528225, 23.086447, 14.626337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.724224, 23.209942, 14.563620>,  <17.050890, 23.415766, 14.459091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.724224, 23.209942, 14.563620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360501, -0.101247, 0.927248,
		-0.450667, 0.851456, 0.268184,
		-0.816663, -0.514561, 0.261322,
		16.479225, 23.055574, 14.642016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932842, 23.725243, 15.077689>,  <17.050890, 23.415766, 14.459091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.932842, 23.725243, 15.077689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.322571, 23.635227, 15.074627>,  <17.556408, 23.581217, 15.072790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.322571, 23.635227, 15.074627>,  <16.932842, 23.725243, 15.077689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.322571, 23.635227, 15.074627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039492, 0.204251, -0.978122,
		0.221680, 0.952701, 0.207892,
		0.974319, -0.225040, -0.007655,
		17.614866, 23.567715, 15.072330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.252142, 24.257792, 14.667597>,  <16.932842, 23.725243, 15.077689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.252142, 24.257792, 14.667597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.499207, 23.943218, 14.665895>,  <17.647446, 23.754475, 14.664874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.499207, 23.943218, 14.665895>,  <17.252142, 24.257792, 14.667597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.499207, 23.943218, 14.665895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265116, 0.213308, -0.940326,
		0.740410, 0.579676, 0.340248,
		0.617662, -0.786432, -0.004254,
		17.684505, 23.707289, 14.664619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.646688, 24.411396, 14.167786>,  <17.252142, 24.257792, 14.667597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.646688, 24.411396, 14.167786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.780098, 24.035828, 14.201694>,  <17.860144, 23.810486, 14.222039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.780098, 24.035828, 14.201694>,  <17.646688, 24.411396, 14.167786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.780098, 24.035828, 14.201694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384650, 0.053435, -0.921515,
		0.860701, 0.339954, 0.378978,
		0.333523, -0.938923, 0.084772,
		17.880156, 23.754150, 14.227126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.216053, 24.279383, 13.668900>,  <17.646688, 24.411396, 14.167786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.216053, 24.279383, 13.668900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.059196, 23.917442, 13.735191>,  <17.965082, 23.700277, 13.774966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.059196, 23.917442, 13.735191>,  <18.216053, 24.279383, 13.668900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.059196, 23.917442, 13.735191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224955, -0.269016, -0.936496,
		0.891975, -0.329958, 0.309044,
		-0.392142, -0.904853, 0.165730,
		17.941553, 23.645987, 13.784910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.666786, 23.871595, 13.508990>,  <18.216053, 24.279383, 13.668900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.666786, 23.871595, 13.508990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.334351, 23.650829, 13.481623>,  <18.134890, 23.518370, 13.465202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.334351, 23.650829, 13.481623>,  <18.666786, 23.871595, 13.508990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.334351, 23.650829, 13.481623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279762, -0.308572, -0.909129,
		0.480650, -0.774708, 0.410856,
		-0.831089, -0.551915, -0.068419,
		18.085024, 23.485254, 13.461097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.919792, 23.251234, 13.285967>,  <18.666786, 23.871595, 13.508990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.919792, 23.251234, 13.285967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.531624, 23.249714, 13.189411>,  <18.298723, 23.248802, 13.131477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.531624, 23.249714, 13.189411>,  <18.919792, 23.251234, 13.285967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.531624, 23.249714, 13.189411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239636, -0.136456, -0.961225,
		-0.029286, -0.990639, 0.133331,
		-0.970421, -0.003801, -0.241389,
		18.240498, 23.248575, 13.116995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.815012, 22.617197, 12.877334>,  <18.919792, 23.251234, 13.285967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.815012, 22.617197, 12.877334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.509083, 22.856384, 12.781434>,  <18.325525, 22.999897, 12.723894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.509083, 22.856384, 12.781434>,  <18.815012, 22.617197, 12.877334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.509083, 22.856384, 12.781434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119176, -0.234399, -0.964808,
		-0.633120, -0.766481, 0.108011,
		-0.764825, 0.597967, -0.239749,
		18.279634, 23.035774, 12.709509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.507502, 22.236414, 12.350450>,  <18.815012, 22.617197, 12.877334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.507502, 22.236414, 12.350450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.355412, 22.605232, 12.321435>,  <18.264158, 22.826523, 12.304026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.355412, 22.605232, 12.321435>,  <18.507502, 22.236414, 12.350450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.355412, 22.605232, 12.321435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037901, -0.062829, -0.997304,
		-0.924117, -0.381949, -0.011057,
		-0.380225, 0.922045, -0.072537,
		18.241344, 22.881845, 12.299674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.054247, 22.127144, 11.843667>,  <18.507502, 22.236414, 12.350450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.054247, 22.127144, 11.843667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.116985, 22.522190, 11.842429>,  <18.154629, 22.759218, 11.841686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.116985, 22.522190, 11.842429>,  <18.054247, 22.127144, 11.843667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.116985, 22.522190, 11.842429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192884, 0.027559, -0.980834,
		-0.968605, 0.154439, 0.194819,
		0.156848, 0.987618, -0.003095,
		18.164040, 22.818476, 11.841500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.575777, 22.356157, 11.464936>,  <18.054247, 22.127144, 11.843667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.575777, 22.356157, 11.464936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.822044, 22.670586, 11.442866>,  <17.969805, 22.859241, 11.429625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.822044, 22.670586, 11.442866>,  <17.575777, 22.356157, 11.464936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.822044, 22.670586, 11.442866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243020, 0.122800, -0.962217,
		-0.749594, 0.605817, 0.266635,
		0.615670, 0.786070, -0.055176,
		18.006746, 22.906406, 11.426313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181343, 22.998075, 11.264518>,  <17.575777, 22.356157, 11.464936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181343, 22.998075, 11.264518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.568302, 23.041801, 11.173131>,  <17.800478, 23.068037, 11.118299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.568302, 23.041801, 11.173131>,  <17.181343, 22.998075, 11.264518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.568302, 23.041801, 11.173131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244807, 0.172322, -0.954136,
		-0.064930, 0.978956, 0.193464,
		0.967395, 0.109313, -0.228466,
		17.858521, 23.074596, 11.104591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.372652, 23.535366, 10.867378>,  <17.181343, 22.998075, 11.264518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.372652, 23.535366, 10.867378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.643188, 23.254272, 10.779078>,  <17.805510, 23.085617, 10.726098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.643188, 23.254272, 10.779078>,  <17.372652, 23.535366, 10.867378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.643188, 23.254272, 10.779078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344387, -0.036765, -0.938107,
		0.651123, 0.710504, -0.266877,
		0.676340, -0.702732, -0.220750,
		17.846090, 23.043453, 10.712853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.991781, 24.132759, 19.154345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.130138, 23.819298, 18.947948>,  <18.213154, 23.631222, 18.824110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.130138, 23.819298, 18.947948>,  <17.991781, 24.132759, 19.154345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.130138, 23.819298, 18.947948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421197, 0.361725, -0.831714,
		0.838422, 0.505019, -0.204953,
		0.345894, -0.783653, -0.515990,
		18.233906, 23.584202, 18.793152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.391472, 24.382418, 18.619196>,  <17.991781, 24.132759, 19.154345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.391472, 24.382418, 18.619196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.335445, 24.014072, 18.473652>,  <18.301830, 23.793066, 18.386326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.335445, 24.014072, 18.473652>,  <18.391472, 24.382418, 18.619196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.335445, 24.014072, 18.473652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237175, 0.387988, -0.890625,
		0.961317, -0.038447, -0.272749,
		-0.140066, -0.920862, -0.363860,
		18.293427, 23.737814, 18.364494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.662252, 24.487196, 17.955942>,  <18.391472, 24.382418, 18.619196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.662252, 24.487196, 17.955942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.445202, 24.151779, 17.936337>,  <18.314972, 23.950529, 17.924574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.445202, 24.151779, 17.936337>,  <18.662252, 24.487196, 17.955942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.445202, 24.151779, 17.936337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081622, 0.110713, -0.990495,
		0.835998, -0.533470, -0.128520,
		-0.542628, -0.838542, -0.049013,
		18.282413, 23.900217, 17.921633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.808853, 24.193478, 17.271772>,  <18.662252, 24.487196, 17.955942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.808853, 24.193478, 17.271772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.521503, 23.936901, 17.379465>,  <18.349092, 23.782955, 17.444080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.521503, 23.936901, 17.379465>,  <18.808853, 24.193478, 17.271772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.521503, 23.936901, 17.379465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118994, -0.268010, -0.956039,
		0.685402, -0.718833, 0.116204,
		-0.718377, -0.641443, 0.269231,
		18.305990, 23.744469, 17.460234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.968634, 23.512932, 16.969946>,  <18.808853, 24.193478, 17.271772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.968634, 23.512932, 16.969946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.572205, 23.543903, 17.013353>,  <18.334347, 23.562487, 17.039398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.572205, 23.543903, 17.013353>,  <18.968634, 23.512932, 16.969946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.572205, 23.543903, 17.013353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121167, -0.183776, -0.975472,
		-0.055587, -0.979914, 0.191517,
		-0.991074, 0.077429, 0.108518,
		18.274881, 23.567133, 17.045908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.752104, 22.927799, 16.570774>,  <18.968634, 23.512932, 16.969946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.752104, 22.927799, 16.570774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.449375, 23.187283, 16.602768>,  <18.267738, 23.342974, 16.621964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.449375, 23.187283, 16.602768>,  <18.752104, 22.927799, 16.570774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.449375, 23.187283, 16.602768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238715, -0.160409, -0.957749,
		-0.608471, -0.743939, 0.276258,
		-0.756821, 0.648710, 0.079985,
		18.222328, 23.381895, 16.626764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.145071, 22.588488, 16.361149>,  <18.752104, 22.927799, 16.570774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.145071, 22.588488, 16.361149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.106419, 22.984413, 16.319328>,  <18.083227, 23.221968, 16.294235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.106419, 22.984413, 16.319328>,  <18.145071, 22.588488, 16.361149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.106419, 22.984413, 16.319328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184131, -0.121007, -0.975425,
		-0.978140, -0.075005, 0.193949,
		-0.096631, 0.989814, -0.104551,
		18.077429, 23.281357, 16.287964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.542532, 22.691679, 15.990808>,  <18.145071, 22.588488, 16.361149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.542532, 22.691679, 15.990808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748589, 23.032692, 15.955431>,  <17.872223, 23.237299, 15.934205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748589, 23.032692, 15.955431>,  <17.542532, 22.691679, 15.990808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.748589, 23.032692, 15.955431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121894, -0.029268, -0.992112,
		-0.848394, 0.521858, 0.088842,
		0.515141, 0.852530, -0.088442,
		17.903131, 23.288450, 15.928899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093040, 23.190796, 15.760690>,  <17.542532, 22.691679, 15.990808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.093040, 23.190796, 15.760690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.461620, 23.277973, 15.632048>,  <17.682768, 23.330280, 15.554862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.461620, 23.277973, 15.632048>,  <17.093040, 23.190796, 15.760690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.461620, 23.277973, 15.632048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287127, -0.175600, -0.941660,
		-0.261702, 0.960034, -0.099229,
		0.921450, 0.217943, -0.321606,
		17.738056, 23.343355, 15.535565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507462, 23.598356, 15.834126>,  <17.093040, 23.190796, 15.760690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.507462, 23.598356, 15.834126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.379063, 23.290688, 15.613098>,  <16.302023, 23.106087, 15.480482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.379063, 23.290688, 15.613098>,  <16.507462, 23.598356, 15.834126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.379063, 23.290688, 15.613098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079402, -0.603247, 0.793592,
		-0.943745, 0.210866, 0.254716,
		-0.320999, -0.769174, -0.552569,
		16.282763, 23.059935, 15.447328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.015936, 23.304478, 16.198933>,  <16.507462, 23.598356, 15.834126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.015936, 23.304478, 16.198933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.137039, 22.998413, 15.971647>,  <16.209702, 22.814774, 15.835277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.137039, 22.998413, 15.971647>,  <16.015936, 23.304478, 16.198933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.137039, 22.998413, 15.971647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007189, -0.594343, 0.804179,
		-0.953040, -0.247556, -0.174441,
		0.302758, -0.765162, -0.568213,
		16.227867, 22.768866, 15.801184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.588178, 22.744741, 16.291328>,  <16.015936, 23.304478, 16.198933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.588178, 22.744741, 16.291328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907342, 22.554230, 16.143549>,  <16.098841, 22.439922, 16.054880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907342, 22.554230, 16.143549>,  <15.588178, 22.744741, 16.291328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.907342, 22.554230, 16.143549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131424, -0.735632, 0.664509,
		-0.588272, -0.481665, -0.649565,
		0.797912, -0.476281, -0.369450,
		16.146715, 22.411345, 16.032715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.405627, 22.039509, 16.313391>,  <15.588178, 22.744741, 16.291328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.405627, 22.039509, 16.313391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.805196, 22.043903, 16.295349>,  <16.044937, 22.046539, 16.284523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.805196, 22.043903, 16.295349>,  <15.405627, 22.039509, 16.313391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.805196, 22.043903, 16.295349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039913, -0.699391, 0.713624,
		-0.023707, -0.714655, -0.699076,
		0.998922, 0.010985, -0.045105,
		16.104872, 22.047199, 16.281818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.459665, 21.372467, 16.497099>,  <15.405627, 22.039509, 16.313391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.459665, 21.372467, 16.497099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.837239, 21.504333, 16.490068>,  <16.063784, 21.583454, 16.485849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.837239, 21.504333, 16.490068>,  <15.459665, 21.372467, 16.497099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.837239, 21.504333, 16.490068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252564, -0.686829, 0.681526,
		0.212603, -0.647755, -0.731583,
		0.943934, 0.329666, -0.017578,
		16.120419, 21.603233, 16.484795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.869777, 20.769081, 16.464985>,  <15.459665, 21.372467, 16.497099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.869777, 20.769081, 16.464985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070568, 21.075260, 16.626034>,  <16.191042, 21.258968, 16.722664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070568, 21.075260, 16.626034>,  <15.869777, 20.769081, 16.464985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.070568, 21.075260, 16.626034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285629, -0.586127, 0.758203,
		0.816355, -0.265599, -0.512857,
		0.501977, 0.765449, 0.402624,
		16.221161, 21.304895, 16.746820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.483578, 20.436003, 16.651094>,  <15.869777, 20.769081, 16.464985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.483578, 20.436003, 16.651094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456573, 20.766075, 16.875423>,  <16.440371, 20.964119, 17.010021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456573, 20.766075, 16.875423>,  <16.483578, 20.436003, 16.651094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.456573, 20.766075, 16.875423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173764, -0.543789, 0.821035,
		0.982471, 0.152879, -0.106675,
		-0.067510, 0.825179, 0.560822,
		16.436321, 21.013630, 17.043671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.077707, 20.438522, 17.135338>,  <16.483578, 20.436003, 16.651094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.077707, 20.438522, 17.135338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806171, 20.681194, 17.300802>,  <16.643250, 20.826797, 17.400082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806171, 20.681194, 17.300802>,  <17.077707, 20.438522, 17.135338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.806171, 20.681194, 17.300802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120651, -0.463537, 0.877825,
		0.724308, 0.645810, 0.241470,
		-0.678838, 0.606682, 0.413661,
		16.602520, 20.863199, 17.424900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307732, 20.517971, 17.885622>,  <17.077707, 20.438522, 17.135338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.307732, 20.517971, 17.885622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.926460, 20.636063, 17.859432>,  <16.697697, 20.706919, 17.843718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.926460, 20.636063, 17.859432>,  <17.307732, 20.517971, 17.885622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.926460, 20.636063, 17.859432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144468, -0.254353, 0.956260,
		0.265663, 0.920947, 0.285096,
		-0.953180, 0.295230, -0.065475,
		16.640507, 20.724632, 17.839790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161304, 20.923273, 18.428585>,  <17.307732, 20.517971, 17.885622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.161304, 20.923273, 18.428585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.794823, 20.803352, 18.322237>,  <16.574934, 20.731400, 18.258429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.794823, 20.803352, 18.322237>,  <17.161304, 20.923273, 18.428585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.794823, 20.803352, 18.322237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207182, -0.213503, 0.954721,
		-0.342990, 0.929804, 0.133499,
		-0.916206, -0.299801, -0.265868,
		16.519960, 20.713411, 18.242477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.733093, 21.153811, 18.976416>,  <17.161304, 20.923273, 18.428585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.733093, 21.153811, 18.976416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.538937, 20.855770, 18.793451>,  <16.422443, 20.676947, 18.683674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.538937, 20.855770, 18.793451>,  <16.733093, 21.153811, 18.976416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.538937, 20.855770, 18.793451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377650, -0.293170, 0.878312,
		-0.788528, 0.599065, -0.139085,
		-0.485391, -0.745099, -0.457410,
		16.393320, 20.632240, 18.656229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.068991, 21.159914, 19.274517>,  <16.733093, 21.153811, 18.976416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.068991, 21.159914, 19.274517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.132938, 20.788033, 19.141794>,  <16.171307, 20.564903, 19.062160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.132938, 20.788033, 19.141794>,  <16.068991, 21.159914, 19.274517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.132938, 20.788033, 19.141794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524676, -0.364747, 0.769203,
		-0.836155, 0.051117, -0.546105,
		0.159871, -0.929702, -0.331805,
		16.180899, 20.509121, 19.042253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.503809, 20.812979, 19.469034>,  <16.068991, 21.159914, 19.274517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.503809, 20.812979, 19.469034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.751920, 20.511894, 19.380777>,  <15.900786, 20.331244, 19.327824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.751920, 20.511894, 19.380777>,  <15.503809, 20.812979, 19.469034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.751920, 20.511894, 19.380777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390442, -0.540258, 0.745438,
		-0.680303, -0.376229, -0.628999,
		0.620277, -0.752711, -0.220643,
		15.938003, 20.286081, 19.314585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.149728, 20.123278, 19.398876>,  <15.503809, 20.812979, 19.469034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.149728, 20.123278, 19.398876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.535432, 20.042385, 19.467352>,  <15.766854, 19.993851, 19.508438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.535432, 20.042385, 19.467352>,  <15.149728, 20.123278, 19.398876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.535432, 20.042385, 19.467352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248025, -0.461675, 0.851669,
		-0.093198, -0.863689, -0.495333,
		0.964260, -0.202229, 0.171189,
		15.824710, 19.981716, 19.518709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.697330, 18.005381, 18.764750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.433922, 18.306404, 18.763844>,  <22.275877, 18.487019, 18.763300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.433922, 18.306404, 18.763844>,  <22.697330, 18.005381, 18.764750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.433922, 18.306404, 18.763844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157147, -0.140453, -0.977537,
		-0.735973, -0.643372, 0.210753,
		-0.658520, 0.752560, -0.002266,
		22.236366, 18.532171, 18.763165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.140903, 17.765976, 18.380859>,  <22.697330, 18.005381, 18.764750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.140903, 17.765976, 18.380859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.110622, 18.163795, 18.352184>,  <22.092453, 18.402487, 18.334978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.110622, 18.163795, 18.352184>,  <22.140903, 17.765976, 18.380859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.110622, 18.163795, 18.352184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221210, -0.086855, -0.971351,
		-0.972284, -0.057676, 0.226579,
		-0.075703, 0.994550, -0.071690,
		22.087912, 18.462160, 18.330677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.636923, 17.813967, 17.926104>,  <22.140903, 17.765976, 18.380859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.636923, 17.813967, 17.926104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.749729, 18.197666, 17.919054>,  <21.817413, 18.427885, 17.914824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.749729, 18.197666, 17.919054>,  <21.636923, 17.813967, 17.926104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.749729, 18.197666, 17.919054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121772, 0.017567, -0.992403,
		-0.951650, 0.282021, 0.121764,
		0.282018, 0.959247, -0.017625,
		21.834335, 18.485441, 17.913767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.144426, 18.156893, 17.507469>,  <21.636923, 17.813967, 17.926104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.144426, 18.156893, 17.507469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.440052, 18.426170, 17.517218>,  <21.617428, 18.587736, 17.523067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.440052, 18.426170, 17.517218>,  <21.144426, 18.156893, 17.507469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.440052, 18.426170, 17.517218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225488, 0.281320, -0.932746,
		-0.634773, 0.683865, 0.359711,
		0.739066, 0.673192, 0.024371,
		21.661772, 18.628128, 17.524529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.853342, 18.823633, 17.214539>,  <21.144426, 18.156893, 17.507469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.853342, 18.823633, 17.214539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.250946, 18.818497, 17.171131>,  <21.489510, 18.815414, 17.145086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.250946, 18.818497, 17.171131>,  <20.853342, 18.823633, 17.214539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.250946, 18.818497, 17.171131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098158, 0.331441, -0.938356,
		0.048019, 0.943388, 0.328196,
		0.994012, -0.012843, -0.108516,
		21.549150, 18.814644, 17.138577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.994448, 19.400187, 16.969254>,  <20.853342, 18.823633, 17.214539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.994448, 19.400187, 16.969254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.323803, 19.202122, 16.858368>,  <21.521416, 19.083282, 16.791836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.323803, 19.202122, 16.858368>,  <20.994448, 19.400187, 16.969254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323803, 19.202122, 16.858368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155048, 0.273618, -0.949259,
		0.545889, 0.824589, 0.148520,
		0.823387, -0.495162, -0.277216,
		21.570820, 19.053574, 16.775204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.210619, 19.752048, 16.466522>,  <20.994448, 19.400187, 16.969254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.210619, 19.752048, 16.466522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.424587, 19.422825, 16.390177>,  <21.552969, 19.225290, 16.344368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.424587, 19.422825, 16.390177>,  <21.210619, 19.752048, 16.466522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.424587, 19.422825, 16.390177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057468, 0.189936, -0.980113,
		0.842945, 0.535252, 0.054301,
		0.534921, -0.823061, -0.190866,
		21.585064, 19.175907, 16.332916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.736481, 19.937323, 16.021294>,  <21.210619, 19.752048, 16.466522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.736481, 19.937323, 16.021294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.703224, 19.542248, 15.968290>,  <21.683270, 19.305202, 15.936488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.703224, 19.542248, 15.968290>,  <21.736481, 19.937323, 16.021294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.703224, 19.542248, 15.968290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133892, 0.142834, -0.980649,
		0.987502, -0.063791, -0.144119,
		-0.083141, -0.987689, -0.132507,
		21.678282, 19.245941, 15.928538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.122232, 19.717674, 15.379636>,  <21.736481, 19.937323, 16.021294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.122232, 19.717674, 15.379636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.836376, 19.446163, 15.447226>,  <21.664862, 19.283257, 15.487780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.836376, 19.446163, 15.447226>,  <22.122232, 19.717674, 15.379636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.836376, 19.446163, 15.447226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266412, 0.040761, -0.962997,
		0.646771, -0.733214, -0.209964,
		-0.714641, -0.678776, 0.168974,
		21.621984, 19.242531, 15.497918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.155045, 19.383457, 14.881457>,  <22.122232, 19.717674, 15.379636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.155045, 19.383457, 14.881457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.799263, 19.254379, 15.010910>,  <21.585794, 19.176933, 15.088582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.799263, 19.254379, 15.010910>,  <22.155045, 19.383457, 14.881457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.799263, 19.254379, 15.010910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335396, -0.020135, -0.941862,
		0.310450, -0.946289, -0.090321,
		-0.889455, -0.322694, 0.323633,
		21.532427, 19.157572, 15.108000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.020889, 18.669975, 14.629375>,  <22.155045, 19.383457, 14.881457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.020889, 18.669975, 14.629375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.663994, 18.830536, 14.712118>,  <21.449858, 18.926872, 14.761765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.663994, 18.830536, 14.712118>,  <22.020889, 18.669975, 14.629375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.663994, 18.830536, 14.712118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217644, 0.019111, -0.975841,
		-0.395658, -0.915703, 0.070311,
		-0.892237, 0.401402, 0.206858,
		21.396322, 18.950956, 14.774176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.590830, 18.305468, 14.167336>,  <22.020889, 18.669975, 14.629375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.590830, 18.305468, 14.167336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.374432, 18.616978, 14.294355>,  <21.244593, 18.803883, 14.370566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.374432, 18.616978, 14.294355>,  <21.590830, 18.305468, 14.167336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.374432, 18.616978, 14.294355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400395, 0.093544, -0.911556,
		-0.739600, -0.620291, 0.261210,
		-0.540995, 0.778774, 0.317546,
		21.212133, 18.850609, 14.389619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.848141, 18.249878, 13.980868>,  <21.590830, 18.305468, 14.167336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.848141, 18.249878, 13.980868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.917198, 18.640141, 14.034962>,  <20.958633, 18.874298, 14.067418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.917198, 18.640141, 14.034962>,  <20.848141, 18.249878, 13.980868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.917198, 18.640141, 14.034962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340710, 0.187974, -0.921185,
		-0.924181, 0.112963, 0.364869,
		0.172646, 0.975656, 0.135234,
		20.968992, 18.932837, 14.075532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.253374, 18.572233, 13.677527>,  <20.848141, 18.249878, 13.980868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.253374, 18.572233, 13.677527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.518154, 18.866764, 13.733595>,  <20.677021, 19.043482, 13.767235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.518154, 18.866764, 13.733595>,  <20.253374, 18.572233, 13.677527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.518154, 18.866764, 13.733595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386275, 0.495370, -0.778075,
		-0.642352, 0.460902, 0.612334,
		0.661948, 0.736327, 0.140168,
		20.716738, 19.087662, 13.775645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.739479, 18.632717, 14.229156>,  <20.253374, 18.572233, 13.677527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.739479, 18.632717, 14.229156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.384163, 18.453735, 14.270576>,  <19.170973, 18.346346, 14.295428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.384163, 18.453735, 14.270576>,  <19.739479, 18.632717, 14.229156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.384163, 18.453735, 14.270576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237339, -0.254194, 0.937580,
		-0.393203, 0.857420, 0.331997,
		-0.888291, -0.447455, 0.103550,
		19.117676, 18.319498, 14.301641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.548187, 18.857273, 14.895618>,  <19.739479, 18.632717, 14.229156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.548187, 18.857273, 14.895618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.349030, 18.526005, 14.792673>,  <19.229536, 18.327244, 14.730906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.349030, 18.526005, 14.792673>,  <19.548187, 18.857273, 14.895618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.349030, 18.526005, 14.792673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278389, -0.433683, 0.856982,
		-0.821341, 0.355039, 0.446482,
		-0.497893, -0.828171, -0.257362,
		19.199661, 18.277554, 14.715465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.274094, 18.761133, 15.527529>,  <19.548187, 18.857273, 14.895618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.274094, 18.761133, 15.527529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.215782, 18.415066, 15.335598>,  <19.180796, 18.207426, 15.220440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.215782, 18.415066, 15.335598>,  <19.274094, 18.761133, 15.527529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.215782, 18.415066, 15.335598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223298, -0.501266, 0.835985,
		-0.963788, 0.014724, 0.266264,
		-0.145778, -0.865168, -0.479826,
		19.172049, 18.155516, 15.191650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.761358, 18.449297, 15.876810>,  <19.274094, 18.761133, 15.527529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.761358, 18.449297, 15.876810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.974407, 18.169052, 15.686882>,  <19.102238, 18.000904, 15.572926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.974407, 18.169052, 15.686882>,  <18.761358, 18.449297, 15.876810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.974407, 18.169052, 15.686882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233583, -0.417544, 0.878120,
		-0.813481, -0.578618, -0.058743,
		0.532623, -0.700613, -0.474820,
		19.134193, 17.958868, 15.544436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.478642, 17.794380, 16.182692>,  <18.761358, 18.449297, 15.876810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.478642, 17.794380, 16.182692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.833672, 17.719212, 16.014458>,  <19.046690, 17.674110, 15.913518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.833672, 17.719212, 16.014458>,  <18.478642, 17.794380, 16.182692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.833672, 17.719212, 16.014458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258215, -0.553129, 0.792069,
		-0.381484, -0.811624, -0.442421,
		0.887578, -0.187922, -0.420583,
		19.099945, 17.662834, 15.888283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.583376, 17.074717, 16.168833>,  <18.478642, 17.794380, 16.182692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.583376, 17.074717, 16.168833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.935944, 17.263241, 16.156395>,  <19.147484, 17.376356, 16.148932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.935944, 17.263241, 16.156395>,  <18.583376, 17.074717, 16.168833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.935944, 17.263241, 16.156395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241143, -0.392413, 0.887616,
		0.406141, -0.789859, -0.459534,
		0.881419, 0.471311, -0.031094,
		19.200369, 17.404634, 16.147066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058687, 16.520826, 16.417990>,  <18.583376, 17.074717, 16.168833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058687, 16.520826, 16.417990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.252331, 16.868778, 16.455824>,  <19.368517, 17.077549, 16.478525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.252331, 16.868778, 16.455824>,  <19.058687, 16.520826, 16.417990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.252331, 16.868778, 16.455824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237696, -0.234771, 0.942541,
		0.842105, -0.433807, -0.320422,
		0.484107, 0.869882, 0.094588,
		19.397562, 17.129744, 16.484200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.604210, 16.345716, 16.724764>,  <19.058687, 16.520826, 16.417990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.604210, 16.345716, 16.724764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.592369, 16.740082, 16.790613>,  <19.585264, 16.976700, 16.830122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.592369, 16.740082, 16.790613>,  <19.604210, 16.345716, 16.724764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.592369, 16.740082, 16.790613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371424, -0.142054, 0.917532,
		0.927992, 0.088306, -0.361986,
		-0.029602, 0.985912, 0.164624,
		19.583488, 17.035856, 16.840000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.246679, 16.576044, 16.924208>,  <19.604210, 16.345716, 16.724764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.246679, 16.576044, 16.924208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.984005, 16.851902, 17.046293>,  <19.826401, 17.017416, 17.119545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.984005, 16.851902, 17.046293>,  <20.246679, 16.576044, 16.924208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.984005, 16.851902, 17.046293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442510, 0.024632, 0.896425,
		0.610696, 0.723729, -0.321351,
		-0.656684, 0.689645, 0.305215,
		19.786999, 17.058796, 17.137857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.623013, 16.938568, 17.378571>,  <20.246679, 16.576044, 16.924208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.623013, 16.938568, 17.378571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.249866, 17.060764, 17.454924>,  <20.025978, 17.134083, 17.500736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.249866, 17.060764, 17.454924>,  <20.623013, 16.938568, 17.378571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.249866, 17.060764, 17.454924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242897, 0.142135, 0.959583,
		0.266011, 0.941527, -0.206796,
		-0.932866, 0.305490, 0.190884,
		19.970007, 17.152411, 17.512188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.617352, 17.588022, 17.727346>,  <20.623013, 16.938568, 17.378571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.617352, 17.588022, 17.727346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.294861, 17.369034, 17.817036>,  <20.101366, 17.237640, 17.870850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.294861, 17.369034, 17.817036>,  <20.617352, 17.588022, 17.727346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.294861, 17.369034, 17.817036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179810, 0.134316, 0.974488,
		-0.563621, 0.825975, -0.009849,
		-0.806225, -0.547471, 0.224222,
		20.052994, 17.204792, 17.884302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.130629, 17.930086, 18.168846>,  <20.617352, 17.588022, 17.727346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.130629, 17.930086, 18.168846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.077736, 17.539574, 18.237419>,  <20.046000, 17.305265, 18.278563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.077736, 17.539574, 18.237419>,  <20.130629, 17.930086, 18.168846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.077736, 17.539574, 18.237419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026784, 0.176405, 0.983953,
		-0.990857, 0.125519, -0.049475,
		-0.132233, -0.976282, 0.171430,
		20.038067, 17.246689, 18.288849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.445223, 17.738024, 18.371937>,  <20.130629, 17.930086, 18.168846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.445223, 17.738024, 18.371937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.679668, 17.450623, 18.521721>,  <19.820335, 17.278181, 18.611591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.679668, 17.450623, 18.521721>,  <19.445223, 17.738024, 18.371937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.679668, 17.450623, 18.521721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212364, 0.309778, 0.926790,
		-0.781901, -0.622728, 0.028982,
		0.586116, -0.718503, 0.374461,
		19.855503, 17.235071, 18.634060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.109089, 17.433352, 18.889095>,  <19.445223, 17.738024, 18.371937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.109089, 17.433352, 18.889095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.495331, 17.366745, 18.968969>,  <19.727076, 17.326780, 19.016893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.495331, 17.366745, 18.968969>,  <19.109089, 17.433352, 18.889095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.495331, 17.366745, 18.968969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142879, 0.301823, 0.942597,
		-0.217231, -0.938709, 0.267650,
		0.965607, -0.166519, 0.199687,
		19.785013, 17.316790, 19.028875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.361593, 16.989290, 18.857470>,  <19.109089, 17.433352, 18.889095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.361593, 16.989290, 18.857470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.035923, 16.883530, 19.064238>,  <17.840521, 16.820074, 19.188299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.035923, 16.883530, 19.064238>,  <18.361593, 16.989290, 18.857470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.035923, 16.883530, 19.064238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543420, 0.033472, -0.838793,
		0.204476, -0.963832, -0.170934,
		-0.814177, -0.264402, 0.516921,
		17.791670, 16.804209, 19.219315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.144344, 16.315132, 18.580818>,  <18.361593, 16.989290, 18.857470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.144344, 16.315132, 18.580818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.850590, 16.534630, 18.740597>,  <17.674337, 16.666328, 18.836464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.850590, 16.534630, 18.740597>,  <18.144344, 16.315132, 18.580818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.850590, 16.534630, 18.740597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482137, -0.007536, -0.876063,
		-0.477725, -0.835956, 0.270104,
		-0.734386, 0.548745, 0.399446,
		17.630274, 16.699253, 18.860430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.542055, 16.003605, 18.384453>,  <18.144344, 16.315132, 18.580818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.542055, 16.003605, 18.384453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.418224, 16.368546, 18.491617>,  <17.343925, 16.587509, 18.555916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.418224, 16.368546, 18.491617>,  <17.542055, 16.003605, 18.384453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.418224, 16.368546, 18.491617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536408, 0.065077, -0.841446,
		-0.785130, -0.404201, 0.469247,
		-0.309577, 0.912352, 0.267911,
		17.325352, 16.642252, 18.571991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.841841, 15.978449, 18.260866>,  <17.542055, 16.003605, 18.384453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.841841, 15.978449, 18.260866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.896893, 16.374615, 18.265533>,  <16.929924, 16.612314, 18.268333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.896893, 16.374615, 18.265533>,  <16.841841, 15.978449, 18.260866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896893, 16.374615, 18.265533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562677, 0.087874, -0.821993,
		-0.815139, 0.106565, 0.569378,
		0.137629, 0.990415, 0.011667,
		16.938181, 16.671740, 18.269033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.204542, 16.389204, 18.146427>,  <16.841841, 15.978449, 18.260866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.204542, 16.389204, 18.146427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.460693, 16.679184, 18.044947>,  <16.614384, 16.853172, 17.984058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.460693, 16.679184, 18.044947>,  <16.204542, 16.389204, 18.146427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.460693, 16.679184, 18.044947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690796, 0.399243, -0.602832,
		-0.335734, 0.561297, 0.756458,
		0.640378, 0.724949, -0.253702,
		16.652807, 16.896669, 17.968836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.804700, 16.998329, 18.039797>,  <16.204542, 16.389204, 18.146427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.804700, 16.998329, 18.039797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.131073, 17.083138, 17.824650>,  <16.326897, 17.134022, 17.695562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.131073, 17.083138, 17.824650>,  <15.804700, 16.998329, 18.039797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.131073, 17.083138, 17.824650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574036, 0.407838, -0.710036,
		0.068821, 0.888097, 0.454476,
		0.815933, 0.212020, -0.537867,
		16.375853, 17.146744, 17.663290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660537, 17.658272, 17.811043>,  <15.804700, 16.998329, 18.039797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.660537, 17.658272, 17.811043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.955537, 17.526905, 17.574997>,  <16.132538, 17.448084, 17.433371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.955537, 17.526905, 17.574997>,  <15.660537, 17.658272, 17.811043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.955537, 17.526905, 17.574997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432099, 0.442066, -0.786046,
		0.519021, 0.834697, 0.184115,
		0.737501, -0.328419, -0.590113,
		16.176786, 17.428379, 17.397963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.997049, 18.254341, 17.434303>,  <15.660537, 17.658272, 17.811043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.997049, 18.254341, 17.434303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.076649, 17.921844, 17.226675>,  <16.124409, 17.722345, 17.102098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.076649, 17.921844, 17.226675>,  <15.997049, 18.254341, 17.434303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.076649, 17.921844, 17.226675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442768, 0.396261, -0.804322,
		0.874275, 0.389886, -0.289192,
		0.198998, -0.831243, -0.519070,
		16.136349, 17.672472, 17.070953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372198, 18.530716, 16.876293>,  <15.997049, 18.254341, 17.434303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.372198, 18.530716, 16.876293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.198570, 18.186222, 16.770569>,  <16.094393, 17.979527, 16.707134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.198570, 18.186222, 16.770569>,  <16.372198, 18.530716, 16.876293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.198570, 18.186222, 16.770569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305939, 0.416878, -0.855928,
		0.847340, -0.290669, -0.444439,
		-0.434069, -0.861234, -0.264311,
		16.068350, 17.927853, 16.691277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.639551, 18.364649, 16.144091>,  <16.372198, 18.530716, 16.876293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.639551, 18.364649, 16.144091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.302429, 18.160267, 16.211739>,  <16.100155, 18.037638, 16.252327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.302429, 18.160267, 16.211739>,  <16.639551, 18.364649, 16.144091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.302429, 18.160267, 16.211739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392430, 0.368343, -0.842806,
		0.368343, -0.776690, -0.510956,
		0.842806, 0.510956, -0.169120,
		16.049587, 18.006981, 16.262474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.557680, 17.939869, 15.524458>,  <16.639551, 18.364649, 16.144091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.557680, 17.939869, 15.524458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.180439, 17.965641, 15.654938>,  <15.954094, 17.981104, 15.733226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.180439, 17.965641, 15.654938>,  <16.557680, 17.939869, 15.524458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.180439, 17.965641, 15.654938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300823, 0.252584, -0.919623,
		-0.141645, -0.965427, -0.218830,
		-0.943102, 0.064431, 0.326200,
		15.897509, 17.984970, 15.752798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176901, 17.561581, 15.048171>,  <16.557680, 17.939869, 15.524458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.176901, 17.561581, 15.048171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.925975, 17.798401, 15.250538>,  <15.775419, 17.940493, 15.371958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.925975, 17.798401, 15.250538>,  <16.176901, 17.561581, 15.048171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.925975, 17.798401, 15.250538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462044, 0.239992, -0.853768,
		-0.626890, -0.769337, 0.123003,
		-0.627315, 0.592051, 0.505916,
		15.737781, 17.976017, 15.402312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696546, 17.483902, 14.564378>,  <16.176901, 17.561581, 15.048171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.696546, 17.483902, 14.564378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.576015, 17.758373, 14.829214>,  <15.503695, 17.923056, 14.988116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.576015, 17.758373, 14.829214>,  <15.696546, 17.483902, 14.564378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.576015, 17.758373, 14.829214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598632, 0.404332, -0.691488,
		-0.742187, -0.604713, 0.288930,
		-0.301328, 0.686176, 0.662090,
		15.485616, 17.964226, 15.027842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.034568, 17.498375, 14.584579>,  <15.696546, 17.483902, 14.564378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.034568, 17.498375, 14.584579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.147388, 17.869137, 14.683611>,  <15.215079, 18.091595, 14.743031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.147388, 17.869137, 14.683611>,  <15.034568, 17.498375, 14.584579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.147388, 17.869137, 14.683611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603800, 0.372038, -0.704992,
		-0.745569, 0.049353, 0.664598,
		0.282049, 0.926904, 0.247581,
		15.232002, 18.147207, 14.757885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.180213, 19.571260, 19.856955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.563741, 19.680077, 19.889599>,  <15.793858, 19.745367, 19.909185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.563741, 19.680077, 19.889599>,  <15.180213, 19.571260, 19.856955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.563741, 19.680077, 19.889599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004587, -0.272472, 0.962153,
		0.283983, -0.922904, -0.260004,
		0.958818, 0.272043, 0.081611,
		15.851386, 19.761690, 19.914082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.465804, 19.020044, 20.220079>,  <15.180213, 19.571260, 19.856955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.465804, 19.020044, 20.220079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.712228, 19.330521, 20.273737>,  <15.860083, 19.516808, 20.305931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.712228, 19.330521, 20.273737>,  <15.465804, 19.020044, 20.220079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.712228, 19.330521, 20.273737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204909, -0.322353, 0.924176,
		0.760580, -0.541860, -0.357637,
		0.616060, 0.776193, 0.134143,
		15.897046, 19.563379, 20.313980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.963756, 18.702065, 20.611431>,  <15.465804, 19.020044, 20.220079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.963756, 18.702065, 20.611431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.005424, 19.095703, 20.668989>,  <16.030426, 19.331886, 20.703524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.005424, 19.095703, 20.668989>,  <15.963756, 18.702065, 20.611431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.005424, 19.095703, 20.668989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182523, -0.161143, 0.969906,
		0.977668, -0.074772, -0.196406,
		0.104172, 0.984094, 0.143897,
		16.036676, 19.390932, 20.712158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.530334, 18.701786, 21.046019>,  <15.963756, 18.702065, 20.611431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.530334, 18.701786, 21.046019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.343914, 19.054752, 21.071747>,  <16.232061, 19.266533, 21.087185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.343914, 19.054752, 21.071747>,  <16.530334, 18.701786, 21.046019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.343914, 19.054752, 21.071747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079686, -0.030541, 0.996352,
		0.881161, 0.469479, -0.056083,
		-0.466053, 0.882415, 0.064322,
		16.204098, 19.319477, 21.091043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.940315, 19.110985, 21.482534>,  <16.530334, 18.701786, 21.046019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.940315, 19.110985, 21.482534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.583504, 19.291481, 21.492868>,  <16.369417, 19.399778, 21.499069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.583504, 19.291481, 21.492868>,  <16.940315, 19.110985, 21.482534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.583504, 19.291481, 21.492868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068997, 0.079462, 0.994447,
		0.446682, 0.888858, -0.102016,
		-0.892028, 0.451240, 0.025834,
		16.315895, 19.426853, 21.500618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121965, 19.649914, 21.866730>,  <16.940315, 19.110985, 21.482534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121965, 19.649914, 21.866730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.727863, 19.582481, 21.878380>,  <16.491402, 19.542023, 21.885370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.727863, 19.582481, 21.878380>,  <17.121965, 19.649914, 21.866730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.727863, 19.582481, 21.878380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019352, 0.059324, 0.998051,
		-0.169980, 0.983901, -0.055187,
		-0.985257, -0.168581, 0.029124,
		16.432285, 19.531908, 21.887117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860546, 20.259834, 22.266769>,  <17.121965, 19.649914, 21.866730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860546, 20.259834, 22.266769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.597641, 19.958370, 22.265902>,  <16.439898, 19.777493, 22.265381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.597641, 19.958370, 22.265902>,  <16.860546, 20.259834, 22.266769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.597641, 19.958370, 22.265902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134180, 0.114185, 0.984356,
		-0.741622, 0.647271, -0.176175,
		-0.657262, -0.753659, -0.002168,
		16.400463, 19.732273, 22.265251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.387316, 20.564669, 22.679703>,  <16.860546, 20.259834, 22.266769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.387316, 20.564669, 22.679703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.342751, 20.168148, 22.651682>,  <16.316011, 19.930235, 22.634869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.342751, 20.168148, 22.651682>,  <16.387316, 20.564669, 22.679703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.342751, 20.168148, 22.651682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098509, -0.059128, 0.993378,
		-0.988880, 0.117575, -0.091065,
		-0.111412, -0.991302, -0.070053,
		16.309326, 19.870758, 22.630667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.853185, 20.435619, 23.202143>,  <16.387316, 20.564669, 22.679703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.853185, 20.435619, 23.202143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.046398, 20.092167, 23.133524>,  <16.162327, 19.886095, 23.092354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.046398, 20.092167, 23.133524>,  <15.853185, 20.435619, 23.202143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.046398, 20.092167, 23.133524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023618, -0.208622, 0.977711,
		-0.875283, -0.468216, -0.121051,
		0.483034, -0.858633, -0.171545,
		16.191309, 19.834578, 23.082060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.664358, 20.124762, 23.814892>,  <15.853185, 20.435619, 23.202143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.664358, 20.124762, 23.814892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.948373, 19.866013, 23.703604>,  <16.118782, 19.710764, 23.636831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.948373, 19.866013, 23.703604>,  <15.664358, 20.124762, 23.814892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.948373, 19.866013, 23.703604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148120, -0.249063, 0.957093,
		-0.688411, -0.720780, -0.081029,
		0.710036, -0.646872, -0.278220,
		16.161383, 19.671951, 23.620138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.612957, 19.477964, 24.196230>,  <15.664358, 20.124762, 23.814892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.612957, 19.477964, 24.196230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.999995, 19.471989, 24.095404>,  <16.232218, 19.468403, 24.034908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.999995, 19.471989, 24.095404>,  <15.612957, 19.477964, 24.196230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.999995, 19.471989, 24.095404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238029, -0.279198, 0.930264,
		-0.084271, -0.960117, -0.266595,
		0.967596, -0.014937, -0.252065,
		16.290274, 19.467506, 24.019785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.914989, 18.793873, 24.417061>,  <15.612957, 19.477964, 24.196230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.914989, 18.793873, 24.417061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.216068, 19.053799, 24.374765>,  <16.396717, 19.209755, 24.349388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.216068, 19.053799, 24.374765>,  <15.914989, 18.793873, 24.417061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.216068, 19.053799, 24.374765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314833, -0.214217, 0.924657,
		0.578207, -0.729279, -0.365825,
		0.752700, 0.649817, -0.105740,
		16.441877, 19.248743, 24.343044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441801, 18.527473, 24.783003>,  <15.914989, 18.793873, 24.417061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.441801, 18.527473, 24.783003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.538475, 18.915092, 24.762880>,  <16.596479, 19.147665, 24.750807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.538475, 18.915092, 24.762880>,  <16.441801, 18.527473, 24.783003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.538475, 18.915092, 24.762880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310705, -0.028169, 0.950089,
		0.919266, -0.245255, -0.307896,
		0.241687, 0.969049, -0.050307,
		16.610981, 19.205807, 24.747787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.082664, 18.560902, 24.824211>,  <16.441801, 18.527473, 24.783003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.082664, 18.560902, 24.824211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.913208, 18.895489, 24.963266>,  <16.811535, 19.096241, 25.046700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.913208, 18.895489, 24.963266>,  <17.082664, 18.560902, 24.824211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.913208, 18.895489, 24.963266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324833, -0.217968, 0.920312,
		0.845584, 0.502806, -0.179372,
		-0.423640, 0.836467, 0.347638,
		16.786116, 19.146429, 25.067558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.665941, 18.087412, 24.584204>,  <17.082664, 18.560902, 24.824211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.665941, 18.087412, 24.584204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.966106, 17.829136, 24.640722>,  <18.146206, 17.674170, 24.674633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.966106, 17.829136, 24.640722>,  <17.665941, 18.087412, 24.584204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.966106, 17.829136, 24.640722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023605, -0.187453, -0.981990,
		0.660548, 0.740233, -0.125425,
		0.750413, -0.645691, 0.141295,
		18.191231, 17.635429, 24.683111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.142105, 18.195883, 24.040377>,  <17.665941, 18.087412, 24.584204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.142105, 18.195883, 24.040377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.249466, 17.838642, 24.184782>,  <18.313883, 17.624298, 24.271425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.249466, 17.838642, 24.184782>,  <18.142105, 18.195883, 24.040377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.249466, 17.838642, 24.184782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032583, -0.366132, -0.929992,
		0.962756, 0.261374, -0.069171,
		0.268402, -0.893102, 0.361012,
		18.329987, 17.570711, 24.293085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688335, 17.968273, 23.604412>,  <18.142105, 18.195883, 24.040377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.688335, 17.968273, 23.604412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.573368, 17.625080, 23.774708>,  <18.504387, 17.419165, 23.876884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.573368, 17.625080, 23.774708>,  <18.688335, 17.968273, 23.604412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573368, 17.625080, 23.774708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066506, -0.461299, -0.884749,
		0.955493, -0.225980, 0.189647,
		-0.287419, -0.857984, 0.425739,
		18.487143, 17.367685, 23.902430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.171770, 17.529499, 23.360603>,  <18.688335, 17.968273, 23.604412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.171770, 17.529499, 23.360603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.844360, 17.331711, 23.477579>,  <18.647915, 17.213037, 23.547764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.844360, 17.331711, 23.477579>,  <19.171770, 17.529499, 23.360603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.844360, 17.331711, 23.477579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025761, -0.476950, -0.878552,
		0.573896, -0.726649, 0.377657,
		-0.818523, -0.494469, 0.292439,
		18.598804, 17.183371, 23.565311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.257252, 16.816853, 23.100698>,  <19.171770, 17.529499, 23.360603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.257252, 16.816853, 23.100698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.863987, 16.840385, 23.169899>,  <18.628029, 16.854506, 23.211420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.863987, 16.840385, 23.169899>,  <19.257252, 16.816853, 23.100698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.863987, 16.840385, 23.169899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181820, -0.409488, -0.894014,
		0.018243, -0.910416, 0.413290,
		-0.983162, 0.058834, 0.173002,
		18.569038, 16.858036, 23.221800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.067173, 16.246685, 22.854822>,  <19.257252, 16.816853, 23.100698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.067173, 16.246685, 22.854822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.719231, 16.444004, 22.853931>,  <18.510466, 16.562395, 22.853397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.719231, 16.444004, 22.853931>,  <19.067173, 16.246685, 22.854822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.719231, 16.444004, 22.853931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177135, -0.316557, -0.931888,
		-0.460405, -0.810214, 0.362740,
		-0.869856, 0.493300, -0.002227,
		18.458273, 16.591993, 22.853264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.609648, 15.776008, 22.460901>,  <19.067173, 16.246685, 22.854822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.609648, 15.776008, 22.460901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.390503, 16.110260, 22.476742>,  <18.259016, 16.310812, 22.486246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.390503, 16.110260, 22.476742>,  <18.609648, 15.776008, 22.460901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.390503, 16.110260, 22.476742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220322, -0.098460, -0.970445,
		-0.807035, -0.540395, 0.238051,
		-0.547862, 0.835631, 0.039600,
		18.226145, 16.360949, 22.488623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846928, 15.631424, 22.193222>,  <18.609648, 15.776008, 22.460901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.846928, 15.631424, 22.193222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.932400, 16.020588, 22.157923>,  <17.983683, 16.254086, 22.136744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.932400, 16.020588, 22.157923>,  <17.846928, 15.631424, 22.193222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.932400, 16.020588, 22.157923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328261, -0.013573, -0.944489,
		-0.920100, 0.230789, 0.316468,
		0.213682, 0.972909, -0.088247,
		17.996504, 16.312460, 22.131449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.314711, 15.858991, 21.836981>,  <17.846928, 15.631424, 22.193222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.314711, 15.858991, 21.836981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.601967, 16.130978, 21.777761>,  <17.774321, 16.294170, 21.742229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.601967, 16.130978, 21.777761>,  <17.314711, 15.858991, 21.836981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.601967, 16.130978, 21.777761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303055, 0.114071, -0.946121,
		-0.626444, 0.724315, 0.287987,
		0.718140, 0.679968, -0.148048,
		17.817410, 16.334969, 21.733347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.024611, 16.411161, 21.478161>,  <17.314711, 15.858991, 21.836981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.024611, 16.411161, 21.478161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.417221, 16.411304, 21.401627>,  <17.652786, 16.411390, 21.355707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.417221, 16.411304, 21.401627>,  <17.024611, 16.411161, 21.478161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.417221, 16.411304, 21.401627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190765, 0.078926, -0.978458,
		0.014752, 0.996880, 0.077536,
		0.981525, 0.000357, -0.191334,
		17.711679, 16.411411, 21.344227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.142126, 16.985544, 21.113327>,  <17.024611, 16.411161, 21.478161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.142126, 16.985544, 21.113327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.473763, 16.785419, 21.013491>,  <17.672745, 16.665344, 20.953588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.473763, 16.785419, 21.013491>,  <17.142126, 16.985544, 21.113327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.473763, 16.785419, 21.013491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114359, 0.285225, -0.951614,
		0.547292, 0.817519, 0.179263,
		0.829092, -0.500310, -0.249592,
		17.722490, 16.635326, 20.938614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.673485, 17.422007, 20.845512>,  <17.142126, 16.985544, 21.113327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.673485, 17.422007, 20.845512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.729427, 17.052380, 20.703222>,  <17.762993, 16.830603, 20.617847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.729427, 17.052380, 20.703222>,  <17.673485, 17.422007, 20.845512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.729427, 17.052380, 20.703222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160297, 0.333388, -0.929063,
		0.977111, 0.186956, -0.101500,
		0.139855, -0.924067, -0.355725,
		17.771383, 16.775160, 20.596504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.195997, 17.514685, 20.330940>,  <17.673485, 17.422007, 20.845512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.195997, 17.514685, 20.330940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.004181, 17.173347, 20.249113>,  <17.889091, 16.968546, 20.200018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.004181, 17.173347, 20.249113>,  <18.195997, 17.514685, 20.330940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.004181, 17.173347, 20.249113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165942, 0.317098, -0.933762,
		0.861686, -0.413832, -0.293667,
		-0.479542, -0.853341, -0.204567,
		17.860317, 16.917345, 20.187742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.481949, 17.347116, 19.592087>,  <18.195997, 17.514685, 20.330940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.481949, 17.347116, 19.592087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.152199, 17.135052, 19.671417>,  <17.954350, 17.007812, 19.719015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.152199, 17.135052, 19.671417>,  <18.481949, 17.347116, 19.592087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.152199, 17.135052, 19.671417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357605, 0.216199, -0.908502,
		0.438778, -0.819868, -0.367818,
		-0.824374, -0.530164, 0.198325,
		17.904886, 16.976002, 19.730915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.196598, 16.999670, 19.670797>,  <18.481949, 17.347116, 19.592087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.196598, 16.999670, 19.670797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.565639, 17.136738, 19.599941>,  <19.787064, 17.218979, 19.557426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.565639, 17.136738, 19.599941>,  <19.196598, 16.999670, 19.670797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.565639, 17.136738, 19.599941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038195, 0.375808, 0.925910,
		0.383873, -0.861007, 0.333630,
		0.922596, 0.342689, -0.177148,
		19.842421, 17.239538, 19.546799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.549425, 16.927370, 20.281677>,  <19.196598, 16.999670, 19.670797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.549425, 16.927370, 20.281677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.800739, 17.173962, 20.091852>,  <19.951529, 17.321917, 19.977957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.800739, 17.173962, 20.091852>,  <19.549425, 16.927370, 20.281677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.800739, 17.173962, 20.091852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286923, 0.383377, 0.877893,
		0.723139, -0.687731, 0.063989,
		0.628287, 0.616480, -0.474561,
		19.989225, 17.358906, 19.949484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.176947, 16.745174, 20.485472>,  <19.549425, 16.927370, 20.281677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.176947, 16.745174, 20.485472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.212349, 17.120541, 20.351877>,  <20.233591, 17.345760, 20.271721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.212349, 17.120541, 20.351877>,  <20.176947, 16.745174, 20.485472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.212349, 17.120541, 20.351877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447477, 0.262104, 0.855024,
		0.889905, -0.225125, -0.396721,
		0.088506, 0.938414, -0.333986,
		20.238901, 17.402065, 20.251682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.950859, 16.906612, 20.548422>,  <20.176947, 16.745174, 20.485472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.950859, 16.906612, 20.548422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.770798, 17.260223, 20.498055>,  <20.662762, 17.472389, 20.467834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.770798, 17.260223, 20.498055>,  <20.950859, 16.906612, 20.548422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.770798, 17.260223, 20.498055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341812, 0.300867, 0.890305,
		0.824940, 0.357733, -0.437608,
		-0.450154, 0.884028, -0.125919,
		20.635752, 17.525433, 20.460279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.433073, 17.229994, 20.928686>,  <20.950859, 16.906612, 20.548422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.433073, 17.229994, 20.928686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.093395, 17.440865, 20.916336>,  <20.889587, 17.567387, 20.908926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.093395, 17.440865, 20.916336>,  <21.433073, 17.229994, 20.928686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.093395, 17.440865, 20.916336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124658, 0.256934, 0.958355,
		0.513153, 0.809983, -0.283904,
		-0.849196, 0.527175, -0.030876,
		20.838636, 17.599016, 20.907074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.678022, 17.852671, 21.330858>,  <21.433073, 17.229994, 20.928686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.678022, 17.852671, 21.330858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.278656, 17.868290, 21.314651>,  <21.039036, 17.877663, 21.304928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.278656, 17.868290, 21.314651>,  <21.678022, 17.852671, 21.330858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.278656, 17.868290, 21.314651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022893, 0.375873, 0.926389,
		0.051404, 0.925848, -0.374383,
		-0.998416, 0.039050, -0.040517,
		20.979132, 17.880005, 21.302496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.448250, 18.544394, 21.576838>,  <21.678022, 17.852671, 21.330858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.448250, 18.544394, 21.576838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.167133, 18.262642, 21.616709>,  <20.998463, 18.093592, 21.640633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.167133, 18.262642, 21.616709>,  <21.448250, 18.544394, 21.576838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.167133, 18.262642, 21.616709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037246, 0.103493, 0.993933,
		-0.710421, 0.702239, -0.046499,
		-0.702790, -0.704379, 0.099679,
		20.956297, 18.051329, 21.646612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.503258, 19.385426, 21.479403>,  <21.448250, 18.544394, 21.576838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.503258, 19.385426, 21.479403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.889942, 19.487064, 21.467382>,  <22.121952, 19.548048, 21.460171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.889942, 19.487064, 21.467382>,  <21.503258, 19.385426, 21.479403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.889942, 19.487064, 21.467382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047775, 0.063869, -0.996814,
		-0.251369, 0.965067, 0.073883,
		0.966712, 0.254098, -0.030052,
		22.179956, 19.563293, 21.458366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.515663, 19.880737, 21.002525>,  <21.503258, 19.385426, 21.479403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.515663, 19.880737, 21.002525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.877468, 19.710392, 21.011427>,  <22.094551, 19.608185, 21.016768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.877468, 19.710392, 21.011427>,  <21.515663, 19.880737, 21.002525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.877468, 19.710392, 21.011427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019319, -0.093047, -0.995474,
		0.426007, 0.899990, -0.092390,
		0.904514, -0.425864, 0.022252,
		22.148823, 19.582632, 21.018103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.953259, 20.186222, 20.391188>,  <21.515663, 19.880737, 21.002525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.953259, 20.186222, 20.391188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.141933, 19.852131, 20.504261>,  <22.255138, 19.651676, 20.572105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.141933, 19.852131, 20.504261>,  <21.953259, 20.186222, 20.391188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.141933, 19.852131, 20.504261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020624, -0.330949, -0.943423,
		0.881525, 0.439170, -0.173330,
		0.471686, -0.835226, 0.282683,
		22.283440, 19.601562, 20.589066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.498751, 20.195940, 19.965296>,  <21.953259, 20.186222, 20.391188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.498751, 20.195940, 19.965296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.407646, 19.827530, 20.091682>,  <22.352983, 19.606483, 20.167515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.407646, 19.827530, 20.091682>,  <22.498751, 20.195940, 19.965296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.407646, 19.827530, 20.091682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089525, -0.303314, -0.948676,
		0.969593, -0.244358, -0.013371,
		-0.227761, -0.921026, 0.315967,
		22.339317, 19.551222, 20.186472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.778246, 19.820278, 19.529087>,  <22.498751, 20.195940, 19.965296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.778246, 19.820278, 19.529087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.534023, 19.544426, 19.684847>,  <22.387489, 19.378916, 19.778303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.534023, 19.544426, 19.684847>,  <22.778246, 19.820278, 19.529087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.534023, 19.544426, 19.684847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051340, -0.456185, -0.888403,
		0.790307, -0.562412, 0.243120,
		-0.610556, -0.689629, 0.389401,
		22.350857, 19.337538, 19.801666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.045879, 19.163939, 19.385284>,  <22.778246, 19.820278, 19.529087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.045879, 19.163939, 19.385284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.653641, 19.115414, 19.446886>,  <22.418299, 19.086300, 19.483847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.653641, 19.115414, 19.446886>,  <23.045879, 19.163939, 19.385284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.653641, 19.115414, 19.446886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065438, -0.537969, -0.840421,
		0.184803, -0.834190, 0.519591,
		-0.980595, -0.121311, 0.154006,
		22.359463, 19.079020, 19.493088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.015007, 18.612425, 19.057764>,  <23.045879, 19.163939, 19.385284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.015007, 18.612425, 19.057764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.623768, 18.683796, 19.100630>,  <22.389025, 18.726620, 19.126350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.623768, 18.683796, 19.100630>,  <23.015007, 18.612425, 19.057764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.623768, 18.683796, 19.100630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154853, -0.279788, -0.947491,
		-0.139077, -0.943335, 0.301290,
		-0.978099, 0.178430, 0.107166,
		22.330338, 18.737326, 19.132780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<20.129454, 20.317467, 24.481768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.729607, 20.321922, 24.471649>,  <19.489698, 20.324594, 24.465578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.729607, 20.321922, 24.471649>,  <20.129454, 20.317467, 24.481768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.729607, 20.321922, 24.471649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027616, 0.438550, -0.898283,
		0.001088, -0.898638, -0.438690,
		-0.999618, 0.011137, -0.025294,
		19.429722, 20.325264, 24.464062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.898325, 20.008511, 23.923235>,  <20.129454, 20.317467, 24.481768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.898325, 20.008511, 23.923235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.556816, 20.204926, 23.992470>,  <19.351912, 20.322775, 24.034010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.556816, 20.204926, 23.992470>,  <19.898325, 20.008511, 23.923235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.556816, 20.204926, 23.992470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050811, 0.409438, -0.910922,
		-0.518163, -0.768924, -0.374516,
		-0.853771, 0.491036, 0.173086,
		19.300684, 20.352236, 24.044395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.427263, 19.881140, 23.326000>,  <19.898325, 20.008511, 23.923235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.427263, 19.881140, 23.326000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.331322, 20.229435, 23.497711>,  <19.273756, 20.438412, 23.600739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.331322, 20.229435, 23.497711>,  <19.427263, 19.881140, 23.326000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.331322, 20.229435, 23.497711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039190, 0.433143, -0.900473,
		-0.970017, -0.232807, -0.069767,
		-0.239856, 0.870740, 0.429280,
		19.259365, 20.490658, 23.626495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.866192, 20.036636, 22.919889>,  <19.427263, 19.881140, 23.326000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.866192, 20.036636, 22.919889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.997662, 20.366249, 23.104473>,  <19.076544, 20.564016, 23.215223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.997662, 20.366249, 23.104473>,  <18.866192, 20.036636, 22.919889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.997662, 20.366249, 23.104473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141066, 0.525956, -0.838732,
		-0.933849, 0.210572, 0.289111,
		0.328673, 0.824032, 0.461459,
		19.096264, 20.613459, 23.242910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400858, 20.477865, 22.620272>,  <18.866192, 20.036636, 22.919889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.400858, 20.477865, 22.620272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.711391, 20.667774, 22.786114>,  <18.897713, 20.781719, 22.885618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.711391, 20.667774, 22.786114>,  <18.400858, 20.477865, 22.620272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.711391, 20.667774, 22.786114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084714, 0.730389, -0.677757,
		-0.624601, 0.491044, 0.607247,
		0.776335, 0.474770, 0.414604,
		18.944292, 20.810205, 22.910496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.202042, 21.192684, 22.800510>,  <18.400858, 20.477865, 22.620272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.202042, 21.192684, 22.800510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.599857, 21.188141, 22.759018>,  <18.838547, 21.185415, 22.734123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.599857, 21.188141, 22.759018>,  <18.202042, 21.192684, 22.800510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.599857, 21.188141, 22.759018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062777, 0.728916, -0.681719,
		0.083355, 0.684509, 0.724224,
		0.994541, -0.011360, -0.103730,
		18.898220, 21.184732, 22.727900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.343056, 21.846304, 22.742725>,  <18.202042, 21.192684, 22.800510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.343056, 21.846304, 22.742725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.673866, 21.663532, 22.611736>,  <18.872353, 21.553869, 22.533142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.673866, 21.663532, 22.611736>,  <18.343056, 21.846304, 22.742725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.673866, 21.663532, 22.611736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015045, 0.600310, -0.799626,
		0.561958, 0.656386, 0.503348,
		0.827029, -0.456930, -0.327474,
		18.921974, 21.526453, 22.513494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.719963, 22.373220, 22.534208>,  <18.343056, 21.846304, 22.742725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.719963, 22.373220, 22.534208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.884327, 22.062149, 22.343893>,  <18.982944, 21.875507, 22.229704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.884327, 22.062149, 22.343893>,  <18.719963, 22.373220, 22.534208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.884327, 22.062149, 22.343893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261307, 0.600449, -0.755764,
		0.873426, 0.186223, 0.449942,
		0.410908, -0.777677, -0.475786,
		19.007599, 21.828846, 22.201157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.362429, 22.620850, 22.342230>,  <18.719963, 22.373220, 22.534208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.362429, 22.620850, 22.342230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.281693, 22.313446, 22.099363>,  <19.233252, 22.129004, 21.953644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.281693, 22.313446, 22.099363>,  <19.362429, 22.620850, 22.342230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.281693, 22.313446, 22.099363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207977, 0.572159, -0.793335,
		0.957082, -0.286403, 0.044348,
		-0.201839, -0.768510, -0.607168,
		19.221140, 22.082893, 21.917213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.743923, 22.743793, 21.697115>,  <19.362429, 22.620850, 22.342230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.743923, 22.743793, 21.697115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.477123, 22.468204, 21.583675>,  <19.317043, 22.302851, 21.515612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.477123, 22.468204, 21.583675>,  <19.743923, 22.743793, 21.697115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.477123, 22.468204, 21.583675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015202, 0.367974, -0.929712,
		0.744904, -0.624428, -0.234964,
		-0.666998, -0.688974, -0.283598,
		19.277023, 22.261513, 21.498596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.943970, 22.573156, 21.041189>,  <19.743923, 22.743793, 21.697115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.943970, 22.573156, 21.041189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.560989, 22.459042, 21.058626>,  <19.331202, 22.390574, 21.069088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.560989, 22.459042, 21.058626>,  <19.943970, 22.573156, 21.041189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560989, 22.459042, 21.058626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109129, 0.218066, -0.969814,
		0.267173, -0.933304, -0.239920,
		-0.957449, -0.285290, 0.043590,
		19.273754, 22.373455, 21.071703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800419, 22.319143, 20.410351>,  <19.943970, 22.573156, 21.041189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800419, 22.319143, 20.410351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.415882, 22.341717, 20.518156>,  <19.185160, 22.355261, 20.582840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.415882, 22.341717, 20.518156>,  <19.800419, 22.319143, 20.410351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.415882, 22.341717, 20.518156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256601, 0.171457, -0.951188,
		-0.099890, -0.983574, -0.150347,
		-0.961342, 0.056435, 0.269513,
		19.127480, 22.358646, 20.599010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.547676, 21.958006, 20.553713>,  <19.800419, 22.319143, 20.410351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.547676, 21.958006, 20.553713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.699440, 22.256622, 20.335089>,  <20.790499, 22.435791, 20.203915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.699440, 22.256622, 20.335089>,  <20.547676, 21.958006, 20.553713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.699440, 22.256622, 20.335089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301422, 0.458769, 0.835869,
		0.874753, -0.481881, -0.050963,
		0.379409, 0.746540, -0.546559,
		20.813263, 22.480585, 20.171122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.229252, 22.000980, 20.798437>,  <20.547676, 21.958006, 20.553713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.229252, 22.000980, 20.798437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.149559, 22.353325, 20.626677>,  <21.101744, 22.564732, 20.523621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.149559, 22.353325, 20.626677>,  <21.229252, 22.000980, 20.798437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.149559, 22.353325, 20.626677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345144, 0.473185, 0.810538,
		0.917159, 0.013281, -0.398300,
		-0.199234, 0.880863, -0.429402,
		21.089788, 22.617584, 20.497856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.833607, 22.329786, 20.776758>,  <21.229252, 22.000980, 20.798437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.833607, 22.329786, 20.776758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.578072, 22.634007, 20.730377>,  <21.424751, 22.816540, 20.702549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.578072, 22.634007, 20.730377>,  <21.833607, 22.329786, 20.776758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.578072, 22.634007, 20.730377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467905, 0.503736, 0.726165,
		0.610697, 0.409646, -0.677672,
		-0.638838, 0.760553, -0.115955,
		21.386419, 22.862173, 20.695591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.309540, 22.939848, 20.724676>,  <21.833607, 22.329786, 20.776758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.309540, 22.939848, 20.724676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.938442, 23.058495, 20.815283>,  <21.715784, 23.129683, 20.869648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.938442, 23.058495, 20.815283>,  <22.309540, 22.939848, 20.724676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.938442, 23.058495, 20.815283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355772, 0.519466, 0.776905,
		0.112772, 0.801358, -0.587459,
		-0.927744, 0.296615, 0.226519,
		21.660118, 23.147478, 20.883238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.336245, 23.658484, 20.836618>,  <22.309540, 22.939848, 20.724676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.336245, 23.658484, 20.836618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.005943, 23.565720, 21.042278>,  <21.807762, 23.510061, 21.165674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.005943, 23.565720, 21.042278>,  <22.336245, 23.658484, 20.836618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.005943, 23.565720, 21.042278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369359, 0.466584, 0.803662,
		-0.426270, 0.853532, -0.299626,
		-0.825753, -0.231907, 0.514151,
		21.758217, 23.496147, 21.196524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.101770, 24.245401, 21.315836>,  <22.336245, 23.658484, 20.836618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.101770, 24.245401, 21.315836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.927689, 23.919651, 21.469400>,  <21.823240, 23.724201, 21.561539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.927689, 23.919651, 21.469400>,  <22.101770, 24.245401, 21.315836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.927689, 23.919651, 21.469400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434411, 0.183554, 0.881813,
		-0.788596, 0.550545, 0.273890,
		-0.435204, -0.814376, 0.383913,
		21.797127, 23.675339, 21.584574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.141895, 24.349903, 21.969177>,  <22.101770, 24.245401, 21.315836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.141895, 24.349903, 21.969177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.021873, 23.968815, 21.988312>,  <21.949860, 23.740162, 21.999792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.021873, 23.968815, 21.988312>,  <22.141895, 24.349903, 21.969177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.021873, 23.968815, 21.988312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358524, -0.066160, 0.931173,
		-0.883984, 0.296553, 0.361426,
		-0.300054, -0.952722, 0.047837,
		21.931858, 23.682999, 22.002663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.802366, 24.204206, 22.643715>,  <22.141895, 24.349903, 21.969177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.802366, 24.204206, 22.643715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.878166, 23.827461, 22.532732>,  <21.923645, 23.601414, 22.466143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.878166, 23.827461, 22.532732>,  <21.802366, 24.204206, 22.643715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.878166, 23.827461, 22.532732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178308, -0.244871, 0.953019,
		-0.965555, -0.230068, 0.121539,
		0.189498, -0.941863, -0.277459,
		21.935015, 23.544903, 22.449493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.416714, 23.732822, 23.140144>,  <21.802366, 24.204206, 22.643715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.416714, 23.732822, 23.140144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.734177, 23.555679, 22.973297>,  <21.924654, 23.449394, 22.873188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.734177, 23.555679, 22.973297>,  <21.416714, 23.732822, 23.140144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.734177, 23.555679, 22.973297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188138, -0.473362, 0.860542,
		-0.578546, -0.761450, -0.292367,
		0.793655, -0.442858, -0.417119,
		21.972273, 23.422823, 22.848162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.362013, 23.074617, 23.414886>,  <21.416714, 23.732822, 23.140144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.362013, 23.074617, 23.414886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.744370, 23.131420, 23.312044>,  <21.973783, 23.165503, 23.250340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.744370, 23.131420, 23.312044>,  <21.362013, 23.074617, 23.414886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.744370, 23.131420, 23.312044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291139, -0.573796, 0.765504,
		-0.038819, -0.806593, -0.589831,
		0.955893, 0.142007, -0.257105,
		22.031137, 23.174023, 23.234913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.684517, 22.385834, 23.616146>,  <21.362013, 23.074617, 23.414886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.684517, 22.385834, 23.616146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.994312, 22.620106, 23.520523>,  <22.180189, 22.760668, 23.463150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.994312, 22.620106, 23.520523>,  <21.684517, 22.385834, 23.616146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.994312, 22.620106, 23.520523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575087, -0.494454, 0.651760,
		0.263519, -0.642259, -0.719765,
		0.774489, 0.585678, -0.239057,
		22.226660, 22.795809, 23.448807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.165361, 22.026268, 23.296606>,  <21.684517, 22.385834, 23.616146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.165361, 22.026268, 23.296606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.332405, 22.333675, 23.490505>,  <22.432632, 22.518120, 23.606844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.332405, 22.333675, 23.490505>,  <22.165361, 22.026268, 23.296606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.332405, 22.333675, 23.490505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398586, -0.634368, 0.662350,
		0.816536, -0.083391, -0.571240,
		0.417611, 0.768520, 0.484746,
		22.457687, 22.564232, 23.635929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.902723, 21.788446, 23.415682>,  <22.165361, 22.026268, 23.296606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.902723, 21.788446, 23.415682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.796646, 22.065140, 23.684361>,  <22.733000, 22.231155, 23.845568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.796646, 22.065140, 23.684361>,  <22.902723, 21.788446, 23.415682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.796646, 22.065140, 23.684361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369307, -0.570642, 0.733471,
		0.890665, 0.442576, -0.104130,
		-0.265195, 0.691733, 0.671697,
		22.717087, 22.272659, 23.885870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.576330, 21.884798, 23.829861>,  <22.902723, 21.788446, 23.415682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.576330, 21.884798, 23.829861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.265198, 22.025028, 24.038504>,  <23.078518, 22.109165, 24.163691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.265198, 22.025028, 24.038504>,  <23.576330, 21.884798, 23.829861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.265198, 22.025028, 24.038504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437030, -0.294724, 0.849790,
		0.451644, 0.888952, 0.076035,
		-0.777832, 0.350573, 0.521609,
		23.031849, 22.130199, 24.194986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.208612, 21.122366, 23.935959>,  <23.576330, 21.884798, 23.829861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.208612, 21.122366, 23.935959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.146832, 20.730625, 23.988132>,  <23.109762, 20.495581, 24.019436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.146832, 20.730625, 23.988132>,  <23.208612, 21.122366, 23.935959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.146832, 20.730625, 23.988132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057242, -0.122927, -0.990764,
		0.986341, -0.160491, -0.037074,
		-0.154451, -0.979353, 0.130435,
		23.100496, 20.436819, 24.027264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.717039, 20.808054, 23.556837>,  <23.208612, 21.122366, 23.935959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.717039, 20.808054, 23.556837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.400940, 20.566559, 23.598799>,  <23.211281, 20.421661, 23.623976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.400940, 20.566559, 23.598799>,  <23.717039, 20.808054, 23.556837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.400940, 20.566559, 23.598799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044097, -0.114718, -0.992419,
		0.611196, -0.788884, 0.064033,
		-0.790249, -0.603739, 0.104903,
		23.163864, 20.385437, 23.630270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.834063, 20.220299, 23.069302>,  <23.717039, 20.808054, 23.556837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.834063, 20.220299, 23.069302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.445473, 20.185848, 23.157679>,  <23.212318, 20.165178, 23.210705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.445473, 20.185848, 23.157679>,  <23.834063, 20.220299, 23.069302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.445473, 20.185848, 23.157679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172927, -0.380236, -0.908579,
		0.162264, -0.920870, 0.354497,
		-0.971477, -0.086128, 0.220942,
		23.154030, 20.160009, 23.223961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.628843, 19.589594, 22.934484>,  <23.834063, 20.220299, 23.069302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.628843, 19.589594, 22.934484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.268105, 19.762005, 22.946424>,  <23.051662, 19.865452, 22.953588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.268105, 19.762005, 22.946424>,  <23.628843, 19.589594, 22.934484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.268105, 19.762005, 22.946424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252926, -0.470660, -0.845286,
		-0.350287, -0.769869, 0.533480,
		-0.901847, 0.431024, 0.029854,
		22.997551, 19.891312, 22.955379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.145300, 19.083494, 22.646294>,  <23.628843, 19.589594, 22.934484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.145300, 19.083494, 22.646294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.928356, 19.419136, 22.629557>,  <22.798189, 19.620522, 22.619514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.928356, 19.419136, 22.629557>,  <23.145300, 19.083494, 22.646294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.928356, 19.419136, 22.629557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437555, -0.324633, -0.838546,
		-0.717210, -0.436486, 0.543222,
		-0.542361, 0.839103, -0.041843,
		22.765648, 19.670866, 22.617004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.413200, 18.760370, 22.391289>,  <23.145300, 19.083494, 22.646294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.413200, 18.760370, 22.391289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.445057, 19.153004, 22.321833>,  <22.464170, 19.388584, 22.280159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.445057, 19.153004, 22.321833>,  <22.413200, 18.760370, 22.391289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.445057, 19.153004, 22.321833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402999, -0.127620, -0.906258,
		-0.911729, 0.142152, 0.385414,
		0.079640, 0.981583, -0.173642,
		22.468948, 19.447479, 22.269739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.742603, 19.016636, 22.139034>,  <22.413200, 18.760370, 22.391289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.742603, 19.016636, 22.139034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.034489, 19.256214, 22.007105>,  <22.209620, 19.399961, 21.927946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.034489, 19.256214, 22.007105>,  <21.742603, 19.016636, 22.139034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.034489, 19.256214, 22.007105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379967, -0.045826, -0.923864,
		-0.568457, 0.799479, 0.194139,
		0.729713, 0.598944, -0.329826,
		22.253403, 19.435898, 21.908157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.951796, 18.922293, 21.957632>,  <21.742603, 19.016636, 22.139034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.951796, 18.922293, 21.957632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.808884, 18.550739, 21.996670>,  <20.723137, 18.327806, 22.020092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.808884, 18.550739, 21.996670>,  <20.951796, 18.922293, 21.957632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.808884, 18.550739, 21.996670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117119, 0.059108, 0.991357,
		-0.926625, 0.365622, 0.087672,
		-0.357280, -0.928885, 0.097592,
		20.701700, 18.272074, 22.025948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.349871, 18.867065, 22.418636>,  <20.951796, 18.922293, 21.957632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.349871, 18.867065, 22.418636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.470757, 18.486641, 22.444408>,  <20.543287, 18.258387, 22.459871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.470757, 18.486641, 22.444408>,  <20.349871, 18.867065, 22.418636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.470757, 18.486641, 22.444408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087481, 0.039636, 0.995377,
		-0.949217, -0.306454, -0.071222,
		0.302214, -0.951060, 0.064432,
		20.561420, 18.201323, 22.463737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.903481, 18.559652, 22.871603>,  <20.349871, 18.867065, 22.418636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.903481, 18.559652, 22.871603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.220760, 18.316128, 22.866196>,  <20.411127, 18.170013, 22.862951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.220760, 18.316128, 22.866196>,  <19.903481, 18.559652, 22.871603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.220760, 18.316128, 22.866196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157354, -0.226358, 0.961250,
		-0.588282, -0.760335, -0.275346,
		0.793198, -0.608813, -0.013520,
		20.458719, 18.133484, 22.862139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.730598, 17.977985, 23.329540>,  <19.903481, 18.559652, 22.871603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.730598, 17.977985, 23.329540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.129459, 17.970242, 23.300373>,  <20.368776, 17.965595, 23.282873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.129459, 17.970242, 23.300373>,  <19.730598, 17.977985, 23.329540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.129459, 17.970242, 23.300373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072212, -0.034901, 0.996778,
		-0.021840, -0.999203, -0.033404,
		0.997150, -0.019358, -0.072916,
		20.428604, 17.964434, 23.278498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.988194, 17.417227, 23.776495>,  <19.730598, 17.977985, 23.329540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.988194, 17.417227, 23.776495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.281452, 17.685894, 23.733860>,  <20.457407, 17.847094, 23.708279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.281452, 17.685894, 23.733860>,  <19.988194, 17.417227, 23.776495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.281452, 17.685894, 23.733860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141430, 0.002720, 0.989945,
		0.665203, -0.740848, -0.093000,
		0.733145, 0.671668, -0.106587,
		20.501396, 17.887394, 23.701883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.536705, 17.192932, 24.074816>,  <19.988194, 17.417227, 23.776495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.536705, 17.192932, 24.074816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.609375, 17.586269, 24.077072>,  <20.652977, 17.822271, 24.078426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.609375, 17.586269, 24.077072>,  <20.536705, 17.192932, 24.074816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.609375, 17.586269, 24.077072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141272, -0.031775, 0.989461,
		0.973158, -0.178964, -0.144691,
		0.181676, 0.983343, 0.005640,
		20.663877, 17.881271, 24.078764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.075109, 17.403008, 24.589214>,  <20.536705, 17.192932, 24.074816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.075109, 17.403008, 24.589214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.921040, 17.768513, 24.537550>,  <20.828598, 17.987816, 24.506552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.921040, 17.768513, 24.537550>,  <21.075109, 17.403008, 24.589214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.921040, 17.768513, 24.537550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068605, 0.167926, 0.983410,
		0.920291, 0.369922, -0.127369,
		-0.385173, 0.913761, -0.129163,
		20.805487, 18.042641, 24.498800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.515982, 17.835550, 24.926374>,  <21.075109, 17.403008, 24.589214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.515982, 17.835550, 24.926374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.156216, 18.008034, 24.897778>,  <20.940355, 18.111523, 24.880619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.156216, 18.008034, 24.897778>,  <21.515982, 17.835550, 24.926374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.156216, 18.008034, 24.897778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019263, 0.202503, 0.979092,
		0.436668, 0.879235, -0.190440,
		-0.899416, 0.431207, -0.071490,
		20.886391, 18.137396, 24.876331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.574783, 18.492222, 25.248669>,  <21.515982, 17.835550, 24.926374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.574783, 18.492222, 25.248669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.183212, 18.411461, 25.236418>,  <20.948271, 18.363005, 25.229067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.183212, 18.411461, 25.236418>,  <21.574783, 18.492222, 25.248669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.183212, 18.411461, 25.236418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079504, 0.238647, 0.967846,
		-0.188101, 0.949886, -0.249670,
		-0.978926, -0.201903, -0.030630,
		20.889534, 18.350889, 25.227228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.113913, 19.861076, 10.038659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.767174, 20.025139, 10.152041>,  <17.559130, 20.123577, 10.220071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.767174, 20.025139, 10.152041>,  <18.113913, 19.861076, 10.038659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.767174, 20.025139, 10.152041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238029, -0.159095, 0.958139,
		0.438084, 0.898031, 0.040282,
		-0.866848, 0.410157, 0.283455,
		17.507120, 20.148186, 10.237078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.262436, 20.278910, 10.681752>,  <18.113913, 19.861076, 10.038659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.262436, 20.278910, 10.681752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.871204, 20.196514, 10.669540>,  <17.636465, 20.147078, 10.662213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.871204, 20.196514, 10.669540>,  <18.262436, 20.278910, 10.681752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.871204, 20.196514, 10.669540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013238, -0.207816, 0.978078,
		-0.207816, 0.956233, 0.205988,
		-0.978078, -0.205988, -0.030529,
		17.577782, 20.134718, 10.660381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816050, 20.740797, 11.138130>,  <18.262436, 20.278910, 10.681752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.816050, 20.740797, 11.138130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.573589, 20.425472, 11.095904>,  <17.428112, 20.236277, 11.070569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.573589, 20.425472, 11.095904>,  <17.816050, 20.740797, 11.138130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.573589, 20.425472, 11.095904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097640, -0.057968, 0.993532,
		-0.789333, 0.612539, -0.041833,
		-0.606152, -0.788312, -0.105565,
		17.391745, 20.188978, 11.064235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.556797, 20.704632, 11.773952>,  <17.816050, 20.740797, 11.138130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.556797, 20.704632, 11.773952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.465424, 20.348904, 11.615496>,  <17.410601, 20.135468, 11.520422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.465424, 20.348904, 11.615496>,  <17.556797, 20.704632, 11.773952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.465424, 20.348904, 11.615496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021328, -0.411374, 0.911217,
		-0.973326, 0.199703, 0.112938,
		-0.228433, -0.889320, -0.396142,
		17.396894, 20.082108, 11.496653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.078505, 20.459387, 12.204773>,  <17.556797, 20.704632, 11.773952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.078505, 20.459387, 12.204773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.236210, 20.139050, 12.024460>,  <17.330833, 19.946846, 11.916272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.236210, 20.139050, 12.024460>,  <17.078505, 20.459387, 12.204773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.236210, 20.139050, 12.024460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234085, -0.386821, 0.891949,
		-0.888685, -0.457184, 0.034957,
		0.394263, -0.800845, -0.450782,
		17.354488, 19.898796, 11.889225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860558, 19.964447, 12.607656>,  <17.078505, 20.459387, 12.204773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860558, 19.964447, 12.607656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.165710, 19.792511, 12.414474>,  <17.348803, 19.689350, 12.298564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.165710, 19.792511, 12.414474>,  <16.860558, 19.964447, 12.607656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.165710, 19.792511, 12.414474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335838, -0.374849, 0.864119,
		-0.552468, -0.821417, -0.141610,
		0.762885, -0.429840, -0.482955,
		17.394575, 19.663559, 12.269588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858326, 19.215654, 12.787049>,  <16.860558, 19.964447, 12.607656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.858326, 19.215654, 12.787049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.230991, 19.240524, 12.643867>,  <17.454592, 19.255447, 12.557957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.230991, 19.240524, 12.643867>,  <16.858326, 19.215654, 12.787049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.230991, 19.240524, 12.643867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322274, -0.596324, 0.735212,
		-0.167746, -0.800332, -0.575612,
		0.931666, 0.062176, -0.357957,
		17.510490, 19.259176, 12.536479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160601, 18.506500, 12.731317>,  <16.858326, 19.215654, 12.787049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160601, 18.506500, 12.731317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.471886, 18.754871, 12.768912>,  <17.658657, 18.903894, 12.791470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.471886, 18.754871, 12.768912>,  <17.160601, 18.506500, 12.731317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.471886, 18.754871, 12.768912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385197, -0.590163, 0.709458,
		0.495990, -0.515905, -0.698452,
		0.778214, 0.620926, 0.093990,
		17.705349, 18.941149, 12.797110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.707714, 18.103666, 12.768761>,  <17.160601, 18.506500, 12.731317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.707714, 18.103666, 12.768761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.874699, 18.432545, 12.923534>,  <17.974890, 18.629871, 13.016398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.874699, 18.432545, 12.923534>,  <17.707714, 18.103666, 12.768761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.874699, 18.432545, 12.923534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521077, -0.565449, 0.639333,
		0.744448, -0.065276, -0.664481,
		0.417463, 0.822196, 0.386934,
		17.999937, 18.679203, 13.039615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.424429, 17.858595, 12.811426>,  <17.707714, 18.103666, 12.768761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.424429, 17.858595, 12.811426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.382240, 18.187740, 13.034773>,  <18.356926, 18.385227, 13.168780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.382240, 18.187740, 13.034773>,  <18.424429, 17.858595, 12.811426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.382240, 18.187740, 13.034773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520485, -0.432763, 0.736079,
		0.847332, 0.368258, -0.382643,
		-0.105473, 0.822863, 0.558366,
		18.350597, 18.434599, 13.202283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.033390, 17.956091, 13.130859>,  <18.424429, 17.858595, 12.811426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.033390, 17.956091, 13.130859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.821838, 18.202568, 13.364302>,  <18.694908, 18.350454, 13.504367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.821838, 18.202568, 13.364302>,  <19.033390, 17.956091, 13.130859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.821838, 18.202568, 13.364302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458109, -0.371598, 0.807497,
		0.714440, 0.694423, -0.085753,
		-0.528878, 0.616192, 0.583606,
		18.663176, 18.387426, 13.539384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.556055, 18.471766, 13.534555>,  <19.033390, 17.956091, 13.130859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.556055, 18.471766, 13.534555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.210686, 18.419567, 13.729481>,  <19.003464, 18.388248, 13.846436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.210686, 18.419567, 13.729481>,  <19.556055, 18.471766, 13.534555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.210686, 18.419567, 13.729481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500211, -0.346880, 0.793387,
		0.065507, 0.928787, 0.364778,
		-0.863422, -0.130494, 0.487313,
		18.951658, 18.380419, 13.875674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.812231, 19.181507, 13.662597>,  <19.556055, 18.471766, 13.534555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.812231, 19.181507, 13.662597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.188568, 19.290237, 13.581673>,  <20.414370, 19.355476, 13.533118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.188568, 19.290237, 13.581673>,  <19.812231, 19.181507, 13.662597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.188568, 19.290237, 13.581673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329586, 0.595457, -0.732669,
		-0.078691, 0.756004, 0.649820,
		0.940840, 0.271826, -0.202311,
		20.470819, 19.371786, 13.520979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.828888, 19.849684, 13.530614>,  <19.812231, 19.181507, 13.662597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.828888, 19.849684, 13.530614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.190960, 19.770748, 13.380037>,  <20.408203, 19.723387, 13.289691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.190960, 19.770748, 13.380037>,  <19.828888, 19.849684, 13.530614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.190960, 19.770748, 13.380037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220492, 0.539162, -0.812827,
		0.363365, 0.818756, 0.444527,
		0.905179, -0.197338, -0.376442,
		20.462513, 19.711546, 13.267105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.217995, 20.489714, 13.346894>,  <19.828888, 19.849684, 13.530614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.217995, 20.489714, 13.346894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.322880, 20.182343, 13.113394>,  <20.385811, 19.997921, 12.973293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.322880, 20.182343, 13.113394>,  <20.217995, 20.489714, 13.346894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.322880, 20.182343, 13.113394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026553, 0.610433, -0.791623,
		0.964645, 0.192072, 0.180467,
		0.262211, -0.768427, -0.583751,
		20.401543, 19.951815, 12.938269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.664911, 20.761646, 12.922664>,  <20.217995, 20.489714, 13.346894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.664911, 20.761646, 12.922664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.587181, 20.420525, 12.728772>,  <20.540543, 20.215851, 12.612437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.587181, 20.420525, 12.728772>,  <20.664911, 20.761646, 12.922664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.587181, 20.420525, 12.728772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067929, 0.504662, -0.860640,
		0.978582, -0.134318, -0.155999,
		-0.194327, -0.852804, -0.484730,
		20.528883, 20.164684, 12.583353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.104126, 20.704624, 12.360602>,  <20.664911, 20.761646, 12.922664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.104126, 20.704624, 12.360602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.836922, 20.426144, 12.255479>,  <20.676600, 20.259056, 12.192405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.836922, 20.426144, 12.255479>,  <21.104126, 20.704624, 12.360602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.836922, 20.426144, 12.255479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043942, 0.315645, -0.947859,
		0.742855, -0.644726, -0.180261,
		-0.668008, -0.696201, -0.262809,
		20.636518, 20.217283, 12.176636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.443270, 20.274296, 11.843521>,  <21.104126, 20.704624, 12.360602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.443270, 20.274296, 11.843521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.051426, 20.227570, 11.778141>,  <20.816319, 20.199533, 11.738913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.051426, 20.227570, 11.778141>,  <21.443270, 20.274296, 11.843521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.051426, 20.227570, 11.778141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127389, 0.267934, -0.954978,
		0.155350, -0.956329, -0.247590,
		-0.979611, -0.116815, -0.163449,
		20.757542, 20.192524, 11.729106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.368025, 19.799074, 11.132971>,  <21.443270, 20.274296, 11.843521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.368025, 19.799074, 11.132971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.009838, 19.956539, 11.216084>,  <20.794926, 20.051018, 11.265952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.009838, 19.956539, 11.216084>,  <21.368025, 19.799074, 11.132971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.009838, 19.956539, 11.216084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265265, -0.097071, -0.959277,
		-0.357461, -0.914116, 0.191348,
		-0.895464, 0.393662, 0.207783,
		20.741199, 20.074638, 11.278419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.864799, 19.436733, 10.667879>,  <21.368025, 19.799074, 11.132971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.864799, 19.436733, 10.667879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.712128, 19.790604, 10.774962>,  <20.620525, 20.002926, 10.839212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.712128, 19.790604, 10.774962>,  <20.864799, 19.436733, 10.667879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.712128, 19.790604, 10.774962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367884, 0.120301, -0.922057,
		-0.847928, -0.450416, 0.279542,
		-0.381680, 0.884677, 0.267707,
		20.597624, 20.056007, 10.855274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.130547, 19.474115, 10.374812>,  <20.864799, 19.436733, 10.667879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.130547, 19.474115, 10.374812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.258461, 19.849403, 10.427691>,  <20.335209, 20.074577, 10.459417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.258461, 19.849403, 10.427691>,  <20.130547, 19.474115, 10.374812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.258461, 19.849403, 10.427691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310587, 0.235614, -0.920881,
		-0.895139, 0.253426, 0.366745,
		0.319786, 0.938222, 0.132196,
		20.354397, 20.130871, 10.467349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.811411, 19.872139, 9.878925>,  <20.130547, 19.474115, 10.374812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.811411, 19.872139, 9.878925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.094036, 20.126301, 10.003524>,  <20.263611, 20.278797, 10.078283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.094036, 20.126301, 10.003524>,  <19.811411, 19.872139, 9.878925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.094036, 20.126301, 10.003524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087493, 0.358369, -0.929471,
		-0.702220, 0.683984, 0.197617,
		0.706564, 0.635403, 0.311497,
		20.306005, 20.316921, 10.096973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.531336, 20.630573, 9.787358>,  <19.811411, 19.872139, 9.878925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.531336, 20.630573, 9.787358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.930820, 20.639214, 9.805737>,  <20.170511, 20.644398, 9.816764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.930820, 20.639214, 9.805737>,  <19.531336, 20.630573, 9.787358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.930820, 20.639214, 9.805737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031766, 0.440130, -0.897372,
		-0.039605, 0.897674, 0.438876,
		0.998710, 0.021599, 0.045947,
		20.230434, 20.645693, 9.819521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.734833, 21.416706, 9.589531>,  <19.531336, 20.630573, 9.787358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.734833, 21.416706, 9.589531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.041264, 21.168018, 9.524305>,  <20.225122, 21.018805, 9.485169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.041264, 21.168018, 9.524305>,  <19.734833, 21.416706, 9.589531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.041264, 21.168018, 9.524305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204761, 0.476546, -0.854972,
		0.609262, 0.621584, 0.492375,
		0.766076, -0.621722, -0.163065,
		20.271086, 20.981503, 9.475386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233273, 21.821486, 9.374500>,  <19.734833, 21.416706, 9.589531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233273, 21.821486, 9.374500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.371231, 21.460632, 9.270809>,  <20.454006, 21.244120, 9.208594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.371231, 21.460632, 9.270809>,  <20.233273, 21.821486, 9.374500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.371231, 21.460632, 9.270809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242277, 0.352377, -0.903954,
		0.906834, 0.248966, 0.340100,
		0.344897, -0.902134, -0.259229,
		20.474701, 21.189991, 9.193041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.857929, 21.917381, 9.021702>,  <20.233273, 21.821486, 9.374500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.857929, 21.917381, 9.021702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.704090, 21.567604, 8.903425>,  <20.611786, 21.357738, 8.832459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.704090, 21.567604, 8.903425>,  <20.857929, 21.917381, 9.021702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.704090, 21.567604, 8.903425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050634, 0.299862, -0.952638,
		0.921693, -0.381356, -0.071050,
		-0.384600, -0.874443, -0.295690,
		20.588711, 21.305271, 8.814718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.816076, 22.635946, 9.408012>,  <20.857929, 21.917381, 9.021702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.816076, 22.635946, 9.408012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.576275, 22.939159, 9.305265>,  <20.432394, 23.121088, 9.243617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.576275, 22.939159, 9.305265>,  <20.816076, 22.635946, 9.408012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.576275, 22.939159, 9.305265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275029, 0.496500, 0.823314,
		0.751636, 0.422933, -0.506134,
		-0.599502, 0.758034, -0.256868,
		20.396423, 23.166569, 9.228205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127695, 23.187300, 9.444475>,  <20.816076, 22.635946, 9.408012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127695, 23.187300, 9.444475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.754681, 23.311108, 9.518850>,  <20.530872, 23.385393, 9.563476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.754681, 23.311108, 9.518850>,  <21.127695, 23.187300, 9.444475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.754681, 23.311108, 9.518850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285915, 0.318492, 0.903778,
		0.220518, 0.895969, -0.385502,
		-0.932537, 0.309520, 0.185938,
		20.474920, 23.403963, 9.574632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.136131, 23.799372, 9.674192>,  <21.127695, 23.187300, 9.444475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.136131, 23.799372, 9.674192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.786022, 23.654392, 9.802271>,  <20.575956, 23.567404, 9.879118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.786022, 23.654392, 9.802271>,  <21.136131, 23.799372, 9.674192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.786022, 23.654392, 9.802271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255810, 0.214905, 0.942538,
		-0.410434, 0.906888, -0.095382,
		-0.875274, -0.362450, 0.320196,
		20.523439, 23.545658, 9.898330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.795923, 24.282450, 10.252032>,  <21.136131, 23.799372, 9.674192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.795923, 24.282450, 10.252032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.655460, 23.911598, 10.304367>,  <20.571182, 23.689087, 10.335768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.655460, 23.911598, 10.304367>,  <20.795923, 24.282450, 10.252032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.655460, 23.911598, 10.304367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131777, 0.089408, 0.987239,
		-0.926997, 0.363917, 0.090778,
		-0.351157, -0.927130, 0.130837,
		20.550114, 23.633459, 10.343618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.424414, 24.290533, 10.894776>,  <20.795923, 24.282450, 10.252032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.424414, 24.290533, 10.894776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.519707, 23.904343, 10.852636>,  <20.576881, 23.672628, 10.827353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.519707, 23.904343, 10.852636>,  <20.424414, 24.290533, 10.894776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.519707, 23.904343, 10.852636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023776, -0.114237, 0.993169,
		-0.970917, -0.234099, -0.050170,
		0.238231, -0.965478, -0.105349,
		20.591175, 23.614698, 10.821032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.968287, 23.862404, 11.258806>,  <20.424414, 24.290533, 10.894776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.968287, 23.862404, 11.258806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.288441, 23.628925, 11.204134>,  <20.480534, 23.488838, 11.171330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.288441, 23.628925, 11.204134>,  <19.968287, 23.862404, 11.258806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.288441, 23.628925, 11.204134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033449, -0.184159, 0.982327,
		-0.598552, -0.790812, -0.127874,
		0.800386, -0.583696, -0.136680,
		20.528557, 23.453817, 11.163130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.848444, 23.263395, 11.567771>,  <19.968287, 23.862404, 11.258806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.848444, 23.263395, 11.567771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.243618, 23.206753, 11.542700>,  <20.480722, 23.172768, 11.527658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.243618, 23.206753, 11.542700>,  <19.848444, 23.263395, 11.567771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.243618, 23.206753, 11.542700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016006, -0.309197, 0.950863,
		-0.154028, -0.940396, -0.303201,
		0.987937, -0.141606, -0.062677,
		20.539999, 23.164270, 11.523896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.942661, 22.629745, 11.833191>,  <19.848444, 23.263395, 11.567771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.942661, 22.629745, 11.833191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.294250, 22.817310, 11.867890>,  <20.505205, 22.929850, 11.888710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.294250, 22.817310, 11.867890>,  <19.942661, 22.629745, 11.833191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.294250, 22.817310, 11.867890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012301, -0.204148, 0.978863,
		0.476709, -0.859329, -0.185209,
		0.878975, 0.468911, 0.086749,
		20.557943, 22.957983, 11.893915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.374725, 22.205429, 12.100396>,  <19.942661, 22.629745, 11.833191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.374725, 22.205429, 12.100396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.582138, 22.536606, 12.185849>,  <20.706585, 22.735312, 12.237122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.582138, 22.536606, 12.185849>,  <20.374725, 22.205429, 12.100396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.582138, 22.536606, 12.185849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206897, -0.363912, 0.908164,
		0.829650, -0.426711, -0.359998,
		0.518532, 0.827941, 0.213634,
		20.737698, 22.784988, 12.249939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.003294, 21.991299, 12.471446>,  <20.374725, 22.205429, 12.100396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.003294, 21.991299, 12.471446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.015884, 22.376415, 12.578806>,  <21.023438, 22.607485, 12.643222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.015884, 22.376415, 12.578806>,  <21.003294, 21.991299, 12.471446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.015884, 22.376415, 12.578806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340099, -0.262825, 0.902915,
		0.939863, 0.062864, -0.335717,
		0.031474, 0.962793, 0.268400,
		21.025326, 22.665253, 12.659326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.694027, 22.162693, 12.827267>,  <21.003294, 21.991299, 12.471446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.694027, 22.162693, 12.827267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.416100, 22.426590, 12.941784>,  <21.249342, 22.584929, 13.010494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.416100, 22.426590, 12.941784>,  <21.694027, 22.162693, 12.827267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.416100, 22.426590, 12.941784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092284, -0.313000, 0.945259,
		0.713239, 0.683205, 0.156595,
		-0.694820, 0.659744, 0.286293,
		21.207653, 22.624514, 13.027672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.073782, 22.527599, 13.339656>,  <21.694027, 22.162693, 12.827267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.073782, 22.527599, 13.339656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.682529, 22.592133, 13.392164>,  <21.447779, 22.630854, 13.423670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.682529, 22.592133, 13.392164>,  <22.073782, 22.527599, 13.339656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.682529, 22.592133, 13.392164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104021, -0.167095, 0.980438,
		0.180113, 0.972651, 0.146658,
		-0.978130, 0.161335, 0.131272,
		21.389090, 22.640533, 13.431546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.005999, 22.911901, 14.022384>,  <22.073782, 22.527599, 13.339656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.005999, 22.911901, 14.022384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.651566, 22.739357, 13.954515>,  <21.438906, 22.635830, 13.913795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.651566, 22.739357, 13.954515>,  <22.005999, 22.911901, 14.022384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.651566, 22.739357, 13.954515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027737, -0.414728, 0.909522,
		-0.462699, 0.801205, 0.379448,
		-0.886082, -0.431360, -0.169671,
		21.385740, 22.609949, 13.903614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.539913, 23.143167, 14.520645>,  <22.005999, 22.911901, 14.022384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.539913, 23.143167, 14.520645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.364975, 22.807766, 14.390638>,  <21.260012, 22.606525, 14.312634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.364975, 22.807766, 14.390638>,  <21.539913, 23.143167, 14.520645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.364975, 22.807766, 14.390638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192811, -0.265578, 0.944612,
		-0.878380, 0.475791, -0.045523,
		-0.437348, -0.838505, -0.325016,
		21.233770, 22.556213, 14.293134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.836552, 23.212193, 14.629423>,  <21.539913, 23.143167, 14.520645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.836552, 23.212193, 14.629423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.864586, 22.814651, 14.595150>,  <20.881407, 22.576126, 14.574586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.864586, 22.814651, 14.595150>,  <20.836552, 23.212193, 14.629423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.864586, 22.814651, 14.595150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499157, -0.109309, 0.859589,
		-0.863672, -0.017476, -0.503750,
		0.070086, -0.993854, -0.085684,
		20.885612, 22.516495, 14.569445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.238184, 23.029081, 14.904535>,  <20.836552, 23.212193, 14.629423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.238184, 23.029081, 14.904535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.438175, 22.682671, 14.902897>,  <20.558170, 22.474825, 14.901914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.438175, 22.682671, 14.902897>,  <20.238184, 23.029081, 14.904535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.438175, 22.682671, 14.902897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369259, -0.217456, 0.903527,
		-0.783370, -0.450233, -0.428512,
		0.499980, -0.866027, -0.004096,
		20.588169, 22.422863, 14.901669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.706245, 22.449409, 15.168359>,  <20.238184, 23.029081, 14.904535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.706245, 22.449409, 15.168359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.075279, 22.304447, 15.221270>,  <20.296700, 22.217470, 15.253016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.075279, 22.304447, 15.221270>,  <19.706245, 22.449409, 15.168359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.075279, 22.304447, 15.221270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241541, -0.275256, 0.930533,
		-0.300827, -0.890445, -0.341484,
		0.922584, -0.362412, 0.132275,
		20.352055, 22.195724, 15.260953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.622063, 21.719713, 15.382001>,  <19.706245, 22.449409, 15.168359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.622063, 21.719713, 15.382001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.978851, 21.869129, 15.483871>,  <20.192924, 21.958778, 15.544993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.978851, 21.869129, 15.483871>,  <19.622063, 21.719713, 15.382001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.978851, 21.869129, 15.483871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139172, -0.309097, 0.940792,
		0.430141, -0.874602, -0.223719,
		0.891970, 0.373538, 0.254676,
		20.246443, 21.981190, 15.560274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.080645, 21.274845, 15.868706>,  <19.622063, 21.719713, 15.382001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.080645, 21.274845, 15.868706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.253193, 21.631660, 15.922655>,  <20.356722, 21.845749, 15.955025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.253193, 21.631660, 15.922655>,  <20.080645, 21.274845, 15.868706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.253193, 21.631660, 15.922655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017387, -0.157691, 0.987335,
		0.902007, -0.423562, -0.083533,
		0.431371, 0.892036, 0.134874,
		20.382605, 21.899271, 15.963118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.674625, 21.155914, 16.314369>,  <20.080645, 21.274845, 15.868706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.674625, 21.155914, 16.314369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.620430, 21.550480, 16.351536>,  <20.587912, 21.787218, 16.373837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.620430, 21.550480, 16.351536>,  <20.674625, 21.155914, 16.314369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.620430, 21.550480, 16.351536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107392, -0.078607, 0.991104,
		0.984941, 0.144264, -0.095282,
		-0.135490, 0.986412, 0.092916,
		20.579782, 21.846403, 16.379410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.278624, 21.423376, 16.748840>,  <20.674625, 21.155914, 16.314369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.278624, 21.423376, 16.748840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.009907, 21.718292, 16.777401>,  <20.848677, 21.895241, 16.794538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.009907, 21.718292, 16.777401>,  <21.278624, 21.423376, 16.748840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.009907, 21.718292, 16.777401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119991, 0.013195, 0.992687,
		0.730955, 0.675449, -0.097332,
		-0.671794, 0.737288, 0.071403,
		20.808369, 21.939478, 16.798822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.637215, 21.975740, 17.206089>,  <21.278624, 21.423376, 16.748840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.637215, 21.975740, 17.206089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.248936, 22.070396, 17.222816>,  <21.015968, 22.127190, 17.232853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.248936, 22.070396, 17.222816>,  <21.637215, 21.975740, 17.206089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.248936, 22.070396, 17.222816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084631, 0.173769, 0.981143,
		0.224909, 0.955932, -0.188704,
		-0.970697, 0.236638, 0.041819,
		20.957726, 22.141388, 17.235363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.543329, 22.587790, 17.512867>,  <21.637215, 21.975740, 17.206089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.543329, 22.587790, 17.512867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.187912, 22.416203, 17.577951>,  <20.974661, 22.313251, 17.617002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.187912, 22.416203, 17.577951>,  <21.543329, 22.587790, 17.512867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.187912, 22.416203, 17.577951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099595, 0.165850, 0.981109,
		-0.447849, 0.887965, -0.104643,
		-0.888545, -0.428966, 0.162712,
		20.921349, 22.287512, 17.626764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.090250, 23.110699, 17.810686>,  <21.543329, 22.587790, 17.512867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.090250, 23.110699, 17.810686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.925797, 22.764530, 17.925238>,  <20.827124, 22.556829, 17.993969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.925797, 22.764530, 17.925238>,  <21.090250, 23.110699, 17.810686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.925797, 22.764530, 17.925238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010292, 0.309730, 0.950769,
		-0.911516, 0.393842, -0.118434,
		-0.411135, -0.865422, 0.286378,
		20.802456, 22.504904, 18.011150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.591679, 23.313679, 18.300497>,  <21.090250, 23.110699, 17.810686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.591679, 23.313679, 18.300497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.655891, 22.923954, 18.363672>,  <20.694420, 22.690119, 18.401577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.655891, 22.923954, 18.363672>,  <20.591679, 23.313679, 18.300497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.655891, 22.923954, 18.363672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154078, 0.133315, 0.979024,
		-0.974930, -0.181500, -0.128719,
		0.160533, -0.974312, 0.157938,
		20.704052, 22.631660, 18.411053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.125139, 23.176369, 18.830393>,  <20.591679, 23.313679, 18.300497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.125139, 23.176369, 18.830393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.380352, 22.868454, 18.822996>,  <20.533480, 22.683704, 18.818558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.380352, 22.868454, 18.822996>,  <20.125139, 23.176369, 18.830393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.380352, 22.868454, 18.822996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036344, 0.006120, 0.999321,
		-0.769153, -0.638269, 0.031882,
		0.638031, -0.769789, -0.018490,
		20.571762, 22.637518, 18.817450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.845169, 22.662811, 19.281162>,  <20.125139, 23.176369, 18.830393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.845169, 22.662811, 19.281162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.241302, 22.607330, 19.281332>,  <20.478983, 22.574041, 19.281433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.241302, 22.607330, 19.281332>,  <19.845169, 22.662811, 19.281162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.241302, 22.607330, 19.281332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013196, 0.097253, 0.995172,
		-0.138075, -0.985547, 0.098144,
		0.990334, -0.138704, 0.000423,
		20.538403, 22.565720, 19.281458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.998901, 22.061640, 19.780880>,  <19.845169, 22.662811, 19.281162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.998901, 22.061640, 19.780880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.332958, 22.276962, 19.735685>,  <20.533392, 22.406155, 19.708569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.332958, 22.276962, 19.735685>,  <19.998901, 22.061640, 19.780880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.332958, 22.276962, 19.735685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051494, 0.128001, 0.990436,
		0.547620, -0.832972, 0.079179,
		0.835141, 0.538306, -0.112989,
		20.583500, 22.438454, 19.701788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.301125, 21.992447, 19.726694>,  <19.998901, 22.061640, 19.780880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.301125, 21.992447, 19.726694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.073318, 22.205742, 19.976913>,  <18.936634, 22.333719, 20.127045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.073318, 22.205742, 19.976913>,  <19.301125, 21.992447, 19.726694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.073318, 22.205742, 19.976913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649027, 0.175272, -0.740300,
		-0.504398, -0.827609, 0.246266,
		-0.569515, 0.533239, 0.625547,
		18.902464, 22.365713, 20.164577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.545301, 21.694746, 19.699335>,  <19.301125, 21.992447, 19.726694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.545301, 21.694746, 19.699335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.580910, 22.076847, 19.812164>,  <18.602274, 22.306108, 19.879862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.580910, 22.076847, 19.812164>,  <18.545301, 21.694746, 19.699335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.580910, 22.076847, 19.812164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420093, 0.292785, -0.858952,
		-0.903104, -0.042034, 0.427359,
		0.089019, 0.955254, 0.282073,
		18.607615, 22.363422, 19.896786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.988991, 22.084513, 19.457224>,  <18.545301, 21.694746, 19.699335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.988991, 22.084513, 19.457224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.221291, 22.395393, 19.554123>,  <18.360670, 22.581923, 19.612263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.221291, 22.395393, 19.554123>,  <17.988991, 22.084513, 19.457224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.221291, 22.395393, 19.554123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271859, 0.465643, -0.842181,
		-0.767348, 0.423239, 0.481712,
		0.580749, 0.777204, 0.242248,
		18.395515, 22.628555, 19.626797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.542597, 22.721697, 19.432001>,  <17.988991, 22.084513, 19.457224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.542597, 22.721697, 19.432001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.927677, 22.817463, 19.381580>,  <18.158726, 22.874922, 19.351328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.927677, 22.817463, 19.381580>,  <17.542597, 22.721697, 19.432001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.927677, 22.817463, 19.381580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250120, 0.609776, -0.752073,
		-0.103191, 0.755549, 0.646914,
		0.962700, 0.239413, -0.126054,
		18.216488, 22.889286, 19.343763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.616943, 23.488811, 19.376715>,  <17.542597, 22.721697, 19.432001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.616943, 23.488811, 19.376715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.950390, 23.343971, 19.209879>,  <18.150457, 23.257067, 19.109777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.950390, 23.343971, 19.209879>,  <17.616943, 23.488811, 19.376715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.950390, 23.343971, 19.209879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127101, 0.609109, -0.782835,
		0.537519, 0.705598, 0.461741,
		0.833618, -0.362101, -0.417090,
		18.200476, 23.235340, 19.084751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
