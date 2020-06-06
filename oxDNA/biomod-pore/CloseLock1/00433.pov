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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.397247, 35.275116, 35.144302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344868, 34.890732, 35.046814>,  <24.313440, 34.660099, 34.988319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344868, 34.890732, 35.046814>,  <24.397247, 35.275116, 35.144302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.344868, 34.890732, 35.046814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527542, 0.140600, -0.837814,
		0.839376, -0.238283, 0.488537,
		-0.130948, -0.960965, -0.243720,
		24.305584, 34.602444, 34.973698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.049271, 34.956379, 35.147755>,  <24.397247, 35.275116, 35.144302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.049271, 34.956379, 35.147755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757994, 34.828697, 34.905155>,  <24.583227, 34.752087, 34.759594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757994, 34.828697, 34.905155>,  <25.049271, 34.956379, 35.147755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.757994, 34.828697, 34.905155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549206, 0.257612, -0.794990,
		0.410009, -0.911998, -0.012280,
		-0.728193, -0.319209, -0.606498,
		24.539536, 34.732933, 34.723206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413586, 34.735878, 34.566376>,  <25.049271, 34.956379, 35.147755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413586, 34.735878, 34.566376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044598, 34.865520, 34.482468>,  <24.823204, 34.943306, 34.432125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044598, 34.865520, 34.482468>,  <25.413586, 34.735878, 34.566376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.044598, 34.865520, 34.482468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366302, 0.563164, -0.740722,
		-0.121938, -0.760133, -0.638223,
		-0.922471, 0.324104, -0.209768,
		24.767857, 34.962753, 34.419537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422861, 34.459213, 33.986065>,  <25.413586, 34.735878, 34.566376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422861, 34.459213, 33.986065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075249, 34.564270, 34.153782>,  <24.866682, 34.627304, 34.254414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075249, 34.564270, 34.153782>,  <25.422861, 34.459213, 33.986065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.075249, 34.564270, 34.153782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487644, -0.311469, -0.815592,
		-0.083613, -0.913239, 0.398751,
		-0.869029, 0.262642, 0.419292,
		24.814539, 34.643063, 34.279568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163630, 34.491726, 33.992428>,  <25.422861, 34.459213, 33.986065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163630, 34.491726, 33.992428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976355, 34.138302, 33.988014>,  <25.863989, 33.926247, 33.985367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976355, 34.138302, 33.988014>,  <26.163630, 34.491726, 33.992428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976355, 34.138302, 33.988014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272653, -0.132580, -0.952934,
		0.840511, -0.449160, 0.302978,
		-0.468189, -0.883560, -0.011030,
		25.835897, 33.873234, 33.984707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835110, 34.469463, 34.393841>,  <26.163630, 34.491726, 33.992428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835110, 34.469463, 34.393841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203594, 34.624146, 34.410946>,  <27.424685, 34.716957, 34.421211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203594, 34.624146, 34.410946>,  <26.835110, 34.469463, 34.393841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203594, 34.624146, 34.410946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011985, 0.081658, -0.996588,
		-0.388883, 0.918579, 0.070589,
		0.921209, 0.386710, 0.042765,
		27.479958, 34.740158, 34.423775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888981, 35.090725, 34.205208>,  <26.835110, 34.469463, 34.393841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888981, 35.090725, 34.205208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250679, 34.943096, 34.119305>,  <27.467699, 34.854519, 34.067760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250679, 34.943096, 34.119305>,  <26.888981, 35.090725, 34.205208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250679, 34.943096, 34.119305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186189, 0.111833, -0.976129,
		0.384278, 0.922648, 0.032407,
		0.904248, -0.369071, -0.214762,
		27.521954, 34.832375, 34.054874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332064, 35.620201, 33.834133>,  <26.888981, 35.090725, 34.205208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332064, 35.620201, 33.834133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486128, 35.257629, 33.764812>,  <27.578566, 35.040085, 33.723221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486128, 35.257629, 33.764812>,  <27.332064, 35.620201, 33.834133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486128, 35.257629, 33.764812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009531, 0.191690, -0.981409,
		0.922800, 0.376349, 0.082471,
		0.385161, -0.906431, -0.173305,
		27.601677, 34.985699, 33.712822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929081, 35.723373, 33.452709>,  <27.332064, 35.620201, 33.834133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929081, 35.723373, 33.452709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820433, 35.348743, 33.364120>,  <27.755243, 35.123966, 33.310966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820433, 35.348743, 33.364120>,  <27.929081, 35.723373, 33.452709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820433, 35.348743, 33.364120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039301, 0.219140, -0.974902,
		0.961602, -0.273506, -0.022715,
		-0.271620, -0.936575, -0.221474,
		27.738947, 35.067772, 33.297680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381310, 35.606018, 32.890610>,  <27.929081, 35.723373, 33.452709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381310, 35.606018, 32.890610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074591, 35.349453, 32.880718>,  <27.890560, 35.195515, 32.874783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074591, 35.349453, 32.880718>,  <28.381310, 35.606018, 32.890610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074591, 35.349453, 32.880718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066172, 0.117309, -0.990888,
		0.638469, -0.758174, -0.132395,
		-0.766797, -0.641413, -0.024728,
		27.844551, 35.157028, 32.873299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491585, 35.098583, 32.334377>,  <28.381310, 35.606018, 32.890610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491585, 35.098583, 32.334377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097506, 35.076302, 32.399223>,  <27.861057, 35.062931, 32.438129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097506, 35.076302, 32.399223>,  <28.491585, 35.098583, 32.334377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097506, 35.076302, 32.399223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166961, 0.097603, -0.981121,
		0.038831, -0.993665, -0.105459,
		-0.985199, -0.055705, 0.162113,
		27.801947, 35.059589, 32.447857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291348, 34.782341, 31.801754>,  <28.491585, 35.098583, 32.334377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291348, 34.782341, 31.801754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943672, 34.933361, 31.929483>,  <27.735067, 35.023972, 32.006123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943672, 34.933361, 31.929483>,  <28.291348, 34.782341, 31.801754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943672, 34.933361, 31.929483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249276, 0.223160, -0.942370,
		-0.427050, -0.898698, -0.099855,
		-0.869189, 0.377548, 0.319324,
		27.682915, 35.046627, 32.025280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827372, 34.636021, 31.265373>,  <28.291348, 34.782341, 31.801754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827372, 34.636021, 31.265373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660769, 34.931213, 31.477753>,  <27.560806, 35.108330, 31.605181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660769, 34.931213, 31.477753>,  <27.827372, 34.636021, 31.265373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660769, 34.931213, 31.477753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438236, 0.348710, -0.828463,
		-0.796538, -0.577739, 0.178171,
		-0.416506, 0.737983, 0.530946,
		27.535816, 35.152607, 31.637037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131746, 34.795002, 30.948797>,  <27.827372, 34.636021, 31.265373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131746, 34.795002, 30.948797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215805, 35.115711, 31.172583>,  <27.266239, 35.308136, 31.306854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215805, 35.115711, 31.172583>,  <27.131746, 34.795002, 30.948797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215805, 35.115711, 31.172583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461987, 0.585758, -0.665925,
		-0.861630, -0.118524, 0.493503,
		0.210145, 0.801773, 0.559464,
		27.278849, 35.356243, 31.340422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606403, 35.104500, 31.141312>,  <27.131746, 34.795002, 30.948797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606403, 35.104500, 31.141312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870457, 35.404491, 31.124556>,  <27.028889, 35.584488, 31.114502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870457, 35.404491, 31.124556>,  <26.606403, 35.104500, 31.141312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870457, 35.404491, 31.124556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649383, 0.541781, -0.533642,
		-0.377527, 0.379476, 0.844672,
		0.660132, 0.749981, -0.041888,
		27.068497, 35.629486, 31.111990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184866, 35.687416, 31.191193>,  <26.606403, 35.104500, 31.141312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184866, 35.687416, 31.191193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535929, 35.830772, 31.063902>,  <26.746567, 35.916786, 30.987528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535929, 35.830772, 31.063902>,  <26.184866, 35.687416, 31.191193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535929, 35.830772, 31.063902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464428, 0.799977, -0.379925,
		0.118412, 0.481239, 0.868555,
		0.877659, 0.358394, -0.318228,
		26.799227, 35.938290, 30.968433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037819, 36.402477, 31.178135>,  <26.184866, 35.687416, 31.191193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037819, 36.402477, 31.178135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362673, 36.359787, 30.948685>,  <26.557585, 36.334171, 30.811014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362673, 36.359787, 30.948685>,  <26.037819, 36.402477, 31.178135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362673, 36.359787, 30.948685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278939, 0.792485, -0.542366,
		0.512473, 0.600481, 0.613835,
		0.812135, -0.106725, -0.573625,
		26.606314, 36.327770, 30.776598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229782, 37.098339, 30.991734>,  <26.037819, 36.402477, 31.178135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229782, 37.098339, 30.991734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402187, 36.853325, 30.726696>,  <26.505630, 36.706318, 30.567673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402187, 36.853325, 30.726696>,  <26.229782, 37.098339, 30.991734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402187, 36.853325, 30.726696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181687, 0.660352, -0.728646,
		0.883864, 0.434442, 0.173332,
		0.431015, -0.612532, -0.662594,
		26.531492, 36.669563, 30.527918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706825, 37.491264, 30.659702>,  <26.229782, 37.098339, 30.991734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706825, 37.491264, 30.659702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657650, 37.199509, 30.390518>,  <26.628145, 37.024456, 30.229008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657650, 37.199509, 30.390518>,  <26.706825, 37.491264, 30.659702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657650, 37.199509, 30.390518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419779, 0.652674, -0.630716,
		0.899262, 0.204957, -0.386419,
		-0.122936, -0.729390, -0.672962,
		26.620770, 36.980690, 30.188629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991930, 37.731407, 30.063004>,  <26.706825, 37.491264, 30.659702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991930, 37.731407, 30.063004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725636, 37.451004, 29.960724>,  <26.565859, 37.282761, 29.899357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725636, 37.451004, 29.960724>,  <26.991930, 37.731407, 30.063004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725636, 37.451004, 29.960724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408448, 0.629126, -0.661340,
		0.624467, -0.335843, -0.705159,
		-0.665741, -0.701006, -0.255695,
		26.525915, 37.240700, 29.884014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987022, 37.903572, 29.421309>,  <26.991930, 37.731407, 30.063004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987022, 37.903572, 29.421309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667080, 37.668686, 29.470964>,  <26.475115, 37.527756, 29.500757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667080, 37.668686, 29.470964>,  <26.987022, 37.903572, 29.421309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667080, 37.668686, 29.470964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502864, 0.542743, -0.672724,
		0.327659, -0.600506, -0.729405,
		-0.799854, -0.587216, 0.124139,
		26.427124, 37.492519, 29.508205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732830, 37.695126, 28.758511>,  <26.987022, 37.903572, 29.421309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732830, 37.695126, 28.758511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407286, 37.633575, 28.982635>,  <26.211958, 37.596645, 29.117111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407286, 37.633575, 28.982635>,  <26.732830, 37.695126, 28.758511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407286, 37.633575, 28.982635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520149, 0.622735, -0.584506,
		-0.258985, -0.767153, -0.586859,
		-0.813862, -0.153876, 0.560312,
		26.163126, 37.587414, 29.150728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.122757, 37.472542, 28.282530>,  <26.732830, 37.695126, 28.758511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.122757, 37.472542, 28.282530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967211, 37.612942, 28.623255>,  <25.873882, 37.697182, 28.827690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967211, 37.612942, 28.623255>,  <26.122757, 37.472542, 28.282530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.967211, 37.612942, 28.623255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583676, 0.621497, -0.522556,
		-0.712815, -0.700385, -0.036808,
		-0.388866, 0.351002, 0.851810,
		25.850552, 37.718243, 28.878798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349005, 37.511684, 28.151993>,  <26.122757, 37.472542, 28.282530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349005, 37.511684, 28.151993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404646, 37.743862, 28.472923>,  <25.438030, 37.883171, 28.665482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404646, 37.743862, 28.472923>,  <25.349005, 37.511684, 28.151993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404646, 37.743862, 28.472923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511272, 0.735966, -0.443796,
		-0.848087, -0.348473, 0.399143,
		0.139105, 0.580448, 0.802328,
		25.446377, 37.917995, 28.713621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.706192, 37.651844, 28.481300>,  <25.349005, 37.511684, 28.151993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.706192, 37.651844, 28.481300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.953098, 37.945965, 28.593239>,  <25.101242, 38.122437, 28.660402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.953098, 37.945965, 28.593239>,  <24.706192, 37.651844, 28.481300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.953098, 37.945965, 28.593239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627328, 0.674661, -0.388963,
		-0.474806, 0.064539, 0.877721,
		0.617268, 0.735301, 0.279846,
		25.138279, 38.166553, 28.677193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.344925, 38.113010, 28.939804>,  <24.706192, 37.651844, 28.481300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.344925, 38.113010, 28.939804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.633095, 38.313507, 28.748079>,  <24.805996, 38.433807, 28.633043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.633095, 38.313507, 28.748079>,  <24.344925, 38.113010, 28.939804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.633095, 38.313507, 28.748079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664434, 0.696928, -0.269851,
		0.198786, 0.512879, 0.835128,
		0.720425, 0.501245, -0.479314,
		24.849222, 38.463882, 28.604286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.286327, 38.818100, 29.066891>,  <24.344925, 38.113010, 28.939804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.286327, 38.818100, 29.066891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532389, 38.867733, 28.755457>,  <24.680025, 38.897514, 28.568598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532389, 38.867733, 28.755457>,  <24.286327, 38.818100, 29.066891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532389, 38.867733, 28.755457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543141, 0.782511, -0.304425,
		0.571476, 0.610148, 0.548757,
		0.615153, 0.124082, -0.778583,
		24.716934, 38.904957, 28.521883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.422100, 39.463833, 28.985243>,  <24.286327, 38.818100, 29.066891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.422100, 39.463833, 28.985243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487295, 39.315079, 28.619699>,  <24.526413, 39.225826, 28.400373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487295, 39.315079, 28.619699>,  <24.422100, 39.463833, 28.985243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487295, 39.315079, 28.619699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481795, 0.778297, -0.402649,
		0.860992, 0.505920, -0.052319,
		0.162989, -0.371885, -0.913858,
		24.536192, 39.203514, 28.345543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.464567, 39.911976, 28.405222>,  <24.422100, 39.463833, 28.985243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.464567, 39.911976, 28.405222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392885, 39.589882, 28.179132>,  <24.349876, 39.396626, 28.043480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392885, 39.589882, 28.179132>,  <24.464567, 39.911976, 28.405222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392885, 39.589882, 28.179132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521590, 0.564895, -0.639403,
		0.834164, 0.180231, -0.521236,
		-0.179204, -0.805239, -0.565222,
		24.339125, 39.348309, 28.009565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.566008, 39.941399, 27.570446>,  <24.464567, 39.911976, 28.405222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.566008, 39.941399, 27.570446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.268616, 39.695141, 27.674923>,  <24.090181, 39.547386, 27.737610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.268616, 39.695141, 27.674923>,  <24.566008, 39.941399, 27.570446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.268616, 39.695141, 27.674923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601899, 0.445781, -0.662568,
		0.291469, -0.649818, -0.701984,
		-0.743480, -0.615642, 0.261194,
		24.045572, 39.510448, 27.753281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.325796, 40.508224, 27.912510>,  <24.566008, 39.941399, 27.570446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.325796, 40.508224, 27.912510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207306, 40.889969, 27.927687>,  <24.136211, 41.119015, 27.936792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207306, 40.889969, 27.927687>,  <24.325796, 40.508224, 27.912510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.207306, 40.889969, 27.927687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320080, 0.061768, 0.945375,
		0.899888, 0.292188, -0.323770,
		-0.296226, 0.954364, 0.037940,
		24.118439, 41.176277, 27.939068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906567, 40.920631, 28.085947>,  <24.325796, 40.508224, 27.912510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.906567, 40.920631, 28.085947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.620955, 41.166580, 28.219868>,  <24.449587, 41.314148, 28.300220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.620955, 41.166580, 28.219868>,  <24.906567, 40.920631, 28.085947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.620955, 41.166580, 28.219868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444808, 0.029128, 0.895152,
		0.540652, 0.788089, -0.294298,
		-0.714031, 0.614872, 0.334800,
		24.406746, 41.351044, 28.320309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078037, 40.884232, 28.823246>,  <24.906567, 40.920631, 28.085947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078037, 40.884232, 28.823246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266422, 40.921329, 28.472340>,  <25.379454, 40.943588, 28.261797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266422, 40.921329, 28.472340>,  <25.078037, 40.884232, 28.823246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.266422, 40.921329, 28.472340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126673, 0.991262, 0.036790,
		0.873011, 0.093799, 0.478596,
		0.470964, 0.092743, -0.877264,
		25.407711, 40.949154, 28.209160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633947, 41.378338, 29.033590>,  <25.078037, 40.884232, 28.823246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633947, 41.378338, 29.033590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621775, 41.733585, 29.217033>,  <25.614471, 41.946735, 29.327099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621775, 41.733585, 29.217033>,  <25.633947, 41.378338, 29.033590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621775, 41.733585, 29.217033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506380, -0.381882, 0.773140,
		0.861773, 0.255756, -0.438105,
		-0.030430, 0.888119, 0.458606,
		25.612646, 42.000023, 29.354614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320742, 41.708191, 29.163097>,  <25.633947, 41.378338, 29.033590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320742, 41.708191, 29.163097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065414, 41.793602, 29.458923>,  <25.912218, 41.844849, 29.636419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065414, 41.793602, 29.458923>,  <26.320742, 41.708191, 29.163097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065414, 41.793602, 29.458923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638468, -0.389836, 0.663616,
		0.430012, 0.895786, 0.112505,
		-0.638317, 0.213532, 0.739565,
		25.873919, 41.857662, 29.680792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704710, 41.924904, 29.699265>,  <26.320742, 41.708191, 29.163097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704710, 41.924904, 29.699265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365032, 41.811993, 29.877787>,  <26.161224, 41.744247, 29.984900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365032, 41.811993, 29.877787>,  <26.704710, 41.924904, 29.699265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365032, 41.811993, 29.877787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525327, -0.537695, 0.659481,
		0.053821, 0.794484, 0.604895,
		-0.849197, -0.282273, 0.446303,
		26.110273, 41.727310, 30.011677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747900, 42.065174, 30.461355>,  <26.704710, 41.924904, 29.699265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747900, 42.065174, 30.461355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496189, 41.759087, 30.407026>,  <26.345161, 41.575436, 30.374430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496189, 41.759087, 30.407026>,  <26.747900, 42.065174, 30.461355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496189, 41.759087, 30.407026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599241, -0.589020, 0.542185,
		-0.494893, 0.259795, 0.829209,
		-0.629278, -0.765220, -0.135822,
		26.307405, 41.529522, 30.366280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656822, 41.850666, 31.128658>,  <26.747900, 42.065174, 30.461355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656822, 41.850666, 31.128658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576845, 41.578869, 30.846292>,  <26.528858, 41.415791, 30.676872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576845, 41.578869, 30.846292>,  <26.656822, 41.850666, 31.128658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576845, 41.578869, 30.846292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713260, -0.594903, 0.370608,
		-0.671776, -0.429401, 0.603599,
		-0.199944, -0.679489, -0.705916,
		26.516863, 41.375023, 30.634518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635313, 41.233883, 31.420149>,  <26.656822, 41.850666, 31.128658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635313, 41.233883, 31.420149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678753, 41.089096, 31.049812>,  <26.704817, 41.002224, 30.827610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678753, 41.089096, 31.049812>,  <26.635313, 41.233883, 31.420149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678753, 41.089096, 31.049812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597802, -0.720350, 0.351750,
		-0.794254, -0.591671, 0.138155,
		0.108600, -0.361968, -0.925843,
		26.711332, 40.980507, 30.772060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514454, 40.517941, 31.481920>,  <26.635313, 41.233883, 31.420149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514454, 40.517941, 31.481920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713884, 40.560329, 31.137783>,  <26.833542, 40.585762, 30.931301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713884, 40.560329, 31.137783>,  <26.514454, 40.517941, 31.481920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713884, 40.560329, 31.137783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602587, -0.755844, 0.256102,
		-0.623146, -0.646118, -0.440705,
		0.498576, 0.105974, -0.860344,
		26.863457, 40.592121, 30.879681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651793, 39.838104, 31.297256>,  <26.514454, 40.517941, 31.481920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651793, 39.838104, 31.297256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895889, 40.039944, 31.052965>,  <27.042347, 40.161049, 30.906391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895889, 40.039944, 31.052965>,  <26.651793, 39.838104, 31.297256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895889, 40.039944, 31.052965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722297, -0.671045, 0.167288,
		-0.325412, -0.543213, -0.773968,
		0.610241, 0.504597, -0.610727,
		27.078962, 40.191322, 30.869747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775587, 39.347172, 30.786058>,  <26.651793, 39.838104, 31.297256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775587, 39.347172, 30.786058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088573, 39.594307, 30.755007>,  <27.276365, 39.742588, 30.736376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088573, 39.594307, 30.755007>,  <26.775587, 39.347172, 30.786058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088573, 39.594307, 30.755007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617549, -0.753958, 0.224009,
		0.079872, -0.223220, -0.971490,
		0.782467, 0.617835, -0.077629,
		27.323313, 39.779659, 30.731718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243414, 38.987740, 30.399216>,  <26.775587, 39.347172, 30.786058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243414, 38.987740, 30.399216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453907, 39.250343, 30.615393>,  <27.580204, 39.407906, 30.745098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453907, 39.250343, 30.615393>,  <27.243414, 38.987740, 30.399216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453907, 39.250343, 30.615393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611770, -0.733724, 0.295612,
		0.590606, 0.175065, -0.787742,
		0.526234, 0.656507, 0.540442,
		27.611776, 39.447296, 30.777525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990845, 39.034458, 30.164806>,  <27.243414, 38.987740, 30.399216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990845, 39.034458, 30.164806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954636, 39.131462, 30.551174>,  <27.932909, 39.189663, 30.782995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954636, 39.131462, 30.551174>,  <27.990845, 39.034458, 30.164806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954636, 39.131462, 30.551174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715028, -0.659290, 0.232534,
		0.693210, 0.711708, -0.113716,
		-0.090524, 0.242505, 0.965917,
		27.927479, 39.204212, 30.840950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689760, 39.204208, 30.426468>,  <27.990845, 39.034458, 30.164806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689760, 39.204208, 30.426468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477116, 39.098015, 30.748190>,  <28.349529, 39.034298, 30.941223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477116, 39.098015, 30.748190>,  <28.689760, 39.204208, 30.426468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477116, 39.098015, 30.748190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774523, -0.536694, 0.334773,
		0.342787, 0.800922, 0.490939,
		-0.531611, -0.265488, 0.804305,
		28.317633, 39.018368, 30.989481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181852, 39.007362, 30.868204>,  <28.689760, 39.204208, 30.426468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181852, 39.007362, 30.868204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849279, 38.919270, 31.072250>,  <28.649734, 38.866413, 31.194677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849279, 38.919270, 31.072250>,  <29.181852, 39.007362, 30.868204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849279, 38.919270, 31.072250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501268, -0.693353, 0.517679,
		0.239682, 0.686120, 0.686871,
		-0.831434, -0.220228, 0.510114,
		28.599850, 38.853203, 31.225285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409746, 38.998856, 31.610226>,  <29.181852, 39.007362, 30.868204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409746, 38.998856, 31.610226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083250, 38.774609, 31.554419>,  <28.887352, 38.640060, 31.520935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083250, 38.774609, 31.554419>,  <29.409746, 38.998856, 31.610226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083250, 38.774609, 31.554419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442386, -0.761853, 0.473155,
		-0.371548, 0.324488, 0.869862,
		-0.816240, -0.560614, -0.139516,
		28.838379, 38.606426, 31.512564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287954, 38.599136, 32.273476>,  <29.409746, 38.998856, 31.610226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287954, 38.599136, 32.273476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029720, 38.394176, 32.046967>,  <28.874779, 38.271202, 31.911060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029720, 38.394176, 32.046967>,  <29.287954, 38.599136, 32.273476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029720, 38.394176, 32.046967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313228, -0.853923, 0.415577,
		-0.696496, 0.090917, 0.711778,
		-0.645586, -0.512396, -0.566276,
		28.836044, 38.240459, 31.877083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744699, 38.185452, 32.677326>,  <29.287954, 38.599136, 32.273476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744699, 38.185452, 32.677326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740398, 37.984543, 32.331470>,  <28.737818, 37.863998, 32.123955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740398, 37.984543, 32.331470>,  <28.744699, 38.185452, 32.677326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740398, 37.984543, 32.331470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212009, -0.846179, 0.488911,
		-0.977209, -0.178055, 0.115585,
		-0.010752, -0.502273, -0.864642,
		28.737173, 37.833862, 32.072079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520973, 37.495079, 32.833191>,  <28.744699, 38.185452, 32.677326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520973, 37.495079, 32.833191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668236, 37.452106, 32.463776>,  <28.756594, 37.426323, 32.242126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668236, 37.452106, 32.463776>,  <28.520973, 37.495079, 32.833191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668236, 37.452106, 32.463776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409903, -0.872805, 0.264935,
		-0.834530, -0.476097, -0.277290,
		0.368155, -0.107434, -0.923536,
		28.778683, 37.419876, 32.186714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502344, 36.725574, 32.728271>,  <28.520973, 37.495079, 32.833191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502344, 36.725574, 32.728271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768278, 36.889587, 32.478516>,  <28.927839, 36.987995, 32.328659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768278, 36.889587, 32.478516>,  <28.502344, 36.725574, 32.728271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768278, 36.889587, 32.478516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603870, -0.787039, 0.126141,
		-0.439701, -0.460915, -0.770857,
		0.664834, 0.410033, -0.624395,
		28.967728, 37.012596, 32.291199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596724, 36.260910, 32.218464>,  <28.502344, 36.725574, 32.728271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596724, 36.260910, 32.218464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906143, 36.509014, 32.270451>,  <29.091795, 36.657879, 32.301643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906143, 36.509014, 32.270451>,  <28.596724, 36.260910, 32.218464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906143, 36.509014, 32.270451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571495, -0.771385, 0.279926,
		0.273883, -0.142261, -0.951183,
		0.773551, 0.620264, 0.129968,
		29.138208, 36.695095, 32.309441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067936, 35.916008, 31.941360>,  <28.596724, 36.260910, 32.218464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067936, 35.916008, 31.941360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236183, 36.190033, 32.179276>,  <29.337132, 36.354446, 32.322025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236183, 36.190033, 32.179276>,  <29.067936, 35.916008, 31.941360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236183, 36.190033, 32.179276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610729, -0.698614, 0.372757,
		0.670888, 0.206466, -0.712237,
		0.420617, 0.685062, 0.594787,
		29.362368, 36.395550, 32.357712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790045, 35.798321, 31.870764>,  <29.067936, 35.916008, 31.941360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790045, 35.798321, 31.870764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750225, 36.008545, 32.208729>,  <29.726334, 36.134678, 32.411507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750225, 36.008545, 32.208729>,  <29.790045, 35.798321, 31.870764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750225, 36.008545, 32.208729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628976, -0.624733, 0.462707,
		0.771025, 0.577494, -0.268369,
		-0.099551, 0.525556, 0.844914,
		29.720360, 36.166210, 32.462204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458839, 35.786446, 32.253445>,  <29.790045, 35.798321, 31.870764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458839, 35.786446, 32.253445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201517, 35.864548, 32.549561>,  <30.047125, 35.911411, 32.727230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201517, 35.864548, 32.549561>,  <30.458839, 35.786446, 32.253445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201517, 35.864548, 32.549561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550987, -0.553284, 0.624732,
		0.531576, 0.809785, 0.248345,
		-0.643304, 0.195257, 0.740294,
		30.008526, 35.923126, 32.771648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863033, 35.967609, 32.701664>,  <30.458839, 35.786446, 32.253445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863033, 35.967609, 32.701664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529766, 35.891888, 32.909508>,  <30.329805, 35.846455, 33.034214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529766, 35.891888, 32.909508>,  <30.863033, 35.967609, 32.701664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529766, 35.891888, 32.909508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511091, -0.622449, 0.592742,
		0.211221, 0.759421, 0.615357,
		-0.833170, -0.189304, 0.519608,
		30.279816, 35.835098, 33.065392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960903, 36.097240, 33.430950>,  <30.863033, 35.967609, 32.701664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960903, 36.097240, 33.430950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656326, 35.838730, 33.410831>,  <30.473579, 35.683624, 33.398762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656326, 35.838730, 33.410831>,  <30.960903, 36.097240, 33.430950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656326, 35.838730, 33.410831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459055, -0.592384, 0.662080,
		-0.457681, 0.481048, 0.747744,
		-0.761444, -0.646277, -0.050296,
		30.427893, 35.644848, 33.395744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893126, 35.692974, 34.030094>,  <30.960903, 36.097240, 33.430950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893126, 35.692974, 34.030094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704201, 35.433136, 33.791786>,  <30.590845, 35.277233, 33.648800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704201, 35.433136, 33.791786>,  <30.893126, 35.692974, 34.030094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704201, 35.433136, 33.791786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304838, -0.754586, 0.581096,
		-0.827039, 0.092847, 0.554424,
		-0.472314, -0.649599, -0.595769,
		30.562506, 35.238255, 33.613056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553286, 36.000568, 34.630871>,  <30.893126, 35.692974, 34.030094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553286, 36.000568, 34.630871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866405, 36.214752, 34.757683>,  <31.054277, 36.343262, 34.833771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866405, 36.214752, 34.757683>,  <30.553286, 36.000568, 34.630871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866405, 36.214752, 34.757683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338019, -0.061855, 0.939104,
		0.522460, -0.842294, 0.132575,
		0.782802, 0.535458, 0.317028,
		31.101246, 36.375389, 34.852791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982130, 35.717857, 35.125542>,  <30.553286, 36.000568, 34.630871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982130, 35.717857, 35.125542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998377, 36.114914, 35.171177>,  <31.008125, 36.353149, 35.198559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998377, 36.114914, 35.171177>,  <30.982130, 35.717857, 35.125542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998377, 36.114914, 35.171177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191472, -0.104332, 0.975937,
		0.980657, -0.061484, 0.185825,
		0.040617, 0.992640, 0.114086,
		31.010561, 36.412704, 35.205402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451178, 35.819221, 35.559185>,  <30.982130, 35.717857, 35.125542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451178, 35.819221, 35.559185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205841, 36.129765, 35.617264>,  <31.058640, 36.316090, 35.652111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205841, 36.129765, 35.617264>,  <31.451178, 35.819221, 35.559185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205841, 36.129765, 35.617264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075541, -0.240655, 0.967667,
		0.786197, 0.582542, 0.206250,
		-0.613341, 0.776357, 0.145196,
		31.021839, 36.362671, 35.660824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591661, 36.040833, 36.248108>,  <31.451178, 35.819221, 35.559185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591661, 36.040833, 36.248108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243315, 36.218674, 36.164280>,  <31.034307, 36.325378, 36.113983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243315, 36.218674, 36.164280>,  <31.591661, 36.040833, 36.248108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243315, 36.218674, 36.164280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086704, 0.280731, 0.955862,
		0.483816, 0.850597, -0.205929,
		-0.870865, 0.444606, -0.209572,
		30.982056, 36.352055, 36.101410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674318, 36.676559, 36.322178>,  <31.591661, 36.040833, 36.248108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674318, 36.676559, 36.322178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292387, 36.582523, 36.394878>,  <31.063229, 36.526104, 36.438499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292387, 36.582523, 36.394878>,  <31.674318, 36.676559, 36.322178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292387, 36.582523, 36.394878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120647, 0.252272, 0.960106,
		-0.271559, 0.938666, -0.212514,
		-0.954830, -0.235086, 0.181754,
		31.005938, 36.511997, 36.449406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356554, 37.165428, 36.643913>,  <31.674318, 36.676559, 36.322178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356554, 37.165428, 36.643913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169971, 36.828270, 36.751202>,  <31.058022, 36.625973, 36.815575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169971, 36.828270, 36.751202>,  <31.356554, 37.165428, 36.643913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169971, 36.828270, 36.751202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233031, 0.175420, 0.956517,
		-0.853297, 0.508677, 0.114596,
		-0.466455, -0.842897, 0.268223,
		31.030035, 36.575401, 36.831669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086658, 37.365620, 37.300777>,  <31.356554, 37.165428, 36.643913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086658, 37.365620, 37.300777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065527, 36.967453, 37.268890>,  <31.052849, 36.728554, 37.249756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065527, 36.967453, 37.268890>,  <31.086658, 37.365620, 37.300777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065527, 36.967453, 37.268890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117461, -0.085474, 0.989392,
		-0.991671, 0.042903, 0.121438,
		-0.052828, -0.995416, -0.079722,
		31.049679, 36.668827, 37.244972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561436, 37.183155, 37.746479>,  <31.086658, 37.365620, 37.300777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561436, 37.183155, 37.746479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818661, 36.881721, 37.691956>,  <30.972996, 36.700863, 37.659241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818661, 36.881721, 37.691956>,  <30.561436, 37.183155, 37.746479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818661, 36.881721, 37.691956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135511, -0.063206, 0.988758,
		-0.753728, -0.654305, 0.061474,
		0.643064, -0.753585, -0.136306,
		31.011580, 36.655647, 37.651062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401730, 36.730618, 38.336430>,  <30.561436, 37.183155, 37.746479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401730, 36.730618, 38.336430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769014, 36.647182, 38.201740>,  <30.989386, 36.597122, 38.120926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769014, 36.647182, 38.201740>,  <30.401730, 36.730618, 38.336430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769014, 36.647182, 38.201740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354631, 0.054268, 0.933430,
		-0.176426, -0.976498, 0.123800,
		0.918211, -0.208584, -0.336722,
		31.044477, 36.584606, 38.100723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523729, 36.321236, 38.859623>,  <30.401730, 36.730618, 38.336430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523729, 36.321236, 38.859623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883028, 36.409828, 38.707783>,  <31.098608, 36.462986, 38.616680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883028, 36.409828, 38.707783>,  <30.523729, 36.321236, 38.859623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883028, 36.409828, 38.707783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352357, 0.153289, 0.923227,
		0.262667, -0.963041, 0.059651,
		0.898248, 0.221483, -0.379598,
		31.152502, 36.476273, 38.593903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041529, 35.916229, 39.186394>,  <30.523729, 36.321236, 38.859623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041529, 35.916229, 39.186394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241945, 36.235531, 39.052677>,  <31.362194, 36.427113, 38.972446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241945, 36.235531, 39.052677>,  <31.041529, 35.916229, 39.186394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241945, 36.235531, 39.052677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484391, 0.061430, 0.872692,
		0.717165, -0.599182, -0.355888,
		0.501039, 0.798253, -0.334294,
		31.392258, 36.475006, 38.952389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715328, 35.691063, 39.217484>,  <31.041529, 35.916229, 39.186394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715328, 35.691063, 39.217484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720097, 36.091003, 39.222496>,  <31.722958, 36.330967, 39.225506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720097, 36.091003, 39.222496>,  <31.715328, 35.691063, 39.217484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720097, 36.091003, 39.222496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394979, -0.016225, 0.918547,
		0.918613, -0.005998, -0.395113,
		0.011920, 0.999850, 0.012535,
		31.723673, 36.390957, 39.226257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389423, 35.901482, 39.469685>,  <31.715328, 35.691063, 39.217484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389423, 35.901482, 39.469685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178432, 36.239014, 39.509136>,  <32.051838, 36.441532, 39.532806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178432, 36.239014, 39.509136>,  <32.389423, 35.901482, 39.469685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178432, 36.239014, 39.509136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262984, 0.051781, 0.963410,
		0.807842, 0.534113, -0.249226,
		-0.527475, 0.843826, 0.098633,
		32.020191, 36.492161, 39.538727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937729, 36.402569, 39.750511>,  <32.389423, 35.901482, 39.469685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937729, 36.402569, 39.750511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569157, 36.540363, 39.822388>,  <32.348011, 36.623039, 39.865513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569157, 36.540363, 39.822388>,  <32.937729, 36.402569, 39.750511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569157, 36.540363, 39.822388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280288, 0.269074, 0.921433,
		0.269074, 0.899403, -0.344490,
		-0.921433, 0.344490, 0.179691,
		32.292728, 36.643711, 39.876293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947704, 36.990498, 40.132446>,  <32.937729, 36.402569, 39.750511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947704, 36.990498, 40.132446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567783, 36.874939, 40.180485>,  <32.339832, 36.805603, 40.209309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567783, 36.874939, 40.180485>,  <32.947704, 36.990498, 40.132446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567783, 36.874939, 40.180485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048627, 0.242874, 0.968838,
		-0.309058, 0.926041, -0.216634,
		-0.949799, -0.288893, 0.120093,
		32.282845, 36.788273, 40.216511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578121, 37.501873, 40.449730>,  <32.947704, 36.990498, 40.132446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578121, 37.501873, 40.449730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383331, 37.162579, 40.533009>,  <32.266457, 36.959000, 40.582977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383331, 37.162579, 40.533009>,  <32.578121, 37.501873, 40.449730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383331, 37.162579, 40.533009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060091, 0.205272, 0.976859,
		-0.871346, 0.488218, -0.048991,
		-0.486976, -0.848238, 0.208200,
		32.237240, 36.908108, 40.595470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096859, 37.691654, 40.999924>,  <32.578121, 37.501873, 40.449730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096859, 37.691654, 40.999924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114891, 37.292984, 41.027065>,  <32.125710, 37.053783, 41.043350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114891, 37.292984, 41.027065>,  <32.096859, 37.691654, 40.999924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114891, 37.292984, 41.027065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149417, 0.073882, 0.986010,
		-0.987746, -0.034311, 0.152251,
		0.045079, -0.996677, 0.067850,
		32.128414, 36.993980, 41.047421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735075, 37.445511, 41.659161>,  <32.096859, 37.691654, 40.999924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735075, 37.445511, 41.659161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983398, 37.148026, 41.559978>,  <32.132393, 36.969532, 41.500469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983398, 37.148026, 41.559978>,  <31.735075, 37.445511, 41.659161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983398, 37.148026, 41.559978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257406, -0.105379, 0.960540,
		-0.740498, -0.660138, 0.126017,
		0.620810, -0.743716, -0.247957,
		32.169640, 36.924911, 41.485592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520929, 36.944168, 42.136490>,  <31.735075, 37.445511, 41.659161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520929, 36.944168, 42.136490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880671, 36.837303, 41.998047>,  <32.096516, 36.773186, 41.914982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880671, 36.837303, 41.998047>,  <31.520929, 36.944168, 42.136490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880671, 36.837303, 41.998047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275389, -0.268702, 0.923017,
		-0.339597, -0.925431, -0.168083,
		0.899352, -0.267165, -0.346104,
		32.150478, 36.757153, 41.894215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634687, 36.159344, 42.082462>,  <31.520929, 36.944168, 42.136490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634687, 36.159344, 42.082462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003544, 36.309563, 42.119606>,  <32.224857, 36.399693, 42.141891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003544, 36.309563, 42.119606>,  <31.634687, 36.159344, 42.082462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003544, 36.309563, 42.119606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114141, -0.493469, 0.862242,
		0.369632, -0.784510, -0.497913,
		0.922141, 0.375544, 0.092857,
		32.280186, 36.422226, 42.147465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804565, 35.756767, 42.548321>,  <31.634687, 36.159344, 42.082462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804565, 35.756767, 42.548321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129894, 35.989460, 42.544472>,  <32.325092, 36.129074, 42.542164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129894, 35.989460, 42.544472>,  <31.804565, 35.756767, 42.548321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129894, 35.989460, 42.544472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226069, -0.300745, 0.926523,
		0.536094, -0.755739, -0.376115,
		0.813324, 0.581731, -0.009622,
		32.373890, 36.163979, 42.541584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347057, 35.305649, 42.643478>,  <31.804565, 35.756767, 42.548321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347057, 35.305649, 42.643478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468910, 35.665974, 42.767239>,  <32.542023, 35.882172, 42.841496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468910, 35.665974, 42.767239>,  <32.347057, 35.305649, 42.643478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468910, 35.665974, 42.767239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186932, -0.375068, 0.907954,
		0.933947, -0.218753, -0.282648,
		0.304630, 0.900817, 0.309402,
		32.560299, 35.936218, 42.860058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893700, 35.140198, 43.038406>,  <32.347057, 35.305649, 42.643478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893700, 35.140198, 43.038406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801373, 35.519947, 43.123650>,  <32.745975, 35.747795, 43.174793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801373, 35.519947, 43.123650>,  <32.893700, 35.140198, 43.038406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801373, 35.519947, 43.123650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062360, -0.204134, 0.976955,
		0.970996, 0.238789, -0.012085,
		-0.230819, 0.949373, 0.213104,
		32.732128, 35.804760, 43.187580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490944, 35.323883, 43.392570>,  <32.893700, 35.140198, 43.038406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490944, 35.323883, 43.392570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180275, 35.548977, 43.505791>,  <32.993874, 35.684032, 43.573723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180275, 35.548977, 43.505791>,  <33.490944, 35.323883, 43.392570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180275, 35.548977, 43.505791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133004, -0.292712, 0.946905,
		0.615704, 0.773080, 0.152495,
		-0.776671, 0.562731, 0.283047,
		32.947273, 35.717796, 43.590706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681213, 35.770542, 43.893227>,  <33.490944, 35.323883, 43.392570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681213, 35.770542, 43.893227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288113, 35.741169, 43.961124>,  <33.052254, 35.723545, 44.001862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288113, 35.741169, 43.961124>,  <33.681213, 35.770542, 43.893227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288113, 35.741169, 43.961124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176946, -0.106308, 0.978463,
		-0.053810, 0.991618, 0.117468,
		-0.982749, -0.073437, 0.169742,
		32.993290, 35.719139, 44.012047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532410, 36.247936, 44.435017>,  <33.681213, 35.770542, 43.893227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532410, 36.247936, 44.435017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199802, 36.026775, 44.456493>,  <33.000240, 35.894077, 44.469379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199802, 36.026775, 44.456493>,  <33.532410, 36.247936, 44.435017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199802, 36.026775, 44.456493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198549, -0.205535, 0.958297,
		-0.518808, 0.807499, 0.280683,
		-0.831514, -0.552902, 0.053695,
		32.950348, 35.860905, 44.472603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150864, 36.404003, 45.013214>,  <33.532410, 36.247936, 44.435017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150864, 36.404003, 45.013214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994968, 36.044872, 44.931236>,  <32.901432, 35.829391, 44.882050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994968, 36.044872, 44.931236>,  <33.150864, 36.404003, 45.013214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994968, 36.044872, 44.931236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030170, -0.234867, 0.971559,
		-0.920430, 0.372473, 0.118625,
		-0.389740, -0.897831, -0.204941,
		32.878048, 35.775524, 44.869755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653782, 36.252651, 45.476349>,  <33.150864, 36.404003, 45.013214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653782, 36.252651, 45.476349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735020, 35.883842, 45.344509>,  <32.783764, 35.662560, 45.265408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735020, 35.883842, 45.344509>,  <32.653782, 36.252651, 45.476349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735020, 35.883842, 45.344509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031213, -0.342537, 0.938985,
		-0.978661, -0.180419, -0.098348,
		0.203099, -0.922018, -0.329596,
		32.795948, 35.607239, 45.245628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225071, 35.812267, 45.981201>,  <32.653782, 36.252651, 45.476349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225071, 35.812267, 45.981201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501026, 35.584290, 45.802666>,  <32.666599, 35.447502, 45.695545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501026, 35.584290, 45.802666>,  <32.225071, 35.812267, 45.981201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501026, 35.584290, 45.802666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108700, -0.528015, 0.842249,
		-0.715707, -0.629576, -0.302319,
		0.689889, -0.569942, -0.446339,
		32.707993, 35.413307, 45.668762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989799, 35.127666, 46.151413>,  <32.225071, 35.812267, 45.981201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989799, 35.127666, 46.151413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377117, 35.112213, 46.052692>,  <32.609509, 35.102940, 45.993462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377117, 35.112213, 46.052692>,  <31.989799, 35.127666, 46.151413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377117, 35.112213, 46.052692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205445, -0.438862, 0.874753,
		-0.142109, -0.897723, -0.417011,
		0.968296, -0.038638, -0.246799,
		32.667606, 35.100620, 45.978653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177479, 34.453506, 46.359756>,  <31.989799, 35.127666, 46.151413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177479, 34.453506, 46.359756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520691, 34.658920, 46.363155>,  <32.726616, 34.782169, 46.365196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520691, 34.658920, 46.363155>,  <32.177479, 34.453506, 46.359756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520691, 34.658920, 46.363155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264798, -0.456488, 0.849411,
		0.440082, -0.726568, -0.527662,
		0.858027, 0.513534, 0.008498,
		32.778099, 34.812981, 46.365704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658764, 34.031727, 46.463993>,  <32.177479, 34.453506, 46.359756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658764, 34.031727, 46.463993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809944, 34.385933, 46.572079>,  <32.900654, 34.598457, 46.636929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809944, 34.385933, 46.572079>,  <32.658764, 34.031727, 46.463993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809944, 34.385933, 46.572079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259537, -0.381500, 0.887186,
		0.888703, -0.265183, -0.374013,
		0.377952, 0.885515, 0.270216,
		32.923328, 34.651588, 46.653145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390293, 33.829197, 46.687454>,  <32.658764, 34.031727, 46.463993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390293, 33.829197, 46.687454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308067, 34.180584, 46.859982>,  <33.258732, 34.391415, 46.963497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308067, 34.180584, 46.859982>,  <33.390293, 33.829197, 46.687454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308067, 34.180584, 46.859982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206462, -0.391886, 0.896548,
		0.956616, 0.273354, -0.100811,
		-0.205569, 0.878466, 0.431321,
		33.246395, 34.444122, 46.989380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997551, 34.006954, 47.094715>,  <33.390293, 33.829197, 46.687454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997551, 34.006954, 47.094715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694332, 34.225681, 47.236897>,  <33.512402, 34.356918, 47.322205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694332, 34.225681, 47.236897>,  <33.997551, 34.006954, 47.094715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694332, 34.225681, 47.236897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357941, -0.106786, 0.927618,
		0.545195, 0.830414, -0.114779,
		-0.758051, 0.546817, 0.355458,
		33.466915, 34.389725, 47.343533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242405, 34.500690, 47.508793>,  <33.997551, 34.006954, 47.094715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242405, 34.500690, 47.508793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865093, 34.492249, 47.641327>,  <33.638706, 34.487183, 47.720848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865093, 34.492249, 47.641327>,  <34.242405, 34.500690, 47.508793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865093, 34.492249, 47.641327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331666, -0.014952, 0.943278,
		-0.014952, 0.999665, 0.021102,
		-0.943278, -0.021102, 0.331331,
		33.582111, 34.485916, 47.740726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219814, 34.969219, 48.053795>,  <34.242405, 34.500690, 47.508793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219814, 34.969219, 48.053795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889778, 34.764603, 48.149757>,  <33.691757, 34.641834, 48.207336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889778, 34.764603, 48.149757>,  <34.219814, 34.969219, 48.053795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889778, 34.764603, 48.149757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248962, 0.052011, 0.967116,
		-0.507195, 0.857684, 0.084441,
		-0.825088, -0.511539, 0.239911,
		33.642250, 34.611141, 48.221729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788216, 35.322247, 48.733974>,  <34.219814, 34.969219, 48.053795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788216, 35.322247, 48.733974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708389, 34.931683, 48.700977>,  <33.660496, 34.697346, 48.681179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708389, 34.931683, 48.700977>,  <33.788216, 35.322247, 48.733974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708389, 34.931683, 48.700977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232158, -0.128903, 0.964099,
		-0.951986, 0.173248, 0.252405,
		-0.199564, -0.976406, -0.082493,
		33.648521, 34.638760, 48.676231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639820, 35.192753, 49.473427>,  <33.788216, 35.322247, 48.733974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639820, 35.192753, 49.473427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711895, 34.850597, 49.279167>,  <33.755138, 34.645306, 49.162613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711895, 34.850597, 49.279167>,  <33.639820, 35.192753, 49.473427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711895, 34.850597, 49.279167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270025, -0.431744, 0.860630,
		-0.945844, -0.286208, 0.153182,
		0.180183, -0.855384, -0.485646,
		33.765949, 34.593983, 49.133472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330395, 34.722195, 49.899086>,  <33.639820, 35.192753, 49.473427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330395, 34.722195, 49.899086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571842, 34.487869, 49.682762>,  <33.716709, 34.347275, 49.552967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571842, 34.487869, 49.682762>,  <33.330395, 34.722195, 49.899086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571842, 34.487869, 49.682762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322748, -0.440715, 0.837618,
		-0.729028, -0.680144, -0.076953,
		0.603615, -0.585811, -0.540808,
		33.752926, 34.312126, 49.520519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089928, 33.966991, 50.060738>,  <33.330395, 34.722195, 49.899086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089928, 33.966991, 50.060738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466110, 33.972256, 49.924873>,  <33.691818, 33.975414, 49.843353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466110, 33.972256, 49.924873>,  <33.089928, 33.966991, 50.060738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466110, 33.972256, 49.924873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306318, -0.465980, 0.830079,
		-0.147353, -0.884697, -0.442265,
		0.940456, 0.013159, -0.339662,
		33.748245, 33.976204, 49.822975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346661, 33.311481, 50.281582>,  <33.089928, 33.966991, 50.060738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346661, 33.311481, 50.281582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673412, 33.527153, 50.199615>,  <33.869465, 33.656555, 50.150436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673412, 33.527153, 50.199615>,  <33.346661, 33.311481, 50.281582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673412, 33.527153, 50.199615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415091, -0.302835, 0.857899,
		0.400504, -0.785861, -0.471188,
		0.816881, 0.539178, -0.204918,
		33.918476, 33.688908, 50.138142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863441, 32.906647, 50.287231>,  <33.346661, 33.311481, 50.281582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863441, 32.906647, 50.287231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048210, 33.256939, 50.343418>,  <34.159073, 33.467113, 50.377129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048210, 33.256939, 50.343418>,  <33.863441, 32.906647, 50.287231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048210, 33.256939, 50.343418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697583, -0.456531, 0.552229,
		0.547729, -0.157101, -0.821774,
		0.461921, 0.875728, 0.140465,
		34.186787, 33.519657, 50.385559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560921, 32.834103, 50.163441>,  <33.863441, 32.906647, 50.287231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560921, 32.834103, 50.163441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523949, 33.144722, 50.412739>,  <34.501766, 33.331093, 50.562317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523949, 33.144722, 50.412739>,  <34.560921, 32.834103, 50.163441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523949, 33.144722, 50.412739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624416, -0.442351, 0.643763,
		0.775604, 0.448665, -0.444003,
		-0.092429, 0.776547, 0.623242,
		34.496220, 33.377686, 50.599712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273045, 32.956093, 50.389133>,  <34.560921, 32.834103, 50.163441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273045, 32.956093, 50.389133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045658, 33.152275, 50.653347>,  <34.909225, 33.269985, 50.811874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045658, 33.152275, 50.653347>,  <35.273045, 32.956093, 50.389133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045658, 33.152275, 50.653347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523045, -0.404274, 0.750324,
		0.635037, 0.772020, -0.026716,
		-0.568464, 0.490457, 0.660530,
		34.875118, 33.299412, 50.851505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735649, 33.194271, 50.822868>,  <35.273045, 32.956093, 50.389133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735649, 33.194271, 50.822868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412151, 33.215496, 51.057171>,  <35.218052, 33.228233, 51.197754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412151, 33.215496, 51.057171>,  <35.735649, 33.194271, 50.822868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412151, 33.215496, 51.057171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558196, -0.244567, 0.792845,
		0.185330, 0.968179, 0.168172,
		-0.808746, 0.053066, 0.585760,
		35.169529, 33.231415, 51.232899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048748, 33.422775, 51.413219>,  <35.735649, 33.194271, 50.822868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048748, 33.422775, 51.413219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690544, 33.313805, 51.553989>,  <35.475620, 33.248425, 51.638451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690544, 33.313805, 51.553989>,  <36.048748, 33.422775, 51.413219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690544, 33.313805, 51.553989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441030, -0.437270, 0.783765,
		-0.059631, 0.857077, 0.511726,
		-0.895509, -0.272423, 0.351922,
		35.421890, 33.232079, 51.659565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938820, 33.747787, 52.135532>,  <36.048748, 33.422775, 51.413219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938820, 33.747787, 52.135532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721706, 33.414326, 52.094707>,  <35.591438, 33.214249, 52.070213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721706, 33.414326, 52.094707>,  <35.938820, 33.747787, 52.135532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721706, 33.414326, 52.094707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453344, -0.393109, 0.799965,
		-0.707014, 0.387934, 0.591303,
		-0.542780, -0.833650, -0.102066,
		35.558872, 33.164230, 52.064087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743481, 33.617161, 52.834366>,  <35.938820, 33.747787, 52.135532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743481, 33.617161, 52.834366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723503, 33.278725, 52.622089>,  <35.711517, 33.075661, 52.494724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723503, 33.278725, 52.622089>,  <35.743481, 33.617161, 52.834366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723503, 33.278725, 52.622089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372799, -0.508741, 0.776018,
		-0.926567, -0.159087, 0.340829,
		-0.049940, -0.846093, -0.530690,
		35.708523, 33.024899, 52.462883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291428, 33.140285, 53.210468>,  <35.743481, 33.617161, 52.834366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291428, 33.140285, 53.210468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519016, 32.906479, 52.979084>,  <35.655571, 32.766197, 52.840252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519016, 32.906479, 52.979084>,  <35.291428, 33.140285, 53.210468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519016, 32.906479, 52.979084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338258, -0.474809, 0.812489,
		-0.749570, -0.657950, -0.072435,
		0.568970, -0.584515, -0.578460,
		35.689709, 32.731125, 52.805546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355198, 32.556435, 53.596634>,  <35.291428, 33.140285, 53.210468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355198, 32.556435, 53.596634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633385, 32.534496, 53.310047>,  <35.800297, 32.521332, 53.138096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633385, 32.534496, 53.310047>,  <35.355198, 32.556435, 53.596634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633385, 32.534496, 53.310047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541658, -0.615158, 0.572876,
		-0.472161, -0.786493, -0.398111,
		0.695464, -0.054850, -0.716464,
		35.842026, 32.518040, 53.095108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272293, 32.255955, 54.244648>,  <35.355198, 32.556435, 53.596634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272293, 32.255955, 54.244648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362309, 31.880672, 54.349815>,  <35.416317, 31.655502, 54.412914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362309, 31.880672, 54.349815>,  <35.272293, 32.255955, 54.244648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362309, 31.880672, 54.349815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575651, 0.089689, 0.812761,
		-0.786119, -0.334253, -0.519896,
		0.225039, -0.938206, 0.262920,
		35.429821, 31.599211, 54.428692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562237, 31.935194, 54.542728>,  <35.272293, 32.255955, 54.244648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562237, 31.935194, 54.542728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874531, 31.755909, 54.716885>,  <35.061905, 31.648338, 54.821377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874531, 31.755909, 54.716885>,  <34.562237, 31.935194, 54.542728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874531, 31.755909, 54.716885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364436, 0.239384, 0.899934,
		-0.507587, -0.861279, 0.023550,
		0.780732, -0.448213, 0.435389,
		35.108749, 31.621445, 54.847500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921951, 31.711445, 54.204742>,  <34.562237, 31.935194, 54.542728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921951, 31.711445, 54.204742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300426, 31.625643, 54.107822>,  <34.527512, 31.574162, 54.049671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300426, 31.625643, 54.107822>,  <33.921951, 31.711445, 54.204742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300426, 31.625643, 54.107822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192233, 0.229757, -0.954074,
		0.260325, 0.949315, 0.176159,
		0.946191, -0.214506, -0.242302,
		34.584282, 31.561291, 54.035133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222717, 32.298805, 53.712769>,  <33.921951, 31.711445, 54.204742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222717, 32.298805, 53.712769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391998, 31.941015, 53.655071>,  <34.493568, 31.726341, 53.620453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391998, 31.941015, 53.655071>,  <34.222717, 32.298805, 53.712769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391998, 31.941015, 53.655071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185105, 0.070491, -0.980187,
		0.886925, 0.441519, -0.135740,
		0.423203, -0.894479, -0.144248,
		34.518959, 31.672672, 53.611797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801926, 32.188969, 53.135384>,  <34.222717, 32.298805, 53.712769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801926, 32.188969, 53.135384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594147, 31.854429, 53.205460>,  <34.469479, 31.653706, 53.247505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594147, 31.854429, 53.205460>,  <34.801926, 32.188969, 53.135384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594147, 31.854429, 53.205460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198282, -0.081447, -0.976755,
		0.831178, -0.542111, -0.123526,
		-0.519449, -0.836350, 0.175188,
		34.438313, 31.603523, 53.258015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000038, 31.546806, 52.781528>,  <34.801926, 32.188969, 53.135384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000038, 31.546806, 52.781528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617641, 31.460781, 52.861359>,  <34.388203, 31.409166, 52.909256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617641, 31.460781, 52.861359>,  <35.000038, 31.546806, 52.781528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617641, 31.460781, 52.861359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142400, -0.254634, -0.956495,
		0.256527, -0.942820, 0.212803,
		-0.955989, -0.215064, 0.199578,
		34.330845, 31.396261, 52.921230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784668, 30.789783, 52.786278>,  <35.000038, 31.546806, 52.781528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784668, 30.789783, 52.786278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515980, 31.059032, 52.662540>,  <34.354767, 31.220581, 52.588299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515980, 31.059032, 52.662540>,  <34.784668, 30.789783, 52.786278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515980, 31.059032, 52.662540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036323, -0.387151, -0.921301,
		-0.739910, -0.630097, 0.235609,
		-0.671725, 0.673121, -0.309344,
		34.314461, 31.260969, 52.569736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369503, 30.390388, 52.314491>,  <34.784668, 30.789783, 52.786278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369503, 30.390388, 52.314491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357609, 30.780933, 52.228855>,  <34.350471, 31.015261, 52.177471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357609, 30.780933, 52.228855>,  <34.369503, 30.390388, 52.314491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357609, 30.780933, 52.228855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029138, -0.213249, -0.976563,
		-0.999133, -0.035273, -0.022109,
		-0.029732, 0.976361, -0.214092,
		34.348690, 31.073841, 52.164627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810894, 30.556173, 51.785408>,  <34.369503, 30.390388, 52.314491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810894, 30.556173, 51.785408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148468, 30.770636, 51.792385>,  <34.351013, 30.899313, 51.796570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148468, 30.770636, 51.792385>,  <33.810894, 30.556173, 51.785408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148468, 30.770636, 51.792385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179835, -0.252141, -0.950834,
		-0.505400, 0.805580, -0.309211,
		0.843938, 0.536158, 0.017439,
		34.401649, 30.931482, 51.797615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752628, 31.064957, 51.313126>,  <33.810894, 30.556173, 51.785408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752628, 31.064957, 51.313126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145912, 31.003769, 51.352936>,  <34.381882, 30.967056, 51.376823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145912, 31.003769, 51.352936>,  <33.752628, 31.064957, 51.313126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145912, 31.003769, 51.352936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078518, -0.137750, -0.987350,
		0.164743, 0.978583, -0.123426,
		0.983206, -0.152968, 0.099529,
		34.440872, 30.957878, 51.382793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022419, 31.417379, 50.814045>,  <33.752628, 31.064957, 51.313126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022419, 31.417379, 50.814045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326141, 31.176580, 50.912880>,  <34.508377, 31.032101, 50.972179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326141, 31.176580, 50.912880>,  <34.022419, 31.417379, 50.814045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326141, 31.176580, 50.912880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323333, 0.019511, -0.946084,
		0.564718, 0.798261, 0.209460,
		0.759309, -0.601996, 0.247086,
		34.553932, 30.995981, 50.987007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543152, 31.606962, 50.424339>,  <34.022419, 31.417379, 50.814045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543152, 31.606962, 50.424339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639412, 31.229465, 50.515064>,  <34.697166, 31.002968, 50.569500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639412, 31.229465, 50.515064>,  <34.543152, 31.606962, 50.424339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639412, 31.229465, 50.515064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378583, -0.123906, -0.917236,
		0.893735, 0.306598, 0.327467,
		0.240648, -0.943740, 0.226812,
		34.711605, 30.946344, 50.583107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284870, 31.406775, 50.186646>,  <34.543152, 31.606962, 50.424339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284870, 31.406775, 50.186646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068157, 31.070671, 50.194958>,  <34.938129, 30.869009, 50.199944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068157, 31.070671, 50.194958>,  <35.284870, 31.406775, 50.186646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068157, 31.070671, 50.194958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299827, -0.216304, -0.929148,
		0.785221, -0.497169, 0.369123,
		-0.541786, -0.840259, 0.020782,
		34.905621, 30.818594, 50.201191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715992, 30.979376, 49.808071>,  <35.284870, 31.406775, 50.186646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715992, 30.979376, 49.808071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352482, 30.814497, 49.834072>,  <35.134377, 30.715570, 49.849674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352482, 30.814497, 49.834072>,  <35.715992, 30.979376, 49.808071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352482, 30.814497, 49.834072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067519, -0.298973, -0.951870,
		0.411792, -0.860645, 0.299530,
		-0.908773, -0.412196, 0.065004,
		35.079849, 30.690838, 49.853573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740273, 30.428730, 49.360504>,  <35.715992, 30.979376, 49.808071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740273, 30.428730, 49.360504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349720, 30.496954, 49.413544>,  <35.115387, 30.537888, 49.445370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349720, 30.496954, 49.413544>,  <35.740273, 30.428730, 49.360504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349720, 30.496954, 49.413544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172117, -0.243141, -0.954599,
		-0.130572, -0.954878, 0.266755,
		-0.976384, 0.170557, 0.132603,
		35.056805, 30.548122, 49.453323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319183, 29.847382, 49.210358>,  <35.740273, 30.428730, 49.360504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319183, 29.847382, 49.210358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077244, 30.160927, 49.154198>,  <34.932079, 30.349054, 49.120502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077244, 30.160927, 49.154198>,  <35.319183, 29.847382, 49.210358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077244, 30.160927, 49.154198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010359, -0.184041, -0.982864,
		-0.796271, -0.593032, 0.119438,
		-0.604851, 0.783864, -0.140403,
		34.895790, 30.396086, 49.112076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001015, 29.627268, 48.622219>,  <35.319183, 29.847382, 49.210358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001015, 29.627268, 48.622219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839417, 29.991356, 48.658623>,  <34.742458, 30.209808, 48.680466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839417, 29.991356, 48.658623>,  <35.001015, 29.627268, 48.622219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839417, 29.991356, 48.658623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032236, 0.085265, -0.995837,
		-0.914191, -0.405251, -0.005105,
		-0.403999, 0.910221, 0.091013,
		34.718216, 30.264421, 48.685928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416859, 29.609173, 48.170769>,  <35.001015, 29.627268, 48.622219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416859, 29.609173, 48.170769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528542, 29.987926, 48.234592>,  <34.595551, 30.215178, 48.272884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528542, 29.987926, 48.234592>,  <34.416859, 29.609173, 48.170769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528542, 29.987926, 48.234592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060402, 0.183153, -0.981227,
		-0.958329, 0.264328, 0.108331,
		0.279207, 0.946882, 0.159555,
		34.612305, 30.271992, 48.282459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884258, 30.011246, 47.828327>,  <34.416859, 29.609173, 48.170769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884258, 30.011246, 47.828327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199013, 30.256983, 47.851612>,  <34.387867, 30.404425, 47.865582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199013, 30.256983, 47.851612>,  <33.884258, 30.011246, 47.828327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199013, 30.256983, 47.851612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109138, 0.231393, -0.966719,
		-0.607366, 0.754348, 0.249129,
		0.786890, 0.614342, 0.058212,
		34.435081, 30.441286, 47.869076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604782, 30.677631, 47.620529>,  <33.884258, 30.011246, 47.828327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604782, 30.677631, 47.620529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993866, 30.656565, 47.530136>,  <34.227314, 30.643925, 47.475899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993866, 30.656565, 47.530136>,  <33.604782, 30.677631, 47.620529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993866, 30.656565, 47.530136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201687, 0.289653, -0.935641,
		0.114734, 0.955681, 0.271125,
		0.972707, -0.052668, -0.225981,
		34.285679, 30.640764, 47.462341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647537, 31.250544, 47.196644>,  <33.604782, 30.677631, 47.620529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647537, 31.250544, 47.196644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991852, 31.062414, 47.118839>,  <34.198441, 30.949537, 47.072155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991852, 31.062414, 47.118839>,  <33.647537, 31.250544, 47.196644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991852, 31.062414, 47.118839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081461, 0.249942, -0.964828,
		0.502398, 0.846360, 0.176835,
		0.860791, -0.470322, -0.194516,
		34.250088, 30.921318, 47.060486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010040, 31.756186, 46.839787>,  <33.647537, 31.250544, 47.196644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010040, 31.756186, 46.839787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177391, 31.404015, 46.750511>,  <34.277802, 31.192713, 46.696945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177391, 31.404015, 46.750511>,  <34.010040, 31.756186, 46.839787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177391, 31.404015, 46.750511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084828, 0.206775, -0.974704,
		0.904305, 0.426723, 0.011824,
		0.418373, -0.880427, -0.223186,
		34.302902, 31.139887, 46.683556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547703, 31.931526, 46.361866>,  <34.010040, 31.756186, 46.839787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547703, 31.931526, 46.361866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414200, 31.557524, 46.313911>,  <34.334099, 31.333122, 46.285141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414200, 31.557524, 46.313911>,  <34.547703, 31.931526, 46.361866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414200, 31.557524, 46.313911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205068, 0.196147, -0.958892,
		0.920083, -0.295452, -0.257205,
		-0.333757, -0.935005, -0.119884,
		34.314072, 31.277021, 46.277946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769890, 31.835812, 45.747730>,  <34.547703, 31.931526, 46.361866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769890, 31.835812, 45.747730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540508, 31.512083, 45.798557>,  <34.402878, 31.317846, 45.829052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540508, 31.512083, 45.798557>,  <34.769890, 31.835812, 45.747730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540508, 31.512083, 45.798557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308379, 0.069556, -0.948717,
		0.758981, -0.583231, -0.289465,
		-0.573455, -0.809323, 0.127064,
		34.368473, 31.269287, 45.836678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946518, 31.402748, 45.185463>,  <34.769890, 31.835812, 45.747730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946518, 31.402748, 45.185463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576225, 31.309484, 45.304558>,  <34.354050, 31.253527, 45.376015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576225, 31.309484, 45.304558>,  <34.946518, 31.402748, 45.185463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576225, 31.309484, 45.304558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356169, 0.272937, -0.893672,
		0.127103, -0.933350, -0.335711,
		-0.925737, -0.233159, 0.297740,
		34.298504, 31.239536, 45.393879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599335, 31.071295, 44.663269>,  <34.946518, 31.402748, 45.185463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599335, 31.071295, 44.663269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275646, 31.182486, 44.870304>,  <34.081432, 31.249201, 44.994526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275646, 31.182486, 44.870304>,  <34.599335, 31.071295, 44.663269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275646, 31.182486, 44.870304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537469, 0.005507, -0.843266,
		-0.237259, -0.960572, 0.144948,
		-0.809219, 0.277977, 0.517584,
		34.032879, 31.265879, 45.025578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053753, 30.787968, 44.289352>,  <34.599335, 31.071295, 44.663269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053753, 30.787968, 44.289352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903076, 31.092882, 44.499882>,  <33.812668, 31.275831, 44.626198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903076, 31.092882, 44.499882>,  <34.053753, 30.787968, 44.289352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903076, 31.092882, 44.499882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518079, 0.297641, -0.801876,
		-0.767916, -0.574741, 0.282804,
		-0.376697, 0.762288, 0.526325,
		33.790066, 31.321568, 44.657780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470085, 30.787970, 44.049911>,  <34.053753, 30.787968, 44.289352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470085, 30.787970, 44.049911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494766, 31.149427, 44.219437>,  <33.509575, 31.366302, 44.321152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494766, 31.149427, 44.219437>,  <33.470085, 30.787970, 44.049911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494766, 31.149427, 44.219437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569528, 0.380587, -0.728554,
		-0.819653, -0.196420, 0.538135,
		0.061704, 0.903644, 0.423816,
		33.513279, 31.420521, 44.346581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775059, 31.057549, 44.073547>,  <33.470085, 30.787970, 44.049911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775059, 31.057549, 44.073547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009178, 31.381237, 44.093918>,  <33.149651, 31.575449, 44.106140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009178, 31.381237, 44.093918>,  <32.775059, 31.057549, 44.073547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009178, 31.381237, 44.093918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447674, 0.374881, -0.811820,
		-0.676030, 0.452358, 0.581683,
		0.585296, 0.809220, 0.050922,
		33.184769, 31.624002, 44.109196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348274, 31.545361, 44.084732>,  <32.775059, 31.057549, 44.073547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348274, 31.545361, 44.084732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679260, 31.741533, 43.975349>,  <32.877853, 31.859238, 43.909721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679260, 31.741533, 43.975349>,  <32.348274, 31.545361, 44.084732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679260, 31.741533, 43.975349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510558, 0.454408, -0.729962,
		-0.233736, 0.743633, 0.626400,
		0.827464, 0.490432, -0.273456,
		32.927498, 31.888662, 43.893314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078049, 32.078999, 43.728996>,  <32.348274, 31.545361, 44.084732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078049, 32.078999, 43.728996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464886, 32.096966, 43.628830>,  <32.696987, 32.107746, 43.568729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464886, 32.096966, 43.628830>,  <32.078049, 32.078999, 43.728996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464886, 32.096966, 43.628830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229666, 0.577587, -0.783356,
		0.109453, 0.815092, 0.568898,
		0.967096, 0.044916, -0.250417,
		32.755013, 32.110439, 43.553703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247444, 32.855469, 43.651981>,  <32.078049, 32.078999, 43.728996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247444, 32.855469, 43.651981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495502, 32.636086, 43.427624>,  <32.644337, 32.504456, 43.293007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495502, 32.636086, 43.427624>,  <32.247444, 32.855469, 43.651981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495502, 32.636086, 43.427624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322129, 0.473896, -0.819546,
		0.715296, 0.688922, 0.117211,
		0.620149, -0.548461, -0.560898,
		32.681545, 32.471546, 43.259354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551258, 33.298428, 43.148754>,  <32.247444, 32.855469, 43.651981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551258, 33.298428, 43.148754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588589, 32.921825, 43.019222>,  <32.610985, 32.695866, 42.941502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588589, 32.921825, 43.019222>,  <32.551258, 33.298428, 43.148754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588589, 32.921825, 43.019222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243841, 0.293732, -0.924264,
		0.965315, 0.165218, -0.202164,
		0.093323, -0.941501, -0.323831,
		32.616585, 32.639374, 42.922073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992420, 33.304707, 42.636822>,  <32.551258, 33.298428, 43.148754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992420, 33.304707, 42.636822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816925, 32.953358, 42.560959>,  <32.711628, 32.742550, 42.515442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816925, 32.953358, 42.560959>,  <32.992420, 33.304707, 42.636822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816925, 32.953358, 42.560959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154724, 0.134060, -0.978820,
		0.885193, -0.458794, 0.077087,
		-0.438742, -0.878371, -0.189656,
		32.685303, 32.689846, 42.504063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351765, 33.021179, 42.052509>,  <32.992420, 33.304707, 42.636822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351765, 33.021179, 42.052509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997524, 32.836365, 42.071442>,  <32.784981, 32.725475, 42.082802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997524, 32.836365, 42.071442>,  <33.351765, 33.021179, 42.052509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997524, 32.836365, 42.071442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051252, -0.004058, -0.998678,
		0.461617, -0.886852, -0.020087,
		-0.885598, -0.462036, 0.047326,
		32.731846, 32.697754, 42.085640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276188, 32.621811, 41.410229>,  <33.351765, 33.021179, 42.052509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276188, 32.621811, 41.410229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907310, 32.589798, 41.561569>,  <32.685982, 32.570591, 41.652374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907310, 32.589798, 41.561569>,  <33.276188, 32.621811, 41.410229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907310, 32.589798, 41.561569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386286, 0.144140, -0.911047,
		0.018373, -0.986316, -0.163839,
		-0.922196, -0.080027, 0.378352,
		32.630653, 32.565788, 41.675076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948967, 32.125820, 41.063667>,  <33.276188, 32.621811, 41.410229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948967, 32.125820, 41.063667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660862, 32.375793, 41.184120>,  <32.487999, 32.525776, 41.256390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660862, 32.375793, 41.184120>,  <32.948967, 32.125820, 41.063667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660862, 32.375793, 41.184120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341683, 0.058185, -0.938012,
		-0.603717, -0.778506, 0.171621,
		-0.720262, 0.624935, 0.301130,
		32.444782, 32.563274, 41.274460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401550, 32.088203, 40.605911>,  <32.948967, 32.125820, 41.063667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401550, 32.088203, 40.605911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261425, 32.418346, 40.783028>,  <32.177349, 32.616432, 40.889297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261425, 32.418346, 40.783028>,  <32.401550, 32.088203, 40.605911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261425, 32.418346, 40.783028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470396, 0.253774, -0.845178,
		-0.809943, -0.504366, 0.299344,
		-0.350314, 0.825357, 0.442794,
		32.156330, 32.665955, 40.915867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734875, 32.053730, 40.452984>,  <32.401550, 32.088203, 40.605911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734875, 32.053730, 40.452984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825357, 32.434971, 40.533413>,  <31.879646, 32.663715, 40.581669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825357, 32.434971, 40.533413>,  <31.734875, 32.053730, 40.452984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825357, 32.434971, 40.533413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288333, 0.262685, -0.920793,
		-0.930427, 0.150313, 0.334231,
		0.226205, 0.953101, 0.201070,
		31.893219, 32.720901, 40.593735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266376, 32.359909, 40.146553>,  <31.734875, 32.053730, 40.452984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266376, 32.359909, 40.146553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501862, 32.679489, 40.195702>,  <31.643152, 32.871235, 40.225193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501862, 32.679489, 40.195702>,  <31.266376, 32.359909, 40.146553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501862, 32.679489, 40.195702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376150, 0.405312, -0.833207,
		-0.715491, 0.444301, 0.539137,
		0.588714, 0.798948, 0.122873,
		31.678476, 32.919174, 40.232563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862850, 32.911430, 39.899044>,  <31.266376, 32.359909, 40.146553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862850, 32.911430, 39.899044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243467, 33.029800, 39.865604>,  <31.471838, 33.100822, 39.845543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243467, 33.029800, 39.865604>,  <30.862850, 32.911430, 39.899044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243467, 33.029800, 39.865604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237607, 0.534978, -0.810766,
		-0.195207, 0.791343, 0.579371,
		0.951545, 0.295929, -0.083597,
		31.528931, 33.118580, 39.840527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809959, 33.719460, 39.750908>,  <30.862850, 32.911430, 39.899044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809959, 33.719460, 39.750908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167580, 33.577847, 39.641125>,  <31.382153, 33.492878, 39.575253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167580, 33.577847, 39.641125>,  <30.809959, 33.719460, 39.750908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167580, 33.577847, 39.641125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071407, 0.492221, -0.867536,
		0.442234, 0.795221, 0.414791,
		0.894053, -0.354035, -0.274461,
		31.435795, 33.471638, 39.558784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391720, 34.313545, 39.613995>,  <30.809959, 33.719460, 39.750908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391720, 34.313545, 39.613995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488922, 33.970047, 39.433548>,  <31.547243, 33.763950, 39.325279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488922, 33.970047, 39.433548>,  <31.391720, 34.313545, 39.613995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488922, 33.970047, 39.433548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059418, 0.451011, -0.890538,
		0.968203, 0.243212, 0.058574,
		0.243007, -0.858742, -0.451121,
		31.561825, 33.712425, 39.298210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770460, 34.522633, 39.097549>,  <31.391720, 34.313545, 39.613995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770460, 34.522633, 39.097549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657890, 34.161331, 38.967979>,  <31.590347, 33.944550, 38.890236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657890, 34.161331, 38.967979>,  <31.770460, 34.522633, 39.097549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657890, 34.161331, 38.967979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281195, 0.400380, -0.872138,
		0.917458, -0.154356, -0.366669,
		-0.281426, -0.903255, -0.323927,
		31.573462, 33.890354, 38.870800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186966, 34.415817, 38.507977>,  <31.770460, 34.522633, 39.097549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186966, 34.415817, 38.507977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849100, 34.205566, 38.467453>,  <31.646381, 34.079414, 38.443138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849100, 34.205566, 38.467453>,  <32.186966, 34.415817, 38.507977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849100, 34.205566, 38.467453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132470, 0.388613, -0.911829,
		0.518652, -0.756766, -0.397877,
		-0.844661, -0.525629, -0.101306,
		31.595701, 34.047878, 38.437061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179214, 34.270851, 37.845547>,  <32.186966, 34.415817, 38.507977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179214, 34.270851, 37.845547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799738, 34.156528, 37.899658>,  <31.572052, 34.087936, 37.932125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799738, 34.156528, 37.899658>,  <32.179214, 34.270851, 37.845547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799738, 34.156528, 37.899658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230489, 0.332156, -0.914630,
		0.216473, -0.898881, -0.380989,
		-0.948691, -0.285807, 0.135280,
		31.515131, 34.070786, 37.940243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607094, 33.834934, 38.200569>,  <32.179214, 34.270851, 37.845547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607094, 33.834934, 38.200569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852802, 33.795658, 37.887386>,  <33.000229, 33.772091, 37.699474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852802, 33.795658, 37.887386>,  <32.607094, 33.834934, 38.200569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852802, 33.795658, 37.887386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589751, -0.602108, 0.538200,
		-0.524273, -0.792354, -0.311951,
		0.614274, -0.098190, -0.782960,
		33.037083, 33.766201, 37.652496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648670, 33.140541, 38.064953>,  <32.607094, 33.834934, 38.200569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648670, 33.140541, 38.064953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972187, 33.353130, 37.964241>,  <33.166298, 33.480682, 37.903816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972187, 33.353130, 37.964241>,  <32.648670, 33.140541, 38.064953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972187, 33.353130, 37.964241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578170, -0.640259, 0.505755,
		0.107593, -0.554620, -0.825118,
		0.808792, 0.531474, -0.251777,
		33.214825, 33.512573, 37.888706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118214, 32.630737, 37.778103>,  <32.648670, 33.140541, 38.064953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118214, 32.630737, 37.778103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338093, 32.943798, 37.894924>,  <33.470020, 33.131634, 37.965015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338093, 32.943798, 37.894924>,  <33.118214, 32.630737, 37.778103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338093, 32.943798, 37.894924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740044, -0.618420, 0.264372,
		0.387521, 0.070807, -0.919138,
		0.549693, 0.782652, 0.292051,
		33.503002, 33.178593, 37.982540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729847, 32.483746, 37.579769>,  <33.118214, 32.630737, 37.778103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729847, 32.483746, 37.579769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832443, 32.746136, 37.863716>,  <33.894001, 32.903568, 38.034084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832443, 32.746136, 37.863716>,  <33.729847, 32.483746, 37.579769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832443, 32.746136, 37.863716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648108, -0.661585, 0.377175,
		0.717054, 0.363329, -0.594832,
		0.256493, 0.655971, 0.709869,
		33.909389, 32.942928, 38.076675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452106, 32.457657, 37.672817>,  <33.729847, 32.483746, 37.579769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452106, 32.457657, 37.672817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335876, 32.653999, 38.001362>,  <34.266140, 32.771805, 38.198486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335876, 32.653999, 38.001362>,  <34.452106, 32.457657, 37.672817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335876, 32.653999, 38.001362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637522, -0.540801, 0.548726,
		0.713536, 0.683079, -0.155790,
		-0.290572, 0.490855, 0.821359,
		34.248707, 32.801254, 38.247768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060135, 32.731026, 38.127129>,  <34.452106, 32.457657, 37.672817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060135, 32.731026, 38.127129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750835, 32.686237, 38.376781>,  <34.565254, 32.659363, 38.526573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750835, 32.686237, 38.376781>,  <35.060135, 32.731026, 38.127129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750835, 32.686237, 38.376781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560535, -0.580868, 0.590248,
		0.296449, 0.806260, 0.511921,
		-0.773252, -0.111971, 0.624134,
		34.518860, 32.652645, 38.564022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370014, 32.764263, 38.860783>,  <35.060135, 32.731026, 38.127129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370014, 32.764263, 38.860783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013172, 32.584400, 38.878513>,  <34.799068, 32.476482, 38.889153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013172, 32.584400, 38.878513>,  <35.370014, 32.764263, 38.860783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013172, 32.584400, 38.878513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319324, -0.558032, 0.765919,
		-0.319664, 0.697432, 0.641408,
		-0.892103, -0.449654, 0.044324,
		34.745541, 32.449505, 38.891811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325592, 32.683067, 39.530907>,  <35.370014, 32.764263, 38.860783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325592, 32.683067, 39.530907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017296, 32.463322, 39.401806>,  <34.832317, 32.331474, 39.324345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017296, 32.463322, 39.401806>,  <35.325592, 32.683067, 39.530907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017296, 32.463322, 39.401806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011646, -0.518608, 0.854933,
		-0.637048, 0.655169, 0.406108,
		-0.770736, -0.549363, -0.322748,
		34.786076, 32.298512, 39.304981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967110, 32.564751, 40.184402>,  <35.325592, 32.683067, 39.530907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967110, 32.564751, 40.184402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867096, 32.286636, 39.914867>,  <34.807087, 32.119766, 39.753147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867096, 32.286636, 39.914867>,  <34.967110, 32.564751, 40.184402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867096, 32.286636, 39.914867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158862, -0.715975, 0.679811,
		-0.955115, 0.062930, 0.289473,
		-0.250036, -0.695284, -0.673841,
		34.792084, 32.078053, 39.712715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420944, 32.072437, 40.523071>,  <34.967110, 32.564751, 40.184402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420944, 32.072437, 40.523071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630203, 31.896149, 40.231293>,  <34.755756, 31.790377, 40.056225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630203, 31.896149, 40.231293>,  <34.420944, 32.072437, 40.523071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630203, 31.896149, 40.231293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328305, -0.685635, 0.649707,
		-0.786470, -0.579370, -0.213996,
		0.523144, -0.440720, -0.729442,
		34.787148, 31.763933, 40.012459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190887, 31.375465, 40.558643>,  <34.420944, 32.072437, 40.523071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190887, 31.375465, 40.558643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528816, 31.354776, 40.345627>,  <34.731575, 31.342363, 40.217815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528816, 31.354776, 40.345627>,  <34.190887, 31.375465, 40.558643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528816, 31.354776, 40.345627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342292, -0.712746, 0.612234,
		-0.411236, -0.699513, -0.584437,
		0.844820, -0.051724, -0.532544,
		34.782261, 31.339260, 40.185863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236115, 30.695604, 40.425785>,  <34.190887, 31.375465, 40.558643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236115, 30.695604, 40.425785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609646, 30.816757, 40.349648>,  <34.833763, 30.889448, 40.303967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609646, 30.816757, 40.349648>,  <34.236115, 30.695604, 40.425785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609646, 30.816757, 40.349648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346855, -0.636478, 0.688903,
		0.087508, -0.709337, -0.699417,
		0.933828, 0.302881, -0.190340,
		34.889793, 30.907621, 40.292545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624641, 30.060656, 40.490562>,  <34.236115, 30.695604, 40.425785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624641, 30.060656, 40.490562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913837, 30.336882, 40.498631>,  <35.087357, 30.502617, 40.503471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913837, 30.336882, 40.498631>,  <34.624641, 30.060656, 40.490562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913837, 30.336882, 40.498631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413925, -0.456365, 0.787653,
		0.553130, -0.561116, -0.615789,
		0.722989, 0.690565, 0.020169,
		35.130733, 30.544050, 40.504681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301502, 29.769361, 40.428093>,  <34.624641, 30.060656, 40.490562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301502, 29.769361, 40.428093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343330, 30.102530, 40.645462>,  <35.368427, 30.302431, 40.775883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343330, 30.102530, 40.645462>,  <35.301502, 29.769361, 40.428093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343330, 30.102530, 40.645462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530108, -0.509005, 0.678159,
		0.841458, 0.217159, -0.494764,
		0.104569, 0.832920, 0.543424,
		35.374702, 30.352406, 40.808491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814465, 29.570642, 40.916187>,  <35.301502, 29.769361, 40.428093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814465, 29.570642, 40.916187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708447, 29.930172, 41.055824>,  <35.644836, 30.145889, 41.139606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708447, 29.930172, 41.055824>,  <35.814465, 29.570642, 40.916187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708447, 29.930172, 41.055824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405179, -0.224706, 0.886193,
		0.874975, 0.376327, -0.304627,
		-0.265046, 0.898825, 0.349091,
		35.628933, 30.199820, 41.160553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392540, 29.723228, 41.344513>,  <35.814465, 29.570642, 40.916187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392540, 29.723228, 41.344513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070675, 29.942430, 41.435913>,  <35.877556, 30.073952, 41.490753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070675, 29.942430, 41.435913>,  <36.392540, 29.723228, 41.344513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070675, 29.942430, 41.435913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300832, 0.044504, 0.952638,
		0.511881, 0.835291, -0.200668,
		-0.804660, 0.548004, 0.228501,
		35.829277, 30.106833, 41.504463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671993, 30.185762, 41.792011>,  <36.392540, 29.723228, 41.344513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671993, 30.185762, 41.792011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285027, 30.217682, 41.888126>,  <36.052845, 30.236834, 41.945797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285027, 30.217682, 41.888126>,  <36.671993, 30.185762, 41.792011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285027, 30.217682, 41.888126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233672, -0.084052, 0.968676,
		0.097494, 0.993261, 0.062667,
		-0.967415, 0.079797, 0.240292,
		35.994801, 30.241621, 41.960213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686802, 30.560396, 42.361820>,  <36.671993, 30.185762, 41.792011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686802, 30.560396, 42.361820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324276, 30.394148, 42.392429>,  <36.106762, 30.294399, 42.410793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324276, 30.394148, 42.392429>,  <36.686802, 30.560396, 42.361820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324276, 30.394148, 42.392429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142818, -0.130808, 0.981067,
		-0.397744, 0.900082, 0.177911,
		-0.906313, -0.415622, 0.076519,
		36.052383, 30.269461, 42.415386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364716, 30.905130, 42.918358>,  <36.686802, 30.560396, 42.361820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364716, 30.905130, 42.918358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153065, 30.567535, 42.883244>,  <36.026073, 30.364979, 42.862175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153065, 30.567535, 42.883244>,  <36.364716, 30.905130, 42.918358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153065, 30.567535, 42.883244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000514, -0.103140, 0.994667,
		-0.848542, 0.526351, 0.054140,
		-0.529128, -0.843988, -0.087789,
		35.994328, 30.314339, 42.856907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693371, 30.929522, 43.493992>,  <36.364716, 30.905130, 42.918358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693371, 30.929522, 43.493992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807163, 30.557627, 43.400471>,  <35.875439, 30.334490, 43.344357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807163, 30.557627, 43.400471>,  <35.693371, 30.929522, 43.493992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807163, 30.557627, 43.400471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073427, -0.264296, 0.961642,
		-0.955866, -0.256399, -0.143454,
		0.284478, -0.929735, -0.233805,
		35.892506, 30.278706, 43.330330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267967, 30.597111, 43.926403>,  <35.693371, 30.929522, 43.493992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267967, 30.597111, 43.926403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578167, 30.353804, 43.858746>,  <35.764286, 30.207819, 43.818153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578167, 30.353804, 43.858746>,  <35.267967, 30.597111, 43.926403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578167, 30.353804, 43.858746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027772, -0.300513, 0.953373,
		-0.630733, -0.734646, -0.249941,
		0.775502, -0.608266, -0.169141,
		35.810818, 30.171324, 43.808002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148476, 30.031944, 44.377205>,  <35.267967, 30.597111, 43.926403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148476, 30.031944, 44.377205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532936, 29.993370, 44.273750>,  <35.763611, 29.970226, 44.211678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532936, 29.993370, 44.273750>,  <35.148476, 30.031944, 44.377205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532936, 29.993370, 44.273750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221492, -0.289736, 0.931125,
		-0.164729, -0.952236, -0.257120,
		0.961148, -0.096434, -0.258641,
		35.821281, 29.964439, 44.196159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397404, 29.570459, 44.906822>,  <35.148476, 30.031944, 44.377205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397404, 29.570459, 44.906822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713882, 29.755440, 44.746750>,  <35.903770, 29.866428, 44.650707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713882, 29.755440, 44.746750>,  <35.397404, 29.570459, 44.906822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713882, 29.755440, 44.746750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465751, -0.031583, 0.884352,
		0.396330, -0.886083, -0.240375,
		0.791201, 0.462450, -0.400177,
		35.951244, 29.894175, 44.626698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983498, 29.123991, 44.873020>,  <35.397404, 29.570459, 44.906822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983498, 29.123991, 44.873020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102139, 29.505926, 44.880123>,  <36.173325, 29.735086, 44.884384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102139, 29.505926, 44.880123>,  <35.983498, 29.123991, 44.873020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102139, 29.505926, 44.880123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413858, -0.145270, 0.898676,
		0.860668, -0.259201, -0.438254,
		0.296602, 0.954836, 0.017756,
		36.191120, 29.792377, 44.885448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659023, 29.114855, 45.105751>,  <35.983498, 29.123991, 44.873020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659023, 29.114855, 45.105751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494053, 29.470762, 45.183949>,  <36.395073, 29.684307, 45.230869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494053, 29.470762, 45.183949>,  <36.659023, 29.114855, 45.105751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494053, 29.470762, 45.183949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354108, -0.041147, 0.934299,
		0.839354, 0.454554, -0.298105,
		-0.412423, 0.889768, 0.195498,
		36.370327, 29.737694, 45.242599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029022, 29.347483, 45.735077>,  <36.659023, 29.114855, 45.105751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029022, 29.347483, 45.735077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760418, 29.642773, 45.709476>,  <36.599255, 29.819946, 45.694115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760418, 29.642773, 45.709476>,  <37.029022, 29.347483, 45.735077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760418, 29.642773, 45.709476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240953, 0.299224, 0.923259,
		0.700722, 0.604560, -0.378810,
		-0.671514, 0.738223, -0.064002,
		36.558964, 29.864239, 45.690277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485218, 29.888979, 45.955517>,  <37.029022, 29.347483, 45.735077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485218, 29.888979, 45.955517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097115, 29.971319, 46.006462>,  <36.864254, 30.020723, 46.037029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097115, 29.971319, 46.006462>,  <37.485218, 29.888979, 45.955517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097115, 29.971319, 46.006462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196042, 0.359595, 0.912282,
		0.141995, 0.910119, -0.389256,
		-0.970260, 0.205850, 0.127361,
		36.806038, 30.033073, 46.044670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443409, 30.509777, 46.366680>,  <37.485218, 29.888979, 45.955517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443409, 30.509777, 46.366680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086636, 30.337708, 46.422401>,  <36.872570, 30.234467, 46.455833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086636, 30.337708, 46.422401>,  <37.443409, 30.509777, 46.366680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086636, 30.337708, 46.422401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110924, 0.090495, 0.989700,
		-0.438348, 0.898199, -0.032999,
		-0.891934, -0.430173, 0.139300,
		36.819054, 30.208656, 46.464191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186642, 30.801111, 46.976391>,  <37.443409, 30.509777, 46.366680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186642, 30.801111, 46.976391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920414, 30.502899, 46.962540>,  <36.760677, 30.323973, 46.954227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920414, 30.502899, 46.962540>,  <37.186642, 30.801111, 46.976391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920414, 30.502899, 46.962540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044453, -0.085917, 0.995310,
		-0.745009, 0.660910, 0.090325,
		-0.665571, -0.745531, -0.034629,
		36.720741, 30.279240, 46.952152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673119, 30.897747, 47.511948>,  <37.186642, 30.801111, 46.976391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673119, 30.897747, 47.511948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700912, 30.508595, 47.423695>,  <36.717590, 30.275103, 47.370743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700912, 30.508595, 47.423695>,  <36.673119, 30.897747, 47.511948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700912, 30.508595, 47.423695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160220, -0.207409, 0.965044,
		-0.984633, -0.102407, 0.141462,
		0.069486, -0.972879, -0.220629,
		36.721760, 30.216730, 47.357506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347294, 30.563055, 47.940544>,  <36.673119, 30.897747, 47.511948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347294, 30.563055, 47.940544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573322, 30.256744, 47.817719>,  <36.708939, 30.072958, 47.744022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573322, 30.256744, 47.817719>,  <36.347294, 30.563055, 47.940544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573322, 30.256744, 47.817719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356437, -0.109072, 0.927931,
		-0.744078, -0.633792, 0.211317,
		0.565067, -0.765774, -0.307065,
		36.742844, 30.027012, 47.725597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203632, 30.025782, 48.392811>,  <36.347294, 30.563055, 47.940544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203632, 30.025782, 48.392811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543087, 29.908871, 48.216454>,  <36.746761, 29.838724, 48.110638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543087, 29.908871, 48.216454>,  <36.203632, 30.025782, 48.392811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543087, 29.908871, 48.216454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396674, -0.199781, 0.895956,
		-0.349953, -0.935232, -0.053601,
		0.848636, -0.292280, -0.440897,
		36.797676, 29.821188, 48.084183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405323, 29.440989, 48.665363>,  <36.203632, 30.025782, 48.392811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405323, 29.440989, 48.665363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749474, 29.588278, 48.524414>,  <36.955963, 29.676651, 48.439846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749474, 29.588278, 48.524414>,  <36.405323, 29.440989, 48.665363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749474, 29.588278, 48.524414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487341, -0.392042, 0.780258,
		0.149165, -0.843040, -0.516753,
		0.860377, 0.368222, -0.352369,
		37.007587, 29.698744, 48.418705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816597, 28.887497, 48.813599>,  <36.405323, 29.440989, 48.665363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816597, 28.887497, 48.813599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064697, 29.192684, 48.740753>,  <37.213558, 29.375795, 48.697044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064697, 29.192684, 48.740753>,  <36.816597, 28.887497, 48.813599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064697, 29.192684, 48.740753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537700, -0.244519, 0.806901,
		0.571108, -0.598408, -0.561911,
		0.620254, 0.762967, -0.182117,
		37.250774, 29.421574, 48.686119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524448, 28.595192, 48.814827>,  <36.816597, 28.887497, 48.813599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524448, 28.595192, 48.814827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549004, 28.989698, 48.876163>,  <37.563736, 29.226402, 48.912968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549004, 28.989698, 48.876163>,  <37.524448, 28.595192, 48.814827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549004, 28.989698, 48.876163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680209, -0.153773, 0.716708,
		0.730443, 0.060308, -0.680305,
		0.061389, 0.986264, 0.153344,
		37.567421, 29.285578, 48.922165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135414, 28.614334, 48.917618>,  <37.524448, 28.595192, 48.814827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135414, 28.614334, 48.917618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993778, 28.954556, 49.073143>,  <37.908798, 29.158689, 49.166458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993778, 28.954556, 49.073143>,  <38.135414, 28.614334, 48.917618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993778, 28.954556, 49.073143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760086, 0.019502, 0.649530,
		0.544879, 0.525523, -0.653401,
		-0.354086, 0.850555, 0.388816,
		37.887554, 29.209723, 49.189789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692390, 29.028870, 49.030930>,  <38.135414, 28.614334, 48.917618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692390, 29.028870, 49.030930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403786, 29.141653, 49.283886>,  <38.230621, 29.209324, 49.435661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403786, 29.141653, 49.283886>,  <38.692390, 29.028870, 49.030930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403786, 29.141653, 49.283886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650943, -0.035064, 0.758316,
		0.235989, 0.958785, -0.158241,
		-0.721514, 0.281960, 0.632390,
		38.187332, 29.226242, 49.473602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143696, 29.490009, 49.441662>,  <38.692390, 29.028870, 49.030930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143696, 29.490009, 49.441662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801151, 29.400251, 49.627689>,  <38.595623, 29.346395, 49.739304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801151, 29.400251, 49.627689>,  <39.143696, 29.490009, 49.441662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801151, 29.400251, 49.627689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510557, -0.233182, 0.827621,
		-0.077270, 0.946188, 0.314257,
		-0.856365, -0.224397, 0.465065,
		38.544243, 29.332932, 49.767208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107632, 29.943909, 50.034966>,  <39.143696, 29.490009, 49.441662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107632, 29.943909, 50.034966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863579, 29.638540, 50.119751>,  <38.717148, 29.455318, 50.170620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863579, 29.638540, 50.119751>,  <39.107632, 29.943909, 50.034966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863579, 29.638540, 50.119751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375141, -0.042719, 0.925983,
		-0.697862, 0.644484, 0.312456,
		-0.610129, -0.763423, 0.211960,
		38.680538, 29.409513, 50.183338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912994, 30.550146, 50.280251>,  <39.107632, 29.943909, 50.034966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912994, 30.550146, 50.280251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069798, 30.883226, 50.436684>,  <39.163879, 31.083075, 50.530544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069798, 30.883226, 50.436684>,  <38.912994, 30.550146, 50.280251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069798, 30.883226, 50.436684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357688, 0.529615, -0.769134,
		-0.847580, 0.161619, 0.505457,
		0.392004, 0.832699, 0.391082,
		39.187397, 31.133036, 50.554008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400875, 31.036060, 50.348011>,  <38.912994, 30.550146, 50.280251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400875, 31.036060, 50.348011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721874, 31.272699, 50.317001>,  <38.914474, 31.414682, 50.298397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721874, 31.272699, 50.317001>,  <38.400875, 31.036060, 50.348011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721874, 31.272699, 50.317001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476060, 0.556549, -0.680897,
		-0.359673, 0.583323, 0.728265,
		0.802498, 0.591598, -0.077521,
		38.962624, 31.450178, 50.293747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237988, 31.813515, 50.414429>,  <38.400875, 31.036060, 50.348011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237988, 31.813515, 50.414429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586361, 31.825859, 50.218254>,  <38.795383, 31.833265, 50.100552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586361, 31.825859, 50.218254>,  <38.237988, 31.813515, 50.414429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586361, 31.825859, 50.218254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444282, 0.475908, -0.759029,
		0.209975, 0.878953, 0.428196,
		0.870933, 0.030862, -0.490432,
		38.847641, 31.835117, 50.071125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345146, 32.539268, 50.054722>,  <38.237988, 31.813515, 50.414429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345146, 32.539268, 50.054722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589329, 32.291313, 49.857510>,  <38.735840, 32.142540, 49.739182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589329, 32.291313, 49.857510>,  <38.345146, 32.539268, 50.054722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589329, 32.291313, 49.857510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322128, 0.374353, -0.869536,
		0.723582, 0.689635, 0.028844,
		0.610461, -0.619889, -0.493026,
		38.772469, 32.105347, 49.709602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769741, 32.884518, 49.573029>,  <38.345146, 32.539268, 50.054722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769741, 32.884518, 49.573029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775723, 32.516068, 49.417442>,  <38.779312, 32.294998, 49.324089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775723, 32.516068, 49.417442>,  <38.769741, 32.884518, 49.573029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775723, 32.516068, 49.417442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247332, 0.373515, -0.894043,
		0.968815, 0.109573, -0.222240,
		0.014953, -0.921130, -0.388968,
		38.780209, 32.239727, 49.300751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972065, 33.088959, 48.850319>,  <38.769741, 32.884518, 49.573029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972065, 33.088959, 48.850319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829639, 32.715317, 48.840054>,  <38.744183, 32.491131, 48.833893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829639, 32.715317, 48.840054>,  <38.972065, 33.088959, 48.850319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829639, 32.715317, 48.840054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274989, 0.130987, -0.952483,
		0.893085, -0.332087, -0.303509,
		-0.356063, -0.934109, -0.025662,
		38.722820, 32.435085, 48.832355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244144, 32.681309, 48.261974>,  <38.972065, 33.088959, 48.850319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244144, 32.681309, 48.261974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925098, 32.458359, 48.354187>,  <38.733669, 32.324589, 48.409515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925098, 32.458359, 48.354187>,  <39.244144, 32.681309, 48.261974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925098, 32.458359, 48.354187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232729, -0.068220, -0.970146,
		0.556462, -0.827454, -0.075304,
		-0.797614, -0.557374, 0.230535,
		38.685814, 32.291145, 48.423347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262432, 32.167130, 47.766312>,  <39.244144, 32.681309, 48.261974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262432, 32.167130, 47.766312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882145, 32.197384, 47.886593>,  <38.653973, 32.215534, 47.958763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882145, 32.197384, 47.886593>,  <39.262432, 32.167130, 47.766312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882145, 32.197384, 47.886593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309625, -0.179779, -0.933709,
		-0.016557, -0.980795, 0.194336,
		-0.950715, 0.075631, 0.300702,
		38.596931, 32.220074, 47.976803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001110, 31.708359, 47.458374>,  <39.262432, 32.167130, 47.766312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001110, 31.708359, 47.458374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676376, 31.926542, 47.541702>,  <38.481537, 32.057453, 47.591698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676376, 31.926542, 47.541702>,  <39.001110, 31.708359, 47.458374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676376, 31.926542, 47.541702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262339, -0.022006, -0.964725,
		-0.521636, -0.837847, 0.160961,
		-0.811834, 0.545461, 0.208321,
		38.432827, 32.090179, 47.604198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351025, 31.444851, 47.047070>,  <39.001110, 31.708359, 47.458374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351025, 31.444851, 47.047070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285889, 31.833818, 47.113873>,  <38.246807, 32.067200, 47.153954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285889, 31.833818, 47.113873>,  <38.351025, 31.444851, 47.047070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285889, 31.833818, 47.113873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170170, 0.139050, -0.975555,
		-0.971868, -0.187274, 0.142834,
		-0.162835, 0.972416, 0.167006,
		38.237038, 32.125542, 47.163975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663029, 31.607063, 46.784729>,  <38.351025, 31.444851, 47.047070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663029, 31.607063, 46.784729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828564, 31.970789, 46.802135>,  <37.927883, 32.189022, 46.812580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828564, 31.970789, 46.802135>,  <37.663029, 31.607063, 46.784729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828564, 31.970789, 46.802135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134341, 0.108279, -0.985002,
		-0.900386, 0.401781, 0.166967,
		0.413834, 0.909312, 0.043518,
		37.952713, 32.243584, 46.815189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179031, 32.032753, 46.408497>,  <37.663029, 31.607063, 46.784729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179031, 32.032753, 46.408497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513317, 32.251503, 46.428505>,  <37.713890, 32.382751, 46.440510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513317, 32.251503, 46.428505>,  <37.179031, 32.032753, 46.408497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513317, 32.251503, 46.428505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142739, 0.304275, -0.941829,
		-0.530283, 0.779964, 0.332349,
		0.835719, 0.546875, 0.050020,
		37.764034, 32.415565, 46.443512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006275, 32.740753, 46.209297>,  <37.179031, 32.032753, 46.408497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006275, 32.740753, 46.209297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398739, 32.711246, 46.137867>,  <37.634216, 32.693542, 46.095009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398739, 32.711246, 46.137867>,  <37.006275, 32.740753, 46.209297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398739, 32.711246, 46.137867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120830, 0.486975, -0.865018,
		0.150771, 0.870296, 0.468885,
		0.981157, -0.073764, -0.178579,
		37.693085, 32.689117, 46.084293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228889, 33.385437, 45.878288>,  <37.006275, 32.740753, 46.209297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228889, 33.385437, 45.878288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531715, 33.138680, 45.792217>,  <37.713409, 32.990623, 45.740574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531715, 33.138680, 45.792217>,  <37.228889, 33.385437, 45.878288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531715, 33.138680, 45.792217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072963, 0.407117, -0.910457,
		0.649258, 0.673571, 0.353223,
		0.757061, -0.616893, -0.215178,
		37.758835, 32.953613, 45.727665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659588, 33.787598, 45.422577>,  <37.228889, 33.385437, 45.878288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659588, 33.787598, 45.422577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750668, 33.402836, 45.362057>,  <37.805317, 33.171978, 45.325745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750668, 33.402836, 45.362057>,  <37.659588, 33.787598, 45.422577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750668, 33.402836, 45.362057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046715, 0.165998, -0.985019,
		0.972611, 0.217219, 0.082733,
		0.227698, -0.961905, -0.151304,
		37.818977, 33.114265, 45.316666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279972, 33.755585, 44.975475>,  <37.659588, 33.787598, 45.422577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279972, 33.755585, 44.975475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112442, 33.392555, 44.963543>,  <38.011925, 33.174736, 44.956383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112442, 33.392555, 44.963543>,  <38.279972, 33.755585, 44.975475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112442, 33.392555, 44.963543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090869, -0.009205, -0.995820,
		0.903508, -0.419787, 0.086326,
		-0.418827, -0.907576, -0.029829,
		37.986794, 33.120281, 44.954594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668812, 33.358288, 44.482304>,  <38.279972, 33.755585, 44.975475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668812, 33.358288, 44.482304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313015, 33.177727, 44.510689>,  <38.099537, 33.069389, 44.527721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313015, 33.177727, 44.510689>,  <38.668812, 33.358288, 44.482304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313015, 33.177727, 44.510689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040073, -0.077651, -0.996175,
		0.455185, -0.888936, 0.050981,
		-0.889495, -0.451401, 0.070968,
		38.046165, 33.042305, 44.531979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702209, 32.774315, 44.017593>,  <38.668812, 33.358288, 44.482304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702209, 32.774315, 44.017593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314201, 32.861328, 44.060955>,  <38.081398, 32.913536, 44.086971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314201, 32.861328, 44.060955>,  <38.702209, 32.774315, 44.017593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314201, 32.861328, 44.060955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118367, -0.033287, -0.992412,
		-0.212270, -0.975486, 0.058038,
		-0.970016, 0.217529, 0.108399,
		38.023197, 32.926586, 44.093475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421669, 32.417282, 43.425636>,  <38.702209, 32.774315, 44.017593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421669, 32.417282, 43.425636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111649, 32.631512, 43.559776>,  <37.925636, 32.760052, 43.640259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111649, 32.631512, 43.559776>,  <38.421669, 32.417282, 43.425636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111649, 32.631512, 43.559776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459653, -0.113671, -0.880794,
		-0.433614, -0.836801, 0.334280,
		-0.775047, 0.535578, 0.335349,
		37.879135, 32.792187, 43.660381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839989, 32.006306, 43.378780>,  <38.421669, 32.417282, 43.425636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839989, 32.006306, 43.378780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715645, 32.386475, 43.382179>,  <37.641037, 32.614574, 43.384216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715645, 32.386475, 43.382179>,  <37.839989, 32.006306, 43.378780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715645, 32.386475, 43.382179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449944, -0.139282, -0.882129,
		-0.837207, -0.278041, 0.470932,
		-0.310860, 0.950418, 0.008495,
		37.622387, 32.671600, 43.384727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177456, 31.938437, 43.141800>,  <37.839989, 32.006306, 43.378780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177456, 31.938437, 43.141800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231560, 32.332581, 43.100288>,  <37.264023, 32.569065, 43.075382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231560, 32.332581, 43.100288>,  <37.177456, 31.938437, 43.141800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231560, 32.332581, 43.100288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408619, -0.039946, -0.911830,
		-0.902626, 0.165746, 0.397234,
		0.135264, 0.985359, -0.103784,
		37.272141, 32.628189, 43.069153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478161, 32.171120, 42.751972>,  <37.177456, 31.938437, 43.141800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478161, 32.171120, 42.751972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757111, 32.454685, 42.709793>,  <36.924480, 32.624825, 42.684486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757111, 32.454685, 42.709793>,  <36.478161, 32.171120, 42.751972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757111, 32.454685, 42.709793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280982, 0.135078, -0.950159,
		-0.659336, 0.692241, 0.293391,
		0.697370, 0.708912, -0.105446,
		36.966320, 32.667358, 42.678158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117767, 32.768536, 42.447044>,  <36.478161, 32.171120, 42.751972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117767, 32.768536, 42.447044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502712, 32.769073, 42.338333>,  <36.733677, 32.769398, 42.273106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502712, 32.769073, 42.338333>,  <36.117767, 32.768536, 42.447044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502712, 32.769073, 42.338333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269962, 0.120254, -0.955332,
		0.031397, 0.992742, 0.116090,
		0.962359, 0.001345, -0.271778,
		36.791420, 32.769478, 42.256802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021008, 33.227531, 41.889721>,  <36.117767, 32.768536, 42.447044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021008, 33.227531, 41.889721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385979, 33.065422, 41.866989>,  <36.604961, 32.968159, 41.853348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385979, 33.065422, 41.866989>,  <36.021008, 33.227531, 41.889721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385979, 33.065422, 41.866989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033431, 0.064597, -0.997351,
		0.407868, 0.911912, 0.045391,
		0.912429, -0.405270, -0.056833,
		36.659706, 32.943840, 41.849937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544342, 33.618214, 41.454437>,  <36.021008, 33.227531, 41.889721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544342, 33.618214, 41.454437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658539, 33.235252, 41.437077>,  <36.727055, 33.005478, 41.426659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658539, 33.235252, 41.437077>,  <36.544342, 33.618214, 41.454437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658539, 33.235252, 41.437077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126351, 0.082492, -0.988550,
		0.950016, 0.276736, 0.144519,
		0.285489, -0.957399, -0.043403,
		36.744186, 32.948032, 41.424057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027622, 33.572872, 40.997101>,  <36.544342, 33.618214, 41.454437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027622, 33.572872, 40.997101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956047, 33.179333, 40.995255>,  <36.913101, 32.943211, 40.994144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956047, 33.179333, 40.995255>,  <37.027622, 33.572872, 40.997101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956047, 33.179333, 40.995255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076161, -0.009170, -0.997053,
		0.980908, -0.178762, 0.076572,
		-0.178938, -0.983850, -0.004620,
		36.902367, 32.884178, 40.993870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615917, 33.243698, 40.603710>,  <37.027622, 33.572872, 40.997101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615917, 33.243698, 40.603710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280472, 33.025829, 40.600864>,  <37.079205, 32.895107, 40.599159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280472, 33.025829, 40.600864>,  <37.615917, 33.243698, 40.603710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280472, 33.025829, 40.600864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070553, -0.095666, -0.992910,
		0.540133, -0.833173, 0.118656,
		-0.838617, -0.544676, -0.007111,
		37.028885, 32.862427, 40.598732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801201, 32.670425, 40.284714>,  <37.615917, 33.243698, 40.603710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801201, 32.670425, 40.284714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404819, 32.717915, 40.259708>,  <37.166988, 32.746407, 40.244705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404819, 32.717915, 40.259708>,  <37.801201, 32.670425, 40.284714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404819, 32.717915, 40.259708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063969, 0.008472, -0.997916,
		-0.117947, -0.992891, -0.015990,
		-0.990957, 0.118724, -0.062515,
		37.107533, 32.753532, 40.240955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659847, 32.197136, 39.715668>,  <37.801201, 32.670425, 40.284714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659847, 32.197136, 39.715668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332260, 32.425758, 39.736099>,  <37.135708, 32.562931, 39.748360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332260, 32.425758, 39.736099>,  <37.659847, 32.197136, 39.715668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332260, 32.425758, 39.736099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012512, 0.071212, -0.997383,
		-0.573700, -0.817465, -0.051170,
		-0.818970, 0.571558, 0.051082,
		37.086571, 32.597225, 39.751423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302982, 31.896029, 39.138187>,  <37.659847, 32.197136, 39.715668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302982, 31.896029, 39.138187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174145, 32.266594, 39.216175>,  <37.096840, 32.488934, 39.262970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174145, 32.266594, 39.216175>,  <37.302982, 31.896029, 39.138187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174145, 32.266594, 39.216175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054292, 0.187533, -0.980757,
		-0.945148, -0.326486, -0.010107,
		-0.322098, 0.926412, 0.194972,
		37.077515, 32.544518, 39.274666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709862, 31.944641, 38.710842>,  <37.302982, 31.896029, 39.138187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709862, 31.944641, 38.710842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804485, 32.322796, 38.800537>,  <36.861259, 32.549690, 38.854355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804485, 32.322796, 38.800537>,  <36.709862, 31.944641, 38.710842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804485, 32.322796, 38.800537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083175, 0.249640, -0.964760,
		-0.968050, 0.209573, 0.137688,
		0.236560, 0.945389, 0.224233,
		36.875454, 32.606411, 38.867805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239101, 32.449764, 38.368790>,  <36.709862, 31.944641, 38.710842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239101, 32.449764, 38.368790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571686, 32.652847, 38.459042>,  <36.771236, 32.774696, 38.513195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571686, 32.652847, 38.459042>,  <36.239101, 32.449764, 38.368790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571686, 32.652847, 38.459042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069168, 0.308365, -0.948750,
		-0.551266, 0.804452, 0.221275,
		0.831457, 0.507709, 0.225634,
		36.821121, 32.805161, 38.526733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115116, 33.096497, 38.080776>,  <36.239101, 32.449764, 38.368790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115116, 33.096497, 38.080776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512043, 33.072830, 38.124245>,  <36.750198, 33.058632, 38.150326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512043, 33.072830, 38.124245>,  <36.115116, 33.096497, 38.080776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512043, 33.072830, 38.124245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123553, 0.426095, -0.896202,
		0.006715, 0.902742, 0.430130,
		0.992315, -0.059162, 0.108675,
		36.809738, 33.055080, 38.156849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381794, 33.701904, 37.815186>,  <36.115116, 33.096497, 38.080776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381794, 33.701904, 37.815186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718021, 33.485420, 37.805923>,  <36.919758, 33.355530, 37.800365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718021, 33.485420, 37.805923>,  <36.381794, 33.701904, 37.815186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718021, 33.485420, 37.805923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274075, 0.461773, -0.843593,
		0.467253, 0.702751, 0.536484,
		0.840570, -0.541208, -0.023158,
		36.970192, 33.323059, 37.798977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874043, 34.211475, 37.597874>,  <36.381794, 33.701904, 37.815186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874043, 34.211475, 37.597874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012875, 33.842926, 37.527897>,  <37.096172, 33.621796, 37.485909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012875, 33.842926, 37.527897>,  <36.874043, 34.211475, 37.597874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012875, 33.842926, 37.527897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524957, 0.345446, -0.777873,
		0.777147, 0.178144, 0.603579,
		0.347078, -0.921375, -0.174945,
		37.116997, 33.566513, 37.475414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491058, 34.344009, 37.472477>,  <36.874043, 34.211475, 37.597874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491058, 34.344009, 37.472477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454319, 33.983467, 37.303181>,  <37.432278, 33.767143, 37.201603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454319, 33.983467, 37.303181>,  <37.491058, 34.344009, 37.472477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454319, 33.983467, 37.303181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546394, 0.309717, -0.778158,
		0.832477, -0.302724, 0.464047,
		-0.091844, -0.901351, -0.423239,
		37.426765, 33.713062, 37.176208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167084, 34.122784, 37.279137>,  <37.491058, 34.344009, 37.472477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167084, 34.122784, 37.279137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910538, 33.918400, 37.050201>,  <37.756607, 33.795769, 36.912842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910538, 33.918400, 37.050201>,  <38.167084, 34.122784, 37.279137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910538, 33.918400, 37.050201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478978, 0.316090, -0.818943,
		0.599354, -0.799381, 0.042007,
		-0.641369, -0.510957, -0.572335,
		37.718128, 33.765114, 36.878502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655167, 33.933754, 36.814240>,  <38.167084, 34.122784, 37.279137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655167, 33.933754, 36.814240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295341, 33.870022, 36.651562>,  <38.079445, 33.831783, 36.553955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295341, 33.870022, 36.651562>,  <38.655167, 33.933754, 36.814240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295341, 33.870022, 36.651562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367091, 0.228817, -0.901602,
		0.236720, -0.960340, -0.147342,
		-0.899559, -0.159339, -0.406698,
		38.025475, 33.822224, 36.529552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770668, 33.507278, 36.293510>,  <38.655167, 33.933754, 36.814240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770668, 33.507278, 36.293510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444431, 33.726860, 36.220348>,  <38.248688, 33.858608, 36.176449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444431, 33.726860, 36.220348>,  <38.770668, 33.507278, 36.293510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444431, 33.726860, 36.220348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408544, 0.322482, -0.853872,
		-0.409750, -0.771140, -0.487286,
		-0.815596, 0.548951, -0.182907,
		38.199753, 33.891544, 36.165478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710011, 33.415405, 35.585716>,  <38.770668, 33.507278, 36.293510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710011, 33.415405, 35.585716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488129, 33.738560, 35.665337>,  <38.355000, 33.932453, 35.713108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488129, 33.738560, 35.665337>,  <38.710011, 33.415405, 35.585716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488129, 33.738560, 35.665337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435007, 0.485516, -0.758316,
		-0.709278, -0.334050, -0.620754,
		-0.554701, 0.807889, 0.199052,
		38.321716, 33.980927, 35.725052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830128, 33.808228, 35.004288>,  <38.710011, 33.415405, 35.585716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830128, 33.808228, 35.004288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644367, 34.071896, 35.240871>,  <38.532909, 34.230099, 35.382820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644367, 34.071896, 35.240871>,  <38.830128, 33.808228, 35.004288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644367, 34.071896, 35.240871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427514, 0.751735, -0.502122,
		-0.775603, 0.019669, -0.630914,
		-0.464404, 0.659172, 0.591457,
		38.505047, 34.269646, 35.418308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570950, 33.700794, 35.198341>,  <38.830128, 33.808228, 35.004288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570950, 33.700794, 35.198341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501961, 33.839710, 34.829636>,  <39.460567, 33.923061, 34.608414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501961, 33.839710, 34.829636>,  <39.570950, 33.700794, 35.198341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501961, 33.839710, 34.829636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641282, 0.749891, 0.162544,
		0.747669, -0.563074, -0.352049,
		-0.172474, 0.347292, -0.921760,
		39.450218, 33.943897, 34.553108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201096, 34.012695, 34.990215>,  <39.570950, 33.700794, 35.198341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201096, 34.012695, 34.990215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914680, 34.175514, 34.763374>,  <39.742832, 34.273205, 34.627270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914680, 34.175514, 34.763374>,  <40.201096, 34.012695, 34.990215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914680, 34.175514, 34.763374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549757, 0.829463, -0.098781,
		0.430179, -0.382498, -0.817705,
		-0.716040, 0.407046, -0.567099,
		39.699867, 34.297626, 34.593246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484440, 34.273205, 34.446682>,  <40.201096, 34.012695, 34.990215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484440, 34.273205, 34.446682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153797, 34.488266, 34.513191>,  <39.955410, 34.617302, 34.553097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153797, 34.488266, 34.513191>,  <40.484440, 34.273205, 34.446682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153797, 34.488266, 34.513191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556403, 0.825104, 0.098081,
		-0.084460, 0.173591, -0.981190,
		-0.826609, 0.537652, 0.166275,
		39.905815, 34.649563, 34.563072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068909, 34.199829, 34.978714>,  <40.484440, 34.273205, 34.446682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068909, 34.199829, 34.978714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063423, 34.588367, 34.883801>,  <41.060131, 34.821491, 34.826855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063423, 34.588367, 34.883801>,  <41.068909, 34.199829, 34.978714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063423, 34.588367, 34.883801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985567, -0.026910, -0.167133,
		-0.168729, -0.236150, -0.956956,
		-0.013717, 0.971344, -0.237282,
		41.059307, 34.879772, 34.812614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375710, 34.377888, 34.339375>,  <41.068909, 34.199829, 34.978714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375710, 34.377888, 34.339375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389313, 34.713898, 34.555965>,  <41.397476, 34.915504, 34.685921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389313, 34.713898, 34.555965>,  <41.375710, 34.377888, 34.339375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389313, 34.713898, 34.555965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963368, 0.116655, -0.241483,
		-0.266018, 0.529854, -0.805288,
		0.034010, 0.840027, 0.541477,
		41.399517, 34.965904, 34.718407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783401, 34.929878, 33.992218>,  <41.375710, 34.377888, 34.339375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783401, 34.929878, 33.992218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794121, 35.084656, 34.360905>,  <41.800552, 35.177525, 34.582115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794121, 35.084656, 34.360905>,  <41.783401, 34.929878, 33.992218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794121, 35.084656, 34.360905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988929, 0.124359, -0.080956,
		-0.145949, 0.913677, -0.379332,
		0.026794, 0.386948, 0.921712,
		41.802158, 35.200741, 34.637417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430206, 35.253567, 34.351723>,  <41.783401, 34.929878, 33.992218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430206, 35.253567, 34.351723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782539, 35.075573, 34.287071>,  <42.993938, 34.968777, 34.248280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782539, 35.075573, 34.287071>,  <42.430206, 35.253567, 34.351723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782539, 35.075573, 34.287071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454501, -0.699234, -0.551816,
		0.132534, 0.559518, -0.818154,
		0.880831, -0.444986, -0.161629,
		43.046787, 34.942078, 34.238583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576305, 35.217884, 33.636173>,  <42.430206, 35.253567, 34.351723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576305, 35.217884, 33.636173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797523, 34.927460, 33.799622>,  <42.930256, 34.753204, 33.897690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797523, 34.927460, 33.799622>,  <42.576305, 35.217884, 33.636173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797523, 34.927460, 33.799622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372245, -0.654118, -0.658455,
		0.745366, 0.212050, -0.632032,
		0.553049, -0.726061, 0.408623,
		42.963440, 34.709641, 33.922207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905212, 34.871204, 33.038624>,  <42.576305, 35.217884, 33.636173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905212, 34.871204, 33.038624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.892525, 34.632599, 33.359413>,  <42.884911, 34.489437, 33.551888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.892525, 34.632599, 33.359413>,  <42.905212, 34.871204, 33.038624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892525, 34.632599, 33.359413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394838, -0.729641, -0.558325,
		0.918203, -0.334361, -0.212382,
		-0.031719, -0.596512, 0.801977,
		42.883007, 34.453644, 33.600006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046268, 34.319881, 32.640228>,  <42.905212, 34.871204, 33.038624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046268, 34.319881, 32.640228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922276, 34.191147, 32.998074>,  <42.847881, 34.113907, 33.212780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922276, 34.191147, 32.998074>,  <43.046268, 34.319881, 32.640228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922276, 34.191147, 32.998074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361198, -0.830547, -0.423944,
		0.879458, -0.454547, 0.141209,
		-0.309983, -0.321836, 0.894612,
		42.829281, 34.094597, 33.266457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244255, 33.677212, 32.575001>,  <43.046268, 34.319881, 32.640228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244255, 33.677212, 32.575001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.968414, 33.700943, 32.863701>,  <42.802910, 33.715183, 33.036922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.968414, 33.700943, 32.863701>,  <43.244255, 33.677212, 32.575001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968414, 33.700943, 32.863701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473585, -0.790934, -0.387479,
		0.547870, -0.609018, 0.573529,
		-0.689606, 0.059327, 0.721751,
		42.761532, 33.718742, 33.080227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204414, 32.983078, 32.858391>,  <43.244255, 33.677212, 32.575001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204414, 32.983078, 32.858391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880653, 33.185272, 32.977959>,  <42.686398, 33.306587, 33.049698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880653, 33.185272, 32.977959>,  <43.204414, 32.983078, 32.858391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880653, 33.185272, 32.977959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526268, -0.850223, 0.012740,
		0.260588, -0.147001, 0.954193,
		-0.809404, 0.505481, 0.298920,
		42.637833, 33.336918, 33.067635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915337, 32.691982, 33.391010>,  <43.204414, 32.983078, 32.858391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915337, 32.691982, 33.391010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596546, 32.897076, 33.263302>,  <42.405273, 33.020130, 33.186676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596546, 32.897076, 33.263302>,  <42.915337, 32.691982, 33.391010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596546, 32.897076, 33.263302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533863, -0.845210, -0.024715,
		-0.282524, 0.150750, 0.947341,
		-0.796976, 0.512732, -0.319272,
		42.357452, 33.050896, 33.167519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262157, 32.608784, 33.757416>,  <42.915337, 32.691982, 33.391010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262157, 32.608784, 33.757416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155849, 32.709507, 33.385189>,  <42.092064, 32.769939, 33.161854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155849, 32.709507, 33.385189>,  <42.262157, 32.608784, 33.757416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155849, 32.709507, 33.385189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625059, -0.779899, -0.032522,
		-0.733940, 0.573019, 0.364666,
		-0.265767, 0.251807, -0.930570,
		42.076118, 32.785049, 33.106018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475555, 32.475433, 33.713528>,  <42.262157, 32.608784, 33.757416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475555, 32.475433, 33.713528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586620, 32.522274, 33.332123>,  <41.653259, 32.550377, 33.103279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586620, 32.522274, 33.332123>,  <41.475555, 32.475433, 33.713528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586620, 32.522274, 33.332123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528761, -0.810044, -0.253458,
		-0.802068, 0.574558, -0.163004,
		0.277667, 0.117100, -0.953514,
		41.669922, 32.557404, 33.046070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826450, 32.433052, 33.283188>,  <41.475555, 32.475433, 33.713528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826450, 32.433052, 33.283188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123920, 32.358990, 33.026230>,  <41.302402, 32.314552, 32.872055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123920, 32.358990, 33.026230>,  <40.826450, 32.433052, 33.283188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123920, 32.358990, 33.026230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582511, -0.650989, -0.486718,
		-0.328076, 0.736160, -0.591974,
		0.743671, -0.185151, -0.642395,
		41.347023, 32.303444, 32.833511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454082, 32.252197, 32.733437>,  <40.826450, 32.433052, 33.283188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454082, 32.252197, 32.733437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823833, 32.128170, 32.644554>,  <41.045685, 32.053753, 32.591225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823833, 32.128170, 32.644554>,  <40.454082, 32.252197, 32.733437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823833, 32.128170, 32.644554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379755, -0.803139, -0.459079,
		-0.036118, 0.508749, -0.860157,
		0.924382, -0.310068, -0.222208,
		41.101147, 32.035149, 32.577892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524326, 32.003208, 32.007050>,  <40.454082, 32.252197, 32.733437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524326, 32.003208, 32.007050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832867, 31.803352, 32.164722>,  <41.017990, 31.683439, 32.259327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832867, 31.803352, 32.164722>,  <40.524326, 32.003208, 32.007050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832867, 31.803352, 32.164722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460566, -0.865704, -0.196051,
		0.439200, -0.030324, -0.897877,
		0.771351, -0.499637, 0.394183,
		41.064270, 31.653461, 32.282978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720612, 31.508450, 31.527372>,  <40.524326, 32.003208, 32.007050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720612, 31.508450, 31.527372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853199, 31.364393, 31.876183>,  <40.932751, 31.277960, 32.085468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853199, 31.364393, 31.876183>,  <40.720612, 31.508450, 31.527372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853199, 31.364393, 31.876183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392190, -0.893233, -0.219822,
		0.858090, -0.269137, -0.437318,
		0.331465, -0.360139, 0.872027,
		40.952637, 31.256351, 32.137791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722404, 30.861010, 31.331369>,  <40.720612, 31.508450, 31.527372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722404, 30.861010, 31.331369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776596, 30.814425, 31.724934>,  <40.809113, 30.786472, 31.961073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776596, 30.814425, 31.724934>,  <40.722404, 30.861010, 31.331369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776596, 30.814425, 31.724934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368324, -0.927817, -0.059108,
		0.919773, -0.354390, -0.168598,
		0.135481, -0.116464, 0.983911,
		40.817242, 30.779486, 32.020107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141769, 30.323587, 31.514118>,  <40.722404, 30.861010, 31.331369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141769, 30.323587, 31.514118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892925, 30.379658, 31.822231>,  <40.743618, 30.413300, 32.007099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892925, 30.379658, 31.822231>,  <41.141769, 30.323587, 31.514118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892925, 30.379658, 31.822231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346021, -0.931769, -0.109896,
		0.702320, -0.334900, 0.628163,
		-0.622106, 0.140175, 0.770282,
		40.706295, 30.421711, 32.053314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766651, 29.640572, 31.697041>,  <41.141769, 30.323587, 31.514118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766651, 29.640572, 31.697041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539558, 29.831959, 31.964996>,  <40.403305, 29.946793, 32.125771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539558, 29.831959, 31.964996>,  <40.766651, 29.640572, 31.697041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539558, 29.831959, 31.964996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596509, -0.799905, 0.065795,
		0.567327, -0.362241, 0.739541,
		-0.567729, 0.478470, 0.669888,
		40.369240, 29.975500, 32.165962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562824, 29.131670, 32.257458>,  <40.766651, 29.640572, 31.697041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562824, 29.131670, 32.257458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291882, 29.425623, 32.243977>,  <40.129314, 29.601994, 32.235889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291882, 29.425623, 32.243977>,  <40.562824, 29.131670, 32.257458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291882, 29.425623, 32.243977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734109, -0.678193, -0.033746,
		-0.047657, 0.001884, 0.998862,
		-0.677358, 0.734882, -0.033704,
		40.088673, 29.646088, 32.233864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108353, 28.876343, 32.730648>,  <40.562824, 29.131670, 32.257458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108353, 28.876343, 32.730648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883236, 29.145233, 32.538242>,  <39.748165, 29.306568, 32.422798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883236, 29.145233, 32.538242>,  <40.108353, 28.876343, 32.730648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883236, 29.145233, 32.538242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780092, -0.624375, 0.040148,
		-0.273343, 0.397828, 0.875794,
		-0.562796, 0.672226, -0.481012,
		39.714397, 29.346901, 32.393940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475246, 29.056545, 33.151466>,  <40.108353, 28.876343, 32.730648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475246, 29.056545, 33.151466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402237, 29.126459, 32.764450>,  <39.358429, 29.168407, 32.532242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402237, 29.126459, 32.764450>,  <39.475246, 29.056545, 33.151466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402237, 29.126459, 32.764450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730799, -0.682437, 0.014583,
		-0.657736, 0.709739, 0.252296,
		-0.182526, 0.174786, -0.967540,
		39.347481, 29.178894, 32.474190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696316, 29.185671, 33.122337>,  <39.475246, 29.056545, 33.151466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696316, 29.185671, 33.122337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814701, 29.111391, 32.747547>,  <38.885731, 29.066822, 32.522675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814701, 29.111391, 32.747547>,  <38.696316, 29.185671, 33.122337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814701, 29.111391, 32.747547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625414, -0.779100, -0.043139,
		-0.721985, 0.598765, -0.346724,
		0.295963, -0.185701, -0.936975,
		38.903488, 29.055681, 32.466454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127842, 29.208330, 32.744617>,  <38.696316, 29.185671, 33.122337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127842, 29.208330, 32.744617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401161, 28.994675, 32.545498>,  <38.565151, 28.866482, 32.426025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401161, 28.994675, 32.545498>,  <38.127842, 29.208330, 32.744617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401161, 28.994675, 32.545498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613842, -0.789416, 0.004459,
		-0.395350, 0.302521, -0.867283,
		0.683298, -0.534137, -0.497796,
		38.606152, 28.834433, 32.396160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014248, 29.103657, 32.027969>,  <38.127842, 29.208330, 32.744617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014248, 29.103657, 32.027969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214764, 28.807009, 32.206280>,  <38.335072, 28.629021, 32.313267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214764, 28.807009, 32.206280>,  <38.014248, 29.103657, 32.027969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214764, 28.807009, 32.206280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762460, -0.622165, -0.177668,
		0.409106, -0.250822, -0.877337,
		0.501285, -0.741619, 0.445774,
		38.365150, 28.584522, 32.340012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284882, 29.248760, 32.126759>,  <38.014248, 29.103657, 32.027969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284882, 29.248760, 32.126759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135025, 29.607672, 32.220173>,  <37.045113, 29.823019, 32.276222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135025, 29.607672, 32.220173>,  <37.284882, 29.248760, 32.126759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135025, 29.607672, 32.220173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855086, 0.236998, 0.461151,
		0.358434, 0.372456, -0.856038,
		-0.374638, 0.897279, 0.233533,
		37.022633, 29.876856, 32.290234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794098, 29.795164, 31.891396>,  <37.284882, 29.248760, 32.126759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794098, 29.795164, 31.891396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581486, 29.884689, 32.218170>,  <37.453918, 29.938404, 32.414234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581486, 29.884689, 32.218170>,  <37.794098, 29.795164, 31.891396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581486, 29.884689, 32.218170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846056, 0.186815, 0.499290,
		-0.040869, 0.956561, -0.288654,
		-0.531526, 0.223811, 0.816939,
		37.422028, 29.951832, 32.463253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915779, 30.486919, 32.104469>,  <37.794098, 29.795164, 31.891396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915779, 30.486919, 32.104469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815357, 30.249393, 32.410240>,  <37.755104, 30.106878, 32.593704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815357, 30.249393, 32.410240>,  <37.915779, 30.486919, 32.104469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815357, 30.249393, 32.410240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859530, 0.226437, 0.458186,
		-0.445174, 0.772080, 0.453555,
		-0.251054, -0.593817, 0.764430,
		37.740040, 30.071249, 32.639568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233841, 30.733311, 32.710453>,  <37.915779, 30.486919, 32.104469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233841, 30.733311, 32.710453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141167, 30.357540, 32.811489>,  <38.085564, 30.132078, 32.872108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141167, 30.357540, 32.811489>,  <38.233841, 30.733311, 32.710453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141167, 30.357540, 32.811489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855764, -0.073349, 0.512141,
		-0.462592, 0.334809, 0.820921,
		-0.231683, -0.939427, 0.252587,
		38.071663, 30.075712, 32.887264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263607, 30.647526, 33.495907>,  <38.233841, 30.733311, 32.710453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263607, 30.647526, 33.495907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320045, 30.312536, 33.284729>,  <38.353909, 30.111542, 33.158020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320045, 30.312536, 33.284729>,  <38.263607, 30.647526, 33.495907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320045, 30.312536, 33.284729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948432, -0.038553, 0.314627,
		-0.283846, -0.545116, 0.788847,
		0.141096, -0.837474, -0.527948,
		38.362373, 30.061295, 33.126343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374340, 29.934813, 33.950630>,  <38.263607, 30.647526, 33.495907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374340, 29.934813, 33.950630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565434, 29.967485, 33.600750>,  <38.680088, 29.987089, 33.390823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565434, 29.967485, 33.600750>,  <38.374340, 29.934813, 33.950630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565434, 29.967485, 33.600750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876702, 0.019447, 0.480641,
		0.056271, -0.996469, -0.062322,
		0.477731, 0.081684, -0.874700,
		38.708752, 29.991991, 33.338341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695850, 29.649727, 34.599171>,  <38.374340, 29.934813, 33.950630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695850, 29.649727, 34.599171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952198, 29.456175, 34.360794>,  <39.106007, 29.340044, 34.217770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952198, 29.456175, 34.360794>,  <38.695850, 29.649727, 34.599171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952198, 29.456175, 34.360794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764007, 0.477600, 0.433811,
		0.074708, -0.733319, 0.675767,
		0.640868, -0.483882, -0.595942,
		39.144459, 29.311010, 34.182011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240345, 29.469547, 34.972290>,  <38.695850, 29.649727, 34.599171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240345, 29.469547, 34.972290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405499, 29.430296, 34.610096>,  <39.504589, 29.406744, 34.392780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405499, 29.430296, 34.610096>,  <39.240345, 29.469547, 34.972290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405499, 29.430296, 34.610096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869957, 0.336815, 0.360180,
		0.269636, -0.936443, 0.224433,
		0.412881, -0.098129, -0.905483,
		39.529362, 29.400858, 34.338451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406750, 29.894093, 35.448704>,  <39.240345, 29.469547, 34.972290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406750, 29.894093, 35.448704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470486, 29.687405, 35.785183>,  <39.508728, 29.563393, 35.987072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470486, 29.687405, 35.785183>,  <39.406750, 29.894093, 35.448704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470486, 29.687405, 35.785183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299012, -0.837319, -0.457699,
		0.940852, -0.178598, -0.287923,
		0.159340, -0.516719, 0.841197,
		39.518288, 29.532389, 36.037540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097576, 30.154669, 35.515888>,  <39.406750, 29.894093, 35.448704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097576, 30.154669, 35.515888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995197, 30.534246, 35.589642>,  <39.933769, 30.761993, 35.633892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995197, 30.534246, 35.589642>,  <40.097576, 30.154669, 35.515888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995197, 30.534246, 35.589642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868691, 0.309453, -0.386801,
		-0.424109, 0.061169, -0.903543,
		-0.255944, 0.948945, 0.184379,
		39.918415, 30.818930, 35.644955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285618, 30.549242, 34.898449>,  <40.097576, 30.154669, 35.515888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285618, 30.549242, 34.898449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260120, 30.804588, 35.205284>,  <40.244823, 30.957796, 35.389385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260120, 30.804588, 35.205284>,  <40.285618, 30.549242, 34.898449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260120, 30.804588, 35.205284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906377, 0.358698, -0.223193,
		-0.417633, 0.681046, -0.601464,
		-0.063739, 0.638366, 0.767089,
		40.240997, 30.996098, 35.435410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341778, 31.188828, 34.582653>,  <40.285618, 30.549242, 34.898449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341778, 31.188828, 34.582653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458385, 31.190527, 34.965275>,  <40.528351, 31.191547, 35.194847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458385, 31.190527, 34.965275>,  <40.341778, 31.188828, 34.582653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458385, 31.190527, 34.965275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914285, 0.292774, -0.279939,
		-0.281245, 0.956172, 0.081464,
		0.291521, 0.004251, 0.956555,
		40.545841, 31.191803, 35.252243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710758, 31.728243, 34.676517>,  <40.341778, 31.188828, 34.582653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710758, 31.728243, 34.676517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818130, 31.532635, 35.008495>,  <40.882553, 31.415270, 35.207680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818130, 31.532635, 35.008495>,  <40.710758, 31.728243, 34.676517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818130, 31.532635, 35.008495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954586, 0.250660, -0.161046,
		-0.129278, 0.835480, 0.534098,
		0.268428, -0.489022, 0.829942,
		40.898659, 31.385927, 35.257477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061275, 32.212334, 35.046719>,  <40.710758, 31.728243, 34.676517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061275, 32.212334, 35.046719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175861, 31.843971, 35.152454>,  <41.244614, 31.622955, 35.215897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175861, 31.843971, 35.152454>,  <41.061275, 32.212334, 35.046719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175861, 31.843971, 35.152454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922914, 0.191164, -0.334194,
		0.257228, 0.339699, 0.904676,
		0.286467, -0.920903, 0.264340,
		41.261803, 31.567701, 35.231758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724934, 32.300819, 35.453503>,  <41.061275, 32.212334, 35.046719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724934, 32.300819, 35.453503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724491, 31.910732, 35.365002>,  <41.724224, 31.676680, 35.311901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724491, 31.910732, 35.365002>,  <41.724934, 32.300819, 35.453503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724491, 31.910732, 35.365002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988241, 0.032761, -0.149349,
		0.152896, -0.218815, 0.963713,
		-0.001107, -0.975216, -0.221251,
		41.724159, 31.618168, 35.298626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244919, 31.988928, 35.827000>,  <41.724934, 32.300819, 35.453503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244919, 31.988928, 35.827000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181339, 31.690294, 35.568588>,  <42.143192, 31.511114, 35.413544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181339, 31.690294, 35.568588>,  <42.244919, 31.988928, 35.827000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181339, 31.690294, 35.568588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963485, -0.260115, 0.063542,
		-0.215480, -0.612335, 0.760667,
		-0.158952, -0.746583, -0.646025,
		42.133656, 31.466320, 35.374779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559429, 31.341211, 36.076736>,  <42.244919, 31.988928, 35.827000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559429, 31.341211, 36.076736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509617, 31.277679, 35.684967>,  <42.479729, 31.239561, 35.449905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509617, 31.277679, 35.684967>,  <42.559429, 31.341211, 36.076736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509617, 31.277679, 35.684967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978374, -0.183963, -0.094562,
		-0.165157, -0.970016, 0.178304,
		-0.124528, -0.158830, -0.979421,
		42.472260, 31.230030, 35.391140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908031, 30.790646, 35.965546>,  <42.559429, 31.341211, 36.076736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908031, 30.790646, 35.965546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.892872, 30.997318, 35.623409>,  <42.883774, 31.121323, 35.418129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.892872, 30.997318, 35.623409>,  <42.908031, 30.790646, 35.965546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892872, 30.997318, 35.623409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955502, -0.231842, -0.182388,
		-0.292540, -0.824190, -0.484904,
		-0.037901, 0.516682, -0.855338,
		42.881500, 31.152323, 35.366806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419456, 30.621719, 35.479820>,  <42.908031, 30.790646, 35.965546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419456, 30.621719, 35.479820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308483, 30.976679, 35.332550>,  <43.241901, 31.189655, 35.244186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308483, 30.976679, 35.332550>,  <43.419456, 30.621719, 35.479820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308483, 30.976679, 35.332550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960395, 0.266505, -0.081335,
		0.025945, -0.376160, -0.926191,
		-0.277430, 0.887400, -0.368177,
		43.225254, 31.242899, 35.222095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027496, 30.771791, 35.040997>,  <43.419456, 30.621719, 35.479820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027496, 30.771791, 35.040997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843937, 31.126884, 35.055660>,  <43.733799, 31.339939, 35.064457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843937, 31.126884, 35.055660>,  <44.027496, 30.771791, 35.040997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843937, 31.126884, 35.055660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877162, 0.459232, -0.140334,
		-0.141412, -0.032247, -0.989426,
		-0.458901, 0.887731, 0.036655,
		43.706268, 31.393204, 35.066658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.234695, 31.181715, 34.463280>,  <44.027496, 30.771791, 35.040997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.234695, 31.181715, 34.463280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117107, 31.441671, 34.743629>,  <44.046555, 31.597645, 34.911839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117107, 31.441671, 34.743629>,  <44.234695, 31.181715, 34.463280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.117107, 31.441671, 34.743629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806850, 0.561842, -0.182555,
		-0.512422, 0.511838, -0.689526,
		-0.293966, 0.649889, 0.700877,
		44.028919, 31.636639, 34.953892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236862, 31.723900, 34.121479>,  <44.234695, 31.181715, 34.463280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236862, 31.723900, 34.121479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259727, 31.857775, 34.497715>,  <44.273445, 31.938099, 34.723457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259727, 31.857775, 34.497715>,  <44.236862, 31.723900, 34.121479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259727, 31.857775, 34.497715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624945, 0.722727, -0.295143,
		-0.778573, 0.604691, -0.167847,
		0.057163, 0.334686, 0.940594,
		44.276875, 31.958181, 34.779892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041336, 32.449333, 34.167362>,  <44.236862, 31.723900, 34.121479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041336, 32.449333, 34.167362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230415, 32.402397, 34.516712>,  <44.343864, 32.374237, 34.726322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230415, 32.402397, 34.516712>,  <44.041336, 32.449333, 34.167362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230415, 32.402397, 34.516712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378594, 0.922009, -0.081035,
		-0.795751, 0.368960, 0.480259,
		0.472702, -0.117340, 0.873375,
		44.372227, 32.367195, 34.778725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824890, 33.068863, 34.633961>,  <44.041336, 32.449333, 34.167362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824890, 33.068863, 34.633961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173737, 32.923851, 34.765408>,  <44.383045, 32.836845, 34.844276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173737, 32.923851, 34.765408>,  <43.824890, 33.068863, 34.633961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173737, 32.923851, 34.765408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397896, 0.916322, -0.045082,
		-0.284780, 0.170074, 0.943385,
		0.872112, -0.362531, 0.328622,
		44.435371, 32.815090, 34.863995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081913, 33.504829, 35.153076>,  <43.824890, 33.068863, 34.633961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081913, 33.504829, 35.153076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420628, 33.331711, 35.029377>,  <44.623856, 33.227840, 34.955158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420628, 33.331711, 35.029377>,  <44.081913, 33.504829, 35.153076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420628, 33.331711, 35.029377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429230, 0.899343, -0.083323,
		0.314184, -0.062182, 0.947323,
		0.846788, -0.432799, -0.309250,
		44.674664, 33.201870, 34.936604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748154, 33.810730, 35.554138>,  <44.081913, 33.504829, 35.153076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748154, 33.810730, 35.554138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.887531, 33.615681, 35.233936>,  <44.971157, 33.498650, 35.041813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.887531, 33.615681, 35.233936>,  <44.748154, 33.810730, 35.554138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.887531, 33.615681, 35.233936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591536, 0.776876, -0.215751,
		0.727100, -0.398353, 0.559143,
		0.348440, -0.487626, -0.800507,
		44.992062, 33.469395, 34.993786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294643, 34.194229, 35.422619>,  <44.748154, 33.810730, 35.554138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294643, 34.194229, 35.422619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295696, 33.946774, 35.108349>,  <45.296329, 33.798302, 34.919788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295696, 33.946774, 35.108349>,  <45.294643, 34.194229, 35.422619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295696, 33.946774, 35.108349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721629, 0.545080, -0.426777,
		0.692275, -0.565841, 0.447861,
		0.002632, -0.618637, -0.785673,
		45.296486, 33.761181, 34.872646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.023365, 33.766136, 35.290771>,  <45.294643, 34.194229, 35.422619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.023365, 33.766136, 35.290771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835140, 33.820553, 34.942047>,  <45.722206, 33.853203, 34.732811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835140, 33.820553, 34.942047>,  <46.023365, 33.766136, 35.290771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835140, 33.820553, 34.942047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776581, 0.532939, -0.336003,
		0.418915, -0.835146, -0.356429,
		-0.470567, 0.136039, -0.871815,
		45.693970, 33.861366, 34.680504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.489864, 33.596794, 34.658611>,  <46.023365, 33.766136, 35.290771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.489864, 33.596794, 34.658611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239117, 33.898079, 34.578899>,  <46.088669, 34.078850, 34.531071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239117, 33.898079, 34.578899>,  <46.489864, 33.596794, 34.658611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.239117, 33.898079, 34.578899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770458, 0.561232, -0.302346,
		-0.115885, -0.343071, -0.932134,
		-0.626869, 0.753207, -0.199283,
		46.051056, 34.124043, 34.519115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.654129, 33.727154, 33.996929>,  <46.489864, 33.596794, 34.658611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.654129, 33.727154, 33.996929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.564308, 34.033394, 34.238071>,  <46.510418, 34.217136, 34.382755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.564308, 34.033394, 34.238071>,  <46.654129, 33.727154, 33.996929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.564308, 34.033394, 34.238071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932218, 0.348953, -0.095923,
		-0.283807, 0.540455, -0.792062,
		-0.224550, 0.765598, 0.602857,
		46.496944, 34.263073, 34.418930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.837101, 34.435112, 33.661507>,  <46.654129, 33.727154, 33.996929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.837101, 34.435112, 33.661507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.856541, 34.433521, 34.061031>,  <46.868202, 34.432568, 34.300747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.856541, 34.433521, 34.061031>,  <46.837101, 34.435112, 33.661507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.856541, 34.433521, 34.061031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940253, 0.337569, -0.044403,
		-0.336991, 0.941292, 0.020147,
		0.048597, -0.003980, 0.998811,
		46.871120, 34.432327, 34.360676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.191727, 34.997940, 33.912571>,  <46.837101, 34.435112, 33.661507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.191727, 34.997940, 33.912571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236645, 34.778511, 34.243980>,  <47.263596, 34.646854, 34.442825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.236645, 34.778511, 34.243980>,  <47.191727, 34.997940, 33.912571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.236645, 34.778511, 34.243980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887655, 0.430131, 0.164488,
		-0.446609, 0.716974, 0.535246,
		0.112292, -0.548575, 0.828526,
		47.270332, 34.613937, 34.492538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.183563, 35.398403, 34.603100>,  <47.191727, 34.997940, 33.912571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.183563, 35.398403, 34.603100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.407085, 35.067307, 34.623451>,  <47.541199, 34.868649, 34.635662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.407085, 35.067307, 34.623451>,  <47.183563, 35.398403, 34.603100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.407085, 35.067307, 34.623451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788627, 0.549369, 0.276156,
		-0.256534, -0.114195, 0.959766,
		0.558801, -0.827740, 0.050874,
		47.574726, 34.818985, 34.638714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.602154, 35.268642, 35.233669>,  <47.183563, 35.398403, 34.603100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.602154, 35.268642, 35.233669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.811249, 35.095688, 34.939789>,  <47.936707, 34.991917, 34.763458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.811249, 35.095688, 34.939789>,  <47.602154, 35.268642, 35.233669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.811249, 35.095688, 34.939789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814907, 0.506528, 0.281701,
		0.250346, -0.745972, 0.617133,
		0.522736, -0.432383, -0.734705,
		47.968071, 34.965973, 34.719376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.648159, 35.845436, 44.883476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.270767, 35.897461, 45.005417>,  <36.044331, 35.928677, 45.078579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.270767, 35.897461, 45.005417>,  <36.648159, 35.845436, 44.883476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270767, 35.897461, 45.005417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313920, -0.055624, -0.947819,
		-0.106318, -0.989944, 0.093309,
		-0.943478, 0.130062, 0.304849,
		35.987724, 35.936478, 45.096870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206329, 35.405220, 44.497063>,  <36.648159, 35.845436, 44.883476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206329, 35.405220, 44.497063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.939644, 35.670135, 44.633808>,  <35.779633, 35.829082, 44.715855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.939644, 35.670135, 44.633808>,  <36.206329, 35.405220, 44.497063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939644, 35.670135, 44.633808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533055, -0.103141, -0.839771,
		-0.520908, -0.742118, 0.421800,
		-0.666714, 0.662286, 0.341863,
		35.739628, 35.868820, 44.736366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677952, 35.263618, 44.034206>,  <36.206329, 35.405220, 44.497063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677952, 35.263618, 44.034206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.526463, 35.581940, 44.223213>,  <35.435570, 35.772930, 44.336617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.526463, 35.581940, 44.223213>,  <35.677952, 35.263618, 44.034206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526463, 35.581940, 44.223213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562706, 0.207353, -0.800230,
		-0.734800, -0.568954, 0.369271,
		-0.378724, 0.795799, 0.472516,
		35.412846, 35.820679, 44.364967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911591, 35.269459, 43.961964>,  <35.677952, 35.263618, 44.034206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911591, 35.269459, 43.961964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.045170, 35.638294, 44.040176>,  <35.125317, 35.859596, 44.087105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.045170, 35.638294, 44.040176>,  <34.911591, 35.269459, 43.961964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045170, 35.638294, 44.040176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501245, 0.349402, -0.791626,
		-0.798268, 0.166353, 0.578874,
		0.333949, 0.922087, 0.195533,
		35.145355, 35.914921, 44.098835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375061, 35.773682, 43.705570>,  <34.911591, 35.269459, 43.961964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375061, 35.773682, 43.705570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.714554, 35.984627, 43.721336>,  <34.918247, 36.111195, 43.730797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.714554, 35.984627, 43.721336>,  <34.375061, 35.773682, 43.705570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714554, 35.984627, 43.721336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265158, 0.488854, -0.831091,
		-0.457550, 0.694920, 0.554738,
		0.848728, 0.527359, 0.039411,
		34.969173, 36.142834, 43.733158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179539, 36.509621, 43.575836>,  <34.375061, 35.773682, 43.705570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179539, 36.509621, 43.575836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.564537, 36.441692, 43.491199>,  <34.795536, 36.400936, 43.440418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.564537, 36.441692, 43.491199>,  <34.179539, 36.509621, 43.575836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564537, 36.441692, 43.491199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106122, 0.482107, -0.869661,
		0.249692, 0.859497, 0.446003,
		0.962493, -0.169816, -0.211589,
		34.853287, 36.390747, 43.427723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436150, 37.132343, 43.259178>,  <34.179539, 36.509621, 43.575836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436150, 37.132343, 43.259178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716671, 36.864239, 43.162083>,  <34.884983, 36.703377, 43.103825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716671, 36.864239, 43.162083>,  <34.436150, 37.132343, 43.259178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716671, 36.864239, 43.162083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113135, 0.440849, -0.890423,
		0.703833, 0.596990, 0.384997,
		0.701299, -0.670265, -0.242743,
		34.927059, 36.663158, 43.089260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986359, 37.444901, 42.854317>,  <34.436150, 37.132343, 43.259178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986359, 37.444901, 42.854317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.033775, 37.057320, 42.767532>,  <35.062225, 36.824772, 42.715462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.033775, 37.057320, 42.767532>,  <34.986359, 37.444901, 42.854317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033775, 37.057320, 42.767532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121608, 0.231028, -0.965317,
		0.985474, 0.088048, 0.145220,
		0.118544, -0.968955, -0.216965,
		35.069340, 36.766632, 42.702442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487106, 37.434921, 42.291424>,  <34.986359, 37.444901, 42.854317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487106, 37.434921, 42.291424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.308811, 37.079494, 42.248035>,  <35.201836, 36.866238, 42.222004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.308811, 37.079494, 42.248035>,  <35.487106, 37.434921, 42.291424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308811, 37.079494, 42.248035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051045, 0.095748, -0.994096,
		0.893707, -0.448643, 0.002678,
		-0.445737, -0.888568, -0.108472,
		35.175091, 36.812923, 42.215492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868183, 37.057907, 41.799210>,  <35.487106, 37.434921, 42.291424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868183, 37.057907, 41.799210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.527657, 36.850189, 41.829159>,  <35.323341, 36.725559, 41.847126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.527657, 36.850189, 41.829159>,  <35.868183, 37.057907, 41.799210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527657, 36.850189, 41.829159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083117, -0.274382, -0.958022,
		0.518034, -0.809353, 0.276747,
		-0.851312, -0.519290, 0.074868,
		35.272263, 36.694401, 41.851620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925930, 36.359596, 41.670734>,  <35.868183, 37.057907, 41.799210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925930, 36.359596, 41.670734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.549942, 36.440331, 41.560665>,  <35.324348, 36.488770, 41.494625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.549942, 36.440331, 41.560665>,  <35.925930, 36.359596, 41.670734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549942, 36.440331, 41.560665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180350, -0.390740, -0.902660,
		-0.289710, -0.898101, 0.330883,
		-0.939969, 0.201835, -0.275174,
		35.267952, 36.500881, 41.478111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788158, 35.898628, 41.226494>,  <35.925930, 36.359596, 41.670734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788158, 35.898628, 41.226494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.483379, 36.143009, 41.140541>,  <35.300514, 36.289639, 41.088970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.483379, 36.143009, 41.140541>,  <35.788158, 35.898628, 41.226494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483379, 36.143009, 41.140541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126114, -0.185467, -0.974524,
		-0.635243, -0.769634, 0.064266,
		-0.761946, 0.610955, -0.214878,
		35.254795, 36.326294, 41.076077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335930, 35.491520, 40.902897>,  <35.788158, 35.898628, 41.226494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335930, 35.491520, 40.902897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.251438, 35.860123, 40.772545>,  <35.200741, 36.081284, 40.694332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.251438, 35.860123, 40.772545>,  <35.335930, 35.491520, 40.902897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251438, 35.860123, 40.772545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177301, -0.291749, -0.939918,
		-0.961221, -0.256320, -0.101758,
		-0.211233, 0.921511, -0.325881,
		35.188068, 36.136578, 40.674782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849720, 35.381523, 40.378925>,  <35.335930, 35.491520, 40.902897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849720, 35.381523, 40.378925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.978611, 35.755371, 40.318722>,  <35.055946, 35.979679, 40.282600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.978611, 35.755371, 40.318722>,  <34.849720, 35.381523, 40.378925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978611, 35.755371, 40.318722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018784, -0.165269, -0.986070,
		-0.946475, 0.314915, -0.070810,
		0.322231, 0.934620, -0.150508,
		35.075279, 36.035759, 40.273571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517754, 35.572536, 39.641460>,  <34.849720, 35.381523, 40.378925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517754, 35.572536, 39.641460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.788651, 35.861870, 39.695332>,  <34.951187, 36.035469, 39.727654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.788651, 35.861870, 39.695332>,  <34.517754, 35.572536, 39.641460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788651, 35.861870, 39.695332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172930, 0.021430, -0.984701,
		-0.715149, 0.690171, -0.110572,
		0.677242, 0.723329, 0.134677,
		34.991821, 36.078869, 39.735733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368073, 36.138317, 39.195015>,  <34.517754, 35.572536, 39.641460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368073, 36.138317, 39.195015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.749733, 36.184967, 39.305279>,  <34.978729, 36.212955, 39.371437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.749733, 36.184967, 39.305279>,  <34.368073, 36.138317, 39.195015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749733, 36.184967, 39.305279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231553, 0.295979, -0.926704,
		-0.189662, 0.948049, 0.255406,
		0.954155, 0.116621, 0.275660,
		35.035980, 36.219952, 39.387978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642715, 36.837952, 38.996891>,  <34.368073, 36.138317, 39.195015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642715, 36.837952, 38.996891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.958912, 36.597019, 39.041290>,  <35.148632, 36.452461, 39.067932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.958912, 36.597019, 39.041290>,  <34.642715, 36.837952, 38.996891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958912, 36.597019, 39.041290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255221, 0.159200, -0.953686,
		0.556760, 0.782213, 0.279573,
		0.790494, -0.602327, 0.111001,
		35.196060, 36.416321, 39.074589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180843, 37.242706, 38.712059>,  <34.642715, 36.837952, 38.996891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180843, 37.242706, 38.712059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.302212, 36.862392, 38.686932>,  <35.375034, 36.634205, 38.671856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.302212, 36.862392, 38.686932>,  <35.180843, 37.242706, 38.712059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302212, 36.862392, 38.686932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221284, 0.134440, -0.965898,
		0.926805, 0.279176, 0.251186,
		0.303425, -0.950782, -0.062822,
		35.393238, 36.577156, 38.668083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779629, 37.254944, 38.332031>,  <35.180843, 37.242706, 38.712059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779629, 37.254944, 38.332031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.679314, 36.868687, 38.304794>,  <35.619125, 36.636932, 38.288452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.679314, 36.868687, 38.304794>,  <35.779629, 37.254944, 38.332031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679314, 36.868687, 38.304794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230070, 0.008866, -0.973134,
		0.940306, -0.259711, 0.219943,
		-0.250783, -0.965646, -0.068088,
		35.604080, 36.578995, 38.284367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370155, 36.955521, 38.045120>,  <35.779629, 37.254944, 38.332031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370155, 36.955521, 38.045120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.061466, 36.705181, 37.999928>,  <35.876255, 36.554977, 37.972813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.061466, 36.705181, 37.999928>,  <36.370155, 36.955521, 38.045120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061466, 36.705181, 37.999928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147909, -0.003842, -0.988994,
		0.618524, -0.779937, 0.095533,
		-0.771720, -0.625847, -0.112983,
		35.829948, 36.517426, 37.966034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501335, 36.656639, 37.440273>,  <36.370155, 36.955521, 38.045120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501335, 36.656639, 37.440273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.122662, 36.536476, 37.486839>,  <35.895458, 36.464378, 37.514778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.122662, 36.536476, 37.486839>,  <36.501335, 36.656639, 37.440273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122662, 36.536476, 37.486839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079927, -0.131056, -0.988148,
		0.312100, -0.944766, 0.100058,
		-0.946681, -0.300403, 0.116415,
		35.838657, 36.446354, 37.521763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438892, 35.979019, 37.156216>,  <36.501335, 36.656639, 37.440273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438892, 35.979019, 37.156216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.086838, 36.168907, 37.155159>,  <35.875607, 36.282841, 37.154526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.086838, 36.168907, 37.155159>,  <36.438892, 35.979019, 37.156216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086838, 36.168907, 37.155159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094471, -0.180597, -0.979010,
		-0.465231, -0.861410, 0.203797,
		-0.880134, 0.474719, -0.002641,
		35.822796, 36.311321, 37.154366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870434, 35.865021, 36.558224>,  <36.438892, 35.979019, 37.156216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870434, 35.865021, 36.558224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.254471, 35.946568, 36.481628>,  <37.484894, 35.995495, 36.435673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.254471, 35.946568, 36.481628>,  <36.870434, 35.865021, 36.558224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254471, 35.946568, 36.481628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263267, -0.427568, 0.864798,
		0.094428, -0.880696, -0.464175,
		0.960091, 0.203863, -0.191484,
		37.542500, 36.007725, 36.424183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302521, 35.307468, 36.667988>,  <36.870434, 35.865021, 36.558224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302521, 35.307468, 36.667988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571442, 35.602913, 36.687813>,  <37.732796, 35.780182, 36.699707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571442, 35.602913, 36.687813>,  <37.302521, 35.307468, 36.667988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571442, 35.602913, 36.687813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170125, -0.219319, 0.960706,
		0.720461, -0.637455, -0.273106,
		0.672305, 0.738614, 0.049564,
		37.773132, 35.824497, 36.702682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889141, 35.000225, 37.070831>,  <37.302521, 35.307468, 36.667988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889141, 35.000225, 37.070831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.930450, 35.397568, 37.091114>,  <37.955238, 35.635975, 37.103283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.930450, 35.397568, 37.091114>,  <37.889141, 35.000225, 37.070831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930450, 35.397568, 37.091114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208322, -0.071454, 0.975447,
		0.972592, -0.090177, -0.214318,
		0.103276, 0.993359, 0.050710,
		37.961433, 35.695576, 37.106327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543289, 35.230003, 37.325508>,  <37.889141, 35.000225, 37.070831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543289, 35.230003, 37.325508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278934, 35.514889, 37.420147>,  <38.120323, 35.685822, 37.476929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278934, 35.514889, 37.420147>,  <38.543289, 35.230003, 37.325508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278934, 35.514889, 37.420147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242222, -0.095955, 0.965464,
		0.710321, 0.695372, -0.109099,
		-0.660888, 0.712216, 0.236594,
		38.080669, 35.728554, 37.491123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954910, 35.618721, 37.918304>,  <38.543289, 35.230003, 37.325508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954910, 35.618721, 37.918304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.585789, 35.772316, 37.930828>,  <38.364315, 35.864471, 37.938343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.585789, 35.772316, 37.930828>,  <38.954910, 35.618721, 37.918304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585789, 35.772316, 37.930828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052705, 0.045319, 0.997581,
		0.381638, 0.922226, -0.062059,
		-0.922808, 0.383986, 0.031311,
		38.308945, 35.887512, 37.940220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998745, 36.144108, 38.385830>,  <38.954910, 35.618721, 37.918304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998745, 36.144108, 38.385830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.606785, 36.064331, 38.384567>,  <38.371609, 36.016464, 38.383808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.606785, 36.064331, 38.384567>,  <38.998745, 36.144108, 38.385830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606785, 36.064331, 38.384567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002613, -0.028662, 0.999586,
		-0.199449, 0.979491, 0.028607,
		-0.979905, -0.199441, -0.003157,
		38.312813, 36.004498, 38.383621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858257, 36.390404, 38.944798>,  <38.998745, 36.144108, 38.385830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858257, 36.390404, 38.944798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.513100, 36.205250, 38.863644>,  <38.306007, 36.094158, 38.814953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.513100, 36.205250, 38.863644>,  <38.858257, 36.390404, 38.944798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513100, 36.205250, 38.863644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118744, -0.204517, 0.971634,
		-0.491244, 0.862505, 0.121511,
		-0.862890, -0.462880, -0.202885,
		38.254234, 36.066387, 38.802776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180359, 36.714817, 39.297478>,  <38.858257, 36.390404, 38.944798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180359, 36.714817, 39.297478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.134281, 36.323242, 39.230045>,  <38.106636, 36.088299, 39.189587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.134281, 36.323242, 39.230045>,  <38.180359, 36.714817, 39.297478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134281, 36.323242, 39.230045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080353, -0.159971, 0.983846,
		-0.990088, 0.126881, -0.060233,
		-0.115196, -0.978933, -0.168581,
		38.099724, 36.029564, 39.179470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613480, 36.506538, 39.723347>,  <38.180359, 36.714817, 39.297478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613480, 36.506538, 39.723347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786308, 36.162048, 39.616306>,  <37.890007, 35.955357, 39.552082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786308, 36.162048, 39.616306>,  <37.613480, 36.506538, 39.723347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786308, 36.162048, 39.616306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029474, -0.310051, 0.950263,
		-0.901357, -0.402696, -0.159349,
		0.432073, -0.861223, -0.267598,
		37.915932, 35.903683, 39.536026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219616, 36.021317, 40.071175>,  <37.613480, 36.506538, 39.723347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219616, 36.021317, 40.071175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.577839, 35.867264, 39.982037>,  <37.792770, 35.774834, 39.928555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.577839, 35.867264, 39.982037>,  <37.219616, 36.021317, 40.071175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577839, 35.867264, 39.982037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150109, -0.209954, 0.966119,
		-0.418868, -0.898662, -0.130213,
		0.895554, -0.385130, -0.222841,
		37.846504, 35.751724, 39.915184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283886, 35.309822, 40.461491>,  <37.219616, 36.021317, 40.071175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283886, 35.309822, 40.461491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646851, 35.451286, 40.370697>,  <37.864632, 35.536163, 40.316223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646851, 35.451286, 40.370697>,  <37.283886, 35.309822, 40.461491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646851, 35.451286, 40.370697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266464, -0.066564, 0.961544,
		0.324952, -0.933002, -0.154640,
		0.907415, 0.353661, -0.226982,
		37.919075, 35.557384, 40.302601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661129, 34.905502, 40.826946>,  <37.283886, 35.309822, 40.461491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661129, 34.905502, 40.826946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.901340, 35.218822, 40.762680>,  <38.045467, 35.406815, 40.724121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.901340, 35.218822, 40.762680>,  <37.661129, 34.905502, 40.826946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901340, 35.218822, 40.762680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321148, -0.052262, 0.945586,
		0.732279, -0.619445, -0.282939,
		0.600525, 0.783298, -0.160664,
		38.081497, 35.453812, 40.714481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225803, 34.719978, 41.135696>,  <37.661129, 34.905502, 40.826946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225803, 34.719978, 41.135696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.259949, 35.116764, 41.098351>,  <38.280437, 35.354836, 41.075943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.259949, 35.116764, 41.098351>,  <38.225803, 34.719978, 41.135696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259949, 35.116764, 41.098351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250004, 0.069387, 0.965755,
		0.964474, -0.105783, -0.242072,
		0.085364, 0.991965, -0.093368,
		38.285557, 35.414352, 41.070339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762032, 34.820335, 41.494095>,  <38.225803, 34.719978, 41.135696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762032, 34.820335, 41.494095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570019, 35.170815, 41.476940>,  <38.454811, 35.381104, 41.466648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570019, 35.170815, 41.476940>,  <38.762032, 34.820335, 41.494095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570019, 35.170815, 41.476940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277344, 0.197966, 0.940154,
		0.832255, 0.439409, -0.338039,
		-0.480033, 0.876201, -0.042890,
		38.426010, 35.433674, 41.464073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291836, 35.335274, 41.444191>,  <38.762032, 34.820335, 41.494095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291836, 35.335274, 41.444191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.938179, 35.434624, 41.602486>,  <38.725986, 35.494236, 41.697460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.938179, 35.434624, 41.602486>,  <39.291836, 35.335274, 41.444191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938179, 35.434624, 41.602486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442298, 0.172007, 0.880219,
		0.150559, 0.953269, -0.261936,
		-0.884140, 0.248379, 0.395732,
		38.672935, 35.509136, 41.721207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479870, 35.865669, 41.903957>,  <39.291836, 35.335274, 41.444191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479870, 35.865669, 41.903957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.120087, 35.751549, 42.036369>,  <38.904217, 35.683079, 42.115814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.120087, 35.751549, 42.036369>,  <39.479870, 35.865669, 41.903957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120087, 35.751549, 42.036369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312217, 0.110474, 0.943566,
		-0.305768, 0.952051, -0.010292,
		-0.899459, -0.285299, 0.331025,
		38.850250, 35.665958, 42.135677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569386, 36.022827, 42.582348>,  <39.479870, 35.865669, 41.903957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569386, 36.022827, 42.582348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208755, 35.851456, 42.606388>,  <38.992378, 35.748634, 42.620811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208755, 35.851456, 42.606388>,  <39.569386, 36.022827, 42.582348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208755, 35.851456, 42.606388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132050, -0.140235, 0.981273,
		-0.411978, 0.892627, 0.183007,
		-0.901575, -0.428429, 0.060097,
		38.938282, 35.722927, 42.624416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246441, 36.437233, 43.164837>,  <39.569386, 36.022827, 42.582348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246441, 36.437233, 43.164837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.068996, 36.083370, 43.107445>,  <38.962528, 35.871052, 43.073009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.068996, 36.083370, 43.107445>,  <39.246441, 36.437233, 43.164837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068996, 36.083370, 43.107445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209955, -0.053061, 0.976270,
		-0.871280, 0.463208, -0.162201,
		-0.443610, -0.884660, -0.143484,
		38.935913, 35.817974, 43.064400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.589951, 36.456280, 43.491875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671600, 36.066105, 43.458740>,  <38.720592, 35.832001, 43.438862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671600, 36.066105, 43.458740>,  <38.589951, 36.456280, 43.491875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671600, 36.066105, 43.458740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029824, -0.078379, 0.996477,
		-0.978490, -0.205879, 0.013092,
		0.204127, -0.975434, -0.082833,
		38.732838, 35.773476, 43.433891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027187, 36.144356, 43.818264>,  <38.589951, 36.456280, 43.491875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027187, 36.144356, 43.818264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289555, 35.842518, 43.810684>,  <38.446976, 35.661415, 43.806137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289555, 35.842518, 43.810684>,  <38.027187, 36.144356, 43.818264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289555, 35.842518, 43.810684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291518, -0.276389, 0.915765,
		-0.696269, -0.595142, -0.401267,
		0.655916, -0.754595, -0.018947,
		38.486328, 35.616138, 43.805000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607941, 35.538975, 43.993618>,  <38.027187, 36.144356, 43.818264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607941, 35.538975, 43.993618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.990421, 35.481998, 44.095898>,  <38.219910, 35.447815, 44.157265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.990421, 35.481998, 44.095898>,  <37.607941, 35.538975, 43.993618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990421, 35.481998, 44.095898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288924, -0.319526, 0.902456,
		-0.046840, -0.936811, -0.346686,
		0.956205, -0.142437, 0.255700,
		38.277283, 35.439266, 44.172607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633667, 34.952713, 44.469402>,  <37.607941, 35.538975, 43.993618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633667, 34.952713, 44.469402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985538, 35.134731, 44.524677>,  <38.196663, 35.243942, 44.557842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985538, 35.134731, 44.524677>,  <37.633667, 34.952713, 44.469402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985538, 35.134731, 44.524677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060204, -0.181682, 0.981513,
		0.471743, -0.871735, -0.132426,
		0.879679, 0.455049, 0.138189,
		38.249443, 35.271244, 44.566135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819153, 34.537148, 44.976360>,  <37.633667, 34.952713, 44.469402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819153, 34.537148, 44.976360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.056477, 34.858738, 44.992340>,  <38.198872, 35.051693, 45.001926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.056477, 34.858738, 44.992340>,  <37.819153, 34.537148, 44.976360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056477, 34.858738, 44.992340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052344, -0.010989, 0.998569,
		0.803267, -0.594556, 0.035563,
		0.593314, 0.803979, 0.039949,
		38.234470, 35.099930, 45.004326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353703, 34.388168, 45.482563>,  <37.819153, 34.537148, 44.976360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353703, 34.388168, 45.482563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344944, 34.784782, 45.431374>,  <38.339687, 35.022751, 45.400661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344944, 34.784782, 45.431374>,  <38.353703, 34.388168, 45.482563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344944, 34.784782, 45.431374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134989, 0.123897, 0.983070,
		0.990605, 0.038802, 0.131134,
		-0.021898, 0.991536, -0.127971,
		38.338375, 35.082245, 45.392982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788795, 34.521927, 45.970154>,  <38.353703, 34.388168, 45.482563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788795, 34.521927, 45.970154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.595604, 34.865677, 45.902969>,  <38.479691, 35.071926, 45.862659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.595604, 34.865677, 45.902969>,  <38.788795, 34.521927, 45.970154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595604, 34.865677, 45.902969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028342, 0.176379, 0.983914,
		0.875175, 0.479967, -0.060830,
		-0.482975, 0.859373, -0.167966,
		38.450710, 35.123489, 45.852581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206238, 35.098942, 46.341297>,  <38.788795, 34.521927, 45.970154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206238, 35.098942, 46.341297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833725, 35.237156, 46.295143>,  <38.610218, 35.320084, 46.267452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833725, 35.237156, 46.295143>,  <39.206238, 35.098942, 46.341297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833725, 35.237156, 46.295143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014230, 0.281986, 0.959313,
		0.364010, 0.895037, -0.257693,
		-0.931287, 0.345532, -0.115382,
		38.554340, 35.340816, 46.260529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268543, 35.805408, 46.395908>,  <39.206238, 35.098942, 46.341297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268543, 35.805408, 46.395908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.908546, 35.657631, 46.488449>,  <38.692547, 35.568966, 46.543972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.908546, 35.657631, 46.488449>,  <39.268543, 35.805408, 46.395908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908546, 35.657631, 46.488449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169802, 0.191676, 0.966658,
		-0.401468, 0.909271, -0.109776,
		-0.899995, -0.369442, 0.231348,
		38.638550, 35.546799, 46.557854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899742, 36.341797, 46.840725>,  <39.268543, 35.805408, 46.395908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899742, 36.341797, 46.840725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.720222, 35.996891, 46.934608>,  <38.612511, 35.789948, 46.990940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.720222, 35.996891, 46.934608>,  <38.899742, 36.341797, 46.840725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720222, 35.996891, 46.934608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003049, 0.264119, 0.964485,
		-0.893629, 0.432142, -0.121165,
		-0.448797, -0.862261, 0.234707,
		38.585583, 35.738213, 47.005020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352360, 36.545773, 47.283108>,  <38.899742, 36.341797, 46.840725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352360, 36.545773, 47.283108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.412010, 36.153400, 47.332966>,  <38.447800, 35.917976, 47.362881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.412010, 36.153400, 47.332966>,  <38.352360, 36.545773, 47.283108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412010, 36.153400, 47.332966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110089, 0.108806, 0.987948,
		-0.982671, -0.161047, -0.091765,
		0.149122, -0.980931, 0.124650,
		38.456745, 35.859119, 47.370361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874401, 36.282734, 47.731342>,  <38.352360, 36.545773, 47.283108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874401, 36.282734, 47.731342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143147, 35.986664, 47.742191>,  <38.304394, 35.809021, 47.748699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143147, 35.986664, 47.742191>,  <37.874401, 36.282734, 47.731342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143147, 35.986664, 47.742191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179007, -0.126732, 0.975651,
		-0.718718, -0.660360, -0.217644,
		0.671864, -0.740178, 0.027124,
		38.344707, 35.764610, 47.750328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537903, 35.716656, 47.902412>,  <37.874401, 36.282734, 47.731342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537903, 35.716656, 47.902412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924049, 35.682396, 48.000996>,  <38.155735, 35.661839, 48.060146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924049, 35.682396, 48.000996>,  <37.537903, 35.716656, 47.902412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924049, 35.682396, 48.000996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250323, -0.037659, 0.967430,
		-0.073587, -0.995613, -0.057797,
		0.965362, -0.085659, 0.246453,
		38.213657, 35.656700, 48.074932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583271, 35.145153, 48.378925>,  <37.537903, 35.716656, 47.902412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583271, 35.145153, 48.378925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.927052, 35.339233, 48.443333>,  <38.133320, 35.455681, 48.481976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.927052, 35.339233, 48.443333>,  <37.583271, 35.145153, 48.378925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927052, 35.339233, 48.443333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071131, -0.198406, 0.977535,
		0.506249, -0.851595, -0.136008,
		0.859449, 0.485202, 0.161018,
		38.184887, 35.484795, 48.491638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875927, 34.823944, 48.980762>,  <37.583271, 35.145153, 48.378925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875927, 34.823944, 48.980762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.104439, 35.151981, 48.993931>,  <38.241547, 35.348804, 49.001831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.104439, 35.151981, 48.993931>,  <37.875927, 34.823944, 48.980762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104439, 35.151981, 48.993931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170562, -0.157859, 0.972620,
		0.802835, -0.550027, -0.230058,
		0.571284, 0.820092, 0.032921,
		38.275826, 35.398010, 49.003807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384361, 34.533741, 49.377872>,  <37.875927, 34.823944, 48.980762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384361, 34.533741, 49.377872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432308, 34.930710, 49.367039>,  <38.461075, 35.168892, 49.360538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432308, 34.930710, 49.367039>,  <38.384361, 34.533741, 49.377872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432308, 34.930710, 49.367039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071122, 0.018629, 0.997294,
		0.990240, -0.121464, -0.068350,
		0.119862, 0.992421, -0.027086,
		38.468266, 35.228436, 49.358913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086815, 34.716183, 49.588150>,  <38.384361, 34.533741, 49.377872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086815, 34.716183, 49.588150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.893078, 35.059078, 49.658070>,  <38.776836, 35.264816, 49.700024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.893078, 35.059078, 49.658070>,  <39.086815, 34.716183, 49.588150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893078, 35.059078, 49.658070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425444, 0.056193, 0.903239,
		0.764468, 0.511844, -0.391924,
		-0.484341, 0.857238, 0.174803,
		38.747776, 35.316250, 49.710510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662533, 35.118286, 49.714569>,  <39.086815, 34.716183, 49.588150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662533, 35.118286, 49.714569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.323204, 35.273113, 49.859085>,  <39.119606, 35.366009, 49.945797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.323204, 35.273113, 49.859085>,  <39.662533, 35.118286, 49.714569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323204, 35.273113, 49.859085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339773, -0.125381, 0.932113,
		0.406091, 0.913486, -0.025153,
		-0.848318, 0.387069, 0.361294,
		39.068710, 35.389233, 49.967472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848763, 35.721203, 50.219246>,  <39.662533, 35.118286, 49.714569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848763, 35.721203, 50.219246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.487614, 35.572803, 50.306137>,  <39.270924, 35.483765, 50.358273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.487614, 35.572803, 50.306137>,  <39.848763, 35.721203, 50.219246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487614, 35.572803, 50.306137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306388, -0.200825, 0.930482,
		-0.301585, 0.906658, 0.294988,
		-0.902869, -0.371000, 0.217223,
		39.216751, 35.461502, 50.371304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727283, 35.855698, 50.966270>,  <39.848763, 35.721203, 50.219246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727283, 35.855698, 50.966270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.433533, 35.595181, 50.889851>,  <39.257282, 35.438869, 50.843998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.433533, 35.595181, 50.889851>,  <39.727283, 35.855698, 50.966270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433533, 35.595181, 50.889851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048285, -0.230639, 0.971841,
		-0.677018, 0.722927, 0.137929,
		-0.734381, -0.651293, -0.191053,
		39.213219, 35.399792, 50.832535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264591, 35.932167, 51.562595>,  <39.727283, 35.855698, 50.966270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264591, 35.932167, 51.562595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.177425, 35.588585, 51.377251>,  <39.125126, 35.382435, 51.266045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.177425, 35.588585, 51.377251>,  <39.264591, 35.932167, 51.562595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177425, 35.588585, 51.377251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002068, -0.475177, 0.879888,
		-0.975967, 0.190779, 0.105322,
		-0.217911, -0.858959, -0.463362,
		39.112053, 35.330898, 51.238243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649376, 35.699135, 51.851723>,  <39.264591, 35.932167, 51.562595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649376, 35.699135, 51.851723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.847706, 35.388870, 51.695511>,  <38.966702, 35.202713, 51.601784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.847706, 35.388870, 51.695511>,  <38.649376, 35.699135, 51.851723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847706, 35.388870, 51.695511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086566, -0.491605, 0.866505,
		-0.864099, -0.395825, -0.310894,
		0.495822, -0.775658, -0.390531,
		38.996452, 35.156174, 51.578350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167419, 35.507545, 52.439423>,  <38.649376, 35.699135, 51.851723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167419, 35.507545, 52.439423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.515842, 35.312305, 52.417458>,  <38.724895, 35.195164, 52.404278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.515842, 35.312305, 52.417458>,  <38.167419, 35.507545, 52.439423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515842, 35.312305, 52.417458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065423, 0.004495, 0.997848,
		-0.486799, -0.872778, 0.035848,
		0.871061, -0.488096, -0.054912,
		38.777161, 35.165878, 52.400986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238079, 34.956654, 52.969109>,  <38.167419, 35.507545, 52.439423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238079, 34.956654, 52.969109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604839, 35.077278, 52.864536>,  <38.824898, 35.149654, 52.801792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604839, 35.077278, 52.864536>,  <38.238079, 34.956654, 52.969109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604839, 35.077278, 52.864536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250274, 0.075798, 0.965203,
		0.310884, -0.950429, -0.005974,
		0.916905, 0.301562, -0.261432,
		38.879910, 35.167747, 52.786106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544704, 34.725670, 52.833050>,  <38.238079, 34.956654, 52.969109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544704, 34.725670, 52.833050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.201710, 34.923279, 52.890537>,  <36.995914, 35.041843, 52.925030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.201710, 34.923279, 52.890537>,  <37.544704, 34.725670, 52.833050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201710, 34.923279, 52.890537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148102, 0.030503, -0.988502,
		-0.492730, -0.868912, 0.047010,
		-0.857487, 0.494027, 0.143717,
		36.944466, 35.071487, 52.933651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121498, 34.513920, 52.215919>,  <37.544704, 34.725670, 52.833050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121498, 34.513920, 52.215919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.932087, 34.830837, 52.369823>,  <36.818439, 35.020988, 52.462166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.932087, 34.830837, 52.369823>,  <37.121498, 34.513920, 52.215919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932087, 34.830837, 52.369823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500004, 0.117817, -0.857971,
		-0.725096, -0.598657, 0.340360,
		-0.473530, 0.792293, 0.384760,
		36.790028, 35.068523, 52.485252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374397, 34.340630, 52.106941>,  <37.121498, 34.513920, 52.215919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374397, 34.340630, 52.106941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.423748, 34.734844, 52.153400>,  <36.453358, 34.971375, 52.181274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.423748, 34.734844, 52.153400>,  <36.374397, 34.340630, 52.106941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423748, 34.734844, 52.153400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370061, 0.154290, -0.916105,
		-0.920778, 0.070046, 0.383746,
		0.123378, 0.985539, 0.116146,
		36.460762, 35.030506, 52.188244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813046, 34.521946, 51.760685>,  <36.374397, 34.340630, 52.106941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813046, 34.521946, 51.760685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.045856, 34.844624, 51.801636>,  <36.185543, 35.038231, 51.826206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.045856, 34.844624, 51.801636>,  <35.813046, 34.521946, 51.760685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045856, 34.844624, 51.801636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159407, 0.236642, -0.958431,
		-0.797389, 0.541517, 0.266326,
		0.582031, 0.806697, 0.102374,
		36.220467, 35.086632, 51.832348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346123, 35.125950, 51.731571>,  <35.813046, 34.521946, 51.760685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346123, 35.125950, 51.731571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.728828, 35.190563, 51.634819>,  <35.958450, 35.229332, 51.576767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.728828, 35.190563, 51.634819>,  <35.346123, 35.125950, 51.731571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728828, 35.190563, 51.634819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277942, 0.262644, -0.923995,
		-0.085730, 0.951275, 0.296186,
		0.956765, 0.161537, -0.241883,
		36.015858, 35.239025, 51.562256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261772, 35.601715, 51.130695>,  <35.346123, 35.125950, 51.731571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261772, 35.601715, 51.130695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651691, 35.513348, 51.118275>,  <35.885643, 35.460327, 51.110825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651691, 35.513348, 51.118275>,  <35.261772, 35.601715, 51.130695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651691, 35.513348, 51.118275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019323, 0.222254, -0.974797,
		0.222254, 0.949630, 0.220922,
		0.974797, -0.220922, -0.031047,
		35.944130, 35.447071, 51.108959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648483, 36.137321, 50.752472>,  <35.261772, 35.601715, 51.130695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648483, 36.137321, 50.752472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877346, 35.810955, 50.719215>,  <36.014664, 35.615135, 50.699261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877346, 35.810955, 50.719215>,  <35.648483, 36.137321, 50.752472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877346, 35.810955, 50.719215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013446, 0.092025, -0.995666,
		0.820031, 0.570800, 0.041683,
		0.572162, -0.815916, -0.083138,
		36.048996, 35.566181, 50.694275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278667, 36.309433, 50.399078>,  <35.648483, 36.137321, 50.752472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278667, 36.309433, 50.399078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199528, 35.921848, 50.339798>,  <36.152042, 35.689297, 50.304230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199528, 35.921848, 50.339798>,  <36.278667, 36.309433, 50.399078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199528, 35.921848, 50.339798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164877, 0.116140, -0.979452,
		0.966266, -0.218220, 0.136782,
		-0.197851, -0.968964, -0.148202,
		36.140171, 35.631161, 50.295338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484764, 36.274296, 49.747227>,  <36.278667, 36.309433, 50.399078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484764, 36.274296, 49.747227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356308, 35.896255, 49.771423>,  <36.279232, 35.669434, 49.785942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356308, 35.896255, 49.771423>,  <36.484764, 36.274296, 49.747227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356308, 35.896255, 49.771423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083613, -0.091926, -0.992249,
		0.943332, -0.313596, 0.108544,
		-0.321143, -0.945097, 0.060496,
		36.259964, 35.612728, 49.789574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008442, 35.861176, 49.544941>,  <36.484764, 36.274296, 49.747227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008442, 35.861176, 49.544941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.658802, 35.674854, 49.489845>,  <36.449017, 35.563061, 49.456787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.658802, 35.674854, 49.489845>,  <37.008442, 35.861176, 49.544941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658802, 35.674854, 49.489845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137671, 0.034363, -0.989882,
		0.465825, -0.884220, 0.034090,
		-0.874102, -0.465805, -0.137738,
		36.396572, 35.535114, 49.448524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142303, 35.268200, 49.038357>,  <37.008442, 35.861176, 49.544941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142303, 35.268200, 49.038357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.743896, 35.303532, 49.043362>,  <36.504852, 35.324730, 49.046364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.743896, 35.303532, 49.043362>,  <37.142303, 35.268200, 49.038357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743896, 35.303532, 49.043362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024861, -0.140170, -0.989815,
		-0.085671, -0.986180, 0.141807,
		-0.996013, 0.088324, 0.012509,
		36.445091, 35.330029, 49.047115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937645, 34.869949, 48.535088>,  <37.142303, 35.268200, 49.038357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937645, 34.869949, 48.535088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.612991, 35.100380, 48.573837>,  <36.418198, 35.238640, 48.597088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.612991, 35.100380, 48.573837>,  <36.937645, 34.869949, 48.535088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612991, 35.100380, 48.573837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132884, -0.020583, -0.990918,
		-0.568849, -0.817137, 0.093257,
		-0.811636, 0.576075, 0.096876,
		36.369499, 35.273201, 48.602901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443848, 34.503544, 48.178745>,  <36.937645, 34.869949, 48.535088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443848, 34.503544, 48.178745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350510, 34.892502, 48.178894>,  <36.294506, 35.125877, 48.178986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350510, 34.892502, 48.178894>,  <36.443848, 34.503544, 48.178745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350510, 34.892502, 48.178894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143028, -0.033942, -0.989137,
		-0.961818, -0.230864, 0.147000,
		-0.233345, 0.972394, 0.000374,
		36.280506, 35.184219, 48.179005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856281, 34.646973, 47.771664>,  <36.443848, 34.503544, 48.178745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856281, 34.646973, 47.771664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008011, 35.016663, 47.789238>,  <36.099049, 35.238476, 47.799782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008011, 35.016663, 47.789238>,  <35.856281, 34.646973, 47.771664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008011, 35.016663, 47.789238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078970, 0.079648, -0.993690,
		-0.921890, 0.373456, 0.103198,
		0.379319, 0.924222, 0.043935,
		36.121807, 35.293930, 47.802418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429981, 35.067543, 47.305229>,  <35.856281, 34.646973, 47.771664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429981, 35.067543, 47.305229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.761093, 35.283993, 47.364510>,  <35.959759, 35.413864, 47.400078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.761093, 35.283993, 47.364510>,  <35.429981, 35.067543, 47.305229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761093, 35.283993, 47.364510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064196, 0.353770, -0.933127,
		-0.557367, 0.762910, 0.327582,
		0.827781, 0.541124, 0.148204,
		36.009426, 35.446331, 47.408970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283905, 35.744640, 47.108044>,  <35.429981, 35.067543, 47.305229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283905, 35.744640, 47.108044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.681213, 35.700657, 47.093468>,  <35.919598, 35.674267, 47.084721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.681213, 35.700657, 47.093468>,  <35.283905, 35.744640, 47.108044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681213, 35.700657, 47.093468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016318, 0.178629, -0.983781,
		0.114686, 0.977753, 0.175632,
		0.993268, -0.109960, -0.036442,
		35.979195, 35.667667, 47.082535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509396, 36.297165, 46.913528>,  <35.283905, 35.744640, 47.108044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509396, 36.297165, 46.913528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821198, 36.075432, 46.796844>,  <36.008278, 35.942390, 46.726833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821198, 36.075432, 46.796844>,  <35.509396, 36.297165, 46.913528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821198, 36.075432, 46.796844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154143, 0.281618, -0.947065,
		0.607139, 0.783203, 0.134075,
		0.779501, -0.554333, -0.291707,
		36.055046, 35.909130, 46.709332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922173, 36.767132, 46.469250>,  <35.509396, 36.297165, 46.913528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922173, 36.767132, 46.469250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984406, 36.381947, 46.381168>,  <36.021748, 36.150833, 46.328320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984406, 36.381947, 46.381168>,  <35.922173, 36.767132, 46.469250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984406, 36.381947, 46.381168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016222, 0.220393, -0.975276,
		0.987689, 0.155313, 0.018669,
		0.155587, -0.962967, -0.220200,
		36.031082, 36.093056, 46.315109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398067, 36.802410, 45.891705>,  <35.922173, 36.767132, 46.469250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398067, 36.802410, 45.891705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222908, 36.443031, 45.904610>,  <36.117813, 36.227406, 45.912354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222908, 36.443031, 45.904610>,  <36.398067, 36.802410, 45.891705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222908, 36.443031, 45.904610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120356, 0.023025, -0.992464,
		0.890934, -0.438477, -0.118216,
		-0.437894, -0.898448, 0.032260,
		36.091541, 36.173496, 45.914288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688370, 36.353230, 45.380909>,  <36.398067, 36.802410, 45.891705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688370, 36.353230, 45.380909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.331570, 36.190369, 45.459461>,  <36.117489, 36.092651, 45.506592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.331570, 36.190369, 45.459461>,  <36.688370, 36.353230, 45.380909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331570, 36.190369, 45.459461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215686, 0.001554, -0.976462,
		0.397267, -0.913357, -0.089204,
		-0.891997, -0.407156, 0.196381,
		36.063969, 36.068222, 45.518375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.263645, 28.197250, 31.551132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.023354, 28.399410, 31.798904>,  <38.879177, 28.520706, 31.947567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.023354, 28.399410, 31.798904>,  <39.263645, 28.197250, 31.551132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023354, 28.399410, 31.798904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648454, 0.761214, 0.007799,
		-0.467577, 0.406358, -0.785013,
		-0.600732, 0.505398, 0.619431,
		38.843136, 28.551029, 31.984734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251682, 28.837507, 31.233349>,  <39.263645, 28.197250, 31.551132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251682, 28.837507, 31.233349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.143993, 28.897402, 31.613895>,  <39.079380, 28.933338, 31.842224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.143993, 28.897402, 31.613895>,  <39.251682, 28.837507, 31.233349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143993, 28.897402, 31.613895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613950, 0.787775, 0.049751,
		-0.742014, 0.597486, -0.304016,
		-0.269221, 0.149735, 0.951367,
		39.063229, 28.942322, 31.899305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013912, 29.532663, 31.274471>,  <39.251682, 28.837507, 31.233349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013912, 29.532663, 31.274471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.131130, 29.413683, 31.637932>,  <39.201462, 29.342295, 31.856009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.131130, 29.413683, 31.637932>,  <39.013912, 29.532663, 31.274471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131130, 29.413683, 31.637932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534707, 0.838841, 0.102152,
		-0.792599, 0.455927, 0.404867,
		0.293045, -0.297451, 0.908652,
		39.219044, 29.324448, 31.910528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024464, 30.161263, 31.618404>,  <39.013912, 29.532663, 31.274471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024464, 30.161263, 31.618404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233715, 29.922537, 31.861765>,  <39.359264, 29.779301, 32.007782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233715, 29.922537, 31.861765>,  <39.024464, 30.161263, 31.618404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233715, 29.922537, 31.861765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607480, 0.761811, 0.224969,
		-0.597753, 0.251906, 0.761075,
		0.523125, -0.596814, 0.608402,
		39.390652, 29.743492, 32.044285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162685, 30.551403, 32.112751>,  <39.024464, 30.161263, 31.618404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162685, 30.551403, 32.112751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.445698, 30.273800, 32.166039>,  <39.615505, 30.107239, 32.198013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.445698, 30.273800, 32.166039>,  <39.162685, 30.551403, 32.112751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445698, 30.273800, 32.166039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659322, 0.716133, 0.229014,
		-0.254343, -0.074199, 0.964264,
		0.707534, -0.694008, 0.133222,
		39.657959, 30.065598, 32.206005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462799, 30.775276, 32.669968>,  <39.162685, 30.551403, 32.112751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462799, 30.775276, 32.669968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.727779, 30.523527, 32.507462>,  <39.886768, 30.372477, 32.409958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.727779, 30.523527, 32.507462>,  <39.462799, 30.775276, 32.669968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727779, 30.523527, 32.507462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748872, 0.542847, 0.380140,
		-0.018713, -0.556061, 0.830931,
		0.662450, -0.629375, -0.406260,
		39.926514, 30.334715, 32.385582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131618, 30.940447, 32.886784>,  <39.462799, 30.775276, 32.669968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131618, 30.940447, 32.886784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.385025, 30.688379, 32.707211>,  <40.537071, 30.537138, 32.599468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.385025, 30.688379, 32.707211>,  <40.131618, 30.940447, 32.886784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385025, 30.688379, 32.707211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728050, 0.681922, 0.070180,
		0.261910, -0.371305, 0.890806,
		0.633518, -0.630171, -0.448931,
		40.575081, 30.499329, 32.572533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780880, 30.841257, 33.278969>,  <40.131618, 30.940447, 32.886784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780880, 30.841257, 33.278969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.811985, 30.806789, 32.881672>,  <40.830650, 30.786110, 32.643295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.811985, 30.806789, 32.881672>,  <40.780880, 30.841257, 33.278969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811985, 30.806789, 32.881672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713238, 0.700904, -0.004963,
		0.696594, -0.708032, 0.115965,
		0.077766, -0.086168, -0.993241,
		40.835316, 30.780939, 32.583698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454475, 30.715969, 33.188145>,  <40.780880, 30.841257, 33.278969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454475, 30.715969, 33.188145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.309860, 30.901285, 32.864502>,  <41.223091, 31.012476, 32.670319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.309860, 30.901285, 32.864502>,  <41.454475, 30.715969, 33.188145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309860, 30.901285, 32.864502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733646, 0.676899, 0.059772,
		0.575374, -0.571986, -0.584617,
		-0.361538, 0.463292, -0.809105,
		41.201401, 31.040274, 32.621769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996479, 31.021961, 32.899872>,  <41.454475, 30.715969, 33.188145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996479, 31.021961, 32.899872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.702076, 31.222836, 32.718277>,  <41.525433, 31.343359, 32.609322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.702076, 31.222836, 32.718277>,  <41.996479, 31.021961, 32.899872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702076, 31.222836, 32.718277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610276, 0.782443, -0.123875,
		0.293012, -0.368231, -0.882355,
		-0.736007, 0.502184, -0.453987,
		41.481274, 31.373491, 32.582081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259365, 31.443464, 32.454414>,  <41.996479, 31.021961, 32.899872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259365, 31.443464, 32.454414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.906616, 31.630749, 32.476643>,  <41.694969, 31.743118, 32.489979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.906616, 31.630749, 32.476643>,  <42.259365, 31.443464, 32.454414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906616, 31.630749, 32.476643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471227, 0.879205, 0.070311,
		-0.015935, 0.088190, -0.995976,
		-0.881868, 0.468210, 0.055568,
		41.642056, 31.771212, 32.493313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282040, 32.004246, 31.988026>,  <42.259365, 31.443464, 32.454414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282040, 32.004246, 31.988026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.016388, 32.099533, 32.271484>,  <41.856995, 32.156708, 32.441559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.016388, 32.099533, 32.271484>,  <42.282040, 32.004246, 31.988026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016388, 32.099533, 32.271484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460952, 0.876744, 0.137270,
		-0.588599, 0.417817, -0.692084,
		-0.664134, 0.238221, 0.708644,
		41.817146, 32.170998, 32.484077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042870, 32.734375, 31.801222>,  <42.282040, 32.004246, 31.988026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042870, 32.734375, 31.801222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.962437, 32.666237, 32.187080>,  <41.914177, 32.625355, 32.418594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.962437, 32.666237, 32.187080>,  <42.042870, 32.734375, 31.801222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962437, 32.666237, 32.187080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239095, 0.946444, 0.216973,
		-0.949946, 0.274273, -0.149588,
		-0.201086, -0.170347, 0.964648,
		41.902111, 32.615131, 32.476475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825432, 33.363148, 31.989576>,  <42.042870, 32.734375, 31.801222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825432, 33.363148, 31.989576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.864388, 33.182625, 32.344391>,  <41.887760, 33.074310, 32.557281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.864388, 33.182625, 32.344391>,  <41.825432, 33.363148, 31.989576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864388, 33.182625, 32.344391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282627, 0.867122, 0.410147,
		-0.954273, 0.210758, 0.211999,
		0.097387, -0.451309, 0.887038,
		41.893604, 33.047234, 32.610500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491501, 33.803719, 32.508213>,  <41.825432, 33.363148, 31.989576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491501, 33.803719, 32.508213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.758553, 33.572128, 32.695427>,  <41.918785, 33.433174, 32.807755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.758553, 33.572128, 32.695427>,  <41.491501, 33.803719, 32.508213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758553, 33.572128, 32.695427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361130, 0.801599, 0.476470,
		-0.651041, -0.149084, 0.744258,
		0.667631, -0.578975, 0.468035,
		41.958843, 33.398438, 32.835838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538597, 33.937035, 33.310482>,  <41.491501, 33.803719, 32.508213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538597, 33.937035, 33.310482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.886658, 33.752365, 33.241550>,  <42.095493, 33.641563, 33.200191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.886658, 33.752365, 33.241550>,  <41.538597, 33.937035, 33.310482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886658, 33.752365, 33.241550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452356, 0.609612, 0.650959,
		-0.195477, -0.644385, 0.739294,
		0.870151, -0.461671, -0.172327,
		42.147701, 33.613865, 33.189854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789932, 33.912384, 33.958717>,  <41.538597, 33.937035, 33.310482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789932, 33.912384, 33.958717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.086941, 33.850872, 33.697945>,  <42.265144, 33.813965, 33.541481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.086941, 33.850872, 33.697945>,  <41.789932, 33.912384, 33.958717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086941, 33.850872, 33.697945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607301, 0.565152, 0.558381,
		0.282574, -0.810528, 0.513026,
		0.742521, -0.153778, -0.651932,
		42.309696, 33.804737, 33.502365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337185, 33.630367, 34.387024>,  <41.789932, 33.912384, 33.958717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337185, 33.630367, 34.387024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.481255, 33.786045, 34.047897>,  <42.567696, 33.879452, 33.844421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.481255, 33.786045, 34.047897>,  <42.337185, 33.630367, 34.387024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481255, 33.786045, 34.047897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664205, 0.531175, 0.526009,
		0.655062, -0.752581, -0.067192,
		0.360174, 0.389198, -0.847821,
		42.589306, 33.902805, 33.793552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020912, 33.563751, 34.478596>,  <42.337185, 33.630367, 34.387024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020912, 33.563751, 34.478596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.004494, 33.840950, 34.190689>,  <42.994640, 34.007271, 34.017944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.004494, 33.840950, 34.190689>,  <43.020912, 33.563751, 34.478596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004494, 33.840950, 34.190689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467124, 0.650111, 0.599292,
		0.883238, -0.311622, -0.350402,
		-0.041048, 0.692999, -0.719769,
		42.992180, 34.048851, 33.974758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745964, 33.733765, 34.308071>,  <43.020912, 33.563751, 34.478596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745964, 33.733765, 34.308071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522717, 34.046852, 34.197903>,  <43.388767, 34.234703, 34.131802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522717, 34.046852, 34.197903>,  <43.745964, 33.733765, 34.308071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522717, 34.046852, 34.197903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566413, 0.601948, 0.562881,
		0.606367, 0.158151, -0.779300,
		-0.558118, 0.782718, -0.275422,
		43.355282, 34.281666, 34.115276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162582, 34.309361, 34.032501>,  <43.745964, 33.733765, 34.308071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162582, 34.309361, 34.032501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.824718, 34.505013, 34.119495>,  <43.622002, 34.622402, 34.171692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.824718, 34.505013, 34.119495>,  <44.162582, 34.309361, 34.032501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824718, 34.505013, 34.119495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524569, 0.675382, 0.518351,
		0.106657, 0.551916, -0.827051,
		-0.844661, 0.489130, 0.217484,
		43.571320, 34.651752, 34.184742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244240, 34.947521, 33.769466>,  <44.162582, 34.309361, 34.032501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.244240, 34.947521, 33.769466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.981380, 34.964054, 34.070518>,  <43.823666, 34.973972, 34.251148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.981380, 34.964054, 34.070518>,  <44.244240, 34.947521, 33.769466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981380, 34.964054, 34.070518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514254, 0.754601, 0.407579,
		-0.551088, 0.654881, -0.517138,
		-0.657149, 0.041328, 0.752627,
		43.784237, 34.976452, 34.296307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017014, 34.536594, 33.946854>,  <44.244240, 34.947521, 33.769466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017014, 34.536594, 33.946854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.349613, 34.333817, 34.037727>,  <45.549175, 34.212151, 34.092251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.349613, 34.333817, 34.037727>,  <45.017014, 34.536594, 33.946854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349613, 34.333817, 34.037727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554740, -0.736021, 0.387991,
		-0.029477, -0.448644, -0.893225,
		0.831501, -0.506944, 0.227185,
		45.599064, 34.181732, 34.105885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.882748, 33.982319, 33.652607>,  <45.017014, 34.536594, 33.946854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.882748, 33.982319, 33.652607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.134048, 33.941914, 33.961178>,  <45.284828, 33.917671, 34.146320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.134048, 33.941914, 33.961178>,  <44.882748, 33.982319, 33.652607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134048, 33.941914, 33.961178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587350, -0.711820, 0.385139,
		0.510212, -0.695061, -0.506532,
		0.628255, -0.101009, 0.771423,
		45.322525, 33.911610, 34.192604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132446, 33.317879, 33.689507>,  <44.882748, 33.982319, 33.652607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132446, 33.317879, 33.689507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.187309, 33.449478, 34.063232>,  <45.220226, 33.528439, 34.287468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.187309, 33.449478, 34.063232>,  <45.132446, 33.317879, 33.689507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187309, 33.449478, 34.063232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469768, -0.808807, 0.353765,
		0.872070, -0.487434, 0.043616,
		0.137160, 0.328997, 0.934316,
		45.228458, 33.548176, 34.343529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.561020, 32.811672, 33.997211>,  <45.132446, 33.317879, 33.689507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.561020, 32.811672, 33.997211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.390385, 33.013435, 34.297504>,  <45.288002, 33.134495, 34.477680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.390385, 33.013435, 34.297504>,  <45.561020, 32.811672, 33.997211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390385, 33.013435, 34.297504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368207, -0.855000, 0.365238,
		0.826104, -0.120618, 0.550458,
		-0.426587, 0.504407, 0.750731,
		45.262409, 33.164757, 34.522724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.784306, 32.524090, 34.733639>,  <45.561020, 32.811672, 33.997211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.784306, 32.524090, 34.733639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.435646, 32.708454, 34.800312>,  <45.226448, 32.819073, 34.840317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.435646, 32.708454, 34.800312>,  <45.784306, 32.524090, 34.733639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435646, 32.708454, 34.800312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326475, -0.799660, 0.503942,
		0.365562, 0.384844, 0.847502,
		-0.871652, 0.460911, 0.166683,
		45.174149, 32.846725, 34.850319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531998, 32.220257, 35.310520>,  <45.784306, 32.524090, 34.733639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531998, 32.220257, 35.310520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.208412, 32.419830, 35.186176>,  <45.014259, 32.539574, 35.111568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.208412, 32.419830, 35.186176>,  <45.531998, 32.220257, 35.310520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208412, 32.419830, 35.186176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586911, -0.715460, 0.379015,
		-0.033305, 0.489059, 0.871615,
		-0.808966, 0.498937, -0.310863,
		44.965721, 32.569511, 35.092918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.009377, 32.150848, 35.902489>,  <45.531998, 32.220257, 35.310520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.009377, 32.150848, 35.902489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.823681, 32.252045, 35.562965>,  <44.712261, 32.312763, 35.359253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.823681, 32.252045, 35.562965>,  <45.009377, 32.150848, 35.902489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823681, 32.252045, 35.562965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701392, -0.690218, 0.177896,
		-0.540858, 0.677935, 0.497872,
		-0.464242, 0.252987, -0.848809,
		44.684406, 32.327942, 35.308323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332901, 32.349487, 36.032688>,  <45.009377, 32.150848, 35.902489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332901, 32.349487, 36.032688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320496, 32.223095, 35.653385>,  <44.313053, 32.147259, 35.425804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320496, 32.223095, 35.653385>,  <44.332901, 32.349487, 36.032688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320496, 32.223095, 35.653385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839216, -0.507086, 0.196420,
		-0.542914, 0.801884, -0.249453,
		-0.031012, -0.315984, -0.948257,
		44.311192, 32.128300, 35.368908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667912, 32.371281, 35.988457>,  <44.332901, 32.349487, 36.032688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667912, 32.371281, 35.988457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.782635, 32.144547, 35.679539>,  <43.851471, 32.008507, 35.494186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.782635, 32.144547, 35.679539>,  <43.667912, 32.371281, 35.988457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782635, 32.144547, 35.679539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936875, -0.334276, -0.102586,
		-0.200010, 0.752966, -0.626927,
		0.286811, -0.566834, -0.772294,
		43.868679, 31.974497, 35.447849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292126, 32.523712, 35.469326>,  <43.667912, 32.371281, 35.988457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292126, 32.523712, 35.469326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.406754, 32.162140, 35.342335>,  <43.475529, 31.945198, 35.266140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.406754, 32.162140, 35.342335>,  <43.292126, 32.523712, 35.469326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406754, 32.162140, 35.342335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955137, -0.243694, -0.168304,
		0.074767, 0.351468, -0.933209,
		0.286571, -0.903926, -0.317480,
		43.492725, 31.890963, 35.247089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926052, 32.362000, 34.768120>,  <43.292126, 32.523712, 35.469326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926052, 32.362000, 34.768120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.028690, 32.008038, 34.923607>,  <43.090275, 31.795660, 35.016899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.028690, 32.008038, 34.923607>,  <42.926052, 32.362000, 34.768120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028690, 32.008038, 34.923607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935801, -0.328052, -0.129068,
		0.241732, -0.330644, -0.912272,
		0.256597, -0.884905, 0.388718,
		43.105671, 31.742567, 35.040222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660610, 31.857052, 34.261204>,  <42.926052, 32.362000, 34.768120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660610, 31.857052, 34.261204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.749237, 31.630302, 34.578583>,  <42.802414, 31.494253, 34.769012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.749237, 31.630302, 34.578583>,  <42.660610, 31.857052, 34.261204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749237, 31.630302, 34.578583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922725, -0.385065, -0.017436,
		0.315414, -0.728272, -0.608386,
		0.221570, -0.566873, 0.793450,
		42.815708, 31.460241, 34.816616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408447, 31.177021, 34.103806>,  <42.660610, 31.857052, 34.261204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408447, 31.177021, 34.103806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.431087, 31.182606, 34.503124>,  <42.444672, 31.185957, 34.742718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.431087, 31.182606, 34.503124>,  <42.408447, 31.177021, 34.103806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431087, 31.182606, 34.503124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980363, -0.188408, 0.058222,
		0.188900, -0.981992, 0.003019,
		0.056605, 0.013958, 0.998299,
		42.448071, 31.186794, 34.802612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976398, 30.588076, 34.399792>,  <42.408447, 31.177021, 34.103806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976398, 30.588076, 34.399792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.030144, 30.843050, 34.703270>,  <42.062393, 30.996035, 34.885357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.030144, 30.843050, 34.703270>,  <41.976398, 30.588076, 34.399792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030144, 30.843050, 34.703270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942894, -0.153252, 0.295744,
		0.304790, -0.755109, 0.580443,
		0.134365, 0.637436, 0.758697,
		42.070454, 31.034281, 34.930878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669445, 30.295919, 35.039177>,  <41.976398, 30.588076, 34.399792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669445, 30.295919, 35.039177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.709549, 30.685852, 35.118832>,  <41.733612, 30.919811, 35.166626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.709549, 30.685852, 35.118832>,  <41.669445, 30.295919, 35.039177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709549, 30.685852, 35.118832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932621, 0.022345, 0.360164,
		0.346649, -0.221830, 0.911387,
		0.100260, 0.974829, 0.199138,
		41.739628, 30.978300, 35.178574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717983, 30.484274, 35.816990>,  <41.669445, 30.295919, 35.039177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717983, 30.484274, 35.816990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.570694, 30.798822, 35.618580>,  <41.482323, 30.987551, 35.499535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.570694, 30.798822, 35.618580>,  <41.717983, 30.484274, 35.816990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570694, 30.798822, 35.618580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872337, -0.107654, 0.476906,
		0.321626, 0.608303, 0.725620,
		-0.368219, 0.786371, -0.496021,
		41.460228, 31.034733, 35.469772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411121, 30.945524, 36.304470>,  <41.717983, 30.484274, 35.816990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411121, 30.945524, 36.304470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.224598, 31.043842, 35.964554>,  <41.112686, 31.102833, 35.760605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.224598, 31.043842, 35.964554>,  <41.411121, 30.945524, 36.304470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224598, 31.043842, 35.964554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871089, 0.039811, 0.489509,
		0.154149, 0.968504, 0.195545,
		-0.466306, 0.245795, -0.849790,
		41.084705, 31.117580, 35.709618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807053, 31.319818, 36.531883>,  <41.411121, 30.945524, 36.304470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807053, 31.319818, 36.531883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.723156, 31.270233, 36.143936>,  <40.672817, 31.240482, 35.911167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.723156, 31.270233, 36.143936>,  <40.807053, 31.319818, 36.531883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723156, 31.270233, 36.143936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977177, 0.060726, 0.203562,
		0.033661, 0.990427, -0.133873,
		-0.209743, -0.123965, -0.969866,
		40.660233, 31.233044, 35.852978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211689, 31.744852, 36.488510>,  <40.807053, 31.319818, 36.531883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211689, 31.744852, 36.488510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.209377, 31.533020, 36.149216>,  <40.207989, 31.405920, 35.945637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.209377, 31.533020, 36.149216>,  <40.211689, 31.744852, 36.488510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209377, 31.533020, 36.149216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980088, -0.165360, 0.109921,
		-0.198477, 0.831985, -0.518081,
		-0.005783, -0.529582, -0.848239,
		40.207642, 31.374146, 35.894745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690437, 32.054401, 35.990261>,  <40.211689, 31.744852, 36.488510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690437, 32.054401, 35.990261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.739498, 31.668020, 35.899147>,  <39.768932, 31.436192, 35.844479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.739498, 31.668020, 35.899147>,  <39.690437, 32.054401, 35.990261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739498, 31.668020, 35.899147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977630, -0.157107, 0.139842,
		-0.170868, 0.205541, -0.963617,
		0.122648, -0.965956, -0.227788,
		39.776291, 31.378233, 35.830811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.907738, 36.436935, 40.504467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660831, 36.128883, 40.568817>,  <38.512688, 35.944050, 40.607426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660831, 36.128883, 40.568817>,  <38.907738, 36.436935, 40.504467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660831, 36.128883, 40.568817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065718, -0.254230, -0.964908,
		0.784005, -0.585033, 0.207539,
		-0.617266, -0.770132, 0.160871,
		38.475651, 35.897842, 40.617077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181038, 35.985275, 40.100216>,  <38.907738, 36.436935, 40.504467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181038, 35.985275, 40.100216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804340, 35.866459, 40.163322>,  <38.578323, 35.795170, 40.201187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804340, 35.866459, 40.163322>,  <39.181038, 35.985275, 40.100216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804340, 35.866459, 40.163322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115406, -0.155210, -0.981117,
		0.315917, -0.942166, 0.111887,
		-0.941742, -0.297039, 0.157765,
		38.521816, 35.777348, 40.210651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045368, 35.339417, 39.649399>,  <39.181038, 35.985275, 40.100216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045368, 35.339417, 39.649399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670029, 35.458832, 39.719120>,  <38.444824, 35.530479, 39.760952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670029, 35.458832, 39.719120>,  <39.045368, 35.339417, 39.649399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670029, 35.458832, 39.719120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262541, -0.287413, -0.921122,
		-0.224889, -0.910094, 0.348071,
		-0.938348, 0.298533, 0.174301,
		38.388523, 35.548393, 39.771412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641418, 34.865944, 39.207951>,  <39.045368, 35.339417, 39.649399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641418, 34.865944, 39.207951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392616, 35.153690, 39.331638>,  <38.243336, 35.326340, 39.405853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392616, 35.153690, 39.331638>,  <38.641418, 34.865944, 39.207951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392616, 35.153690, 39.331638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390823, 0.056978, -0.918701,
		-0.678500, -0.692292, 0.245703,
		-0.622010, 0.719365, 0.309223,
		38.206013, 35.369499, 39.424404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942741, 34.756927, 38.929356>,  <38.641418, 34.865944, 39.207951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942741, 34.756927, 38.929356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974686, 35.147785, 39.008156>,  <37.993855, 35.382301, 39.055435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974686, 35.147785, 39.008156>,  <37.942741, 34.756927, 38.929356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974686, 35.147785, 39.008156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312672, 0.212213, -0.925852,
		-0.946498, 0.012347, 0.322474,
		0.079864, 0.977145, 0.196999,
		37.998646, 35.440929, 39.067257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298534, 35.175926, 38.603405>,  <37.942741, 34.756927, 38.929356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298534, 35.175926, 38.603405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558998, 35.476372, 38.646885>,  <37.715279, 35.656639, 38.672974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558998, 35.476372, 38.646885>,  <37.298534, 35.175926, 38.603405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558998, 35.476372, 38.646885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161848, 0.277363, -0.947035,
		-0.741480, 0.599081, 0.302175,
		0.651163, 0.751114, 0.108698,
		37.754349, 35.701706, 38.679493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056355, 35.687164, 38.295677>,  <37.298534, 35.175926, 38.603405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056355, 35.687164, 38.295677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440178, 35.795891, 38.324978>,  <37.670471, 35.861126, 38.342556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440178, 35.795891, 38.324978>,  <37.056355, 35.687164, 38.295677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440178, 35.795891, 38.324978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045554, 0.106844, -0.993232,
		-0.277805, 0.956399, 0.090140,
		0.959557, 0.271819, 0.073250,
		37.728046, 35.877438, 38.346954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104946, 36.336006, 37.938515>,  <37.056355, 35.687164, 38.295677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104946, 36.336006, 37.938515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478706, 36.193558, 37.935123>,  <37.702965, 36.108089, 37.933090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478706, 36.193558, 37.935123>,  <37.104946, 36.336006, 37.938515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478706, 36.193558, 37.935123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034083, 0.113059, -0.993003,
		0.354583, 0.927577, 0.117781,
		0.934403, -0.356117, -0.008474,
		37.759026, 36.086723, 37.932583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541050, 36.806381, 37.743538>,  <37.104946, 36.336006, 37.938515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541050, 36.806381, 37.743538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715626, 36.458504, 37.651325>,  <37.820374, 36.249775, 37.595997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715626, 36.458504, 37.651325>,  <37.541050, 36.806381, 37.743538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715626, 36.458504, 37.651325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051186, 0.279810, -0.958690,
		0.898275, 0.406614, 0.166638,
		0.436443, -0.869696, -0.230533,
		37.846558, 36.197594, 37.582165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064938, 36.961460, 37.362576>,  <37.541050, 36.806381, 37.743538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064938, 36.961460, 37.362576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031826, 36.574493, 37.266872>,  <38.011959, 36.342312, 37.209450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031826, 36.574493, 37.266872>,  <38.064938, 36.961460, 37.362576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031826, 36.574493, 37.266872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105701, 0.247254, -0.963168,
		0.990947, -0.054437, -0.122724,
		-0.082776, -0.967420, -0.239262,
		38.006992, 36.284267, 37.195095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486446, 36.912506, 36.735397>,  <38.064938, 36.961460, 37.362576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486446, 36.912506, 36.735397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277145, 36.571968, 36.720341>,  <38.151566, 36.367645, 36.711308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277145, 36.571968, 36.720341>,  <38.486446, 36.912506, 36.735397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277145, 36.571968, 36.720341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086609, 0.097065, -0.991503,
		0.847768, -0.515542, -0.124524,
		-0.523248, -0.851349, -0.037638,
		38.120171, 36.316563, 36.709049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744122, 36.476315, 36.154076>,  <38.486446, 36.912506, 36.735397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744122, 36.476315, 36.154076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381855, 36.332310, 36.243660>,  <38.164494, 36.245907, 36.297409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381855, 36.332310, 36.243660>,  <38.744122, 36.476315, 36.154076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381855, 36.332310, 36.243660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273397, 0.092143, -0.957478,
		0.324070, -0.928385, -0.181878,
		-0.905667, -0.360014, 0.223958,
		38.110153, 36.224304, 36.310848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580181, 35.861359, 35.781170>,  <38.744122, 36.476315, 36.154076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580181, 35.861359, 35.781170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228844, 36.023155, 35.883068>,  <38.018040, 36.120232, 35.944206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228844, 36.023155, 35.883068>,  <38.580181, 35.861359, 35.781170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228844, 36.023155, 35.883068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193142, 0.187171, -0.963153,
		-0.437267, -0.895184, -0.086277,
		-0.878347, 0.404491, 0.254741,
		37.965340, 36.144501, 35.959492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967308, 35.473129, 35.645138>,  <38.580181, 35.861359, 35.781170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967308, 35.473129, 35.645138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917965, 35.867210, 35.597549>,  <37.888359, 36.103661, 35.568996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917965, 35.867210, 35.597549>,  <37.967308, 35.473129, 35.645138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917965, 35.867210, 35.597549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116626, -0.133450, -0.984169,
		-0.985486, -0.107527, 0.131362,
		-0.123355, 0.985205, -0.118972,
		37.880959, 36.162773, 35.561859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531582, 35.020042, 35.865917>,  <37.967308, 35.473129, 35.645138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531582, 35.020042, 35.865917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730930, 34.678272, 35.807156>,  <37.850540, 34.473209, 35.771896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730930, 34.678272, 35.807156>,  <37.531582, 35.020042, 35.865917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730930, 34.678272, 35.807156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462020, -0.405136, 0.788925,
		-0.733595, -0.325303, -0.596670,
		0.498372, -0.854425, -0.146909,
		37.880444, 34.421944, 35.763084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053913, 34.449123, 35.857590>,  <37.531582, 35.020042, 35.865917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053913, 34.449123, 35.857590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401535, 34.272663, 35.947147>,  <37.610107, 34.166786, 36.000881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401535, 34.272663, 35.947147>,  <37.053913, 34.449123, 35.857590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401535, 34.272663, 35.947147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456589, -0.541007, 0.706284,
		-0.190448, -0.716028, -0.671590,
		0.869054, -0.441151, 0.223897,
		37.662251, 34.140316, 36.014317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867882, 33.722313, 35.986477>,  <37.053913, 34.449123, 35.857590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867882, 33.722313, 35.986477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236641, 33.736073, 36.140842>,  <37.457897, 33.744328, 36.233459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236641, 33.736073, 36.140842>,  <36.867882, 33.722313, 35.986477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236641, 33.736073, 36.140842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316607, -0.507235, 0.801544,
		0.223319, -0.861121, -0.456726,
		0.921894, 0.034398, 0.385912,
		37.513210, 33.746391, 36.256615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032310, 33.013206, 36.141415>,  <36.867882, 33.722313, 35.986477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032310, 33.013206, 36.141415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228817, 33.257603, 36.389721>,  <37.346722, 33.404240, 36.538704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228817, 33.257603, 36.389721>,  <37.032310, 33.013206, 36.141415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228817, 33.257603, 36.389721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267117, -0.572666, 0.775050,
		0.829041, -0.546570, -0.118123,
		0.491264, 0.610995, 0.620761,
		37.376198, 33.440903, 36.575951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282288, 32.528389, 36.665947>,  <37.032310, 33.013206, 36.141415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282288, 32.528389, 36.665947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318508, 32.896812, 36.817444>,  <37.340240, 33.117867, 36.908344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318508, 32.896812, 36.817444>,  <37.282288, 32.528389, 36.665947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318508, 32.896812, 36.817444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128572, -0.366312, 0.921567,
		0.987557, -0.132148, 0.085251,
		0.090555, 0.921061, 0.378744,
		37.345676, 33.173130, 36.931068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673973, 32.399456, 37.289555>,  <37.282288, 32.528389, 36.665947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673973, 32.399456, 37.289555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485905, 32.749241, 37.337303>,  <37.373066, 32.959114, 37.365952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485905, 32.749241, 37.337303>,  <37.673973, 32.399456, 37.289555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485905, 32.749241, 37.337303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167835, -0.221379, 0.960636,
		0.866471, 0.431626, 0.250852,
		-0.470169, 0.874466, 0.119376,
		37.344852, 33.011581, 37.373116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008900, 32.624313, 37.785957>,  <37.673973, 32.399456, 37.289555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008900, 32.624313, 37.785957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680340, 32.852436, 37.782871>,  <37.483204, 32.989311, 37.781021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680340, 32.852436, 37.782871>,  <38.008900, 32.624313, 37.785957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680340, 32.852436, 37.782871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100989, -0.132112, 0.986077,
		0.561347, 0.810739, 0.166111,
		-0.821396, 0.570307, -0.007715,
		37.433922, 33.023529, 37.780556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090954, 33.173679, 38.221081>,  <38.008900, 32.624313, 37.785957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090954, 33.173679, 38.221081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697445, 33.104641, 38.201481>,  <37.461338, 33.063217, 38.189720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697445, 33.104641, 38.201481>,  <38.090954, 33.173679, 38.221081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697445, 33.104641, 38.201481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038290, -0.064834, 0.997161,
		-0.175284, 0.982857, 0.057173,
		-0.983773, -0.172598, -0.048998,
		37.402313, 33.052860, 38.186783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825531, 33.555107, 38.838345>,  <38.090954, 33.173679, 38.221081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825531, 33.555107, 38.838345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518589, 33.321186, 38.733139>,  <37.334423, 33.180832, 38.670017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518589, 33.321186, 38.733139>,  <37.825531, 33.555107, 38.838345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518589, 33.321186, 38.733139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148463, -0.236989, 0.960101,
		-0.623799, 0.775786, 0.095033,
		-0.767355, -0.584802, -0.263010,
		37.288383, 33.145744, 38.654236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169437, 33.843582, 39.209236>,  <37.825531, 33.555107, 38.838345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169437, 33.843582, 39.209236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097744, 33.467323, 39.093964>,  <37.054726, 33.241566, 39.024799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097744, 33.467323, 39.093964>,  <37.169437, 33.843582, 39.209236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097744, 33.467323, 39.093964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250853, -0.239546, 0.937918,
		-0.951287, 0.240400, -0.193030,
		-0.179236, -0.940652, -0.288182,
		37.043972, 33.185127, 39.007507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424442, 33.679081, 39.441082>,  <37.169437, 33.843582, 39.209236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424442, 33.679081, 39.441082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656639, 33.356377, 39.396950>,  <36.795956, 33.162754, 39.370472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656639, 33.356377, 39.396950>,  <36.424442, 33.679081, 39.441082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656639, 33.356377, 39.396950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108389, -0.210843, 0.971492,
		-0.807021, -0.551984, -0.209836,
		0.580491, -0.806758, -0.110326,
		36.830788, 33.114349, 39.363853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958931, 33.284245, 39.743813>,  <36.424442, 33.679081, 39.441082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958931, 33.284245, 39.743813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309647, 33.092411, 39.757877>,  <36.520077, 32.977310, 39.766315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309647, 33.092411, 39.757877>,  <35.958931, 33.284245, 39.743813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309647, 33.092411, 39.757877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105247, -0.120041, 0.987174,
		-0.469214, -0.869246, -0.155726,
		0.876790, -0.479585, 0.035161,
		36.572685, 32.948536, 39.768425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853546, 32.686558, 40.024311>,  <35.958931, 33.284245, 39.743813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853546, 32.686558, 40.024311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241001, 32.735306, 40.110935>,  <36.473473, 32.764557, 40.162910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241001, 32.735306, 40.110935>,  <35.853546, 32.686558, 40.024311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241001, 32.735306, 40.110935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172117, -0.299543, 0.938430,
		0.179239, -0.946267, -0.269170,
		0.968633, 0.121874, 0.216558,
		36.531590, 32.771870, 40.175903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941719, 32.169865, 40.456928>,  <35.853546, 32.686558, 40.024311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941719, 32.169865, 40.456928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268414, 32.392948, 40.516132>,  <36.464432, 32.526798, 40.551655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268414, 32.392948, 40.516132>,  <35.941719, 32.169865, 40.456928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268414, 32.392948, 40.516132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104310, -0.109573, 0.988490,
		0.567506, -0.822774, -0.031318,
		0.816735, 0.557707, 0.148007,
		36.513435, 32.560261, 40.560535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978504, 31.495382, 40.631165>,  <35.941719, 32.169865, 40.456928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978504, 31.495382, 40.631165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722256, 31.192652, 40.579285>,  <35.568508, 31.011013, 40.548157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722256, 31.192652, 40.579285>,  <35.978504, 31.495382, 40.631165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722256, 31.192652, 40.579285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355045, 0.441726, -0.823906,
		0.680848, -0.481757, -0.551685,
		-0.640616, -0.756828, -0.129703,
		35.530071, 30.965603, 40.540375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126534, 31.083130, 40.014706>,  <35.978504, 31.495382, 40.631165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126534, 31.083130, 40.014706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739277, 31.063564, 40.112934>,  <35.506924, 31.051825, 40.171871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739277, 31.063564, 40.112934>,  <36.126534, 31.083130, 40.014706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739277, 31.063564, 40.112934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244025, 0.404153, -0.881540,
		-0.056132, -0.913383, -0.403214,
		-0.968143, -0.048911, 0.245574,
		35.448833, 31.048891, 40.186607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845005, 31.376099, 39.500843>,  <36.126534, 31.083130, 40.014706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845005, 31.376099, 39.500843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509609, 31.330250, 39.713936>,  <35.308372, 31.302740, 39.841793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509609, 31.330250, 39.713936>,  <35.845005, 31.376099, 39.500843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509609, 31.330250, 39.713936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508544, 0.515810, -0.689436,
		-0.195766, -0.849000, -0.490789,
		-0.838486, -0.114620, 0.532732,
		35.258064, 31.295864, 39.873756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277584, 31.022739, 39.109570>,  <35.845005, 31.376099, 39.500843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277584, 31.022739, 39.109570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129032, 31.266144, 39.390083>,  <35.039902, 31.412186, 39.558392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129032, 31.266144, 39.390083>,  <35.277584, 31.022739, 39.109570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129032, 31.266144, 39.390083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539919, 0.472932, -0.696292,
		-0.755359, -0.637221, 0.152911,
		-0.371375, 0.608511, 0.701281,
		35.017620, 31.448696, 39.600468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566483, 31.129988, 38.884243>,  <35.277584, 31.022739, 39.109570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566483, 31.129988, 38.884243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653564, 31.422295, 39.143036>,  <34.705814, 31.597679, 39.298309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653564, 31.422295, 39.143036>,  <34.566483, 31.129988, 38.884243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653564, 31.422295, 39.143036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566729, 0.634331, -0.525778,
		-0.794620, -0.252196, 0.552246,
		0.217708, 0.730767, 0.646979,
		34.718876, 31.641525, 39.337132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957165, 31.403696, 38.783752>,  <34.566483, 31.129988, 38.884243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957165, 31.403696, 38.783752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207073, 31.664404, 38.955730>,  <34.357018, 31.820827, 39.058918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207073, 31.664404, 38.955730>,  <33.957165, 31.403696, 38.783752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207073, 31.664404, 38.955730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419066, 0.744524, -0.519681,
		-0.658817, 0.144508, 0.738294,
		0.624775, 0.651768, 0.429947,
		34.394505, 31.859934, 39.084713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520332, 31.976770, 39.005890>,  <33.957165, 31.403696, 38.783752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520332, 31.976770, 39.005890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887413, 32.135509, 38.998581>,  <34.107662, 32.230755, 38.994194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887413, 32.135509, 38.998581>,  <33.520332, 31.976770, 39.005890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887413, 32.135509, 38.998581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333741, 0.745180, -0.577342,
		-0.215502, 0.535926, 0.816298,
		0.917702, 0.396850, -0.018273,
		34.162724, 32.254566, 38.993099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416828, 32.761269, 39.206459>,  <33.520332, 31.976770, 39.005890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416828, 32.761269, 39.206459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765549, 32.716167, 39.015778>,  <33.974781, 32.689106, 38.901367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765549, 32.716167, 39.015778>,  <33.416828, 32.761269, 39.206459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765549, 32.716167, 39.015778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144380, 0.870776, -0.470004,
		0.468095, 0.478577, 0.742866,
		0.871804, -0.112751, -0.476703,
		34.027088, 32.682343, 38.872768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751884, 33.353119, 39.300510>,  <33.416828, 32.761269, 39.206459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751884, 33.353119, 39.300510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915714, 33.180256, 38.979141>,  <34.014011, 33.076538, 38.786320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915714, 33.180256, 38.979141>,  <33.751884, 33.353119, 39.300510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915714, 33.180256, 38.979141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275790, 0.780817, -0.560594,
		0.869593, 0.451178, 0.200614,
		0.409571, -0.432161, -0.803423,
		34.038586, 33.050606, 38.738113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151962, 33.811474, 38.982094>,  <33.751884, 33.353119, 39.300510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151962, 33.811474, 38.982094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041748, 33.548344, 38.701710>,  <33.975620, 33.390465, 38.533478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041748, 33.548344, 38.701710>,  <34.151962, 33.811474, 38.982094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041748, 33.548344, 38.701710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465385, 0.729319, -0.501508,
		0.841129, 0.188035, -0.507095,
		-0.275533, -0.657827, -0.700960,
		33.959087, 33.350994, 38.491421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295841, 34.108429, 38.387405>,  <34.151962, 33.811474, 38.982094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295841, 34.108429, 38.387405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034428, 33.829933, 38.268650>,  <33.877579, 33.662834, 38.197395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034428, 33.829933, 38.268650>,  <34.295841, 34.108429, 38.387405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034428, 33.829933, 38.268650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402299, 0.651775, -0.642919,
		0.641126, -0.300736, -0.706056,
		-0.653539, -0.696238, -0.296884,
		33.838367, 33.621059, 38.179585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304623, 34.141109, 37.558475>,  <34.295841, 34.108429, 38.387405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304623, 34.141109, 37.558475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979752, 33.960224, 37.705917>,  <33.784828, 33.851692, 37.794380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979752, 33.960224, 37.705917>,  <34.304623, 34.141109, 37.558475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979752, 33.960224, 37.705917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570825, 0.485430, -0.662206,
		0.120531, -0.748236, -0.652392,
		-0.812177, -0.452218, 0.368603,
		33.736099, 33.824558, 37.816498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.032501, 29.969248, 43.697395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670761, 29.942616, 43.866024>,  <36.453716, 29.926636, 43.967201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670761, 29.942616, 43.866024>,  <37.032501, 29.969248, 43.697395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670761, 29.942616, 43.866024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423513, 0.017665, -0.905718,
		0.052860, -0.997624, -0.044175,
		-0.904347, -0.066585, 0.421574,
		36.399456, 29.922642, 43.992496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737701, 29.305641, 43.509106>,  <37.032501, 29.969248, 43.697395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737701, 29.305641, 43.509106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.457130, 29.575605, 43.600754>,  <36.288788, 29.737583, 43.655743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.457130, 29.575605, 43.600754>,  <36.737701, 29.305641, 43.509106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457130, 29.575605, 43.600754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397674, -0.103813, -0.911635,
		-0.591487, -0.730560, 0.341211,
		-0.701426, 0.674911, 0.229120,
		36.246704, 29.778078, 43.669491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293556, 29.101788, 42.917728>,  <36.737701, 29.305641, 43.509106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293556, 29.101788, 42.917728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.132248, 29.444696, 43.045765>,  <36.035465, 29.650442, 43.122589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.132248, 29.444696, 43.045765>,  <36.293556, 29.101788, 42.917728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132248, 29.444696, 43.045765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389446, 0.155758, -0.907784,
		-0.828074, -0.490741, 0.271049,
		-0.403268, 0.857271, 0.320096,
		36.011269, 29.701878, 43.141792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586304, 29.082573, 42.797821>,  <36.293556, 29.101788, 42.917728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586304, 29.082573, 42.797821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.662971, 29.474655, 42.817677>,  <35.708973, 29.709904, 42.829590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.662971, 29.474655, 42.817677>,  <35.586304, 29.082573, 42.797821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662971, 29.474655, 42.817677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405146, 0.125088, -0.905655,
		-0.893936, 0.153472, 0.421100,
		0.191667, 0.980204, 0.049642,
		35.720470, 29.768717, 42.832569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985020, 29.581884, 42.570133>,  <35.586304, 29.082573, 42.797821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985020, 29.581884, 42.570133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.319283, 29.794376, 42.514317>,  <35.519840, 29.921871, 42.480827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.319283, 29.794376, 42.514317>,  <34.985020, 29.581884, 42.570133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319283, 29.794376, 42.514317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362176, 0.341961, -0.867117,
		-0.412920, 0.775151, 0.478161,
		0.835659, 0.531228, -0.139538,
		35.569981, 29.953745, 42.472454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712635, 30.091160, 42.125214>,  <34.985020, 29.581884, 42.570133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712635, 30.091160, 42.125214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.107605, 30.146158, 42.093983>,  <35.344585, 30.179157, 42.075245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.107605, 30.146158, 42.093983>,  <34.712635, 30.091160, 42.125214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107605, 30.146158, 42.093983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126909, 0.394663, -0.910019,
		-0.094312, 0.908480, 0.407148,
		0.987420, 0.137496, -0.078073,
		35.403831, 30.187407, 42.070560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920753, 30.796551, 42.103497>,  <34.712635, 30.091160, 42.125214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920753, 30.796551, 42.103497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.195255, 30.583282, 41.905594>,  <35.359955, 30.455322, 41.786850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.195255, 30.583282, 41.905594>,  <34.920753, 30.796551, 42.103497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195255, 30.583282, 41.905594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014715, 0.669894, -0.742311,
		0.727214, 0.516693, 0.451871,
		0.686253, -0.533170, -0.494759,
		35.401131, 30.423332, 41.757168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145405, 31.317011, 41.663143>,  <34.920753, 30.796551, 42.103497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145405, 31.317011, 41.663143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.316250, 30.982122, 41.526535>,  <35.418758, 30.781189, 41.444569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.316250, 30.982122, 41.526535>,  <35.145405, 31.317011, 41.663143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316250, 30.982122, 41.526535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070620, 0.407443, -0.910496,
		0.901437, 0.364765, 0.233148,
		0.427112, -0.837220, -0.341524,
		35.444382, 30.730957, 41.424076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762177, 31.487612, 41.306057>,  <35.145405, 31.317011, 41.663143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762177, 31.487612, 41.306057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.615536, 31.144184, 41.162689>,  <35.527554, 30.938128, 41.076668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.615536, 31.144184, 41.162689>,  <35.762177, 31.487612, 41.306057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615536, 31.144184, 41.162689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116167, 0.424462, -0.897963,
		0.923098, -0.287557, -0.255345,
		-0.366600, -0.858570, -0.358415,
		35.505554, 30.886614, 41.055164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457043, 31.716642, 41.122902>,  <35.762177, 31.487612, 41.306057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457043, 31.716642, 41.122902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.622040, 32.077904, 41.075302>,  <36.721039, 32.294662, 41.046741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.622040, 32.077904, 41.075302>,  <36.457043, 31.716642, 41.122902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622040, 32.077904, 41.075302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255902, 0.010485, 0.966646,
		0.874279, -0.429187, -0.226794,
		0.412494, 0.903155, -0.118997,
		36.745789, 32.348850, 41.039604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129200, 31.733927, 41.556236>,  <36.457043, 31.716642, 41.122902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129200, 31.733927, 41.556236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.014450, 32.112217, 41.495174>,  <36.945599, 32.339191, 41.458538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.014450, 32.112217, 41.495174>,  <37.129200, 31.733927, 41.556236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014450, 32.112217, 41.495174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292092, 0.238120, 0.926273,
		0.912351, 0.221136, -0.344549,
		-0.286876, 0.945726, -0.152657,
		36.928387, 32.395935, 41.449379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726879, 32.155613, 41.620739>,  <37.129200, 31.733927, 41.556236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726879, 32.155613, 41.620739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415012, 32.392365, 41.702515>,  <37.227894, 32.534416, 41.751579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415012, 32.392365, 41.702515>,  <37.726879, 32.155613, 41.620739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415012, 32.392365, 41.702515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454250, 0.309877, 0.835244,
		0.431016, 0.744078, -0.510463,
		-0.779668, 0.591882, 0.204435,
		37.181110, 32.569931, 41.763844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907513, 32.820210, 41.718132>,  <37.726879, 32.155613, 41.620739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907513, 32.820210, 41.718132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.565292, 32.793709, 41.923519>,  <37.359962, 32.777809, 42.046753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.565292, 32.793709, 41.923519>,  <37.907513, 32.820210, 41.718132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565292, 32.793709, 41.923519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463332, 0.344530, 0.816469,
		-0.231001, 0.936434, -0.264063,
		-0.855548, -0.066256, 0.513467,
		37.308628, 32.773830, 42.077560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933357, 33.430214, 42.282619>,  <37.907513, 32.820210, 41.718132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933357, 33.430214, 42.282619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645267, 33.193161, 42.426876>,  <37.472416, 33.050930, 42.513432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645267, 33.193161, 42.426876>,  <37.933357, 33.430214, 42.282619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645267, 33.193161, 42.426876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222274, 0.295322, 0.929182,
		-0.657171, 0.749380, -0.080970,
		-0.720222, -0.592634, 0.360645,
		37.429199, 33.015369, 42.535069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684410, 33.793060, 42.812160>,  <37.933357, 33.430214, 42.282619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684410, 33.793060, 42.812160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561253, 33.419647, 42.885605>,  <37.487358, 33.195599, 42.929672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561253, 33.419647, 42.885605>,  <37.684410, 33.793060, 42.812160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561253, 33.419647, 42.885605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294775, 0.089894, 0.951329,
		-0.904606, 0.347029, 0.247505,
		-0.307889, -0.933536, 0.183614,
		37.468887, 33.139587, 42.940689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109108, 33.882790, 43.333271>,  <37.684410, 33.793060, 42.812160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109108, 33.882790, 43.333271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.274918, 33.520046, 43.363682>,  <37.374405, 33.302402, 43.381927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.274918, 33.520046, 43.363682>,  <37.109108, 33.882790, 43.333271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274918, 33.520046, 43.363682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113448, 0.134385, 0.984414,
		-0.902938, -0.399441, 0.158587,
		0.414527, -0.906856, 0.076026,
		37.399277, 33.247990, 43.386490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826527, 33.581955, 43.965328>,  <37.109108, 33.882790, 43.333271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826527, 33.581955, 43.965328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.141136, 33.350735, 43.878387>,  <37.329903, 33.212002, 43.826225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.141136, 33.350735, 43.878387>,  <36.826527, 33.581955, 43.965328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141136, 33.350735, 43.878387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170413, -0.135129, 0.976063,
		-0.593587, -0.804732, -0.007774,
		0.786520, -0.578054, -0.217348,
		37.377090, 33.177319, 43.813183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805279, 33.102325, 44.472191>,  <36.826527, 33.581955, 43.965328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805279, 33.102325, 44.472191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.177082, 33.048122, 44.334991>,  <37.400166, 33.015602, 44.252674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.177082, 33.048122, 44.334991>,  <36.805279, 33.102325, 44.472191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177082, 33.048122, 44.334991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326064, -0.132569, 0.936006,
		-0.172310, -0.981867, -0.079039,
		0.929512, -0.135512, -0.342994,
		37.455936, 33.007469, 44.232094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910675, 32.462688, 44.597839>,  <36.805279, 33.102325, 44.472191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910675, 32.462688, 44.597839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.273354, 32.631229, 44.590229>,  <37.490959, 32.732353, 44.585663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.273354, 32.631229, 44.590229>,  <36.910675, 32.462688, 44.597839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273354, 32.631229, 44.590229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134419, -0.245913, 0.959926,
		0.399790, -0.872920, -0.279606,
		0.906697, 0.421353, -0.019023,
		37.545364, 32.757637, 44.584522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350494, 31.901789, 44.976864>,  <36.910675, 32.462688, 44.597839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350494, 31.901789, 44.976864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.530571, 32.258709, 44.963444>,  <37.638618, 32.472862, 44.955391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.530571, 32.258709, 44.963444>,  <37.350494, 31.901789, 44.976864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530571, 32.258709, 44.963444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364598, -0.149396, 0.919102,
		0.815105, -0.426002, -0.392588,
		0.450190, 0.892302, -0.033546,
		37.665627, 32.526402, 44.953381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007610, 31.846642, 45.202225>,  <37.350494, 31.901789, 44.976864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007610, 31.846642, 45.202225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957794, 32.242222, 45.234398>,  <37.927902, 32.479568, 45.253700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957794, 32.242222, 45.234398>,  <38.007610, 31.846642, 45.202225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957794, 32.242222, 45.234398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465345, -0.013374, 0.885028,
		0.876324, 0.147650, -0.458536,
		-0.124542, 0.988949, 0.080429,
		37.920433, 32.538906, 45.258526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615391, 32.068787, 45.470295>,  <38.007610, 31.846642, 45.202225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615391, 32.068787, 45.470295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.332535, 32.336102, 45.562687>,  <38.162823, 32.496490, 45.618122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.332535, 32.336102, 45.562687>,  <38.615391, 32.068787, 45.470295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332535, 32.336102, 45.562687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305458, -0.005883, 0.952187,
		0.637692, 0.743882, -0.199973,
		-0.707138, 0.668285, 0.230976,
		38.120392, 32.536587, 45.631981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974308, 32.509060, 45.961983>,  <38.615391, 32.068787, 45.470295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974308, 32.509060, 45.961983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576199, 32.542164, 45.982281>,  <38.337334, 32.562027, 45.994461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576199, 32.542164, 45.982281>,  <38.974308, 32.509060, 45.961983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576199, 32.542164, 45.982281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050475, -0.005365, 0.998711,
		0.082929, 0.996555, 0.001162,
		-0.995276, 0.082764, 0.050746,
		38.277615, 32.566994, 45.997505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.059055, 35.651123, 47.557835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073322, 35.287491, 47.391796>,  <33.081882, 35.069313, 47.292171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073322, 35.287491, 47.391796>,  <33.059055, 35.651123, 47.557835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073322, 35.287491, 47.391796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003283, 0.415466, -0.909603,
		0.999358, 0.031080, 0.017803,
		0.035667, -0.909078, -0.415097,
		33.084023, 35.014767, 47.267265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455578, 35.757683, 46.936440>,  <33.059055, 35.651123, 47.557835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455578, 35.757683, 46.936440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.269749, 35.411617, 46.860901>,  <33.158253, 35.203976, 46.815578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.269749, 35.411617, 46.860901>,  <33.455578, 35.757683, 46.936440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269749, 35.411617, 46.860901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071978, 0.249447, -0.965710,
		0.882607, -0.435045, -0.178158,
		-0.464568, -0.865166, -0.188850,
		33.130379, 35.152069, 46.804245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894581, 35.451649, 46.366779>,  <33.455578, 35.757683, 46.936440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894581, 35.451649, 46.366779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.530735, 35.285706, 46.357868>,  <33.312428, 35.186138, 46.352524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.530735, 35.285706, 46.357868>,  <33.894581, 35.451649, 46.366779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530735, 35.285706, 46.357868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016650, 0.089973, -0.995805,
		0.415121, -0.905427, -0.088748,
		-0.909614, -0.414858, -0.022275,
		33.257851, 35.161247, 46.351185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927147, 35.115620, 45.708302>,  <33.894581, 35.451649, 46.366779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927147, 35.115620, 45.708302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.538952, 35.079388, 45.797695>,  <33.306034, 35.057648, 45.851330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.538952, 35.079388, 45.797695>,  <33.927147, 35.115620, 45.708302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538952, 35.079388, 45.797695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230188, 0.071847, -0.970490,
		0.071847, -0.993294, -0.090576,
		0.970490, 0.090576, -0.223483,
		33.247807, 35.052216, 45.864738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634144, 34.632195, 45.226383>,  <33.927147, 35.115620, 45.708302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634144, 34.632195, 45.226383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.333710, 34.868298, 45.344685>,  <33.153450, 35.009960, 45.415665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.333710, 34.868298, 45.344685>,  <33.634144, 34.632195, 45.226383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333710, 34.868298, 45.344685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259882, 0.147480, -0.954312,
		-0.606909, -0.793628, 0.042628,
		-0.751081, 0.590258, 0.295756,
		33.108387, 35.045376, 45.433411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987289, 34.378239, 44.880371>,  <33.634144, 34.632195, 45.226383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987289, 34.378239, 44.880371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.940571, 34.761459, 44.985062>,  <32.912540, 34.991390, 45.047874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.940571, 34.761459, 44.985062>,  <32.987289, 34.378239, 44.880371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940571, 34.761459, 44.985062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376889, 0.201064, -0.904173,
		-0.918866, -0.204244, 0.337595,
		-0.116794, 0.958049, 0.261728,
		32.905533, 35.048874, 45.063580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380680, 34.628246, 44.642483>,  <32.987289, 34.378239, 44.880371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380680, 34.628246, 44.642483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.549446, 34.987019, 44.695412>,  <32.650703, 35.202282, 44.727169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.549446, 34.987019, 44.695412>,  <32.380680, 34.628246, 44.642483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549446, 34.987019, 44.695412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407443, 0.317955, -0.856093,
		-0.809927, 0.307282, 0.499596,
		0.421911, 0.896929, 0.132321,
		32.676018, 35.256096, 44.735107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850502, 35.085938, 44.414177>,  <32.380680, 34.628246, 44.642483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850502, 35.085938, 44.414177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.192577, 35.293236, 44.417538>,  <32.397823, 35.417614, 44.419556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.192577, 35.293236, 44.417538>,  <31.850502, 35.085938, 44.414177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192577, 35.293236, 44.417538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206418, 0.355402, -0.911636,
		-0.475438, 0.777888, 0.410912,
		0.855190, 0.518246, 0.008401,
		32.449135, 35.448711, 44.420059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683077, 35.689919, 44.154144>,  <31.850502, 35.085938, 44.414177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683077, 35.689919, 44.154144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080753, 35.714840, 44.119041>,  <32.319359, 35.729794, 44.097980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080753, 35.714840, 44.119041>,  <31.683077, 35.689919, 44.154144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080753, 35.714840, 44.119041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107014, 0.485381, -0.867729,
		-0.011470, 0.872079, 0.489229,
		0.994191, 0.062308, -0.087757,
		32.379009, 35.733532, 44.092712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904444, 36.413174, 43.930897>,  <31.683077, 35.689919, 44.154144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904444, 36.413174, 43.930897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.232273, 36.203709, 43.837872>,  <32.428970, 36.078030, 43.782059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.232273, 36.203709, 43.837872>,  <31.904444, 36.413174, 43.930897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232273, 36.203709, 43.837872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031389, 0.446305, -0.894330,
		0.572116, 0.725668, 0.382216,
		0.819572, -0.523658, -0.232560,
		32.478146, 36.046612, 43.768105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339024, 36.893711, 43.721375>,  <31.904444, 36.413174, 43.930897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339024, 36.893711, 43.721375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487045, 36.564034, 43.549904>,  <32.575859, 36.366226, 43.447021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487045, 36.564034, 43.549904>,  <32.339024, 36.893711, 43.721375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487045, 36.564034, 43.549904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154446, 0.509597, -0.846438,
		0.916082, 0.247020, 0.315871,
		0.370054, -0.824192, -0.428681,
		32.598061, 36.316776, 43.421299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711136, 37.232677, 43.188488>,  <32.339024, 36.893711, 43.721375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711136, 37.232677, 43.188488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681259, 36.845531, 43.092442>,  <32.663334, 36.613243, 43.034813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681259, 36.845531, 43.092442>,  <32.711136, 37.232677, 43.188488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681259, 36.845531, 43.092442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019138, 0.239354, -0.970744,
		0.997023, -0.077103, 0.000645,
		-0.074693, -0.967866, -0.240117,
		32.658852, 36.555172, 43.020405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218246, 37.142220, 42.586140>,  <32.711136, 37.232677, 43.188488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218246, 37.142220, 42.586140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952385, 36.843483, 42.577427>,  <32.792870, 36.664242, 42.572201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952385, 36.843483, 42.577427>,  <33.218246, 37.142220, 42.586140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952385, 36.843483, 42.577427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018454, 0.045551, -0.998791,
		0.746926, -0.663445, -0.044057,
		-0.664650, -0.746837, -0.021780,
		32.752991, 36.619431, 42.570892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512688, 36.682438, 42.104557>,  <33.218246, 37.142220, 42.586140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512688, 36.682438, 42.104557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.120544, 36.604446, 42.116421>,  <32.885258, 36.557652, 42.123539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.120544, 36.604446, 42.116421>,  <33.512688, 36.682438, 42.104557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120544, 36.604446, 42.116421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058345, 0.143097, -0.987987,
		0.188394, -0.970312, -0.151662,
		-0.980359, -0.194980, 0.029654,
		32.826435, 36.545956, 42.125317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047768, 36.237259, 41.899483>,  <33.512688, 36.682438, 42.104557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047768, 36.237259, 41.899483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.418106, 36.386822, 41.877560>,  <34.640308, 36.476559, 41.864407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.418106, 36.386822, 41.877560>,  <34.047768, 36.237259, 41.899483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418106, 36.386822, 41.877560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079412, -0.050697, 0.995552,
		0.369460, -0.926081, -0.076630,
		0.925847, 0.373902, -0.054811,
		34.695862, 36.498993, 41.861115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425766, 35.747574, 42.194138>,  <34.047768, 36.237259, 41.899483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425766, 35.747574, 42.194138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656864, 36.073624, 42.211040>,  <34.795525, 36.269253, 42.221184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656864, 36.073624, 42.211040>,  <34.425766, 35.747574, 42.194138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656864, 36.073624, 42.211040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266294, -0.237178, 0.934256,
		0.771554, -0.528511, -0.354091,
		0.577747, 0.815121, 0.042257,
		34.830189, 36.318161, 42.223717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072521, 35.506294, 42.519924>,  <34.425766, 35.747574, 42.194138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072521, 35.506294, 42.519924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.051228, 35.901375, 42.578735>,  <35.038452, 36.138424, 42.614021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.051228, 35.901375, 42.578735>,  <35.072521, 35.506294, 42.519924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051228, 35.901375, 42.578735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390741, -0.114892, 0.913303,
		0.918960, 0.106067, -0.379818,
		-0.053234, 0.987699, 0.147026,
		35.035259, 36.197685, 42.622845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728107, 35.683853, 42.859200>,  <35.072521, 35.506294, 42.519924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728107, 35.683853, 42.859200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.468163, 35.983402, 42.911163>,  <35.312195, 36.163132, 42.942341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.468163, 35.983402, 42.911163>,  <35.728107, 35.683853, 42.859200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468163, 35.983402, 42.911163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327690, 0.121840, 0.936896,
		0.685786, 0.651419, -0.324577,
		-0.649859, 0.748871, 0.129907,
		35.273205, 36.208065, 42.950134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073532, 36.362530, 43.050087>,  <35.728107, 35.683853, 42.859200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073532, 36.362530, 43.050087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.702934, 36.334972, 43.198071>,  <35.480576, 36.318439, 43.286861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.702934, 36.334972, 43.198071>,  <36.073532, 36.362530, 43.050087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702934, 36.334972, 43.198071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370843, -0.000080, 0.928695,
		-0.063948, 0.997624, 0.025622,
		-0.926491, -0.068890, 0.369957,
		35.424988, 36.314304, 43.309059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121422, 36.732594, 43.749813>,  <36.073532, 36.362530, 43.050087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121422, 36.732594, 43.749813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.765972, 36.549572, 43.737236>,  <35.552704, 36.439758, 43.729691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.765972, 36.549572, 43.737236>,  <36.121422, 36.732594, 43.749813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765972, 36.549572, 43.737236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040921, -0.147385, 0.988232,
		-0.456805, 0.876881, 0.149694,
		-0.888625, -0.457555, -0.031443,
		35.499386, 36.412304, 43.727802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784847, 37.052338, 44.278351>,  <36.121422, 36.732594, 43.749813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784847, 37.052338, 44.278351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.599533, 36.702492, 44.221207>,  <35.488346, 36.492584, 44.186920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.599533, 36.702492, 44.221207>,  <35.784847, 37.052338, 44.278351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599533, 36.702492, 44.221207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052684, -0.188101, 0.980736,
		-0.884642, 0.446834, 0.133223,
		-0.463286, -0.874618, -0.142860,
		35.460548, 36.440105, 44.178349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168182, 37.082729, 44.692173>,  <35.784847, 37.052338, 44.278351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168182, 37.082729, 44.692173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.259590, 36.706120, 44.593124>,  <35.314434, 36.480156, 44.533695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.259590, 36.706120, 44.593124>,  <35.168182, 37.082729, 44.692173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259590, 36.706120, 44.593124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057582, -0.240838, 0.968856,
		-0.971835, -0.235660, -0.000821,
		0.228518, -0.941521, -0.247625,
		35.328144, 36.423664, 44.518837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727520, 36.625538, 45.015633>,  <35.168182, 37.082729, 44.692173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727520, 36.625538, 45.015633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038387, 36.382355, 44.950638>,  <35.224907, 36.236446, 44.911640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038387, 36.382355, 44.950638>,  <34.727520, 36.625538, 45.015633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038387, 36.382355, 44.950638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040824, -0.208956, 0.977072,
		-0.627968, -0.765982, -0.137575,
		0.777167, -0.607954, -0.162488,
		35.271538, 36.199970, 44.901890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793102, 36.119194, 45.499527>,  <34.727520, 36.625538, 45.015633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793102, 36.119194, 45.499527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162663, 36.023739, 45.379887>,  <35.384399, 35.966465, 45.308102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162663, 36.023739, 45.379887>,  <34.793102, 36.119194, 45.499527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162663, 36.023739, 45.379887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285810, -0.089317, 0.954115,
		-0.254406, -0.966991, -0.014313,
		0.923899, -0.238642, -0.299099,
		35.439831, 35.952148, 45.290157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949394, 35.504089, 45.829689>,  <34.793102, 36.119194, 45.499527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949394, 35.504089, 45.829689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.294052, 35.683495, 45.734692>,  <35.500847, 35.791138, 45.677692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.294052, 35.683495, 45.734692>,  <34.949394, 35.504089, 45.829689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294052, 35.683495, 45.734692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342118, -0.167673, 0.924576,
		0.374868, -0.877905, -0.297920,
		0.861643, 0.448518, -0.237492,
		35.552544, 35.818050, 45.663445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439972, 35.061501, 45.998898>,  <34.949394, 35.504089, 45.829689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439972, 35.061501, 45.998898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.663460, 35.389263, 45.947666>,  <35.797554, 35.585922, 45.916927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.663460, 35.389263, 45.947666>,  <35.439972, 35.061501, 45.998898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663460, 35.389263, 45.947666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450262, -0.170005, 0.876563,
		0.696487, -0.547423, -0.463933,
		0.558722, 0.819406, -0.128077,
		35.831078, 35.635086, 45.909245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205250, 34.836529, 46.030781>,  <35.439972, 35.061501, 45.998898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205250, 34.836529, 46.030781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.157913, 35.222961, 46.122589>,  <36.129509, 35.454823, 46.177673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.157913, 35.222961, 46.122589>,  <36.205250, 34.836529, 46.030781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157913, 35.222961, 46.122589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527714, -0.134608, 0.838688,
		0.841137, 0.220376, -0.493885,
		-0.118346, 0.966082, 0.229519,
		36.122410, 35.512787, 46.191444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907112, 35.048885, 46.345692>,  <36.205250, 34.836529, 46.030781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907112, 35.048885, 46.345692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.620403, 35.297455, 46.472229>,  <36.448380, 35.446594, 46.548153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.620403, 35.297455, 46.472229>,  <36.907112, 35.048885, 46.345692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620403, 35.297455, 46.472229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348372, -0.073863, 0.934442,
		0.604047, 0.779988, -0.163543,
		-0.716773, 0.621421, 0.316343,
		36.405373, 35.483883, 46.567131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311550, 35.716946, 46.110531>,  <36.907112, 35.048885, 46.345692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311550, 35.716946, 46.110531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.701199, 35.630951, 46.138428>,  <37.934990, 35.579353, 46.155167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.701199, 35.630951, 46.138428>,  <37.311550, 35.716946, 46.110531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701199, 35.630951, 46.138428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070718, -0.003177, -0.997491,
		0.214669, 0.976612, 0.012108,
		0.974123, -0.214986, 0.069746,
		37.993435, 35.566456, 46.159351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722664, 36.209568, 45.721992>,  <37.311550, 35.716946, 46.110531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722664, 36.209568, 45.721992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.926086, 35.867947, 45.765736>,  <38.048138, 35.662971, 45.791981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.926086, 35.867947, 45.765736>,  <37.722664, 36.209568, 45.721992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926086, 35.867947, 45.765736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119059, -0.056037, -0.991305,
		0.852759, 0.517152, 0.073185,
		0.508555, -0.854057, 0.109357,
		38.078651, 35.611729, 45.798542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237183, 36.377201, 45.314663>,  <37.722664, 36.209568, 45.721992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237183, 36.377201, 45.314663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258598, 35.978912, 45.344803>,  <38.271446, 35.739941, 45.362888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258598, 35.978912, 45.344803>,  <38.237183, 36.377201, 45.314663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258598, 35.978912, 45.344803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388824, -0.048714, -0.920023,
		0.919755, 0.078553, 0.384551,
		0.053537, -0.995719, 0.075349,
		38.274658, 35.680195, 45.367409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943378, 36.132164, 45.210190>,  <38.237183, 36.377201, 45.314663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943378, 36.132164, 45.210190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.716869, 35.817749, 45.111012>,  <38.580963, 35.629101, 45.051506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.716869, 35.817749, 45.111012>,  <38.943378, 36.132164, 45.210190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716869, 35.817749, 45.111012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384878, 0.013831, -0.922864,
		0.728838, -0.618019, 0.294698,
		-0.566272, -0.786041, -0.247943,
		38.546989, 35.581936, 45.036629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365284, 35.758240, 44.782692>,  <38.943378, 36.132164, 45.210190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365284, 35.758240, 44.782692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.012653, 35.577221, 44.728992>,  <38.801075, 35.468609, 44.696774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.012653, 35.577221, 44.728992>,  <39.365284, 35.758240, 44.782692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012653, 35.577221, 44.728992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219756, -0.141774, -0.965198,
		0.417766, -0.880398, 0.224435,
		-0.881577, -0.452548, -0.134245,
		38.748180, 35.441456, 44.688721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625259, 35.215828, 44.359600>,  <39.365284, 35.758240, 44.782692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625259, 35.215828, 44.359600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.232353, 35.269238, 44.306961>,  <38.996609, 35.301285, 44.275379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.232353, 35.269238, 44.306961>,  <39.625259, 35.215828, 44.359600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232353, 35.269238, 44.306961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146638, 0.109882, -0.983068,
		-0.116808, -0.984934, -0.127515,
		-0.982269, 0.133529, -0.131594,
		38.937672, 35.309296, 44.267483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414810, 34.706955, 43.926369>,  <39.625259, 35.215828, 44.359600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414810, 34.706955, 43.926369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.142967, 34.997757, 43.887184>,  <38.979862, 35.172237, 43.863674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.142967, 34.997757, 43.887184>,  <39.414810, 34.706955, 43.926369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142967, 34.997757, 43.887184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079068, -0.060165, -0.995052,
		-0.729302, -0.683990, -0.016594,
		-0.679608, 0.727006, -0.097960,
		38.939083, 35.215858, 43.857796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993980, 34.524162, 43.383400>,  <39.414810, 34.706955, 43.926369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993980, 34.524162, 43.383400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.914047, 34.915890, 43.396088>,  <38.866089, 35.150925, 43.403698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.914047, 34.915890, 43.396088>,  <38.993980, 34.524162, 43.383400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914047, 34.915890, 43.396088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153433, 0.000692, -0.988159,
		-0.967742, -0.202333, 0.150122,
		-0.199833, 0.979317, 0.031714,
		38.854095, 35.209686, 43.405602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402851, 34.622192, 42.944561>,  <38.993980, 34.524162, 43.383400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402851, 34.622192, 42.944561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.566811, 34.986816, 42.957439>,  <38.665188, 35.205593, 42.965168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.566811, 34.986816, 42.957439>,  <38.402851, 34.622192, 42.944561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566811, 34.986816, 42.957439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367236, 0.197237, -0.908975,
		-0.834938, 0.360764, 0.415606,
		0.409898, 0.911563, 0.032195,
		38.689781, 35.260284, 42.967098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843533, 35.061420, 42.698048>,  <38.402851, 34.622192, 42.944561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843533, 35.061420, 42.698048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.186104, 35.262566, 42.651287>,  <38.391647, 35.383251, 42.623230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.186104, 35.262566, 42.651287>,  <37.843533, 35.061420, 42.698048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186104, 35.262566, 42.651287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307820, 0.315582, -0.897583,
		-0.414469, 0.804696, 0.425064,
		0.856424, 0.502863, -0.116903,
		38.443031, 35.413425, 42.616215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683460, 35.881512, 42.601826>,  <37.843533, 35.061420, 42.698048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683460, 35.881512, 42.601826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.034267, 35.766338, 42.447971>,  <38.244751, 35.697235, 42.355659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.034267, 35.766338, 42.447971>,  <37.683460, 35.881512, 42.601826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034267, 35.766338, 42.447971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276618, 0.351965, -0.894205,
		0.392848, 0.890626, 0.229031,
		0.877014, -0.287932, -0.384632,
		38.297371, 35.679958, 42.332581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598667, 36.151569, 41.949001>,  <37.683460, 35.881512, 42.601826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598667, 36.151569, 41.949001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.970413, 36.016186, 41.890045>,  <38.193462, 35.934956, 41.854671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.970413, 36.016186, 41.890045>,  <37.598667, 36.151569, 41.949001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970413, 36.016186, 41.890045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093606, 0.170154, -0.980962,
		0.357090, 0.925471, 0.126454,
		0.929368, -0.338455, -0.147389,
		38.249222, 35.914650, 41.845829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921474, 36.626877, 41.471680>,  <37.598667, 36.151569, 41.949001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921474, 36.626877, 41.471680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.091232, 36.264957, 41.457684>,  <38.193089, 36.047806, 41.449287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.091232, 36.264957, 41.457684>,  <37.921474, 36.626877, 41.471680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091232, 36.264957, 41.457684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169600, -0.041478, -0.984640,
		0.889451, 0.423812, -0.171057,
		0.424397, -0.904800, -0.034986,
		38.218552, 35.993519, 41.447189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384304, 36.711777, 40.928936>,  <37.921474, 36.626877, 41.471680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384304, 36.711777, 40.928936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327099, 36.319206, 40.980080>,  <38.292774, 36.083664, 41.010765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327099, 36.319206, 40.980080>,  <38.384304, 36.711777, 40.928936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327099, 36.319206, 40.980080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106307, -0.143671, -0.983899,
		0.983994, -0.127122, 0.124880,
		-0.143017, -0.981427, 0.127858,
		38.284195, 36.024776, 41.018436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.806700, 39.179825, 29.161835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.599106, 38.876175, 29.004665>,  <25.474548, 38.693985, 28.910364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.599106, 38.876175, 29.004665>,  <25.806700, 39.179825, 29.161835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599106, 38.876175, 29.004665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430196, -0.629180, 0.647351,
		-0.738637, 0.166933, 0.653107,
		-0.518987, -0.759122, -0.392921,
		25.443409, 38.648438, 28.886789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681540, 38.792046, 29.645964>,  <25.806700, 39.179825, 29.161835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.681540, 38.792046, 29.645964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.593681, 38.514912, 29.371229>,  <25.540966, 38.348633, 29.206388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.593681, 38.514912, 29.371229>,  <25.681540, 38.792046, 29.645964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593681, 38.514912, 29.371229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314514, -0.716725, 0.622404,
		-0.923492, -0.079312, 0.375329,
		-0.219644, -0.692831, -0.686834,
		25.527788, 38.307064, 29.165178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414719, 38.203472, 29.999849>,  <25.681540, 38.792046, 29.645964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414719, 38.203472, 29.999849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.535067, 38.046371, 29.652235>,  <25.607275, 37.952110, 29.443666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.535067, 38.046371, 29.652235>,  <25.414719, 38.203472, 29.999849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535067, 38.046371, 29.652235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373487, -0.789943, 0.486311,
		-0.877488, -0.470889, -0.090980,
		0.300868, -0.392753, -0.869037,
		25.625326, 37.928547, 29.391523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210188, 37.499779, 30.001602>,  <25.414719, 38.203472, 29.999849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210188, 37.499779, 30.001602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.498554, 37.530338, 29.726082>,  <25.671574, 37.548672, 29.560770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.498554, 37.530338, 29.726082>,  <25.210188, 37.499779, 30.001602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.498554, 37.530338, 29.726082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492532, -0.755687, 0.431681,
		-0.487538, -0.650461, -0.582415,
		0.720915, 0.076397, -0.688799,
		25.714828, 37.553257, 29.519442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377802, 36.714550, 29.669573>,  <25.210188, 37.499779, 30.001602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377802, 36.714550, 29.669573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.693794, 36.954411, 29.618420>,  <25.883389, 37.098328, 29.587729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.693794, 36.954411, 29.618420>,  <25.377802, 36.714550, 29.669573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693794, 36.954411, 29.618420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597065, -0.704921, 0.382884,
		0.139450, -0.378824, -0.914902,
		0.789979, 0.599649, -0.127882,
		25.930788, 37.134304, 29.580055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805868, 36.267429, 29.406683>,  <25.377802, 36.714550, 29.669573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805868, 36.267429, 29.406683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.021465, 36.566898, 29.561069>,  <26.150824, 36.746582, 29.653702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.021465, 36.566898, 29.561069>,  <25.805868, 36.267429, 29.406683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021465, 36.566898, 29.561069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638103, -0.662042, 0.393096,
		0.549828, 0.034410, -0.834569,
		0.538993, 0.748676, 0.385967,
		26.183163, 36.791500, 29.676859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323643, 35.897179, 29.587347>,  <25.805868, 36.267429, 29.406683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323643, 35.897179, 29.587347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.447519, 36.247658, 29.735056>,  <26.521845, 36.457947, 29.823681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.447519, 36.247658, 29.735056>,  <26.323643, 35.897179, 29.587347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447519, 36.247658, 29.735056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627213, -0.480137, 0.613247,
		0.714629, 0.041694, -0.698260,
		0.309691, 0.876202, 0.369271,
		26.540426, 36.510517, 29.845837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088758, 36.020042, 29.541571>,  <26.323643, 35.897179, 29.587347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088758, 36.020042, 29.541571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.913195, 36.208748, 29.847458>,  <26.807856, 36.321972, 30.030991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.913195, 36.208748, 29.847458>,  <27.088758, 36.020042, 29.541571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913195, 36.208748, 29.847458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563079, -0.518821, 0.643247,
		0.700215, 0.712924, -0.037926,
		-0.438909, 0.471767, 0.764719,
		26.781523, 36.350277, 30.076874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662607, 36.140869, 29.987175>,  <27.088758, 36.020042, 29.541571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662607, 36.140869, 29.987175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.353218, 36.216644, 30.229118>,  <27.167583, 36.262108, 30.374283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.353218, 36.216644, 30.229118>,  <27.662607, 36.140869, 29.987175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353218, 36.216644, 30.229118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564149, -0.229234, 0.793214,
		0.288916, 0.954760, 0.070437,
		-0.773475, 0.189436, 0.604856,
		27.121176, 36.273476, 30.410576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983355, 36.282433, 30.601032>,  <27.662607, 36.140869, 29.987175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983355, 36.282433, 30.601032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610151, 36.205250, 30.722530>,  <27.386229, 36.158939, 30.795429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610151, 36.205250, 30.722530>,  <27.983355, 36.282433, 30.601032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610151, 36.205250, 30.722530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350047, -0.290964, 0.890397,
		-0.083428, 0.937074, 0.339016,
		-0.933009, -0.192955, 0.303746,
		27.330248, 36.147362, 30.813654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834600, 36.651920, 31.274216>,  <27.983355, 36.282433, 30.601032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834600, 36.651920, 31.274216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.579742, 36.346989, 31.228771>,  <27.426828, 36.164032, 31.201506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.579742, 36.346989, 31.228771>,  <27.834600, 36.651920, 31.274216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579742, 36.346989, 31.228771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283348, -0.368754, 0.885288,
		-0.716771, 0.531865, 0.450953,
		-0.637145, -0.762325, -0.113609,
		27.388599, 36.118290, 31.194689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616232, 36.487354, 31.955656>,  <27.834600, 36.651920, 31.274216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616232, 36.487354, 31.955656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.511803, 36.143028, 31.780918>,  <27.449146, 35.936432, 31.676075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.511803, 36.143028, 31.780918>,  <27.616232, 36.487354, 31.955656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511803, 36.143028, 31.780918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301296, -0.502596, 0.810319,
		-0.917094, 0.079932, 0.390575,
		-0.261072, -0.860818, -0.436845,
		27.433481, 35.884781, 31.649864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264156, 36.101082, 32.502026>,  <27.616232, 36.487354, 31.955656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264156, 36.101082, 32.502026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326696, 35.836010, 32.209064>,  <27.364220, 35.676968, 32.033287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326696, 35.836010, 32.209064>,  <27.264156, 36.101082, 32.502026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326696, 35.836010, 32.209064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022245, -0.743693, 0.668152,
		-0.987451, -0.088174, -0.131018,
		0.156350, -0.662682, -0.732399,
		27.373602, 35.637207, 31.989346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689745, 35.670368, 32.477619>,  <27.264156, 36.101082, 32.502026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689745, 35.670368, 32.477619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.986416, 35.444603, 32.332649>,  <27.164419, 35.309143, 32.245667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.986416, 35.444603, 32.332649>,  <26.689745, 35.670368, 32.477619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986416, 35.444603, 32.332649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015313, -0.554429, 0.832090,
		-0.670583, -0.611592, -0.419850,
		0.741676, -0.564414, -0.362425,
		27.208920, 35.275280, 32.223923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.571957, 34.927311, 32.778809>,  <26.689745, 35.670368, 32.477619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.571957, 34.927311, 32.778809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.952524, 34.958286, 32.659607>,  <27.180864, 34.976871, 32.588085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.952524, 34.958286, 32.659607>,  <26.571957, 34.927311, 32.778809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952524, 34.958286, 32.659607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278417, -0.629678, 0.725251,
		-0.131486, -0.772987, -0.620647,
		0.951417, 0.077438, -0.298007,
		27.237949, 34.981518, 32.570206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886084, 34.260220, 32.755329>,  <26.571957, 34.927311, 32.778809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886084, 34.260220, 32.755329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.192846, 34.514133, 32.793072>,  <27.376904, 34.666481, 32.815716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.192846, 34.514133, 32.793072>,  <26.886084, 34.260220, 32.755329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192846, 34.514133, 32.793072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193718, -0.369140, 0.908961,
		0.611826, -0.678808, -0.406065,
		0.766904, 0.634788, 0.094352,
		27.422918, 34.704571, 32.821377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248318, 33.923279, 33.254055>,  <26.886084, 34.260220, 32.755329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248318, 33.923279, 33.254055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.452253, 34.267021, 33.238194>,  <27.574615, 34.473267, 33.228676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.452253, 34.267021, 33.238194>,  <27.248318, 33.923279, 33.254055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452253, 34.267021, 33.238194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419101, -0.207860, 0.883826,
		0.751276, -0.467231, -0.466132,
		0.509841, 0.859354, -0.039657,
		27.605206, 34.524826, 33.226295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001707, 33.749943, 33.422272>,  <27.248318, 33.923279, 33.254055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001707, 33.749943, 33.422272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.900166, 34.127728, 33.505737>,  <27.839241, 34.354401, 33.555817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.900166, 34.127728, 33.505737>,  <28.001707, 33.749943, 33.422272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900166, 34.127728, 33.505737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403642, -0.092611, 0.910218,
		0.878995, 0.315288, -0.357717,
		-0.253853, 0.944466, 0.208668,
		27.824009, 34.411068, 33.568336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516230, 34.097176, 33.678993>,  <28.001707, 33.749943, 33.422272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516230, 34.097176, 33.678993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.201973, 34.297485, 33.824314>,  <28.013420, 34.417671, 33.911507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.201973, 34.297485, 33.824314>,  <28.516230, 34.097176, 33.678993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201973, 34.297485, 33.824314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361141, -0.105600, 0.926513,
		0.502342, 0.859110, -0.097888,
		-0.785640, 0.500777, 0.363307,
		27.966282, 34.447720, 33.933308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803970, 34.714680, 33.881004>,  <28.516230, 34.097176, 33.678993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803970, 34.714680, 33.881004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.461010, 34.605312, 34.055408>,  <28.255234, 34.539692, 34.160049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.461010, 34.605312, 34.055408>,  <28.803970, 34.714680, 33.881004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461010, 34.605312, 34.055408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459873, -0.026702, 0.887583,
		-0.231043, 0.961523, 0.148634,
		-0.857401, -0.273423, 0.436009,
		28.203791, 34.523285, 34.186211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318336, 35.006924, 33.388733>,  <28.803970, 34.714680, 33.881004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318336, 35.006924, 33.388733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.673103, 35.191471, 33.397900>,  <29.885963, 35.302200, 33.403400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.673103, 35.191471, 33.397900>,  <29.318336, 35.006924, 33.388733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673103, 35.191471, 33.397900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416600, 0.820326, -0.391804,
		-0.199566, 0.337948, 0.919764,
		0.886915, 0.461364, 0.022920,
		29.939178, 35.329880, 33.404778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194584, 35.570030, 33.752132>,  <29.318336, 35.006924, 33.388733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194584, 35.570030, 33.752132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.524981, 35.665836, 33.548027>,  <29.723219, 35.723320, 33.425564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.524981, 35.665836, 33.548027>,  <29.194584, 35.570030, 33.752132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524981, 35.665836, 33.548027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477898, 0.777600, -0.408597,
		0.298919, 0.581353, 0.756754,
		0.825991, 0.239514, -0.510267,
		29.772778, 35.737690, 33.394947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178514, 36.276787, 33.737415>,  <29.194584, 35.570030, 33.752132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178514, 36.276787, 33.737415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438103, 36.181686, 33.448330>,  <29.593855, 36.124626, 33.274879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438103, 36.181686, 33.448330>,  <29.178514, 36.276787, 33.737415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438103, 36.181686, 33.448330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368003, 0.733309, -0.571692,
		0.665893, 0.636971, 0.388401,
		0.648969, -0.237753, -0.722712,
		29.632793, 36.110359, 33.231518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809959, 36.840309, 33.548401>,  <29.178514, 36.276787, 33.737415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809959, 36.840309, 33.548401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.746817, 36.619049, 33.221207>,  <29.708931, 36.486294, 33.024891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.746817, 36.619049, 33.221207>,  <29.809959, 36.840309, 33.548401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746817, 36.619049, 33.221207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136902, 0.832633, -0.536638,
		0.977926, 0.027272, -0.207165,
		-0.157857, -0.553153, -0.817987,
		29.699459, 36.453102, 32.975811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044592, 37.231991, 33.056053>,  <29.809959, 36.840309, 33.548401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044592, 37.231991, 33.056053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.812359, 36.987560, 32.840832>,  <29.673019, 36.840900, 32.711697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.812359, 36.987560, 32.840832>,  <30.044592, 37.231991, 33.056053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812359, 36.987560, 32.840832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361682, 0.785624, -0.501976,
		0.729456, -0.096835, -0.677138,
		-0.580585, -0.611079, -0.538055,
		29.638184, 36.804237, 32.679413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083902, 37.550972, 32.458370>,  <30.044592, 37.231991, 33.056053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083902, 37.550972, 32.458370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795261, 37.279400, 32.404198>,  <29.622076, 37.116455, 32.371693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795261, 37.279400, 32.404198>,  <30.083902, 37.550972, 32.458370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795261, 37.279400, 32.404198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466442, 0.621350, -0.629569,
		0.511585, -0.391127, -0.765049,
		-0.721605, -0.678929, -0.135436,
		29.578779, 37.075722, 32.363567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999805, 37.529938, 31.665152>,  <30.083902, 37.550972, 32.458370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999805, 37.529938, 31.665152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676861, 37.372715, 31.841183>,  <29.483093, 37.278381, 31.946802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676861, 37.372715, 31.841183>,  <29.999805, 37.529938, 31.665152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676861, 37.372715, 31.841183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587412, 0.605907, -0.536492,
		-0.055773, -0.691652, -0.720074,
		-0.807364, -0.393059, 0.440078,
		29.434652, 37.254799, 31.973206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491619, 37.272987, 31.147295>,  <29.999805, 37.529938, 31.665152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491619, 37.272987, 31.147295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280756, 37.334568, 31.481577>,  <29.154238, 37.371517, 31.682146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280756, 37.334568, 31.481577>,  <29.491619, 37.272987, 31.147295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280756, 37.334568, 31.481577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660870, 0.543951, -0.517076,
		-0.534189, -0.824873, -0.185004,
		-0.527156, 0.153953, 0.835707,
		29.122610, 37.380753, 31.732288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852890, 37.371864, 30.868084>,  <29.491619, 37.272987, 31.147295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852890, 37.371864, 30.868084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.824247, 37.510468, 31.242208>,  <28.807062, 37.593628, 31.466682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.824247, 37.510468, 31.242208>,  <28.852890, 37.371864, 30.868084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824247, 37.510468, 31.242208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685017, 0.664512, -0.298624,
		-0.725000, -0.662087, 0.189779,
		-0.071605, 0.346504, 0.935311,
		28.802767, 37.614418, 31.522802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171179, 37.516594, 31.035662>,  <28.852890, 37.371864, 30.868084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171179, 37.516594, 31.035662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.365906, 37.757336, 31.288891>,  <28.482742, 37.901779, 31.440828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.365906, 37.757336, 31.288891>,  <28.171179, 37.516594, 31.035662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365906, 37.757336, 31.288891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661481, 0.727340, -0.182811,
		-0.570484, -0.329768, 0.752198,
		0.486818, 0.601855, 0.633071,
		28.511951, 37.937893, 31.478811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719635, 37.942341, 31.468294>,  <28.171179, 37.516594, 31.035662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719635, 37.942341, 31.468294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.068182, 38.138561, 31.464849>,  <28.277309, 38.256294, 31.462782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.068182, 38.138561, 31.464849>,  <27.719635, 37.942341, 31.468294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068182, 38.138561, 31.464849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488001, 0.864747, -0.118607,
		-0.050735, 0.107554, 0.992904,
		0.871367, 0.490556, -0.008613,
		28.329592, 38.285728, 31.462265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486898, 38.543175, 31.749193>,  <27.719635, 37.942341, 31.468294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486898, 38.543175, 31.749193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.840021, 38.636829, 31.586304>,  <28.051895, 38.693024, 31.488569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.840021, 38.636829, 31.586304>,  <27.486898, 38.543175, 31.749193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840021, 38.636829, 31.586304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328507, 0.927396, -0.178938,
		0.335763, 0.291744, 0.895627,
		0.882806, 0.234139, -0.407226,
		28.104862, 38.707069, 31.464136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861229, 39.084991, 32.123276>,  <27.486898, 38.543175, 31.749193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861229, 39.084991, 32.123276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.995510, 39.116280, 31.747791>,  <28.076078, 39.135052, 31.522499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.995510, 39.116280, 31.747791>,  <27.861229, 39.084991, 32.123276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995510, 39.116280, 31.747791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464303, 0.880817, -0.092650,
		0.819590, 0.466951, 0.332008,
		0.335702, 0.078218, -0.938715,
		28.096220, 39.139744, 31.466177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967211, 39.778233, 32.104534>,  <27.861229, 39.084991, 32.123276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967211, 39.778233, 32.104534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.935188, 39.622517, 31.737484>,  <27.915974, 39.529087, 31.517254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.935188, 39.622517, 31.737484>,  <27.967211, 39.778233, 32.104534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935188, 39.622517, 31.737484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438789, 0.840354, -0.318228,
		0.895017, 0.377168, -0.238094,
		-0.080058, -0.389293, -0.917629,
		27.911171, 39.505730, 31.462196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097589, 40.387836, 31.586004>,  <27.967211, 39.778233, 32.104534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097589, 40.387836, 31.586004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.987831, 40.106468, 31.323734>,  <27.921976, 39.937649, 31.166372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.987831, 40.106468, 31.323734>,  <28.097589, 40.387836, 31.586004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987831, 40.106468, 31.323734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511853, 0.684069, -0.519669,
		0.814072, 0.193015, -0.547752,
		-0.274397, -0.703416, -0.655677,
		27.905512, 39.895443, 31.127031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268024, 40.686028, 30.975937>,  <28.097589, 40.387836, 31.586004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268024, 40.686028, 30.975937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980188, 40.413837, 30.920599>,  <27.807487, 40.250523, 30.887396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980188, 40.413837, 30.920599>,  <28.268024, 40.686028, 30.975937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980188, 40.413837, 30.920599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527863, 0.665488, -0.527719,
		0.451167, -0.306715, -0.838077,
		-0.719589, -0.680479, -0.138343,
		27.764311, 40.209694, 30.879095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077463, 40.767445, 30.222969>,  <28.268024, 40.686028, 30.975937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077463, 40.767445, 30.222969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.763704, 40.641212, 30.436558>,  <27.575449, 40.565472, 30.564711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.763704, 40.641212, 30.436558>,  <28.077463, 40.767445, 30.222969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763704, 40.641212, 30.436558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588674, 0.649980, -0.480612,
		-0.195400, -0.691328, -0.695618,
		-0.784399, -0.315581, 0.533973,
		27.528385, 40.546539, 30.596750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453905, 40.730953, 29.813999>,  <28.077463, 40.767445, 30.222969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453905, 40.730953, 29.813999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.282228, 40.731838, 30.175283>,  <27.179222, 40.732368, 30.392054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.282228, 40.731838, 30.175283>,  <27.453905, 40.730953, 29.813999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282228, 40.731838, 30.175283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841828, 0.361381, -0.400910,
		-0.327293, -0.932416, -0.153234,
		-0.429190, 0.002218, 0.903211,
		27.153471, 40.732502, 30.446247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798038, 40.404839, 29.616377>,  <27.453905, 40.730953, 29.813999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798038, 40.404839, 29.616377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.771950, 40.600655, 29.964191>,  <26.756296, 40.718143, 30.172880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.771950, 40.600655, 29.964191>,  <26.798038, 40.404839, 29.616377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771950, 40.600655, 29.964191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884973, 0.374239, -0.277070,
		-0.461052, -0.787588, 0.408823,
		-0.065219, 0.489540, 0.869538,
		26.752384, 40.747517, 30.225054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056007, 40.317619, 29.890356>,  <26.798038, 40.404839, 29.616377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056007, 40.317619, 29.890356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.220688, 40.633411, 30.072445>,  <26.319496, 40.822887, 30.181698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.220688, 40.633411, 30.072445>,  <26.056007, 40.317619, 29.890356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.220688, 40.633411, 30.072445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825701, 0.534532, -0.180259,
		-0.385642, -0.301666, 0.871939,
		0.411701, 0.789476, 0.455224,
		26.344198, 40.870255, 30.209013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498926, 40.563477, 30.233257>,  <26.056007, 40.317619, 29.890356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498926, 40.563477, 30.233257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.759634, 40.866837, 30.234901>,  <25.916059, 41.048855, 30.235888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.759634, 40.866837, 30.234901>,  <25.498926, 40.563477, 30.233257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759634, 40.866837, 30.234901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746097, 0.642148, -0.176030,
		-0.136141, 0.111665, 0.984376,
		0.651771, 0.758404, 0.004110,
		25.955166, 41.094357, 30.236134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051895, 41.076630, 30.373825>,  <25.498926, 40.563477, 30.233257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051895, 41.076630, 30.373825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.377581, 41.277557, 30.257389>,  <25.572992, 41.398113, 30.187527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.377581, 41.277557, 30.257389>,  <25.051895, 41.076630, 30.373825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.377581, 41.277557, 30.257389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579053, 0.738790, -0.344800,
		0.041857, 0.449299, 0.892400,
		0.814215, 0.502315, -0.291092,
		25.621845, 41.428253, 30.170061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.824825, 33.147987, 46.442154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.501453, 32.912556, 46.440529>,  <38.307430, 32.771297, 46.439556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.501453, 32.912556, 46.440529>,  <38.824825, 33.147987, 46.442154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501453, 32.912556, 46.440529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005214, -0.014061, 0.999888,
		-0.588566, 0.808321, 0.014436,
		-0.808433, -0.588575, -0.004061,
		38.258923, 32.735985, 46.439312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361992, 33.482433, 46.913998>,  <38.824825, 33.147987, 46.442154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361992, 33.482433, 46.913998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254848, 33.097191, 46.903584>,  <38.190563, 32.866047, 46.897335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254848, 33.097191, 46.903584>,  <38.361992, 33.482433, 46.913998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254848, 33.097191, 46.903584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000801, -0.026801, 0.999640,
		-0.963457, 0.267787, 0.006408,
		-0.267863, -0.963105, -0.026036,
		38.174488, 32.808258, 46.895771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863819, 33.324627, 47.489826>,  <38.361992, 33.482433, 46.913998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863819, 33.324627, 47.489826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.976704, 32.953423, 47.392544>,  <38.044434, 32.730701, 47.334175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.976704, 32.953423, 47.392544>,  <37.863819, 33.324627, 47.489826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976704, 32.953423, 47.392544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034905, -0.263278, 0.964088,
		-0.958716, -0.263589, -0.106693,
		0.282213, -0.928012, -0.243208,
		38.061367, 32.675018, 47.319580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456718, 32.869476, 47.935898>,  <37.863819, 33.324627, 47.489826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456718, 32.869476, 47.935898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.772366, 32.651051, 47.823395>,  <37.961754, 32.519993, 47.755894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.772366, 32.651051, 47.823395>,  <37.456718, 32.869476, 47.935898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772366, 32.651051, 47.823395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193742, -0.213247, 0.957596,
		-0.582890, -0.810145, -0.062480,
		0.789115, -0.546068, -0.281258,
		38.009102, 32.487228, 47.739017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382996, 32.368919, 48.418377>,  <37.456718, 32.869476, 47.935898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382996, 32.368919, 48.418377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.748894, 32.324013, 48.263126>,  <37.968433, 32.297070, 48.169975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.748894, 32.324013, 48.263126>,  <37.382996, 32.368919, 48.418377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748894, 32.324013, 48.263126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326031, -0.362291, 0.873183,
		-0.238643, -0.925279, -0.294801,
		0.914743, -0.112265, -0.388128,
		38.023315, 32.290333, 48.146687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608479, 31.694990, 48.681171>,  <37.382996, 32.368919, 48.418377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608479, 31.694990, 48.681171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.941013, 31.904877, 48.607899>,  <38.140533, 32.030807, 48.563934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.941013, 31.904877, 48.607899>,  <37.608479, 31.694990, 48.681171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941013, 31.904877, 48.607899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369807, -0.276207, 0.887104,
		0.414882, -0.805222, -0.423664,
		0.831334, 0.524717, -0.183183,
		38.190414, 32.062290, 48.552944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190464, 31.246561, 48.900162>,  <37.608479, 31.694990, 48.681171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190464, 31.246561, 48.900162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.370972, 31.602882, 48.878914>,  <38.479275, 31.816675, 48.866165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.370972, 31.602882, 48.878914>,  <38.190464, 31.246561, 48.900162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370972, 31.602882, 48.878914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455337, -0.178657, 0.872210,
		0.767479, -0.417789, -0.486239,
		0.451270, 0.890806, -0.053119,
		38.506351, 31.870125, 48.862980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855923, 31.017742, 48.989620>,  <38.190464, 31.246561, 48.900162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855923, 31.017742, 48.989620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.822594, 31.406006, 49.079842>,  <38.802597, 31.638966, 49.133976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.822594, 31.406006, 49.079842>,  <38.855923, 31.017742, 48.989620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822594, 31.406006, 49.079842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446338, -0.166017, 0.879330,
		0.890977, 0.173939, -0.419411,
		-0.083320, 0.970662, 0.225552,
		38.797596, 31.697205, 49.147507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594784, 31.306562, 49.072380>,  <38.855923, 31.017742, 48.989620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594784, 31.306562, 49.072380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.345398, 31.556795, 49.259972>,  <39.195766, 31.706936, 49.372528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.345398, 31.556795, 49.259972>,  <39.594784, 31.306562, 49.072380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345398, 31.556795, 49.259972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428965, -0.227795, 0.874127,
		0.653670, 0.746161, -0.126331,
		-0.623462, 0.625583, 0.468980,
		39.158360, 31.744471, 49.400665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006073, 31.600128, 49.570942>,  <39.594784, 31.306562, 49.072380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006073, 31.600128, 49.570942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.641697, 31.695389, 49.705685>,  <39.423073, 31.752546, 49.786530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.641697, 31.695389, 49.705685>,  <40.006073, 31.600128, 49.570942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641697, 31.695389, 49.705685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272686, -0.265131, 0.924850,
		0.309567, 0.934339, 0.176577,
		-0.910939, 0.238153, 0.336857,
		39.368416, 31.766834, 49.806740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061020, 32.113316, 50.241547>,  <40.006073, 31.600128, 49.570942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061020, 32.113316, 50.241547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.722725, 31.899965, 50.247646>,  <39.519749, 31.771954, 50.251305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.722725, 31.899965, 50.247646>,  <40.061020, 32.113316, 50.241547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722725, 31.899965, 50.247646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230631, -0.339632, 0.911844,
		-0.481181, 0.774698, 0.410254,
		-0.845739, -0.533379, 0.015244,
		39.469002, 31.739952, 50.252220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952118, 32.814850, 50.535915>,  <40.061020, 32.113316, 50.241547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952118, 32.814850, 50.535915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.086117, 33.138313, 50.342487>,  <40.166515, 33.332394, 50.226429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.086117, 33.138313, 50.342487>,  <39.952118, 32.814850, 50.535915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086117, 33.138313, 50.342487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919195, -0.167719, 0.356301,
		0.207023, -0.563858, -0.799504,
		0.334995, 0.808663, -0.483574,
		40.186615, 33.380913, 50.197414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865768, 33.487835, 50.950100>,  <39.952118, 32.814850, 50.535915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865768, 33.487835, 50.950100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.179707, 33.618183, 51.160938>,  <40.368069, 33.696392, 51.287441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.179707, 33.618183, 51.160938>,  <39.865768, 33.487835, 50.950100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179707, 33.618183, 51.160938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074775, 0.894160, -0.441460,
		-0.615164, 0.307065, 0.726144,
		0.784846, 0.325867, 0.527094,
		40.415161, 33.715942, 51.319065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124283, 34.117390, 51.031898>,  <39.865768, 33.487835, 50.950100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124283, 34.117390, 51.031898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.512943, 34.114208, 50.937382>,  <40.746140, 34.112297, 50.880672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.512943, 34.114208, 50.937382>,  <40.124283, 34.117390, 51.031898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512943, 34.114208, 50.937382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169117, 0.675031, -0.718145,
		0.165221, 0.737747, 0.654548,
		0.971649, -0.007957, -0.236294,
		40.804440, 34.111820, 50.866493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418289, 34.040806, 51.240711>,  <40.124283, 34.117390, 51.031898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418289, 34.040806, 51.240711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.305019, 34.414177, 51.328823>,  <39.237057, 34.638199, 51.381691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.305019, 34.414177, 51.328823>,  <39.418289, 34.040806, 51.240711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305019, 34.414177, 51.328823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176581, 0.175008, -0.968603,
		-0.942673, -0.313178, 0.115268,
		-0.283173, 0.933430, 0.220276,
		39.220066, 34.694206, 51.394905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033611, 34.117168, 50.735790>,  <39.418289, 34.040806, 51.240711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033611, 34.117168, 50.735790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.068935, 34.486759, 50.884636>,  <39.090130, 34.708511, 50.973946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.068935, 34.486759, 50.884636>,  <39.033611, 34.117168, 50.735790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068935, 34.486759, 50.884636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346566, 0.378739, -0.858166,
		-0.933859, -0.053175, 0.353667,
		0.088314, 0.923975, 0.372117,
		39.095428, 34.763950, 50.996273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394581, 34.455334, 50.548508>,  <39.033611, 34.117168, 50.735790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394581, 34.455334, 50.548508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.629253, 34.757999, 50.663933>,  <38.770058, 34.939598, 50.733189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.629253, 34.757999, 50.663933>,  <38.394581, 34.455334, 50.548508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629253, 34.757999, 50.663933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279512, 0.523638, -0.804783,
		-0.760054, 0.391491, 0.518704,
		0.586678, 0.756663, 0.288567,
		38.805256, 34.984997, 50.750504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994022, 35.049885, 50.495533>,  <38.394581, 34.455334, 50.548508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994022, 35.049885, 50.495533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373089, 35.174328, 50.466862>,  <38.600529, 35.248993, 50.449657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373089, 35.174328, 50.466862>,  <37.994022, 35.049885, 50.495533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373089, 35.174328, 50.466862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227040, 0.498880, -0.836404,
		-0.224452, 0.808907, 0.543406,
		0.947668, 0.311107, -0.071679,
		38.657391, 35.267658, 50.445358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972694, 35.857609, 50.513416>,  <37.994022, 35.049885, 50.495533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972694, 35.857609, 50.513416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306656, 35.729652, 50.334255>,  <38.507030, 35.652878, 50.226761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306656, 35.729652, 50.334255>,  <37.972694, 35.857609, 50.513416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306656, 35.729652, 50.334255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327803, 0.364710, -0.871511,
		0.442138, 0.874448, 0.199637,
		0.834901, -0.319886, -0.447899,
		38.557125, 35.633686, 50.199886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082333, 36.391811, 49.970528>,  <37.972694, 35.857609, 50.513416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082333, 36.391811, 49.970528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.291370, 36.061508, 49.885662>,  <38.416794, 35.863327, 49.834743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.291370, 36.061508, 49.885662>,  <38.082333, 36.391811, 49.970528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291370, 36.061508, 49.885662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091194, 0.193287, -0.976895,
		0.847692, 0.529866, 0.025706,
		0.522592, -0.825761, -0.212169,
		38.448147, 35.813778, 49.822010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509556, 36.545853, 49.493420>,  <38.082333, 36.391811, 49.970528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509556, 36.545853, 49.493420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.503853, 36.148102, 49.451458>,  <38.500431, 35.909451, 49.426281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.503853, 36.148102, 49.451458>,  <38.509556, 36.545853, 49.493420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503853, 36.148102, 49.451458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028080, 0.104476, -0.994131,
		0.999504, -0.017119, 0.026433,
		-0.014257, -0.994380, -0.104905,
		38.499577, 35.849789, 49.419987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019772, 36.439880, 49.054867>,  <38.509556, 36.545853, 49.493420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019772, 36.439880, 49.054867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.796017, 36.108997, 49.033680>,  <38.661762, 35.910465, 49.020969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.796017, 36.108997, 49.033680>,  <39.019772, 36.439880, 49.054867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796017, 36.108997, 49.033680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036014, 0.039581, -0.998567,
		0.828122, -0.560496, 0.007650,
		-0.559390, -0.827211, -0.052963,
		38.628201, 35.860832, 49.017792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314819, 35.981590, 48.682289>,  <39.019772, 36.439880, 49.054867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314819, 35.981590, 48.682289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.951176, 35.837627, 48.598389>,  <38.732990, 35.751251, 48.548050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.951176, 35.837627, 48.598389>,  <39.314819, 35.981590, 48.682289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951176, 35.837627, 48.598389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247900, -0.062770, -0.966750,
		0.334770, -0.930876, 0.146285,
		-0.909106, -0.359903, -0.209750,
		38.678444, 35.729656, 48.535465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458221, 35.295486, 48.237087>,  <39.314819, 35.981590, 48.682289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458221, 35.295486, 48.237087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.068100, 35.373184, 48.195042>,  <38.834026, 35.419804, 48.169815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.068100, 35.373184, 48.195042>,  <39.458221, 35.295486, 48.237087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068100, 35.373184, 48.195042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065788, -0.198813, -0.977827,
		-0.210851, -0.960592, 0.181122,
		-0.975302, 0.194260, -0.105116,
		38.775509, 35.431458, 48.163509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180904, 34.825237, 47.830269>,  <39.458221, 35.295486, 48.237087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180904, 34.825237, 47.830269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.917171, 35.125202, 47.808701>,  <38.758930, 35.305183, 47.795761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.917171, 35.125202, 47.808701>,  <39.180904, 34.825237, 47.830269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917171, 35.125202, 47.808701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050228, -0.115488, -0.992038,
		-0.750173, -0.651374, 0.113812,
		-0.659332, 0.749916, -0.053919,
		38.719372, 35.350178, 47.792526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577324, 34.508141, 47.435635>,  <39.180904, 34.825237, 47.830269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577324, 34.508141, 47.435635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.545010, 34.906689, 47.446362>,  <38.525623, 35.145817, 47.452797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.545010, 34.906689, 47.446362>,  <38.577324, 34.508141, 47.435635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545010, 34.906689, 47.446362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394162, -0.007224, -0.919012,
		-0.915484, -0.084811, 0.393315,
		-0.080784, 0.996371, 0.026816,
		38.520775, 35.205601, 47.454407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876446, 34.711575, 47.403023>,  <38.577324, 34.508141, 47.435635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876446, 34.711575, 47.403023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.080441, 35.023457, 47.257717>,  <38.202839, 35.210587, 47.170532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.080441, 35.023457, 47.257717>,  <37.876446, 34.711575, 47.403023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080441, 35.023457, 47.257717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379688, -0.174894, -0.908432,
		-0.771846, 0.601221, 0.206852,
		0.509991, 0.779709, -0.363267,
		38.233437, 35.257370, 47.148735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442307, 35.014851, 46.813766>,  <37.876446, 34.711575, 47.403023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442307, 35.014851, 46.813766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812984, 35.147392, 46.742836>,  <38.035393, 35.226917, 46.700279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812984, 35.147392, 46.742836>,  <37.442307, 35.014851, 46.813766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812984, 35.147392, 46.742836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197214, 0.027097, -0.979986,
		-0.319915, 0.943118, 0.090458,
		0.926693, 0.331352, -0.177328,
		38.090992, 35.246799, 46.689636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292397, 35.667183, 47.196522>,  <37.442307, 35.014851, 46.813766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292397, 35.667183, 47.196522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896935, 35.661488, 47.136723>,  <36.659657, 35.658070, 47.100842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896935, 35.661488, 47.136723>,  <37.292397, 35.667183, 47.196522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896935, 35.661488, 47.136723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149942, 0.037849, 0.987970,
		-0.008408, 0.999182, -0.039554,
		-0.988659, -0.014237, -0.149501,
		36.600338, 35.657215, 47.091873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067116, 36.191181, 47.636795>,  <37.292397, 35.667183, 47.196522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067116, 36.191181, 47.636795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.746819, 35.963074, 47.563465>,  <36.554642, 35.826210, 47.519466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.746819, 35.963074, 47.563465>,  <37.067116, 36.191181, 47.636795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746819, 35.963074, 47.563465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267391, 0.066422, 0.961296,
		-0.536016, 0.818771, -0.205671,
		-0.800743, -0.570264, -0.183329,
		36.506596, 35.791996, 47.508465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546143, 36.554199, 47.954052>,  <37.067116, 36.191181, 47.636795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546143, 36.554199, 47.954052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424210, 36.178280, 47.892265>,  <36.351048, 35.952728, 47.855194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424210, 36.178280, 47.892265>,  <36.546143, 36.554199, 47.954052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424210, 36.178280, 47.892265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189600, -0.099060, 0.976852,
		-0.933342, 0.327067, -0.147988,
		-0.304836, -0.939795, -0.154468,
		36.332760, 35.896343, 47.845924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866730, 36.483982, 48.323589>,  <36.546143, 36.554199, 47.954052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866730, 36.483982, 48.323589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995537, 36.108627, 48.273407>,  <36.072823, 35.883415, 48.243298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995537, 36.108627, 48.273407>,  <35.866730, 36.483982, 48.323589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995537, 36.108627, 48.273407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164616, -0.185989, 0.968664,
		-0.932313, -0.291274, -0.214364,
		0.322016, -0.938386, -0.125451,
		36.092140, 35.827110, 48.235771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317093, 36.062275, 48.652245>,  <35.866730, 36.483982, 48.323589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317093, 36.062275, 48.652245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629551, 35.812664, 48.644188>,  <35.817024, 35.662895, 48.639355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629551, 35.812664, 48.644188>,  <35.317093, 36.062275, 48.652245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629551, 35.812664, 48.644188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074388, -0.125050, 0.989358,
		-0.619907, -0.771330, -0.144102,
		0.781141, -0.624029, -0.020141,
		35.863892, 35.625454, 48.638145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180489, 35.415710, 48.991859>,  <35.317093, 36.062275, 48.652245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180489, 35.415710, 48.991859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.579956, 35.406490, 49.010326>,  <35.819637, 35.400959, 49.021408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.579956, 35.406490, 49.010326>,  <35.180489, 35.415710, 48.991859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579956, 35.406490, 49.010326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051463, -0.379193, 0.923885,
		-0.003789, -0.925031, -0.379874,
		0.998668, -0.023050, 0.046168,
		35.879555, 35.399574, 49.024178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322254, 34.828987, 49.398495>,  <35.180489, 35.415710, 48.991859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322254, 34.828987, 49.398495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653797, 35.052769, 49.398277>,  <35.852722, 35.187038, 49.398148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653797, 35.052769, 49.398277>,  <35.322254, 34.828987, 49.398495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653797, 35.052769, 49.398277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128369, -0.189232, 0.973505,
		0.544532, -0.806968, -0.228663,
		0.828858, 0.559458, -0.000547,
		35.902454, 35.220608, 49.398113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980453, 34.162430, 49.391148>,  <35.322254, 34.828987, 49.398495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980453, 34.162430, 49.391148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610600, 34.107124, 49.533092>,  <34.388687, 34.073940, 49.618259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610600, 34.107124, 49.533092>,  <34.980453, 34.162430, 49.391148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610600, 34.107124, 49.533092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374957, 0.167285, -0.911824,
		0.066712, -0.976165, -0.206522,
		-0.924639, -0.138266, 0.354860,
		34.333206, 34.065643, 49.639549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649765, 33.671753, 48.837887>,  <34.980453, 34.162430, 49.391148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649765, 33.671753, 48.837887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368816, 33.873268, 49.039032>,  <34.200249, 33.994179, 49.159721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368816, 33.873268, 49.039032>,  <34.649765, 33.671753, 48.837887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368816, 33.873268, 49.039032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531696, 0.098380, -0.841202,
		-0.473258, -0.858208, 0.198762,
		-0.702372, 0.503787, 0.502865,
		34.158104, 34.024403, 49.189892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998440, 33.356529, 48.793694>,  <34.649765, 33.671753, 48.837887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998440, 33.356529, 48.793694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908344, 33.739292, 48.867012>,  <33.854286, 33.968948, 48.911003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908344, 33.739292, 48.867012>,  <33.998440, 33.356529, 48.793694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908344, 33.739292, 48.867012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552805, 0.029400, -0.832792,
		-0.802292, -0.288908, 0.522359,
		-0.225243, 0.956905, 0.183297,
		33.840771, 34.026363, 48.922001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359447, 33.385429, 48.656528>,  <33.998440, 33.356529, 48.793694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359447, 33.385429, 48.656528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474476, 33.768425, 48.647476>,  <33.543491, 33.998222, 48.642044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474476, 33.768425, 48.647476>,  <33.359447, 33.385429, 48.656528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474476, 33.768425, 48.647476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598968, 0.161352, -0.784349,
		-0.747356, 0.239112, 0.619908,
		0.287570, 0.957493, -0.022633,
		33.560745, 34.055672, 48.640686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797478, 33.645710, 48.320759>,  <33.359447, 33.385429, 48.656528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797478, 33.645710, 48.320759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040562, 33.962860, 48.302696>,  <33.186413, 34.153152, 48.291859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040562, 33.962860, 48.302696>,  <32.797478, 33.645710, 48.320759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040562, 33.962860, 48.302696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474563, 0.316963, -0.821173,
		-0.636777, 0.520461, 0.568891,
		0.607705, 0.792878, -0.045157,
		33.222874, 34.200722, 48.289150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377338, 34.232464, 48.095131>,  <32.797478, 33.645710, 48.320759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377338, 34.232464, 48.095131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757278, 34.315067, 48.001198>,  <32.985241, 34.364632, 47.944839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757278, 34.315067, 48.001198>,  <32.377338, 34.232464, 48.095131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757278, 34.315067, 48.001198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299641, 0.386144, -0.872415,
		-0.089487, 0.899024, 0.428657,
		0.949846, 0.206513, -0.234830,
		33.042233, 34.377022, 47.930748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390499, 34.902493, 47.855835>,  <32.377338, 34.232464, 48.095131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390499, 34.902493, 47.855835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.702286, 34.720280, 47.683826>,  <32.889359, 34.610950, 47.580620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.702286, 34.720280, 47.683826>,  <32.390499, 34.902493, 47.855835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702286, 34.720280, 47.683826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213171, 0.452607, -0.865855,
		0.589057, 0.766575, 0.255687,
		0.779468, -0.455533, -0.430022,
		32.936127, 34.583618, 47.554821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.756714, 28.550858, 50.519020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.030384, 28.833202, 50.445633>,  <38.194588, 29.002609, 50.401600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.030384, 28.833202, 50.445633>,  <37.756714, 28.550858, 50.519020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030384, 28.833202, 50.445633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591891, 0.390420, -0.705150,
		-0.426107, 0.591044, 0.684909,
		0.684177, 0.705861, -0.183473,
		38.235638, 29.044960, 50.390591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432823, 29.123192, 50.372791>,  <37.756714, 28.550858, 50.519020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432823, 29.123192, 50.372791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.782112, 29.200636, 50.193905>,  <37.991684, 29.247103, 50.086575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.782112, 29.200636, 50.193905>,  <37.432823, 29.123192, 50.372791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782112, 29.200636, 50.193905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478716, 0.512504, -0.712861,
		0.091183, 0.836574, 0.540213,
		0.873222, 0.193608, -0.447213,
		38.044079, 29.258718, 50.059742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423477, 29.869566, 50.254829>,  <37.432823, 29.123192, 50.372791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423477, 29.869566, 50.254829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.659100, 29.661253, 50.007668>,  <37.800472, 29.536266, 49.859371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.659100, 29.661253, 50.007668>,  <37.423477, 29.869566, 50.254829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659100, 29.661253, 50.007668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427840, 0.447692, -0.785191,
		0.685542, 0.726883, 0.040904,
		0.589055, -0.520781, -0.617901,
		37.835815, 29.505018, 49.822296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862415, 30.351784, 49.804585>,  <37.423477, 29.869566, 50.254829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862415, 30.351784, 49.804585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.771786, 30.000088, 49.636967>,  <37.717407, 29.789070, 49.536396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.771786, 30.000088, 49.636967>,  <37.862415, 30.351784, 49.804585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771786, 30.000088, 49.636967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343359, 0.474719, -0.810399,
		0.911465, -0.039733, -0.409455,
		-0.226575, -0.879240, -0.419047,
		37.703812, 29.736315, 49.511253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743538, 30.544411, 49.164970>,  <37.862415, 30.351784, 49.804585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743538, 30.544411, 49.164970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.677872, 30.156649, 49.091972>,  <37.638474, 29.923992, 49.048172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.677872, 30.156649, 49.091972>,  <37.743538, 30.544411, 49.164970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677872, 30.156649, 49.091972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326194, 0.227947, -0.917408,
		0.930939, -0.091077, -0.353635,
		-0.164165, -0.969405, -0.182496,
		37.628624, 29.865828, 49.037224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968502, 30.535366, 48.535389>,  <37.743538, 30.544411, 49.164970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968502, 30.535366, 48.535389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.738884, 30.211704, 48.585583>,  <37.601112, 30.017508, 48.615700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.738884, 30.211704, 48.585583>,  <37.968502, 30.535366, 48.535389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738884, 30.211704, 48.585583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284243, 0.053198, -0.957275,
		0.767907, -0.585184, -0.260535,
		-0.574042, -0.809153, 0.125483,
		37.566669, 29.968958, 48.623226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077728, 30.202999, 47.936565>,  <37.968502, 30.535366, 48.535389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077728, 30.202999, 47.936565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.760044, 30.003033, 48.074730>,  <37.569431, 29.883053, 48.157631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.760044, 30.003033, 48.074730>,  <38.077728, 30.202999, 47.936565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760044, 30.003033, 48.074730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399944, 0.002114, -0.916537,
		0.457462, -0.866071, -0.201618,
		-0.794212, -0.499917, 0.345413,
		37.521782, 29.853058, 48.178352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994930, 29.454380, 47.718090>,  <38.077728, 30.202999, 47.936565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994930, 29.454380, 47.718090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.622414, 29.568754, 47.808365>,  <37.398903, 29.637379, 47.862530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.622414, 29.568754, 47.808365>,  <37.994930, 29.454380, 47.718090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622414, 29.568754, 47.808365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262797, -0.098349, -0.959826,
		-0.252252, -0.953189, 0.166734,
		-0.931293, 0.285935, 0.225686,
		37.343025, 29.654535, 47.876072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563023, 29.055008, 47.336079>,  <37.994930, 29.454380, 47.718090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563023, 29.055008, 47.336079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.320534, 29.353632, 47.445724>,  <37.175041, 29.532806, 47.511513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.320534, 29.353632, 47.445724>,  <37.563023, 29.055008, 47.336079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320534, 29.353632, 47.445724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395109, 0.016407, -0.918488,
		-0.690205, -0.665114, 0.285027,
		-0.606223, 0.746562, 0.274117,
		37.138668, 29.577600, 47.527958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843369, 28.966227, 47.025146>,  <37.563023, 29.055008, 47.336079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843369, 28.966227, 47.025146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.797977, 29.351595, 47.122261>,  <36.770744, 29.582815, 47.180531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.797977, 29.351595, 47.122261>,  <36.843369, 28.966227, 47.025146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797977, 29.351595, 47.122261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389597, 0.181643, -0.902895,
		-0.913968, -0.197042, 0.354735,
		-0.113473, 0.963421, 0.242783,
		36.763935, 29.640621, 47.195095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168343, 29.113739, 46.883385>,  <36.843369, 28.966227, 47.025146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168343, 29.113739, 46.883385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.354950, 29.467518, 46.879093>,  <36.466915, 29.679785, 46.876518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.354950, 29.467518, 46.879093>,  <36.168343, 29.113739, 46.883385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354950, 29.467518, 46.879093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377494, 0.188112, -0.906704,
		-0.799915, 0.427042, 0.421631,
		0.466514, 0.884449, -0.010732,
		36.494904, 29.732853, 46.875874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695801, 29.625069, 46.592003>,  <36.168343, 29.113739, 46.883385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695801, 29.625069, 46.592003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.055603, 29.795263, 46.552292>,  <36.271484, 29.897381, 46.528465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.055603, 29.795263, 46.552292>,  <35.695801, 29.625069, 46.592003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055603, 29.795263, 46.552292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149964, 0.087255, -0.984834,
		-0.410372, 0.900748, 0.142294,
		0.899503, 0.425487, -0.099273,
		36.325455, 29.922909, 46.522511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413403, 30.332525, 46.811020>,  <35.695801, 29.625069, 46.592003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413403, 30.332525, 46.811020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.070965, 30.524038, 46.888870>,  <34.865501, 30.638947, 46.935581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.070965, 30.524038, 46.888870>,  <35.413403, 30.332525, 46.811020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070965, 30.524038, 46.888870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110935, -0.197565, 0.973993,
		0.504780, 0.855416, 0.116020,
		-0.856090, 0.478782, 0.194622,
		34.814137, 30.667673, 46.947258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594917, 30.806814, 47.416321>,  <35.413403, 30.332525, 46.811020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594917, 30.806814, 47.416321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.200474, 30.740511, 47.412193>,  <34.963806, 30.700729, 47.409718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.200474, 30.740511, 47.412193>,  <35.594917, 30.806814, 47.416321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200474, 30.740511, 47.412193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037332, -0.281784, 0.958752,
		-0.161830, 0.945051, 0.284058,
		-0.986112, -0.165760, -0.010320,
		34.904640, 30.690783, 47.409096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408531, 31.289587, 47.957901>,  <35.594917, 30.806814, 47.416321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408531, 31.289587, 47.957901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.102703, 31.033676, 47.926617>,  <34.919205, 30.880131, 47.907845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.102703, 31.033676, 47.926617>,  <35.408531, 31.289587, 47.957901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102703, 31.033676, 47.926617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054561, -0.185158, 0.981193,
		-0.642226, 0.745924, 0.176473,
		-0.764571, -0.639776, -0.078215,
		34.873333, 30.841743, 47.903152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938286, 31.518406, 48.435104>,  <35.408531, 31.289587, 47.957901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938286, 31.518406, 48.435104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.847912, 31.133097, 48.377060>,  <34.793686, 30.901911, 48.342236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.847912, 31.133097, 48.377060>,  <34.938286, 31.518406, 48.435104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847912, 31.133097, 48.377060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143477, -0.114428, 0.983016,
		-0.963518, 0.242919, -0.112355,
		-0.225937, -0.963274, -0.145107,
		34.780132, 30.844114, 48.333527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197342, 31.411415, 48.508133>,  <34.938286, 31.518406, 48.435104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197342, 31.411415, 48.508133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.392647, 31.073036, 48.593895>,  <34.509830, 30.870008, 48.645351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.392647, 31.073036, 48.593895>,  <34.197342, 31.411415, 48.508133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392647, 31.073036, 48.593895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171328, 0.147977, 0.974038,
		-0.855712, -0.512322, -0.072682,
		0.488266, -0.845948, 0.214401,
		34.539127, 30.819252, 48.658215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164959, 31.433187, 49.185688>,  <34.197342, 31.411415, 48.508133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164959, 31.433187, 49.185688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.354225, 31.083185, 49.144749>,  <34.467785, 30.873184, 49.120186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.354225, 31.083185, 49.144749>,  <34.164959, 31.433187, 49.185688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354225, 31.083185, 49.144749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060481, -0.083641, 0.994659,
		-0.878894, -0.476831, 0.013345,
		0.473168, -0.875006, -0.102351,
		34.496174, 30.820683, 49.114044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858761, 30.945213, 49.639900>,  <34.164959, 31.433187, 49.185688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858761, 30.945213, 49.639900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220173, 30.789888, 49.567406>,  <34.437019, 30.696693, 49.523911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220173, 30.789888, 49.567406>,  <33.858761, 30.945213, 49.639900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220173, 30.789888, 49.567406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094734, -0.231466, 0.968219,
		-0.417921, -0.891985, -0.172350,
		0.903530, -0.388312, -0.181236,
		34.491234, 30.673395, 49.513035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888542, 30.195429, 50.002216>,  <33.858761, 30.945213, 49.639900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888542, 30.195429, 50.002216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.238270, 30.380487, 49.943523>,  <34.448105, 30.491524, 49.908306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.238270, 30.380487, 49.943523>,  <33.888542, 30.195429, 50.002216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238270, 30.380487, 49.943523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210219, -0.088479, 0.973642,
		0.437471, -0.882116, -0.174616,
		0.874315, 0.462648, -0.146731,
		34.500565, 30.519281, 49.899506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340988, 29.628996, 50.392849>,  <33.888542, 30.195429, 50.002216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340988, 29.628996, 50.392849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.518139, 29.984301, 50.344101>,  <34.624432, 30.197483, 50.314850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.518139, 29.984301, 50.344101>,  <34.340988, 29.628996, 50.392849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518139, 29.984301, 50.344101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164200, 0.053277, 0.984987,
		0.881418, -0.456241, -0.122257,
		0.442878, 0.888260, -0.121874,
		34.651001, 30.250778, 50.307537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888962, 29.632507, 50.830994>,  <34.340988, 29.628996, 50.392849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888962, 29.632507, 50.830994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.830696, 30.024113, 50.773987>,  <34.795734, 30.259077, 50.739784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.830696, 30.024113, 50.773987>,  <34.888962, 29.632507, 50.830994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830696, 30.024113, 50.773987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257740, 0.176632, 0.949932,
		0.955171, 0.101642, -0.278060,
		-0.145667, 0.979015, -0.142517,
		34.786995, 30.317818, 50.731232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475189, 29.969847, 51.086651>,  <34.888962, 29.632507, 50.830994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475189, 29.969847, 51.086651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.197788, 30.257914, 51.094730>,  <35.031345, 30.430754, 51.099579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.197788, 30.257914, 51.094730>,  <35.475189, 29.969847, 51.086651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197788, 30.257914, 51.094730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207149, 0.172466, 0.962987,
		0.690029, 0.672021, -0.268789,
		-0.693505, 0.720169, 0.020202,
		34.989738, 30.473965, 51.100792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645603, 30.588194, 51.412094>,  <35.475189, 29.969847, 51.086651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645603, 30.588194, 51.412094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.251682, 30.656740, 51.423363>,  <35.015327, 30.697868, 51.430122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.251682, 30.656740, 51.423363>,  <35.645603, 30.588194, 51.412094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251682, 30.656740, 51.423363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087503, 0.349527, 0.932831,
		0.150010, 0.921121, -0.359211,
		-0.984805, 0.171366, 0.028168,
		34.956242, 30.708151, 51.431812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556446, 31.251160, 51.603100>,  <35.645603, 30.588194, 51.412094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556446, 31.251160, 51.603100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.234428, 31.038202, 51.707760>,  <35.041218, 30.910429, 51.770557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.234428, 31.038202, 51.707760>,  <35.556446, 31.251160, 51.603100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234428, 31.038202, 51.707760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032227, 0.401170, 0.915437,
		-0.592338, 0.745400, -0.305803,
		-0.805045, -0.532393, 0.261650,
		34.992916, 30.878485, 51.786255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477058, 31.915398, 51.802082>,  <35.556446, 31.251160, 51.603100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477058, 31.915398, 51.802082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.489025, 32.236851, 52.039833>,  <35.496204, 32.429722, 52.182484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.489025, 32.236851, 52.039833>,  <35.477058, 31.915398, 51.802082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489025, 32.236851, 52.039833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539093, 0.513717, -0.667438,
		-0.841714, -0.300455, 0.448602,
		0.029919, 0.803630, 0.594376,
		35.498001, 32.477940, 52.218147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820950, 32.113049, 51.966663>,  <35.477058, 31.915398, 51.802082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820950, 32.113049, 51.966663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.056999, 32.434261, 51.999886>,  <35.198627, 32.626987, 52.019817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.056999, 32.434261, 51.999886>,  <34.820950, 32.113049, 51.966663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056999, 32.434261, 51.999886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572994, 0.489090, -0.657623,
		-0.568712, 0.340490, 0.748755,
		0.590123, 0.803030, 0.083053,
		35.234035, 32.675171, 52.024803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376850, 32.613823, 52.034584>,  <34.820950, 32.113049, 51.966663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376850, 32.613823, 52.034584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.706631, 32.808311, 51.918747>,  <34.904499, 32.925007, 51.849243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.706631, 32.808311, 51.918747>,  <34.376850, 32.613823, 52.034584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706631, 32.808311, 51.918747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554010, 0.588922, -0.588425,
		-0.115556, 0.645567, 0.754910,
		0.824451, 0.486224, -0.289597,
		34.953964, 32.954178, 51.831867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191486, 33.356491, 52.056828>,  <34.376850, 32.613823, 52.034584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191486, 33.356491, 52.056828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.476200, 33.315708, 51.778847>,  <34.647030, 33.291237, 51.612057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.476200, 33.315708, 51.778847>,  <34.191486, 33.356491, 52.056828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476200, 33.315708, 51.778847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502488, 0.617405, -0.605241,
		0.490781, 0.780009, 0.388226,
		0.711786, -0.101961, -0.694956,
		34.689735, 33.285118, 51.570358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165081, 33.918850, 51.728241>,  <34.191486, 33.356491, 52.056828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165081, 33.918850, 51.728241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.380920, 33.723316, 51.454052>,  <34.510426, 33.605995, 51.289539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.380920, 33.723316, 51.454052>,  <34.165081, 33.918850, 51.728241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380920, 33.723316, 51.454052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364417, 0.598346, -0.713570,
		0.758966, 0.634841, 0.144729,
		0.539602, -0.488834, -0.685471,
		34.542801, 33.576668, 51.248409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676830, 34.379971, 51.376408>,  <34.165081, 33.918850, 51.728241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676830, 34.379971, 51.376408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.582672, 34.069279, 51.142727>,  <34.526176, 33.882866, 51.002518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.582672, 34.069279, 51.142727>,  <34.676830, 34.379971, 51.376408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582672, 34.069279, 51.142727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347800, 0.628604, -0.695624,
		0.907538, 0.039440, -0.418114,
		-0.235392, -0.776725, -0.584199,
		34.512054, 33.836262, 50.967468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775879, 34.622437, 50.661087>,  <34.676830, 34.379971, 51.376408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775879, 34.622437, 50.661087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.569683, 34.292500, 50.568214>,  <34.445965, 34.094540, 50.512489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.569683, 34.292500, 50.568214>,  <34.775879, 34.622437, 50.661087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569683, 34.292500, 50.568214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189272, 0.373869, -0.907964,
		0.835731, -0.424099, -0.348845,
		-0.515489, -0.824840, -0.232184,
		34.415035, 34.045048, 50.498558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845612, 34.548164, 49.987137>,  <34.775879, 34.622437, 50.661087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845612, 34.548164, 49.987137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.569141, 34.262749, 50.032982>,  <34.403259, 34.091499, 50.060490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.569141, 34.262749, 50.032982>,  <34.845612, 34.548164, 49.987137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569141, 34.262749, 50.032982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328364, 0.168805, -0.929345,
		0.643776, -0.679978, -0.350975,
		-0.691180, -0.713537, 0.114608,
		34.361786, 34.048687, 50.067364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621582, 34.481998, 49.960117>,  <34.845612, 34.548164, 49.987137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621582, 34.481998, 49.960117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.816986, 34.827202, 49.908619>,  <35.934231, 35.034325, 49.877720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.816986, 34.827202, 49.908619>,  <35.621582, 34.481998, 49.960117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816986, 34.827202, 49.908619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304638, -0.030424, 0.951982,
		0.817649, -0.504277, -0.277767,
		0.488513, 0.863006, -0.128746,
		35.963539, 35.086105, 49.869995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036411, 34.399105, 50.429752>,  <35.621582, 34.481998, 49.960117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036411, 34.399105, 50.429752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.109493, 34.785053, 50.354233>,  <36.153343, 35.016621, 50.308922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.109493, 34.785053, 50.354233>,  <36.036411, 34.399105, 50.429752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109493, 34.785053, 50.354233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415939, 0.098145, 0.904081,
		0.890851, -0.243705, -0.383396,
		0.182701, 0.964871, -0.188799,
		36.164303, 35.074516, 50.297592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732510, 34.475262, 50.545246>,  <36.036411, 34.399105, 50.429752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732510, 34.475262, 50.545246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.521027, 34.812279, 50.586399>,  <36.394135, 35.014488, 50.611092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.521027, 34.812279, 50.586399>,  <36.732510, 34.475262, 50.545246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521027, 34.812279, 50.586399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329874, 0.092282, 0.939503,
		0.782080, 0.530661, -0.326725,
		-0.528709, 0.842545, 0.102879,
		36.362415, 35.065041, 50.617264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181240, 35.015923, 50.899376>,  <36.732510, 34.475262, 50.545246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181240, 35.015923, 50.899376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.808651, 35.144131, 50.968224>,  <36.585098, 35.221054, 51.009533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.808651, 35.144131, 50.968224>,  <37.181240, 35.015923, 50.899376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808651, 35.144131, 50.968224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238923, 0.182152, 0.953801,
		0.274360, 0.929563, -0.246249,
		-0.931473, 0.320520, 0.172119,
		36.529209, 35.240288, 51.019859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274784, 35.620819, 51.302559>,  <37.181240, 35.015923, 50.899376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274784, 35.620819, 51.302559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.889984, 35.537285, 51.372925>,  <36.659103, 35.487164, 51.415146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.889984, 35.537285, 51.372925>,  <37.274784, 35.620819, 51.302559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889984, 35.537285, 51.372925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154342, 0.115572, 0.981235,
		-0.225245, 0.971098, -0.078949,
		-0.961999, -0.208833, 0.175914,
		36.601383, 35.474636, 51.425697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031433, 36.076492, 51.867767>,  <37.274784, 35.620819, 51.302559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031433, 36.076492, 51.867767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.773460, 35.770885, 51.860420>,  <36.618675, 35.587521, 51.856010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.773460, 35.770885, 51.860420>,  <37.031433, 36.076492, 51.867767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773460, 35.770885, 51.860420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098133, -0.106626, 0.989445,
		-0.757910, 0.636326, 0.143742,
		-0.644936, -0.764016, -0.018369,
		36.579979, 35.541679, 51.854908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598057, 36.339199, 52.305347>,  <37.031433, 36.076492, 51.867767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598057, 36.339199, 52.305347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.567108, 35.942745, 52.262142>,  <36.548538, 35.704872, 52.236221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.567108, 35.942745, 52.262142>,  <36.598057, 36.339199, 52.305347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567108, 35.942745, 52.262142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198368, -0.121473, 0.972571,
		-0.977069, 0.053825, 0.206008,
		-0.077373, -0.991134, -0.108011,
		36.543896, 35.645405, 52.229740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232037, 36.084595, 52.909561>,  <36.598057, 36.339199, 52.305347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232037, 36.084595, 52.909561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.402382, 35.752312, 52.766132>,  <36.504589, 35.552944, 52.680077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.402382, 35.752312, 52.766132>,  <36.232037, 36.084595, 52.909561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402382, 35.752312, 52.766132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119007, -0.341431, 0.932343,
		-0.896926, -0.439724, -0.046544,
		0.425865, -0.830703, -0.358568,
		36.530140, 35.503101, 52.658562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819824, 35.558434, 53.041405>,  <36.232037, 36.084595, 52.909561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819824, 35.558434, 53.041405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.199657, 35.433949, 53.026272>,  <36.427559, 35.359257, 53.017193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.199657, 35.433949, 53.026272>,  <35.819824, 35.558434, 53.041405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199657, 35.433949, 53.026272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052028, -0.275433, 0.959911,
		-0.309168, -0.909547, -0.277739,
		0.949583, -0.311224, -0.037833,
		36.484531, 35.340584, 53.014923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.668175, 37.049313, 37.301720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986786, 36.814678, 37.243118>,  <35.177952, 36.673897, 37.207958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986786, 36.814678, 37.243118>,  <34.668175, 37.049313, 37.301720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986786, 36.814678, 37.243118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092756, -0.358006, 0.929101,
		-0.597449, -0.726462, -0.339570,
		0.796524, -0.586588, -0.146507,
		35.225742, 36.638702, 37.199165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545845, 36.448917, 37.697010>,  <34.668175, 37.049313, 37.301720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545845, 36.448917, 37.697010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939087, 36.433796, 37.625370>,  <35.175034, 36.424725, 37.582386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939087, 36.433796, 37.625370>,  <34.545845, 36.448917, 37.697010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939087, 36.433796, 37.625370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165547, -0.233839, 0.958078,
		-0.078094, -0.971540, -0.223631,
		0.983105, -0.037799, -0.179097,
		35.234020, 36.422455, 37.571640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794346, 35.705273, 37.837296>,  <34.545845, 36.448917, 37.697010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794346, 35.705273, 37.837296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098694, 35.962372, 37.872971>,  <35.281303, 36.116631, 37.894375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098694, 35.962372, 37.872971>,  <34.794346, 35.705273, 37.837296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098694, 35.962372, 37.872971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060353, -0.206942, 0.976490,
		0.646094, -0.737598, -0.196248,
		0.760869, 0.642748, 0.089188,
		35.326954, 36.155197, 37.899727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265614, 35.333870, 38.277699>,  <34.794346, 35.705273, 37.837296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265614, 35.333870, 38.277699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369205, 35.720196, 38.282249>,  <35.431358, 35.951992, 38.284981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369205, 35.720196, 38.282249>,  <35.265614, 35.333870, 38.277699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369205, 35.720196, 38.282249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182300, -0.060448, 0.981383,
		0.948524, -0.252081, -0.191723,
		0.258977, 0.965817, 0.011382,
		35.446899, 36.009941, 38.285664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877991, 35.390823, 38.616329>,  <35.265614, 35.333870, 38.277699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877991, 35.390823, 38.616329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737682, 35.764233, 38.645981>,  <35.653496, 35.988277, 38.663773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737682, 35.764233, 38.645981>,  <35.877991, 35.390823, 38.616329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737682, 35.764233, 38.645981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066216, -0.054233, 0.996330,
		0.934117, 0.354393, -0.042790,
		-0.350772, 0.933523, 0.074126,
		35.632450, 36.044289, 38.668221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284481, 35.722122, 39.080936>,  <35.877991, 35.390823, 38.616329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284481, 35.722122, 39.080936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937908, 35.921719, 39.073868>,  <35.729965, 36.041477, 39.069626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937908, 35.921719, 39.073868>,  <36.284481, 35.722122, 39.080936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937908, 35.921719, 39.073868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019964, 0.069988, 0.997348,
		0.498903, 0.863777, -0.070601,
		-0.866428, 0.498989, -0.017673,
		35.677979, 36.071415, 39.068565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302814, 36.333778, 39.545841>,  <36.284481, 35.722122, 39.080936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302814, 36.333778, 39.545841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910896, 36.261951, 39.510632>,  <35.675743, 36.218857, 39.489506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910896, 36.261951, 39.510632>,  <36.302814, 36.333778, 39.545841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910896, 36.261951, 39.510632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143226, 0.322904, 0.935532,
		-0.139566, 0.929241, -0.342099,
		-0.979800, -0.179566, -0.088025,
		35.616955, 36.208080, 39.484222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071266, 36.769348, 39.983967>,  <36.302814, 36.333778, 39.545841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071266, 36.769348, 39.983967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737743, 36.562145, 39.907616>,  <35.537628, 36.437824, 39.861805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737743, 36.562145, 39.907616>,  <36.071266, 36.769348, 39.983967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737743, 36.562145, 39.907616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381108, 0.289951, 0.877886,
		-0.399405, 0.804734, -0.439180,
		-0.833806, -0.518008, -0.190883,
		35.487602, 36.406742, 39.850349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523300, 37.209324, 40.046482>,  <36.071266, 36.769348, 39.983967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523300, 37.209324, 40.046482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388477, 36.835506, 40.092125>,  <35.307583, 36.611217, 40.119511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388477, 36.835506, 40.092125>,  <35.523300, 37.209324, 40.046482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388477, 36.835506, 40.092125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420246, 0.257792, 0.870021,
		-0.842488, 0.245293, -0.479629,
		-0.337055, -0.934545, 0.114103,
		35.287361, 36.555141, 40.126354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798443, 37.284657, 40.288464>,  <35.523300, 37.209324, 40.046482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798443, 37.284657, 40.288464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929859, 36.929424, 40.417068>,  <35.008709, 36.716286, 40.494232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929859, 36.929424, 40.417068>,  <34.798443, 37.284657, 40.288464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929859, 36.929424, 40.417068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412285, 0.171419, 0.894783,
		-0.849753, -0.426530, -0.309824,
		0.328542, -0.888081, 0.321516,
		35.028423, 36.662998, 40.513523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271095, 37.097305, 40.773689>,  <34.798443, 37.284657, 40.288464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271095, 37.097305, 40.773689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578880, 36.854443, 40.852978>,  <34.763550, 36.708725, 40.900551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578880, 36.854443, 40.852978>,  <34.271095, 37.097305, 40.773689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578880, 36.854443, 40.852978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219076, 0.040621, 0.974862,
		-0.599948, -0.793541, -0.101757,
		0.769459, -0.607159, 0.198216,
		34.809719, 36.672295, 40.912441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034344, 36.424137, 41.205967>,  <34.271095, 37.097305, 40.773689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034344, 36.424137, 41.205967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419102, 36.496399, 41.288059>,  <34.649956, 36.539757, 41.337315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419102, 36.496399, 41.288059>,  <34.034344, 36.424137, 41.205967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419102, 36.496399, 41.288059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220609, 0.069419, 0.972889,
		0.161509, -0.981094, 0.106628,
		0.961897, 0.180653, 0.205226,
		34.707672, 36.550594, 41.349628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364971, 36.452808, 41.454243>,  <34.034344, 36.424137, 41.205967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364971, 36.452808, 41.454243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993484, 36.529034, 41.581470>,  <32.770592, 36.574768, 41.657806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993484, 36.529034, 41.581470>,  <33.364971, 36.452808, 41.454243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993484, 36.529034, 41.581470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297463, 0.129202, -0.945951,
		-0.221356, -0.973136, -0.063308,
		-0.928718, 0.190560, 0.318072,
		32.714870, 36.586201, 41.676891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907490, 35.905186, 41.182163>,  <33.364971, 36.452808, 41.454243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907490, 35.905186, 41.182163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683983, 36.228046, 41.258350>,  <32.549877, 36.421764, 41.304062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683983, 36.228046, 41.258350>,  <32.907490, 35.905186, 41.182163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683983, 36.228046, 41.258350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421110, -0.078293, -0.903624,
		-0.714451, -0.585127, 0.383649,
		-0.558772, 0.807154, 0.190466,
		32.516350, 36.470192, 41.315491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273125, 35.698307, 40.959469>,  <32.907490, 35.905186, 41.182163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273125, 35.698307, 40.959469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239147, 36.095463, 40.992817>,  <32.218761, 36.333755, 41.012825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239147, 36.095463, 40.992817>,  <32.273125, 35.698307, 40.959469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239147, 36.095463, 40.992817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531213, 0.025663, -0.846849,
		-0.842969, -0.116222, 0.525257,
		-0.084943, 0.992892, 0.083371,
		32.213665, 36.393330, 41.017830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612545, 35.794434, 40.775394>,  <32.273125, 35.698307, 40.959469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612545, 35.794434, 40.775394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803265, 36.144295, 40.740414>,  <31.917696, 36.354210, 40.719425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803265, 36.144295, 40.740414>,  <31.612545, 35.794434, 40.775394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803265, 36.144295, 40.740414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321037, 0.080662, -0.943626,
		-0.818290, 0.477993, 0.319255,
		0.476798, 0.874652, -0.087449,
		31.946304, 36.406689, 40.714180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148844, 36.343113, 40.528782>,  <31.612545, 35.794434, 40.775394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148844, 36.343113, 40.528782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515018, 36.468273, 40.427536>,  <31.734724, 36.543369, 40.366791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515018, 36.468273, 40.427536>,  <31.148844, 36.343113, 40.528782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515018, 36.468273, 40.427536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298012, 0.104339, -0.948843,
		-0.270486, 0.944036, 0.188765,
		0.915438, 0.312903, -0.253112,
		31.789650, 36.562145, 40.351601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078512, 36.919971, 40.146179>,  <31.148844, 36.343113, 40.528782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078512, 36.919971, 40.146179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464291, 36.844318, 40.072342>,  <31.695757, 36.798927, 40.028038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464291, 36.844318, 40.072342>,  <31.078512, 36.919971, 40.146179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464291, 36.844318, 40.072342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169878, 0.091401, -0.981217,
		0.202454, 0.977688, 0.056021,
		0.964445, -0.189134, -0.184592,
		31.753624, 36.787579, 40.016964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266222, 37.514931, 39.751637>,  <31.078512, 36.919971, 40.146179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266222, 37.514931, 39.751637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513599, 37.206959, 39.688736>,  <31.662025, 37.022175, 39.650993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513599, 37.206959, 39.688736>,  <31.266222, 37.514931, 39.751637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513599, 37.206959, 39.688736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138639, 0.090071, -0.986239,
		0.773502, 0.631736, -0.051039,
		0.618445, -0.769933, -0.157253,
		31.699133, 36.975979, 39.641560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715160, 37.686668, 39.251312>,  <31.266222, 37.514931, 39.751637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715160, 37.686668, 39.251312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706099, 37.286846, 39.243553>,  <31.700661, 37.046951, 39.238899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706099, 37.286846, 39.243553>,  <31.715160, 37.686668, 39.251312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706099, 37.286846, 39.243553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165188, 0.022878, -0.985997,
		0.986002, -0.019134, -0.165633,
		-0.022655, -0.999555, -0.019398,
		31.699303, 36.986980, 39.237736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039696, 37.491745, 38.605274>,  <31.715160, 37.686668, 39.251312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039696, 37.491745, 38.605274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828346, 37.165928, 38.701054>,  <31.701536, 36.970436, 38.758522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828346, 37.165928, 38.701054>,  <32.039696, 37.491745, 38.605274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828346, 37.165928, 38.701054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181255, -0.167304, -0.969101,
		0.829436, -0.555451, -0.059241,
		-0.528376, -0.814545, 0.239446,
		31.669834, 36.921566, 38.772888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241859, 36.946888, 38.107727>,  <32.039696, 37.491745, 38.605274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241859, 36.946888, 38.107727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901789, 36.795227, 38.253845>,  <31.697746, 36.704231, 38.341518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901789, 36.795227, 38.253845>,  <32.241859, 36.946888, 38.107727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901789, 36.795227, 38.253845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279821, -0.262332, -0.923516,
		0.445980, -0.887371, 0.116935,
		-0.850178, -0.379149, 0.365300,
		31.646736, 36.681480, 38.363434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250431, 36.323696, 37.702118>,  <32.241859, 36.946888, 38.107727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250431, 36.323696, 37.702118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884771, 36.424343, 37.829254>,  <31.665377, 36.484730, 37.905537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884771, 36.424343, 37.829254>,  <32.250431, 36.323696, 37.702118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884771, 36.424343, 37.829254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356217, -0.124338, -0.926094,
		-0.193502, -0.959807, 0.203293,
		-0.914148, 0.251618, 0.317840,
		31.610527, 36.499828, 37.924606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816664, 35.664783, 37.582031>,  <32.250431, 36.323696, 37.702118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816664, 35.664783, 37.582031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569157, 35.978394, 37.601753>,  <31.420652, 36.166561, 37.613586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569157, 35.978394, 37.601753>,  <31.816664, 35.664783, 37.582031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569157, 35.978394, 37.601753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256800, -0.142552, -0.955893,
		-0.742417, -0.604136, 0.289545,
		-0.618765, 0.784027, 0.049309,
		31.383528, 36.213600, 37.616547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255358, 35.383015, 37.281807>,  <31.816664, 35.664783, 37.582031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255358, 35.383015, 37.281807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157801, 35.770508, 37.263561>,  <31.099266, 36.003002, 37.252613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157801, 35.770508, 37.263561>,  <31.255358, 35.383015, 37.281807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157801, 35.770508, 37.263561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439799, -0.152398, -0.885072,
		-0.864346, -0.195803, 0.463215,
		-0.243893, 0.968729, -0.045611,
		31.084633, 36.061127, 37.249878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580853, 35.397301, 36.982864>,  <31.255358, 35.383015, 37.281807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580853, 35.397301, 36.982864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737507, 35.761318, 36.928551>,  <30.831499, 35.979729, 36.895962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737507, 35.761318, 36.928551>,  <30.580853, 35.397301, 36.982864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737507, 35.761318, 36.928551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401778, 0.036378, -0.915014,
		-0.827766, 0.412906, 0.379884,
		0.391635, 0.910047, -0.135784,
		30.854998, 36.034332, 36.887817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977953, 34.923553, 37.160309>,  <30.580853, 35.397301, 36.982864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977953, 34.923553, 37.160309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926846, 34.527954, 37.190140>,  <29.896181, 34.290596, 37.208038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926846, 34.527954, 37.190140>,  <29.977953, 34.923553, 37.160309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926846, 34.527954, 37.190140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896027, -0.082867, 0.436198,
		-0.425218, 0.122555, 0.896755,
		-0.127770, -0.988996, 0.074576,
		29.888515, 34.231255, 37.212513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064240, 34.655434, 37.880676>,  <29.977953, 34.923553, 37.160309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064240, 34.655434, 37.880676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172041, 34.355068, 37.639511>,  <30.236721, 34.174850, 37.494812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172041, 34.355068, 37.639511>,  <30.064240, 34.655434, 37.880676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172041, 34.355068, 37.639511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792256, -0.183023, 0.582093,
		-0.547447, -0.634536, 0.545588,
		0.269504, -0.750910, -0.602910,
		30.252892, 34.129795, 37.458637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373756, 34.138363, 38.326328>,  <30.064240, 34.655434, 37.880676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373756, 34.138363, 38.326328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502417, 34.016289, 37.967796>,  <30.579613, 33.943043, 37.752678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502417, 34.016289, 37.967796>,  <30.373756, 34.138363, 38.326328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502417, 34.016289, 37.967796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745570, -0.501894, 0.438438,
		-0.583666, -0.809298, 0.066103,
		0.321651, -0.305186, -0.896327,
		30.598911, 33.924732, 37.698898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198858, 33.462803, 38.193020>,  <30.373756, 34.138363, 38.326328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198858, 33.462803, 38.193020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542276, 33.643181, 38.095409>,  <30.748327, 33.751408, 38.036842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542276, 33.643181, 38.095409>,  <30.198858, 33.462803, 38.193020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542276, 33.643181, 38.095409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468023, -0.494844, 0.732178,
		0.209417, -0.742817, -0.635899,
		0.858544, 0.450946, -0.244027,
		30.799839, 33.778465, 38.022202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729382, 33.005779, 38.280281>,  <30.198858, 33.462803, 38.193020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729382, 33.005779, 38.280281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968344, 33.323364, 38.325417>,  <31.111721, 33.513916, 38.352497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968344, 33.323364, 38.325417>,  <30.729382, 33.005779, 38.280281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968344, 33.323364, 38.325417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455270, -0.451616, 0.767315,
		0.660177, -0.407027, -0.631264,
		0.597407, 0.793959, 0.112840,
		31.147566, 33.561554, 38.359268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331938, 32.746529, 38.392750>,  <30.729382, 33.005779, 38.280281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331938, 32.746529, 38.392750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384180, 33.110535, 38.550133>,  <31.415525, 33.328938, 38.644562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384180, 33.110535, 38.550133>,  <31.331938, 32.746529, 38.392750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384180, 33.110535, 38.550133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509906, -0.401999, 0.760521,
		0.850258, 0.101298, -0.516527,
		0.130604, 0.910019, 0.393456,
		31.423361, 33.383541, 38.668171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962458, 32.624435, 38.701164>,  <31.331938, 32.746529, 38.392750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962458, 32.624435, 38.701164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840630, 32.968906, 38.863941>,  <31.767532, 33.175591, 38.961609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840630, 32.968906, 38.863941>,  <31.962458, 32.624435, 38.701164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840630, 32.968906, 38.863941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433046, -0.255336, 0.864451,
		0.848356, 0.439513, -0.295163,
		-0.304572, 0.861181, 0.406945,
		31.749258, 33.227261, 38.986023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567806, 32.950871, 39.049629>,  <31.962458, 32.624435, 38.701164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567806, 32.950871, 39.049629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241676, 33.108944, 39.218895>,  <32.045998, 33.203789, 39.320454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241676, 33.108944, 39.218895>,  <32.567806, 32.950871, 39.049629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241676, 33.108944, 39.218895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418604, -0.102604, 0.902354,
		0.400016, 0.912853, -0.081770,
		-0.815327, 0.395185, 0.423167,
		31.997078, 33.227501, 39.345844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770645, 33.404678, 39.652199>,  <32.567806, 32.950871, 39.049629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770645, 33.404678, 39.652199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386204, 33.319702, 39.722805>,  <32.155540, 33.268715, 39.765167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386204, 33.319702, 39.722805>,  <32.770645, 33.404678, 39.652199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386204, 33.319702, 39.722805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234430, -0.289493, 0.928028,
		-0.146052, 0.933307, 0.328034,
		-0.961099, -0.212441, 0.176514,
		32.097874, 33.255970, 39.775761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602428, 33.812252, 40.236942>,  <32.770645, 33.404678, 39.652199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602428, 33.812252, 40.236942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321926, 33.527119, 40.241119>,  <32.153625, 33.356037, 40.243626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321926, 33.527119, 40.241119>,  <32.602428, 33.812252, 40.236942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321926, 33.527119, 40.241119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127227, -0.110721, 0.985675,
		-0.701464, 0.692540, 0.168335,
		-0.701257, -0.712832, 0.010444,
		32.111549, 33.313271, 40.244251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177895, 34.007721, 40.832863>,  <32.602428, 33.812252, 40.236942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177895, 34.007721, 40.832863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108128, 33.623024, 40.748363>,  <32.066269, 33.392204, 40.697662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108128, 33.623024, 40.748363>,  <32.177895, 34.007721, 40.832863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108128, 33.623024, 40.748363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029381, -0.209362, 0.977397,
		-0.984233, 0.176682, 0.008259,
		-0.174417, -0.961744, -0.211252,
		32.055801, 33.334499, 40.684986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809278, 33.800297, 41.364510>,  <32.177895, 34.007721, 40.832863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809278, 33.800297, 41.364510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912199, 33.436604, 41.233608>,  <31.973951, 33.218388, 41.155067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912199, 33.436604, 41.233608>,  <31.809278, 33.800297, 41.364510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912199, 33.436604, 41.233608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047515, -0.326339, 0.944058,
		-0.965162, -0.258458, -0.040765,
		0.257303, -0.909232, -0.327250,
		31.989389, 33.163834, 41.135433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544876, 33.304512, 41.771202>,  <31.809278, 33.800297, 41.364510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544876, 33.304512, 41.771202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818951, 33.059116, 41.614155>,  <31.983395, 32.911880, 41.519928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818951, 33.059116, 41.614155>,  <31.544876, 33.304512, 41.771202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818951, 33.059116, 41.614155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180969, -0.378746, 0.907635,
		-0.705528, -0.692951, -0.148489,
		0.685187, -0.613490, -0.392618,
		32.024506, 32.875069, 41.496368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387627, 32.595535, 41.977070>,  <31.544876, 33.304512, 41.771202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387627, 32.595535, 41.977070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776306, 32.588562, 41.882839>,  <32.009514, 32.584377, 41.826302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776306, 32.588562, 41.882839>,  <31.387627, 32.595535, 41.977070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776306, 32.588562, 41.882839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202797, -0.449834, 0.869783,
		-0.121129, -0.892942, -0.433569,
		0.971700, -0.017430, -0.235574,
		32.067818, 32.583332, 41.812168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658323, 31.980412, 42.175377>,  <31.387627, 32.595535, 41.977070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658323, 31.980412, 42.175377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992558, 32.197182, 42.139355>,  <32.193100, 32.327244, 42.117741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992558, 32.197182, 42.139355>,  <31.658323, 31.980412, 42.175377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992558, 32.197182, 42.139355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372365, -0.438188, 0.818130,
		0.403903, -0.717153, -0.567938,
		0.835588, 0.541925, -0.090057,
		32.243233, 32.359760, 42.112339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128609, 31.524246, 42.361507>,  <31.658323, 31.980412, 42.175377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128609, 31.524246, 42.361507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317951, 31.875616, 42.387756>,  <32.431557, 32.086437, 42.403507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317951, 31.875616, 42.387756>,  <32.128609, 31.524246, 42.361507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317951, 31.875616, 42.387756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456255, -0.308227, 0.834762,
		0.753501, -0.365199, -0.546687,
		0.473358, 0.878422, 0.065625,
		32.459957, 32.139141, 42.407444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812805, 31.410831, 42.416710>,  <32.128609, 31.524246, 42.361507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812805, 31.410831, 42.416710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757214, 31.784138, 42.549194>,  <32.723858, 32.008121, 42.628685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757214, 31.784138, 42.549194>,  <32.812805, 31.410831, 42.416710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757214, 31.784138, 42.549194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536222, -0.210267, 0.817468,
		0.832558, 0.291211, -0.471215,
		-0.138975, 0.933265, 0.331213,
		32.715523, 32.064117, 42.648560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487782, 31.646946, 42.592690>,  <32.812805, 31.410831, 42.416710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487782, 31.646946, 42.592690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258057, 31.918352, 42.775898>,  <33.120224, 32.081196, 42.885822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258057, 31.918352, 42.775898>,  <33.487782, 31.646946, 42.592690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258057, 31.918352, 42.775898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464450, -0.190670, 0.864830,
		0.674133, 0.709408, -0.205633,
		-0.574310, 0.678517, 0.458021,
		33.085762, 32.121906, 42.913303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935444, 32.022259, 43.060112>,  <33.487782, 31.646946, 42.592690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935444, 32.022259, 43.060112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565990, 32.062763, 43.207977>,  <33.344318, 32.087067, 43.296696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565990, 32.062763, 43.207977>,  <33.935444, 32.022259, 43.060112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565990, 32.062763, 43.207977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342170, -0.216707, 0.914307,
		0.172695, 0.970971, 0.165508,
		-0.923632, 0.101264, 0.369661,
		33.288902, 32.093143, 43.318874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095978, 32.387833, 43.572056>,  <33.935444, 32.022259, 43.060112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095978, 32.387833, 43.572056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728268, 32.255322, 43.657078>,  <33.507641, 32.175816, 43.708092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728268, 32.255322, 43.657078>,  <34.095978, 32.387833, 43.572056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728268, 32.255322, 43.657078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314647, -0.294060, 0.902511,
		-0.236479, 0.896539, 0.374559,
		-0.919279, -0.331279, 0.212555,
		33.452484, 32.155937, 43.720844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922485, 32.675289, 44.179211>,  <34.095978, 32.387833, 43.572056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922485, 32.675289, 44.179211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705830, 32.339790, 44.156826>,  <33.575836, 32.138493, 44.143394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705830, 32.339790, 44.156826>,  <33.922485, 32.675289, 44.179211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705830, 32.339790, 44.156826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263485, -0.232613, 0.936198,
		-0.798249, 0.492339, 0.346989,
		-0.541641, -0.838745, -0.055960,
		33.543339, 32.088165, 44.140038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677204, 32.567673, 44.930382>,  <33.922485, 32.675289, 44.179211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677204, 32.567673, 44.930382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612385, 32.214214, 44.754692>,  <33.573494, 32.002140, 44.649277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612385, 32.214214, 44.754692>,  <33.677204, 32.567673, 44.930382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612385, 32.214214, 44.754692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269986, -0.467825, 0.841575,
		-0.949130, 0.017792, 0.314382,
		-0.162049, -0.883642, -0.439223,
		33.563770, 31.949121, 44.622925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198738, 32.202274, 45.391582>,  <33.677204, 32.567673, 44.930382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198738, 32.202274, 45.391582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391212, 31.947737, 45.150410>,  <33.506695, 31.795013, 45.005707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391212, 31.947737, 45.150410>,  <33.198738, 32.202274, 45.391582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391212, 31.947737, 45.150410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242678, -0.564216, 0.789157,
		-0.842360, -0.526047, -0.117064,
		0.481183, -0.636345, -0.602933,
		33.535568, 31.756834, 44.969528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143230, 31.702047, 45.796780>,  <33.198738, 32.202274, 45.391582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143230, 31.702047, 45.796780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438362, 31.565210, 45.564030>,  <33.615440, 31.483109, 45.424381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438362, 31.565210, 45.564030>,  <33.143230, 31.702047, 45.796780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438362, 31.565210, 45.564030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327600, -0.572227, 0.751821,
		-0.590163, -0.745336, -0.310132,
		0.737825, -0.342098, -0.581879,
		33.659710, 31.462584, 45.389465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099831, 31.003202, 45.813244>,  <33.143230, 31.702047, 45.796780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099831, 31.003202, 45.813244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473946, 31.071257, 45.689125>,  <33.698414, 31.112089, 45.614655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473946, 31.071257, 45.689125>,  <33.099831, 31.003202, 45.813244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473946, 31.071257, 45.689125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351401, -0.550127, 0.757547,
		-0.041820, -0.817566, -0.574314,
		0.935291, 0.170133, -0.310300,
		33.754532, 31.122297, 45.596035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487419, 30.337952, 45.900043>,  <33.099831, 31.003202, 45.813244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487419, 30.337952, 45.900043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745396, 30.643446, 45.889011>,  <33.900181, 30.826744, 45.882393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745396, 30.643446, 45.889011>,  <33.487419, 30.337952, 45.900043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745396, 30.643446, 45.889011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362561, -0.273999, 0.890772,
		0.672760, -0.584490, -0.453614,
		0.644937, 0.763738, -0.027577,
		33.938877, 30.872568, 45.880737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078140, 30.018616, 46.088371>,  <33.487419, 30.337952, 45.900043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078140, 30.018616, 46.088371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137257, 30.409451, 46.149639>,  <34.172726, 30.643951, 46.186398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137257, 30.409451, 46.149639>,  <34.078140, 30.018616, 46.088371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137257, 30.409451, 46.149639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449730, -0.204322, 0.869480,
		0.880852, -0.059618, -0.469622,
		0.147791, 0.977087, 0.153165,
		34.181595, 30.702576, 46.195587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817699, 30.017590, 46.298901>,  <34.078140, 30.018616, 46.088371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817699, 30.017590, 46.298901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657295, 30.361593, 46.425125>,  <34.561054, 30.567995, 46.500858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657295, 30.361593, 46.425125>,  <34.817699, 30.017590, 46.298901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657295, 30.361593, 46.425125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474597, -0.099598, 0.874550,
		0.783550, 0.500465, -0.368218,
		-0.401008, 0.860009, 0.315559,
		34.536991, 30.619596, 46.519794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509003, 30.251537, 46.116375>,  <34.817699, 30.017590, 46.298901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509003, 30.251537, 46.116375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906437, 30.206745, 46.122581>,  <36.144897, 30.179871, 46.126305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906437, 30.206745, 46.122581>,  <35.509003, 30.251537, 46.116375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906437, 30.206745, 46.122581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015666, 0.000490, -0.999877,
		0.111959, 0.993710, 0.002241,
		0.993589, -0.111981, 0.015512,
		36.204514, 30.173151, 46.127235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702244, 30.789089, 45.695854>,  <35.509003, 30.251537, 46.116375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702244, 30.789089, 45.695854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993732, 30.515881, 45.676067>,  <36.168625, 30.351955, 45.664196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993732, 30.515881, 45.676067>,  <35.702244, 30.789089, 45.695854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993732, 30.515881, 45.676067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107876, -0.043167, -0.993227,
		0.676259, 0.729122, -0.105138,
		0.728722, -0.683021, -0.049463,
		36.212349, 30.310974, 45.661228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122925, 30.977200, 45.214443>,  <35.702244, 30.789089, 45.695854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122925, 30.977200, 45.214443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206814, 30.586487, 45.231915>,  <36.257149, 30.352058, 45.242397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206814, 30.586487, 45.231915>,  <36.122925, 30.977200, 45.214443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206814, 30.586487, 45.231915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135427, -0.073265, -0.988075,
		0.968336, 0.201310, -0.147649,
		0.209726, -0.976784, 0.043682,
		36.269733, 30.293451, 45.245018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686459, 30.990746, 44.853756>,  <36.122925, 30.977200, 45.214443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686459, 30.990746, 44.853756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503239, 30.635366, 44.865421>,  <36.393307, 30.422138, 44.872421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503239, 30.635366, 44.865421>,  <36.686459, 30.990746, 44.853756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503239, 30.635366, 44.865421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011749, -0.038853, -0.999176,
		0.888848, -0.457332, 0.028235,
		-0.458052, -0.888447, 0.029161,
		36.365822, 30.368832, 44.874168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826008, 30.773039, 44.157021>,  <36.686459, 30.990746, 44.853756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826008, 30.773039, 44.157021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582214, 30.484814, 44.289272>,  <36.435940, 30.311878, 44.368626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582214, 30.484814, 44.289272>,  <36.826008, 30.773039, 44.157021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582214, 30.484814, 44.289272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181508, -0.279142, -0.942940,
		0.771742, -0.634718, 0.039344,
		-0.609483, -0.720565, 0.330631,
		36.399368, 30.268644, 44.388462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
