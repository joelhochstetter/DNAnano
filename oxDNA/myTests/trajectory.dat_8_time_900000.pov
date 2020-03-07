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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<37.351749, 45.694798, 56.151455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694855, 45.823174, 56.312073>,  <37.900719, 45.900200, 56.408443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694855, 45.823174, 56.312073>,  <37.351749, 45.694798, 56.151455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694855, 45.823174, 56.312073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412882, 0.035171, -0.910105,
		-0.306213, 0.946446, -0.102343,
		0.857765, 0.320941, 0.401541,
		37.952183, 45.919456, 56.432533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671291, 46.228764, 55.688915>,  <37.351749, 45.694798, 56.151455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671291, 46.228764, 55.688915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972626, 46.077782, 55.904327>,  <38.153427, 45.987194, 56.033577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972626, 46.077782, 55.904327>,  <37.671291, 46.228764, 55.688915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972626, 46.077782, 55.904327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520753, -0.157726, -0.839010,
		0.401629, 0.912497, 0.077740,
		0.753333, -0.377454, 0.538533,
		38.198627, 45.964546, 56.065887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265274, 46.487942, 55.384140>,  <37.671291, 46.228764, 55.688915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265274, 46.487942, 55.384140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375046, 46.164925, 55.592972>,  <38.440907, 45.971115, 55.718269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375046, 46.164925, 55.592972>,  <38.265274, 46.487942, 55.384140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375046, 46.164925, 55.592972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474860, -0.358302, -0.803820,
		0.836180, 0.468505, 0.285141,
		0.274427, -0.807541, 0.522080,
		38.457375, 45.922661, 55.749596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018612, 46.419720, 55.242596>,  <38.265274, 46.487942, 55.384140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018612, 46.419720, 55.242596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907364, 46.065506, 55.391441>,  <38.840614, 45.852978, 55.480751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907364, 46.065506, 55.391441>,  <39.018612, 46.419720, 55.242596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907364, 46.065506, 55.391441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560114, -0.464235, -0.686118,
		0.780334, 0.017603, 0.625116,
		-0.278123, -0.885537, 0.372118,
		38.823929, 45.799847, 55.503078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678078, 46.071445, 55.329781>,  <39.018612, 46.419720, 55.242596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678078, 46.071445, 55.329781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390800, 45.793125, 55.326622>,  <39.218433, 45.626133, 55.324726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390800, 45.793125, 55.326622>,  <39.678078, 46.071445, 55.329781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390800, 45.793125, 55.326622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445401, -0.450957, -0.773470,
		0.534616, -0.559020, 0.633784,
		-0.718195, -0.695798, -0.007900,
		39.175343, 45.584385, 55.324253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985317, 45.410866, 55.349491>,  <39.678078, 46.071445, 55.329781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985317, 45.410866, 55.349491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617104, 45.362659, 55.200848>,  <39.396175, 45.333736, 55.111660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617104, 45.362659, 55.200848>,  <39.985317, 45.410866, 55.349491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617104, 45.362659, 55.200848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371694, -0.563011, -0.738148,
		-0.120262, -0.817615, 0.563066,
		-0.920533, -0.120517, -0.371612,
		39.340942, 45.326504, 55.089363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045929, 44.824131, 55.109802>,  <39.985317, 45.410866, 55.349491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045929, 44.824131, 55.109802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722038, 44.959568, 54.918098>,  <39.527702, 45.040829, 54.803078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722038, 44.959568, 54.918098>,  <40.045929, 44.824131, 55.109802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722038, 44.959568, 54.918098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250985, -0.538416, -0.804435,
		-0.530388, -0.771675, 0.351008,
		-0.809750, 0.338565, -0.479247,
		39.479118, 45.061146, 54.774319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734665, 44.247044, 54.743725>,  <40.045929, 44.824131, 55.109802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734665, 44.247044, 54.743725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596596, 44.574203, 54.559593>,  <39.513756, 44.770500, 54.449116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596596, 44.574203, 54.559593>,  <39.734665, 44.247044, 54.743725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596596, 44.574203, 54.559593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212494, -0.409630, -0.887158,
		-0.914169, -0.404036, -0.032407,
		-0.345168, 0.817899, -0.460326,
		39.493046, 44.819572, 54.421494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541813, 43.945053, 54.170330>,  <39.734665, 44.247044, 54.743725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541813, 43.945053, 54.170330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542358, 44.335854, 54.085037>,  <39.542686, 44.570335, 54.033859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542358, 44.335854, 54.085037>,  <39.541813, 43.945053, 54.170330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542358, 44.335854, 54.085037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337820, -0.201152, -0.919465,
		-0.941210, -0.070778, -0.330325,
		0.001368, 0.977000, -0.213236,
		39.542770, 44.628952, 54.021065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382256, 43.929882, 53.468559>,  <39.541813, 43.945053, 54.170330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382256, 43.929882, 53.468559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506561, 44.307213, 53.515156>,  <39.581142, 44.533611, 53.543114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506561, 44.307213, 53.515156>,  <39.382256, 43.929882, 53.468559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506561, 44.307213, 53.515156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489776, -0.053888, -0.870181,
		-0.814584, 0.327473, -0.478763,
		0.310760, 0.943323, 0.116492,
		39.599789, 44.590210, 53.550102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109241, 44.300262, 52.878239>,  <39.382256, 43.929882, 53.468559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109241, 44.300262, 52.878239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430695, 44.494236, 53.016235>,  <39.623566, 44.610619, 53.099033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430695, 44.494236, 53.016235>,  <39.109241, 44.300262, 52.878239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430695, 44.494236, 53.016235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388271, 0.012107, -0.921466,
		-0.451027, 0.874467, -0.178556,
		0.803630, 0.484934, 0.344991,
		39.671783, 44.639717, 53.119732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347969, 44.796154, 52.418171>,  <39.109241, 44.300262, 52.878239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347969, 44.796154, 52.418171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683495, 44.784592, 52.635632>,  <39.884808, 44.777657, 52.766109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683495, 44.784592, 52.635632>,  <39.347969, 44.796154, 52.418171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683495, 44.784592, 52.635632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534452, 0.233946, -0.812176,
		-0.103711, 0.971820, 0.211684,
		0.838812, -0.028904, 0.543654,
		39.935139, 44.775921, 52.798729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756634, 45.443359, 52.309948>,  <39.347969, 44.796154, 52.418171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756634, 45.443359, 52.309948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008202, 45.158752, 52.435295>,  <40.159142, 44.987988, 52.510502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008202, 45.158752, 52.435295>,  <39.756634, 45.443359, 52.309948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008202, 45.158752, 52.435295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509252, 0.072445, -0.857563,
		0.587470, 0.698923, 0.407905,
		0.628921, -0.711519, 0.313369,
		40.196877, 44.945297, 52.529305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426884, 45.674313, 52.184441>,  <39.756634, 45.443359, 52.309948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426884, 45.674313, 52.184441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488991, 45.279926, 52.208973>,  <40.526253, 45.043293, 52.223690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488991, 45.279926, 52.208973>,  <40.426884, 45.674313, 52.184441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488991, 45.279926, 52.208973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394049, 0.004885, -0.919076,
		0.905880, 0.166867, 0.389278,
		0.155265, -0.985967, 0.061328,
		40.535572, 44.984135, 52.227371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183537, 45.651405, 52.059208>,  <40.426884, 45.674313, 52.184441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183537, 45.651405, 52.059208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046150, 45.277069, 52.027649>,  <40.963718, 45.052467, 52.008713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046150, 45.277069, 52.027649>,  <41.183537, 45.651405, 52.059208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046150, 45.277069, 52.027649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532625, -0.124912, -0.837083,
		0.773524, -0.329535, 0.541357,
		-0.343470, -0.935844, -0.078896,
		40.943108, 44.996315, 52.003979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801128, 45.197536, 52.047985>,  <41.183537, 45.651405, 52.059208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801128, 45.197536, 52.047985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480095, 45.030170, 51.877907>,  <41.287476, 44.929752, 51.775860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480095, 45.030170, 51.877907>,  <41.801128, 45.197536, 52.047985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480095, 45.030170, 51.877907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553410, -0.256128, -0.792550,
		0.222707, -0.871395, 0.437117,
		-0.802582, -0.418412, -0.425197,
		41.239319, 44.904648, 51.750347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065620, 44.759792, 51.482811>,  <41.801128, 45.197536, 52.047985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065620, 44.759792, 51.482811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675392, 44.761822, 51.394951>,  <41.441257, 44.763039, 51.342236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675392, 44.761822, 51.394951>,  <42.065620, 44.759792, 51.482811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675392, 44.761822, 51.394951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217211, 0.172496, -0.960763,
		0.033011, -0.984997, -0.169384,
		-0.975567, 0.005076, -0.219646,
		41.382721, 44.763344, 51.329056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918396, 44.285305, 50.834621>,  <42.065620, 44.759792, 51.482811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918396, 44.285305, 50.834621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596001, 44.521484, 50.851368>,  <41.402561, 44.663193, 50.861416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596001, 44.521484, 50.851368>,  <41.918396, 44.285305, 50.834621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596001, 44.521484, 50.851368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033560, 0.116188, -0.992660,
		-0.590976, -0.798670, -0.113462,
		-0.805991, 0.590446, 0.041862,
		41.354202, 44.698620, 50.863926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403172, 43.977474, 50.425240>,  <41.918396, 44.285305, 50.834621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403172, 43.977474, 50.425240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318939, 44.367802, 50.448666>,  <41.268398, 44.601997, 50.462723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318939, 44.367802, 50.448666>,  <41.403172, 43.977474, 50.425240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318939, 44.367802, 50.448666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150544, 0.026827, -0.988239,
		-0.965915, -0.216921, 0.141255,
		-0.210580, 0.975820, 0.058569,
		41.255764, 44.660549, 50.466236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836781, 44.019188, 50.171906>,  <41.403172, 43.977474, 50.425240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836781, 44.019188, 50.171906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998665, 44.382130, 50.126442>,  <41.095795, 44.599895, 50.099163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998665, 44.382130, 50.126442>,  <40.836781, 44.019188, 50.171906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998665, 44.382130, 50.126442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104907, -0.077403, -0.991465,
		-0.908408, 0.413178, 0.063862,
		0.404708, 0.907355, -0.113659,
		41.120079, 44.654335, 50.092346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442471, 44.342487, 49.750950>,  <40.836781, 44.019188, 50.171906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442471, 44.342487, 49.750950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758369, 44.587719, 49.742599>,  <40.947910, 44.734856, 49.737591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758369, 44.587719, 49.742599>,  <40.442471, 44.342487, 49.750950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758369, 44.587719, 49.742599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037991, 0.014919, -0.999167,
		-0.612254, 0.789883, 0.035074,
		0.789748, 0.613076, -0.020874,
		40.995293, 44.771641, 49.736336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208557, 44.853241, 49.395229>,  <40.442471, 44.342487, 49.750950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208557, 44.853241, 49.395229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607010, 44.856571, 49.360229>,  <40.846081, 44.858570, 49.339230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607010, 44.856571, 49.360229>,  <40.208557, 44.853241, 49.395229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607010, 44.856571, 49.360229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086836, -0.060921, -0.994358,
		-0.013610, 0.998108, -0.059963,
		0.996130, 0.008326, -0.087501,
		40.905849, 44.859070, 49.333981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385506, 45.434155, 48.918903>,  <40.208557, 44.853241, 49.395229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385506, 45.434155, 48.918903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683716, 45.167782, 48.929771>,  <40.862640, 45.007957, 48.936295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683716, 45.167782, 48.929771>,  <40.385506, 45.434155, 48.918903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683716, 45.167782, 48.929771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012667, -0.054923, -0.998410,
		0.666361, 0.743992, -0.049382,
		0.745522, -0.665927, 0.027175,
		40.907372, 44.968002, 48.937923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759113, 45.541275, 48.317253>,  <40.385506, 45.434155, 48.918903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759113, 45.541275, 48.317253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905006, 45.186287, 48.429939>,  <40.992542, 44.973293, 48.497551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905006, 45.186287, 48.429939>,  <40.759113, 45.541275, 48.317253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905006, 45.186287, 48.429939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185089, -0.227417, -0.956046,
		0.912530, 0.400845, 0.081315,
		0.364734, -0.887471, 0.281717,
		41.014427, 44.920044, 48.514454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434685, 45.546688, 48.004562>,  <40.759113, 45.541275, 48.317253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434685, 45.546688, 48.004562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359650, 45.164074, 48.093872>,  <41.314629, 44.934505, 48.147457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359650, 45.164074, 48.093872>,  <41.434685, 45.546688, 48.004562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359650, 45.164074, 48.093872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385475, -0.280764, -0.878966,
		0.903450, -0.078813, 0.421387,
		-0.187584, -0.956536, 0.223275,
		41.303375, 44.877113, 48.160854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060318, 45.211349, 47.931904>,  <41.434685, 45.546688, 48.004562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060318, 45.211349, 47.931904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760109, 44.953976, 47.871628>,  <41.579983, 44.799549, 47.835461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760109, 44.953976, 47.871628>,  <42.060318, 45.211349, 47.931904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760109, 44.953976, 47.871628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356396, -0.202067, -0.912223,
		0.556508, -0.738348, 0.380974,
		-0.750520, -0.643437, -0.150693,
		41.534954, 44.760944, 47.826420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369194, 44.628223, 47.522709>,  <42.060318, 45.211349, 47.931904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369194, 44.628223, 47.522709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976059, 44.607971, 47.451752>,  <41.740177, 44.595818, 47.409176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976059, 44.607971, 47.451752>,  <42.369194, 44.628223, 47.522709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976059, 44.607971, 47.451752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179382, -0.037754, -0.983055,
		0.043082, -0.998003, 0.046189,
		-0.982836, -0.050637, -0.177397,
		41.681210, 44.592781, 47.398533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304901, 43.990440, 47.111900>,  <42.369194, 44.628223, 47.522709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304901, 43.990440, 47.111900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979095, 44.213940, 47.049469>,  <41.783611, 44.348038, 47.012009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979095, 44.213940, 47.049469>,  <42.304901, 43.990440, 47.111900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979095, 44.213940, 47.049469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137626, -0.075250, -0.987622,
		-0.563577, -0.825916, -0.015605,
		-0.814518, 0.558748, -0.156077,
		41.734741, 44.381565, 47.002647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079292, 43.817108, 46.512562>,  <42.304901, 43.990440, 47.111900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079292, 43.817108, 46.512562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839027, 44.135284, 46.544762>,  <41.694870, 44.326191, 46.564079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839027, 44.135284, 46.544762>,  <42.079292, 43.817108, 46.512562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839027, 44.135284, 46.544762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137391, -0.003513, -0.990511,
		-0.787612, -0.606018, 0.111397,
		-0.600659, 0.795443, 0.080495,
		41.658829, 44.373917, 46.568909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435036, 43.653236, 46.157749>,  <42.079292, 43.817108, 46.512562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435036, 43.653236, 46.157749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465469, 44.051704, 46.140541>,  <41.483730, 44.290787, 46.130215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465469, 44.051704, 46.140541>,  <41.435036, 43.653236, 46.157749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465469, 44.051704, 46.140541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159573, -0.030424, -0.986717,
		-0.984250, 0.081936, 0.156648,
		0.076082, 0.996173, -0.043019,
		41.488293, 44.350555, 46.127636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936825, 43.842072, 45.726238>,  <41.435036, 43.653236, 46.157749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936825, 43.842072, 45.726238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171555, 44.165874, 45.733498>,  <41.312393, 44.360157, 45.737854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171555, 44.165874, 45.733498>,  <40.936825, 43.842072, 45.726238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171555, 44.165874, 45.733498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231963, 0.189542, -0.954079,
		-0.775777, 0.555668, 0.299004,
		0.586825, 0.809510, 0.018148,
		41.347603, 44.408726, 45.738941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530163, 44.315964, 45.493652>,  <40.936825, 43.842072, 45.726238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530163, 44.315964, 45.493652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910721, 44.417637, 45.424099>,  <41.139057, 44.478642, 45.382366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910721, 44.417637, 45.424099>,  <40.530163, 44.315964, 45.493652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910721, 44.417637, 45.424099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199900, 0.080192, -0.976529,
		-0.234276, 0.963825, 0.127106,
		0.951396, 0.254186, -0.173881,
		41.196140, 44.493893, 45.371933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417732, 44.848549, 45.034920>,  <40.530163, 44.315964, 45.493652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417732, 44.848549, 45.034920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803543, 44.753197, 44.989563>,  <41.035030, 44.695984, 44.962349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803543, 44.753197, 44.989563>,  <40.417732, 44.848549, 45.034920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803543, 44.753197, 44.989563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104451, 0.049866, -0.993279,
		0.242432, 0.969891, 0.023198,
		0.964529, -0.238380, -0.113395,
		41.092903, 44.681683, 44.955544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761520, 45.304214, 44.518356>,  <40.417732, 44.848549, 45.034920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761520, 45.304214, 44.518356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980743, 44.969849, 44.530247>,  <41.112278, 44.769230, 44.537380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980743, 44.969849, 44.530247>,  <40.761520, 45.304214, 44.518356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980743, 44.969849, 44.530247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129423, 0.049641, -0.990346,
		0.826365, 0.546617, 0.135392,
		0.548061, -0.835910, 0.029723,
		41.145161, 44.719074, 44.539165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223068, 45.493053, 44.014572>,  <40.761520, 45.304214, 44.518356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223068, 45.493053, 44.014572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277336, 45.100868, 44.071556>,  <41.309898, 44.865559, 44.105747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277336, 45.100868, 44.071556>,  <41.223068, 45.493053, 44.014572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277336, 45.100868, 44.071556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165494, -0.119345, -0.978963,
		0.976835, 0.156391, 0.146069,
		0.135669, -0.980458, 0.142462,
		41.318035, 44.806732, 44.114296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970863, 45.349014, 43.867931>,  <41.223068, 45.493053, 44.014572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970863, 45.349014, 43.867931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757172, 45.015656, 43.811298>,  <41.628956, 44.815639, 43.777321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757172, 45.015656, 43.811298>,  <41.970863, 45.349014, 43.867931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757172, 45.015656, 43.811298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289362, -0.022922, -0.956945,
		0.794271, -0.552197, 0.253400,
		-0.534231, -0.833398, -0.141579,
		41.596901, 44.765636, 43.768826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294067, 45.010014, 43.386162>,  <41.970863, 45.349014, 43.867931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294067, 45.010014, 43.386162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945702, 44.814087, 43.370235>,  <41.736683, 44.696529, 43.360680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945702, 44.814087, 43.370235>,  <42.294067, 45.010014, 43.386162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945702, 44.814087, 43.370235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159380, -0.204885, -0.965723,
		0.464868, -0.847409, 0.256505,
		-0.870916, -0.489816, -0.039815,
		41.684425, 44.667141, 43.358292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497803, 44.421810, 42.941669>,  <42.294067, 45.010014, 43.386162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497803, 44.421810, 42.941669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101410, 44.474415, 42.951939>,  <41.863575, 44.505978, 42.958099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101410, 44.474415, 42.951939>,  <42.497803, 44.421810, 42.941669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101410, 44.474415, 42.951939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014805, 0.082975, -0.996442,
		-0.133172, -0.987836, -0.080280,
		-0.990982, 0.131510, 0.025674,
		41.804115, 44.513866, 42.959641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242939, 43.924961, 42.460239>,  <42.497803, 44.421810, 42.941669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242939, 43.924961, 42.460239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979622, 44.223339, 42.500675>,  <41.821632, 44.402367, 42.524937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979622, 44.223339, 42.500675>,  <42.242939, 43.924961, 42.460239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979622, 44.223339, 42.500675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197067, -0.041172, -0.979525,
		-0.726510, -0.664734, 0.174105,
		-0.658292, 0.745945, 0.101085,
		41.782135, 44.447121, 42.531002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861847, 43.746090, 41.923424>,  <42.242939, 43.924961, 42.460239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861847, 43.746090, 41.923424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718407, 44.100418, 42.041225>,  <41.632343, 44.313015, 42.111904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718407, 44.100418, 42.041225>,  <41.861847, 43.746090, 41.923424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718407, 44.100418, 42.041225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226197, 0.223626, -0.948065,
		-0.905673, -0.406588, 0.120179,
		-0.358597, 0.885820, 0.294501,
		41.610828, 44.366165, 42.129578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269238, 43.842468, 41.504208>,  <41.861847, 43.746090, 41.923424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269238, 43.842468, 41.504208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408562, 44.198269, 41.622505>,  <41.492157, 44.411751, 41.693485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408562, 44.198269, 41.622505>,  <41.269238, 43.842468, 41.504208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408562, 44.198269, 41.622505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109184, 0.351851, -0.929667,
		-0.930998, 0.291523, 0.219674,
		0.348312, 0.889503, 0.295743,
		41.513054, 44.465118, 41.711227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798965, 44.376858, 41.275307>,  <41.269238, 43.842468, 41.504208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798965, 44.376858, 41.275307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166672, 44.530205, 41.311035>,  <41.387295, 44.622211, 41.332474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166672, 44.530205, 41.311035>,  <40.798965, 44.376858, 41.275307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166672, 44.530205, 41.311035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022864, 0.174539, -0.984385,
		-0.392968, 0.906956, 0.151683,
		0.919268, 0.383363, 0.089325,
		41.442451, 44.645214, 41.337833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762897, 44.808723, 40.771351>,  <40.798965, 44.376858, 41.275307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762897, 44.808723, 40.771351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154106, 44.835270, 40.850410>,  <41.388832, 44.851196, 40.897846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154106, 44.835270, 40.850410>,  <40.762897, 44.808723, 40.771351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154106, 44.835270, 40.850410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185021, 0.160763, -0.969496,
		-0.096116, 0.984759, 0.144951,
		0.978023, 0.066365, 0.197653,
		41.447514, 44.855179, 40.909706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022579, 45.486744, 40.474438>,  <40.762897, 44.808723, 40.771351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022579, 45.486744, 40.474438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333794, 45.239548, 40.519600>,  <41.520523, 45.091228, 40.546696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333794, 45.239548, 40.519600>,  <41.022579, 45.486744, 40.474438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333794, 45.239548, 40.519600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289405, 0.193070, -0.937533,
		0.557589, 0.762109, 0.329065,
		0.778035, -0.617992, 0.112904,
		41.567204, 45.054150, 40.553471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547668, 45.858261, 40.217163>,  <41.022579, 45.486744, 40.474438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547668, 45.858261, 40.217163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668243, 45.478107, 40.186432>,  <41.740589, 45.250015, 40.167995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668243, 45.478107, 40.186432>,  <41.547668, 45.858261, 40.217163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668243, 45.478107, 40.186432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276558, 0.164257, -0.946855,
		0.912498, 0.264167, 0.312350,
		0.301433, -0.950387, -0.076826,
		41.758675, 45.192993, 40.163383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146412, 45.837383, 39.883568>,  <41.547668, 45.858261, 40.217163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146412, 45.837383, 39.883568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005524, 45.466797, 39.830498>,  <41.920990, 45.244446, 39.798656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005524, 45.466797, 39.830498>,  <42.146412, 45.837383, 39.883568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005524, 45.466797, 39.830498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365690, -0.005744, -0.930719,
		0.861519, -0.376332, 0.340823,
		-0.352216, -0.926467, -0.132672,
		41.899860, 45.188858, 39.790695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571899, 45.477993, 39.420040>,  <42.146412, 45.837383, 39.883568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571899, 45.477993, 39.420040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321976, 45.165878, 39.408974>,  <42.172020, 44.978611, 39.402336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321976, 45.165878, 39.408974>,  <42.571899, 45.477993, 39.420040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321976, 45.165878, 39.408974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393476, -0.284079, -0.874343,
		0.674379, -0.557184, 0.484520,
		-0.624812, -0.780285, -0.027662,
		42.134533, 44.931793, 39.400677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029446, 44.851849, 39.378376>,  <42.571899, 45.477993, 39.420040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029446, 44.851849, 39.378376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654442, 44.823006, 39.242210>,  <42.429440, 44.805698, 39.160511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654442, 44.823006, 39.242210>,  <43.029446, 44.851849, 39.378376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654442, 44.823006, 39.242210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346470, -0.284031, -0.894027,
		-0.032220, -0.956100, 0.291265,
		-0.937508, -0.072109, -0.340411,
		42.373188, 44.801373, 39.140087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092438, 44.295719, 39.009476>,  <43.029446, 44.851849, 39.378376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092438, 44.295719, 39.009476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764114, 44.466526, 38.857727>,  <42.567120, 44.569012, 38.766678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764114, 44.466526, 38.857727>,  <43.092438, 44.295719, 39.009476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764114, 44.466526, 38.857727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276531, -0.284082, -0.918057,
		-0.499800, -0.858460, 0.115093,
		-0.820811, 0.427018, -0.379375,
		42.517872, 44.594631, 38.743916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826141, 43.832287, 38.581997>,  <43.092438, 44.295719, 39.009476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826141, 43.832287, 38.581997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652107, 44.172558, 38.463982>,  <42.547688, 44.376720, 38.393173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652107, 44.172558, 38.463982>,  <42.826141, 43.832287, 38.581997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652107, 44.172558, 38.463982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189451, -0.233849, -0.953637,
		-0.880234, -0.470806, -0.059418,
		-0.435083, 0.850680, -0.295037,
		42.521584, 44.427761, 38.375469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380867, 43.649750, 37.912819>,  <42.826141, 43.832287, 38.581997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380867, 43.649750, 37.912819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417610, 44.047871, 37.900635>,  <42.439655, 44.286743, 37.893322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417610, 44.047871, 37.900635>,  <42.380867, 43.649750, 37.912819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417610, 44.047871, 37.900635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101340, -0.021089, -0.994628,
		-0.990602, 0.094448, 0.098927,
		0.091854, 0.995307, -0.030463,
		42.445168, 44.346462, 37.891495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753441, 43.938908, 37.393456>,  <42.380867, 43.649750, 37.912819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753441, 43.938908, 37.393456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035202, 44.219875, 37.434299>,  <42.204258, 44.388458, 37.458805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035202, 44.219875, 37.434299>,  <41.753441, 43.938908, 37.393456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035202, 44.219875, 37.434299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084354, 0.059997, -0.994628,
		-0.704775, 0.709228, -0.016991,
		0.704398, 0.702422, 0.102110,
		42.246521, 44.430603, 37.464931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547359, 44.421402, 36.908424>,  <41.753441, 43.938908, 37.393456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547359, 44.421402, 36.908424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936455, 44.488205, 36.972786>,  <42.169910, 44.528286, 37.011402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936455, 44.488205, 36.972786>,  <41.547359, 44.421402, 36.908424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936455, 44.488205, 36.972786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121453, 0.224206, -0.966944,
		-0.197565, 0.960125, 0.197810,
		0.972737, 0.167009, 0.160905,
		42.228275, 44.538307, 37.021057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791088, 44.997471, 36.552937>,  <41.547359, 44.421402, 36.908424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791088, 44.997471, 36.552937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156120, 44.846001, 36.614647>,  <42.375141, 44.755119, 36.651672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156120, 44.846001, 36.614647>,  <41.791088, 44.997471, 36.552937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156120, 44.846001, 36.614647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280986, 0.306662, -0.909398,
		0.297056, 0.873249, 0.386256,
		0.912582, -0.378674, 0.154275,
		42.429893, 44.732399, 36.660931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334969, 45.513168, 36.275021>,  <41.791088, 44.997471, 36.552937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334969, 45.513168, 36.275021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506653, 45.152313, 36.257458>,  <42.609661, 44.935799, 36.246918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506653, 45.152313, 36.257458>,  <42.334969, 45.513168, 36.275021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506653, 45.152313, 36.257458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350210, 0.211037, -0.912588,
		0.832546, 0.376313, 0.406516,
		0.429209, -0.902137, -0.043909,
		42.635414, 44.881672, 36.244286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965164, 45.608898, 35.968479>,  <42.334969, 45.513168, 36.275021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965164, 45.608898, 35.968479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897156, 45.220074, 35.903740>,  <42.856350, 44.986778, 35.864895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897156, 45.220074, 35.903740>,  <42.965164, 45.608898, 35.968479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897156, 45.220074, 35.903740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573692, 0.035901, -0.818284,
		0.801230, -0.231978, 0.551558,
		-0.170022, -0.972058, -0.161849,
		42.846149, 44.928455, 35.855186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581291, 45.390404, 35.724010>,  <42.965164, 45.608898, 35.968479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581291, 45.390404, 35.724010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329803, 45.097076, 35.620510>,  <43.178909, 44.921082, 35.558411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329803, 45.097076, 35.620510>,  <43.581291, 45.390404, 35.724010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329803, 45.097076, 35.620510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530993, -0.161758, -0.831793,
		0.568113, -0.660364, 0.491087,
		-0.628724, -0.733317, -0.258753,
		43.141186, 44.877083, 35.542885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030479, 44.904366, 35.448738>,  <43.581291, 45.390404, 35.724010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030479, 44.904366, 35.448738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672104, 44.801300, 35.304020>,  <43.457077, 44.739460, 35.217190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672104, 44.801300, 35.304020>,  <44.030479, 44.904366, 35.448738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672104, 44.801300, 35.304020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396820, -0.098387, -0.912608,
		0.199547, -0.961213, 0.190394,
		-0.895943, -0.257661, -0.361796,
		43.403320, 44.724003, 35.195480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204418, 44.276760, 34.945461>,  <44.030479, 44.904366, 35.448738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204418, 44.276760, 34.945461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839584, 44.427147, 34.880028>,  <43.620686, 44.517380, 34.840767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839584, 44.427147, 34.880028>,  <44.204418, 44.276760, 34.945461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839584, 44.427147, 34.880028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200239, 0.060302, -0.977889,
		-0.357787, -0.924670, -0.130283,
		-0.912081, 0.375964, -0.163580,
		43.565960, 44.539936, 34.830956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912304, 43.900166, 34.385193>,  <44.204418, 44.276760, 34.945461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912304, 43.900166, 34.385193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749809, 44.265274, 34.368134>,  <43.652313, 44.484341, 34.357899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749809, 44.265274, 34.368134>,  <43.912304, 43.900166, 34.385193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749809, 44.265274, 34.368134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157653, 0.024042, -0.987202,
		-0.900066, -0.407759, -0.153668,
		-0.406235, 0.912773, -0.042645,
		43.627937, 44.539104, 34.355339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496956, 43.857300, 33.809032>,  <43.912304, 43.900166, 34.385193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496956, 43.857300, 33.809032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539879, 44.247814, 33.884235>,  <43.565632, 44.482124, 33.929359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539879, 44.247814, 33.884235>,  <43.496956, 43.857300, 33.809032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539879, 44.247814, 33.884235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109583, 0.176338, -0.978211,
		-0.988169, 0.125569, -0.088062,
		0.107304, 0.976288, 0.188012,
		43.572071, 44.540699, 33.940639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064571, 44.246399, 33.338352>,  <43.496956, 43.857300, 33.809032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064571, 44.246399, 33.338352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327194, 44.532501, 33.434132>,  <43.484768, 44.704163, 33.491600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327194, 44.532501, 33.434132>,  <43.064571, 44.246399, 33.338352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.327194, 44.532501, 33.434132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260265, 0.083129, -0.961952,
		-0.707950, 0.693897, -0.131578,
		0.656558, 0.715259, 0.239449,
		43.524162, 44.747078, 33.505966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945080, 44.843987, 32.987911>,  <43.064571, 44.246399, 33.338352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945080, 44.843987, 32.987911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330559, 44.869495, 33.091621>,  <43.561844, 44.884800, 33.153847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330559, 44.869495, 33.091621>,  <42.945080, 44.843987, 32.987911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330559, 44.869495, 33.091621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226251, 0.320585, -0.919802,
		-0.141782, 0.945070, 0.294516,
		0.963695, 0.063777, 0.259277,
		43.619667, 44.888630, 33.169403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178207, 45.494549, 32.686172>,  <42.945080, 44.843987, 32.987911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178207, 45.494549, 32.686172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511185, 45.285015, 32.758430>,  <43.710972, 45.159294, 32.801785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511185, 45.285015, 32.758430>,  <43.178207, 45.494549, 32.686172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511185, 45.285015, 32.758430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294365, 0.141862, -0.945106,
		0.469456, 0.839922, 0.272291,
		0.832443, -0.523838, 0.180645,
		43.760918, 45.127865, 32.812626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<47.298882, 43.546215, 33.394928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.985985, 43.787243, 33.331673>,  <46.798248, 43.931862, 33.293720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.985985, 43.787243, 33.331673>,  <47.298882, 43.546215, 33.394928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.985985, 43.787243, 33.331673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298652, -0.139943, 0.944046,
		0.546727, 0.785698, 0.289428,
		-0.782238, 0.602574, -0.158140,
		46.751312, 43.968014, 33.284229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.308990, 44.132927, 33.838871>,  <47.298882, 43.546215, 33.394928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.308990, 44.132927, 33.838871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.918747, 44.087486, 33.763733>,  <46.684601, 44.060223, 33.718651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.918747, 44.087486, 33.763733>,  <47.308990, 44.132927, 33.838871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.918747, 44.087486, 33.763733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192611, 0.032475, 0.980738,
		-0.105317, 0.992995, -0.053565,
		-0.975607, -0.113605, -0.187842,
		46.626064, 44.053406, 33.707382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.932587, 44.607418, 34.291798>,  <47.308990, 44.132927, 33.838871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.932587, 44.607418, 34.291798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.665268, 44.339813, 34.161686>,  <46.504879, 44.179249, 34.083618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.665268, 44.339813, 34.161686>,  <46.932587, 44.607418, 34.291798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.665268, 44.339813, 34.161686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379184, -0.069836, 0.922682,
		-0.640001, 0.739964, -0.207008,
		-0.668295, -0.669011, -0.325277,
		46.464779, 44.139111, 34.064102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.242558, 44.808559, 34.617214>,  <46.932587, 44.607418, 34.291798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.242558, 44.808559, 34.617214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.257141, 44.418846, 34.528267>,  <46.265892, 44.185020, 34.474899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.257141, 44.418846, 34.528267>,  <46.242558, 44.808559, 34.617214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257141, 44.418846, 34.528267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320641, -0.222158, 0.920780,
		-0.946499, 0.037730, -0.320493,
		0.036459, -0.974280, -0.222370,
		46.268078, 44.126560, 34.461555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612671, 44.554283, 34.801250>,  <46.242558, 44.808559, 34.617214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612671, 44.554283, 34.801250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.822441, 44.214138, 34.783974>,  <45.948303, 44.010052, 34.773609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.822441, 44.214138, 34.783974>,  <45.612671, 44.554283, 34.801250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822441, 44.214138, 34.783974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301490, -0.232890, 0.924590,
		-0.796294, -0.471856, -0.378508,
		0.524424, -0.850361, -0.043190,
		45.979767, 43.959030, 34.771015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203300, 43.956783, 34.917313>,  <45.612671, 44.554283, 34.801250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203300, 43.956783, 34.917313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.561943, 43.800163, 35.000046>,  <45.777130, 43.706192, 35.049686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.561943, 43.800163, 35.000046>,  <45.203300, 43.956783, 34.917313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.561943, 43.800163, 35.000046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276912, -0.131283, 0.951885,
		-0.345560, -0.910742, -0.226135,
		0.896609, -0.391552, 0.206829,
		45.830925, 43.682697, 35.062096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071621, 43.443710, 35.290165>,  <45.203300, 43.956783, 34.917313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071621, 43.443710, 35.290165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.456459, 43.494720, 35.386589>,  <45.687363, 43.525326, 35.444443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.456459, 43.494720, 35.386589>,  <45.071621, 43.443710, 35.290165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.456459, 43.494720, 35.386589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165375, -0.430039, 0.887535,
		0.216850, -0.893758, -0.392648,
		0.962095, 0.127527, 0.241058,
		45.745087, 43.532978, 35.458908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192490, 42.837433, 35.581951>,  <45.071621, 43.443710, 35.290165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192490, 42.837433, 35.581951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.490242, 43.057484, 35.733349>,  <45.668896, 43.189514, 35.824188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.490242, 43.057484, 35.733349>,  <45.192490, 42.837433, 35.581951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490242, 43.057484, 35.733349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311066, -0.215874, 0.925547,
		0.590873, -0.806697, 0.010433,
		0.744384, 0.550126, 0.378490,
		45.713558, 43.222523, 35.846897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397343, 42.550827, 36.179745>,  <45.192490, 42.837433, 35.581951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397343, 42.550827, 36.179745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.546585, 42.915283, 36.249733>,  <45.636131, 43.133957, 36.291725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.546585, 42.915283, 36.249733>,  <45.397343, 42.550827, 36.179745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.546585, 42.915283, 36.249733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231326, -0.091272, 0.968585,
		0.898489, -0.401856, 0.176717,
		0.373103, 0.911143, 0.174967,
		45.658516, 43.188625, 36.302223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723946, 42.392403, 36.802723>,  <45.397343, 42.550827, 36.179745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723946, 42.392403, 36.802723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.703491, 42.791264, 36.780575>,  <45.691219, 43.030582, 36.767284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.703491, 42.791264, 36.780575>,  <45.723946, 42.392403, 36.802723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.703491, 42.791264, 36.780575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122617, 0.048759, 0.991256,
		0.991136, 0.057476, 0.119775,
		-0.051133, 0.997156, -0.055374,
		45.688152, 43.090408, 36.763962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.993343, 42.570824, 37.499950>,  <45.723946, 42.392403, 36.802723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.993343, 42.570824, 37.499950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.823692, 42.902630, 37.354610>,  <45.721901, 43.101715, 37.267406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.823692, 42.902630, 37.354610>,  <45.993343, 42.570824, 37.499950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.823692, 42.902630, 37.354610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286785, 0.257546, 0.922727,
		0.858994, 0.495556, 0.128661,
		-0.424126, 0.829515, -0.363348,
		45.696453, 43.151485, 37.245605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222935, 43.080482, 37.943035>,  <45.993343, 42.570824, 37.499950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222935, 43.080482, 37.943035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.869492, 43.168133, 37.777523>,  <45.657425, 43.220722, 37.678215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.869492, 43.168133, 37.777523>,  <46.222935, 43.080482, 37.943035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869492, 43.168133, 37.777523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354166, 0.265265, 0.896773,
		0.306269, 0.938945, -0.156783,
		-0.883610, 0.219126, -0.413784,
		45.604408, 43.233871, 37.653389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.044807, 43.743366, 38.205009>,  <46.222935, 43.080482, 37.943035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.044807, 43.743366, 38.205009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.693199, 43.590111, 38.091503>,  <45.482235, 43.498158, 38.023399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.693199, 43.590111, 38.091503>,  <46.044807, 43.743366, 38.205009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.693199, 43.590111, 38.091503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427122, 0.368325, 0.825774,
		-0.211871, 0.847076, -0.487414,
		-0.879021, -0.383143, -0.283767,
		45.429493, 43.475166, 38.006374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604977, 44.289047, 38.329273>,  <46.044807, 43.743366, 38.205009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604977, 44.289047, 38.329273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.383179, 43.956333, 38.318962>,  <45.250099, 43.756702, 38.312775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.383179, 43.956333, 38.318962>,  <45.604977, 44.289047, 38.329273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383179, 43.956333, 38.318962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526298, 0.326512, 0.785112,
		-0.644631, 0.448906, -0.618817,
		-0.554493, -0.831789, -0.025778,
		45.216831, 43.706795, 38.311230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833633, 44.456623, 38.294956>,  <45.604977, 44.289047, 38.329273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833633, 44.456623, 38.294956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.892700, 44.093224, 38.451324>,  <44.928139, 43.875183, 38.545147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.892700, 44.093224, 38.451324>,  <44.833633, 44.456623, 38.294956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892700, 44.093224, 38.451324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644714, 0.211317, 0.734636,
		-0.750027, -0.360510, -0.554520,
		0.147664, -0.908503, 0.390919,
		44.937000, 43.820671, 38.568600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317314, 44.448502, 38.745464>,  <44.833633, 44.456623, 38.294956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317314, 44.448502, 38.745464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.503021, 44.104279, 38.829277>,  <44.614445, 43.897747, 38.879562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.503021, 44.104279, 38.829277>,  <44.317314, 44.448502, 38.745464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503021, 44.104279, 38.829277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404350, 0.004543, 0.914593,
		-0.788011, -0.509336, -0.345856,
		0.464264, -0.860556, 0.209530,
		44.642300, 43.846111, 38.892136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823204, 44.052914, 39.070438>,  <44.317314, 44.448502, 38.745464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823204, 44.052914, 39.070438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.176056, 43.905697, 39.188004>,  <44.387768, 43.817368, 39.258545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.176056, 43.905697, 39.188004>,  <43.823204, 44.052914, 39.070438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176056, 43.905697, 39.188004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340115, -0.066069, 0.938060,
		-0.325830, -0.927458, -0.183460,
		0.882132, -0.368045, 0.293915,
		44.440697, 43.795284, 39.276176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681885, 43.437351, 39.461781>,  <43.823204, 44.052914, 39.070438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681885, 43.437351, 39.461781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.055450, 43.544945, 39.555965>,  <44.279591, 43.609501, 39.612476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.055450, 43.544945, 39.555965>,  <43.681885, 43.437351, 39.461781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055450, 43.544945, 39.555965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235073, -0.034131, 0.971378,
		0.269325, -0.962539, 0.031356,
		0.933919, 0.268988, 0.235460,
		44.335625, 43.625641, 39.626602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906605, 42.936886, 39.874275>,  <43.681885, 43.437351, 39.461781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.906605, 42.936886, 39.874275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.103416, 43.278152, 39.943577>,  <44.221504, 43.482914, 39.985157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.103416, 43.278152, 39.943577>,  <43.906605, 42.936886, 39.874275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103416, 43.278152, 39.943577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059753, -0.165441, 0.984408,
		0.868528, -0.494705, -0.030422,
		0.492025, 0.853168, 0.173250,
		44.251022, 43.534103, 39.995552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323997, 42.787006, 40.485806>,  <43.906605, 42.936886, 39.874275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323997, 42.787006, 40.485806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.352951, 43.185875, 40.477783>,  <44.370323, 43.425198, 40.472969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.352951, 43.185875, 40.477783>,  <44.323997, 42.787006, 40.485806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352951, 43.185875, 40.477783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059491, 0.015757, 0.998104,
		0.995601, -0.073437, -0.058183,
		0.072381, 0.997175, -0.020057,
		44.374664, 43.485027, 40.471767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.995613, 43.041084, 40.790558>,  <44.323997, 42.787006, 40.485806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.995613, 43.041084, 40.790558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.737106, 43.344597, 40.823025>,  <44.582001, 43.526703, 40.842506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.737106, 43.344597, 40.823025>,  <44.995613, 43.041084, 40.790558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737106, 43.344597, 40.823025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227441, 0.089990, 0.969625,
		0.728426, 0.645102, -0.230735,
		-0.646271, 0.758779, 0.081171,
		44.543224, 43.572231, 40.847378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269222, 43.537651, 41.219734>,  <44.995613, 43.041084, 40.790558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269222, 43.537651, 41.219734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.880424, 43.624870, 41.254772>,  <44.647144, 43.677200, 41.275795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.880424, 43.624870, 41.254772>,  <45.269222, 43.537651, 41.219734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880424, 43.624870, 41.254772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114630, 0.114558, 0.986781,
		0.205132, 0.969191, -0.136345,
		-0.971998, 0.218050, 0.087599,
		44.588825, 43.690285, 41.281052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.239849, 44.221195, 41.629520>,  <45.269222, 43.537651, 41.219734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.239849, 44.221195, 41.629520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.880074, 44.046955, 41.643711>,  <44.664207, 43.942413, 41.652225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.880074, 44.046955, 41.643711>,  <45.239849, 44.221195, 41.629520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880074, 44.046955, 41.643711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050317, 0.183850, 0.981665,
		-0.434132, 0.881167, -0.187281,
		-0.899443, -0.435596, 0.035478,
		44.610241, 43.916275, 41.654354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865574, 44.655663, 42.024651>,  <45.239849, 44.221195, 41.629520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865574, 44.655663, 42.024651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.670631, 44.306858, 42.042877>,  <44.553665, 44.097576, 42.053814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.670631, 44.306858, 42.042877>,  <44.865574, 44.655663, 42.024651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670631, 44.306858, 42.042877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129254, 0.123647, 0.983872,
		-0.863582, 0.473610, -0.172972,
		-0.487360, -0.872012, 0.045564,
		44.524422, 44.045254, 42.056545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166412, 44.829723, 42.262508>,  <44.865574, 44.655663, 42.024651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166412, 44.829723, 42.262508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.255325, 44.450829, 42.354881>,  <44.308674, 44.223492, 42.410305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.255325, 44.450829, 42.354881>,  <44.166412, 44.829723, 42.262508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.255325, 44.450829, 42.354881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133386, 0.205089, 0.969612,
		-0.965814, -0.246335, -0.080760,
		0.222286, -0.947237, 0.230936,
		44.322010, 44.166656, 42.424164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537796, 44.574646, 42.807491>,  <44.166412, 44.829723, 42.262508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537796, 44.574646, 42.807491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.822456, 44.301266, 42.872547>,  <43.993252, 44.137238, 42.911583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.822456, 44.301266, 42.872547>,  <43.537796, 44.574646, 42.807491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822456, 44.301266, 42.872547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169199, 0.057954, 0.983876,
		-0.681855, -0.727695, -0.074396,
		0.711650, -0.683448, 0.162642,
		44.035950, 44.096230, 42.921341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239223, 43.969803, 43.189533>,  <43.537796, 44.574646, 42.807491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239223, 43.969803, 43.189533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.634895, 43.967304, 43.248165>,  <43.872299, 43.965805, 43.283344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.634895, 43.967304, 43.248165>,  <43.239223, 43.969803, 43.189533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634895, 43.967304, 43.248165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146028, 0.054788, 0.987762,
		-0.014205, -0.998478, 0.053282,
		0.989178, -0.006251, 0.146584,
		43.931648, 43.965431, 43.292141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.335442, 43.579399, 43.801620>,  <43.239223, 43.969803, 43.189533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.335442, 43.579399, 43.801620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.686844, 43.767025, 43.765388>,  <43.897686, 43.879601, 43.743649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.686844, 43.767025, 43.765388>,  <43.335442, 43.579399, 43.801620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686844, 43.767025, 43.765388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090005, 0.023691, 0.995659,
		0.469174, -0.882846, -0.021405,
		0.878507, 0.469064, -0.090576,
		43.950397, 43.907745, 43.738216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870232, 43.373165, 44.352791>,  <43.335442, 43.579399, 43.801620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870232, 43.373165, 44.352791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.013771, 43.728462, 44.238068>,  <44.099895, 43.941639, 44.169235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.013771, 43.728462, 44.238068>,  <43.870232, 43.373165, 44.352791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013771, 43.728462, 44.238068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281313, 0.190063, 0.940606,
		0.889995, -0.418216, -0.181670,
		0.358847, 0.888241, -0.286805,
		44.121426, 43.994934, 44.152027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155109, 43.608883, 44.936596>,  <43.870232, 43.373165, 44.352791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155109, 43.608883, 44.936596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.193794, 43.935596, 44.709084>,  <44.217007, 44.131622, 44.572575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.193794, 43.935596, 44.709084>,  <44.155109, 43.608883, 44.936596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193794, 43.935596, 44.709084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024164, 0.569366, 0.821729,
		0.995019, -0.093215, 0.035328,
		0.096713, 0.816782, -0.568782,
		44.222809, 44.180630, 44.538448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861259, 43.978954, 45.098171>,  <44.155109, 43.608883, 44.936596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861259, 43.978954, 45.098171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.545700, 44.198483, 44.987583>,  <44.356365, 44.330200, 44.921230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.545700, 44.198483, 44.987583>,  <44.861259, 43.978954, 45.098171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545700, 44.198483, 44.987583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068358, 0.525472, 0.848060,
		0.610711, 0.650134, -0.452060,
		-0.788897, 0.548822, -0.276470,
		44.309032, 44.363129, 44.904644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898609, 44.710251, 45.420265>,  <44.861259, 43.978954, 45.098171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898609, 44.710251, 45.420265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.522507, 44.727615, 45.285187>,  <44.296844, 44.738033, 45.204140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.522507, 44.727615, 45.285187>,  <44.898609, 44.710251, 45.420265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522507, 44.727615, 45.285187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233066, 0.640967, 0.731329,
		0.248200, 0.766340, -0.592553,
		-0.940254, 0.043412, -0.337696,
		44.240429, 44.740639, 45.183880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763275, 45.351025, 45.467316>,  <44.898609, 44.710251, 45.420265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763275, 45.351025, 45.467316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.401070, 45.181793, 45.480255>,  <44.183746, 45.080254, 45.488018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.401070, 45.181793, 45.480255>,  <44.763275, 45.351025, 45.467316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401070, 45.181793, 45.480255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263557, 0.620560, 0.738541,
		-0.332531, 0.660237, -0.673432,
		-0.905517, -0.423076, 0.032346,
		44.129414, 45.054871, 45.489960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311031, 45.931332, 45.546192>,  <44.763275, 45.351025, 45.467316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311031, 45.931332, 45.546192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.091957, 45.620975, 45.671432>,  <43.960514, 45.434761, 45.746578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.091957, 45.620975, 45.671432>,  <44.311031, 45.931332, 45.546192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091957, 45.620975, 45.671432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358018, 0.555557, 0.750453,
		-0.756216, 0.298916, -0.582054,
		-0.547687, -0.775890, 0.313104,
		43.927650, 45.388210, 45.765362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676373, 46.259483, 45.718784>,  <44.311031, 45.931332, 45.546192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676373, 46.259483, 45.718784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.686562, 45.898331, 45.890442>,  <43.692677, 45.681641, 45.993435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.686562, 45.898331, 45.890442>,  <43.676373, 46.259483, 45.718784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686562, 45.898331, 45.890442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329962, 0.397630, 0.856163,
		-0.943651, -0.163409, -0.287786,
		0.025472, -0.902878, 0.429143,
		43.694202, 45.627468, 46.019184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034725, 46.024216, 46.089634>,  <43.676373, 46.259483, 45.718784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034725, 46.024216, 46.089634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.361244, 45.852108, 46.243790>,  <43.557156, 45.748844, 46.336285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.361244, 45.852108, 46.243790>,  <43.034725, 46.024216, 46.089634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361244, 45.852108, 46.243790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235538, 0.361266, 0.902224,
		-0.527432, -0.827256, 0.193554,
		0.816295, -0.430273, 0.385393,
		43.606133, 45.723026, 46.359409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737278, 45.695171, 46.674660>,  <43.034725, 46.024216, 46.089634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737278, 45.695171, 46.674660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.132042, 45.718040, 46.734978>,  <43.368900, 45.731762, 46.771168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.132042, 45.718040, 46.734978>,  <42.737278, 45.695171, 46.674660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132042, 45.718040, 46.734978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159780, 0.219880, 0.962353,
		0.021868, -0.973850, 0.226138,
		0.986911, 0.057177, 0.150793,
		43.428116, 45.735195, 46.780216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793644, 45.418858, 47.326527>,  <42.737278, 45.695171, 46.674660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793644, 45.418858, 47.326527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.152306, 45.587193, 47.271534>,  <43.367504, 45.688194, 47.238537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.152306, 45.587193, 47.271534>,  <42.793644, 45.418858, 47.326527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152306, 45.587193, 47.271534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017537, 0.276529, 0.960846,
		0.442379, -0.863960, 0.240571,
		0.896656, 0.420839, -0.137482,
		43.421303, 45.713444, 47.230289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200245, 45.198311, 47.887871>,  <42.793644, 45.418858, 47.326527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200245, 45.198311, 47.887871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.409706, 45.515652, 47.763687>,  <43.535385, 45.706055, 47.689178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.409706, 45.515652, 47.763687>,  <43.200245, 45.198311, 47.887871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409706, 45.515652, 47.763687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285641, 0.179824, 0.941314,
		0.802618, -0.581604, -0.132447,
		0.523654, 0.793347, -0.310460,
		43.566803, 45.753654, 47.670547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934429, 45.107384, 48.095325>,  <43.200245, 45.198311, 47.887871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934429, 45.107384, 48.095325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.843361, 45.492729, 48.038616>,  <43.788719, 45.723938, 48.004589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.843361, 45.492729, 48.038616>,  <43.934429, 45.107384, 48.095325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843361, 45.492729, 48.038616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477170, 0.237292, 0.846168,
		0.848809, 0.124995, -0.513712,
		-0.227667, 0.963363, -0.141772,
		43.775063, 45.781738, 47.996086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613159, 45.512608, 48.107723>,  <43.934429, 45.107384, 48.095325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613159, 45.512608, 48.107723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.292534, 45.729828, 48.207794>,  <44.100159, 45.860161, 48.267838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.292534, 45.729828, 48.207794>,  <44.613159, 45.512608, 48.107723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292534, 45.729828, 48.207794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428949, 0.230813, 0.873343,
		0.416526, 0.807354, -0.417953,
		-0.801566, 0.543051, 0.250174,
		44.052063, 45.892742, 48.282848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942574, 46.082169, 48.401962>,  <44.613159, 45.512608, 48.107723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942574, 46.082169, 48.401962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.561264, 46.114449, 48.518414>,  <44.332478, 46.133816, 48.588284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.561264, 46.114449, 48.518414>,  <44.942574, 46.082169, 48.401962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561264, 46.114449, 48.518414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302081, 0.265674, 0.915513,
		-0.003466, 0.960680, -0.277638,
		-0.953276, 0.080696, 0.291124,
		44.275280, 46.138657, 48.605751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910912, 46.727947, 48.707836>,  <44.942574, 46.082169, 48.401962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910912, 46.727947, 48.707836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.618629, 46.503853, 48.863888>,  <44.443260, 46.369396, 48.957520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.618629, 46.503853, 48.863888>,  <44.910912, 46.727947, 48.707836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618629, 46.503853, 48.863888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358316, 0.171697, 0.917676,
		-0.581098, 0.810344, 0.075281,
		-0.730708, -0.560235, 0.390132,
		44.399418, 46.335781, 48.980927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612587, 47.101898, 49.169342>,  <44.910912, 46.727947, 48.707836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612587, 47.101898, 49.169342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.509315, 46.726822, 49.262367>,  <44.447353, 46.501778, 49.318180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.509315, 46.726822, 49.262367>,  <44.612587, 47.101898, 49.169342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509315, 46.726822, 49.262367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362599, 0.129073, 0.922964,
		-0.895469, 0.322617, 0.306680,
		-0.258180, -0.937688, 0.232561,
		44.431862, 46.445515, 49.332134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255405, 47.178928, 49.829601>,  <44.612587, 47.101898, 49.169342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255405, 47.178928, 49.829601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.347107, 46.790100, 49.809532>,  <44.402130, 46.556805, 49.797489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.347107, 46.790100, 49.809532>,  <44.255405, 47.178928, 49.829601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347107, 46.790100, 49.809532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179474, -0.008450, 0.983727,
		-0.956677, -0.234532, 0.172525,
		0.229257, -0.972072, -0.050177,
		44.415886, 46.498478, 49.794479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952972, 46.925205, 50.346684>,  <44.255405, 47.178928, 49.829601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952972, 46.925205, 50.346684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.212059, 46.633408, 50.258774>,  <44.367512, 46.458328, 50.206028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.212059, 46.633408, 50.258774>,  <43.952972, 46.925205, 50.346684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212059, 46.633408, 50.258774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414262, 0.095124, 0.905173,
		-0.639412, -0.677341, 0.363815,
		0.647718, -0.729494, -0.219774,
		44.406376, 46.414558, 50.192841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938934, 46.443127, 50.818577>,  <43.952972, 46.925205, 50.346684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938934, 46.443127, 50.818577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.305191, 46.390167, 50.666756>,  <44.524944, 46.358391, 50.575661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.305191, 46.390167, 50.666756>,  <43.938934, 46.443127, 50.818577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305191, 46.390167, 50.666756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395838, 0.132456, 0.908718,
		-0.070043, -0.982306, 0.173693,
		0.915645, -0.132404, -0.379556,
		44.579884, 46.350445, 50.552887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325363, 45.991581, 51.294724>,  <43.938934, 46.443127, 50.818577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325363, 45.991581, 51.294724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.601486, 46.191650, 51.085609>,  <44.767159, 46.311691, 50.960140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.601486, 46.191650, 51.085609>,  <44.325363, 45.991581, 51.294724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601486, 46.191650, 51.085609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546676, 0.112741, 0.829719,
		0.473942, -0.858555, -0.195607,
		0.690307, 0.500173, -0.522784,
		44.808578, 46.341702, 50.928776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.880547, 45.718754, 51.501457>,  <44.325363, 45.991581, 51.294724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.880547, 45.718754, 51.501457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.028496, 46.044441, 51.322464>,  <45.117268, 46.239853, 51.215069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.028496, 46.044441, 51.322464>,  <44.880547, 45.718754, 51.501457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028496, 46.044441, 51.322464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515572, 0.220800, 0.827909,
		0.772901, -0.536936, -0.338119,
		0.369877, 0.814216, -0.447485,
		45.139458, 46.288708, 51.188217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602489, 45.677723, 51.567444>,  <44.880547, 45.718754, 51.501457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602489, 45.677723, 51.567444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.527267, 46.065521, 51.504570>,  <45.482136, 46.298203, 51.466846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.527267, 46.065521, 51.504570>,  <45.602489, 45.677723, 51.567444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527267, 46.065521, 51.504570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606133, 0.240487, 0.758135,
		0.772812, 0.047295, -0.632870,
		-0.188053, 0.969499, -0.157184,
		45.470852, 46.356373, 51.457417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189060, 45.905323, 51.672714>,  <45.602489, 45.677723, 51.567444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.189060, 45.905323, 51.672714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.939827, 46.217575, 51.692245>,  <45.790287, 46.404926, 51.703964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.939827, 46.217575, 51.692245>,  <46.189060, 45.905323, 51.672714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.939827, 46.217575, 51.692245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576519, 0.416183, 0.703148,
		0.528576, 0.466272, -0.709364,
		-0.623083, 0.780630, 0.048830,
		45.752903, 46.451763, 51.706894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.662205, 46.610760, 51.650013>,  <46.189060, 45.905323, 51.672714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.662205, 46.610760, 51.650013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.315262, 46.724770, 51.813206>,  <46.107098, 46.793175, 51.911121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.315262, 46.724770, 51.813206>,  <46.662205, 46.610760, 51.650013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.315262, 46.724770, 51.813206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497129, 0.534920, 0.683172,
		-0.023514, 0.795374, -0.605663,
		-0.867358, 0.285029, 0.407981,
		46.055054, 46.810280, 51.935600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.688610, 47.369492, 51.678604>,  <46.662205, 46.610760, 51.650013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.688610, 47.369492, 51.678604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.413994, 47.253677, 51.945385>,  <46.249226, 47.184189, 52.105453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.413994, 47.253677, 51.945385>,  <46.688610, 47.369492, 51.678604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.413994, 47.253677, 51.945385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447210, 0.555108, 0.701326,
		-0.573292, 0.779759, -0.251621,
		-0.686542, -0.289537, 0.666954,
		46.208031, 47.166817, 52.145470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.535313, 47.948608, 52.016285>,  <46.688610, 47.369492, 51.678604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.535313, 47.948608, 52.016285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.359795, 47.674797, 52.249138>,  <46.254482, 47.510509, 52.388851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.359795, 47.674797, 52.249138>,  <46.535313, 47.948608, 52.016285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.359795, 47.674797, 52.249138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414537, 0.420574, 0.807017,
		-0.797255, 0.595434, 0.099215,
		-0.438798, -0.684526, 0.582134,
		46.228157, 47.469440, 52.423779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.236908, 48.343517, 52.577847>,  <46.535313, 47.948608, 52.016285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.236908, 48.343517, 52.577847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.249771, 47.970306, 52.721191>,  <46.257488, 47.746380, 52.807198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.249771, 47.970306, 52.721191>,  <46.236908, 48.343517, 52.577847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.249771, 47.970306, 52.721191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224301, 0.356143, 0.907111,
		-0.973989, 0.051210, 0.220732,
		0.032159, -0.933027, 0.358366,
		46.259418, 47.690399, 52.828701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843891, 48.357395, 53.259373>,  <46.236908, 48.343517, 52.577847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843891, 48.357395, 53.259373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.073479, 48.032364, 53.299904>,  <46.211231, 47.837345, 53.324223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.073479, 48.032364, 53.299904>,  <45.843891, 48.357395, 53.259373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.073479, 48.032364, 53.299904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173934, 0.241898, 0.954585,
		-0.800190, -0.530279, 0.280178,
		0.573971, -0.812582, 0.101331,
		46.245670, 47.788589, 53.330303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573540, 47.931026, 53.880283>,  <45.843891, 48.357395, 53.259373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573540, 47.931026, 53.880283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.951027, 47.806999, 53.834236>,  <46.177521, 47.732582, 53.806610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.951027, 47.806999, 53.834236>,  <45.573540, 47.931026, 53.880283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951027, 47.806999, 53.834236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183555, 0.201462, 0.962144,
		-0.275141, -0.929123, 0.247038,
		0.943719, -0.310070, -0.115115,
		46.234142, 47.713978, 53.799702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.687912, 47.484329, 54.406891>,  <45.573540, 47.931026, 53.880283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.687912, 47.484329, 54.406891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.059364, 47.588799, 54.301483>,  <46.282234, 47.651482, 54.238239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.059364, 47.588799, 54.301483>,  <45.687912, 47.484329, 54.406891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.059364, 47.588799, 54.301483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190433, 0.274035, 0.942677,
		0.318413, -0.925578, 0.204741,
		0.928627, 0.261172, -0.263517,
		46.337952, 47.667149, 54.222427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182030, 47.175472, 54.944828>,  <45.687912, 47.484329, 54.406891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182030, 47.175472, 54.944828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.363434, 47.490906, 54.778713>,  <46.472275, 47.680164, 54.679043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.363434, 47.490906, 54.778713>,  <46.182030, 47.175472, 54.944828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363434, 47.490906, 54.778713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278084, 0.317496, 0.906568,
		0.846757, -0.526624, -0.075305,
		0.453511, 0.788584, -0.415287,
		46.499489, 47.727482, 54.654125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.786179, 47.234108, 55.335735>,  <46.182030, 47.175472, 54.944828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.786179, 47.234108, 55.335735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.768150, 47.586189, 55.146751>,  <46.757332, 47.797436, 55.033363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.768150, 47.586189, 55.146751>,  <46.786179, 47.234108, 55.335735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.768150, 47.586189, 55.146751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265256, 0.466505, 0.843808,
		0.963124, -0.087292, -0.254504,
		-0.045070, 0.880200, -0.472457,
		46.754631, 47.850250, 55.005013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.468925, 47.457165, 55.404552>,  <46.786179, 47.234108, 55.335735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.468925, 47.457165, 55.404552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.224503, 47.763847, 55.325790>,  <47.077850, 47.947857, 55.278534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.224503, 47.763847, 55.325790>,  <47.468925, 47.457165, 55.404552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.224503, 47.763847, 55.325790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295974, 0.452000, 0.841484,
		0.734173, 0.455915, -0.503123,
		-0.611056, 0.766706, -0.196907,
		47.041187, 47.993858, 55.266720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.863449, 48.015491, 55.590061>,  <47.468925, 47.457165, 55.404552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.863449, 48.015491, 55.590061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.482666, 48.137657, 55.581047>,  <47.254196, 48.210957, 55.575638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.482666, 48.137657, 55.581047>,  <47.863449, 48.015491, 55.590061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.482666, 48.137657, 55.581047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152512, 0.536597, 0.829942,
		0.265566, 0.786630, -0.557394,
		-0.951953, 0.305413, -0.022531,
		47.197079, 48.229282, 55.574287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.895206, 48.862122, 55.518379>,  <47.863449, 48.015491, 55.590061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.895206, 48.862122, 55.518379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.537376, 48.742256, 55.651009>,  <47.322678, 48.670338, 55.730587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.537376, 48.742256, 55.651009>,  <47.895206, 48.862122, 55.518379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.537376, 48.742256, 55.651009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043399, 0.680152, 0.731785,
		-0.444804, 0.669027, -0.595443,
		-0.894576, -0.299660, 0.331570,
		47.269005, 48.652359, 55.750481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.468327, 49.413960, 55.642315>,  <47.895206, 48.862122, 55.518379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.468327, 49.413960, 55.642315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.324509, 49.126656, 55.880585>,  <47.238220, 48.954273, 56.023548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.324509, 49.126656, 55.880585>,  <47.468327, 49.413960, 55.642315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.324509, 49.126656, 55.880585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124452, 0.669575, 0.732244,
		-0.924793, 0.189139, -0.330129,
		-0.359541, -0.718259, 0.595679,
		47.216648, 48.911179, 56.059288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<46.561527, 48.047855, 56.797974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.743202, 48.318604, 56.566261>,  <46.852207, 48.481052, 56.427235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.743202, 48.318604, 56.566261>,  <46.561527, 48.047855, 56.797974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.743202, 48.318604, 56.566261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442636, -0.392836, -0.806072,
		-0.773167, 0.622516, 0.121187,
		0.454186, 0.676871, -0.579276,
		46.879459, 48.521664, 56.392479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132004, 48.093632, 56.174660>,  <46.561527, 48.047855, 56.797974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132004, 48.093632, 56.174660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.452217, 48.298737, 56.050587>,  <46.644344, 48.421799, 55.976143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.452217, 48.298737, 56.050587>,  <46.132004, 48.093632, 56.174660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452217, 48.298737, 56.050587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156425, -0.320862, -0.934119,
		-0.578508, 0.796318, -0.176653,
		0.800537, 0.512762, -0.310185,
		46.692379, 48.452564, 55.957531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.921928, 48.594639, 55.661285>,  <46.132004, 48.093632, 56.174660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.921928, 48.594639, 55.661285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.308571, 48.498260, 55.626362>,  <46.540558, 48.440434, 55.605408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.308571, 48.498260, 55.626362>,  <45.921928, 48.594639, 55.661285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308571, 48.498260, 55.626362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170457, -0.350077, -0.921081,
		0.191363, 0.905204, -0.379456,
		0.966605, -0.240941, -0.087306,
		46.598553, 48.425980, 55.600170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.260025, 48.999245, 55.149616>,  <45.921928, 48.594639, 55.661285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.260025, 48.999245, 55.149616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.496101, 48.677238, 55.173717>,  <46.637749, 48.484035, 55.188179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.496101, 48.677238, 55.173717>,  <46.260025, 48.999245, 55.149616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496101, 48.677238, 55.173717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125127, -0.164959, -0.978331,
		0.797507, 0.569863, -0.198087,
		0.590191, -0.805012, 0.060251,
		46.673161, 48.435734, 55.191792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.728355, 48.994064, 54.538280>,  <46.260025, 48.999245, 55.149616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.728355, 48.994064, 54.538280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.730583, 48.618240, 54.675217>,  <46.731918, 48.392746, 54.757378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.730583, 48.618240, 54.675217>,  <46.728355, 48.994064, 54.538280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.730583, 48.618240, 54.675217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046670, -0.342217, -0.938461,
		0.998895, -0.010750, -0.045755,
		0.005570, -0.939560, 0.342341,
		46.732254, 48.336372, 54.777920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.251583, 48.627647, 54.114086>,  <46.728355, 48.994064, 54.538280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.251583, 48.627647, 54.114086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.029900, 48.344460, 54.289192>,  <46.896889, 48.174545, 54.394257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.029900, 48.344460, 54.289192>,  <47.251583, 48.627647, 54.114086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.029900, 48.344460, 54.289192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089394, -0.573498, -0.814315,
		0.827567, -0.412164, 0.381123,
		-0.554204, -0.707970, 0.437762,
		46.863640, 48.132069, 54.420521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.528328, 48.021049, 53.795803>,  <47.251583, 48.627647, 54.114086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.528328, 48.021049, 53.795803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.164848, 47.910919, 53.921310>,  <46.946758, 47.844841, 53.996616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.164848, 47.910919, 53.921310>,  <47.528328, 48.021049, 53.795803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.164848, 47.910919, 53.921310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229588, -0.298122, -0.926506,
		0.348636, -0.913957, 0.207692,
		-0.908704, -0.275330, 0.313770,
		46.892239, 47.828320, 54.015442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.473671, 47.420452, 53.524982>,  <47.528328, 48.021049, 53.795803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.473671, 47.420452, 53.524982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.102737, 47.537712, 53.618034>,  <46.880177, 47.608067, 53.673866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.102737, 47.537712, 53.618034>,  <47.473671, 47.420452, 53.524982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.102737, 47.537712, 53.618034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328378, -0.339254, -0.881518,
		-0.179495, -0.893852, 0.410865,
		-0.927334, 0.293147, 0.232627,
		46.824535, 47.625656, 53.687824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.116890, 46.848473, 53.321945>,  <47.473671, 47.420452, 53.524982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.116890, 46.848473, 53.321945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.822472, 47.115669, 53.365818>,  <46.645821, 47.275986, 53.392143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.822472, 47.115669, 53.365818>,  <47.116890, 46.848473, 53.321945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.822472, 47.115669, 53.365818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520513, -0.454894, -0.722591,
		-0.432783, -0.588955, 0.682518,
		-0.736047, 0.667985, 0.109688,
		46.601658, 47.316067, 53.398724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.427166, 46.543373, 53.417408>,  <47.116890, 46.848473, 53.321945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.427166, 46.543373, 53.417408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.372154, 46.890877, 53.227104>,  <46.339146, 47.099377, 53.112923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.372154, 46.890877, 53.227104>,  <46.427166, 46.543373, 53.417408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.372154, 46.890877, 53.227104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574445, -0.461253, -0.676208,
		-0.806906, 0.180301, 0.562489,
		-0.137529, 0.868756, -0.475761,
		46.330894, 47.151505, 53.084377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763859, 46.512894, 53.137875>,  <46.427166, 46.543373, 53.417408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763859, 46.512894, 53.137875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.921341, 46.805946, 52.915794>,  <46.015831, 46.981777, 52.782547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.921341, 46.805946, 52.915794>,  <45.763859, 46.512894, 53.137875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921341, 46.805946, 52.915794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697401, -0.155415, -0.699627,
		-0.598857, 0.662640, 0.449753,
		0.393703, 0.732635, -0.555198,
		46.039452, 47.025738, 52.749233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168468, 46.813599, 52.924789>,  <45.763859, 46.512894, 53.137875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168468, 46.813599, 52.924789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.488533, 46.904465, 52.702747>,  <45.680573, 46.958984, 52.569523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.488533, 46.904465, 52.702747>,  <45.168468, 46.813599, 52.924789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488533, 46.904465, 52.702747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539834, -0.130580, -0.831581,
		-0.261394, 0.965061, 0.018148,
		0.800157, 0.227168, -0.555106,
		45.728580, 46.972614, 52.536217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954494, 47.256939, 52.474049>,  <45.168468, 46.813599, 52.924789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954494, 47.256939, 52.474049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.277634, 47.112968, 52.287354>,  <45.471516, 47.026588, 52.175339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.277634, 47.112968, 52.287354>,  <44.954494, 47.256939, 52.474049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.277634, 47.112968, 52.287354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527233, -0.087319, -0.845222,
		0.263460, 0.928887, -0.260303,
		0.807846, -0.359923, -0.466735,
		45.519989, 47.004993, 52.147331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.959110, 47.555576, 51.780048>,  <44.954494, 47.256939, 52.474049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.959110, 47.555576, 51.780048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.201340, 47.237411, 51.770271>,  <45.346676, 47.046513, 51.764404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.201340, 47.237411, 51.770271>,  <44.959110, 47.555576, 51.780048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201340, 47.237411, 51.770271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346653, -0.236017, -0.907815,
		0.716319, 0.558223, -0.418658,
		0.605573, -0.795414, -0.024446,
		45.383011, 46.998787, 51.762936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.160156, 47.551857, 51.099930>,  <44.959110, 47.555576, 51.780048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.160156, 47.551857, 51.099930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.272285, 47.190651, 51.230156>,  <45.339561, 46.973927, 51.308292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.272285, 47.190651, 51.230156>,  <45.160156, 47.551857, 51.099930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272285, 47.190651, 51.230156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252089, -0.396508, -0.882741,
		0.926214, 0.165379, -0.338789,
		0.280319, -0.903012, 0.325562,
		45.356380, 46.919746, 51.327824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604153, 47.339867, 50.613033>,  <45.160156, 47.551857, 51.099930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604153, 47.339867, 50.613033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.458183, 47.010040, 50.785973>,  <45.370602, 46.812145, 50.889736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.458183, 47.010040, 50.785973>,  <45.604153, 47.339867, 50.613033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458183, 47.010040, 50.785973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348829, -0.309454, -0.884622,
		0.863222, -0.473631, -0.174707,
		-0.364920, -0.824568, 0.432344,
		45.348705, 46.762669, 50.915676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.685875, 46.798954, 50.123100>,  <45.604153, 47.339867, 50.613033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.685875, 46.798954, 50.123100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.406288, 46.683067, 50.384636>,  <45.238537, 46.613533, 50.541557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.406288, 46.683067, 50.384636>,  <45.685875, 46.798954, 50.123100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.406288, 46.683067, 50.384636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483100, -0.482847, -0.730393,
		0.527314, -0.826391, 0.197531,
		-0.698967, -0.289719, 0.653841,
		45.196598, 46.596153, 50.580788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708191, 46.079472, 49.970482>,  <45.685875, 46.798954, 50.123100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708191, 46.079472, 49.970482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.373329, 46.178780, 50.165428>,  <45.172413, 46.238365, 50.282398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.373329, 46.178780, 50.165428>,  <45.708191, 46.079472, 49.970482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373329, 46.178780, 50.165428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539873, -0.518080, -0.663423,
		0.087787, -0.818506, 0.567751,
		-0.837156, 0.248274, 0.487370,
		45.122181, 46.253262, 50.311638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329323, 45.537861, 49.797935>,  <45.708191, 46.079472, 49.970482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329323, 45.537861, 49.797935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.063889, 45.809551, 49.923347>,  <44.904629, 45.972565, 49.998596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.063889, 45.809551, 49.923347>,  <45.329323, 45.537861, 49.797935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063889, 45.809551, 49.923347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568216, -0.185017, -0.801810,
		-0.486603, -0.710225, 0.508723,
		-0.663588, 0.679227, 0.313531,
		44.864811, 46.013321, 50.017406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671490, 45.211460, 49.698643>,  <45.329323, 45.537861, 49.797935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671490, 45.211460, 49.698643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.606361, 45.605907, 49.711609>,  <44.567284, 45.842575, 49.719387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.606361, 45.605907, 49.711609>,  <44.671490, 45.211460, 49.698643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606361, 45.605907, 49.711609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524367, -0.058660, -0.849470,
		-0.835779, -0.155312, 0.526641,
		-0.162826, 0.986122, 0.032414,
		44.557514, 45.901745, 49.721333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030376, 45.181881, 49.466393>,  <44.671490, 45.211460, 49.698643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030376, 45.181881, 49.466393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.180016, 45.552258, 49.445656>,  <44.269798, 45.774483, 49.433212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.180016, 45.552258, 49.445656>,  <44.030376, 45.181881, 49.466393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180016, 45.552258, 49.445656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416739, 0.117903, -0.901348,
		-0.828481, 0.358795, 0.429982,
		0.374095, 0.925940, -0.051844,
		44.292244, 45.830040, 49.430103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449261, 45.589886, 49.451462>,  <44.030376, 45.181881, 49.466393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449261, 45.589886, 49.451462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.752121, 45.799244, 49.295113>,  <43.933838, 45.924858, 49.201302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.752121, 45.799244, 49.295113>,  <43.449261, 45.589886, 49.451462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752121, 45.799244, 49.295113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554752, 0.199231, -0.807811,
		-0.344929, 0.828471, 0.441202,
		0.757149, 0.523395, -0.390875,
		43.979267, 45.956261, 49.177849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129677, 46.179310, 49.122364>,  <43.449261, 45.589886, 49.451462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129677, 46.179310, 49.122364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.495033, 46.154213, 48.961475>,  <43.714249, 46.139156, 48.864944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.495033, 46.154213, 48.961475>,  <43.129677, 46.179310, 49.122364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495033, 46.154213, 48.961475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382223, 0.207817, -0.900398,
		0.140077, 0.976154, 0.165839,
		0.913391, -0.062738, -0.402219,
		43.769051, 46.135391, 48.840809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268131, 46.778187, 48.699230>,  <43.129677, 46.179310, 49.122364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268131, 46.778187, 48.699230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.491402, 46.475632, 48.562805>,  <43.625362, 46.294098, 48.480949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.491402, 46.475632, 48.562805>,  <43.268131, 46.778187, 48.699230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491402, 46.475632, 48.562805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364424, 0.145798, -0.919749,
		0.745411, 0.637671, -0.194265,
		0.558173, -0.756386, -0.341062,
		43.658855, 46.248714, 48.460487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454140, 47.017372, 47.918343>,  <43.268131, 46.778187, 48.699230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454140, 47.017372, 47.918343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.538345, 46.627800, 47.952148>,  <43.588871, 46.394058, 47.972431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.538345, 46.627800, 47.952148>,  <43.454140, 47.017372, 47.918343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538345, 46.627800, 47.952148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102905, -0.108048, -0.988806,
		0.972159, 0.199463, -0.122968,
		0.210517, -0.973930, 0.084514,
		43.601501, 46.335621, 47.977501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938190, 46.963013, 47.423893>,  <43.454140, 47.017372, 47.918343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938190, 46.963013, 47.423893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.829269, 46.583321, 47.486908>,  <43.763916, 46.355507, 47.524715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.829269, 46.583321, 47.486908>,  <43.938190, 46.963013, 47.423893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829269, 46.583321, 47.486908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165406, -0.207465, -0.964157,
		0.947888, -0.236485, 0.213501,
		-0.272303, -0.949228, 0.157538,
		43.747578, 46.298553, 47.534168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413208, 46.529907, 47.070225>,  <43.938190, 46.963013, 47.423893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413208, 46.529907, 47.070225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.119888, 46.265289, 47.132999>,  <43.943897, 46.106518, 47.170666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.119888, 46.265289, 47.132999>,  <44.413208, 46.529907, 47.070225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119888, 46.265289, 47.132999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201124, -0.431556, -0.879380,
		0.649476, -0.613285, 0.449513,
		-0.733300, -0.661544, 0.156939,
		43.899899, 46.066826, 47.180080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693382, 45.922188, 47.021523>,  <44.413208, 46.529907, 47.070225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693382, 45.922188, 47.021523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.310883, 45.829201, 46.950485>,  <44.081383, 45.773407, 46.907864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.310883, 45.829201, 46.950485>,  <44.693382, 45.922188, 47.021523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310883, 45.829201, 46.950485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276329, -0.518485, -0.809207,
		0.096040, -0.822879, 0.560041,
		-0.956252, -0.232472, -0.177590,
		44.024006, 45.759460, 46.897209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696346, 45.210178, 46.841282>,  <44.693382, 45.922188, 47.021523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696346, 45.210178, 46.841282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.375000, 45.376583, 46.670853>,  <44.182194, 45.476425, 46.568596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.375000, 45.376583, 46.670853>,  <44.696346, 45.210178, 46.841282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375000, 45.376583, 46.670853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271868, -0.380348, -0.883981,
		-0.529801, -0.825996, 0.192459,
		-0.803367, 0.416011, -0.426071,
		44.133991, 45.501385, 46.543030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.598839, 43.264557, 33.679153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.848679, 43.552219, 33.800930>,  <45.998585, 43.724815, 33.873997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.848679, 43.552219, 33.800930>,  <45.598839, 43.264557, 33.679153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848679, 43.552219, 33.800930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054757, 0.348550, -0.935689,
		-0.779021, 0.601104, 0.178327,
		0.624603, 0.719157, 0.304442,
		46.036060, 43.767967, 33.892262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375179, 43.964325, 33.457851>,  <45.598839, 43.264557, 33.679153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375179, 43.964325, 33.457851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.770477, 43.989346, 33.513660>,  <46.007656, 44.004356, 33.547146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.770477, 43.989346, 33.513660>,  <45.375179, 43.964325, 33.457851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770477, 43.989346, 33.513660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118648, 0.261897, -0.957775,
		-0.096449, 0.963067, 0.251396,
		0.988241, 0.062549, 0.139526,
		46.066948, 44.008110, 33.555519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.606274, 44.542549, 33.023777>,  <45.375179, 43.964325, 33.457851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.606274, 44.542549, 33.023777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.963234, 44.383080, 33.108322>,  <46.177410, 44.287395, 33.159050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.963234, 44.383080, 33.108322>,  <45.606274, 44.542549, 33.023777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.963234, 44.383080, 33.108322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349911, 0.315642, -0.882005,
		0.284922, 0.861061, 0.421182,
		0.892402, -0.398679, 0.211361,
		46.230953, 44.263477, 33.171730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866020, 44.564705, 32.972916>,  <45.606274, 44.542549, 33.023777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866020, 44.564705, 32.972916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.536446, 44.788055, 32.934269>,  <44.338699, 44.922066, 32.911079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.536446, 44.788055, 32.934269>,  <44.866020, 44.564705, 32.972916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.536446, 44.788055, 32.934269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220477, -0.158810, 0.962377,
		0.522028, 0.814243, 0.253960,
		-0.823940, 0.558380, -0.096618,
		44.289265, 44.955570, 32.905285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.825214, 45.036526, 33.559101>,  <44.866020, 44.564705, 32.972916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.825214, 45.036526, 33.559101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453026, 44.978729, 33.424435>,  <44.229713, 44.944050, 33.343636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453026, 44.978729, 33.424435>,  <44.825214, 45.036526, 33.559101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453026, 44.978729, 33.424435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326048, -0.092501, 0.940817,
		-0.167081, 0.985173, 0.038959,
		-0.930471, -0.144490, -0.336669,
		44.173885, 44.935383, 33.323433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446156, 45.556190, 33.875309>,  <44.825214, 45.036526, 33.559101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446156, 45.556190, 33.875309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.165550, 45.289162, 33.775532>,  <43.997185, 45.128944, 33.715664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.165550, 45.289162, 33.775532>,  <44.446156, 45.556190, 33.875309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165550, 45.289162, 33.775532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397915, 0.076538, 0.914224,
		-0.591218, 0.740601, -0.319329,
		-0.701517, -0.667571, -0.249445,
		43.955093, 45.088890, 33.700699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843330, 45.798363, 34.237663>,  <44.446156, 45.556190, 33.875309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843330, 45.798363, 34.237663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.755814, 45.418137, 34.149525>,  <43.703304, 45.189999, 34.096642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.755814, 45.418137, 34.149525>,  <43.843330, 45.798363, 34.237663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755814, 45.418137, 34.149525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316990, -0.144330, 0.937383,
		-0.922848, 0.274936, -0.269742,
		-0.218788, -0.950568, -0.220347,
		43.690178, 45.132965, 34.083420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127934, 45.686131, 34.458492>,  <43.843330, 45.798363, 34.237663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127934, 45.686131, 34.458492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.275787, 45.315277, 34.433846>,  <43.364498, 45.092766, 34.419056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.275787, 45.315277, 34.433846>,  <43.127934, 45.686131, 34.458492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275787, 45.315277, 34.433846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451400, -0.237134, 0.860235,
		-0.812165, -0.290155, -0.506161,
		0.369630, -0.927134, -0.061616,
		43.386677, 45.037136, 34.415359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521702, 45.253784, 34.652935>,  <43.127934, 45.686131, 34.458492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521702, 45.253784, 34.652935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.853043, 45.036644, 34.708290>,  <43.051846, 44.906361, 34.741501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.853043, 45.036644, 34.708290>,  <42.521702, 45.253784, 34.652935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853043, 45.036644, 34.708290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374696, -0.353235, 0.857221,
		-0.416460, -0.761932, -0.496006,
		0.828350, -0.542849, 0.138385,
		43.101547, 44.873791, 34.749805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162735, 44.582085, 34.775879>,  <42.521702, 45.253784, 34.652935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162735, 44.582085, 34.775879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.537636, 44.593159, 34.914902>,  <42.762577, 44.599804, 34.998318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.537636, 44.593159, 34.914902>,  <42.162735, 44.582085, 34.775879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537636, 44.593159, 34.914902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309079, -0.395336, 0.864974,
		0.161355, -0.918119, -0.361970,
		0.937249, 0.027690, 0.347561,
		42.818810, 44.601467, 35.019169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243282, 43.942726, 35.195896>,  <42.162735, 44.582085, 34.775879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243282, 43.942726, 35.195896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527374, 44.206509, 35.294434>,  <42.697830, 44.364780, 35.353558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527374, 44.206509, 35.294434>,  <42.243282, 43.942726, 35.195896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527374, 44.206509, 35.294434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142998, -0.207498, 0.967727,
		0.689294, -0.722535, -0.053070,
		0.710229, 0.659460, 0.246348,
		42.740444, 44.404346, 35.368340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573322, 43.675415, 35.813969>,  <42.243282, 43.942726, 35.195896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573322, 43.675415, 35.813969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.680672, 44.060734, 35.815990>,  <42.745083, 44.291927, 35.817204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.680672, 44.060734, 35.815990>,  <42.573322, 43.675415, 35.813969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680672, 44.060734, 35.815990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108432, 0.024999, 0.993790,
		0.957193, -0.267256, 0.111162,
		0.268375, 0.963301, 0.005050,
		42.761185, 44.349724, 35.817505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065166, 43.693459, 36.354828>,  <42.573322, 43.675415, 35.813969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065166, 43.693459, 36.354828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.952347, 44.074402, 36.308414>,  <42.884655, 44.302967, 36.280567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.952347, 44.074402, 36.308414>,  <43.065166, 43.693459, 36.354828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952347, 44.074402, 36.308414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002845, 0.121769, 0.992555,
		0.959397, 0.279617, -0.037054,
		-0.282047, 0.952359, -0.116029,
		42.867733, 44.360111, 36.273605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536373, 44.126919, 36.712177>,  <43.065166, 43.693459, 36.354828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536373, 44.126919, 36.712177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187553, 44.322239, 36.698952>,  <42.978260, 44.439430, 36.691017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187553, 44.322239, 36.698952>,  <43.536373, 44.126919, 36.712177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187553, 44.322239, 36.698952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072742, 0.196132, 0.977876,
		0.483984, 0.850349, -0.206556,
		-0.872048, 0.488301, -0.033069,
		42.925938, 44.468731, 36.689030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511993, 44.795265, 37.104725>,  <43.536373, 44.126919, 36.712177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511993, 44.795265, 37.104725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.125870, 44.690964, 37.099205>,  <42.894196, 44.628384, 37.095894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.125870, 44.690964, 37.099205>,  <43.511993, 44.795265, 37.104725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125870, 44.690964, 37.099205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040977, 0.099069, 0.994236,
		-0.257884, 0.960309, -0.106317,
		-0.965307, -0.260754, -0.013802,
		42.836277, 44.612736, 37.095066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288208, 45.283012, 37.548019>,  <43.511993, 44.795265, 37.104725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288208, 45.283012, 37.548019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.999573, 45.007603, 37.519047>,  <42.826393, 44.842358, 37.501663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.999573, 45.007603, 37.519047>,  <43.288208, 45.283012, 37.548019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999573, 45.007603, 37.519047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174086, 0.079194, 0.981541,
		-0.670078, 0.720877, -0.177008,
		-0.721588, -0.688524, -0.072428,
		42.783096, 44.801044, 37.497318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721607, 45.586208, 37.864902>,  <43.288208, 45.283012, 37.548019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721607, 45.586208, 37.864902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.610046, 45.202618, 37.885220>,  <42.543110, 44.972462, 37.897408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.610046, 45.202618, 37.885220>,  <42.721607, 45.586208, 37.864902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610046, 45.202618, 37.885220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327195, 0.144617, 0.933825,
		-0.902860, 0.243828, -0.354106,
		-0.278902, -0.958975, 0.050790,
		42.526375, 44.914925, 37.900455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933559, 45.493240, 38.039513>,  <42.721607, 45.586208, 37.864902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933559, 45.493240, 38.039513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.124695, 45.161572, 38.155540>,  <42.239376, 44.962570, 38.225155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.124695, 45.161572, 38.155540>,  <41.933559, 45.493240, 38.039513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124695, 45.161572, 38.155540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576146, -0.046561, 0.816020,
		-0.663116, -0.557050, -0.499973,
		0.477843, -0.829173, 0.290067,
		42.268047, 44.912819, 38.242561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401939, 45.045021, 38.256939>,  <41.933559, 45.493240, 38.039513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401939, 45.045021, 38.256939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.738380, 44.895943, 38.413731>,  <41.940247, 44.806496, 38.507805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.738380, 44.895943, 38.413731>,  <41.401939, 45.045021, 38.256939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738380, 44.895943, 38.413731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477625, -0.171714, 0.861620,
		-0.253813, -0.911929, -0.322437,
		0.841103, -0.372694, 0.391976,
		41.990711, 44.784134, 38.531322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137970, 44.576843, 38.717731>,  <41.401939, 45.045021, 38.256939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137970, 44.576843, 38.717731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.511360, 44.646992, 38.842869>,  <41.735394, 44.689083, 38.917953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.511360, 44.646992, 38.842869>,  <41.137970, 44.576843, 38.717731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511360, 44.646992, 38.842869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336926, 0.129830, 0.932537,
		0.122925, -0.975904, 0.180280,
		0.933473, 0.175373, 0.312848,
		41.791401, 44.699604, 38.936722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143963, 44.158710, 39.268291>,  <41.137970, 44.576843, 38.717731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143963, 44.158710, 39.268291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.444954, 44.417660, 39.316753>,  <41.625549, 44.573029, 39.345833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.444954, 44.417660, 39.316753>,  <41.143963, 44.158710, 39.268291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444954, 44.417660, 39.316753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261927, 0.125363, 0.956911,
		0.604294, -0.751789, 0.263898,
		0.752478, 0.647377, 0.121158,
		41.670696, 44.611874, 39.353100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558266, 43.970299, 39.866383>,  <41.143963, 44.158710, 39.268291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558266, 43.970299, 39.866383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.674019, 44.349617, 39.814243>,  <41.743473, 44.577209, 39.782959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.674019, 44.349617, 39.814243>,  <41.558266, 43.970299, 39.866383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674019, 44.349617, 39.814243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020950, 0.142418, 0.989585,
		0.956983, -0.283642, 0.061081,
		0.289387, 0.948295, -0.130349,
		41.760834, 44.634106, 39.775139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140461, 43.887627, 40.086681>,  <41.558266, 43.970299, 39.866383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140461, 43.887627, 40.086681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.038055, 44.273312, 40.114273>,  <41.976612, 44.504723, 40.130829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.038055, 44.273312, 40.114273>,  <42.140461, 43.887627, 40.086681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038055, 44.273312, 40.114273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063840, -0.088066, 0.994067,
		0.964563, 0.250092, 0.084102,
		-0.256015, 0.964209, 0.068979,
		41.961250, 44.562572, 40.134968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613251, 44.271549, 40.530952>,  <42.140461, 43.887627, 40.086681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613251, 44.271549, 40.530952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.283287, 44.497364, 40.542488>,  <42.085308, 44.632854, 40.549408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.283287, 44.497364, 40.542488>,  <42.613251, 44.271549, 40.530952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283287, 44.497364, 40.542488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028931, -0.093111, 0.995235,
		0.564531, 0.820140, 0.093140,
		-0.824905, 0.564536, 0.028837,
		42.035816, 44.666725, 40.551140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681870, 44.642483, 41.164722>,  <42.613251, 44.271549, 40.530952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681870, 44.642483, 41.164722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.300903, 44.735600, 41.086025>,  <42.072323, 44.791470, 41.038807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.300903, 44.735600, 41.086025>,  <42.681870, 44.642483, 41.164722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300903, 44.735600, 41.086025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227986, -0.115718, 0.966764,
		0.202286, 0.965618, 0.163285,
		-0.952419, 0.232789, -0.196739,
		42.015179, 44.805435, 41.027004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551373, 45.220901, 41.558289>,  <42.681870, 44.642483, 41.164722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551373, 45.220901, 41.558289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.201683, 45.044640, 41.476738>,  <41.991871, 44.938881, 41.427807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.201683, 45.044640, 41.476738>,  <42.551373, 45.220901, 41.558289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201683, 45.044640, 41.476738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227430, 0.000662, 0.973794,
		-0.428971, 0.897677, -0.100796,
		-0.874219, -0.440654, -0.203874,
		41.939419, 44.912445, 41.415577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945385, 45.639664, 41.877827>,  <42.551373, 45.220901, 41.558289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945385, 45.639664, 41.877827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.851227, 45.251930, 41.849579>,  <41.794731, 45.019291, 41.832630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.851227, 45.251930, 41.849579>,  <41.945385, 45.639664, 41.877827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851227, 45.251930, 41.849579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258610, -0.007572, 0.965952,
		-0.936862, 0.245644, -0.248897,
		-0.235396, -0.969331, -0.070620,
		41.780609, 44.961132, 41.828392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290390, 45.593060, 42.385662>,  <41.945385, 45.639664, 41.877827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290390, 45.593060, 42.385662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.402367, 45.217876, 42.303818>,  <41.469551, 44.992767, 42.254711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.402367, 45.217876, 42.303818>,  <41.290390, 45.593060, 42.385662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402367, 45.217876, 42.303818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419515, -0.311223, 0.852730,
		-0.863505, -0.152879, -0.480612,
		0.279942, -0.937960, -0.204608,
		41.486351, 44.936489, 42.242435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750084, 45.237171, 42.675919>,  <41.290390, 45.593060, 42.385662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750084, 45.237171, 42.675919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.071625, 45.003265, 42.632332>,  <41.264549, 44.862923, 42.606182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.071625, 45.003265, 42.632332>,  <40.750084, 45.237171, 42.675919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071625, 45.003265, 42.632332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168731, -0.399826, 0.900927,
		-0.570393, -0.705829, -0.420069,
		0.803854, -0.584761, -0.108963,
		41.312782, 44.827839, 42.599644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486473, 44.576756, 42.987747>,  <40.750084, 45.237171, 42.675919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486473, 44.576756, 42.987747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.885979, 44.565300, 42.971504>,  <41.125683, 44.558426, 42.961758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.885979, 44.565300, 42.971504>,  <40.486473, 44.576756, 42.987747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885979, 44.565300, 42.971504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021119, -0.495048, 0.868609,
		-0.044974, -0.868394, -0.493831,
		0.998765, -0.028635, -0.040604,
		41.185608, 44.556709, 42.959324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637459, 43.928139, 43.165974>,  <40.486473, 44.576756, 42.987747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637459, 43.928139, 43.165974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.956291, 44.158695, 43.238014>,  <41.147591, 44.297031, 43.281239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.956291, 44.158695, 43.238014>,  <40.637459, 43.928139, 43.165974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956291, 44.158695, 43.238014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099246, -0.169145, 0.980582,
		0.595663, -0.799476, -0.077617,
		0.797080, 0.576393, 0.180098,
		41.195415, 44.331612, 43.292046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994293, 43.618530, 43.678066>,  <40.637459, 43.928139, 43.165974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994293, 43.618530, 43.678066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.184700, 43.969486, 43.702061>,  <41.298946, 44.180058, 43.716457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.184700, 43.969486, 43.702061>,  <40.994293, 43.618530, 43.678066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184700, 43.969486, 43.702061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075208, -0.027351, 0.996793,
		0.876213, -0.479005, 0.052967,
		0.476020, 0.877386, 0.059990,
		41.327507, 44.232700, 43.720058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.546810, 43.534489, 44.110256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479370, 43.928020, 44.134422>,  <41.438904, 44.164139, 44.148922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479370, 43.928020, 44.134422>,  <41.546810, 43.534489, 44.110256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479370, 43.928020, 44.134422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003182, -0.060750, 0.998148,
		0.985679, 0.168483, 0.007112,
		-0.168603, 0.983831, 0.060416,
		41.428791, 44.223171, 44.152546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069664, 43.831291, 44.646809>,  <41.546810, 43.534489, 44.110256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069664, 43.831291, 44.646809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790695, 44.115257, 44.607563>,  <41.623314, 44.285637, 44.584015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790695, 44.115257, 44.607563>,  <42.069664, 43.831291, 44.646809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790695, 44.115257, 44.607563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176205, 0.302557, 0.936702,
		0.694662, 0.635989, -0.336100,
		-0.697422, 0.709914, -0.098111,
		41.581470, 44.328232, 44.578129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371075, 44.408310, 44.869015>,  <42.069664, 43.831291, 44.646809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371075, 44.408310, 44.869015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981583, 44.498672, 44.880417>,  <41.747887, 44.552891, 44.887257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981583, 44.498672, 44.880417>,  <42.371075, 44.408310, 44.869015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981583, 44.498672, 44.880417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087009, 0.253476, 0.963421,
		0.210422, 0.940593, -0.266474,
		-0.973731, 0.225911, 0.028503,
		41.689465, 44.566444, 44.888969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027145, 44.683472, 44.732609>,  <42.371075, 44.408310, 44.869015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027145, 44.683472, 44.732609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393005, 44.712070, 44.891758>,  <43.612522, 44.729229, 44.987247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393005, 44.712070, 44.891758>,  <43.027145, 44.683472, 44.732609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393005, 44.712070, 44.891758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403122, -0.234711, -0.884536,
		0.030146, 0.969432, -0.243500,
		0.914649, 0.071495, 0.397875,
		43.667400, 44.733521, 45.011120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387825, 45.119152, 44.322803>,  <43.027145, 44.683472, 44.732609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387825, 45.119152, 44.322803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631538, 44.866531, 44.514603>,  <43.777767, 44.714958, 44.629681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631538, 44.866531, 44.514603>,  <43.387825, 45.119152, 44.322803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631538, 44.866531, 44.514603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360411, -0.318067, -0.876891,
		0.706315, 0.707089, 0.033826,
		0.609281, -0.631552, 0.479498,
		43.814323, 44.677067, 44.658451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931000, 45.282970, 44.022594>,  <43.387825, 45.119152, 44.322803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931000, 45.282970, 44.022594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993515, 44.918304, 44.174614>,  <44.031025, 44.699505, 44.265827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993515, 44.918304, 44.174614>,  <43.931000, 45.282970, 44.022594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993515, 44.918304, 44.174614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249751, -0.335796, -0.908221,
		0.955613, 0.236865, 0.175208,
		0.156292, -0.911667, 0.380048,
		44.040401, 44.644806, 44.288628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579697, 45.179901, 43.793743>,  <43.931000, 45.282970, 44.022594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579697, 45.179901, 43.793743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436012, 44.817383, 43.882832>,  <44.349804, 44.599873, 43.936283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436012, 44.817383, 43.882832>,  <44.579697, 45.179901, 43.793743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436012, 44.817383, 43.882832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370857, -0.357610, -0.857076,
		0.856408, -0.225273, 0.464562,
		-0.359208, -0.906293, 0.222716,
		44.328251, 44.545494, 43.949646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953857, 44.749756, 43.474480>,  <44.579697, 45.179901, 43.793743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953857, 44.749756, 43.474480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667488, 44.486629, 43.568058>,  <44.495667, 44.328754, 43.624203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667488, 44.486629, 43.568058>,  <44.953857, 44.749756, 43.474480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667488, 44.486629, 43.568058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177155, -0.495265, -0.850487,
		0.675332, -0.567437, 0.471107,
		-0.715921, -0.657820, 0.233944,
		44.452713, 44.289284, 43.638241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274513, 44.010998, 43.417046>,  <44.953857, 44.749756, 43.474480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274513, 44.010998, 43.417046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877449, 44.032883, 43.373917>,  <44.639210, 44.046013, 43.348042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877449, 44.032883, 43.373917>,  <45.274513, 44.010998, 43.417046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877449, 44.032883, 43.373917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075965, -0.411532, -0.908224,
		-0.094062, -0.909752, 0.404357,
		-0.992664, 0.054712, -0.107819,
		44.579651, 44.049297, 43.341572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096115, 43.411205, 43.035202>,  <45.274513, 44.010998, 43.417046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096115, 43.411205, 43.035202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779465, 43.652916, 42.999046>,  <44.589474, 43.797943, 42.977352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779465, 43.652916, 42.999046>,  <45.096115, 43.411205, 43.035202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.779465, 43.652916, 42.999046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059638, -0.223644, -0.972845,
		-0.608087, -0.764740, 0.213081,
		-0.791628, 0.604282, -0.090387,
		44.541977, 43.834202, 42.971931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.484402, 42.956627, 42.692650>,  <45.096115, 43.411205, 43.035202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.484402, 42.956627, 42.692650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454140, 43.348366, 42.617653>,  <44.435982, 43.583408, 42.572655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454140, 43.348366, 42.617653>,  <44.484402, 42.956627, 42.692650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454140, 43.348366, 42.617653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023152, -0.189706, -0.981568,
		-0.996865, -0.069921, 0.037026,
		-0.075657, 0.979348, -0.187493,
		44.431442, 43.642170, 42.561405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803505, 42.982540, 42.170834>,  <44.484402, 42.956627, 42.692650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803505, 42.982540, 42.170834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025459, 43.313499, 42.136166>,  <44.158630, 43.512077, 42.115364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025459, 43.313499, 42.136166>,  <43.803505, 42.982540, 42.170834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025459, 43.313499, 42.136166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280597, 0.088063, -0.955778,
		-0.783179, 0.554665, 0.281031,
		0.554884, 0.827401, -0.086668,
		44.191925, 43.561718, 42.110165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430061, 43.400436, 41.665134>,  <43.803505, 42.982540, 42.170834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430061, 43.400436, 41.665134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803070, 43.544849, 41.661877>,  <44.026875, 43.631496, 41.659924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803070, 43.544849, 41.661877>,  <43.430061, 43.400436, 41.665134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803070, 43.544849, 41.661877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051190, 0.109834, -0.992631,
		-0.357475, 0.926064, 0.120904,
		0.932519, 0.361030, -0.008143,
		44.082825, 43.653160, 41.659435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379028, 44.131641, 41.314548>,  <43.430061, 43.400436, 41.665134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379028, 44.131641, 41.314548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741753, 43.964470, 41.292496>,  <43.959385, 43.864166, 41.279266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741753, 43.964470, 41.292496>,  <43.379028, 44.131641, 41.314548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741753, 43.964470, 41.292496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064395, 0.266573, -0.961661,
		0.416598, 0.868491, 0.268643,
		0.906807, -0.417925, -0.055128,
		44.013794, 43.839092, 41.275959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715145, 44.566414, 40.733364>,  <43.379028, 44.131641, 41.314548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715145, 44.566414, 40.733364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973465, 44.266613, 40.791595>,  <44.128456, 44.086735, 40.826534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973465, 44.266613, 40.791595>,  <43.715145, 44.566414, 40.733364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973465, 44.266613, 40.791595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291212, 0.065544, -0.954411,
		0.705788, 0.658753, 0.260591,
		0.645801, -0.749498, 0.145576,
		44.167206, 44.041763, 40.835270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361549, 44.772331, 40.390354>,  <43.715145, 44.566414, 40.733364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361549, 44.772331, 40.390354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381783, 44.375542, 40.436707>,  <44.393921, 44.137466, 40.464520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381783, 44.375542, 40.436707>,  <44.361549, 44.772331, 40.390354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381783, 44.375542, 40.436707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309406, -0.094756, -0.946197,
		0.949584, 0.083717, 0.302129,
		0.050584, -0.991974, 0.115882,
		44.396957, 44.077950, 40.471470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.013176, 44.575420, 40.135212>,  <44.361549, 44.772331, 40.390354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.013176, 44.575420, 40.135212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774109, 44.257698, 40.091644>,  <44.630669, 44.067062, 40.065502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774109, 44.257698, 40.091644>,  <45.013176, 44.575420, 40.135212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774109, 44.257698, 40.091644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322565, -0.113857, -0.939675,
		0.733991, -0.596750, 0.324265,
		-0.597670, -0.794309, -0.108921,
		44.594807, 44.019405, 40.058968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.478062, 44.037418, 39.896774>,  <45.013176, 44.575420, 40.135212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.478062, 44.037418, 39.896774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114700, 43.879181, 39.842663>,  <44.896683, 43.784237, 39.810196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114700, 43.879181, 39.842663>,  <45.478062, 44.037418, 39.896774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114700, 43.879181, 39.842663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257736, -0.275104, -0.926224,
		0.329194, -0.876255, 0.351865,
		-0.908407, -0.395596, -0.135280,
		44.842178, 43.760502, 39.802078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601334, 43.311096, 39.626904>,  <45.478062, 44.037418, 39.896774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601334, 43.311096, 39.626904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251007, 43.466938, 39.512955>,  <45.040810, 43.560444, 39.444588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251007, 43.466938, 39.512955>,  <45.601334, 43.311096, 39.626904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251007, 43.466938, 39.512955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216303, -0.210786, -0.953301,
		-0.431454, -0.896538, 0.100339,
		-0.875820, 0.389602, -0.284868,
		44.988262, 43.583817, 39.427494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249870, 42.821346, 39.311123>,  <45.601334, 43.311096, 39.626904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249870, 42.821346, 39.311123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068466, 43.147442, 39.167061>,  <44.959621, 43.343098, 39.080624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068466, 43.147442, 39.167061>,  <45.249870, 42.821346, 39.311123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068466, 43.147442, 39.167061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106641, -0.351561, -0.930071,
		-0.884847, -0.460206, 0.072500,
		-0.453513, 0.815239, -0.360155,
		44.932411, 43.392014, 39.059013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728016, 42.566029, 38.722420>,  <45.249870, 42.821346, 39.311123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728016, 42.566029, 38.722420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797775, 42.957970, 38.683491>,  <44.839630, 43.193134, 38.660133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797775, 42.957970, 38.683491>,  <44.728016, 42.566029, 38.722420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797775, 42.957970, 38.683491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177723, -0.128540, -0.975650,
		-0.968505, 0.152851, -0.196559,
		0.174394, 0.979854, -0.097326,
		44.850094, 43.251926, 38.654293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413673, 42.690250, 38.088470>,  <44.728016, 42.566029, 38.722420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413673, 42.690250, 38.088470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666458, 42.994865, 38.145996>,  <44.818127, 43.177635, 38.180511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666458, 42.994865, 38.145996>,  <44.413673, 42.690250, 38.088470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666458, 42.994865, 38.145996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329525, -0.096081, -0.939245,
		-0.701456, 0.640955, -0.311666,
		0.631959, 0.761541, 0.143815,
		44.856045, 43.223328, 38.189140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.316090, 43.040295, 37.505394>,  <44.413673, 42.690250, 38.088470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.316090, 43.040295, 37.505394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668083, 43.141823, 37.665993>,  <44.879280, 43.202740, 37.762352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668083, 43.141823, 37.665993>,  <44.316090, 43.040295, 37.505394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668083, 43.141823, 37.665993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412050, 0.012600, -0.911074,
		-0.236307, 0.967170, -0.093499,
		0.879985, 0.253819, 0.401500,
		44.932079, 43.217968, 37.786442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480820, 43.618378, 37.109879>,  <44.316090, 43.040295, 37.505394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480820, 43.618378, 37.109879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821144, 43.497364, 37.281734>,  <45.025341, 43.424755, 37.384846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821144, 43.497364, 37.281734>,  <44.480820, 43.618378, 37.109879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821144, 43.497364, 37.281734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511078, 0.286408, -0.810413,
		0.122127, 0.909089, 0.398299,
		0.850814, -0.302535, 0.429638,
		45.076389, 43.406605, 37.410625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869179, 44.105000, 36.855991>,  <44.480820, 43.618378, 37.109879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869179, 44.105000, 36.855991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127502, 43.827915, 36.984413>,  <45.282497, 43.661663, 37.061466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127502, 43.827915, 36.984413>,  <44.869179, 44.105000, 36.855991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127502, 43.827915, 36.984413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548900, 0.128963, -0.825879,
		0.530694, 0.709589, 0.463517,
		0.645811, -0.692714, 0.321053,
		45.321247, 43.620102, 37.080730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517948, 44.351780, 36.775082>,  <44.869179, 44.105000, 36.855991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517948, 44.351780, 36.775082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.598534, 43.960266, 36.760185>,  <45.646885, 43.725357, 36.751247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.598534, 43.960266, 36.760185>,  <45.517948, 44.351780, 36.775082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598534, 43.960266, 36.760185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633881, 0.159271, -0.756854,
		0.746730, 0.128877, 0.652522,
		0.201468, -0.978787, -0.037240,
		45.658974, 43.666630, 36.749012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195805, 44.350498, 36.553429>,  <45.517948, 44.351780, 36.775082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195805, 44.350498, 36.553429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038452, 43.993652, 36.464542>,  <45.944042, 43.779545, 36.411209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038452, 43.993652, 36.464542>,  <46.195805, 44.350498, 36.553429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.038452, 43.993652, 36.464542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492033, -0.000112, -0.870577,
		0.776630, -0.451808, 0.438994,
		-0.393382, -0.892115, -0.222217,
		45.920437, 43.726017, 36.397877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.747337, 43.945267, 36.328568>,  <46.195805, 44.350498, 36.553429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.747337, 43.945267, 36.328568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.414536, 43.763920, 36.200676>,  <46.214855, 43.655113, 36.123943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.414536, 43.763920, 36.200676>,  <46.747337, 43.945267, 36.328568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.414536, 43.763920, 36.200676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335844, 0.047102, -0.940739,
		0.441561, -0.890078, 0.113072,
		-0.832005, -0.453368, -0.319726,
		46.164932, 43.627911, 36.104759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.004185, 43.512764, 35.821522>,  <46.747337, 43.945267, 36.328568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.004185, 43.512764, 35.821522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618546, 43.510738, 35.715324>,  <46.387161, 43.509525, 35.651608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618546, 43.510738, 35.715324>,  <47.004185, 43.512764, 35.821522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.618546, 43.510738, 35.715324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261298, 0.159877, -0.951926,
		0.047261, -0.987124, -0.152816,
		-0.964100, -0.005058, -0.265490,
		46.329315, 43.509220, 35.635677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.879745, 42.997360, 35.384548>,  <47.004185, 43.512764, 35.821522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.879745, 42.997360, 35.384548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.559959, 43.215134, 35.283001>,  <46.368088, 43.345798, 35.222073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.559959, 43.215134, 35.283001>,  <46.879745, 42.997360, 35.384548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.559959, 43.215134, 35.283001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223205, -0.123128, -0.966964,
		-0.557709, -0.829715, -0.023085,
		-0.799463, 0.544437, -0.253866,
		46.320122, 43.378464, 35.206841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.705299, 42.842575, 34.650181>,  <46.879745, 42.997360, 35.384548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.705299, 42.842575, 34.650181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.466743, 43.161507, 34.687233>,  <46.323608, 43.352867, 34.709465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.466743, 43.161507, 34.687233>,  <46.705299, 42.842575, 34.650181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466743, 43.161507, 34.687233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118437, 0.201550, -0.972291,
		-0.793908, -0.568895, -0.214636,
		-0.596392, 0.797330, 0.092634,
		46.287827, 43.400707, 34.715023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194347, 42.888714, 34.027332>,  <46.705299, 42.842575, 34.650181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194347, 42.888714, 34.027332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195969, 43.262093, 34.170811>,  <46.196941, 43.486118, 34.256897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195969, 43.262093, 34.170811>,  <46.194347, 42.888714, 34.027332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195969, 43.262093, 34.170811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069005, 0.358110, -0.931126,
		-0.997608, -0.020977, 0.065864,
		0.004054, 0.933444, 0.358700,
		46.197186, 43.542126, 34.278419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<43.666111, 44.510303, 46.669277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.676765, 44.849216, 46.457085>,  <43.683159, 45.052563, 46.329769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.676765, 44.849216, 46.457085>,  <43.666111, 44.510303, 46.669277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676765, 44.849216, 46.457085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043082, -0.529202, -0.847401,
		-0.998716, 0.045422, 0.022409,
		0.026632, 0.847279, -0.530480,
		43.684753, 45.103401, 46.297939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076488, 44.509148, 46.201546>,  <43.666111, 44.510303, 46.669277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076488, 44.509148, 46.201546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.369545, 44.744427, 46.064568>,  <43.545380, 44.885593, 45.982380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.369545, 44.744427, 46.064568>,  <43.076488, 44.509148, 46.201546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369545, 44.744427, 46.064568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031363, -0.531782, -0.846300,
		-0.679895, 0.609292, -0.408052,
		0.732639, 0.588193, -0.342447,
		43.589336, 44.920883, 45.961834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882187, 44.570412, 45.475346>,  <43.076488, 44.509148, 46.201546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882187, 44.570412, 45.475346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.254654, 44.714573, 45.497379>,  <43.478134, 44.801067, 45.510601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.254654, 44.714573, 45.497379>,  <42.882187, 44.570412, 45.475346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254654, 44.714573, 45.497379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173683, -0.305660, -0.936166,
		-0.320555, 0.881297, -0.347217,
		0.931170, 0.360399, 0.055086,
		43.534004, 44.822693, 45.513905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338776, 45.143085, 45.216202>,  <42.882187, 44.570412, 45.475346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338776, 45.143085, 45.216202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.990395, 44.951817, 45.261444>,  <41.781364, 44.837055, 45.288589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.990395, 44.951817, 45.261444>,  <42.338776, 45.143085, 45.216202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990395, 44.951817, 45.261444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042033, 0.301852, 0.952428,
		-0.489565, 0.824765, -0.282998,
		-0.870953, -0.478171, 0.113109,
		41.729107, 44.808365, 45.295376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078957, 45.472305, 45.684608>,  <42.338776, 45.143085, 45.216202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078957, 45.472305, 45.684608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.852013, 45.143688, 45.707119>,  <41.715847, 44.946518, 45.720627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.852013, 45.143688, 45.707119>,  <42.078957, 45.472305, 45.684608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852013, 45.143688, 45.707119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160189, 0.177148, 0.971060,
		-0.807740, 0.541924, -0.232109,
		-0.567358, -0.821546, 0.056279,
		41.681805, 44.897224, 45.724003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623787, 45.655823, 46.195370>,  <42.078957, 45.472305, 45.684608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623787, 45.655823, 46.195370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.579788, 45.259087, 46.169571>,  <41.553391, 45.021046, 46.154091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.579788, 45.259087, 46.169571>,  <41.623787, 45.655823, 46.195370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579788, 45.259087, 46.169571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182639, -0.043616, 0.982212,
		-0.977007, 0.119819, -0.176350,
		-0.109996, -0.991837, -0.064497,
		41.546791, 44.961536, 46.150223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981316, 45.471603, 46.490978>,  <41.623787, 45.655823, 46.195370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981316, 45.471603, 46.490978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.186157, 45.129063, 46.517532>,  <41.309063, 44.923538, 46.533466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.186157, 45.129063, 46.517532>,  <40.981316, 45.471603, 46.490978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186157, 45.129063, 46.517532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231596, -0.063239, 0.970754,
		-0.827113, -0.512499, -0.230714,
		0.512100, -0.856356, 0.066387,
		41.339787, 44.872154, 46.537449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626301, 45.114265, 46.978840>,  <40.981316, 45.471603, 46.490978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626301, 45.114265, 46.978840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.968422, 44.907509, 46.964539>,  <41.173695, 44.783455, 46.955956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.968422, 44.907509, 46.964539>,  <40.626301, 45.114265, 46.978840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968422, 44.907509, 46.964539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084476, -0.207206, 0.974643,
		-0.511193, -0.830596, -0.220889,
		0.855304, -0.516891, -0.035757,
		41.225014, 44.752441, 46.953812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395485, 44.465202, 47.166935>,  <40.626301, 45.114265, 46.978840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395485, 44.465202, 47.166935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.782616, 44.520416, 47.251076>,  <41.014896, 44.553543, 47.301559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.782616, 44.520416, 47.251076>,  <40.395485, 44.465202, 47.166935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782616, 44.520416, 47.251076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188388, -0.156617, 0.969526,
		0.166775, -0.977966, -0.125575,
		0.967831, 0.138036, 0.210357,
		41.072964, 44.561829, 47.314182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567562, 43.877903, 47.667000>,  <40.395485, 44.465202, 47.166935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567562, 43.877903, 47.667000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.837883, 44.167088, 47.724434>,  <41.000076, 44.340599, 47.758896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.837883, 44.167088, 47.724434>,  <40.567562, 43.877903, 47.667000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837883, 44.167088, 47.724434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106460, -0.097025, 0.989572,
		0.729352, -0.684044, 0.011396,
		0.675805, 0.722959, 0.143589,
		41.040627, 44.383976, 47.767509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831318, 43.717777, 48.395355>,  <40.567562, 43.877903, 47.667000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831318, 43.717777, 48.395355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.997375, 44.071934, 48.311699>,  <41.097012, 44.284428, 48.261505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.997375, 44.071934, 48.311699>,  <40.831318, 43.717777, 48.395355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997375, 44.071934, 48.311699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214717, 0.128040, 0.968247,
		0.884053, -0.446872, -0.136952,
		0.415147, 0.885388, -0.209145,
		41.121922, 44.337551, 48.248955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480350, 43.779499, 48.836082>,  <40.831318, 43.717777, 48.395355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480350, 43.779499, 48.836082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.363121, 44.143139, 48.717667>,  <41.292782, 44.361324, 48.646618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.363121, 44.143139, 48.717667>,  <41.480350, 43.779499, 48.836082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363121, 44.143139, 48.717667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331154, 0.386990, 0.860568,
		0.896909, 0.154175, -0.414469,
		-0.293073, 0.909104, -0.296039,
		41.275200, 44.415871, 48.628857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957664, 44.169579, 49.111252>,  <41.480350, 43.779499, 48.836082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957664, 44.169579, 49.111252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.643333, 44.411541, 49.059769>,  <41.454735, 44.556717, 49.028877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.643333, 44.411541, 49.059769>,  <41.957664, 44.169579, 49.111252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643333, 44.411541, 49.059769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284528, 0.538404, 0.793199,
		0.549108, 0.586696, -0.595205,
		-0.785828, 0.604904, -0.128710,
		41.407585, 44.593014, 49.021156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214718, 44.843872, 49.145451>,  <41.957664, 44.169579, 49.111252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214718, 44.843872, 49.145451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.825005, 44.836113, 49.235245>,  <41.591175, 44.831459, 49.289124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.825005, 44.836113, 49.235245>,  <42.214718, 44.843872, 49.145451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825005, 44.836113, 49.235245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195033, 0.426345, 0.883285,
		-0.112844, 0.904352, -0.411598,
		-0.974283, -0.019398, 0.224489,
		41.532719, 44.830292, 49.302593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125244, 45.462997, 49.668159>,  <42.214718, 44.843872, 49.145451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125244, 45.462997, 49.668159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.788368, 45.247715, 49.655239>,  <41.586243, 45.118546, 49.647488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.788368, 45.247715, 49.655239>,  <42.125244, 45.462997, 49.668159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788368, 45.247715, 49.655239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216688, 0.283006, 0.934320,
		-0.493719, 0.793876, -0.354968,
		-0.842193, -0.538209, -0.032298,
		41.535709, 45.086254, 49.645550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626743, 45.878601, 49.944275>,  <42.125244, 45.462997, 49.668159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626743, 45.878601, 49.944275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.523918, 45.495872, 49.998554>,  <41.462223, 45.266235, 50.031120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.523918, 45.495872, 49.998554>,  <41.626743, 45.878601, 49.944275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523918, 45.495872, 49.998554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215759, 0.193695, 0.957043,
		-0.942001, 0.216743, -0.256234,
		-0.257063, -0.956820, 0.135697,
		41.446800, 45.208828, 50.039265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092091, 45.936623, 50.486126>,  <41.626743, 45.878601, 49.944275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092091, 45.936623, 50.486126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.122238, 45.537968, 50.473320>,  <41.140327, 45.298775, 50.465637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.122238, 45.537968, 50.473320>,  <41.092091, 45.936623, 50.486126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122238, 45.537968, 50.473320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076011, -0.037757, 0.996392,
		-0.994255, -0.072660, -0.078601,
		0.075365, -0.996642, -0.032018,
		41.144848, 45.238976, 50.463715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489086, 45.648708, 50.828743>,  <41.092091, 45.936623, 50.486126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489086, 45.648708, 50.828743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.748581, 45.344608, 50.842346>,  <40.904278, 45.162148, 50.850510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.748581, 45.344608, 50.842346>,  <40.489086, 45.648708, 50.828743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748581, 45.344608, 50.842346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408450, -0.310136, 0.858478,
		-0.642114, -0.570815, -0.511722,
		0.648736, -0.760254, 0.034006,
		40.943203, 45.116531, 50.852547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102673, 45.121635, 51.254925>,  <40.489086, 45.648708, 50.828743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102673, 45.121635, 51.254925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.482300, 44.995621, 51.253128>,  <40.710075, 44.920010, 51.252048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.482300, 44.995621, 51.253128>,  <40.102673, 45.121635, 51.254925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482300, 44.995621, 51.253128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066352, -0.213793, 0.974623,
		-0.308009, -0.924684, -0.223807,
		0.949067, -0.315042, -0.004496,
		40.767021, 44.901108, 51.251781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190441, 44.369328, 51.222710>,  <40.102673, 45.121635, 51.254925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190441, 44.369328, 51.222710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.514481, 44.536533, 51.387154>,  <40.708904, 44.636856, 51.485821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.514481, 44.536533, 51.387154>,  <40.190441, 44.369328, 51.222710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514481, 44.536533, 51.387154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196882, -0.466517, 0.862322,
		0.552255, -0.779501, -0.295622,
		0.810094, 0.418019, 0.411106,
		40.757507, 44.661938, 51.510487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386173, 43.886806, 51.622635>,  <40.190441, 44.369328, 51.222710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386173, 43.886806, 51.622635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.552467, 44.231464, 51.739075>,  <40.652245, 44.438259, 51.808937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.552467, 44.231464, 51.739075>,  <40.386173, 43.886806, 51.622635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552467, 44.231464, 51.739075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246687, -0.201235, 0.947971,
		0.875390, -0.465916, 0.128895,
		0.415737, 0.861642, 0.291095,
		40.677189, 44.489956, 51.826405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844921, 43.702438, 52.212200>,  <40.386173, 43.886806, 51.622635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844921, 43.702438, 52.212200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.738281, 44.087799, 52.223366>,  <40.674297, 44.319016, 52.230064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.738281, 44.087799, 52.223366>,  <40.844921, 43.702438, 52.212200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738281, 44.087799, 52.223366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451704, -0.150482, 0.879386,
		0.851403, 0.221838, 0.475291,
		-0.266604, 0.963402, 0.027915,
		40.658298, 44.376820, 52.231739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058273, 44.035267, 52.918259>,  <40.844921, 43.702438, 52.212200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058273, 44.035267, 52.918259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.782570, 44.292110, 52.784019>,  <40.617149, 44.446217, 52.703476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.782570, 44.292110, 52.784019>,  <41.058273, 44.035267, 52.918259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782570, 44.292110, 52.784019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359549, 0.098995, 0.927860,
		0.629006, 0.760198, 0.162635,
		-0.689257, 0.642105, -0.335597,
		40.575794, 44.484741, 52.683342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982208, 44.468918, 53.471687>,  <41.058273, 44.035267, 52.918259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982208, 44.468918, 53.471687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.670166, 44.569160, 53.242378>,  <40.482941, 44.629307, 53.104794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.670166, 44.569160, 53.242378>,  <40.982208, 44.468918, 53.471687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670166, 44.569160, 53.242378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458266, 0.394940, 0.796250,
		0.425949, 0.883867, -0.193251,
		-0.780102, 0.250602, -0.573271,
		40.436134, 44.644341, 53.070396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797726, 45.200947, 53.447552>,  <40.982208, 44.468918, 53.471687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797726, 45.200947, 53.447552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.445679, 45.020531, 53.388290>,  <40.234451, 44.912281, 53.352734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.445679, 45.020531, 53.388290>,  <40.797726, 45.200947, 53.447552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445679, 45.020531, 53.388290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392196, 0.514926, 0.762255,
		-0.267521, 0.728981, -0.630094,
		-0.880122, -0.451040, -0.148150,
		40.181641, 44.885220, 53.343845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378849, 45.601521, 53.816048>,  <40.797726, 45.200947, 53.447552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378849, 45.601521, 53.816048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.132553, 45.302273, 53.717110>,  <39.984776, 45.122723, 53.657745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.132553, 45.302273, 53.717110>,  <40.378849, 45.601521, 53.816048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132553, 45.302273, 53.717110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664668, 0.324551, 0.672966,
		-0.423183, 0.578776, -0.697090,
		-0.615738, -0.748121, -0.247350,
		39.947830, 45.077835, 53.642906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713268, 45.874241, 53.658092>,  <40.378849, 45.601521, 53.816048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713268, 45.874241, 53.658092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.669731, 45.496971, 53.783684>,  <39.643608, 45.270611, 53.859039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.669731, 45.496971, 53.783684>,  <39.713268, 45.874241, 53.658092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669731, 45.496971, 53.783684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626414, 0.310328, 0.715054,
		-0.771854, -0.118847, -0.624594,
		-0.108847, -0.943171, 0.313975,
		39.637077, 45.214020, 53.877876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066582, 45.934494, 53.923855>,  <39.713268, 45.874241, 53.658092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066582, 45.934494, 53.923855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.175911, 45.578491, 54.069832>,  <39.241508, 45.364891, 54.157417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.175911, 45.578491, 54.069832>,  <39.066582, 45.934494, 53.923855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175911, 45.578491, 54.069832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599774, 0.138925, 0.788017,
		-0.752039, -0.434267, -0.495831,
		0.273327, -0.890007, 0.364939,
		39.257908, 45.311489, 54.179314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407326, 45.500355, 54.131458>,  <39.066582, 45.934494, 53.923855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407326, 45.500355, 54.131458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.725891, 45.379551, 54.341034>,  <38.917030, 45.307068, 54.466778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.725891, 45.379551, 54.341034>,  <38.407326, 45.500355, 54.131458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725891, 45.379551, 54.341034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513674, 0.119404, 0.849636,
		-0.319162, -0.945796, -0.060041,
		0.796414, -0.302014, 0.523940,
		38.964817, 45.288948, 54.498215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142464, 45.058285, 54.632164>,  <38.407326, 45.500355, 54.131458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142464, 45.058285, 54.632164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.504608, 45.154415, 54.772198>,  <38.721897, 45.212093, 54.856216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.504608, 45.154415, 54.772198>,  <38.142464, 45.058285, 54.632164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504608, 45.154415, 54.772198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400124, 0.206782, 0.892828,
		0.142178, -0.948412, 0.283373,
		0.905365, 0.240325, 0.350083,
		38.776218, 45.226513, 54.877220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154736, 44.656513, 55.330303>,  <38.142464, 45.058285, 54.632164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154736, 44.656513, 55.330303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448715, 44.927692, 55.324249>,  <38.625103, 45.090401, 55.320618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448715, 44.927692, 55.324249>,  <38.154736, 44.656513, 55.330303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448715, 44.927692, 55.324249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278043, 0.321623, 0.905125,
		0.618496, -0.661016, 0.424876,
		0.734952, 0.677950, -0.015131,
		38.669201, 45.131077, 55.319710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605183, 44.610531, 55.962566>,  <38.154736, 44.656513, 55.330303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605183, 44.610531, 55.962566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.667000, 44.982342, 55.828644>,  <38.704090, 45.205429, 55.748291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.667000, 44.982342, 55.828644>,  <38.605183, 44.610531, 55.962566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667000, 44.982342, 55.828644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145300, 0.356573, 0.922900,
		0.977243, -0.093980, 0.190166,
		0.154542, 0.929529, -0.334803,
		38.713364, 45.261200, 55.728203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990852, 44.969334, 56.421616>,  <38.605183, 44.610531, 55.962566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990852, 44.969334, 56.421616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.799957, 45.256386, 56.218735>,  <38.685421, 45.428616, 56.097008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.799957, 45.256386, 56.218735>,  <38.990852, 44.969334, 56.421616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799957, 45.256386, 56.218735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248952, 0.443116, 0.861203,
		0.842773, 0.537269, -0.032817,
		-0.477239, 0.717628, -0.507200,
		38.656784, 45.471676, 56.066574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134541, 45.511059, 56.811691>,  <38.990852, 44.969334, 56.421616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134541, 45.511059, 56.811691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834763, 45.608875, 56.565590>,  <38.654896, 45.667564, 56.417931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834763, 45.608875, 56.565590>,  <39.134541, 45.511059, 56.811691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834763, 45.608875, 56.565590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450706, 0.492269, 0.744671,
		0.484971, 0.835387, -0.258713,
		-0.749445, 0.244540, -0.615250,
		38.609928, 45.682236, 56.381016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145931, 46.248844, 56.825325>,  <39.134541, 45.511059, 56.811691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145931, 46.248844, 56.825325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.776192, 46.120995, 56.741982>,  <38.554348, 46.044285, 56.691975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.776192, 46.120995, 56.741982>,  <39.145931, 46.248844, 56.825325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776192, 46.120995, 56.741982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347892, 0.481809, 0.804258,
		-0.156670, 0.815905, -0.556556,
		-0.924352, -0.319625, -0.208361,
		38.498886, 46.025108, 56.679474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
