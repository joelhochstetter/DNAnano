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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.780571, 52.771053, 50.819355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926552, 52.727962, 50.449448>,  <37.014141, 52.702106, 50.227501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926552, 52.727962, 50.449448>,  <36.780571, 52.771053, 50.819355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926552, 52.727962, 50.449448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540415, 0.833338, 0.116191,
		0.758131, -0.542165, 0.362347,
		0.364952, -0.107729, -0.924773,
		37.036037, 52.695644, 50.172016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432137, 52.854557, 50.917301>,  <36.780571, 52.771053, 50.819355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432137, 52.854557, 50.917301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396626, 52.934593, 50.527004>,  <37.375320, 52.982616, 50.292824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396626, 52.934593, 50.527004>,  <37.432137, 52.854557, 50.917301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396626, 52.934593, 50.527004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517480, 0.846298, 0.126466,
		0.851078, -0.493702, -0.178676,
		-0.088776, 0.200094, -0.975747,
		37.369991, 52.994621, 50.234280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857468, 53.443611, 50.871155>,  <37.432137, 52.854557, 50.917301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857468, 53.443611, 50.871155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032341, 53.616585, 50.555717>,  <38.137264, 53.720367, 50.366455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032341, 53.616585, 50.555717>,  <37.857468, 53.443611, 50.871155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032341, 53.616585, 50.555717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895886, 0.286543, -0.339531,
		0.079140, 0.854923, 0.512682,
		0.437179, 0.432434, -0.788591,
		38.163494, 53.746315, 50.319141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704834, 54.113415, 50.883045>,  <37.857468, 53.443611, 50.871155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704834, 54.113415, 50.883045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754292, 53.936401, 50.527771>,  <37.783966, 53.830193, 50.314606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754292, 53.936401, 50.527771>,  <37.704834, 54.113415, 50.883045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754292, 53.936401, 50.527771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977487, 0.099894, -0.185847,
		0.170969, 0.891170, -0.420222,
		0.123644, -0.442535, -0.888186,
		37.791386, 53.803642, 50.261314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728298, 54.904572, 51.115292>,  <37.704834, 54.113415, 50.883045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728298, 54.904572, 51.115292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753345, 55.215096, 50.864399>,  <37.768372, 55.401409, 50.713863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753345, 55.215096, 50.864399>,  <37.728298, 54.904572, 51.115292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753345, 55.215096, 50.864399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637980, -0.452161, -0.623324,
		-0.767503, 0.439189, 0.466961,
		0.062615, 0.776314, -0.627228,
		37.772129, 55.447990, 50.676231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496582, 54.884750, 51.018501>,  <37.728298, 54.904572, 51.115292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496582, 54.884750, 51.018501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448837, 55.030087, 51.388092>,  <38.420193, 55.117290, 51.609848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448837, 55.030087, 51.388092>,  <38.496582, 54.884750, 51.018501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448837, 55.030087, 51.388092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691939, 0.697841, -0.185034,
		-0.712021, 0.617252, -0.334704,
		-0.119358, 0.363343, 0.923978,
		38.413029, 55.139088, 51.665287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386982, 55.638691, 50.955585>,  <38.496582, 54.884750, 51.018501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386982, 55.638691, 50.955585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575390, 55.491341, 51.276196>,  <38.688435, 55.402931, 51.468559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575390, 55.491341, 51.276196>,  <38.386982, 55.638691, 50.955585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575390, 55.491341, 51.276196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802916, 0.555345, -0.216606,
		-0.365328, 0.745580, 0.557357,
		0.471022, -0.368379, 0.801521,
		38.716698, 55.380829, 51.516651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533039, 56.190678, 51.537121>,  <38.386982, 55.638691, 50.955585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533039, 56.190678, 51.537121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789604, 55.883797, 51.536499>,  <38.943542, 55.699669, 51.536125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789604, 55.883797, 51.536499>,  <38.533039, 56.190678, 51.537121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789604, 55.883797, 51.536499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765187, 0.639577, 0.073687,
		-0.055537, -0.048455, 0.997280,
		0.641408, -0.767198, -0.001557,
		38.982025, 55.653637, 51.536034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031986, 56.368755, 52.050331>,  <38.533039, 56.190678, 51.537121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031986, 56.368755, 52.050331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210297, 56.158600, 51.760437>,  <39.317284, 56.032505, 51.586498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210297, 56.158600, 51.760437>,  <39.031986, 56.368755, 52.050331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210297, 56.158600, 51.760437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823787, 0.557553, 0.102514,
		0.350220, -0.642729, 0.681355,
		0.445781, -0.525389, -0.724738,
		39.344032, 56.000984, 51.543015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726437, 56.160870, 52.230915>,  <39.031986, 56.368755, 52.050331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726437, 56.160870, 52.230915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702797, 56.210529, 51.834713>,  <39.688614, 56.240326, 51.596992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702797, 56.210529, 51.834713>,  <39.726437, 56.160870, 52.230915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702797, 56.210529, 51.834713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832924, 0.553039, 0.019617,
		0.550221, -0.823854, -0.136093,
		-0.059103, 0.124149, -0.990502,
		39.685066, 56.247772, 51.537563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335979, 55.866688, 51.723221>,  <39.726437, 56.160870, 52.230915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335979, 55.866688, 51.723221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173389, 56.186504, 51.546356>,  <40.075836, 56.378395, 51.440239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173389, 56.186504, 51.546356>,  <40.335979, 55.866688, 51.723221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173389, 56.186504, 51.546356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897874, 0.439135, -0.031343,
		0.169107, -0.409742, -0.896390,
		-0.406479, 0.799545, -0.442157,
		40.051445, 56.426369, 51.413708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542461, 55.977303, 51.118523>,  <40.335979, 55.866688, 51.723221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542461, 55.977303, 51.118523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468048, 56.340546, 51.268578>,  <40.423401, 56.558495, 51.358608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468048, 56.340546, 51.268578>,  <40.542461, 55.977303, 51.118523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468048, 56.340546, 51.268578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940629, 0.274927, -0.199078,
		-0.283920, 0.315827, -0.905341,
		-0.186029, 0.908112, 0.375133,
		40.412239, 56.612980, 51.381119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811150, 56.420677, 50.636826>,  <40.542461, 55.977303, 51.118523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811150, 56.420677, 50.636826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817455, 56.565239, 51.009735>,  <40.821239, 56.651978, 51.233482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817455, 56.565239, 51.009735>,  <40.811150, 56.420677, 50.636826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817455, 56.565239, 51.009735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984140, 0.159153, -0.078344,
		-0.176689, 0.918725, -0.353166,
		0.015769, 0.361407, 0.932275,
		40.822186, 56.673660, 51.289417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389221, 56.861397, 50.511929>,  <40.811150, 56.420677, 50.636826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389221, 56.861397, 50.511929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335884, 56.830906, 50.907181>,  <41.303883, 56.812611, 51.144333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335884, 56.830906, 50.907181>,  <41.389221, 56.861397, 50.511929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335884, 56.830906, 50.907181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986774, 0.082520, 0.139527,
		-0.092176, 0.993670, 0.064213,
		-0.133345, -0.076225, 0.988134,
		41.295879, 56.808037, 51.203621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579361, 57.462208, 50.974892>,  <41.389221, 56.861397, 50.511929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579361, 57.462208, 50.974892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668285, 57.114273, 51.151054>,  <41.721638, 56.905514, 51.256752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668285, 57.114273, 51.151054>,  <41.579361, 57.462208, 50.974892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668285, 57.114273, 51.151054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955489, 0.284235, 0.079073,
		-0.193960, 0.403229, 0.894307,
		0.222309, -0.869838, 0.440411,
		41.734978, 56.853321, 51.283176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932770, 57.649269, 51.633423>,  <41.579361, 57.462208, 50.974892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932770, 57.649269, 51.633423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025177, 57.287872, 51.489014>,  <42.080624, 57.071033, 51.402367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025177, 57.287872, 51.489014>,  <41.932770, 57.649269, 51.633423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025177, 57.287872, 51.489014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969133, 0.246518, 0.003227,
		0.086083, -0.350623, 0.932552,
		0.231022, -0.903489, -0.361022,
		42.094482, 57.016827, 51.380707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470592, 57.383888, 52.152439>,  <41.932770, 57.649269, 51.633423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470592, 57.383888, 52.152439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533993, 57.193176, 51.806591>,  <42.572033, 57.078751, 51.599083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533993, 57.193176, 51.806591>,  <42.470592, 57.383888, 52.152439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533993, 57.193176, 51.806591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987291, 0.066210, 0.144478,
		-0.011637, -0.876526, 0.481213,
		0.158500, -0.476778, -0.864616,
		42.581543, 57.050144, 51.547207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871208, 56.780041, 52.277504>,  <42.470592, 57.383888, 52.152439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871208, 56.780041, 52.277504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916492, 56.950447, 51.918461>,  <42.943665, 57.052689, 51.703033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916492, 56.950447, 51.918461>,  <42.871208, 56.780041, 52.277504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916492, 56.950447, 51.918461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956000, 0.199377, 0.215202,
		0.270641, -0.882475, -0.384696,
		0.113211, 0.426012, -0.897606,
		42.950455, 57.078251, 51.649178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424080, 56.500969, 51.897850>,  <42.871208, 56.780041, 52.277504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424080, 56.500969, 51.897850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637695, 56.584175, 51.570061>,  <43.765865, 56.634098, 51.373386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637695, 56.584175, 51.570061>,  <43.424080, 56.500969, 51.897850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637695, 56.584175, 51.570061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837466, 0.002810, 0.546482,
		0.115980, -0.978121, -0.172707,
		0.534040, 0.208017, -0.819469,
		43.797909, 56.646580, 51.324219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021450, 56.010300, 51.745808>,  <43.424080, 56.500969, 51.897850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021450, 56.010300, 51.745808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077160, 56.394756, 51.650463>,  <44.110588, 56.625431, 51.593258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077160, 56.394756, 51.650463>,  <44.021450, 56.010300, 51.745808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077160, 56.394756, 51.650463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877558, -0.008276, 0.479400,
		0.458797, -0.275943, -0.844607,
		0.139277, 0.961138, -0.238359,
		44.118942, 56.683098, 51.578957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566692, 56.177895, 51.332150>,  <44.021450, 56.010300, 51.745808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566692, 56.177895, 51.332150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500370, 56.498234, 51.562332>,  <44.460579, 56.690437, 51.700443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500370, 56.498234, 51.562332>,  <44.566692, 56.177895, 51.332150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500370, 56.498234, 51.562332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904195, -0.109463, 0.412854,
		0.393624, 0.588781, -0.705972,
		-0.165803, 0.800846, 0.575460,
		44.450630, 56.738487, 51.734970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175766, 56.623672, 51.365253>,  <44.566692, 56.177895, 51.332150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175766, 56.623672, 51.365253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963657, 56.690781, 51.697678>,  <44.836391, 56.731045, 51.897133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963657, 56.690781, 51.697678>,  <45.175766, 56.623672, 51.365253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963657, 56.690781, 51.697678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842641, -0.003947, 0.538462,
		0.093617, 0.985819, -0.139275,
		-0.530276, 0.167768, 0.831060,
		44.804573, 56.741112, 51.946995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275787, 57.285782, 51.671436>,  <45.175766, 56.623672, 51.365253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275787, 57.285782, 51.671436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171402, 57.052055, 51.978806>,  <45.108772, 56.911819, 52.163227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171402, 57.052055, 51.978806>,  <45.275787, 57.285782, 51.671436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171402, 57.052055, 51.978806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922273, 0.084218, 0.377253,
		-0.285151, 0.807143, 0.516923,
		-0.260963, -0.584318, 0.768421,
		45.093113, 56.876759, 52.209332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.290604, 57.640102, 52.419994>,  <45.275787, 57.285782, 51.671436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.290604, 57.640102, 52.419994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.387291, 57.252365, 52.402317>,  <45.445305, 57.019722, 52.391712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.387291, 57.252365, 52.402317>,  <45.290604, 57.640102, 52.419994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.387291, 57.252365, 52.402317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937507, 0.221548, 0.268324,
		-0.250307, -0.106288, 0.962315,
		0.241719, -0.969340, -0.044191,
		45.459808, 56.961563, 52.389061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619991, 57.436165, 53.094555>,  <45.290604, 57.640102, 52.419994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619991, 57.436165, 53.094555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739059, 57.220264, 52.779579>,  <45.810501, 57.090725, 52.590595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739059, 57.220264, 52.779579>,  <45.619991, 57.436165, 53.094555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.739059, 57.220264, 52.779579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946165, 0.276639, 0.168055,
		0.127129, -0.795073, 0.593041,
		0.297674, -0.539750, -0.787439,
		45.828362, 57.058338, 52.543346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.322510, 57.163612, 53.264912>,  <45.619991, 57.436165, 53.094555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.322510, 57.163612, 53.264912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273376, 57.207935, 52.870422>,  <46.243896, 57.234531, 52.633728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273376, 57.207935, 52.870422>,  <46.322510, 57.163612, 53.264912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273376, 57.207935, 52.870422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874940, 0.481107, -0.054915,
		0.468393, -0.869630, -0.156048,
		-0.122831, 0.110812, -0.986222,
		46.236526, 57.241180, 52.574554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.835682, 56.804874, 52.749523>,  <46.322510, 57.163612, 53.264912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.835682, 56.804874, 52.749523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673862, 57.163589, 52.677845>,  <46.576771, 57.378819, 52.634838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673862, 57.163589, 52.677845>,  <46.835682, 56.804874, 52.749523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.673862, 57.163589, 52.677845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902062, 0.359080, -0.239468,
		-0.150406, -0.258523, -0.954224,
		-0.404551, 0.896787, -0.179196,
		46.552498, 57.432625, 52.624084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.895977, 57.036663, 52.023251>,  <46.835682, 56.804874, 52.749523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.895977, 57.036663, 52.023251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.935295, 57.302113, 52.319881>,  <46.958885, 57.461384, 52.497860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.935295, 57.302113, 52.319881>,  <46.895977, 57.036663, 52.023251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.935295, 57.302113, 52.319881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975049, 0.084821, -0.205148,
		-0.199043, 0.743242, -0.638728,
		0.098297, 0.663624, 0.741580,
		46.964783, 57.501202, 52.542355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.283810, 57.622471, 51.715298>,  <46.895977, 57.036663, 52.023251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.283810, 57.622471, 51.715298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.346199, 57.609131, 52.110176>,  <47.383633, 57.601128, 52.347103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.346199, 57.609131, 52.110176>,  <47.283810, 57.622471, 51.715298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.346199, 57.609131, 52.110176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986175, 0.061890, -0.153718,
		-0.055972, 0.997526, 0.042539,
		0.155971, -0.033347, 0.987199,
		47.392990, 57.599125, 52.406334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.726307, 58.160275, 51.908745>,  <47.283810, 57.622471, 51.715298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.726307, 58.160275, 51.908745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.743980, 57.855736, 52.167480>,  <47.754585, 57.673012, 52.322723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.743980, 57.855736, 52.167480>,  <47.726307, 58.160275, 51.908745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.743980, 57.855736, 52.167480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994662, 0.093959, 0.042651,
		-0.093248, 0.641505, 0.761431,
		0.044182, -0.761343, 0.646842,
		47.757236, 57.627335, 52.361534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.122700, 58.463772, 52.513309>,  <47.726307, 58.160275, 51.908745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.122700, 58.463772, 52.513309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.170746, 58.071121, 52.454002>,  <48.199574, 57.835529, 52.418419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.170746, 58.071121, 52.454002>,  <48.122700, 58.463772, 52.513309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.170746, 58.071121, 52.454002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992361, 0.114482, 0.045978,
		-0.028160, -0.152655, 0.987878,
		0.120113, -0.981626, -0.148265,
		48.206779, 57.776634, 52.409523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.462009, 58.285381, 53.045067>,  <48.122700, 58.463772, 52.513309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.462009, 58.285381, 53.045067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.542839, 58.015209, 52.761391>,  <48.591335, 57.853104, 52.591183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.542839, 58.015209, 52.761391>,  <48.462009, 58.285381, 53.045067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.542839, 58.015209, 52.761391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979294, 0.130286, 0.154950,
		-0.012260, -0.725821, 0.687774,
		0.202073, -0.675433, -0.709195,
		48.603462, 57.812580, 52.548634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.916737, 57.785694, 53.146244>,  <48.462009, 58.285381, 53.045067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.916737, 57.785694, 53.146244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.946884, 57.770672, 52.747665>,  <48.964973, 57.761658, 52.508518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.946884, 57.770672, 52.747665>,  <48.916737, 57.785694, 53.146244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.946884, 57.770672, 52.747665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989891, -0.117588, 0.079304,
		-0.120149, -0.992352, 0.028312,
		0.075369, -0.037554, -0.996448,
		48.969494, 57.759407, 52.448730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.258430, 57.194752, 52.985462>,  <48.916737, 57.785694, 53.146244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.258430, 57.194752, 52.985462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.298721, 57.476582, 52.704483>,  <49.322895, 57.645679, 52.535896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.298721, 57.476582, 52.704483>,  <49.258430, 57.194752, 52.985462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.298721, 57.476582, 52.704483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994896, -0.075598, 0.066834,
		-0.006014, -0.705595, -0.708590,
		0.100726, 0.704571, -0.702449,
		49.328938, 57.687954, 52.493748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.836472, 56.898937, 52.641087>,  <49.258430, 57.194752, 52.985462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.836472, 56.898937, 52.641087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.803486, 57.296532, 52.612267>,  <49.783695, 57.535088, 52.594975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.803486, 57.296532, 52.612267>,  <49.836472, 56.898937, 52.641087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.803486, 57.296532, 52.612267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989426, 0.090310, 0.113493,
		0.119318, -0.061932, -0.990923,
		-0.082462, 0.993986, -0.072053,
		49.778748, 57.594727, 52.590652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.319649, 57.402527, 52.199036>,  <49.836472, 56.898937, 52.641087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.319649, 57.402527, 52.199036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.222244, 57.553551, 52.556393>,  <50.163803, 57.644165, 52.770809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.222244, 57.553551, 52.556393>,  <50.319649, 57.402527, 52.199036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.222244, 57.553551, 52.556393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969038, 0.133498, 0.207711,
		-0.040843, 0.916313, -0.398374,
		-0.243510, 0.377556, 0.893395,
		50.149193, 57.666817, 52.824409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.750904, 57.963505, 52.459003>,  <50.319649, 57.402527, 52.199036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.750904, 57.963505, 52.459003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.612869, 57.805000, 52.799332>,  <50.530048, 57.709896, 53.003529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.612869, 57.805000, 52.799332>,  <50.750904, 57.963505, 52.459003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.612869, 57.805000, 52.799332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932200, -0.039270, 0.359806,
		-0.109166, 0.917297, 0.382948,
		-0.345088, -0.396263, 0.850817,
		50.509342, 57.686123, 53.054577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.036518, 58.274750, 53.103401>,  <50.750904, 57.963505, 52.459003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.036518, 58.274750, 53.103401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.918648, 57.915146, 53.232986>,  <50.847927, 57.699383, 53.310738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.918648, 57.915146, 53.232986>,  <51.036518, 58.274750, 53.103401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.918648, 57.915146, 53.232986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800427, -0.047018, 0.597583,
		-0.522000, 0.435400, 0.733446,
		-0.294673, -0.899009, 0.323962,
		50.830246, 57.645443, 53.330173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.229321, 58.303646, 53.850342>,  <51.036518, 58.274750, 53.103401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.229321, 58.303646, 53.850342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.202721, 57.922611, 53.731583>,  <51.186760, 57.693989, 53.660328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.202721, 57.922611, 53.731583>,  <51.229321, 58.303646, 53.850342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.202721, 57.922611, 53.731583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615143, -0.273420, 0.739487,
		-0.785606, -0.133462, 0.604161,
		-0.066497, -0.952591, -0.296898,
		51.182770, 57.636833, 53.642513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.832977, 57.815720, 54.350224>,  <51.229321, 58.303646, 53.850342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.832977, 57.815720, 54.350224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.114521, 57.635509, 54.130547>,  <51.283447, 57.527382, 53.998741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.114521, 57.635509, 54.130547>,  <50.832977, 57.815720, 54.350224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.114521, 57.635509, 54.130547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474691, -0.276840, 0.835481,
		-0.528447, -0.848753, 0.019008,
		0.703855, -0.450530, -0.549191,
		51.325676, 57.500351, 53.965790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.925900, 57.147514, 54.597473>,  <50.832977, 57.815720, 54.350224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.925900, 57.147514, 54.597473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.286396, 57.242592, 54.452545>,  <51.502693, 57.299637, 54.365589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.286396, 57.242592, 54.452545>,  <50.925900, 57.147514, 54.597473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.286396, 57.242592, 54.452545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427201, -0.347303, 0.834793,
		0.072588, -0.907130, -0.414544,
		0.901238, 0.237690, -0.362317,
		51.556767, 57.313900, 54.343849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.304909, 56.555763, 54.676380>,  <50.925900, 57.147514, 54.597473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.304909, 56.555763, 54.676380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.519970, 56.890141, 54.720444>,  <51.649006, 57.090767, 54.746883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.519970, 56.890141, 54.720444>,  <51.304909, 56.555763, 54.676380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.519970, 56.890141, 54.720444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427430, -0.382835, 0.818988,
		0.726799, -0.393242, -0.563137,
		0.537649, 0.835941, 0.110161,
		51.681263, 57.140923, 54.753490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.008514, 56.412251, 54.464989>,  <51.304909, 56.555763, 54.676380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.008514, 56.412251, 54.464989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.973766, 56.700375, 54.740265>,  <51.952915, 56.873249, 54.905430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.973766, 56.700375, 54.740265>,  <52.008514, 56.412251, 54.464989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.973766, 56.700375, 54.740265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709681, -0.440059, 0.550183,
		0.699147, 0.536194, -0.472959,
		-0.086874, 0.720308, 0.688192,
		51.947704, 56.916466, 54.946724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.645866, 56.292370, 54.766041>,  <52.008514, 56.412251, 54.464989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.645866, 56.292370, 54.766041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.442814, 56.556114, 54.987869>,  <52.320984, 56.714363, 55.120968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.442814, 56.556114, 54.987869>,  <52.645866, 56.292370, 54.766041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.442814, 56.556114, 54.987869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594814, -0.197463, 0.779234,
		0.623307, 0.725429, -0.291961,
		-0.507627, 0.659364, 0.554575,
		52.290527, 56.753925, 55.154243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.990166, 57.029797, 54.785034>,  <52.645866, 56.292370, 54.766041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.990166, 57.029797, 54.785034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.784454, 56.892311, 55.099327>,  <52.661030, 56.809818, 55.287903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.784454, 56.892311, 55.099327>,  <52.990166, 57.029797, 54.785034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.784454, 56.892311, 55.099327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854610, -0.128631, 0.503086,
		-0.071848, 0.930222, 0.359895,
		-0.514276, -0.343716, 0.785735,
		52.630173, 56.789196, 55.335049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.378078, 57.261822, 55.322186>,  <52.990166, 57.029797, 54.785034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.378078, 57.261822, 55.322186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.186607, 56.925873, 55.424545>,  <53.071724, 56.724304, 55.485962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.186607, 56.925873, 55.424545>,  <53.378078, 57.261822, 55.322186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.186607, 56.925873, 55.424545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848343, -0.367324, 0.381296,
		-0.226243, 0.399607, 0.888329,
		-0.478673, -0.839873, 0.255899,
		53.043007, 56.673912, 55.501316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.428329, 57.029316, 56.074924>,  <53.378078, 57.261822, 55.322186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.428329, 57.029316, 56.074924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.421364, 56.722054, 55.818916>,  <53.417183, 56.537697, 55.665310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.421364, 56.722054, 55.818916>,  <53.428329, 57.029316, 56.074924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.421364, 56.722054, 55.818916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886431, -0.307981, 0.345525,
		-0.462533, -0.561317, 0.686284,
		-0.017414, -0.768160, -0.640021,
		53.416142, 56.491604, 55.626911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.611927, 56.416779, 56.424408>,  <53.428329, 57.029316, 56.074924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.611927, 56.416779, 56.424408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.717793, 56.382057, 56.040237>,  <53.781311, 56.361225, 55.809734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.717793, 56.382057, 56.040237>,  <53.611927, 56.416779, 56.424408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.717793, 56.382057, 56.040237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876989, -0.392529, 0.277149,
		-0.401051, -0.915635, -0.027765,
		0.264665, -0.086802, -0.960426,
		53.797192, 56.356018, 55.752110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.043037, 55.737831, 56.294704>,  <53.611927, 56.416779, 56.424408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.043037, 55.737831, 56.294704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.115524, 56.018059, 56.018631>,  <54.159016, 56.186195, 55.852985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.115524, 56.018059, 56.018631>,  <54.043037, 55.737831, 56.294704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.115524, 56.018059, 56.018631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891379, -0.413488, -0.185667,
		-0.415457, -0.581573, -0.699406,
		0.181217, 0.700572, -0.690188,
		54.169888, 56.228230, 55.811573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.628254, 55.184128, 56.273426>,  <54.043037, 55.737831, 56.294704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.628254, 55.184128, 56.273426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.889595, 55.416054, 56.468132>,  <55.046402, 55.555210, 56.584957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.889595, 55.416054, 56.468132>,  <54.628254, 55.184128, 56.273426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.889595, 55.416054, 56.468132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717916, -0.678581, -0.155322,
		0.240251, 0.450937, -0.859613,
		0.653358, 0.579814, 0.486765,
		55.085602, 55.589996, 56.614162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.343616, 55.298374, 55.887306>,  <54.628254, 55.184128, 56.273426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.343616, 55.298374, 55.887306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.408394, 55.339600, 56.279869>,  <55.447258, 55.364334, 56.515408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.408394, 55.339600, 56.279869>,  <55.343616, 55.298374, 55.887306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.408394, 55.339600, 56.279869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775828, -0.627882, -0.062082,
		0.609808, 0.771454, -0.181638,
		0.161941, 0.103062, 0.981404,
		55.456978, 55.370518, 56.574291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.160271, 55.425476, 56.076000>,  <55.343616, 55.298374, 55.887306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.160271, 55.425476, 56.076000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.964119, 55.217468, 56.355743>,  <55.846428, 55.092663, 56.523590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.964119, 55.217468, 56.355743>,  <56.160271, 55.425476, 56.076000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.964119, 55.217468, 56.355743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657749, -0.747290, -0.094463,
		0.571749, 0.413682, 0.708499,
		-0.490376, -0.520024, 0.699361,
		55.817005, 55.061462, 56.565552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.612930, 55.224163, 56.602947>,  <56.160271, 55.425476, 56.076000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.612930, 55.224163, 56.602947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.317421, 54.954628, 56.607994>,  <56.140114, 54.792908, 56.611023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.317421, 54.954628, 56.607994>,  <56.612930, 55.224163, 56.602947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.317421, 54.954628, 56.607994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669748, -0.736121, -0.097792,
		0.075185, -0.063794, 0.995127,
		-0.738772, -0.673837, 0.012619,
		56.095791, 54.752476, 56.611778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.309635, 55.467770, 56.593498>,  <56.612930, 55.224163, 56.602947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.309635, 55.467770, 56.593498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.244064, 55.808018, 56.393669>,  <57.204720, 56.012165, 56.273773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.244064, 55.808018, 56.393669>,  <57.309635, 55.467770, 56.593498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.244064, 55.808018, 56.393669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525604, 0.503866, 0.685462,
		0.834785, -0.150208, -0.529690,
		-0.163931, 0.850621, -0.499570,
		57.194885, 56.063206, 56.243797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.944431, 55.869362, 56.311085>,  <57.309635, 55.467770, 56.593498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.944431, 55.869362, 56.311085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.645050, 56.118576, 56.401993>,  <57.465424, 56.268105, 56.456539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.645050, 56.118576, 56.401993>,  <57.944431, 55.869362, 56.311085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.645050, 56.118576, 56.401993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652674, 0.631183, 0.419074,
		0.117646, 0.461992, -0.879047,
		-0.748449, 0.623034, 0.227274,
		57.420517, 56.305485, 56.470177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.168503, 56.545219, 55.939022>,  <57.944431, 55.869362, 56.311085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.168503, 56.545219, 55.939022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.949074, 56.579311, 56.271721>,  <57.817417, 56.599766, 56.471340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.949074, 56.579311, 56.271721>,  <58.168503, 56.545219, 55.939022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.949074, 56.579311, 56.271721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469553, 0.854505, 0.222130,
		-0.691800, 0.512403, -0.508779,
		-0.548574, 0.085230, 0.831746,
		57.784500, 56.604881, 56.521244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.842735, 56.774586, 56.011440>,  <58.168503, 56.545219, 55.939022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.842735, 56.774586, 56.011440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.905609, 56.652626, 56.387169>,  <58.943333, 56.579449, 56.612606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.905609, 56.652626, 56.387169>,  <58.842735, 56.774586, 56.011440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.905609, 56.652626, 56.387169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987563, 0.052060, -0.148356,
		-0.003667, 0.950961, 0.309289,
		0.157183, -0.304898, 0.939325,
		58.952763, 56.561157, 56.668964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.177174, 57.239250, 56.651001>,  <58.842735, 56.774586, 56.011440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.177174, 57.239250, 56.651001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.275131, 56.852654, 56.681786>,  <59.333908, 56.620697, 56.700256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.275131, 56.852654, 56.681786>,  <59.177174, 57.239250, 56.651001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.275131, 56.852654, 56.681786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961523, 0.231909, -0.147283,
		0.124499, 0.110070, 0.986096,
		0.244896, -0.966490, 0.076963,
		59.348598, 56.562706, 56.704876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.615276, 56.983330, 57.237724>,  <59.177174, 57.239250, 56.651001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.615276, 56.983330, 57.237724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.690117, 56.840229, 56.871773>,  <59.735020, 56.754368, 56.652203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.690117, 56.840229, 56.871773>,  <59.615276, 56.983330, 57.237724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.690117, 56.840229, 56.871773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915525, 0.401112, 0.030378,
		0.356102, -0.843279, 0.402581,
		0.187098, -0.357755, -0.914880,
		59.746246, 56.732903, 56.597309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.192661, 56.393105, 57.301086>,  <59.615276, 56.983330, 57.237724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.192661, 56.393105, 57.301086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.144318, 56.643227, 56.992699>,  <60.115311, 56.793301, 56.807667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.144318, 56.643227, 56.992699>,  <60.192661, 56.393105, 57.301086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.144318, 56.643227, 56.992699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878808, 0.428565, 0.209832,
		0.461618, -0.652173, -0.601315,
		-0.120856, 0.625302, -0.770968,
		60.108063, 56.830818, 56.761410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.573048, 55.740505, 57.260250>,  <60.192661, 56.393105, 57.301086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.573048, 55.740505, 57.260250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.854980, 55.871231, 57.512093>,  <61.024139, 55.949665, 57.663200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.854980, 55.871231, 57.512093>,  <60.573048, 55.740505, 57.260250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.854980, 55.871231, 57.512093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015169, -0.894294, 0.447222,
		0.709214, -0.305665, -0.635283,
		0.704830, 0.326812, 0.629610,
		61.066429, 55.969276, 57.700977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.118126, 55.205788, 57.086712>,  <60.573048, 55.740505, 57.260250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.118126, 55.205788, 57.086712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.131020, 55.374508, 57.449158>,  <61.138756, 55.475739, 57.666626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.131020, 55.374508, 57.449158>,  <61.118126, 55.205788, 57.086712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.131020, 55.374508, 57.449158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167181, -0.896089, 0.411186,
		0.985399, 0.138232, -0.099398,
		0.032231, 0.421800, 0.906116,
		61.140690, 55.501049, 57.720993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.646572, 55.170044, 57.718452>,  <61.118126, 55.205788, 57.086712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.646572, 55.170044, 57.718452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.973114, 55.395668, 57.768082>,  <62.169041, 55.531044, 57.797859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.973114, 55.395668, 57.768082>,  <61.646572, 55.170044, 57.718452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.973114, 55.395668, 57.768082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320558, -0.263828, -0.909746,
		-0.480419, 0.782451, -0.396192,
		0.816358, 0.564062, 0.124073,
		62.218021, 55.564888, 57.805302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.023933, 55.110535, 57.078556>,  <61.646572, 55.170044, 57.718452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.023933, 55.110535, 57.078556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.264748, 55.378380, 57.252533>,  <62.409237, 55.539085, 57.356918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.264748, 55.378380, 57.252533>,  <62.023933, 55.110535, 57.078556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.264748, 55.378380, 57.252533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708542, -0.196874, -0.677649,
		-0.368133, 0.716143, -0.592974,
		0.602035, 0.669612, 0.434941,
		62.445358, 55.579262, 57.383015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.327194, 55.469444, 56.631393>,  <62.023933, 55.110535, 57.078556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.327194, 55.469444, 56.631393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.594879, 55.507019, 56.926239>,  <62.755489, 55.529564, 57.103146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.594879, 55.507019, 56.926239>,  <62.327194, 55.469444, 56.631393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.594879, 55.507019, 56.926239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736569, -0.214820, -0.641341,
		0.098104, 0.972126, -0.212948,
		0.669210, 0.093933, 0.737113,
		62.795643, 55.535198, 57.147373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.654087, 56.154423, 56.859974>,  <62.327194, 55.469444, 56.631393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.654087, 56.154423, 56.859974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.808060, 55.787983, 56.815102>,  <62.900444, 55.568119, 56.788177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.808060, 55.787983, 56.815102>,  <62.654087, 56.154423, 56.859974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.808060, 55.787983, 56.815102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500397, 0.309287, -0.808668,
		0.775520, 0.255145, 0.577469,
		0.384931, -0.916102, -0.112184,
		62.923538, 55.513153, 56.781445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.242168, 56.290222, 56.635918>,  <62.654087, 56.154423, 56.859974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.242168, 56.290222, 56.635918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.189621, 55.912342, 56.515732>,  <63.158092, 55.685612, 56.443623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.189621, 55.912342, 56.515732>,  <63.242168, 56.290222, 56.635918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.189621, 55.912342, 56.515732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339129, 0.241975, -0.909087,
		0.931522, -0.221322, 0.288588,
		-0.131370, -0.944704, -0.300462,
		63.150211, 55.628929, 56.425594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.704197, 56.692383, 56.907459>,  <63.242168, 56.290222, 56.635918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.704197, 56.692383, 56.907459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.756218, 57.067162, 56.777710>,  <63.787430, 57.292030, 56.699860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.756218, 57.067162, 56.777710>,  <63.704197, 56.692383, 56.907459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.756218, 57.067162, 56.777710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959002, -0.201950, -0.198824,
		-0.251794, -0.285215, -0.924798,
		0.130055, 0.936947, -0.324371,
		63.795235, 57.348244, 56.680397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.168221, 56.647182, 56.285641>,  <63.704197, 56.692383, 56.907459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.168221, 56.647182, 56.285641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.166740, 56.995277, 56.482689>,  <64.165848, 57.204132, 56.600918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.166740, 56.995277, 56.482689>,  <64.168221, 56.647182, 56.285641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.166740, 56.995277, 56.482689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999869, -0.004555, 0.015563,
		0.015787, 0.492615, -0.870104,
		-0.003703, 0.870236, 0.492622,
		64.165627, 57.256348, 56.630474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.523575, 57.010033, 55.950294>,  <64.168221, 56.647182, 56.285641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.523575, 57.010033, 55.950294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.581528, 57.137730, 56.324905>,  <64.616302, 57.214348, 56.549671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.581528, 57.137730, 56.324905>,  <64.523575, 57.010033, 55.950294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.581528, 57.137730, 56.324905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986758, 0.023117, -0.160542,
		-0.072902, 0.947391, -0.311664,
		0.144891, 0.319241, 0.936532,
		64.624992, 57.233501, 56.605865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.903061, 57.644531, 56.013699>,  <64.523575, 57.010033, 55.950294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.903061, 57.644531, 56.013699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.965614, 57.416058, 56.336014>,  <65.003151, 57.278973, 56.529404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.965614, 57.416058, 56.336014>,  <64.903061, 57.644531, 56.013699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.965614, 57.416058, 56.336014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986202, 0.135146, -0.095611,
		-0.054288, 0.809621, 0.584436,
		0.156393, -0.571182, 0.805787,
		65.012535, 57.244701, 56.577751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.167816, 57.943848, 56.640499>,  <64.903061, 57.644531, 56.013699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.167816, 57.943848, 56.640499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.301186, 57.569836, 56.592247>,  <65.381210, 57.345428, 56.563297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.301186, 57.569836, 56.592247>,  <65.167816, 57.943848, 56.640499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.301186, 57.569836, 56.592247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921687, 0.350199, -0.166893,
		0.198294, -0.055537, 0.978568,
		0.333425, -0.935027, -0.120630,
		65.401215, 57.289326, 56.556057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.601349, 57.674038, 57.113411>,  <65.167816, 57.943848, 56.640499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.601349, 57.674038, 57.113411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.708595, 57.436119, 56.810272>,  <65.772942, 57.293369, 56.628391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.708595, 57.436119, 56.810272>,  <65.601349, 57.674038, 57.113411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.708595, 57.436119, 56.810272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903571, 0.428127, -0.016342,
		0.334174, -0.680385, 0.652230,
		0.268119, -0.594797, -0.757845,
		65.789032, 57.257679, 56.582920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.187126, 57.317066, 57.248482>,  <65.601349, 57.674038, 57.113411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.187126, 57.317066, 57.248482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.197090, 57.343380, 56.849472>,  <66.203072, 57.359169, 56.610065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.197090, 57.343380, 56.849472>,  <66.187126, 57.317066, 57.248482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.197090, 57.343380, 56.849472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995573, 0.088828, 0.030720,
		0.090628, -0.993872, -0.063282,
		0.024910, 0.065786, -0.997523,
		66.204567, 57.363117, 56.550217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.590393, 56.699734, 56.802505>,  <66.187126, 57.317066, 57.248482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.590393, 56.699734, 56.802505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.604149, 57.051899, 56.613319>,  <66.612404, 57.263199, 56.499809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.604149, 57.051899, 56.613319>,  <66.590393, 56.699734, 56.802505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.604149, 57.051899, 56.613319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975613, 0.073084, 0.206972,
		0.216786, -0.468547, -0.856427,
		0.034385, 0.880410, -0.472964,
		66.614464, 57.316021, 56.471432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.208618, 56.778664, 56.523029>,  <66.590393, 56.699734, 56.802505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.208618, 56.778664, 56.523029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.077629, 57.151546, 56.584671>,  <66.999031, 57.375275, 56.621655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.077629, 57.151546, 56.584671>,  <67.208618, 56.778664, 56.523029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.077629, 57.151546, 56.584671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931758, 0.291550, 0.216394,
		0.156795, 0.214453, -0.964067,
		-0.327480, 0.932206, 0.154105,
		66.979385, 57.431210, 56.630901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.550110, 57.457924, 56.201702>,  <67.208618, 56.778664, 56.523029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.550110, 57.457924, 56.201702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.401566, 57.549225, 56.561699>,  <67.312439, 57.604004, 56.777699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.401566, 57.549225, 56.561699>,  <67.550110, 57.457924, 56.201702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.401566, 57.549225, 56.561699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921606, 0.208413, 0.327424,
		-0.112835, 0.951033, -0.287756,
		-0.371364, 0.228253, 0.899994,
		67.290154, 57.617702, 56.831696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.755791, 58.254456, 56.361004>,  <67.550110, 57.457924, 56.201702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.755791, 58.254456, 56.361004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.670692, 58.032898, 56.682983>,  <67.619637, 57.899963, 56.876171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.670692, 58.032898, 56.682983>,  <67.755791, 58.254456, 56.361004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.670692, 58.032898, 56.682983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942254, 0.101776, 0.319059,
		-0.258648, 0.826346, 0.500253,
		-0.212739, -0.553890, 0.804952,
		67.606873, 57.866730, 56.924469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.037178, 58.544529, 56.965736>,  <67.755791, 58.254456, 56.361004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.037178, 58.544529, 56.965736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.979156, 58.155792, 57.040024>,  <67.944344, 57.922550, 57.084595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.979156, 58.155792, 57.040024>,  <68.037178, 58.544529, 56.965736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.979156, 58.155792, 57.040024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921871, -0.064579, 0.382077,
		-0.359324, 0.226627, 0.905277,
		-0.145051, -0.971838, 0.185716,
		67.935638, 57.864243, 57.095737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.942574, 58.469170, 57.715611>,  <68.037178, 58.544529, 56.965736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.942574, 58.469170, 57.715611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.133736, 58.145523, 57.578819>,  <68.248428, 57.951336, 57.496746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.133736, 58.145523, 57.578819>,  <67.942574, 58.469170, 57.715611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.133736, 58.145523, 57.578819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755746, 0.180290, 0.629558,
		-0.447730, -0.559311, 0.697645,
		0.477897, -0.809115, -0.341976,
		68.277107, 57.902790, 57.476227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.388931, 58.006985, 57.771008>,  <67.942574, 58.469170, 57.715611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.388931, 58.006985, 57.771008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.482430, 57.631020, 57.671463>,  <67.538528, 57.405441, 57.611736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.482430, 57.631020, 57.671463>,  <67.388931, 58.006985, 57.771008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.482430, 57.631020, 57.671463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439234, -0.330422, 0.835400,
		-0.867433, -0.085954, -0.490073,
		0.233737, -0.939911, -0.248866,
		67.552551, 57.349045, 57.596802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.741364, 57.645691, 57.738407>,  <67.388931, 58.006985, 57.771008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.741364, 57.645691, 57.738407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.046432, 57.410366, 57.845894>,  <67.229477, 57.269169, 57.910385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.046432, 57.410366, 57.845894>,  <66.741364, 57.645691, 57.738407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.046432, 57.410366, 57.845894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583882, -0.447554, 0.677331,
		-0.278218, -0.673484, -0.684846,
		0.762677, -0.588315, 0.268718,
		67.275238, 57.233871, 57.926510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.594231, 56.849888, 57.729778>,  <66.741364, 57.645691, 57.738407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.594231, 56.849888, 57.729778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.861214, 56.949913, 58.010338>,  <67.021408, 57.009930, 58.178673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.861214, 56.949913, 58.010338>,  <66.594231, 56.849888, 57.729778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.861214, 56.949913, 58.010338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555630, -0.459837, 0.692694,
		0.495748, -0.852066, -0.167980,
		0.667465, 0.250067, 0.701397,
		67.061455, 57.024933, 58.220757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.447479, 56.360088, 58.073929>,  <66.594231, 56.849888, 57.729778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.447479, 56.360088, 58.073929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.654236, 56.600014, 58.318237>,  <66.778290, 56.743969, 58.464821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.654236, 56.600014, 58.318237>,  <66.447479, 56.360088, 58.073929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.654236, 56.600014, 58.318237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600751, -0.254111, 0.757975,
		0.609848, -0.758715, 0.228991,
		0.516898, 0.599815, 0.610768,
		66.809303, 56.779957, 58.501469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.748764, 55.877888, 58.630833>,  <66.447479, 56.360088, 58.073929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.748764, 55.877888, 58.630833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.681511, 56.268539, 58.684380>,  <66.641159, 56.502930, 58.716507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.681511, 56.268539, 58.684380>,  <66.748764, 55.877888, 58.630833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.681511, 56.268539, 58.684380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563744, -0.206662, 0.799677,
		0.808655, 0.058990, 0.585318,
		-0.168136, 0.976632, 0.133863,
		66.631073, 56.561531, 58.724537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.197609, 56.144905, 59.245659>,  <66.748764, 55.877888, 58.630833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.197609, 56.144905, 59.245659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.843803, 56.301853, 59.144730>,  <66.631516, 56.396023, 59.084171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.843803, 56.301853, 59.144730>,  <67.197609, 56.144905, 59.245659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.843803, 56.301853, 59.144730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377972, -0.285751, 0.880616,
		0.273429, 0.874294, 0.401059,
		-0.884519, 0.392374, -0.252326,
		66.578445, 56.419567, 59.069031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.685104, 56.754410, 59.399647>,  <67.197609, 56.144905, 59.245659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.685104, 56.754410, 59.399647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.460052, 57.002403, 59.618393>,  <67.325020, 57.151199, 59.749641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.460052, 57.002403, 59.618393>,  <67.685104, 56.754410, 59.399647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.460052, 57.002403, 59.618393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077079, -0.619276, 0.781381,
		0.823103, 0.481785, 0.300639,
		-0.562637, 0.619984, 0.546863,
		67.291260, 57.188400, 59.782452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.999382, 57.130108, 59.998684>,  <67.685104, 56.754410, 59.399647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.999382, 57.130108, 59.998684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.620682, 57.017349, 60.060921>,  <67.393463, 56.949696, 60.098263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.620682, 57.017349, 60.060921>,  <67.999382, 57.130108, 59.998684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.620682, 57.017349, 60.060921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266324, -0.414025, 0.870434,
		-0.180950, 0.865517, 0.467051,
		-0.946746, -0.281892, 0.155590,
		67.336655, 56.932781, 60.107597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.701393, 57.460480, 60.622929>,  <67.999382, 57.130108, 59.998684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.701393, 57.460480, 60.622929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.526039, 57.107086, 60.556870>,  <67.420830, 56.895050, 60.517235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.526039, 57.107086, 60.556870>,  <67.701393, 57.460480, 60.622929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.526039, 57.107086, 60.556870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309683, -0.320971, 0.895027,
		-0.843755, 0.341215, 0.414307,
		-0.438377, -0.883487, -0.165152,
		67.394524, 56.842041, 60.507324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.814926, 57.926357, 61.243969>,  <67.701393, 57.460480, 60.622929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.814926, 57.926357, 61.243969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.552330, 57.690239, 61.431824>,  <67.394768, 57.548569, 61.544537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.552330, 57.690239, 61.431824>,  <67.814926, 57.926357, 61.243969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.552330, 57.690239, 61.431824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021890, -0.607426, -0.794075,
		0.754010, -0.531589, 0.385852,
		-0.656498, -0.590294, 0.469642,
		67.355377, 57.513149, 61.572716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.202286, 57.333889, 61.303246>,  <67.814926, 57.926357, 61.243969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.202286, 57.333889, 61.303246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.804802, 57.310707, 61.264893>,  <67.566315, 57.296799, 61.241882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.804802, 57.310707, 61.264893>,  <68.202286, 57.333889, 61.303246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.804802, 57.310707, 61.264893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111344, -0.605968, -0.787658,
		-0.012452, -0.793375, 0.608606,
		-0.993704, -0.057957, -0.095883,
		67.506691, 57.293320, 61.236126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.770874, 57.808552, 61.135250>,  <68.202286, 57.333889, 61.303246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.770874, 57.808552, 61.135250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.748627, 58.101204, 60.863480>,  <68.735275, 58.276794, 60.700417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.748627, 58.101204, 60.863480>,  <68.770874, 57.808552, 61.135250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.748627, 58.101204, 60.863480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801064, 0.438891, 0.407028,
		0.595989, -0.521627, -0.610493,
		-0.055623, 0.731628, -0.679431,
		68.731941, 58.320694, 60.659649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.371429, 58.166702, 60.712334>,  <68.770874, 57.808552, 61.135250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.371429, 58.166702, 60.712334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.670456, 57.941414, 60.853142>,  <69.849876, 57.806240, 60.937626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.670456, 57.941414, 60.853142>,  <69.371429, 58.166702, 60.712334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.670456, 57.941414, 60.853142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333208, 0.776517, 0.534784,
		-0.574549, -0.282494, 0.768173,
		0.747573, -0.563221, 0.352018,
		69.894730, 57.772446, 60.958748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.910896, 58.597733, 60.970924>,  <69.371429, 58.166702, 60.712334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.910896, 58.597733, 60.970924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.228333, 58.814194, 61.082199>,  <70.418793, 58.944069, 61.148964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.228333, 58.814194, 61.082199>,  <69.910896, 58.597733, 60.970924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.228333, 58.814194, 61.082199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357777, 0.784804, -0.506041,
		-0.492163, 0.302057, 0.816417,
		0.793581, 0.541150, 0.278183,
		70.466408, 58.976540, 61.165653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.611244, 58.603233, 60.792625>,  <69.910896, 58.597733, 60.970924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.611244, 58.603233, 60.792625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.719063, 58.436951, 60.445168>,  <70.783752, 58.337181, 60.236694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.719063, 58.436951, 60.445168>,  <70.611244, 58.603233, 60.792625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.719063, 58.436951, 60.445168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497109, -0.712484, 0.495226,
		-0.824762, -0.565291, 0.014611,
		0.269537, -0.415706, -0.868641,
		70.799927, 58.312241, 60.184574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.840546, 57.956707, 60.527950>,  <70.611244, 58.603233, 60.792625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.840546, 57.956707, 60.527950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.013748, 58.317245, 60.531502>,  <71.117668, 58.533569, 60.533634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.013748, 58.317245, 60.531502>,  <70.840546, 57.956707, 60.527950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.013748, 58.317245, 60.531502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897516, -0.430223, -0.096819,
		-0.083448, 0.049892, -0.995263,
		0.433015, 0.901343, 0.008877,
		71.143654, 58.587650, 60.534164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.297462, 58.028759, 59.958412>,  <70.840546, 57.956707, 60.527950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.297462, 58.028759, 59.958412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.409584, 58.226360, 60.287628>,  <71.476860, 58.344921, 60.485157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.409584, 58.226360, 60.287628>,  <71.297462, 58.028759, 59.958412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.409584, 58.226360, 60.287628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903181, -0.426118, -0.051838,
		0.325103, 0.757883, -0.565615,
		0.280306, 0.494000, 0.823038,
		71.493675, 58.374561, 60.534538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.694473, 57.644970, 60.427364>,  <71.297462, 58.028759, 59.958412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.694473, 57.644970, 60.427364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.896248, 57.309715, 60.344360>,  <72.017311, 57.108562, 60.294559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.896248, 57.309715, 60.344360>,  <71.694473, 57.644970, 60.427364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.896248, 57.309715, 60.344360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863153, 0.495757, 0.095874,
		0.022518, -0.227474, 0.973524,
		0.504440, -0.838141, -0.207508,
		72.047577, 57.058273, 60.282108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.256691, 57.479767, 61.002552>,  <71.694473, 57.644970, 60.427364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.256691, 57.479767, 61.002552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.365669, 57.323353, 60.650902>,  <72.431061, 57.229504, 60.439911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.365669, 57.323353, 60.650902>,  <72.256691, 57.479767, 61.002552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.365669, 57.323353, 60.650902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878846, 0.473068, 0.061941,
		0.391664, -0.789490, 0.472551,
		0.272451, -0.391040, -0.879124,
		72.447403, 57.206039, 60.387165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.951706, 57.261639, 61.112312>,  <72.256691, 57.479767, 61.002552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.951706, 57.261639, 61.112312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.822922, 57.441353, 60.778969>,  <72.745651, 57.549179, 60.578960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.822922, 57.441353, 60.778969>,  <72.951706, 57.261639, 61.112312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.822922, 57.441353, 60.778969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701644, 0.704205, 0.108585,
		0.635643, -0.549765, -0.541956,
		-0.321952, 0.449282, -0.833362,
		72.726334, 57.576138, 60.528961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
