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
	<0.759868, 0.528752, 5.262434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.093567, 0.317444, 5.199234>,  <1.293786, 0.190659, 5.161314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.093567, 0.317444, 5.199234>,  <0.759868, 0.528752, 5.262434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.093567, 0.317444, 5.199234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044506, 0.221099, -0.974235,
		0.549592, 0.819784, 0.160940,
		0.834247, -0.528270, -0.158000,
		1.343841, 0.158963, 5.151834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.276086, 0.944656, 4.938739>,  <0.759868, 0.528752, 5.262434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.276086, 0.944656, 4.938739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.319283, 0.565765, 4.818008>,  <1.345201, 0.338431, 4.745570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.319283, 0.565765, 4.818008>,  <1.276086, 0.944656, 4.938739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.319283, 0.565765, 4.818008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053831, 0.297585, -0.953177,
		0.992693, 0.119183, -0.018853,
		0.107992, -0.947227, -0.301826,
		1.351680, 0.281597, 4.727461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.838531, 0.772975, 4.375414>,  <1.276086, 0.944656, 4.938739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.838531, 0.772975, 4.375414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.478836, 0.598419, 4.363182>,  <1.263019, 0.493686, 4.355843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.478836, 0.598419, 4.363182>,  <1.838531, 0.772975, 4.375414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.478836, 0.598419, 4.363182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165863, 0.404797, -0.899238,
		0.404797, -0.803556, -0.436390,
		0.899238, 0.436390, 0.030580,
		1.209065, 0.467502, 4.354008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.737867, 0.182957, 3.849750>,  <1.838531, 0.772975, 4.375414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.737867, 0.182957, 3.849750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.405571, 0.384750, 3.943871>,  <1.206193, 0.505826, 4.000343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.405571, 0.384750, 3.943871>,  <1.737867, 0.182957, 3.849750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.405571, 0.384750, 3.943871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032496, 0.378032, -0.925222,
		-0.555711, -0.776265, -0.297652,
		-0.830740, 0.504484, 0.235302,
		1.156349, 0.536095, 4.014461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.088967, -0.031889, 3.274257>,  <1.737867, 0.182957, 3.849750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.088967, -0.031889, 3.274257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.091171, 0.319412, 3.465523>,  <1.092494, 0.530193, 3.580282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.091171, 0.319412, 3.465523>,  <1.088967, -0.031889, 3.274257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.091171, 0.319412, 3.465523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176893, 0.471487, -0.863950,
		-0.984215, -0.079822, 0.157955,
		0.005511, 0.878253, 0.478164,
		1.092825, 0.582888, 3.608972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.591324, 0.319711, 2.967290>,  <1.088967, -0.031889, 3.274257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.591324, 0.319711, 2.967290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.821991, 0.605133, 3.126434>,  <0.960391, 0.776386, 3.221921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.821991, 0.605133, 3.126434>,  <0.591324, 0.319711, 2.967290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.821991, 0.605133, 3.126434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015839, 0.477135, -0.878687,
		-0.816825, 0.513013, 0.263846,
		0.576668, 0.713555, 0.397861,
		0.994991, 0.819199, 3.245793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.318969, 1.005981, 2.684722>,  <0.591324, 0.319711, 2.967290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.318969, 1.005981, 2.684722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.690773, 1.080185, 2.812218>,  <0.913856, 1.124707, 2.888715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.690773, 1.080185, 2.812218>,  <0.318969, 1.005981, 2.684722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.690773, 1.080185, 2.812218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220082, 0.414491, -0.883041,
		-0.295928, 0.890945, 0.344447,
		0.929511, 0.185510, 0.318740,
		0.969626, 1.135838, 2.907840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.420938, 1.729302, 2.695638>,  <0.318969, 1.005981, 2.684722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.420938, 1.729302, 2.695638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.784164, 1.565292, 2.661469>,  <1.002100, 1.466887, 2.640967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.784164, 1.565292, 2.661469>,  <0.420938, 1.729302, 2.695638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.784164, 1.565292, 2.661469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270878, 0.730512, -0.626879,
		0.319439, 0.546108, 0.774419,
		0.908066, -0.410023, -0.085425,
		1.056584, 1.442286, 2.635841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.015293, 2.167073, 1.567591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.291897, 1.999756, 1.332016>,  <1.457859, 1.899365, 1.190671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.291897, 1.999756, 1.332016>,  <1.015293, 2.167073, 1.567591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.291897, 1.999756, 1.332016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250418, -0.625918, 0.738592,
		-0.677577, -0.658221, -0.328077,
		0.691506, -0.418297, -0.588938,
		1.499349, 1.874268, 1.155335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.879332, 1.473395, 1.580014>,  <1.015293, 2.167073, 1.567591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.879332, 1.473395, 1.580014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.248123, 1.621353, 1.534172>,  <1.469398, 1.710128, 1.506667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.248123, 1.621353, 1.534172>,  <0.879332, 1.473395, 1.580014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.248123, 1.621353, 1.534172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288639, -0.459130, 0.840171,
		0.258158, -0.807698, -0.530074,
		0.921977, 0.369897, -0.114605,
		1.524716, 1.732322, 1.499790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.374145, 0.920234, 1.466539>,  <0.879332, 1.473395, 1.580014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.374145, 0.920234, 1.466539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.528339, 1.237350, 1.655380>,  <1.620856, 1.427621, 1.768685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.528339, 1.237350, 1.655380>,  <1.374145, 0.920234, 1.466539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.528339, 1.237350, 1.655380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121988, -0.550943, 0.825579,
		0.914614, -0.260659, -0.309092,
		0.385486, 0.792792, 0.472103,
		1.643985, 1.475188, 1.797011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.943335, 0.791450, 1.839068>,  <1.374145, 0.920234, 1.466539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.943335, 0.791450, 1.839068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.785717, 1.098129, 2.041809>,  <1.691146, 1.282137, 2.163454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.785717, 1.098129, 2.041809>,  <1.943335, 0.791450, 1.839068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.785717, 1.098129, 2.041809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065739, -0.573572, 0.816513,
		0.916737, 0.288424, 0.276416,
		-0.394046, 0.766699, 0.506854,
		1.667503, 1.328139, 2.193865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.254169, 0.947563, 2.546281>,  <1.943335, 0.791450, 1.839068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.254169, 0.947563, 2.546281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.896156, 1.121704, 2.585037>,  <1.681349, 1.226188, 2.608291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.896156, 1.121704, 2.585037>,  <2.254169, 0.947563, 2.546281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.896156, 1.121704, 2.585037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068741, -0.349299, 0.934486,
		0.440674, 0.829734, 0.342561,
		-0.895032, 0.435352, 0.096891,
		1.627647, 1.252310, 2.614105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.216301, 1.278038, 3.236357>,  <2.254169, 0.947563, 2.546281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.216301, 1.278038, 3.236357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.828545, 1.235352, 3.147911>,  <1.595891, 1.209740, 3.094844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.828545, 1.235352, 3.147911>,  <2.216301, 1.278038, 3.236357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.828545, 1.235352, 3.147911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195457, -0.209584, 0.958056,
		-0.148583, 0.971949, 0.182311,
		-0.969391, -0.106717, -0.221115,
		1.537727, 1.203337, 3.081577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.811581, 1.677933, 3.762696>,  <2.216301, 1.278038, 3.236357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.811581, 1.677933, 3.762696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.559536, 1.419266, 3.590752>,  <1.408309, 1.264066, 3.487585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.559536, 1.419266, 3.590752>,  <1.811581, 1.677933, 3.762696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.559536, 1.419266, 3.590752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329802, -0.278297, 0.902099,
		-0.702987, 0.710192, -0.037914,
		-0.630112, -0.646667, -0.429862,
		1.370502, 1.225266, 3.461793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.022107, 1.834533, 3.999707>,  <1.811581, 1.677933, 3.762696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.022107, 1.834533, 3.999707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.068260, 1.450165, 3.899055>,  <1.095952, 1.219544, 3.838665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.068260, 1.450165, 3.899055>,  <1.022107, 1.834533, 3.999707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.068260, 1.450165, 3.899055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283463, -0.274640, 0.918815,
		-0.952017, -0.034688, -0.304074,
		0.115382, -0.960921, -0.251629,
		1.102875, 1.161888, 3.823567>
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
