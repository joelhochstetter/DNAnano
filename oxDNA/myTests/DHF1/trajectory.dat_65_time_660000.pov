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
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
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
	<3.176922, 3.800930, 2.640944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.454679, 3.892960, 2.913673>,  <3.621334, 3.948177, 3.077311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.454679, 3.892960, 2.913673>,  <3.176922, 3.800930, 2.640944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.454679, 3.892960, 2.913673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482016, 0.554811, -0.678119,
		-0.534300, 0.799531, 0.274359,
		0.694395, 0.230074, 0.681822,
		3.662998, 3.961982, 3.118220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.417940, 4.409114, 2.404758>,  <3.176922, 3.800930, 2.640944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.417940, 4.409114, 2.404758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.713181, 4.294548, 2.649109>,  <3.890326, 4.225808, 2.795719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.713181, 4.294548, 2.649109>,  <3.417940, 4.409114, 2.404758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.713181, 4.294548, 2.649109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656079, 0.515878, -0.550845,
		-0.157367, 0.807363, 0.568683,
		0.738103, -0.286416, 0.610876,
		3.934613, 4.208623, 2.832372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.777477, 5.129690, 2.685575>,  <3.417940, 4.409114, 2.404758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.777477, 5.129690, 2.685575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.031933, 4.821186, 2.694370>,  <4.184607, 4.636084, 2.699648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.031933, 4.821186, 2.694370>,  <3.777477, 5.129690, 2.685575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.031933, 4.821186, 2.694370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680142, 0.547072, -0.487974,
		0.364325, 0.325376, 0.872581,
		0.636140, -0.771260, 0.021990,
		4.222775, 4.589808, 2.700967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.489408, 5.342333, 2.913980>,  <3.777477, 5.129690, 2.685575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.489408, 5.342333, 2.913980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.499431, 5.031647, 2.662239>,  <4.505444, 4.845235, 2.511195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.499431, 5.031647, 2.662239>,  <4.489408, 5.342333, 2.913980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.499431, 5.031647, 2.662239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665067, 0.482971, -0.569583,
		0.746363, -0.404290, 0.528669,
		0.025056, -0.776716, -0.629352,
		4.506947, 4.798632, 2.473433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.058140, 4.875895, 3.036411>,  <4.489408, 5.342333, 2.913980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.058140, 4.875895, 3.036411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.920693, 4.896046, 2.661308>,  <4.838225, 4.908136, 2.436246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.920693, 4.896046, 2.661308>,  <5.058140, 4.875895, 3.036411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.920693, 4.896046, 2.661308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833962, 0.475485, -0.280039,
		0.431782, -0.878280, -0.205398,
		-0.343617, 0.050378, -0.937758,
		4.817608, 4.911159, 2.379981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.582454, 4.718630, 2.512605>,  <5.058140, 4.875895, 3.036411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.582454, 4.718630, 2.512605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.303599, 4.944397, 2.335773>,  <5.136286, 5.079857, 2.229675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.303599, 4.944397, 2.335773>,  <5.582454, 4.718630, 2.512605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.303599, 4.944397, 2.335773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706072, 0.433564, -0.559897,
		-0.124346, -0.702464, -0.700772,
		-0.697137, 0.564417, -0.442078,
		5.094458, 5.113722, 2.203150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.806897, 4.740292, 1.844856>,  <5.582454, 4.718630, 2.512605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.806897, 4.740292, 1.844856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.568506, 5.061291, 1.856243>,  <5.425472, 5.253890, 1.863075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.568506, 5.061291, 1.856243>,  <5.806897, 4.740292, 1.844856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.568506, 5.061291, 1.856243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642993, 0.498156, -0.581722,
		-0.481012, -0.328387, -0.812889,
		-0.595976, 0.802497, 0.028468,
		5.389713, 5.302040, 1.864784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.796350, 4.981056, 1.194429>,  <5.806897, 4.740292, 1.844856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.796350, 4.981056, 1.194429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.672597, 5.301392, 1.399540>,  <5.598345, 5.493593, 1.522606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.672597, 5.301392, 1.399540>,  <5.796350, 4.981056, 1.194429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.672597, 5.301392, 1.399540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581981, 0.585911, -0.563921,
		-0.752051, 0.123960, -0.647343,
		-0.309382, 0.800839, 0.512777,
		5.579782, 5.541643, 1.553373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.554827, 1.500197, 0.489319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.462870, 1.791306, 0.747776>,  <1.407695, 1.965971, 0.902850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.462870, 1.791306, 0.747776>,  <1.554827, 1.500197, 0.489319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.462870, 1.791306, 0.747776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640887, -0.612852, 0.462252,
		0.732403, -0.307836, 0.607309,
		-0.229892, 0.727771, 0.646142,
		1.393902, 2.009637, 0.941619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.646296, 1.273921, 1.159732>,  <1.554827, 1.500197, 0.489319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.646296, 1.273921, 1.159732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.382004, 1.573547, 1.179062>,  <1.223428, 1.753323, 1.190660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.382004, 1.573547, 1.179062>,  <1.646296, 1.273921, 1.159732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.382004, 1.573547, 1.179062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674283, -0.620591, 0.400262,
		0.329813, 0.231880, 0.915126,
		-0.660731, 0.749066, 0.048326,
		1.183784, 1.798267, 1.193560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.493109, 1.421089, 1.881212>,  <1.646296, 1.273921, 1.159732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.493109, 1.421089, 1.881212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.192905, 1.511593, 1.632843>,  <1.012784, 1.565895, 1.483822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.192905, 1.511593, 1.632843>,  <1.493109, 1.421089, 1.881212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.192905, 1.511593, 1.632843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587557, -0.658542, 0.470212,
		-0.302512, 0.717725, 0.627182,
		-0.750508, 0.226261, -0.620922,
		0.967753, 1.579471, 1.446566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.869127, 1.390920, 2.312084>,  <1.493109, 1.421089, 1.881212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.869127, 1.390920, 2.312084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.774517, 1.294212, 1.935658>,  <0.717751, 1.236188, 1.709802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.774517, 1.294212, 1.935658>,  <0.869127, 1.390920, 2.312084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.774517, 1.294212, 1.935658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530993, -0.778955, 0.333579,
		-0.813697, 0.578598, 0.055865,
		-0.236525, -0.241768, -0.941065,
		0.703559, 1.221682, 1.653338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.188953, 1.499428, 2.388796>,  <0.869127, 1.390920, 2.312084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.188953, 1.499428, 2.388796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.291647, 1.232430, 2.109215>,  <0.353263, 1.072230, 1.941466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.291647, 1.232430, 2.109215>,  <0.188953, 1.499428, 2.388796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.291647, 1.232430, 2.109215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673243, -0.642383, 0.366181,
		-0.693420, 0.376554, -0.614309,
		0.256734, -0.667496, -0.698954,
		0.368668, 1.032181, 1.899529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.392271, 1.293735, 2.151238>,  <0.188953, 1.499428, 2.388796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.392271, 1.293735, 2.151238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.153429, 0.994839, 2.034554>,  <-0.010124, 0.815501, 1.964543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.153429, 0.994839, 2.034554>,  <-0.392271, 1.293735, 2.151238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.153429, 0.994839, 2.034554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701537, -0.662794, 0.261821,
		-0.388987, 0.048310, -0.919976,
		0.597106, -0.747242, -0.291710,
		0.025703, 0.770666, 1.947040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.879426, 0.866405, 1.705419>,  <-0.392271, 1.293735, 2.151238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.879426, 0.866405, 1.705419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.572456, 0.645622, 1.835896>,  <-0.388274, 0.513152, 1.914181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.572456, 0.645622, 1.835896>,  <-0.879426, 0.866405, 1.705419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.572456, 0.645622, 1.835896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637743, -0.709469, 0.299894,
		0.065894, -0.438173, -0.896472,
		0.767425, -0.551958, 0.326192,
		-0.342229, 0.480035, 1.933753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.998264, 0.212774, 1.432441>,  <-0.879426, 0.866405, 1.705419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.998264, 0.212774, 1.432441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.736683, 0.134094, 1.724648>,  <-0.579734, 0.086886, 1.899972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.736683, 0.134094, 1.724648>,  <-0.998264, 0.212774, 1.432441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.736683, 0.134094, 1.724648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588569, -0.738960, 0.327910,
		0.475323, -0.644397, -0.599016,
		0.653953, -0.196699, 0.730517,
		-0.540497, 0.075084, 1.943803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
