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
	<1.341594, -0.504068, 1.354274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.614319, -0.212268, 1.332498>,  <1.777954, -0.037189, 1.319432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.614319, -0.212268, 1.332498>,  <1.341594, -0.504068, 1.354274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.614319, -0.212268, 1.332498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560394, 0.568695, 0.602117,
		0.470202, -0.380023, 0.796550,
		0.681812, 0.729499, -0.054439,
		1.818862, 0.006581, 1.316165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.325094, -0.191526, 2.030106>,  <1.341594, -0.504068, 1.354274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.325094, -0.191526, 2.030106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.493210, 0.076791, 1.785682>,  <1.594080, 0.237781, 1.639027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.493210, 0.076791, 1.785682>,  <1.325094, -0.191526, 2.030106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.493210, 0.076791, 1.785682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476673, 0.736239, 0.480348,
		0.772100, 0.089391, 0.629182,
		0.420290, 0.670791, -0.611061,
		1.619297, 0.278029, 1.602364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.610153, 0.378157, 2.377381>,  <1.325094, -0.191526, 2.030106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.610153, 0.378157, 2.377381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.500481, 0.528248, 2.023199>,  <1.434677, 0.618303, 1.810689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.500481, 0.528248, 2.023199>,  <1.610153, 0.378157, 2.377381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.500481, 0.528248, 2.023199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539155, 0.702450, 0.464624,
		0.796328, 0.604788, 0.009708,
		-0.274180, 0.375227, -0.885455,
		1.418227, 0.640816, 1.757562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.705589, 1.125178, 2.377109>,  <1.610153, 0.378157, 2.377381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.705589, 1.125178, 2.377109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.406834, 1.020902, 2.132421>,  <1.227581, 0.958336, 1.985609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.406834, 1.020902, 2.132421>,  <1.705589, 1.125178, 2.377109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.406834, 1.020902, 2.132421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560950, 0.741006, 0.369113,
		0.357062, 0.618829, -0.699684,
		-0.746888, -0.260691, -0.611718,
		1.182767, 0.942694, 1.948906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.517148, 1.749358, 2.081664>,  <1.705589, 1.125178, 2.377109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.517148, 1.749358, 2.081664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.201046, 1.505605, 2.055906>,  <1.011384, 1.359353, 2.040451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.201046, 1.505605, 2.055906>,  <1.517148, 1.749358, 2.081664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.201046, 1.505605, 2.055906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580282, 0.710441, 0.398178,
		-0.196895, 0.352030, -0.915045,
		-0.790256, -0.609384, -0.064395,
		0.963969, 1.322790, 2.036587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.982430, 2.167040, 1.826613>,  <1.517148, 1.749358, 2.081664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.982430, 2.167040, 1.826613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.787025, 1.867503, 2.005763>,  <0.669783, 1.687781, 2.113252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.787025, 1.867503, 2.005763>,  <0.982430, 2.167040, 1.826613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.787025, 1.867503, 2.005763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605070, 0.660555, 0.444474,
		-0.628686, -0.053864, -0.775792,
		-0.488512, -0.748843, 0.447873,
		0.640472, 1.642850, 2.140124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.247992, 2.401618, 1.808738>,  <0.982430, 2.167040, 1.826613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.247992, 2.401618, 1.808738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.240707, 2.101011, 2.072523>,  <0.236337, 1.920647, 2.230793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.240707, 2.101011, 2.072523>,  <0.247992, 2.401618, 1.808738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.240707, 2.101011, 2.072523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589917, 0.540609, 0.599783,
		-0.807259, -0.378105, -0.453178,
		-0.018211, -0.751517, 0.659462,
		0.235244, 1.875556, 2.270361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.408224, 2.225781, 2.028355>,  <0.247992, 2.401618, 1.808738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.408224, 2.225781, 2.028355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.165752, 2.147375, 2.336674>,  <-0.020270, 2.100331, 2.521665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.165752, 2.147375, 2.336674>,  <-0.408224, 2.225781, 2.028355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.165752, 2.147375, 2.336674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548593, 0.598646, 0.583669,
		-0.575842, -0.776660, 0.255352,
		0.606177, -0.196017, 0.770796,
		0.016101, 2.088570, 2.567913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.266144, 3.179918, 2.948120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.172874, 2.968946, 3.274909>,  <-0.116913, 2.842363, 3.470984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.172874, 2.968946, 3.274909>,  <-0.266144, 3.179918, 2.948120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.172874, 2.968946, 3.274909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484689, -0.665301, -0.567847,
		0.843034, 0.528386, 0.100508,
		0.233175, -0.527430, 0.816975,
		-0.102922, 2.810718, 3.520002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.356128, 2.738458, 2.888860>,  <-0.266144, 3.179918, 2.948120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.356128, 2.738458, 2.888860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.167511, 2.546864, 3.185028>,  <0.054341, 2.431907, 3.362728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.167511, 2.546864, 3.185028>,  <0.356128, 2.738458, 2.888860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.167511, 2.546864, 3.185028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240798, -0.877656, -0.414411,
		0.848331, -0.017121, 0.529190,
		-0.471542, -0.478986, 0.740420,
		0.026048, 2.403168, 3.407153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.820926, 2.209856, 3.282557>,  <0.356128, 2.738458, 2.888860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.820926, 2.209856, 3.282557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.435982, 2.102457, 3.265716>,  <0.205015, 2.038018, 3.255612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.435982, 2.102457, 3.265716>,  <0.820926, 2.209856, 3.282557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.435982, 2.102457, 3.265716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246970, -0.799292, -0.547849,
		0.113445, -0.537625, 0.835517,
		-0.962360, -0.268498, -0.042102,
		0.147274, 2.021908, 3.253085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.637908, 1.461192, 3.520439>,  <0.820926, 2.209856, 3.282557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.637908, 1.461192, 3.520439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.417145, 1.648418, 3.244377>,  <0.284687, 1.760754, 3.078740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.417145, 1.648418, 3.244377>,  <0.637908, 1.461192, 3.520439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.417145, 1.648418, 3.244377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218393, -0.717602, -0.661326,
		-0.804799, -0.515716, 0.293828,
		-0.551908, 0.468065, -0.690154,
		0.251572, 1.788838, 3.037331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.215551, 0.999294, 3.189238>,  <0.637908, 1.461192, 3.520439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.215551, 0.999294, 3.189238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.221596, 1.276848, 2.901267>,  <0.225222, 1.443380, 2.728484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.221596, 1.276848, 2.901267>,  <0.215551, 0.999294, 3.189238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.221596, 1.276848, 2.901267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314561, -0.686751, -0.655305,
		-0.949117, -0.216559, -0.228647,
		0.015111, 0.693885, -0.719928,
		0.226129, 1.485013, 2.685289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.038237, 0.628695, 2.603702>,  <0.215551, 0.999294, 3.189238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.038237, 0.628695, 2.603702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.178993, 0.933384, 2.462367>,  <0.309331, 1.116198, 2.377566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.178993, 0.933384, 2.462367>,  <-0.038237, 0.628695, 2.603702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.178993, 0.933384, 2.462367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331905, -0.581262, -0.742949,
		-0.771303, 0.286202, -0.568489,
		0.543075, 0.761723, -0.353337,
		0.341916, 1.161901, 2.356366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.075420, 0.628986, 1.828753>,  <-0.038237, 0.628695, 2.603702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.075420, 0.628986, 1.828753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.257507, 0.843721, 1.883961>,  <0.457264, 0.972563, 1.917086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.257507, 0.843721, 1.883961>,  <-0.075420, 0.628986, 1.828753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.257507, 0.843721, 1.883961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441512, -0.491534, -0.750640,
		-0.335131, 0.685709, -0.646134,
		0.832318, 0.536839, 0.138021,
		0.507203, 1.004773, 1.925367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.218415, 0.588555, 1.223713>,  <-0.075420, 0.628986, 1.828753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.218415, 0.588555, 1.223713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.524300, 0.731937, 1.437900>,  <0.707830, 0.817967, 1.566413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.524300, 0.731937, 1.437900>,  <0.218415, 0.588555, 1.223713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.524300, 0.731937, 1.437900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635797, -0.284610, -0.717467,
		-0.104780, 0.889104, -0.445550,
		0.764711, 0.358456, 0.535468,
		0.753713, 0.839474, 1.598541>
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
