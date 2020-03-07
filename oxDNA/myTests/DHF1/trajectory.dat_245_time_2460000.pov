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
	<0.757469, 2.897076, -1.120983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.816288, 2.502121, -1.097511>,  <0.851579, 2.265148, -1.083428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.816288, 2.502121, -1.097511>,  <0.757469, 2.897076, -1.120983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.816288, 2.502121, -1.097511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660941, -0.053949, 0.748496,
		-0.735890, -0.148848, -0.660538,
		0.147047, -0.987387, 0.058679,
		0.860402, 2.205905, -1.079908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.092047, 2.372714, -1.140662>,  <0.757469, 2.897076, -1.120983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.092047, 2.372714, -1.140662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.410225, 2.275963, -0.918396>,  <0.601132, 2.217912, -0.785036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.410225, 2.275963, -0.918396>,  <0.092047, 2.372714, -1.140662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.410225, 2.275963, -0.918396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570853, 0.008770, 0.821005,
		-0.203458, -0.970266, -0.131103,
		0.795444, -0.241881, 0.555664,
		0.648858, 2.203399, -0.751697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.010110, 1.785660, -0.652725>,  <0.092047, 2.372714, -1.140662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.010110, 1.785660, -0.652725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.275803, 2.010963, -0.486916>,  <0.447350, 2.146146, -0.387430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.275803, 2.010963, -0.486916>,  <-0.010110, 1.785660, -0.652725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.275803, 2.010963, -0.486916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440084, -0.098390, 0.892550,
		0.543522, -0.820402, 0.177554,
		0.714780, 0.563259, 0.414523,
		0.490237, 2.179941, -0.362559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.297988, 1.420574, -0.073750>,  <-0.010110, 1.785660, -0.652725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.297988, 1.420574, -0.073750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.314369, 1.815979, -0.015556>,  <0.324198, 2.053222, 0.019360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.314369, 1.815979, -0.015556>,  <0.297988, 1.420574, -0.073750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.314369, 1.815979, -0.015556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400098, -0.117198, 0.908948,
		0.915557, -0.095431, 0.390702,
		0.040952, 0.988513, 0.145483,
		0.326655, 2.112533, 0.028089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.883037, 1.607898, 0.376774>,  <0.297988, 1.420574, -0.073750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.883037, 1.607898, 0.376774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.563370, 1.848328, 0.374268>,  <0.371569, 1.992585, 0.372764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.563370, 1.848328, 0.374268>,  <0.883037, 1.607898, 0.376774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.563370, 1.848328, 0.374268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176095, -0.224139, 0.958516,
		0.574734, 0.767120, 0.284971,
		-0.799169, 0.601074, -0.006265,
		0.323619, 2.028650, 0.372388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.825173, 1.913397, 1.071456>,  <0.883037, 1.607898, 0.376774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.825173, 1.913397, 1.071456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.458878, 1.922630, 0.911011>,  <0.239101, 1.928170, 0.814743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.458878, 1.922630, 0.911011>,  <0.825173, 1.913397, 1.071456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.458878, 1.922630, 0.911011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379168, -0.379828, 0.843778,
		-0.132878, 0.924769, 0.356575,
		-0.915737, 0.023082, -0.401114,
		0.184156, 1.929555, 0.790677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.459238, 2.342787, 1.613926>,  <0.825173, 1.913397, 1.071456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.459238, 2.342787, 1.613926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.238647, 2.088898, 1.397408>,  <0.106293, 1.936564, 1.267497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.238647, 2.088898, 1.397408>,  <0.459238, 2.342787, 1.613926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.238647, 2.088898, 1.397408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421471, -0.347968, 0.837425,
		-0.719885, 0.689961, -0.075621,
		-0.551477, -0.634722, -0.541295,
		0.073204, 1.898481, 1.235019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.059838, 2.203912, 1.991361>,  <0.459238, 2.342787, 1.613926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.059838, 2.203912, 1.991361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.142830, 1.931656, 1.710312>,  <-0.192625, 1.768302, 1.541682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.142830, 1.931656, 1.710312>,  <-0.059838, 2.203912, 1.991361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.142830, 1.931656, 1.710312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554779, -0.509709, 0.657584,
		-0.805713, 0.526235, -0.271851,
		-0.207479, -0.680641, -0.702624,
		-0.205074, 1.727463, 1.499525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.323862, 0.448379, 2.834349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.534840, 0.280975, 2.538605>,  <4.661426, 0.180533, 2.361158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.534840, 0.280975, 2.538605>,  <4.323862, 0.448379, 2.834349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.534840, 0.280975, 2.538605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269665, 0.742785, -0.612822,
		0.805658, 0.522609, 0.278920,
		0.527444, -0.418510, -0.739360,
		4.693073, 0.155422, 2.316797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.781259, 0.959177, 2.534012>,  <4.323862, 0.448379, 2.834349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.781259, 0.959177, 2.534012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.724072, 0.686874, 2.246643>,  <4.689759, 0.523493, 2.074221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.724072, 0.686874, 2.246643>,  <4.781259, 0.959177, 2.534012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.724072, 0.686874, 2.246643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201802, 0.730682, -0.652212,
		0.968936, 0.051734, -0.241841,
		-0.142967, -0.680756, -0.718423,
		4.681181, 0.482648, 2.031116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.290775, 1.174481, 1.905984>,  <4.781259, 0.959177, 2.534012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.290775, 1.174481, 1.905984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.951475, 0.985901, 1.809479>,  <4.747895, 0.872753, 1.751575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.951475, 0.985901, 1.809479>,  <5.290775, 1.174481, 1.905984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.951475, 0.985901, 1.809479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257985, 0.765694, -0.589199,
		0.462512, -0.437545, -0.771127,
		-0.848249, -0.471451, -0.241263,
		4.697001, 0.844466, 1.737100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.400963, 0.929021, 1.154584>,  <5.290775, 1.174481, 1.905984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.400963, 0.929021, 1.154584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.020622, 0.964645, 1.273209>,  <4.792418, 0.986020, 1.344383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.020622, 0.964645, 1.273209>,  <5.400963, 0.929021, 1.154584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.020622, 0.964645, 1.273209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145064, 0.718015, -0.680743,
		-0.273564, -0.690307, -0.669806,
		-0.950852, 0.089062, 0.296562,
		4.735367, 0.991364, 1.362177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.799901, 0.774943, 0.621298>,  <5.400963, 0.929021, 1.154584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.799901, 0.774943, 0.621298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.778646, 1.066025, 0.894829>,  <4.765893, 1.240674, 1.058948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.778646, 1.066025, 0.894829>,  <4.799901, 0.774943, 0.621298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.778646, 1.066025, 0.894829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041122, 0.685809, -0.726619,
		-0.997740, -0.010490, -0.066367,
		-0.053138, 0.727706, 0.683828,
		4.762705, 1.284336, 1.099977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.231905, 1.289639, 0.359709>,  <4.799901, 0.774943, 0.621298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.231905, 1.289639, 0.359709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.493080, 1.466980, 0.605347>,  <4.649785, 1.573384, 0.752729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.493080, 1.466980, 0.605347>,  <4.231905, 1.289639, 0.359709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.493080, 1.466980, 0.605347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118509, 0.740993, -0.660973,
		-0.748083, 0.504350, 0.431281,
		0.652938, 0.443352, 0.614094,
		4.688962, 1.599985, 0.789575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.957196, 2.055068, 0.417370>,  <4.231905, 1.289639, 0.359709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.957196, 2.055068, 0.417370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.344404, 2.017944, 0.510597>,  <4.576729, 1.995670, 0.566533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.344404, 2.017944, 0.510597>,  <3.957196, 2.055068, 0.417370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.344404, 2.017944, 0.510597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228886, 0.707039, -0.669109,
		-0.102688, 0.701058, 0.705672,
		0.968022, -0.092809, 0.233067,
		4.634811, 1.990102, 0.580517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.232696, 2.727882, 0.474050>,  <3.957196, 2.055068, 0.417370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.232696, 2.727882, 0.474050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.551310, 2.489609, 0.432686>,  <4.742478, 2.346645, 0.407868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.551310, 2.489609, 0.432686>,  <4.232696, 2.727882, 0.474050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.551310, 2.489609, 0.432686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353251, 0.597350, -0.719991,
		0.490658, 0.536968, 0.686236,
		0.796535, -0.595683, -0.103410,
		4.790270, 2.310904, 0.401663>
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
