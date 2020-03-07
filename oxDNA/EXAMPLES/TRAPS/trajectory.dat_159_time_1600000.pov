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
	<36.115078, 53.073910, 49.722462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057297, 53.410263, 49.931091>,  <36.022629, 53.612076, 50.056271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057297, 53.410263, 49.931091>,  <36.115078, 53.073910, 49.722462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057297, 53.410263, 49.931091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021121, -0.524366, 0.851231,
		0.989286, 0.133982, 0.057988,
		-0.144456, 0.840886, 0.521578,
		36.013958, 53.662529, 50.087566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673164, 53.199570, 50.242474>,  <36.115078, 53.073910, 49.722462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673164, 53.199570, 50.242474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322304, 53.348206, 50.364151>,  <36.111790, 53.437386, 50.437157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322304, 53.348206, 50.364151>,  <36.673164, 53.199570, 50.242474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322304, 53.348206, 50.364151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078875, -0.513360, 0.854541,
		0.473696, 0.773553, 0.420984,
		-0.877149, 0.371588, 0.304190,
		36.059158, 53.459682, 50.455410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688610, 53.638088, 50.898426>,  <36.673164, 53.199570, 50.242474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688610, 53.638088, 50.898426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375214, 53.401886, 50.821022>,  <36.187176, 53.260166, 50.774578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375214, 53.401886, 50.821022>,  <36.688610, 53.638088, 50.898426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375214, 53.401886, 50.821022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215801, -0.550590, 0.806399,
		-0.582725, 0.590049, 0.558815,
		-0.783493, -0.590502, -0.193509,
		36.140167, 53.224735, 50.762970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937447, 52.943241, 51.206661>,  <36.688610, 53.638088, 50.898426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937447, 52.943241, 51.206661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095299, 52.977295, 51.572617>,  <37.190010, 52.997726, 51.792191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095299, 52.977295, 51.572617>,  <36.937447, 52.943241, 51.206661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095299, 52.977295, 51.572617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386437, 0.918735, 0.081196,
		-0.833624, -0.385589, 0.395464,
		0.394635, 0.085136, 0.914885,
		37.213688, 53.002834, 51.847084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624458, 53.254593, 51.167301>,  <36.937447, 52.943241, 51.206661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624458, 53.254593, 51.167301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004456, 53.377769, 51.188019>,  <38.232452, 53.451675, 51.200451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004456, 53.377769, 51.188019>,  <37.624458, 53.254593, 51.167301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004456, 53.377769, 51.188019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164717, -0.635078, 0.754682,
		0.265294, -0.708411, -0.654044,
		0.949994, 0.307944, 0.051795,
		38.289455, 53.470154, 51.203556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032318, 52.798393, 50.931053>,  <37.624458, 53.254593, 51.167301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032318, 52.798393, 50.931053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197063, 53.020901, 51.219753>,  <38.295910, 53.154404, 51.392975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197063, 53.020901, 51.219753>,  <38.032318, 52.798393, 50.931053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197063, 53.020901, 51.219753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102006, -0.758931, 0.643132,
		0.905516, -0.338509, -0.255836,
		0.411868, 0.556270, 0.721754,
		38.320625, 53.187782, 51.436279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632809, 52.560261, 51.209354>,  <38.032318, 52.798393, 50.931053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632809, 52.560261, 51.209354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439228, 52.755127, 51.500134>,  <38.323078, 52.872047, 51.674603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439228, 52.755127, 51.500134>,  <38.632809, 52.560261, 51.209354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439228, 52.755127, 51.500134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022315, -0.837311, 0.546272,
		0.874811, 0.248147, 0.416088,
		-0.483951, 0.487169, 0.726951,
		38.294044, 52.901279, 51.718220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103970, 52.447926, 51.753567>,  <38.632809, 52.560261, 51.209354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103970, 52.447926, 51.753567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739605, 52.559803, 51.874901>,  <38.520985, 52.626930, 51.947701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739605, 52.559803, 51.874901>,  <39.103970, 52.447926, 51.753567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739605, 52.559803, 51.874901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192262, -0.362746, 0.911839,
		0.365069, 0.888924, 0.276655,
		-0.910912, 0.279694, 0.303334,
		38.466331, 52.643711, 51.965900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852398, 53.107723, 52.127544>,  <39.103970, 52.447926, 51.753567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852398, 53.107723, 52.127544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672955, 52.957836, 52.452095>,  <38.565289, 52.867905, 52.646828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672955, 52.957836, 52.452095>,  <38.852398, 53.107723, 52.127544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672955, 52.957836, 52.452095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691716, 0.429307, 0.580710,
		-0.565934, 0.821755, 0.066609,
		-0.448606, -0.374718, 0.811381,
		38.538372, 52.845421, 52.695511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730663, 53.582123, 52.598415>,  <38.852398, 53.107723, 52.127544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730663, 53.582123, 52.598415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807037, 53.236389, 52.784527>,  <38.852859, 53.028950, 52.896194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807037, 53.236389, 52.784527>,  <38.730663, 53.582123, 52.598415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807037, 53.236389, 52.784527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664658, 0.462638, 0.586682,
		-0.722340, 0.197233, 0.662815,
		0.190930, -0.864329, 0.465275,
		38.864315, 52.977089, 52.924110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210636, 54.133301, 52.227509>,  <38.730663, 53.582123, 52.598415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210636, 54.133301, 52.227509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305004, 54.521957, 52.221027>,  <39.361626, 54.755150, 52.217136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305004, 54.521957, 52.221027>,  <39.210636, 54.133301, 52.227509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305004, 54.521957, 52.221027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450419, 0.124110, 0.884149,
		0.861084, -0.201285, 0.466924,
		0.235916, 0.971638, -0.016206,
		39.375778, 54.813450, 52.216164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471336, 54.255737, 52.867550>,  <39.210636, 54.133301, 52.227509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471336, 54.255737, 52.867550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294025, 54.580822, 52.716286>,  <39.187641, 54.775871, 52.625526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294025, 54.580822, 52.716286>,  <39.471336, 54.255737, 52.867550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294025, 54.580822, 52.716286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284426, 0.272548, 0.919141,
		0.850064, 0.514991, 0.110343,
		-0.443275, 0.812713, -0.378160,
		39.161041, 54.824635, 52.602837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619614, 53.533314, 53.344723>,  <39.471336, 54.255737, 52.867550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619614, 53.533314, 53.344723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956738, 53.334690, 53.261688>,  <40.159012, 53.215515, 53.211868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956738, 53.334690, 53.261688>,  <39.619614, 53.533314, 53.344723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956738, 53.334690, 53.261688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513979, 0.628169, 0.584148,
		-0.159663, -0.599024, 0.784651,
		0.842813, -0.496561, -0.207590,
		40.209579, 53.185722, 53.199409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083694, 53.215374, 53.937855>,  <39.619614, 53.533314, 53.344723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083694, 53.215374, 53.937855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302574, 53.307529, 53.615990>,  <40.433903, 53.362823, 53.422871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302574, 53.307529, 53.615990>,  <40.083694, 53.215374, 53.937855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302574, 53.307529, 53.615990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600108, 0.562176, 0.569059,
		0.583473, -0.794277, 0.169362,
		0.547202, 0.230395, -0.804667,
		40.466736, 53.376648, 53.374588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767273, 53.428356, 54.237175>,  <40.083694, 53.215374, 53.937855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767273, 53.428356, 54.237175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779758, 53.576611, 53.865875>,  <40.787251, 53.665562, 53.643093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779758, 53.576611, 53.865875>,  <40.767273, 53.428356, 54.237175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779758, 53.576611, 53.865875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584678, 0.746467, 0.317710,
		0.810665, -0.552645, -0.193405,
		0.031211, 0.370636, -0.928254,
		40.789124, 53.687801, 53.587399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287334, 53.766689, 54.272976>,  <40.767273, 53.428356, 54.237175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287334, 53.766689, 54.272976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166168, 53.893719, 53.913559>,  <41.093468, 53.969936, 53.697906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166168, 53.893719, 53.913559>,  <41.287334, 53.766689, 54.272976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166168, 53.893719, 53.913559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595055, 0.799495, 0.081965,
		0.744413, -0.509855, -0.431157,
		-0.302917, 0.317578, -0.898546,
		41.075294, 53.988991, 53.643993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854889, 53.695625, 53.869118>,  <41.287334, 53.766689, 54.272976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854889, 53.695625, 53.869118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592468, 53.990337, 53.803688>,  <41.435017, 54.167164, 53.764431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592468, 53.990337, 53.803688>,  <41.854889, 53.695625, 53.869118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592468, 53.990337, 53.803688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718776, 0.676043, 0.162252,
		0.230129, -0.011130, -0.973096,
		-0.656049, 0.736778, -0.163577,
		41.395653, 54.211372, 53.754616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255573, 53.383709, 54.559799>,  <41.854889, 53.695625, 53.869118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255573, 53.383709, 54.559799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076763, 53.739384, 54.598831>,  <41.969479, 53.952789, 54.622250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076763, 53.739384, 54.598831>,  <42.255573, 53.383709, 54.559799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076763, 53.739384, 54.598831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872824, 0.457461, -0.170023,
		-0.195822, 0.009167, -0.980597,
		-0.447026, 0.889182, 0.097582,
		41.942654, 54.006138, 54.628105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359295, 52.690464, 54.482815>,  <42.255573, 53.383709, 54.559799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359295, 52.690464, 54.482815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489651, 52.443691, 54.196266>,  <42.567863, 52.295628, 54.024338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489651, 52.443691, 54.196266>,  <42.359295, 52.690464, 54.482815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489651, 52.443691, 54.196266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944679, 0.182771, 0.272355,
		-0.037091, -0.765503, 0.642362,
		0.325894, -0.616928, -0.716375,
		42.587418, 52.258614, 53.981354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749554, 52.184990, 54.744156>,  <42.359295, 52.690464, 54.482815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749554, 52.184990, 54.744156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887390, 52.264206, 54.377106>,  <42.970093, 52.311737, 54.156876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887390, 52.264206, 54.377106>,  <42.749554, 52.184990, 54.744156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887390, 52.264206, 54.377106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917767, 0.134472, 0.373660,
		0.197394, -0.970926, -0.135416,
		0.344586, 0.198038, -0.917628,
		42.990765, 52.323616, 54.101818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468300, 52.021324, 54.664242>,  <42.749554, 52.184990, 54.744156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468300, 52.021324, 54.664242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422314, 52.315250, 54.396858>,  <43.394722, 52.491608, 54.236427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422314, 52.315250, 54.396858>,  <43.468300, 52.021324, 54.664242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422314, 52.315250, 54.396858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919694, 0.333050, 0.207943,
		0.375428, -0.590868, -0.714093,
		-0.114962, 0.734815, -0.668455,
		43.387825, 52.535694, 54.196323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013771, 51.824532, 54.367142>,  <43.468300, 52.021324, 54.664242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013771, 51.824532, 54.367142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883045, 52.193588, 54.285240>,  <43.804607, 52.415024, 54.236099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883045, 52.193588, 54.285240>,  <44.013771, 51.824532, 54.367142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883045, 52.193588, 54.285240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944191, 0.328189, -0.028221,
		0.041159, -0.202547, -0.978407,
		-0.326818, 0.922641, -0.204751,
		43.785000, 52.470379, 54.223816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298637, 52.148346, 53.761654>,  <44.013771, 51.824532, 54.367142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298637, 52.148346, 53.761654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.218464, 52.406586, 54.056416>,  <44.170361, 52.561531, 54.233273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.218464, 52.406586, 54.056416>,  <44.298637, 52.148346, 53.761654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218464, 52.406586, 54.056416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927749, 0.366774, -0.068982,
		-0.314812, 0.669835, -0.672468,
		-0.200438, 0.645598, 0.736904,
		44.158333, 52.600266, 54.277485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789928, 52.670475, 53.540348>,  <44.298637, 52.148346, 53.761654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789928, 52.670475, 53.540348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670029, 52.749008, 53.913788>,  <44.598091, 52.796127, 54.137852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670029, 52.749008, 53.913788>,  <44.789928, 52.670475, 53.540348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670029, 52.749008, 53.913788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886020, 0.420127, 0.196119,
		-0.353724, 0.885971, -0.299890,
		-0.299747, 0.196337, 0.933597,
		44.580105, 52.807911, 54.193867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838043, 53.392555, 53.691765>,  <44.789928, 52.670475, 53.540348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838043, 53.392555, 53.691765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907490, 53.138927, 53.993179>,  <44.949158, 52.986752, 54.174026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907490, 53.138927, 53.993179>,  <44.838043, 53.392555, 53.691765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907490, 53.138927, 53.993179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970534, 0.239987, -0.021671,
		-0.167097, 0.735091, 0.657054,
		0.173615, -0.634072, 0.753532,
		44.959576, 52.948708, 54.219238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255493, 53.727390, 54.240616>,  <44.838043, 53.392555, 53.691765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255493, 53.727390, 54.240616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291374, 53.329002, 54.240242>,  <45.312904, 53.089970, 54.240017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291374, 53.329002, 54.240242>,  <45.255493, 53.727390, 54.240616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291374, 53.329002, 54.240242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956361, 0.086401, -0.279121,
		0.278076, 0.024144, 0.960256,
		0.089706, -0.995968, -0.000936,
		45.318287, 53.030212, 54.239960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770805, 53.491581, 54.554630>,  <45.255493, 53.727390, 54.240616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.770805, 53.491581, 54.554630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753132, 53.177666, 54.307358>,  <45.742527, 52.989315, 54.158993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753132, 53.177666, 54.307358>,  <45.770805, 53.491581, 54.554630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753132, 53.177666, 54.307358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991715, 0.040255, -0.121989,
		0.120621, -0.618450, 0.776512,
		-0.044186, -0.784793, -0.618181,
		45.739876, 52.942226, 54.121902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182705, 53.002266, 54.862850>,  <45.770805, 53.491581, 54.554630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182705, 53.002266, 54.862850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.135525, 52.967205, 54.467194>,  <46.107216, 52.946167, 54.229797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.135525, 52.967205, 54.467194>,  <46.182705, 53.002266, 54.862850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.135525, 52.967205, 54.467194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983234, -0.149809, -0.103966,
		-0.139070, -0.984822, 0.103855,
		-0.117947, -0.087655, -0.989144,
		46.100140, 52.940910, 54.170452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.555576, 52.437359, 54.453434>,  <46.182705, 53.002266, 54.862850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.555576, 52.437359, 54.453434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.490856, 52.757488, 54.222504>,  <46.452023, 52.949566, 54.083946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.490856, 52.757488, 54.222504>,  <46.555576, 52.437359, 54.453434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.490856, 52.757488, 54.222504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973813, 0.034803, -0.224672,
		-0.159717, -0.598559, -0.784995,
		-0.161800, 0.800322, -0.577326,
		46.442318, 52.997585, 54.049305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865398, 52.437569, 53.747807>,  <46.555576, 52.437359, 54.453434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865398, 52.437569, 53.747807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.848892, 52.824097, 53.849415>,  <46.838989, 53.056011, 53.910381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.848892, 52.824097, 53.849415>,  <46.865398, 52.437569, 53.747807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.848892, 52.824097, 53.849415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914373, 0.139008, -0.380260,
		-0.402763, 0.216578, -0.889312,
		-0.041265, 0.966318, 0.254020,
		46.836514, 53.113991, 53.925621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.336037, 52.795200, 53.399261>,  <46.865398, 52.437569, 53.747807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.336037, 52.795200, 53.399261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234795, 53.128433, 53.596001>,  <47.174049, 53.328373, 53.714043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234795, 53.128433, 53.596001>,  <47.336037, 52.795200, 53.399261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234795, 53.128433, 53.596001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889657, 0.400157, -0.219965,
		-0.380064, 0.381901, -0.842439,
		-0.253103, 0.833083, 0.491846,
		47.158863, 53.378357, 53.743553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.441242, 53.340702, 52.947102>,  <47.336037, 52.795200, 53.399261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.441242, 53.340702, 52.947102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.463955, 53.470001, 53.324944>,  <47.477585, 53.547581, 53.551651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.463955, 53.470001, 53.324944>,  <47.441242, 53.340702, 52.947102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.463955, 53.470001, 53.324944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784101, 0.571246, -0.242618,
		-0.618030, 0.754445, -0.221023,
		0.056784, 0.323250, 0.944609,
		47.480991, 53.566975, 53.608326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.346912, 54.097195, 52.954273>,  <47.441242, 53.340702, 52.947102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.346912, 54.097195, 52.954273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567825, 53.922165, 53.238106>,  <47.700375, 53.817146, 53.408405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567825, 53.922165, 53.238106>,  <47.346912, 54.097195, 52.954273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.567825, 53.922165, 53.238106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779766, 0.572210, -0.254048,
		-0.294868, 0.693618, 0.657227,
		0.552284, -0.437572, 0.709586,
		47.733509, 53.790894, 53.450981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.714787, 54.477097, 53.464569>,  <47.346912, 54.097195, 52.954273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.714787, 54.477097, 53.464569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.933952, 54.147659, 53.405956>,  <48.065453, 53.949997, 53.370789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.933952, 54.147659, 53.405956>,  <47.714787, 54.477097, 53.464569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.933952, 54.147659, 53.405956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749095, 0.561032, -0.352277,
		0.372346, 0.083250, 0.924353,
		0.547919, -0.823597, -0.146536,
		48.098328, 53.900581, 53.361996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.363468, 54.637119, 53.843262>,  <47.714787, 54.477097, 53.464569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.363468, 54.637119, 53.843262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.354069, 54.402294, 53.519581>,  <48.348431, 54.261398, 53.325371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.354069, 54.402294, 53.519581>,  <48.363468, 54.637119, 53.843262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.354069, 54.402294, 53.519581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705108, 0.564076, -0.429699,
		0.708711, -0.580672, 0.400686,
		-0.023497, -0.587059, -0.809203,
		48.347019, 54.226177, 53.276821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.002266, 54.754169, 53.641338>,  <48.363468, 54.637119, 53.843262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.002266, 54.754169, 53.641338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.834621, 54.659794, 53.290642>,  <48.734035, 54.603168, 53.080223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.834621, 54.659794, 53.290642>,  <49.002266, 54.754169, 53.641338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.834621, 54.659794, 53.290642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544536, 0.707375, -0.450667,
		0.726518, -0.666297, -0.167988,
		-0.419109, -0.235942, -0.876744,
		48.708889, 54.589012, 53.027618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.417656, 54.856003, 53.084816>,  <49.002266, 54.754169, 53.641338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.417656, 54.856003, 53.084816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.067562, 54.847881, 52.891510>,  <48.857506, 54.843010, 52.775528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.067562, 54.847881, 52.891510>,  <49.417656, 54.856003, 53.084816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.067562, 54.847881, 52.891510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232218, 0.858804, -0.456650,
		0.424301, -0.511901, -0.746945,
		-0.875239, -0.020303, -0.483264,
		48.804989, 54.841789, 52.746532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.712437, 54.866261, 52.342976>,  <49.417656, 54.856003, 53.084816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.712437, 54.866261, 52.342976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.086414, 54.770676, 52.447872>,  <50.310802, 54.713326, 52.510811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.086414, 54.770676, 52.447872>,  <49.712437, 54.866261, 52.342976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.086414, 54.770676, 52.447872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344409, 0.433796, -0.832588,
		0.085195, 0.868745, 0.487876,
		0.934946, -0.238962, 0.262246,
		50.366898, 54.698986, 52.526546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.224758, 55.439758, 52.243244>,  <49.712437, 54.866261, 52.342976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.224758, 55.439758, 52.243244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.335609, 55.062355, 52.170593>,  <50.402119, 54.835911, 52.127003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.335609, 55.062355, 52.170593>,  <50.224758, 55.439758, 52.243244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.335609, 55.062355, 52.170593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194484, 0.240195, -0.951043,
		0.940945, 0.228235, 0.250062,
		0.277125, -0.943512, -0.181623,
		50.418747, 54.779301, 52.116108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.904404, 55.869442, 51.869164>,  <50.224758, 55.439758, 52.243244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.904404, 55.869442, 51.869164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.570667, 56.014252, 52.035446>,  <49.370426, 56.101135, 52.135216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.570667, 56.014252, 52.035446>,  <49.904404, 55.869442, 51.869164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.570667, 56.014252, 52.035446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211197, -0.486651, 0.847683,
		0.509183, 0.795055, 0.329577,
		-0.834343, 0.362020, 0.415707,
		49.320366, 56.122856, 52.160160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.249733, 56.535126, 51.812004>,  <49.904404, 55.869442, 51.869164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.249733, 56.535126, 51.812004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.940529, 56.656754, 52.034714>,  <49.755005, 56.729729, 52.168339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.940529, 56.656754, 52.034714>,  <50.249733, 56.535126, 51.812004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.940529, 56.656754, 52.034714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510501, -0.222893, 0.830486,
		0.376625, 0.926209, 0.017072,
		-0.773009, 0.304067, 0.556777,
		49.708626, 56.747974, 52.201748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.373177, 57.176777, 52.109886>,  <50.249733, 56.535126, 51.812004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.373177, 57.176777, 52.109886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.138168, 56.945061, 52.335892>,  <49.997162, 56.806030, 52.471493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.138168, 56.945061, 52.335892>,  <50.373177, 57.176777, 52.109886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.138168, 56.945061, 52.335892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726364, -0.069786, 0.683758,
		-0.356664, 0.812129, 0.461777,
		-0.587525, -0.579290, 0.565011,
		49.961910, 56.771275, 52.505394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.284794, 57.395329, 52.836987>,  <50.373177, 57.176777, 52.109886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.284794, 57.395329, 52.836987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.261284, 56.996487, 52.817677>,  <50.247177, 56.757183, 52.806091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.261284, 56.996487, 52.817677>,  <50.284794, 57.395329, 52.836987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.261284, 56.996487, 52.817677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659875, -0.075094, 0.747613,
		-0.749072, 0.012091, 0.662378,
		-0.058780, -0.997103, -0.048272,
		50.243649, 56.697357, 52.803196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.016708, 57.035133, 53.472805>,  <50.284794, 57.395329, 52.836987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.016708, 57.035133, 53.472805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.287994, 56.860939, 53.236034>,  <50.450768, 56.756424, 53.093971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.287994, 56.860939, 53.236034>,  <50.016708, 57.035133, 53.472805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.287994, 56.860939, 53.236034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684614, 0.081697, 0.724313,
		-0.267066, -0.896483, 0.353546,
		0.678218, -0.435482, -0.591926,
		50.491459, 56.730293, 53.058456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.573399, 56.773033, 53.837643>,  <50.016708, 57.035133, 53.472805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.573399, 56.773033, 53.837643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.765789, 56.817940, 53.489838>,  <50.881222, 56.844883, 53.281155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.765789, 56.817940, 53.489838>,  <50.573399, 56.773033, 53.837643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.765789, 56.817940, 53.489838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873466, 0.024182, 0.486283,
		0.075621, -0.993384, -0.086433,
		0.480976, 0.112269, -0.869516,
		50.910080, 56.851620, 53.228981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.139275, 56.230480, 53.774288>,  <50.573399, 56.773033, 53.837643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.139275, 56.230480, 53.774288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.153545, 56.602036, 53.626839>,  <51.162106, 56.824970, 53.538368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.153545, 56.602036, 53.626839>,  <51.139275, 56.230480, 53.774288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.153545, 56.602036, 53.626839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774594, 0.207366, 0.597498,
		0.631452, -0.306851, -0.712117,
		0.035674, 0.928893, -0.368627,
		51.164249, 56.880703, 53.516251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.837475, 56.394447, 53.887352>,  <51.139275, 56.230480, 53.774288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.837475, 56.394447, 53.887352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.711441, 56.772926, 53.857880>,  <51.635818, 57.000015, 53.840199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.711441, 56.772926, 53.857880>,  <51.837475, 56.394447, 53.887352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.711441, 56.772926, 53.857880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709176, 0.286325, 0.644274,
		0.630706, 0.150753, -0.761238,
		-0.315087, 0.946199, -0.073676,
		51.616917, 57.056786, 53.835777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.289871, 56.876495, 53.470768>,  <51.837475, 56.394447, 53.887352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.289871, 56.876495, 53.470768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.107449, 57.090759, 53.755043>,  <51.997993, 57.219318, 53.925610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.107449, 57.090759, 53.755043>,  <52.289871, 56.876495, 53.470768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.107449, 57.090759, 53.755043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889950, 0.274114, 0.364486,
		0.000429, 0.798707, -0.601719,
		-0.456057, 0.535657, 0.710692,
		51.970631, 57.251457, 53.968250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.398949, 57.634365, 53.545662>,  <52.289871, 56.876495, 53.470768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.398949, 57.634365, 53.545662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.294472, 57.568901, 53.926186>,  <52.231785, 57.529625, 54.154499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.294472, 57.568901, 53.926186>,  <52.398949, 57.634365, 53.545662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.294472, 57.568901, 53.926186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856274, 0.415679, 0.306605,
		-0.445619, 0.894666, 0.031565,
		-0.261188, -0.163658, 0.951313,
		52.216114, 57.519802, 54.211578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.483559, 58.226334, 53.981686>,  <52.398949, 57.634365, 53.545662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.483559, 58.226334, 53.981686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.534416, 57.921158, 54.235222>,  <52.564930, 57.738052, 54.387344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.534416, 57.921158, 54.235222>,  <52.483559, 58.226334, 53.981686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.534416, 57.921158, 54.235222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847756, 0.415328, 0.329867,
		-0.514921, 0.495398, 0.699598,
		0.127148, -0.762944, 0.633837,
		52.572559, 57.692276, 54.425373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.867825, 58.506817, 54.533978>,  <52.483559, 58.226334, 53.981686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.867825, 58.506817, 54.533978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.970062, 58.120476, 54.516956>,  <53.031403, 57.888672, 54.506744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.970062, 58.120476, 54.516956>,  <52.867825, 58.506817, 54.533978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.970062, 58.120476, 54.516956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934678, 0.258111, -0.244448,
		0.247083, 0.022707, 0.968728,
		0.255590, -0.965848, -0.042552,
		53.046738, 57.830723, 54.504192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.484516, 59.032448, 54.459366>,  <52.867825, 58.506817, 54.533978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.484516, 59.032448, 54.459366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.495609, 59.185944, 54.828575>,  <53.502266, 59.278042, 55.050102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.495609, 59.185944, 54.828575>,  <53.484516, 59.032448, 54.459366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.495609, 59.185944, 54.828575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965137, 0.230144, -0.124676,
		-0.260272, 0.894302, -0.363980,
		0.027730, 0.383740, 0.923025,
		53.503929, 59.301067, 55.105484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.955894, 59.603191, 54.382969>,  <53.484516, 59.032448, 54.459366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.955894, 59.603191, 54.382969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.940342, 59.533394, 54.776524>,  <53.931011, 59.491516, 55.012657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.940342, 59.533394, 54.776524>,  <53.955894, 59.603191, 54.382969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.940342, 59.533394, 54.776524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923164, 0.370571, 0.102197,
		-0.382434, 0.912266, 0.146676,
		-0.038877, -0.174490, 0.983891,
		53.928680, 59.481049, 55.071690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.126637, 60.221802, 54.779919>,  <53.955894, 59.603191, 54.382969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.126637, 60.221802, 54.779919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.208641, 59.889107, 54.986290>,  <54.257843, 59.689491, 55.110111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.208641, 59.889107, 54.986290>,  <54.126637, 60.221802, 54.779919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.208641, 59.889107, 54.986290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943057, 0.308936, 0.123299,
		-0.261941, 0.461269, 0.847713,
		0.205015, -0.831739, 0.515926,
		54.270145, 59.639584, 55.141068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.480690, 60.418781, 55.382351>,  <54.126637, 60.221802, 54.779919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.480690, 60.418781, 55.382351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.562569, 60.040325, 55.282013>,  <54.611694, 59.813251, 55.221809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.562569, 60.040325, 55.282013>,  <54.480690, 60.418781, 55.382351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.562569, 60.040325, 55.282013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978653, 0.193002, 0.070631,
		-0.018412, -0.259951, 0.965446,
		0.204694, -0.946137, -0.250848,
		54.623978, 59.756485, 55.206757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.795250, 60.048878, 55.953434>,  <54.480690, 60.418781, 55.382351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.795250, 60.048878, 55.953434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.920883, 59.907059, 55.601151>,  <54.996262, 59.821968, 55.389782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.920883, 59.907059, 55.601151>,  <54.795250, 60.048878, 55.953434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.920883, 59.907059, 55.601151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949283, 0.131536, 0.285586,
		0.014590, -0.925738, 0.377883,
		0.314083, -0.354551, -0.880707,
		55.015110, 59.800694, 55.336937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.429283, 59.836563, 56.201099>,  <54.795250, 60.048878, 55.953434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.429283, 59.836563, 56.201099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.474335, 59.759155, 55.811256>,  <55.501366, 59.712711, 55.577351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.474335, 59.759155, 55.811256>,  <55.429283, 59.836563, 56.201099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.474335, 59.759155, 55.811256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920331, -0.349435, 0.175743,
		-0.374573, -0.916757, 0.138747,
		0.112630, -0.193522, -0.974609,
		55.508125, 59.701099, 55.518875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.953480, 60.193020, 56.742241>,  <55.429283, 59.836563, 56.201099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.953480, 60.193020, 56.742241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.655510, 60.043442, 56.963242>,  <55.476727, 59.953693, 57.095840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.655510, 60.043442, 56.963242>,  <55.953480, 60.193020, 56.742241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.655510, 60.043442, 56.963242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357138, -0.475979, -0.803677,
		0.563508, -0.795996, 0.221018,
		-0.744924, -0.373945, 0.552498,
		55.432034, 59.931259, 57.128990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.359741, 60.910820, 56.712784>,  <55.953480, 60.193020, 56.742241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.359741, 60.910820, 56.712784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.440697, 60.683563, 56.393723>,  <56.489269, 60.547211, 56.202286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.440697, 60.683563, 56.393723>,  <56.359741, 60.910820, 56.712784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.440697, 60.683563, 56.393723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224705, -0.819721, 0.526846,
		-0.953178, 0.072612, -0.293563,
		0.202384, -0.568143, -0.797655,
		56.501411, 60.513119, 56.154427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.013725, 60.713406, 56.429199>,  <56.359741, 60.910820, 56.712784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.013725, 60.713406, 56.429199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.258568, 60.522430, 56.681351>,  <57.405476, 60.407845, 56.832642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.258568, 60.522430, 56.681351>,  <57.013725, 60.713406, 56.429199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.258568, 60.522430, 56.681351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690167, -0.711665, 0.131160,
		0.385995, -0.515348, -0.765130,
		0.612109, -0.477441, 0.630375,
		57.442200, 60.379200, 56.870464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.911514, 60.012699, 56.290577>,  <57.013725, 60.713406, 56.429199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.911514, 60.012699, 56.290577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.055954, 60.031643, 56.663109>,  <57.142616, 60.043007, 56.886627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.055954, 60.031643, 56.663109>,  <56.911514, 60.012699, 56.290577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.055954, 60.031643, 56.663109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596917, -0.755558, 0.269857,
		0.716449, -0.653368, -0.244562,
		0.361097, 0.047356, 0.931325,
		57.164284, 60.045849, 56.942505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.137966, 59.339550, 56.642612>,  <56.911514, 60.012699, 56.290577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.137966, 59.339550, 56.642612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.982773, 59.603493, 56.900002>,  <56.889656, 59.761856, 57.054436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.982773, 59.603493, 56.900002>,  <57.137966, 59.339550, 56.642612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.982773, 59.603493, 56.900002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785202, -0.602234, 0.144125,
		0.482625, -0.449341, 0.751775,
		-0.387983, 0.659854, 0.643476,
		56.866379, 59.801449, 57.093044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.836716, 59.582718, 56.546112>,  <57.137966, 59.339550, 56.642612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.836716, 59.582718, 56.546112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.028831, 59.926491, 56.616180>,  <58.144100, 60.132755, 56.658222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.028831, 59.926491, 56.616180>,  <57.836716, 59.582718, 56.546112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.028831, 59.926491, 56.616180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836548, 0.508886, -0.203031,
		-0.263637, -0.049028, 0.963375,
		0.480294, 0.859436, 0.175175,
		58.172920, 60.184322, 56.668732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.276161, 59.053761, 56.613743>,  <57.836716, 59.582718, 56.546112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.276161, 59.053761, 56.613743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.244331, 58.818974, 56.936020>,  <58.225235, 58.678101, 57.129387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.244331, 58.818974, 56.936020>,  <58.276161, 59.053761, 56.613743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.244331, 58.818974, 56.936020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776607, 0.470212, 0.419265,
		-0.624940, 0.659065, 0.418429,
		-0.079572, -0.586970, 0.805689,
		58.220459, 58.642883, 57.177727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.595196, 59.370083, 57.157692>,  <58.276161, 59.053761, 56.613743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.595196, 59.370083, 57.157692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.566193, 59.001617, 57.310638>,  <58.548790, 58.780537, 57.402405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.566193, 59.001617, 57.310638>,  <58.595196, 59.370083, 57.157692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.566193, 59.001617, 57.310638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862487, 0.134610, 0.487849,
		-0.500858, 0.365155, 0.784731,
		-0.072508, -0.921163, 0.382362,
		58.544441, 58.725269, 57.425346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.726925, 59.372543, 57.859921>,  <58.595196, 59.370083, 57.157692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.726925, 59.372543, 57.859921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.768883, 58.980576, 57.792099>,  <58.794060, 58.745396, 57.751408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.768883, 58.980576, 57.792099>,  <58.726925, 59.372543, 57.859921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.768883, 58.980576, 57.792099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754016, -0.032798, 0.656036,
		-0.648426, -0.196664, 0.735437,
		0.104898, -0.979922, -0.169555,
		58.800354, 58.686600, 57.741234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.607109, 59.074459, 58.479332>,  <58.726925, 59.372543, 57.859921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.607109, 59.074459, 58.479332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.845886, 58.861340, 58.239403>,  <58.989151, 58.733467, 58.095448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.845886, 58.861340, 58.239403>,  <58.607109, 59.074459, 58.479332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.845886, 58.861340, 58.239403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672926, -0.074578, 0.735941,
		-0.436845, -0.842947, 0.314018,
		0.596940, -0.532803, -0.599819,
		59.024967, 58.701500, 58.059456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.143047, 58.664909, 58.893703>,  <58.607109, 59.074459, 58.479332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.143047, 58.664909, 58.893703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.301193, 58.655296, 58.526421>,  <59.396080, 58.649529, 58.306049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.301193, 58.655296, 58.526421>,  <59.143047, 58.664909, 58.893703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.301193, 58.655296, 58.526421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916900, 0.069725, 0.392980,
		0.054576, -0.997277, 0.049606,
		0.395368, -0.024037, -0.918208,
		59.419804, 58.648087, 58.250957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.499104, 58.063461, 58.496021>,  <59.143047, 58.664909, 58.893703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.499104, 58.063461, 58.496021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.628136, 58.439941, 58.455856>,  <59.705555, 58.665829, 58.431759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.628136, 58.439941, 58.455856>,  <59.499104, 58.063461, 58.496021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.628136, 58.439941, 58.455856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835244, -0.233138, 0.498010,
		0.445317, -0.244519, -0.861338,
		0.322583, 0.941200, -0.100413,
		59.724911, 58.722301, 58.425732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.281467, 58.115005, 58.340183>,  <59.499104, 58.063461, 58.496021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.281467, 58.115005, 58.340183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.154190, 58.437309, 58.539986>,  <60.077824, 58.630692, 58.659866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.154190, 58.437309, 58.539986>,  <60.281467, 58.115005, 58.340183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.154190, 58.437309, 58.539986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775704, -0.081622, 0.625797,
		0.545012, 0.586592, -0.599059,
		-0.318191, 0.805759, 0.499506,
		60.058731, 58.679035, 58.689838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.855175, 58.507328, 58.528118>,  <60.281467, 58.115005, 58.340183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.855175, 58.507328, 58.528118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.577980, 58.595390, 58.802727>,  <60.411663, 58.648228, 58.967491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.577980, 58.595390, 58.802727>,  <60.855175, 58.507328, 58.528118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.577980, 58.595390, 58.802727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672484, -0.145868, 0.725595,
		0.259882, 0.964498, -0.046964,
		-0.692984, 0.220152, 0.686518,
		60.370087, 58.661434, 59.008682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.020100, 59.158428, 58.912018>,  <60.855175, 58.507328, 58.528118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.020100, 59.158428, 58.912018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.779907, 58.946972, 59.152008>,  <60.635792, 58.820099, 59.296001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.779907, 58.946972, 59.152008>,  <61.020100, 59.158428, 58.912018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.779907, 58.946972, 59.152008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639613, 0.132777, 0.757143,
		-0.479916, 0.838399, 0.258394,
		-0.600479, -0.528637, 0.599973,
		60.599762, 58.788380, 59.332001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.471321, 58.762138, 59.363613>,  <61.020100, 59.158428, 58.912018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.471321, 58.762138, 59.363613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.814919, 58.962269, 59.320160>,  <62.021076, 59.082348, 59.294086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.814919, 58.962269, 59.320160>,  <61.471321, 58.762138, 59.363613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.814919, 58.962269, 59.320160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491133, -0.865187, -0.101191,
		-0.144620, 0.033567, -0.988918,
		0.858995, 0.500325, -0.108638,
		62.072617, 59.112366, 59.287567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.910297, 58.631920, 58.770729>,  <61.471321, 58.762138, 59.363613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.910297, 58.631920, 58.770729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.148560, 58.702713, 59.084129>,  <62.291519, 58.745190, 59.272167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.148560, 58.702713, 59.084129>,  <61.910297, 58.631920, 58.770729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.148560, 58.702713, 59.084129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463747, -0.872206, -0.155546,
		0.655842, 0.455997, -0.601613,
		0.595659, 0.176983, 0.783497,
		62.327259, 58.755806, 59.319180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.691181, 58.695587, 58.583084>,  <61.910297, 58.631920, 58.770729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.691181, 58.695587, 58.583084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.564079, 58.517162, 58.917763>,  <62.487820, 58.410107, 59.118572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.564079, 58.517162, 58.917763>,  <62.691181, 58.695587, 58.583084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.564079, 58.517162, 58.917763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591583, -0.782877, -0.192700,
		0.740988, 0.433747, 0.512640,
		-0.317751, -0.446058, 0.836700,
		62.468754, 58.383347, 59.168774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.187649, 58.366890, 59.044231>,  <62.691181, 58.695587, 58.583084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.187649, 58.366890, 59.044231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.849022, 58.164883, 59.111504>,  <62.645847, 58.043678, 59.151867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.849022, 58.164883, 59.111504>,  <63.187649, 58.366890, 59.044231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.849022, 58.164883, 59.111504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481666, -0.861295, -0.161768,
		0.226545, -0.055942, 0.972393,
		-0.846566, -0.505017, 0.168177,
		62.595051, 58.013378, 59.161957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.274353, 57.806637, 59.583118>,  <63.187649, 58.366890, 59.044231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.274353, 57.806637, 59.583118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.992958, 57.708145, 59.316444>,  <62.824120, 57.649052, 59.156441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.992958, 57.708145, 59.316444>,  <63.274353, 57.806637, 59.583118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.992958, 57.708145, 59.316444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618497, -0.674194, -0.403639,
		-0.350088, -0.696300, 0.626582,
		-0.703491, -0.246230, -0.666687,
		62.781910, 57.634277, 59.116440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.337879, 57.155510, 59.691570>,  <63.274353, 57.806637, 59.583118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.337879, 57.155510, 59.691570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.143875, 57.264164, 59.359070>,  <63.027473, 57.329357, 59.159569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.143875, 57.264164, 59.359070>,  <63.337879, 57.155510, 59.691570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.143875, 57.264164, 59.359070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617949, -0.566131, -0.545559,
		-0.618790, -0.778273, 0.106722,
		-0.485013, 0.271638, -0.831250,
		62.998371, 57.345654, 59.109695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.132568, 56.565720, 59.317844>,  <63.337879, 57.155510, 59.691570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.132568, 56.565720, 59.317844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.166527, 56.880440, 59.073311>,  <63.186901, 57.069271, 58.926590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.166527, 56.880440, 59.073311>,  <63.132568, 56.565720, 59.317844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.166527, 56.880440, 59.073311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618513, -0.522642, -0.586760,
		-0.781175, -0.328304, -0.531020,
		0.084897, 0.786805, -0.611335,
		63.191998, 57.116482, 58.889912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.111015, 56.361015, 58.552670>,  <63.132568, 56.565720, 59.317844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.111015, 56.361015, 58.552670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.325569, 56.693924, 58.608704>,  <63.454300, 56.893669, 58.642323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.325569, 56.693924, 58.608704>,  <63.111015, 56.361015, 58.552670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.325569, 56.693924, 58.608704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778162, -0.423440, -0.463856,
		-0.326736, 0.357811, -0.874766,
		0.536383, 0.832268, 0.140082,
		63.486485, 56.943604, 58.650726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.384346, 56.591774, 57.938404>,  <63.111015, 56.361015, 58.552670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.384346, 56.591774, 57.938404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.584953, 56.916794, 57.819588>,  <63.705318, 57.111805, 57.748299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.584953, 56.916794, 57.819588>,  <63.384346, 56.591774, 57.938404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.584953, 56.916794, 57.819588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076722, 0.383761, 0.920240,
		0.861737, -0.438730, 0.254805,
		0.501521, 0.812553, -0.297041,
		63.735409, 57.160561, 57.730476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.023628, 56.706738, 58.383854>,  <63.384346, 56.591774, 57.938404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.023628, 56.706738, 58.383854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.836891, 57.030384, 58.241081>,  <63.724850, 57.224571, 58.155418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.836891, 57.030384, 58.241081>,  <64.023628, 56.706738, 58.383854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.836891, 57.030384, 58.241081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113902, 0.345233, 0.931580,
		0.876976, 0.475554, -0.069009,
		-0.466840, 0.809112, -0.356928,
		63.696838, 57.273117, 58.134003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.088867, 57.169647, 58.932522>,  <64.023628, 56.706738, 58.383854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.088867, 57.169647, 58.932522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.816711, 57.343643, 58.696609>,  <63.653416, 57.448040, 58.555061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.816711, 57.343643, 58.696609>,  <64.088867, 57.169647, 58.932522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.816711, 57.343643, 58.696609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399062, 0.455080, 0.796022,
		0.614660, 0.776971, -0.136047,
		-0.680399, 0.434992, -0.589779,
		63.612591, 57.474140, 58.519676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.794403, 57.412727, 59.187679>,  <64.088867, 57.169647, 58.932522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.794403, 57.412727, 59.187679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.577850, 57.746937, 59.225235>,  <64.447922, 57.947460, 59.247768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.577850, 57.746937, 59.225235>,  <64.794403, 57.412727, 59.187679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.577850, 57.746937, 59.225235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005942, -0.107869, 0.994147,
		0.840757, 0.538769, 0.053433,
		-0.541379, 0.835519, 0.093893,
		64.415436, 57.997593, 59.253403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.381386, 57.284298, 58.727562>,  <64.794403, 57.412727, 59.187679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.381386, 57.284298, 58.727562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.274200, 57.163185, 58.361717>,  <65.209892, 57.090515, 58.142212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.274200, 57.163185, 58.361717>,  <65.381386, 57.284298, 58.727562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.274200, 57.163185, 58.361717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635114, 0.658331, -0.404018,
		0.724448, -0.689146, 0.015893,
		-0.267964, -0.302784, -0.914613,
		65.193810, 57.072350, 58.087334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.041534, 57.062553, 58.500340>,  <65.381386, 57.284298, 58.727562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.041534, 57.062553, 58.500340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.748322, 57.198826, 58.264847>,  <65.572395, 57.280590, 58.123550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.748322, 57.198826, 58.264847>,  <66.041534, 57.062553, 58.500340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.748322, 57.198826, 58.264847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591601, 0.746457, -0.304648,
		0.335671, -0.571608, -0.748725,
		-0.733030, 0.340685, -0.588728,
		65.528412, 57.301033, 58.088230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.716919, 56.707344, 58.210785>,  <66.041534, 57.062553, 58.500340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.716919, 56.707344, 58.210785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.718185, 56.468315, 58.531509>,  <66.718948, 56.324898, 58.723942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.718185, 56.468315, 58.531509>,  <66.716919, 56.707344, 58.210785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.718185, 56.468315, 58.531509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021138, -0.801594, -0.597495,
		0.999772, 0.018841, 0.010093,
		0.003167, -0.597572, 0.801809,
		66.719139, 56.289043, 58.772053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.332626, 56.222374, 58.244690>,  <66.716919, 56.707344, 58.210785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.332626, 56.222374, 58.244690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.013069, 56.077454, 58.436737>,  <66.821335, 55.990501, 58.551968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.013069, 56.077454, 58.436737>,  <67.332626, 56.222374, 58.244690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.013069, 56.077454, 58.436737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022685, -0.779520, -0.625967,
		0.601051, -0.510969, 0.614531,
		-0.798889, -0.362297, 0.480122,
		66.773399, 55.968765, 58.580772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.534126, 55.520763, 58.427307>,  <67.332626, 56.222374, 58.244690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.534126, 55.520763, 58.427307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.141106, 55.569096, 58.370758>,  <66.905289, 55.598095, 58.336830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.141106, 55.569096, 58.370758>,  <67.534126, 55.520763, 58.427307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.141106, 55.569096, 58.370758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020354, -0.685728, -0.727573,
		-0.184854, -0.717759, 0.671306,
		-0.982556, 0.120831, -0.141369,
		66.846336, 55.605347, 58.328346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.955048, 55.869339, 58.978577>,  <67.534126, 55.520763, 58.427307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.955048, 55.869339, 58.978577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.227180, 56.126335, 58.837517>,  <68.390457, 56.280533, 58.752880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.227180, 56.126335, 58.837517>,  <67.955048, 55.869339, 58.978577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.227180, 56.126335, 58.837517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449921, 0.745950, 0.491050,
		0.578550, -0.175413, 0.796562,
		0.680332, 0.642487, -0.352647,
		68.431282, 56.319080, 58.731724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.348015, 56.219383, 59.504673>,  <67.955048, 55.869339, 58.978577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.348015, 56.219383, 59.504673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.304794, 56.457806, 59.186417>,  <68.278862, 56.600861, 58.995464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.304794, 56.457806, 59.186417>,  <68.348015, 56.219383, 59.504673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.304794, 56.457806, 59.186417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559835, 0.624879, 0.544161,
		0.821528, 0.504228, 0.266169,
		-0.108058, 0.596054, -0.795640,
		68.272377, 56.636623, 58.947723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.690025, 57.001774, 59.572262>,  <68.348015, 56.219383, 59.504673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.690025, 57.001774, 59.572262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.356888, 56.909714, 59.370903>,  <68.157005, 56.854477, 59.250088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.356888, 56.909714, 59.370903>,  <68.690025, 57.001774, 59.572262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.356888, 56.909714, 59.370903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543356, 0.513387, 0.664227,
		0.105563, 0.826719, -0.552624,
		-0.832839, -0.230153, -0.503398,
		68.107033, 56.840668, 59.219883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.173050, 56.777302, 60.183075>,  <68.690025, 57.001774, 59.572262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.173050, 56.777302, 60.183075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.531982, 56.922272, 60.082329>,  <69.747345, 57.009254, 60.021881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.531982, 56.922272, 60.082329>,  <69.173050, 56.777302, 60.183075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.531982, 56.922272, 60.082329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409449, -0.470620, 0.781581,
		0.164730, -0.804467, -0.570699,
		0.897338, 0.362422, -0.251863,
		69.801186, 57.030998, 60.006771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.720726, 56.294830, 60.007820>,  <69.173050, 56.777302, 60.183075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.720726, 56.294830, 60.007820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.907066, 56.607437, 60.173813>,  <70.018867, 56.795002, 60.273411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.907066, 56.607437, 60.173813>,  <69.720726, 56.294830, 60.007820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.907066, 56.607437, 60.173813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094105, -0.510081, 0.854963,
		0.879845, -0.359233, -0.311166,
		0.465851, 0.781517, 0.414987,
		70.046822, 56.841892, 60.298309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.277061, 56.062115, 60.423386>,  <69.720726, 56.294830, 60.007820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.277061, 56.062115, 60.423386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.245537, 56.427940, 60.582062>,  <70.226624, 56.647434, 60.677265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.245537, 56.427940, 60.582062>,  <70.277061, 56.062115, 60.423386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.245537, 56.427940, 60.582062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015051, -0.396789, 0.917787,
		0.996776, 0.078299, 0.017505,
		-0.078807, 0.914564, 0.396688,
		70.221893, 56.702309, 60.701069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.858826, 56.226330, 60.866741>,  <70.277061, 56.062115, 60.423386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.858826, 56.226330, 60.866741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.513878, 56.397446, 60.975044>,  <70.306908, 56.500114, 61.040028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.513878, 56.397446, 60.975044>,  <70.858826, 56.226330, 60.866741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.513878, 56.397446, 60.975044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031666, -0.488183, 0.872167,
		0.505285, 0.760706, 0.407449,
		-0.862372, 0.427790, 0.270759,
		70.255165, 56.525784, 61.056271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.830032, 56.589596, 61.495895>,  <70.858826, 56.226330, 60.866741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.830032, 56.589596, 61.495895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.464455, 56.439449, 61.434174>,  <70.245110, 56.349361, 61.397141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.464455, 56.439449, 61.434174>,  <70.830032, 56.589596, 61.495895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.464455, 56.439449, 61.434174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069233, -0.518831, 0.852069,
		-0.399894, 0.768059, 0.500170,
		-0.913943, -0.375366, -0.154302,
		70.190269, 56.326839, 61.387882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.507027, 56.887150, 61.678417>,  <70.830032, 56.589596, 61.495895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.507027, 56.887150, 61.678417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.237564, 57.149876, 61.542908>,  <71.075882, 57.307510, 61.461601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.237564, 57.149876, 61.542908>,  <71.507027, 56.887150, 61.678417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.237564, 57.149876, 61.542908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690947, 0.722414, 0.026654,
		0.262243, -0.216119, -0.940490,
		-0.673663, 0.656818, -0.338775,
		71.035469, 57.346920, 61.441277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.875748, 57.154133, 61.176693>,  <71.507027, 56.887150, 61.678417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.875748, 57.154133, 61.176693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.584885, 57.403641, 61.291336>,  <71.410362, 57.553345, 61.360123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.584885, 57.403641, 61.291336>,  <71.875748, 57.154133, 61.176693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.584885, 57.403641, 61.291336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609337, 0.778790, -0.148980,
		-0.316135, 0.066306, -0.946394,
		-0.727164, 0.623771, 0.286606,
		71.366737, 57.590771, 61.377319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.486008, 57.146072, 60.677021>,  <71.875748, 57.154133, 61.176693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.486008, 57.146072, 60.677021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.630028, 57.463287, 60.480469>,  <72.716438, 57.653614, 60.362537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.630028, 57.463287, 60.480469>,  <72.486008, 57.146072, 60.677021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.630028, 57.463287, 60.480469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909658, -0.181524, 0.373592,
		0.207073, -0.581504, -0.786748,
		0.360059, 0.793033, -0.491382,
		72.738045, 57.701199, 60.333054>
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
