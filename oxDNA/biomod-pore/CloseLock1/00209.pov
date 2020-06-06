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
	<24.101885, 34.988441, 35.328609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.177246, 34.937279, 34.939117>,  <24.222464, 34.906582, 34.705421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.177246, 34.937279, 34.939117>,  <24.101885, 34.988441, 35.328609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.177246, 34.937279, 34.939117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779400, -0.583770, 0.227484,
		-0.597529, -0.801782, -0.010295,
		0.188403, -0.127904, -0.973727,
		24.233767, 34.898907, 34.646999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.267141, 34.222565, 35.159836>,  <24.101885, 34.988441, 35.328609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.267141, 34.222565, 35.159836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.435310, 34.469894, 34.894226>,  <24.536211, 34.618290, 34.734859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.435310, 34.469894, 34.894226>,  <24.267141, 34.222565, 35.159836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.435310, 34.469894, 34.894226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899363, -0.380754, 0.214878,
		-0.119965, -0.687534, -0.716174,
		0.420422, 0.618323, -0.664020,
		24.561438, 34.655392, 34.695019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.762049, 33.747650, 34.716450>,  <24.267141, 34.222565, 35.159836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.762049, 33.747650, 34.716450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865841, 34.133694, 34.730518>,  <24.928116, 34.365318, 34.738960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865841, 34.133694, 34.730518>,  <24.762049, 33.747650, 34.716450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.865841, 34.133694, 34.730518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937374, -0.260455, 0.231286,
		0.232377, -0.027045, -0.972250,
		0.259482, 0.965107, 0.035173,
		24.943686, 34.423225, 34.741070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.430368, 33.682751, 34.734344>,  <24.762049, 33.747650, 34.716450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.430368, 33.682751, 34.734344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411394, 34.082272, 34.739109>,  <25.400009, 34.321983, 34.741966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411394, 34.082272, 34.739109>,  <25.430368, 33.682751, 34.734344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411394, 34.082272, 34.739109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990559, 0.045502, 0.129319,
		0.128622, 0.017935, -0.991531,
		-0.047436, 0.998803, 0.011913,
		25.397163, 34.381912, 34.742683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826586, 34.064774, 34.116642>,  <25.430368, 33.682751, 34.734344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826586, 34.064774, 34.116642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.810949, 34.254410, 34.468487>,  <25.801567, 34.368191, 34.679592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.810949, 34.254410, 34.468487>,  <25.826586, 34.064774, 34.116642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810949, 34.254410, 34.468487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998101, 0.060464, 0.011768,
		-0.047606, 0.878399, -0.475550,
		-0.039091, 0.474087, 0.879610,
		25.799221, 34.396637, 34.732368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198381, 34.812901, 34.165730>,  <25.826586, 34.064774, 34.116642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198381, 34.812901, 34.165730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232632, 34.569317, 34.481155>,  <26.253181, 34.423168, 34.670410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232632, 34.569317, 34.481155>,  <26.198381, 34.812901, 34.165730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232632, 34.569317, 34.481155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983951, -0.072678, -0.162965,
		0.156551, 0.789864, 0.592964,
		0.085625, -0.608960, 0.788566,
		26.258320, 34.386627, 34.717724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762461, 34.968044, 34.661526>,  <26.198381, 34.812901, 34.165730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762461, 34.968044, 34.661526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685202, 34.576496, 34.634682>,  <26.638845, 34.341568, 34.618576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685202, 34.576496, 34.634682>,  <26.762461, 34.968044, 34.661526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685202, 34.576496, 34.634682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895072, -0.147766, -0.420727,
		0.401920, -0.141333, 0.904702,
		-0.193147, -0.978872, -0.067113,
		26.627258, 34.282833, 34.614548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442966, 34.523392, 34.793530>,  <26.762461, 34.968044, 34.661526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442966, 34.523392, 34.793530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797939, 34.705822, 34.766808>,  <28.010923, 34.815281, 34.750774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797939, 34.705822, 34.766808>,  <27.442966, 34.523392, 34.793530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797939, 34.705822, 34.766808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433767, 0.777282, -0.455718,
		-0.155915, 0.433396, 0.887614,
		0.887433, 0.456071, -0.066803,
		28.064169, 34.842644, 34.746765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465498, 35.330143, 35.035316>,  <27.442966, 34.523392, 34.793530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465498, 35.330143, 35.035316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777969, 35.289841, 34.788864>,  <27.965452, 35.265659, 34.640995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777969, 35.289841, 34.788864>,  <27.465498, 35.330143, 35.035316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777969, 35.289841, 34.788864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419216, 0.646646, -0.637264,
		0.462624, 0.756106, 0.462906,
		0.781176, -0.100756, -0.616126,
		28.012321, 35.259613, 34.604027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627544, 35.993183, 34.841072>,  <27.465498, 35.330143, 35.035316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627544, 35.993183, 34.841072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748438, 35.740429, 34.555592>,  <27.820974, 35.588776, 34.384304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748438, 35.740429, 34.555592>,  <27.627544, 35.993183, 34.841072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748438, 35.740429, 34.555592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227054, 0.679446, -0.697710,
		0.925798, 0.372920, 0.061878,
		0.302233, -0.631888, -0.713703,
		27.839108, 35.550861, 34.341480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087042, 36.379765, 34.402313>,  <27.627544, 35.993183, 34.841072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087042, 36.379765, 34.402313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999115, 36.074715, 34.158974>,  <27.946360, 35.891685, 34.012970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999115, 36.074715, 34.158974>,  <28.087042, 36.379765, 34.402313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999115, 36.074715, 34.158974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141121, 0.641901, -0.753689,
		0.965280, -0.079823, -0.248723,
		-0.219817, -0.762621, -0.608350,
		27.933170, 35.845928, 33.976467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292614, 36.603310, 33.793034>,  <28.087042, 36.379765, 34.402313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292614, 36.603310, 33.793034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066072, 36.296978, 33.671211>,  <27.930147, 36.113178, 33.598118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066072, 36.296978, 33.671211>,  <28.292614, 36.603310, 33.793034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066072, 36.296978, 33.671211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170799, 0.470572, -0.865673,
		0.806269, -0.438262, -0.397313,
		-0.566355, -0.765826, -0.304552,
		27.896166, 36.067230, 33.579845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589048, 36.389729, 33.182766>,  <28.292614, 36.603310, 33.793034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589048, 36.389729, 33.182766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203657, 36.284969, 33.160446>,  <27.972422, 36.222115, 33.147057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203657, 36.284969, 33.160446>,  <28.589048, 36.389729, 33.182766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203657, 36.284969, 33.160446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079454, 0.478582, -0.874440,
		0.255720, -0.838073, -0.481914,
		-0.963481, -0.261902, -0.055795,
		27.914614, 36.206398, 33.143707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424990, 36.215244, 32.439384>,  <28.589048, 36.389729, 33.182766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424990, 36.215244, 32.439384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064861, 36.287140, 32.597939>,  <27.848783, 36.330276, 32.693069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064861, 36.287140, 32.597939>,  <28.424990, 36.215244, 32.439384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064861, 36.287140, 32.597939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254132, 0.522263, -0.814039,
		-0.353326, -0.833629, -0.424527,
		-0.900321, 0.179735, 0.396381,
		27.794765, 36.341061, 32.716854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135889, 36.181583, 31.835484>,  <28.424990, 36.215244, 32.439384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135889, 36.181583, 31.835484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867384, 36.345600, 32.082470>,  <27.706280, 36.444012, 32.230663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867384, 36.345600, 32.082470>,  <28.135889, 36.181583, 31.835484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867384, 36.345600, 32.082470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417649, 0.478973, -0.772110,
		-0.612350, -0.776175, -0.150263,
		-0.671265, 0.410044, 0.617468,
		27.666004, 36.468613, 32.267712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503439, 36.417358, 31.387505>,  <28.135889, 36.181583, 31.835484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503439, 36.417358, 31.387505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426764, 36.620411, 31.723497>,  <27.380758, 36.742241, 31.925093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426764, 36.620411, 31.723497>,  <27.503439, 36.417358, 31.387505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426764, 36.620411, 31.723497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495146, 0.688934, -0.529339,
		-0.847400, -0.517381, 0.119291,
		-0.191687, 0.507628, 0.839982,
		27.369257, 36.772701, 31.975492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755066, 36.557671, 31.534904>,  <27.503439, 36.417358, 31.387505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755066, 36.557671, 31.534904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961098, 36.853134, 31.708834>,  <27.084717, 37.030415, 31.813192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961098, 36.853134, 31.708834>,  <26.755066, 36.557671, 31.534904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961098, 36.853134, 31.708834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637787, 0.669202, -0.381308,
		-0.572643, -0.080922, 0.815801,
		0.515080, 0.738661, 0.434825,
		27.115622, 37.074734, 31.839281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235043, 37.025608, 31.818829>,  <26.755066, 36.557671, 31.534904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235043, 37.025608, 31.818829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563976, 37.251595, 31.791765>,  <26.761337, 37.387188, 31.775526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563976, 37.251595, 31.791765>,  <26.235043, 37.025608, 31.818829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563976, 37.251595, 31.791765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534285, 0.725780, -0.433340,
		-0.195717, 0.392500, 0.898687,
		0.822335, 0.564967, -0.067660,
		26.810677, 37.421085, 31.771467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996025, 37.749538, 31.951988>,  <26.235043, 37.025608, 31.818829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996025, 37.749538, 31.951988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347834, 37.787415, 31.765450>,  <26.558918, 37.810139, 31.653526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347834, 37.787415, 31.765450>,  <25.996025, 37.749538, 31.951988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347834, 37.787415, 31.765450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320633, 0.842060, -0.433739,
		0.351621, 0.531009, 0.770968,
		0.879521, 0.094686, -0.466345,
		26.611691, 37.815819, 31.625546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313423, 38.336964, 32.276741>,  <25.996025, 37.749538, 31.951988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313423, 38.336964, 32.276741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455914, 38.264610, 31.910053>,  <26.541409, 38.221199, 31.690039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455914, 38.264610, 31.910053>,  <26.313423, 38.336964, 32.276741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455914, 38.264610, 31.910053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321274, 0.897558, -0.301947,
		0.877431, 0.402081, 0.261620,
		0.356227, -0.180886, -0.916724,
		26.562782, 38.210346, 31.635036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691385, 38.916538, 32.047707>,  <26.313423, 38.336964, 32.276741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691385, 38.916538, 32.047707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599623, 38.748596, 31.696457>,  <26.544565, 38.647831, 31.485708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599623, 38.748596, 31.696457>,  <26.691385, 38.916538, 32.047707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599623, 38.748596, 31.696457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355768, 0.875924, -0.325862,
		0.905981, 0.237653, -0.350313,
		-0.229405, -0.419855, -0.878120,
		26.530800, 38.622639, 31.433022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787109, 39.483292, 31.499954>,  <26.691385, 38.916538, 32.047707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787109, 39.483292, 31.499954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592411, 39.226013, 31.263521>,  <26.475592, 39.071648, 31.121660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592411, 39.226013, 31.263521>,  <26.787109, 39.483292, 31.499954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592411, 39.226013, 31.263521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425578, 0.765521, -0.482557,
		0.762869, 0.016674, -0.646338,
		-0.486739, -0.643195, -0.591088,
		26.446388, 39.033054, 31.086195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807882, 39.864014, 30.877398>,  <26.787109, 39.483292, 31.499954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807882, 39.864014, 30.877398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517776, 39.589073, 30.861731>,  <26.343712, 39.424107, 30.852329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517776, 39.589073, 30.861731>,  <26.807882, 39.864014, 30.877398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517776, 39.589073, 30.861731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624635, 0.680879, -0.382406,
		0.289517, -0.252880, -0.923164,
		-0.725266, -0.687353, -0.039168,
		26.300198, 39.382866, 30.849979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627319, 39.701099, 30.176912>,  <26.807882, 39.864014, 30.877398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627319, 39.701099, 30.176912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309937, 39.602093, 30.399321>,  <26.119507, 39.542690, 30.532766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309937, 39.602093, 30.399321>,  <26.627319, 39.701099, 30.176912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309937, 39.602093, 30.399321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560453, 0.653358, -0.508936,
		-0.237311, -0.715443, -0.657133,
		-0.793458, -0.247517, 0.556022,
		26.071899, 39.527836, 30.566128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056265, 39.479939, 29.720835>,  <26.627319, 39.701099, 30.176912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056265, 39.479939, 29.720835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895081, 39.600422, 30.066528>,  <25.798370, 39.672710, 30.273945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895081, 39.600422, 30.066528>,  <26.056265, 39.479939, 29.720835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895081, 39.600422, 30.066528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566820, 0.659260, -0.494055,
		-0.718567, -0.688949, -0.094926,
		-0.402960, 0.301206, 0.864233,
		25.774193, 39.690784, 30.325798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.370413, 39.871449, 29.468285>,  <26.056265, 39.479939, 29.720835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.370413, 39.871449, 29.468285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431643, 40.009537, 29.838667>,  <25.468380, 40.092388, 30.060896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431643, 40.009537, 29.838667>,  <25.370413, 39.871449, 29.468285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431643, 40.009537, 29.838667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383496, 0.884317, -0.266296,
		-0.910768, -0.314337, 0.267757,
		0.153075, 0.345218, 0.925955,
		25.477566, 40.113102, 30.116453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826963, 40.398148, 29.515167>,  <25.370413, 39.871449, 29.468285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.826963, 40.398148, 29.515167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031649, 40.441536, 29.856081>,  <25.154459, 40.467571, 30.060629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031649, 40.441536, 29.856081>,  <24.826963, 40.398148, 29.515167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.031649, 40.441536, 29.856081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143686, 0.988831, -0.039585,
		-0.847057, -0.102205, 0.521583,
		0.511711, 0.108475, 0.852282,
		25.185162, 40.474079, 30.111765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.462263, 40.990658, 29.765574>,  <24.826963, 40.398148, 29.515167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.462263, 40.990658, 29.765574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.817652, 40.952209, 29.945074>,  <25.030886, 40.929138, 30.052774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.817652, 40.952209, 29.945074>,  <24.462263, 40.990658, 29.765574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.817652, 40.952209, 29.945074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025637, 0.986687, 0.160595,
		-0.458216, -0.131179, 0.879107,
		0.888471, -0.096125, 0.448753,
		25.084192, 40.923370, 30.079700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.465971, 41.513645, 30.381519>,  <24.462263, 40.990658, 29.765574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.465971, 41.513645, 30.381519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839418, 41.418308, 30.274527>,  <25.063486, 41.361107, 30.210331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839418, 41.418308, 30.274527>,  <24.465971, 41.513645, 30.381519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.839418, 41.418308, 30.274527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285493, 0.946003, 0.153531,
		0.216447, -0.219704, 0.951252,
		0.933619, -0.238345, -0.267483,
		25.119505, 41.346806, 30.194283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.785681, 41.633373, 31.008890>,  <24.465971, 41.513645, 30.381519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.785681, 41.633373, 31.008890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993999, 41.675671, 30.670048>,  <25.118990, 41.701050, 30.466742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993999, 41.675671, 30.670048>,  <24.785681, 41.633373, 31.008890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.993999, 41.675671, 30.670048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297257, 0.907737, 0.296061,
		0.800255, -0.405996, 0.441315,
		0.520797, 0.105741, -0.847106,
		25.150238, 41.707394, 30.415916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587482, 41.708488, 31.123224>,  <24.785681, 41.633373, 31.008890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587482, 41.708488, 31.123224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402361, 41.873329, 30.809284>,  <25.291288, 41.972233, 30.620920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402361, 41.873329, 30.809284>,  <25.587482, 41.708488, 31.123224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402361, 41.873329, 30.809284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462825, 0.867448, 0.182554,
		0.756046, -0.278762, -0.592187,
		-0.462803, 0.412098, -0.784849,
		25.263519, 41.996960, 30.573830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169584, 42.024727, 30.807600>,  <25.587482, 41.708488, 31.123224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169584, 42.024727, 30.807600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799433, 42.174206, 30.782217>,  <25.577343, 42.263893, 30.766987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799433, 42.174206, 30.782217>,  <26.169584, 42.024727, 30.807600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799433, 42.174206, 30.782217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286463, 0.799110, 0.528547,
		0.248225, 0.470928, -0.846529,
		-0.925377, 0.373698, -0.063455,
		25.521820, 42.286316, 30.763180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090096, 42.032570, 30.023842>,  <26.169584, 42.024727, 30.807600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090096, 42.032570, 30.023842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344786, 42.303551, 30.171158>,  <26.497599, 42.466141, 30.259546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344786, 42.303551, 30.171158>,  <26.090096, 42.032570, 30.023842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344786, 42.303551, 30.171158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018845, 0.463804, -0.885737,
		-0.770862, 0.570910, 0.282549,
		0.636724, 0.677456, 0.368288,
		26.535803, 42.506786, 30.281645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516317, 41.605427, 29.431168>,  <26.090096, 42.032570, 30.023842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516317, 41.605427, 29.431168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704046, 41.291939, 29.268433>,  <26.816683, 41.103848, 29.170792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704046, 41.291939, 29.268433>,  <26.516317, 41.605427, 29.431168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704046, 41.291939, 29.268433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875284, 0.473768, 0.097062,
		0.116678, -0.401652, 0.908329,
		0.469322, -0.783721, -0.406838,
		26.844843, 41.056824, 29.146381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063526, 41.556767, 29.895546>,  <26.516317, 41.605427, 29.431168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063526, 41.556767, 29.895546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889175, 41.683025, 30.232681>,  <26.784565, 41.758781, 30.434963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889175, 41.683025, 30.232681>,  <27.063526, 41.556767, 29.895546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889175, 41.683025, 30.232681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157716, 0.895200, -0.416824,
		-0.886079, -0.314613, -0.340415,
		-0.435877, 0.315650, 0.842838,
		26.758411, 41.777721, 30.485533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289936, 42.179218, 30.225128>,  <27.063526, 41.556767, 29.895546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289936, 42.179218, 30.225128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281940, 42.478508, 30.490387>,  <27.277143, 42.658081, 30.649542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281940, 42.478508, 30.490387>,  <27.289936, 42.179218, 30.225128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281940, 42.478508, 30.490387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371011, -0.610372, 0.699855,
		0.928413, 0.260024, -0.265398,
		-0.019987, 0.748221, 0.663149,
		27.275944, 42.702972, 30.689331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822493, 41.899265, 30.647358>,  <27.289936, 42.179218, 30.225128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822493, 41.899265, 30.647358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666744, 42.204075, 30.854321>,  <27.573296, 42.386959, 30.978498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666744, 42.204075, 30.854321>,  <27.822493, 41.899265, 30.647358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666744, 42.204075, 30.854321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601430, -0.215117, 0.769420,
		0.697620, 0.610773, -0.374545,
		-0.389370, 0.762025, 0.517406,
		27.549932, 42.432682, 31.009542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375124, 42.395378, 30.950201>,  <27.822493, 41.899265, 30.647358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375124, 42.395378, 30.950201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039261, 42.380016, 31.166904>,  <27.837744, 42.370800, 31.296926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039261, 42.380016, 31.166904>,  <28.375124, 42.395378, 30.950201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039261, 42.380016, 31.166904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542559, -0.104478, 0.833495,
		0.024594, 0.993786, 0.108561,
		-0.839658, -0.038401, 0.541757,
		27.787363, 42.368496, 31.329432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563185, 42.752487, 31.536472>,  <28.375124, 42.395378, 30.950201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563185, 42.752487, 31.536472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239326, 42.567787, 31.681391>,  <28.045012, 42.456966, 31.768343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239326, 42.567787, 31.681391>,  <28.563185, 42.752487, 31.536472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239326, 42.567787, 31.681391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489663, -0.191100, 0.850712,
		-0.323585, 0.866177, 0.380827,
		-0.809644, -0.461755, 0.362298,
		27.996433, 42.429260, 31.790079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480013, 43.052608, 32.168652>,  <28.563185, 42.752487, 31.536472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480013, 43.052608, 32.168652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254961, 42.722767, 32.192253>,  <28.119930, 42.524864, 32.206413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254961, 42.722767, 32.192253>,  <28.480013, 43.052608, 32.168652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254961, 42.722767, 32.192253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427212, -0.228903, 0.874696,
		-0.707770, 0.517336, 0.481067,
		-0.562630, -0.824601, 0.059001,
		28.086172, 42.475388, 32.209953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279819, 42.923031, 32.920540>,  <28.480013, 43.052608, 32.168652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279819, 42.923031, 32.920540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210848, 42.568542, 32.748550>,  <28.169464, 42.355850, 32.645355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210848, 42.568542, 32.748550>,  <28.279819, 42.923031, 32.920540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210848, 42.568542, 32.748550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394350, -0.462110, 0.794319,
		-0.902639, -0.032597, 0.429163,
		-0.172428, -0.886224, -0.429973,
		28.159119, 42.302677, 32.619560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886799, 42.508301, 33.410778>,  <28.279819, 42.923031, 32.920540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886799, 42.508301, 33.410778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090553, 42.258316, 33.174152>,  <28.212807, 42.108326, 33.032177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090553, 42.258316, 33.174152>,  <27.886799, 42.508301, 33.410778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090553, 42.258316, 33.174152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362332, -0.467771, 0.806168,
		-0.780539, -0.624995, -0.011834,
		0.509386, -0.624958, -0.591569,
		28.243368, 42.070827, 32.996681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757412, 41.972054, 33.798183>,  <27.886799, 42.508301, 33.410778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757412, 41.972054, 33.798183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042589, 41.855995, 33.542831>,  <28.213696, 41.786362, 33.389622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042589, 41.855995, 33.542831>,  <27.757412, 41.972054, 33.798183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042589, 41.855995, 33.542831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405588, -0.572022, 0.712944,
		-0.572022, -0.767208, -0.290142,
		-0.712944, 0.290142, 0.638380,
		28.256472, 41.768951, 33.351318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744944, 41.293346, 33.845623>,  <27.757412, 41.972054, 33.798183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744944, 41.293346, 33.845623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108257, 41.366611, 33.695171>,  <28.326244, 41.410568, 33.604900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108257, 41.366611, 33.695171>,  <27.744944, 41.293346, 33.845623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108257, 41.366611, 33.695171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391717, -0.688027, 0.610881,
		-0.146899, -0.702190, -0.696670,
		0.908283, 0.183159, -0.376130,
		28.380743, 41.421558, 33.582333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035038, 40.731956, 33.599514>,  <27.744944, 41.293346, 33.845623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035038, 40.731956, 33.599514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361586, 40.945797, 33.686913>,  <28.557514, 41.074100, 33.739349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361586, 40.945797, 33.686913>,  <28.035038, 40.731956, 33.599514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361586, 40.945797, 33.686913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348107, -0.757371, 0.552459,
		0.460826, -0.374952, -0.804394,
		0.816370, 0.534603, 0.218493,
		28.606497, 41.106178, 33.752460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617071, 40.322861, 33.441174>,  <28.035038, 40.731956, 33.599514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617071, 40.322861, 33.441174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751970, 40.606354, 33.689034>,  <28.832911, 40.776451, 33.837749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751970, 40.606354, 33.689034>,  <28.617071, 40.322861, 33.441174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751970, 40.606354, 33.689034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476036, -0.696241, 0.537251,
		0.812190, 0.113786, -0.572189,
		0.337250, 0.708732, 0.619646,
		28.853146, 40.818974, 33.874928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349960, 40.204971, 33.395309>,  <28.617071, 40.322861, 33.441174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349960, 40.204971, 33.395309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210604, 40.368420, 33.732746>,  <29.126989, 40.466488, 33.935207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210604, 40.368420, 33.732746>,  <29.349960, 40.204971, 33.395309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210604, 40.368420, 33.732746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445159, -0.719884, 0.532542,
		0.824898, 0.561067, 0.068900,
		-0.348392, 0.408621, 0.843595,
		29.106087, 40.491005, 33.985825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984079, 40.229504, 33.694241>,  <29.349960, 40.204971, 33.395309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984079, 40.229504, 33.694241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683441, 40.267025, 33.955410>,  <29.503057, 40.289539, 34.112110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683441, 40.267025, 33.955410>,  <29.984079, 40.229504, 33.694241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683441, 40.267025, 33.955410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310741, -0.822771, 0.475908,
		0.581846, 0.560579, 0.589242,
		-0.751596, 0.093803, 0.652920,
		29.457962, 40.295166, 34.151287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230398, 39.874004, 34.105408>,  <29.984079, 40.229504, 33.694241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230398, 39.874004, 34.105408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863510, 39.925232, 34.256306>,  <29.643377, 39.955967, 34.346844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863510, 39.925232, 34.256306>,  <30.230398, 39.874004, 34.105408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863510, 39.925232, 34.256306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106581, -0.833525, 0.542105,
		0.383864, 0.537435, 0.750874,
		-0.917218, 0.128065, 0.377240,
		29.588345, 39.963650, 34.369476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398687, 39.766308, 34.787048>,  <30.230398, 39.874004, 34.105408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398687, 39.766308, 34.787048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011278, 39.685856, 34.728378>,  <29.778833, 39.637585, 34.693176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011278, 39.685856, 34.728378>,  <30.398687, 39.766308, 34.787048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011278, 39.685856, 34.728378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121714, -0.896607, 0.425772,
		-0.217140, 0.394518, 0.892864,
		-0.968523, -0.201126, -0.146671,
		29.720722, 39.625519, 34.684376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038561, 39.349594, 35.419029>,  <30.398687, 39.766308, 34.787048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038561, 39.349594, 35.419029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814104, 39.286247, 35.094059>,  <29.679430, 39.248238, 34.899075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814104, 39.286247, 35.094059>,  <30.038561, 39.349594, 35.419029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814104, 39.286247, 35.094059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064840, -0.970100, 0.233886,
		-0.825176, 0.183921, 0.534095,
		-0.561142, -0.158367, -0.812428,
		29.645761, 39.238739, 34.850330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701881, 38.740158, 35.540051>,  <30.038561, 39.349594, 35.419029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701881, 38.740158, 35.540051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639380, 38.753090, 35.145176>,  <29.601877, 38.760849, 34.908253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639380, 38.753090, 35.145176>,  <29.701881, 38.740158, 35.540051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639380, 38.753090, 35.145176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123574, -0.992251, -0.012939,
		-0.979956, 0.119968, 0.159041,
		-0.156256, 0.032333, -0.987187,
		29.592503, 38.762791, 34.849018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143921, 38.275528, 35.394737>,  <29.701881, 38.740158, 35.540051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143921, 38.275528, 35.394737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318346, 38.315166, 35.036961>,  <29.423000, 38.338951, 34.822292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318346, 38.315166, 35.036961>,  <29.143921, 38.275528, 35.394737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318346, 38.315166, 35.036961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052392, -0.995028, -0.084699,
		-0.898390, -0.009928, -0.439086,
		0.436062, 0.099098, -0.894444,
		29.449165, 38.344894, 34.768627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749022, 37.971500, 34.960743>,  <29.143921, 38.275528, 35.394737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749022, 37.971500, 34.960743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114431, 37.949261, 34.799557>,  <29.333677, 37.935917, 34.702843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114431, 37.949261, 34.799557>,  <28.749022, 37.971500, 34.960743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114431, 37.949261, 34.799557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148044, -0.968124, -0.202038,
		-0.378890, 0.244223, -0.892635,
		0.913524, -0.055599, -0.402968,
		29.388489, 37.932583, 34.678665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649239, 37.510986, 34.398102>,  <28.749022, 37.971500, 34.960743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649239, 37.510986, 34.398102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044668, 37.521797, 34.457424>,  <29.281925, 37.528282, 34.493015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044668, 37.521797, 34.457424>,  <28.649239, 37.510986, 34.398102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044668, 37.521797, 34.457424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057331, -0.977276, -0.204069,
		0.139418, 0.210239, -0.967658,
		0.988573, 0.027026, 0.148303,
		29.341240, 37.529903, 34.501915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005255, 37.186886, 33.799759>,  <28.649239, 37.510986, 34.398102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005255, 37.186886, 33.799759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276400, 37.179390, 34.093739>,  <29.439087, 37.174892, 34.270126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276400, 37.179390, 34.093739>,  <29.005255, 37.186886, 33.799759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276400, 37.179390, 34.093739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125776, -0.981981, -0.141043,
		0.724349, 0.188047, -0.663292,
		0.677863, -0.018738, 0.734949,
		29.479759, 37.173767, 34.314224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471352, 36.892231, 33.414246>,  <29.005255, 37.186886, 33.799759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471352, 36.892231, 33.414246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547083, 36.843498, 33.803974>,  <29.592522, 36.814259, 34.037811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547083, 36.843498, 33.803974>,  <29.471352, 36.892231, 33.414246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547083, 36.843498, 33.803974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109663, -0.988688, -0.102323,
		0.975771, -0.087475, -0.200546,
		0.189327, -0.121836, 0.974326,
		29.603882, 36.806946, 34.096272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772116, 36.307312, 33.476707>,  <29.471352, 36.892231, 33.414246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772116, 36.307312, 33.476707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681770, 36.366840, 33.861797>,  <29.627563, 36.402557, 34.092850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681770, 36.366840, 33.861797>,  <29.772116, 36.307312, 33.476707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681770, 36.366840, 33.861797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264027, -0.960624, 0.086550,
		0.937697, -0.234637, 0.256260,
		-0.225862, 0.148818, 0.962725,
		29.614012, 36.411484, 34.150616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290787, 36.968632, 33.634003>,  <29.772116, 36.307312, 33.476707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290787, 36.968632, 33.634003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288260, 36.891758, 34.026539>,  <30.286743, 36.845634, 34.262058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288260, 36.891758, 34.026539>,  <30.290787, 36.968632, 33.634003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288260, 36.891758, 34.026539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067383, -0.979045, -0.192172,
		0.997707, -0.067340, -0.006764,
		-0.006319, -0.192188, 0.981338,
		30.286364, 36.834103, 34.320942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824528, 36.536674, 33.849792>,  <30.290787, 36.968632, 33.634003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824528, 36.536674, 33.849792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502790, 36.495945, 34.083942>,  <30.309748, 36.471508, 34.224430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502790, 36.495945, 34.083942>,  <30.824528, 36.536674, 33.849792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502790, 36.495945, 34.083942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089793, -0.994722, -0.049651,
		0.587339, 0.012626, 0.809242,
		-0.804344, -0.101826, 0.585373,
		30.261488, 36.465397, 34.259556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006460, 36.071152, 34.421726>,  <30.824528, 36.536674, 33.849792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006460, 36.071152, 34.421726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607225, 36.061569, 34.398914>,  <30.367685, 36.055820, 34.385227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607225, 36.061569, 34.398914>,  <31.006460, 36.071152, 34.421726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607225, 36.061569, 34.398914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005410, -0.952231, 0.305332,
		-0.061616, 0.304439, 0.950537,
		-0.998085, -0.023956, -0.057025,
		30.307800, 36.054382, 34.381805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540714, 35.455402, 34.680424>,  <31.006460, 36.071152, 34.421726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540714, 35.455402, 34.680424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338497, 35.788124, 34.772102>,  <30.217167, 35.987759, 34.827110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338497, 35.788124, 34.772102>,  <30.540714, 35.455402, 34.680424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338497, 35.788124, 34.772102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325048, -0.429681, 0.842448,
		0.799231, 0.351394, 0.487598,
		-0.505542, 0.831803, 0.229194,
		30.186834, 36.037666, 34.840862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366596, 34.860596, 34.232803>,  <30.540714, 35.455402, 34.680424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366596, 34.860596, 34.232803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513420, 34.488724, 34.220402>,  <30.601515, 34.265602, 34.212963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513420, 34.488724, 34.220402>,  <30.366596, 34.860596, 34.232803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513420, 34.488724, 34.220402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053500, -0.054372, 0.997087,
		-0.928657, -0.364334, -0.069695,
		0.367062, -0.929680, -0.031001,
		30.623539, 34.209820, 34.211102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119522, 34.492718, 34.762272>,  <30.366596, 34.860596, 34.232803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119522, 34.492718, 34.762272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451996, 34.288124, 34.675079>,  <30.651480, 34.165367, 34.622765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451996, 34.288124, 34.675079>,  <30.119522, 34.492718, 34.762272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451996, 34.288124, 34.675079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050695, -0.320706, 0.945821,
		-0.553683, -0.797201, -0.240636,
		0.831183, -0.511487, -0.217984,
		30.701351, 34.134678, 34.609684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106289, 34.040047, 35.314301>,  <30.119522, 34.492718, 34.762272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106289, 34.040047, 35.314301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473005, 33.966499, 35.172493>,  <30.693035, 33.922371, 35.087410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473005, 33.966499, 35.172493>,  <30.106289, 34.040047, 35.314301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473005, 33.966499, 35.172493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297603, -0.277433, 0.913490,
		-0.266307, -0.942989, -0.199632,
		0.916795, -0.183858, -0.354519,
		30.748043, 33.911339, 35.066135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259220, 33.316608, 35.498802>,  <30.106289, 34.040047, 35.314301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259220, 33.316608, 35.498802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620815, 33.478695, 35.444241>,  <30.837772, 33.575947, 35.411503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620815, 33.478695, 35.444241>,  <30.259220, 33.316608, 35.498802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620815, 33.478695, 35.444241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313023, -0.409928, 0.856724,
		0.291247, -0.817164, -0.497413,
		0.903987, 0.405219, -0.136401,
		30.892012, 33.600262, 35.403320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667736, 32.841927, 35.733986>,  <30.259220, 33.316608, 35.498802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667736, 32.841927, 35.733986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904003, 33.164692, 35.733925>,  <31.045763, 33.358353, 35.733887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904003, 33.164692, 35.733925>,  <30.667736, 32.841927, 35.733986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904003, 33.164692, 35.733925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439327, -0.321426, 0.838855,
		0.676835, -0.495552, -0.544355,
		0.590666, 0.806916, -0.000157,
		31.081203, 33.406765, 35.733879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449039, 32.650681, 35.776352>,  <30.667736, 32.841927, 35.733986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449039, 32.650681, 35.776352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425690, 33.014103, 35.941822>,  <31.411680, 33.232155, 36.041103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425690, 33.014103, 35.941822>,  <31.449039, 32.650681, 35.776352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425690, 33.014103, 35.941822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352726, -0.368879, 0.859949,
		0.933904, 0.196111, -0.298938,
		-0.058373, 0.908553, 0.413671,
		31.408178, 33.286671, 36.065922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146748, 32.887775, 36.114529>,  <31.449039, 32.650681, 35.776352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146748, 32.887775, 36.114529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869982, 33.119446, 36.286953>,  <31.703922, 33.258450, 36.390408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869982, 33.119446, 36.286953>,  <32.146748, 32.887775, 36.114529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869982, 33.119446, 36.286953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439074, -0.136390, 0.888038,
		0.573123, 0.803712, -0.159931,
		-0.691914, 0.579176, 0.431057,
		31.662407, 33.293198, 36.416271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522537, 33.350941, 36.448048>,  <32.146748, 32.887775, 36.114529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522537, 33.350941, 36.448048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163002, 33.324818, 36.621403>,  <31.947281, 33.309143, 36.725414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163002, 33.324818, 36.621403>,  <32.522537, 33.350941, 36.448048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163002, 33.324818, 36.621403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437282, -0.066934, 0.896830,
		-0.029566, 0.995617, 0.088722,
		-0.898838, -0.065312, 0.433387,
		31.893351, 33.305225, 36.751419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696266, 33.673683, 37.105125>,  <32.522537, 33.350941, 36.448048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696266, 33.673683, 37.105125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323895, 33.542984, 37.170364>,  <32.100471, 33.464565, 37.209507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323895, 33.542984, 37.170364>,  <32.696266, 33.673683, 37.105125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323895, 33.542984, 37.170364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169685, 0.008447, 0.985462,
		-0.323375, 0.945074, 0.047580,
		-0.930933, -0.326747, 0.163096,
		32.044613, 33.444962, 37.219292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353218, 34.131836, 37.602837>,  <32.696266, 33.673683, 37.105125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353218, 34.131836, 37.602837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191853, 33.766209, 37.619476>,  <32.095032, 33.546833, 37.629459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191853, 33.766209, 37.619476>,  <32.353218, 34.131836, 37.602837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191853, 33.766209, 37.619476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292535, -0.085765, 0.952401,
		-0.866993, 0.396385, 0.301996,
		-0.403418, -0.914070, 0.041599,
		32.070827, 33.491989, 37.631954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148495, 34.142166, 38.320232>,  <32.353218, 34.131836, 37.602837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148495, 34.142166, 38.320232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161171, 33.766369, 38.183796>,  <32.168777, 33.540890, 38.101933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161171, 33.766369, 38.183796>,  <32.148495, 34.142166, 38.320232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161171, 33.766369, 38.183796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089670, -0.337216, 0.937147,
		-0.995467, -0.060285, 0.073558,
		0.031691, -0.939495, -0.341094,
		32.170677, 33.484520, 38.081467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689739, 33.825058, 38.748577>,  <32.148495, 34.142166, 38.320232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689739, 33.825058, 38.748577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955593, 33.573112, 38.587811>,  <32.115105, 33.421944, 38.491352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955593, 33.573112, 38.587811>,  <31.689739, 33.825058, 38.748577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955593, 33.573112, 38.587811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055174, -0.495075, 0.867097,
		-0.745131, -0.598476, -0.294291,
		0.664632, -0.629863, -0.401916,
		32.154984, 33.384155, 38.467236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346548, 33.191475, 38.917637>,  <31.689739, 33.825058, 38.748577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346548, 33.191475, 38.917637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739759, 33.145447, 38.860481>,  <31.975685, 33.117828, 38.826187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739759, 33.145447, 38.860481>,  <31.346548, 33.191475, 38.917637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739759, 33.145447, 38.860481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077100, -0.447637, 0.890886,
		-0.166479, -0.886781, -0.431167,
		0.983026, -0.115071, -0.142893,
		32.034668, 33.110924, 38.817612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486967, 32.558201, 39.205997>,  <31.346548, 33.191475, 38.917637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486967, 32.558201, 39.205997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860088, 32.687252, 39.141754>,  <32.083961, 32.764683, 39.103207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860088, 32.687252, 39.141754>,  <31.486967, 32.558201, 39.205997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860088, 32.687252, 39.141754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295089, -0.427896, 0.854299,
		0.206894, -0.844285, -0.494345,
		0.932801, 0.322625, -0.160610,
		32.139927, 32.784039, 39.093571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892807, 31.977072, 39.324966>,  <31.486967, 32.558201, 39.205997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892807, 31.977072, 39.324966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161297, 32.270016, 39.370758>,  <32.322392, 32.445782, 39.398232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161297, 32.270016, 39.370758>,  <31.892807, 31.977072, 39.324966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161297, 32.270016, 39.370758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220018, -0.344320, 0.912708,
		0.707849, -0.587445, -0.392248,
		0.671224, 0.732361, 0.114478,
		32.362663, 32.489723, 39.405102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558643, 31.696501, 39.597809>,  <31.892807, 31.977072, 39.324966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558643, 31.696501, 39.597809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586010, 32.083694, 39.694408>,  <32.602432, 32.316010, 39.752369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586010, 32.083694, 39.694408>,  <32.558643, 31.696501, 39.597809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586010, 32.083694, 39.694408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322345, -0.250532, 0.912868,
		0.944147, 0.015389, -0.329166,
		0.068419, 0.967986, 0.241499,
		32.606537, 32.374092, 39.766857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249535, 31.818872, 39.819664>,  <32.558643, 31.696501, 39.597809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249535, 31.818872, 39.819664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008560, 32.097107, 39.976238>,  <32.863976, 32.264050, 40.070183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008560, 32.097107, 39.976238>,  <33.249535, 31.818872, 39.819664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008560, 32.097107, 39.976238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254158, -0.297717, 0.920200,
		0.756619, 0.653851, 0.002567,
		-0.602438, 0.695588, 0.391440,
		32.827827, 32.305782, 40.093670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672318, 32.207512, 40.347519>,  <33.249535, 31.818872, 39.819664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672318, 32.207512, 40.347519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281906, 32.248005, 40.424580>,  <33.047657, 32.272301, 40.470818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281906, 32.248005, 40.424580>,  <33.672318, 32.207512, 40.347519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281906, 32.248005, 40.424580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175295, -0.158936, 0.971602,
		0.128980, 0.982085, 0.137381,
		-0.976031, 0.101236, 0.192654,
		32.989098, 32.278374, 40.482376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626270, 32.231136, 41.053032>,  <33.672318, 32.207512, 40.347519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626270, 32.231136, 41.053032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229275, 32.224403, 41.004566>,  <32.991077, 32.220364, 40.975487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229275, 32.224403, 41.004566>,  <33.626270, 32.231136, 41.053032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229275, 32.224403, 41.004566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116332, -0.176525, 0.977398,
		-0.037839, 0.984153, 0.173241,
		-0.992489, -0.016831, -0.121168,
		32.931526, 32.219353, 40.968216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316998, 32.746635, 41.557976>,  <33.626270, 32.231136, 41.053032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316998, 32.746635, 41.557976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047844, 32.470333, 41.452080>,  <32.886353, 32.304554, 41.388542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047844, 32.470333, 41.452080>,  <33.316998, 32.746635, 41.557976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047844, 32.470333, 41.452080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228821, -0.145976, 0.962462,
		-0.703469, 0.708203, -0.059834,
		-0.672884, -0.690753, -0.264741,
		32.845978, 32.263107, 41.372658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720589, 32.923710, 41.965576>,  <33.316998, 32.746635, 41.557976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720589, 32.923710, 41.965576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659138, 32.544704, 41.853424>,  <32.622269, 32.317303, 41.786133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659138, 32.544704, 41.853424>,  <32.720589, 32.923710, 41.965576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659138, 32.544704, 41.853424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190117, -0.250107, 0.949369,
		-0.969667, 0.199154, -0.141716,
		-0.153626, -0.947515, -0.280383,
		32.613049, 32.260448, 41.769310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989697, 32.664268, 42.212898>,  <32.720589, 32.923710, 41.965576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989697, 32.664268, 42.212898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211342, 32.339066, 42.141373>,  <32.344330, 32.143944, 42.098457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211342, 32.339066, 42.141373>,  <31.989697, 32.664268, 42.212898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211342, 32.339066, 42.141373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178791, -0.326024, 0.928301,
		-0.813015, -0.482413, -0.326012,
		0.554112, -0.813011, -0.178811,
		32.377575, 32.095161, 42.087730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575609, 32.151405, 42.461285>,  <31.989697, 32.664268, 42.212898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575609, 32.151405, 42.461285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928984, 31.970722, 42.411491>,  <32.141010, 31.862312, 42.381615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928984, 31.970722, 42.411491>,  <31.575609, 32.151405, 42.461285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928984, 31.970722, 42.411491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200718, -0.604920, 0.770574,
		-0.423377, -0.655768, -0.625076,
		0.883439, -0.451707, -0.124485,
		32.194016, 31.835209, 42.374146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409355, 31.390669, 42.509682>,  <31.575609, 32.151405, 42.461285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409355, 31.390669, 42.509682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798206, 31.435585, 42.592007>,  <32.031517, 31.462536, 42.641403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798206, 31.435585, 42.592007>,  <31.409355, 31.390669, 42.509682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798206, 31.435585, 42.592007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132804, -0.459705, 0.878086,
		0.193216, -0.880944, -0.431979,
		0.972127, 0.112292, 0.205815,
		32.089844, 31.469273, 42.653751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583487, 30.735258, 42.660378>,  <31.409355, 31.390669, 42.509682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583487, 30.735258, 42.660378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864925, 30.984734, 42.796593>,  <32.033787, 31.134418, 42.878323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864925, 30.984734, 42.796593>,  <31.583487, 30.735258, 42.660378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864925, 30.984734, 42.796593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013757, -0.467184, 0.884053,
		0.710467, -0.626701, -0.320129,
		0.703596, 0.623687, 0.340540,
		32.076004, 31.171839, 42.898754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104874, 30.229006, 42.866608>,  <31.583487, 30.735258, 42.660378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104874, 30.229006, 42.866608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141426, 30.576582, 43.061169>,  <32.163357, 30.785128, 43.177906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141426, 30.576582, 43.061169>,  <32.104874, 30.229006, 42.866608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141426, 30.576582, 43.061169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091318, -0.479080, 0.873009,
		0.991620, -0.124197, 0.035570,
		0.091384, 0.868941, 0.486406,
		32.168842, 30.837265, 43.207092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513855, 30.102484, 43.491352>,  <32.104874, 30.229006, 42.866608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513855, 30.102484, 43.491352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320694, 30.446575, 43.556850>,  <32.204796, 30.653030, 43.596149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320694, 30.446575, 43.556850>,  <32.513855, 30.102484, 43.491352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320694, 30.446575, 43.556850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132522, -0.256633, 0.957381,
		0.865587, 0.440625, 0.237928,
		-0.482906, 0.860227, 0.163745,
		32.175823, 30.704643, 43.605972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690411, 30.305807, 44.182182>,  <32.513855, 30.102484, 43.491352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690411, 30.305807, 44.182182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363941, 30.522820, 44.102665>,  <32.168060, 30.653027, 44.054955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363941, 30.522820, 44.102665>,  <32.690411, 30.305807, 44.182182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363941, 30.522820, 44.102665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335980, -0.165712, 0.927177,
		0.470081, 0.823528, 0.317529,
		-0.816175, 0.542532, -0.198791,
		32.119087, 30.685579, 44.043026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600170, 30.612896, 44.838367>,  <32.690411, 30.305807, 44.182182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600170, 30.612896, 44.838367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248543, 30.666090, 44.655262>,  <32.037567, 30.698006, 44.545399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248543, 30.666090, 44.655262>,  <32.600170, 30.612896, 44.838367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248543, 30.666090, 44.655262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459004, 0.023028, 0.888136,
		0.128649, 0.990851, 0.040797,
		-0.879071, 0.132983, -0.457767,
		31.984821, 30.705984, 44.517933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258167, 31.183558, 45.148903>,  <32.600170, 30.612896, 44.838367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258167, 31.183558, 45.148903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003681, 30.921698, 44.985607>,  <31.850990, 30.764582, 44.887630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003681, 30.921698, 44.985607>,  <32.258167, 31.183558, 45.148903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003681, 30.921698, 44.985607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341834, -0.235183, 0.909856,
		-0.691650, 0.718416, -0.074154,
		-0.636215, -0.654651, -0.408243,
		31.812817, 30.725302, 44.863132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591610, 31.274019, 45.500744>,  <32.258167, 31.183558, 45.148903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591610, 31.274019, 45.500744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570910, 30.905863, 45.345718>,  <31.558489, 30.684969, 45.252705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570910, 30.905863, 45.345718>,  <31.591610, 31.274019, 45.500744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570910, 30.905863, 45.345718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165147, -0.374854, 0.912256,
		-0.984910, 0.111215, -0.132600,
		-0.051751, -0.920389, -0.387565,
		31.555384, 30.629745, 45.229450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929012, 30.953886, 45.657734>,  <31.591610, 31.274019, 45.500744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929012, 30.953886, 45.657734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161600, 30.639782, 45.572639>,  <31.301153, 30.451319, 45.521584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161600, 30.639782, 45.572639>,  <30.929012, 30.953886, 45.657734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161600, 30.639782, 45.572639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243131, -0.417260, 0.875660,
		-0.776390, -0.457447, -0.433546,
		0.581469, -0.785262, -0.212737,
		31.336040, 30.404203, 45.508820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534994, 30.434628, 45.895908>,  <30.929012, 30.953886, 45.657734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534994, 30.434628, 45.895908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914089, 30.307140, 45.890152>,  <31.141546, 30.230648, 45.886700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914089, 30.307140, 45.890152>,  <30.534994, 30.434628, 45.895908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914089, 30.307140, 45.890152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102279, -0.346247, 0.932551,
		-0.302203, -0.882345, -0.360751,
		0.947741, -0.318717, -0.014391,
		31.198412, 30.211525, 45.885834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501425, 29.760187, 46.115482>,  <30.534994, 30.434628, 45.895908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501425, 29.760187, 46.115482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888601, 29.845926, 46.167850>,  <31.120907, 29.897369, 46.199272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888601, 29.845926, 46.167850>,  <30.501425, 29.760187, 46.115482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888601, 29.845926, 46.167850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009786, -0.553045, 0.833094,
		0.250979, -0.805106, -0.537414,
		0.967943, 0.214349, 0.130924,
		31.178984, 29.910231, 46.207127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751184, 29.132334, 46.348713>,  <30.501425, 29.760187, 46.115482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751184, 29.132334, 46.348713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017179, 29.407837, 46.464237>,  <31.176777, 29.573139, 46.533550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017179, 29.407837, 46.464237>,  <30.751184, 29.132334, 46.348713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017179, 29.407837, 46.464237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065187, -0.331697, 0.941131,
		0.744006, -0.644665, -0.175676,
		0.664985, 0.688756, 0.288808,
		31.216675, 29.614464, 46.550880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273855, 28.749971, 46.724743>,  <30.751184, 29.132334, 46.348713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273855, 28.749971, 46.724743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319330, 29.132957, 46.830826>,  <31.346615, 29.362749, 46.894474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319330, 29.132957, 46.830826>,  <31.273855, 28.749971, 46.724743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319330, 29.132957, 46.830826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127222, -0.278767, 0.951895,
		0.985337, -0.074480, -0.153504,
		0.113689, 0.957466, 0.265204,
		31.353437, 29.420197, 46.910385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913084, 28.865746, 47.026337>,  <31.273855, 28.749971, 46.724743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913084, 28.865746, 47.026337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729992, 29.175884, 47.200378>,  <31.620136, 29.361967, 47.304806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729992, 29.175884, 47.200378>,  <31.913084, 28.865746, 47.026337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729992, 29.175884, 47.200378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266798, -0.347046, 0.899099,
		0.848117, 0.527630, -0.048008,
		-0.457730, 0.775349, 0.435106,
		31.592672, 29.408489, 47.330910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290035, 28.996681, 47.579529>,  <31.913084, 28.865746, 47.026337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290035, 28.996681, 47.579529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967104, 29.206768, 47.687138>,  <31.773346, 29.332819, 47.751701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967104, 29.206768, 47.687138>,  <32.290035, 28.996681, 47.579529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967104, 29.206768, 47.687138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102630, -0.323968, 0.940485,
		0.581110, 0.786889, 0.207646,
		-0.807328, 0.525215, 0.269019,
		31.724905, 29.364332, 47.767845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465069, 29.153776, 48.196667>,  <32.290035, 28.996681, 47.579529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465069, 29.153776, 48.196667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078739, 29.256792, 48.208340>,  <31.846941, 29.318602, 48.215343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078739, 29.256792, 48.208340>,  <32.465069, 29.153776, 48.196667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078739, 29.256792, 48.208340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032427, -0.231792, 0.972225,
		0.257150, 0.938055, 0.232222,
		-0.965827, 0.257538, 0.029187,
		31.788990, 29.334053, 48.217094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262218, 29.587557, 48.792728>,  <32.465069, 29.153776, 48.196667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262218, 29.587557, 48.792728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940140, 29.384787, 48.669643>,  <31.746893, 29.263124, 48.595795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940140, 29.384787, 48.669643>,  <32.262218, 29.587557, 48.792728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940140, 29.384787, 48.669643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137079, -0.345732, 0.928266,
		-0.576946, 0.789618, 0.208893,
		-0.805197, -0.506925, -0.307709,
		31.698580, 29.232710, 48.577332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808891, 29.585913, 49.461136>,  <32.262218, 29.587557, 48.792728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808891, 29.585913, 49.461136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661871, 29.306957, 49.215027>,  <31.573660, 29.139584, 49.067360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661871, 29.306957, 49.215027>,  <31.808891, 29.585913, 49.461136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661871, 29.306957, 49.215027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507952, -0.403647, 0.760956,
		-0.779033, 0.592217, -0.205879,
		-0.367549, -0.697387, -0.615272,
		31.551607, 29.097742, 49.030445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123964, 29.573444, 49.609364>,  <31.808891, 29.585913, 49.461136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123964, 29.573444, 49.609364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208368, 29.213480, 49.456715>,  <31.259010, 28.997501, 49.365124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208368, 29.213480, 49.456715>,  <31.123964, 29.573444, 49.609364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208368, 29.213480, 49.456715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502460, -0.434742, 0.747351,
		-0.838457, 0.034053, -0.543903,
		0.211008, -0.899912, -0.381623,
		31.271671, 28.943506, 49.342228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514027, 29.220793, 49.620026>,  <31.123964, 29.573444, 49.609364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514027, 29.220793, 49.620026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774862, 28.921768, 49.569527>,  <30.931364, 28.742353, 49.539227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774862, 28.921768, 49.569527>,  <30.514027, 29.220793, 49.620026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774862, 28.921768, 49.569527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536511, -0.572667, 0.619846,
		-0.535668, -0.336461, -0.774502,
		0.652086, -0.747561, -0.126244,
		30.970488, 28.697500, 49.531654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063778, 28.777048, 49.447987>,  <30.514027, 29.220793, 49.620026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063778, 28.777048, 49.447987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149746, 28.431179, 49.629601>,  <30.201326, 28.223658, 49.738571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149746, 28.431179, 49.629601>,  <30.063778, 28.777048, 49.447987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149746, 28.431179, 49.629601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976290, -0.177920, 0.123300,
		-0.025831, -0.469773, -0.882409,
		0.214921, -0.864672, 0.454039,
		30.214222, 28.171778, 49.765812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545181, 28.278593, 49.242764>,  <30.063778, 28.777048, 49.447987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545181, 28.278593, 49.242764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689308, 28.160414, 49.596687>,  <29.775785, 28.089506, 49.809040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689308, 28.160414, 49.596687>,  <29.545181, 28.278593, 49.242764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689308, 28.160414, 49.596687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921800, -0.258202, 0.289165,
		0.143024, -0.919805, -0.365381,
		0.360318, -0.295450, 0.884805,
		29.797403, 28.071779, 49.862129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328167, 27.644806, 49.477486>,  <29.545181, 28.278593, 49.242764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328167, 27.644806, 49.477486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457424, 27.764107, 49.836735>,  <29.534979, 27.835688, 50.052284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457424, 27.764107, 49.836735>,  <29.328167, 27.644806, 49.477486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457424, 27.764107, 49.836735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852320, -0.320697, 0.413163,
		0.411251, -0.898999, 0.150574,
		0.323145, 0.298251, 0.898123,
		29.554367, 27.853582, 50.106171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492363, 27.067518, 49.988060>,  <29.328167, 27.644806, 49.477486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492363, 27.067518, 49.988060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367298, 27.414433, 50.143013>,  <29.292259, 27.622581, 50.235985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367298, 27.414433, 50.143013>,  <29.492363, 27.067518, 49.988060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367298, 27.414433, 50.143013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750358, -0.475576, 0.459119,
		0.582414, -0.147124, 0.799467,
		-0.312660, 0.867284, 0.387378,
		29.273500, 27.674618, 50.259228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084612, 26.901377, 50.446262>,  <29.492363, 27.067518, 49.988060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084612, 26.901377, 50.446262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974995, 26.577488, 50.653820>,  <29.909225, 26.383154, 50.778355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974995, 26.577488, 50.653820>,  <30.084612, 26.901377, 50.446262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974995, 26.577488, 50.653820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711598, -0.533671, -0.456973,
		0.646939, 0.244012, 0.722446,
		-0.274041, -0.809724, 0.518891,
		29.892782, 26.334570, 50.809486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700476, 26.642895, 50.930344>,  <30.084612, 26.901377, 50.446262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700476, 26.642895, 50.930344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440954, 26.361418, 50.814499>,  <30.285242, 26.192532, 50.744991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440954, 26.361418, 50.814499>,  <30.700476, 26.642895, 50.930344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440954, 26.361418, 50.814499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727959, -0.463103, -0.505580,
		0.221653, -0.538846, 0.812721,
		-0.648803, -0.703691, -0.289610,
		30.246313, 26.150311, 50.727615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944427, 26.180979, 50.236565>,  <30.700476, 26.642895, 50.930344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944427, 26.180979, 50.236565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244631, 25.976147, 50.403664>,  <31.424753, 25.853249, 50.503922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244631, 25.976147, 50.403664>,  <30.944427, 26.180979, 50.236565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244631, 25.976147, 50.403664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537202, 0.104558, -0.836948,
		0.384905, 0.852551, 0.353561,
		0.750508, -0.512079, 0.417747,
		31.469784, 25.822523, 50.528988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627275, 26.579168, 50.254444>,  <30.944427, 26.180979, 50.236565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627275, 26.579168, 50.254444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714478, 26.196047, 50.179520>,  <31.766798, 25.966173, 50.134563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714478, 26.196047, 50.179520>,  <31.627275, 26.579168, 50.254444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714478, 26.196047, 50.179520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710276, 0.287337, -0.642609,
		0.669315, 0.007045, 0.742945,
		0.218003, -0.957804, -0.187315,
		31.779879, 25.908707, 50.123325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429443, 26.476009, 50.211456>,  <31.627275, 26.579168, 50.254444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429443, 26.476009, 50.211456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193474, 26.231871, 49.999996>,  <32.051891, 26.085388, 49.873119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193474, 26.231871, 49.999996>,  <32.429443, 26.476009, 50.211456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193474, 26.231871, 49.999996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551658, 0.173432, -0.815840,
		0.589628, -0.772917, 0.234390,
		-0.589926, -0.610345, -0.528646,
		32.016495, 26.048767, 49.841404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822319, 25.942850, 49.781136>,  <32.429443, 26.476009, 50.211456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822319, 25.942850, 49.781136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469181, 26.014002, 49.607265>,  <32.257298, 26.056694, 49.502941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469181, 26.014002, 49.607265>,  <32.822319, 25.942850, 49.781136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469181, 26.014002, 49.607265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437347, -0.026028, -0.898916,
		-0.171215, -0.983708, -0.054818,
		-0.882844, 0.177883, -0.434678,
		32.204327, 26.067366, 49.476864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795887, 25.592632, 49.192184>,  <32.822319, 25.942850, 49.781136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795887, 25.592632, 49.192184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544472, 25.897491, 49.130116>,  <32.393623, 26.080406, 49.092876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544472, 25.897491, 49.130116>,  <32.795887, 25.592632, 49.192184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544472, 25.897491, 49.130116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256434, 0.014715, -0.966450,
		-0.734293, -0.647238, -0.204689,
		-0.628535, 0.762146, -0.155169,
		32.355911, 26.126135, 49.083565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443012, 25.430635, 48.621464>,  <32.795887, 25.592632, 49.192184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443012, 25.430635, 48.621464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412575, 25.828691, 48.646458>,  <32.394314, 26.067526, 48.661453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412575, 25.828691, 48.646458>,  <32.443012, 25.430635, 48.621464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412575, 25.828691, 48.646458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183184, 0.075552, -0.980171,
		-0.980129, -0.063139, -0.188043,
		-0.076094, 0.995141, 0.062485,
		32.389748, 26.127234, 48.665203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088188, 25.578167, 47.954929>,  <32.443012, 25.430635, 48.621464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088188, 25.578167, 47.954929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268147, 25.906246, 48.096275>,  <32.376122, 26.103094, 48.181084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268147, 25.906246, 48.096275>,  <32.088188, 25.578167, 47.954929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268147, 25.906246, 48.096275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176037, 0.306468, -0.935462,
		-0.875562, 0.483062, -0.006508,
		0.449891, 0.820200, 0.353369,
		32.403114, 26.152306, 48.202286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746866, 26.171133, 47.675716>,  <32.088188, 25.578167, 47.954929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746866, 26.171133, 47.675716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119625, 26.274412, 47.777618>,  <32.343281, 26.336380, 47.838760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119625, 26.274412, 47.777618>,  <31.746866, 26.171133, 47.675716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119625, 26.274412, 47.777618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136025, 0.402316, -0.905339,
		-0.336250, 0.878336, 0.339796,
		0.931898, 0.258200, 0.254754,
		32.399193, 26.351871, 47.854046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828047, 26.730360, 47.308979>,  <31.746866, 26.171133, 47.675716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828047, 26.730360, 47.308979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206169, 26.652266, 47.413506>,  <32.433041, 26.605410, 47.476219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206169, 26.652266, 47.413506>,  <31.828047, 26.730360, 47.308979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206169, 26.652266, 47.413506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318803, 0.383432, -0.866802,
		0.069036, 0.902697, 0.424702,
		0.945304, -0.195236, 0.261312,
		32.489761, 26.593695, 47.491898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098602, 27.341904, 47.282116>,  <31.828047, 26.730360, 47.308979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098602, 27.341904, 47.282116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400867, 27.081932, 47.249683>,  <32.582226, 26.925949, 47.230225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400867, 27.081932, 47.249683>,  <32.098602, 27.341904, 47.282116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400867, 27.081932, 47.249683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383546, 0.539454, -0.749588,
		0.530917, 0.535335, 0.656920,
		0.755658, -0.649928, -0.081079,
		32.627563, 26.886953, 47.225361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659649, 27.729530, 47.016956>,  <32.098602, 27.341904, 47.282116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659649, 27.729530, 47.016956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789764, 27.352432, 46.987507>,  <32.867832, 27.126173, 46.969837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789764, 27.352432, 46.987507>,  <32.659649, 27.729530, 47.016956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789764, 27.352432, 46.987507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461887, 0.226340, -0.857572,
		0.825135, 0.244954, 0.509068,
		0.325288, -0.942745, -0.073620,
		32.887352, 27.069609, 46.965420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402054, 27.744740, 46.995140>,  <32.659649, 27.729530, 47.016956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402054, 27.744740, 46.995140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258232, 27.414726, 46.820763>,  <33.171940, 27.216719, 46.716137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258232, 27.414726, 46.820763>,  <33.402054, 27.744740, 46.995140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258232, 27.414726, 46.820763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383083, 0.295487, -0.875177,
		0.850864, -0.481672, 0.209813,
		-0.359552, -0.825033, -0.435940,
		33.150368, 27.167217, 46.689980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887497, 27.694031, 46.446789>,  <33.402054, 27.744740, 46.995140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887497, 27.694031, 46.446789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576736, 27.450176, 46.383831>,  <33.390282, 27.303864, 46.346058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576736, 27.450176, 46.383831>,  <33.887497, 27.694031, 46.446789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576736, 27.450176, 46.383831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070764, 0.163846, -0.983945,
		0.625636, -0.775564, -0.084152,
		-0.776899, -0.609636, -0.157390,
		33.343666, 27.267286, 46.336613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100700, 27.191938, 46.027889>,  <33.887497, 27.694031, 46.446789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100700, 27.191938, 46.027889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706772, 27.181522, 45.959251>,  <33.470413, 27.175272, 45.918068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706772, 27.181522, 45.959251>,  <34.100700, 27.191938, 46.027889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706772, 27.181522, 45.959251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167418, 0.118101, -0.978787,
		0.045750, -0.992660, -0.111950,
		-0.984824, -0.026037, -0.171592,
		33.411324, 27.173710, 45.907772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080746, 26.810654, 45.458836>,  <34.100700, 27.191938, 46.027889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080746, 26.810654, 45.458836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713089, 26.967985, 45.450134>,  <33.492496, 27.062384, 45.444912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713089, 26.967985, 45.450134>,  <34.080746, 26.810654, 45.458836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713089, 26.967985, 45.450134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115732, 0.216832, -0.969324,
		-0.376544, -0.893464, -0.244820,
		-0.919141, 0.393327, -0.021756,
		33.437347, 27.085983, 45.443607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938690, 26.605246, 44.828873>,  <34.080746, 26.810654, 45.458836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938690, 26.605246, 44.828873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653141, 26.873474, 44.909588>,  <33.481812, 27.034412, 44.958019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653141, 26.873474, 44.909588>,  <33.938690, 26.605246, 44.828873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653141, 26.873474, 44.909588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040101, 0.326832, -0.944231,
		-0.699128, -0.665967, -0.260207,
		-0.713871, 0.670573, 0.201791,
		33.438980, 27.074646, 44.970127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339039, 26.492859, 44.354290>,  <33.938690, 26.605246, 44.828873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339039, 26.492859, 44.354290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399345, 26.866982, 44.482334>,  <33.435532, 27.091455, 44.559162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399345, 26.866982, 44.482334>,  <33.339039, 26.492859, 44.354290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399345, 26.866982, 44.482334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067211, 0.332762, -0.940613,
		-0.986281, 0.120301, 0.113033,
		0.150770, 0.935306, 0.320111,
		33.444576, 27.147573, 44.578369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820133, 26.860231, 44.030167>,  <33.339039, 26.492859, 44.354290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820133, 26.860231, 44.030167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061939, 27.150850, 44.160820>,  <33.207024, 27.325222, 44.239212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061939, 27.150850, 44.160820>,  <32.820133, 26.860231, 44.030167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061939, 27.150850, 44.160820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068785, 0.456119, -0.887256,
		-0.793616, 0.513894, 0.325708,
		0.604518, 0.726545, 0.326635,
		33.243294, 27.368814, 44.258812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599609, 27.540075, 43.818588>,  <32.820133, 26.860231, 44.030167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599609, 27.540075, 43.818588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992867, 27.593933, 43.868073>,  <33.228821, 27.626247, 43.897762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992867, 27.593933, 43.868073>,  <32.599609, 27.540075, 43.818588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992867, 27.593933, 43.868073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039009, 0.506560, -0.861322,
		-0.178639, 0.851626, 0.492768,
		0.983141, 0.134643, 0.123712,
		33.287807, 27.634327, 43.905186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663479, 28.221264, 43.690510>,  <32.599609, 27.540075, 43.818588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663479, 28.221264, 43.690510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029537, 28.067186, 43.642967>,  <33.249172, 27.974739, 43.614441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029537, 28.067186, 43.642967>,  <32.663479, 28.221264, 43.690510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029537, 28.067186, 43.642967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067843, 0.437815, -0.896502,
		0.397366, 0.812369, 0.426799,
		0.915149, -0.385194, -0.118859,
		33.304081, 27.951628, 43.607311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988091, 28.758194, 43.375908>,  <32.663479, 28.221264, 43.690510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988091, 28.758194, 43.375908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251804, 28.470518, 43.288170>,  <33.410030, 28.297913, 43.235527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251804, 28.470518, 43.288170>,  <32.988091, 28.758194, 43.375908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251804, 28.470518, 43.288170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082365, 0.359048, -0.929678,
		0.747370, 0.594854, 0.295950,
		0.659283, -0.719189, -0.219346,
		33.449589, 28.254761, 43.222366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595909, 29.041262, 42.948254>,  <32.988091, 28.758194, 43.375908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595909, 29.041262, 42.948254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590229, 28.646122, 42.886353>,  <33.586823, 28.409039, 42.849213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590229, 28.646122, 42.886353>,  <33.595909, 29.041262, 42.948254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590229, 28.646122, 42.886353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122046, 0.151898, -0.980832,
		0.992423, -0.032812, 0.118406,
		-0.014197, -0.987851, -0.154751,
		33.585968, 28.349766, 42.839928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067852, 28.964882, 42.454208>,  <33.595909, 29.041262, 42.948254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067852, 28.964882, 42.454208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847042, 28.633602, 42.415520>,  <33.714558, 28.434835, 42.392307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847042, 28.633602, 42.415520>,  <34.067852, 28.964882, 42.454208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847042, 28.633602, 42.415520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018107, 0.104063, -0.994406,
		0.833631, -0.550689, -0.042449,
		-0.552025, -0.828199, -0.096722,
		33.681435, 28.385143, 42.386505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424603, 28.530857, 42.012455>,  <34.067852, 28.964882, 42.454208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424603, 28.530857, 42.012455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050301, 28.389799, 42.013477>,  <33.825718, 28.305164, 42.014091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050301, 28.389799, 42.013477>,  <34.424603, 28.530857, 42.012455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050301, 28.389799, 42.013477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009034, 0.016716, -0.999820,
		0.352540, -0.935607, -0.018828,
		-0.935753, -0.352647, 0.002559,
		33.769573, 28.284006, 42.014244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406597, 27.896290, 41.601543>,  <34.424603, 28.530857, 42.012455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406597, 27.896290, 41.601543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041782, 28.059769, 41.587921>,  <33.822895, 28.157856, 41.579746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041782, 28.059769, 41.587921>,  <34.406597, 27.896290, 41.601543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041782, 28.059769, 41.587921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005531, -0.095295, -0.995434,
		-0.410079, -0.907680, 0.089173,
		-0.912033, 0.408700, -0.034058,
		33.768173, 28.182379, 41.577705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141022, 27.620556, 40.968552>,  <34.406597, 27.896290, 41.601543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141022, 27.620556, 40.968552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859493, 27.883053, 41.077343>,  <33.690575, 28.040552, 41.142620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859493, 27.883053, 41.077343>,  <34.141022, 27.620556, 40.968552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859493, 27.883053, 41.077343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361580, -0.001385, -0.932340,
		-0.611467, -0.754547, 0.238260,
		-0.703824, 0.656245, 0.271982,
		33.648346, 28.079926, 41.158939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467690, 27.389212, 40.780891>,  <34.141022, 27.620556, 40.968552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467690, 27.389212, 40.780891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408566, 27.783796, 40.809311>,  <33.373089, 28.020546, 40.826363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408566, 27.783796, 40.809311>,  <33.467690, 27.389212, 40.780891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408566, 27.783796, 40.809311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460551, -0.005083, -0.887619,
		-0.875239, -0.163921, 0.455067,
		-0.147813, 0.986460, 0.071045,
		33.364223, 28.079735, 40.830624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932091, 27.554541, 40.291477>,  <33.467690, 27.389212, 40.780891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932091, 27.554541, 40.291477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049557, 27.923361, 40.392338>,  <33.120037, 28.144653, 40.452854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049557, 27.923361, 40.392338>,  <32.932091, 27.554541, 40.291477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049557, 27.923361, 40.392338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310247, 0.341438, -0.887224,
		-0.904162, 0.182315, 0.386332,
		0.293663, 0.922053, 0.252153,
		33.137657, 28.199976, 40.467983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389416, 28.038155, 39.972225>,  <32.932091, 27.554541, 40.291477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389416, 28.038155, 39.972225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740425, 28.222496, 40.025242>,  <32.951031, 28.333101, 40.057053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740425, 28.222496, 40.025242>,  <32.389416, 28.038155, 39.972225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740425, 28.222496, 40.025242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038827, 0.343777, -0.938248,
		-0.477963, 0.818186, 0.319566,
		0.877521, 0.460856, 0.132545,
		33.003681, 28.360752, 40.065006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207081, 28.771662, 39.930916>,  <32.389416, 28.038155, 39.972225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207081, 28.771662, 39.930916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592411, 28.705526, 39.846371>,  <32.823608, 28.665844, 39.795643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592411, 28.705526, 39.846371>,  <32.207081, 28.771662, 39.930916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592411, 28.705526, 39.846371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125607, 0.418197, -0.899630,
		0.237135, 0.893182, 0.382091,
		0.963322, -0.165340, -0.211359,
		32.881409, 28.655924, 39.782963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503441, 29.481623, 39.673393>,  <32.207081, 28.771662, 39.930916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503441, 29.481623, 39.673393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732445, 29.194164, 39.515514>,  <32.869846, 29.021688, 39.420788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732445, 29.194164, 39.515514>,  <32.503441, 29.481623, 39.673393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732445, 29.194164, 39.515514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188264, 0.353306, -0.916368,
		0.797991, 0.598935, 0.066976,
		0.572509, -0.718645, -0.394693,
		32.904198, 28.978571, 39.397106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707195, 29.715559, 39.177673>,  <32.503441, 29.481623, 39.673393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707195, 29.715559, 39.177673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857319, 29.364880, 39.057308>,  <32.947392, 29.154472, 38.985088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857319, 29.364880, 39.057308>,  <32.707195, 29.715559, 39.177673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857319, 29.364880, 39.057308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054484, 0.344946, -0.937039,
		0.925298, 0.335281, 0.177227,
		0.375306, -0.876697, -0.300911,
		32.969910, 29.101870, 38.967033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101898, 29.936357, 38.698551>,  <32.707195, 29.715559, 39.177673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101898, 29.936357, 38.698551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065163, 29.544535, 38.626961>,  <33.043121, 29.309441, 38.584007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065163, 29.544535, 38.626961>,  <33.101898, 29.936357, 38.698551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065163, 29.544535, 38.626961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097198, 0.170062, -0.980628,
		0.991019, -0.107459, 0.079592,
		-0.091842, -0.979557, -0.178980,
		33.037609, 29.250668, 38.573265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732216, 29.697947, 38.253845>,  <33.101898, 29.936357, 38.698551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732216, 29.697947, 38.253845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417755, 29.459087, 38.190125>,  <33.229080, 29.315771, 38.151894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417755, 29.459087, 38.190125>,  <33.732216, 29.697947, 38.253845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417755, 29.459087, 38.190125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037793, 0.210818, -0.976795,
		0.616875, -0.773930, -0.143167,
		-0.786153, -0.597150, -0.159297,
		33.181908, 29.279942, 38.142334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852592, 29.235298, 37.595039>,  <33.732216, 29.697947, 38.253845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852592, 29.235298, 37.595039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460041, 29.252874, 37.669842>,  <33.224510, 29.263420, 37.714722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460041, 29.252874, 37.669842>,  <33.852592, 29.235298, 37.595039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460041, 29.252874, 37.669842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148699, 0.442528, -0.884340,
		-0.121614, -0.895678, -0.427752,
		-0.981376, 0.043942, 0.187004,
		33.165627, 29.266056, 37.725945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389065, 29.002453, 36.918068>,  <33.852592, 29.235298, 37.595039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389065, 29.002453, 36.918068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188839, 29.247131, 37.163101>,  <33.068703, 29.393938, 37.310120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188839, 29.247131, 37.163101>,  <33.389065, 29.002453, 36.918068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188839, 29.247131, 37.163101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333237, 0.516939, -0.788496,
		-0.798990, -0.598831, -0.054923,
		-0.500568, 0.611698, 0.612582,
		33.038670, 29.430641, 37.346874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814392, 29.003761, 36.473389>,  <33.389065, 29.002453, 36.918068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814392, 29.003761, 36.473389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777130, 29.279295, 36.760952>,  <32.754772, 29.444614, 36.933491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777130, 29.279295, 36.760952>,  <32.814392, 29.003761, 36.473389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777130, 29.279295, 36.760952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470003, 0.606111, -0.641660,
		-0.877735, -0.397665, 0.267289,
		-0.093158, 0.688834, 0.718908,
		32.749184, 29.485945, 36.976624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159695, 29.251589, 36.393681>,  <32.814392, 29.003761, 36.473389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159695, 29.251589, 36.393681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337250, 29.547009, 36.596661>,  <32.443783, 29.724260, 36.718449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337250, 29.547009, 36.596661>,  <32.159695, 29.251589, 36.393681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337250, 29.547009, 36.596661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470502, 0.674053, -0.569457,
		-0.762621, 0.014018, 0.646693,
		0.443888, 0.738551, 0.507451,
		32.470417, 29.768574, 36.748898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650776, 29.817989, 36.553684>,  <32.159695, 29.251589, 36.393681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650776, 29.817989, 36.553684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012039, 29.989656, 36.558079>,  <32.228798, 30.092657, 36.560715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012039, 29.989656, 36.558079>,  <31.650776, 29.817989, 36.553684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012039, 29.989656, 36.558079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394914, 0.840563, -0.370805,
		-0.168372, 0.330557, 0.928646,
		0.903158, 0.429169, 0.010986,
		32.282986, 30.118406, 36.561375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524389, 30.476933, 36.686558>,  <31.650776, 29.817989, 36.553684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524389, 30.476933, 36.686558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898888, 30.475740, 36.546021>,  <32.123585, 30.475025, 36.461700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898888, 30.475740, 36.546021>,  <31.524389, 30.476933, 36.686558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898888, 30.475740, 36.546021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183650, 0.848339, -0.496582,
		0.299534, 0.529445, 0.793705,
		0.936244, -0.002980, -0.351339,
		32.179760, 30.474846, 36.440620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745018, 31.163111, 36.816132>,  <31.524389, 30.476933, 36.686558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745018, 31.163111, 36.816132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999350, 31.050537, 36.528656>,  <32.151947, 30.982992, 36.356171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999350, 31.050537, 36.528656>,  <31.745018, 31.163111, 36.816132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999350, 31.050537, 36.528656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146797, 0.870058, -0.470584,
		0.757740, 0.404713, 0.511895,
		0.635830, -0.281435, -0.718689,
		32.190098, 30.966106, 36.313049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105377, 31.822659, 36.494518>,  <31.745018, 31.163111, 36.816132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105377, 31.822659, 36.494518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208778, 31.545713, 36.225056>,  <32.270821, 31.379545, 36.063377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208778, 31.545713, 36.225056>,  <32.105377, 31.822659, 36.494518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208778, 31.545713, 36.225056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141976, 0.717013, -0.682448,
		0.955520, 0.080772, 0.283649,
		0.258503, -0.692364, -0.673653,
		32.286327, 31.338003, 36.022961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817097, 31.930294, 36.217293>,  <32.105377, 31.822659, 36.494518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817097, 31.930294, 36.217293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632153, 31.728964, 35.925297>,  <32.521187, 31.608166, 35.750099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632153, 31.728964, 35.925297>,  <32.817097, 31.930294, 36.217293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632153, 31.728964, 35.925297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152937, 0.765665, -0.624793,
		0.873404, -0.400520, -0.277034,
		-0.462358, -0.503328, -0.729990,
		32.493446, 31.577965, 35.706299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287746, 31.797907, 35.610111>,  <32.817097, 31.930294, 36.217293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287746, 31.797907, 35.610111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904667, 31.797361, 35.495010>,  <32.674820, 31.797033, 35.425949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904667, 31.797361, 35.495010>,  <33.287746, 31.797907, 35.610111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904667, 31.797361, 35.495010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175978, 0.788421, -0.589427,
		0.227677, -0.615134, -0.754833,
		-0.957703, -0.001365, -0.287755,
		32.617355, 31.796951, 35.408684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937634, 31.942730, 35.868359>,  <33.287746, 31.797907, 35.610111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937634, 31.942730, 35.868359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051601, 32.278542, 36.053406>,  <34.119984, 32.480030, 36.164433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051601, 32.278542, 36.053406>,  <33.937634, 31.942730, 35.868359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051601, 32.278542, 36.053406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641059, -0.525696, 0.559185,
		0.712646, 0.137241, -0.687968,
		0.284918, 0.839529, 0.462615,
		34.137077, 32.530399, 36.192192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638039, 31.778280, 35.911423>,  <33.937634, 31.942730, 35.868359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638039, 31.778280, 35.911423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549782, 32.062378, 36.178818>,  <34.496826, 32.232838, 36.339252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549782, 32.062378, 36.178818>,  <34.638039, 31.778280, 35.911423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549782, 32.062378, 36.178818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500080, -0.506057, 0.702728,
		0.837399, 0.489347, -0.243520,
		-0.220643, 0.710243, 0.668484,
		34.483589, 32.275452, 36.379364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240269, 32.015297, 36.156971>,  <34.638039, 31.778280, 35.911423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240269, 32.015297, 36.156971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955868, 32.089073, 36.428402>,  <34.785229, 32.133339, 36.591259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955868, 32.089073, 36.428402>,  <35.240269, 32.015297, 36.156971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955868, 32.089073, 36.428402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539444, -0.475967, 0.694590,
		0.451090, 0.859905, 0.238917,
		-0.710998, 0.184440, 0.678575,
		34.742569, 32.144405, 36.631973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606224, 32.145649, 36.681652>,  <35.240269, 32.015297, 36.156971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606224, 32.145649, 36.681652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246906, 32.067650, 36.839149>,  <35.031315, 32.020851, 36.933647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246906, 32.067650, 36.839149>,  <35.606224, 32.145649, 36.681652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246906, 32.067650, 36.839149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432909, -0.239461, 0.869050,
		-0.075177, 0.951122, 0.299524,
		-0.898298, -0.194999, 0.393747,
		34.977417, 32.009151, 36.957275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611244, 32.389019, 37.328041>,  <35.606224, 32.145649, 36.681652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611244, 32.389019, 37.328041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294121, 32.146248, 37.350250>,  <35.103848, 32.000584, 37.363575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294121, 32.146248, 37.350250>,  <35.611244, 32.389019, 37.328041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294121, 32.146248, 37.350250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345975, -0.373181, 0.860835,
		-0.501745, 0.701692, 0.505846,
		-0.792813, -0.606930, 0.055527,
		35.056278, 31.964169, 37.366909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495167, 32.437836, 37.989902>,  <35.611244, 32.389019, 37.328041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495167, 32.437836, 37.989902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311207, 32.101982, 37.874313>,  <35.200829, 31.900471, 37.804958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311207, 32.101982, 37.874313>,  <35.495167, 32.437836, 37.989902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311207, 32.101982, 37.874313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301826, -0.453871, 0.838393,
		-0.835099, 0.298359, 0.462159,
		-0.459902, -0.839633, -0.288975,
		35.173237, 31.850092, 37.787621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081287, 32.190918, 38.651054>,  <35.495167, 32.437836, 37.989902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081287, 32.190918, 38.651054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135349, 31.889387, 38.393848>,  <35.167786, 31.708467, 38.239525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135349, 31.889387, 38.393848>,  <35.081287, 32.190918, 38.651054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135349, 31.889387, 38.393848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307355, -0.585061, 0.750490,
		-0.941948, -0.299069, 0.152619,
		0.135157, -0.753831, -0.643017,
		35.175896, 31.663239, 38.200943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950596, 31.629633, 39.083618>,  <35.081287, 32.190918, 38.651054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950596, 31.629633, 39.083618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159203, 31.478960, 38.777382>,  <35.284367, 31.388556, 38.593639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159203, 31.478960, 38.777382>,  <34.950596, 31.629633, 39.083618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159203, 31.478960, 38.777382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385326, -0.696590, 0.605216,
		-0.761279, -0.610632, -0.218136,
		0.521516, -0.376685, -0.765591,
		35.315659, 31.365955, 38.547703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949280, 30.881762, 39.059219>,  <34.950596, 31.629633, 39.083618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949280, 30.881762, 39.059219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270363, 30.942566, 38.828548>,  <35.463013, 30.979048, 38.690147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270363, 30.942566, 38.828548>,  <34.949280, 30.881762, 39.059219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270363, 30.942566, 38.828548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551399, -0.557556, 0.620556,
		-0.227197, -0.816103, -0.531374,
		0.802708, 0.152010, -0.576673,
		35.511177, 30.988169, 38.655548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165031, 30.256119, 38.851273>,  <34.949280, 30.881762, 39.059219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165031, 30.256119, 38.851273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482628, 30.498734, 38.834789>,  <35.673183, 30.644302, 38.824898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482628, 30.498734, 38.834789>,  <35.165031, 30.256119, 38.851273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482628, 30.498734, 38.834789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473892, -0.575035, 0.666905,
		0.380805, -0.549043, -0.744003,
		0.793987, 0.606537, -0.041211,
		35.720825, 30.680695, 38.822426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712673, 29.905441, 38.943745>,  <35.165031, 30.256119, 38.851273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712673, 29.905441, 38.943745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905270, 30.243711, 39.035831>,  <36.020828, 30.446674, 39.091084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905270, 30.243711, 39.035831>,  <35.712673, 29.905441, 38.943745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905270, 30.243711, 39.035831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566053, -0.500590, 0.654976,
		0.669142, -0.185049, -0.719726,
		0.481490, 0.845675, 0.230218,
		36.049717, 30.497414, 39.104897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345833, 29.665174, 39.160015>,  <35.712673, 29.905441, 38.943745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345833, 29.665174, 39.160015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322086, 30.039299, 39.299538>,  <36.307838, 30.263775, 39.383251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322086, 30.039299, 39.299538>,  <36.345833, 29.665174, 39.160015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322086, 30.039299, 39.299538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676678, -0.219182, 0.702898,
		0.733882, 0.277759, -0.619893,
		-0.059367, 0.935312, 0.348807,
		36.304276, 30.319893, 39.404179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084312, 29.850927, 39.439686>,  <36.345833, 29.665174, 39.160015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084312, 29.850927, 39.439686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835670, 30.108484, 39.618130>,  <36.686485, 30.263018, 39.725197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835670, 30.108484, 39.618130>,  <37.084312, 29.850927, 39.439686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835670, 30.108484, 39.618130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381222, -0.248847, 0.890362,
		0.684311, 0.723518, -0.090782,
		-0.621602, 0.643892, 0.446110,
		36.649189, 30.301653, 39.751961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389091, 29.981491, 40.037315>,  <37.084312, 29.850927, 39.439686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389091, 29.981491, 40.037315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032887, 30.145212, 40.116764>,  <36.819164, 30.243444, 40.164433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032887, 30.145212, 40.116764>,  <37.389091, 29.981491, 40.037315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032887, 30.145212, 40.116764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164787, -0.116745, 0.979396,
		0.424059, 0.904898, 0.036515,
		-0.890516, 0.409304, 0.198622,
		36.765732, 30.268003, 40.176350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484932, 30.423300, 40.579952>,  <37.389091, 29.981491, 40.037315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484932, 30.423300, 40.579952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100414, 30.313457, 40.589005>,  <36.869705, 30.247553, 40.594437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100414, 30.313457, 40.589005>,  <37.484932, 30.423300, 40.579952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100414, 30.313457, 40.589005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048002, -0.086016, 0.995137,
		-0.271322, 0.957703, 0.095868,
		-0.961291, -0.274604, 0.022634,
		36.812027, 30.231077, 40.595795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190472, 30.822208, 41.214233>,  <37.484932, 30.423300, 40.579952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190472, 30.822208, 41.214233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907158, 30.544088, 41.165432>,  <36.737167, 30.377216, 41.136150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907158, 30.544088, 41.165432>,  <37.190472, 30.822208, 41.214233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907158, 30.544088, 41.165432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121534, -0.050139, 0.991320,
		-0.695382, 0.716968, -0.048990,
		-0.708289, -0.695301, -0.122002,
		36.694672, 30.335499, 41.128830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743111, 30.906414, 41.726509>,  <37.190472, 30.822208, 41.214233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743111, 30.906414, 41.726509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656799, 30.533995, 41.608803>,  <36.605011, 30.310543, 41.538181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656799, 30.533995, 41.608803>,  <36.743111, 30.906414, 41.726509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656799, 30.533995, 41.608803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190436, -0.255447, 0.947882,
		-0.957691, 0.260574, -0.122184,
		-0.215782, -0.931047, -0.294262,
		36.592064, 30.254681, 41.520523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246284, 30.675333, 42.232700>,  <36.743111, 30.906414, 41.726509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246284, 30.675333, 42.232700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347687, 30.321283, 42.076603>,  <36.408527, 30.108852, 41.982944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347687, 30.321283, 42.076603>,  <36.246284, 30.675333, 42.232700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347687, 30.321283, 42.076603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137237, -0.432247, 0.891251,
		-0.957550, -0.172378, -0.231047,
		0.253501, -0.885126, -0.390242,
		36.423737, 30.055746, 41.959530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597702, 30.328779, 42.194271>,  <36.246284, 30.675333, 42.232700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597702, 30.328779, 42.194271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936142, 30.119440, 42.234711>,  <36.139206, 29.993835, 42.258976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936142, 30.119440, 42.234711>,  <35.597702, 30.328779, 42.194271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936142, 30.119440, 42.234711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367545, -0.435466, 0.821754,
		-0.386036, -0.732446, -0.560802,
		0.846101, -0.523347, 0.101101,
		36.189972, 29.962435, 42.265041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347935, 29.735025, 42.598652>,  <35.597702, 30.328779, 42.194271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347935, 29.735025, 42.598652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738590, 29.651152, 42.617485>,  <35.972984, 29.600828, 42.628784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738590, 29.651152, 42.617485>,  <35.347935, 29.735025, 42.598652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738590, 29.651152, 42.617485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127647, -0.389727, 0.912041,
		-0.172888, -0.896742, -0.407386,
		0.976635, -0.209683, 0.047088,
		36.031582, 29.588247, 42.631611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422699, 28.966188, 42.690346>,  <35.347935, 29.735025, 42.598652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422699, 28.966188, 42.690346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767242, 29.126255, 42.815521>,  <35.973969, 29.222294, 42.890629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767242, 29.126255, 42.815521>,  <35.422699, 28.966188, 42.690346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767242, 29.126255, 42.815521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108924, -0.456214, 0.883179,
		0.496186, -0.794818, -0.349376,
		0.861357, 0.400165, 0.312941,
		36.025650, 29.246305, 42.909405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798286, 28.450039, 43.095356>,  <35.422699, 28.966188, 42.690346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798286, 28.450039, 43.095356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948803, 28.801048, 43.214256>,  <36.039112, 29.011654, 43.285595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948803, 28.801048, 43.214256>,  <35.798286, 28.450039, 43.095356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948803, 28.801048, 43.214256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212793, -0.230395, 0.949546,
		0.901734, -0.420558, 0.100036,
		0.376291, 0.877525, 0.297247,
		36.061691, 29.064306, 43.303429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057835, 28.294312, 43.683460>,  <35.798286, 28.450039, 43.095356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057835, 28.294312, 43.683460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033371, 28.692739, 43.709076>,  <36.018692, 28.931797, 43.724445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033371, 28.692739, 43.709076>,  <36.057835, 28.294312, 43.683460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033371, 28.692739, 43.709076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226016, -0.076318, 0.971129,
		0.972202, 0.044921, 0.229795,
		-0.061161, 0.996071, 0.064044,
		36.015022, 28.991560, 43.728291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434456, 28.433908, 44.241318>,  <36.057835, 28.294312, 43.683460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434456, 28.433908, 44.241318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183979, 28.742096, 44.193546>,  <36.033691, 28.927008, 44.164883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183979, 28.742096, 44.193546>,  <36.434456, 28.433908, 44.241318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183979, 28.742096, 44.193546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237770, -0.042835, 0.970376,
		0.742527, 0.636039, 0.210017,
		-0.626193, 0.770467, -0.119425,
		35.996120, 28.973236, 44.157719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420311, 28.776585, 44.866112>,  <36.434456, 28.433908, 44.241318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420311, 28.776585, 44.866112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088387, 28.938274, 44.712223>,  <35.889233, 29.035288, 44.619892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088387, 28.938274, 44.712223>,  <36.420311, 28.776585, 44.866112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088387, 28.938274, 44.712223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419788, 0.002061, 0.907620,
		0.367675, 0.914658, 0.167978,
		-0.829815, 0.404224, -0.384720,
		35.839443, 29.059542, 44.596806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207554, 29.393179, 45.310410>,  <36.420311, 28.776585, 44.866112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207554, 29.393179, 45.310410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884869, 29.239346, 45.130943>,  <35.691257, 29.147045, 45.023262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884869, 29.239346, 45.130943>,  <36.207554, 29.393179, 45.310410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884869, 29.239346, 45.130943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494948, 0.024924, 0.868565,
		-0.322855, 0.922753, -0.210457,
		-0.806716, -0.384585, -0.448668,
		35.642853, 29.123970, 44.996342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700279, 29.757030, 45.619667>,  <36.207554, 29.393179, 45.310410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700279, 29.757030, 45.619667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537617, 29.438778, 45.440067>,  <35.440018, 29.247828, 45.332306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537617, 29.438778, 45.440067>,  <35.700279, 29.757030, 45.619667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537617, 29.438778, 45.440067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668209, -0.076112, 0.740070,
		-0.622996, 0.600982, -0.500696,
		-0.406659, -0.795630, -0.449000,
		35.415619, 29.200089, 45.305367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078011, 29.820866, 45.654926>,  <35.700279, 29.757030, 45.619667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078011, 29.820866, 45.654926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095577, 29.424334, 45.605392>,  <35.106117, 29.186415, 45.575672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095577, 29.424334, 45.605392>,  <35.078011, 29.820866, 45.654926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095577, 29.424334, 45.605392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640202, -0.123086, 0.758282,
		-0.766950, 0.045979, -0.640057,
		0.043917, -0.991330, -0.123836,
		35.108753, 29.126934, 45.568241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468048, 29.632420, 45.684216>,  <35.078011, 29.820866, 45.654926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468048, 29.632420, 45.684216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677284, 29.307779, 45.788280>,  <34.802826, 29.112995, 45.850719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677284, 29.307779, 45.788280>,  <34.468048, 29.632420, 45.684216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677284, 29.307779, 45.788280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630467, -0.163080, 0.758892,
		-0.573490, -0.560989, -0.596992,
		0.523088, -0.811601, 0.260160,
		34.834209, 29.064299, 45.866329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960361, 29.184628, 45.726295>,  <34.468048, 29.632420, 45.684216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960361, 29.184628, 45.726295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262291, 29.010397, 45.922462>,  <34.443447, 28.905859, 46.040165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262291, 29.010397, 45.922462>,  <33.960361, 29.184628, 45.726295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262291, 29.010397, 45.922462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575594, -0.081329, 0.813682,
		-0.314537, -0.896469, -0.312105,
		0.754823, -0.435579, 0.490421,
		34.488739, 28.879725, 46.069588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548569, 28.840471, 46.252819>,  <33.960361, 29.184628, 45.726295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548569, 28.840471, 46.252819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925240, 28.829353, 46.386971>,  <34.151241, 28.822683, 46.467461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925240, 28.829353, 46.386971>,  <33.548569, 28.840471, 46.252819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925240, 28.829353, 46.386971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334817, 0.023034, 0.942002,
		-0.033909, -0.999348, 0.012384,
		0.941673, -0.027797, 0.335380,
		34.207741, 28.821014, 46.487583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599091, 28.436108, 46.756088>,  <33.548569, 28.840471, 46.252819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599091, 28.436108, 46.756088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890072, 28.708052, 46.793179>,  <34.064663, 28.871218, 46.815434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890072, 28.708052, 46.793179>,  <33.599091, 28.436108, 46.756088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890072, 28.708052, 46.793179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298487, 0.191866, 0.934930,
		0.617831, -0.707797, 0.342503,
		0.727455, 0.679861, 0.092727,
		34.108307, 28.912010, 46.820995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819336, 28.241127, 47.420101>,  <33.599091, 28.436108, 46.756088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819336, 28.241127, 47.420101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992825, 28.594957, 47.351505>,  <34.096920, 28.807255, 47.310349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992825, 28.594957, 47.351505>,  <33.819336, 28.241127, 47.420101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992825, 28.594957, 47.351505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027220, 0.203098, 0.978780,
		0.900635, -0.419851, 0.112167,
		0.433723, 0.884577, -0.171489,
		34.122940, 28.860331, 47.300060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457050, 28.223463, 47.759705>,  <33.819336, 28.241127, 47.420101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457050, 28.223463, 47.759705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376766, 28.610975, 47.701496>,  <34.328594, 28.843483, 47.666573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376766, 28.610975, 47.701496>,  <34.457050, 28.223463, 47.759705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376766, 28.610975, 47.701496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082659, 0.164759, 0.982864,
		0.976157, 0.185246, -0.113148,
		-0.200713, 0.968782, -0.145518,
		34.316551, 28.901609, 47.657841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859783, 28.501751, 48.228737>,  <34.457050, 28.223463, 47.759705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859783, 28.501751, 48.228737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586384, 28.789188, 48.177425>,  <34.422344, 28.961651, 48.146637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586384, 28.789188, 48.177425>,  <34.859783, 28.501751, 48.228737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586384, 28.789188, 48.177425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032405, 0.205432, 0.978135,
		0.729235, 0.664394, -0.163698,
		-0.683495, 0.718595, -0.128279,
		34.381336, 29.004766, 48.138943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109295, 29.159132, 48.583912>,  <34.859783, 28.501751, 48.228737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109295, 29.159132, 48.583912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711609, 29.166101, 48.541500>,  <34.473000, 29.170282, 48.516052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711609, 29.166101, 48.541500>,  <35.109295, 29.159132, 48.583912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711609, 29.166101, 48.541500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100994, 0.185364, 0.977466,
		0.036685, 0.982515, -0.182531,
		-0.994211, 0.017424, -0.106028,
		34.413345, 29.171329, 48.509693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053299, 29.753723, 49.018070>,  <35.109295, 29.159132, 48.583912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053299, 29.753723, 49.018070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688366, 29.607260, 48.944771>,  <34.469406, 29.519381, 48.900791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688366, 29.607260, 48.944771>,  <35.053299, 29.753723, 49.018070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688366, 29.607260, 48.944771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287226, 0.253362, 0.923747,
		-0.291812, 0.895396, -0.336320,
		-0.912331, -0.366160, -0.183247,
		34.414665, 29.497412, 48.889797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597900, 30.293093, 49.219692>,  <35.053299, 29.753723, 49.018070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597900, 30.293093, 49.219692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410908, 29.940987, 49.252174>,  <34.298714, 29.729723, 49.271664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410908, 29.940987, 49.252174>,  <34.597900, 30.293093, 49.219692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410908, 29.940987, 49.252174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212623, 0.201127, 0.956211,
		-0.858054, 0.429741, -0.281187,
		-0.467478, -0.880267, 0.081205,
		34.270664, 29.676907, 49.276535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715611, 30.609592, 49.839153>,  <34.597900, 30.293093, 49.219692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715611, 30.609592, 49.839153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838940, 30.988934, 49.868980>,  <34.912937, 31.216539, 49.886879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838940, 30.988934, 49.868980>,  <34.715611, 30.609592, 49.839153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838940, 30.988934, 49.868980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096966, 0.109313, -0.989267,
		-0.946328, 0.297781, 0.125661,
		0.308321, 0.948355, 0.074571,
		34.931435, 31.273439, 49.891354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163822, 31.010954, 49.638351>,  <34.715611, 30.609592, 49.839153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163822, 31.010954, 49.638351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527203, 31.167339, 49.579208>,  <34.745232, 31.261171, 49.543720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527203, 31.167339, 49.579208>,  <34.163822, 31.010954, 49.638351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527203, 31.167339, 49.579208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227383, 0.165418, -0.959653,
		-0.350730, 0.905420, 0.239173,
		0.908452, 0.390963, -0.147859,
		34.799740, 31.284628, 49.534851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035713, 31.520878, 49.257374>,  <34.163822, 31.010954, 49.638351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035713, 31.520878, 49.257374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427383, 31.512077, 49.176643>,  <34.662384, 31.506796, 49.128204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427383, 31.512077, 49.176643>,  <34.035713, 31.520878, 49.257374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427383, 31.512077, 49.176643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185087, 0.311761, -0.931959,
		0.083426, 0.949906, 0.301196,
		0.979175, -0.022002, -0.201824,
		34.721134, 31.505476, 49.116096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197258, 32.162266, 49.063374>,  <34.035713, 31.520878, 49.257374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197258, 32.162266, 49.063374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465668, 31.907427, 48.911674>,  <34.626713, 31.754524, 48.820656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465668, 31.907427, 48.911674>,  <34.197258, 32.162266, 49.063374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465668, 31.907427, 48.911674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200104, 0.336913, -0.920026,
		0.713921, 0.693251, 0.098591,
		0.671026, -0.637097, -0.379252,
		34.666977, 31.716297, 48.797897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496635, 32.541718, 48.499226>,  <34.197258, 32.162266, 49.063374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496635, 32.541718, 48.499226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604214, 32.163345, 48.426689>,  <34.668762, 31.936323, 48.383167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604214, 32.163345, 48.426689>,  <34.496635, 32.541718, 48.499226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604214, 32.163345, 48.426689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033187, 0.197271, -0.979787,
		0.962583, 0.257493, 0.084448,
		0.268947, -0.945929, -0.181344,
		34.684898, 31.879566, 48.372288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935612, 32.619995, 47.899330>,  <34.496635, 32.541718, 48.499226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935612, 32.619995, 47.899330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851227, 32.229557, 47.920219>,  <34.800598, 31.995293, 47.932755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851227, 32.229557, 47.920219>,  <34.935612, 32.619995, 47.899330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851227, 32.229557, 47.920219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079819, -0.070449, -0.994317,
		0.974231, -0.205592, 0.092773,
		-0.210959, -0.976099, 0.052223,
		34.787937, 31.936728, 47.935886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485004, 32.180824, 47.500050>,  <34.935612, 32.619995, 47.899330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485004, 32.180824, 47.500050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145084, 31.971052, 47.521240>,  <34.941132, 31.845188, 47.533955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145084, 31.971052, 47.521240>,  <35.485004, 32.180824, 47.500050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145084, 31.971052, 47.521240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000375, -0.099910, -0.994997,
		0.527099, -0.845572, 0.084707,
		-0.849804, -0.524430, 0.052980,
		34.890144, 31.813723, 47.537136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582878, 31.548744, 47.035183>,  <35.485004, 32.180824, 47.500050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582878, 31.548744, 47.035183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185055, 31.586512, 47.052834>,  <34.946362, 31.609171, 47.063423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185055, 31.586512, 47.052834>,  <35.582878, 31.548744, 47.035183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185055, 31.586512, 47.052834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060555, -0.178961, -0.981991,
		-0.084818, -0.979316, 0.183703,
		-0.994555, 0.094415, 0.044123,
		34.886688, 31.614836, 47.066071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280685, 30.940083, 46.665413>,  <35.582878, 31.548744, 47.035183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280685, 30.940083, 46.665413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972973, 31.194225, 46.692341>,  <34.788345, 31.346710, 46.708496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972973, 31.194225, 46.692341>,  <35.280685, 30.940083, 46.665413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972973, 31.194225, 46.692341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175331, -0.108613, -0.978500,
		-0.614385, -0.764542, 0.194952,
		-0.769279, 0.635357, 0.067318,
		34.742188, 31.384832, 46.712536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848316, 30.706995, 46.138554>,  <35.280685, 30.940083, 46.665413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848316, 30.706995, 46.138554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717785, 31.077187, 46.215492>,  <34.639465, 31.299301, 46.261658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717785, 31.077187, 46.215492>,  <34.848316, 30.706995, 46.138554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717785, 31.077187, 46.215492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049290, 0.186553, -0.981208,
		-0.943969, -0.329681, -0.015262,
		-0.326333, 0.925477, 0.192350,
		34.619884, 31.354830, 46.273197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376003, 30.769575, 45.697884>,  <34.848316, 30.706995, 46.138554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376003, 30.769575, 45.697884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439304, 31.147099, 45.813942>,  <34.477287, 31.373611, 45.883575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439304, 31.147099, 45.813942>,  <34.376003, 30.769575, 45.697884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439304, 31.147099, 45.813942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158787, 0.265698, -0.950890,
		-0.974547, 0.196556, -0.107816,
		0.158257, 0.943806, 0.290146,
		34.486782, 31.430241, 45.900986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878124, 31.181646, 45.361698>,  <34.376003, 30.769575, 45.697884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878124, 31.181646, 45.361698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171307, 31.441944, 45.441002>,  <34.347218, 31.598124, 45.488583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171307, 31.441944, 45.441002>,  <33.878124, 31.181646, 45.361698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171307, 31.441944, 45.441002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087226, 0.199126, -0.976084,
		-0.674659, 0.732721, 0.089189,
		0.732957, 0.650745, 0.198255,
		34.391193, 31.637167, 45.500477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842133, 31.772274, 44.863087>,  <33.878124, 31.181646, 45.361698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842133, 31.772274, 44.863087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217148, 31.750284, 45.000488>,  <34.442158, 31.737091, 45.082928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217148, 31.750284, 45.000488>,  <33.842133, 31.772274, 44.863087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217148, 31.750284, 45.000488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340450, 0.347871, -0.873544,
		-0.071471, 0.935929, 0.344860,
		0.937542, -0.054975, 0.343499,
		34.498409, 31.733791, 45.103539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058521, 32.513569, 44.747250>,  <33.842133, 31.772274, 44.863087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058521, 32.513569, 44.747250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364826, 32.259773, 44.789268>,  <34.548607, 32.107494, 44.814480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364826, 32.259773, 44.789268>,  <34.058521, 32.513569, 44.747250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364826, 32.259773, 44.789268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380000, 0.314604, -0.869842,
		0.518857, 0.706008, 0.482017,
		0.765760, -0.634490, 0.105048,
		34.594555, 32.069427, 44.820782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739059, 32.861607, 44.678825>,  <34.058521, 32.513569, 44.747250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739059, 32.861607, 44.678825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789604, 32.475456, 44.587532>,  <34.819931, 32.243767, 44.532757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789604, 32.475456, 44.587532>,  <34.739059, 32.861607, 44.678825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789604, 32.475456, 44.587532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588853, 0.258151, -0.765905,
		0.798302, -0.037616, 0.601082,
		0.126360, -0.965372, -0.228233,
		34.827511, 32.185844, 44.519062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094425, 32.900558, 44.090981>,  <34.739059, 32.861607, 44.678825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094425, 32.900558, 44.090981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037746, 32.504601, 44.092960>,  <35.003738, 32.267025, 44.094147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037746, 32.504601, 44.092960>,  <35.094425, 32.900558, 44.090981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037746, 32.504601, 44.092960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535792, -0.080894, -0.840466,
		0.832376, -0.116437, 0.541842,
		-0.141693, -0.989898, 0.004948,
		34.995239, 32.207630, 44.094444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728340, 32.695255, 44.084602>,  <35.094425, 32.900558, 44.090981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728340, 32.695255, 44.084602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518711, 32.385338, 43.943153>,  <35.392933, 32.199387, 43.858284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518711, 32.385338, 43.943153>,  <35.728340, 32.695255, 44.084602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518711, 32.385338, 43.943153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470639, 0.082592, -0.878452,
		0.709825, -0.626797, 0.321364,
		-0.524069, -0.774793, -0.353621,
		35.361492, 32.152901, 43.837067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185894, 32.253864, 43.738499>,  <35.728340, 32.695255, 44.084602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185894, 32.253864, 43.738499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822296, 32.180164, 43.588947>,  <35.604137, 32.135944, 43.499214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822296, 32.180164, 43.588947>,  <36.185894, 32.253864, 43.738499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822296, 32.180164, 43.588947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364962, 0.081458, -0.927452,
		0.201341, -0.979498, -0.006799,
		-0.908991, -0.184252, -0.373880,
		35.549599, 32.124889, 43.476784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261501, 31.720020, 43.301949>,  <36.185894, 32.253864, 43.738499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261501, 31.720020, 43.301949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911217, 31.870125, 43.180416>,  <35.701046, 31.960188, 43.107498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911217, 31.870125, 43.180416>,  <36.261501, 31.720020, 43.301949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911217, 31.870125, 43.180416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351479, 0.064004, -0.934005,
		-0.331049, -0.924707, -0.187945,
		-0.875711, 0.375261, -0.303827,
		35.648502, 31.982702, 43.089268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108604, 31.446283, 42.694477>,  <36.261501, 31.720020, 43.301949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108604, 31.446283, 42.694477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882095, 31.775770, 42.682953>,  <35.746189, 31.973461, 42.676037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882095, 31.775770, 42.682953>,  <36.108604, 31.446283, 42.694477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882095, 31.775770, 42.682953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343533, 0.204100, -0.916694,
		-0.749214, -0.528996, -0.398549,
		-0.566271, 0.823715, -0.028812,
		35.712215, 32.022884, 42.674309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757912, 31.441938, 42.044456>,  <36.108604, 31.446283, 42.694477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757912, 31.441938, 42.044456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742630, 31.827135, 42.151180>,  <35.733463, 32.058254, 42.215214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742630, 31.827135, 42.151180>,  <35.757912, 31.441938, 42.044456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742630, 31.827135, 42.151180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179677, 0.269272, -0.946155,
		-0.982984, 0.011796, -0.183314,
		-0.038200, 0.962992, 0.266810,
		35.731171, 32.116032, 42.231224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424850, 31.771910, 41.511078>,  <35.757912, 31.441938, 42.044456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424850, 31.771910, 41.511078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581665, 32.078964, 41.713875>,  <35.675755, 32.263195, 41.835552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581665, 32.078964, 41.713875>,  <35.424850, 31.771910, 41.511078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581665, 32.078964, 41.713875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176230, 0.478239, -0.860366,
		-0.902911, 0.426644, 0.052208,
		0.392038, 0.767634, 0.506995,
		35.699276, 32.309254, 41.865974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048122, 32.465122, 41.274921>,  <35.424850, 31.771910, 41.511078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048122, 32.465122, 41.274921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416267, 32.551006, 41.405666>,  <35.637154, 32.602535, 41.484116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416267, 32.551006, 41.405666>,  <35.048122, 32.465122, 41.274921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416267, 32.551006, 41.405666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163076, 0.548966, -0.819782,
		-0.355454, 0.807797, 0.470231,
		0.920358, 0.214712, 0.326864,
		35.692375, 32.615421, 41.503727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238556, 33.145451, 40.988499>,  <35.048122, 32.465122, 41.274921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238556, 33.145451, 40.988499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592678, 33.003933, 41.109211>,  <35.805149, 32.919022, 41.181637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592678, 33.003933, 41.109211>,  <35.238556, 33.145451, 40.988499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592678, 33.003933, 41.109211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415385, 0.309953, -0.855210,
		0.209033, 0.882473, 0.421363,
		0.885302, -0.353795, 0.301776,
		35.858269, 32.897793, 41.199745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784515, 33.653484, 40.866131>,  <35.238556, 33.145451, 40.988499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784515, 33.653484, 40.866131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970013, 33.299683, 40.886497>,  <36.081310, 33.087402, 40.898720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970013, 33.299683, 40.886497>,  <35.784515, 33.653484, 40.866131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970013, 33.299683, 40.886497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516868, 0.223418, -0.826397,
		0.719575, 0.409556, 0.560781,
		0.463745, -0.884504, 0.050921,
		36.109135, 33.034332, 40.901775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496544, 33.858509, 40.653568>,  <35.784515, 33.653484, 40.866131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496544, 33.858509, 40.653568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500355, 33.460316, 40.615788>,  <36.502640, 33.221401, 40.593121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500355, 33.460316, 40.615788>,  <36.496544, 33.858509, 40.653568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500355, 33.460316, 40.615788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417129, 0.089798, -0.904400,
		0.908797, -0.030783, 0.416101,
		0.009524, -0.995484, -0.094449,
		36.503212, 33.161671, 40.587452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158207, 33.639584, 40.428631>,  <36.496544, 33.858509, 40.653568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158207, 33.639584, 40.428631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926357, 33.338215, 40.304443>,  <36.787247, 33.157394, 40.229931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926357, 33.338215, 40.304443>,  <37.158207, 33.639584, 40.428631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926357, 33.338215, 40.304443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483690, -0.011482, -0.875164,
		0.655805, -0.657434, 0.371079,
		-0.579624, -0.753424, -0.310464,
		36.752472, 33.112186, 40.211304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642967, 33.239990, 39.875851>,  <37.158207, 33.639584, 40.428631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642967, 33.239990, 39.875851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267887, 33.122719, 39.801258>,  <37.042839, 33.052357, 39.756504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267887, 33.122719, 39.801258>,  <37.642967, 33.239990, 39.875851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267887, 33.122719, 39.801258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244036, -0.173670, -0.954089,
		0.247331, -0.940152, 0.234395,
		-0.937696, -0.293176, -0.186478,
		36.986580, 33.034767, 39.745316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733528, 32.647602, 39.466595>,  <37.642967, 33.239990, 39.875851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733528, 32.647602, 39.466595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361618, 32.764912, 39.377598>,  <37.138470, 32.835297, 39.324200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361618, 32.764912, 39.377598>,  <37.733528, 32.647602, 39.466595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361618, 32.764912, 39.377598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230415, -0.007732, -0.973062,
		-0.287093, -0.955997, -0.060385,
		-0.929778, 0.293273, -0.222496,
		37.082684, 32.852894, 39.310848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482899, 32.283920, 38.827541>,  <37.733528, 32.647602, 39.466595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482899, 32.283920, 38.827541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227772, 32.591740, 38.840118>,  <37.074696, 32.776432, 38.847664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227772, 32.591740, 38.840118>,  <37.482899, 32.283920, 38.827541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227772, 32.591740, 38.840118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170037, 0.180512, -0.968764,
		-0.751187, -0.612544, -0.245985,
		-0.637814, 0.769549, 0.031443,
		37.036427, 32.822605, 38.849552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037838, 32.215900, 38.274467>,  <37.482899, 32.283920, 38.827541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037838, 32.215900, 38.274467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007240, 32.605026, 38.361897>,  <36.988880, 32.838501, 38.414352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007240, 32.605026, 38.361897>,  <37.037838, 32.215900, 38.274467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007240, 32.605026, 38.361897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301343, 0.231520, -0.924982,
		-0.950442, -0.004892, -0.310862,
		-0.076495, 0.972818, 0.218572,
		36.984291, 32.896873, 38.427467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695301, 32.426674, 37.666985>,  <37.037838, 32.215900, 38.274467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695301, 32.426674, 37.666985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879417, 32.734802, 37.843502>,  <36.989887, 32.919678, 37.949413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879417, 32.734802, 37.843502>,  <36.695301, 32.426674, 37.666985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879417, 32.734802, 37.843502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496583, 0.188637, -0.847243,
		-0.735894, 0.609114, -0.295701,
		0.460288, 0.770321, 0.441293,
		37.017506, 32.965900, 37.975891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611969, 32.977409, 37.186321>,  <36.695301, 32.426674, 37.666985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611969, 32.977409, 37.186321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926979, 33.074986, 37.412701>,  <37.115986, 33.133530, 37.548527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926979, 33.074986, 37.412701>,  <36.611969, 32.977409, 37.186321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926979, 33.074986, 37.412701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460725, 0.376872, -0.803555,
		-0.409304, 0.893568, 0.184410,
		0.787530, 0.243936, 0.565944,
		37.163239, 33.148167, 37.582485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777920, 33.605930, 36.901402>,  <36.611969, 32.977409, 37.186321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777920, 33.605930, 36.901402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113403, 33.516548, 37.100052>,  <37.314693, 33.462917, 37.219242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113403, 33.516548, 37.100052>,  <36.777920, 33.605930, 36.901402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113403, 33.516548, 37.100052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501508, 0.672395, -0.544404,
		-0.212279, 0.705657, 0.676007,
		0.838706, -0.223457, 0.496628,
		37.365017, 33.449512, 37.249039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922054, 34.206799, 37.249584>,  <36.777920, 33.605930, 36.901402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922054, 34.206799, 37.249584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238430, 33.974167, 37.173489>,  <37.428253, 33.834587, 37.127831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238430, 33.974167, 37.173489>,  <36.922054, 34.206799, 37.249584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238430, 33.974167, 37.173489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412013, 0.736027, -0.537131,
		0.452401, 0.346457, 0.821767,
		0.790936, -0.581577, -0.190234,
		37.475712, 33.799694, 37.116417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465778, 34.648354, 37.417850>,  <36.922054, 34.206799, 37.249584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465778, 34.648354, 37.417850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616325, 34.356384, 37.189617>,  <37.706654, 34.181202, 37.052677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616325, 34.356384, 37.189617>,  <37.465778, 34.648354, 37.417850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616325, 34.356384, 37.189617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615628, 0.657274, -0.434734,
		0.692349, -0.187644, 0.696738,
		0.376372, -0.729919, -0.570581,
		37.729237, 34.137409, 37.018444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102688, 34.831932, 37.369278>,  <37.465778, 34.648354, 37.417850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102688, 34.831932, 37.369278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101097, 34.568996, 37.067844>,  <38.100143, 34.411236, 36.886986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101097, 34.568996, 37.067844>,  <38.102688, 34.831932, 37.369278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101097, 34.568996, 37.067844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742808, 0.502585, -0.442317,
		0.669492, -0.561526, 0.486280,
		-0.003976, -0.657341, -0.753583,
		38.099903, 34.371796, 36.841770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703823, 34.859280, 37.157047>,  <38.102688, 34.831932, 37.369278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703823, 34.859280, 37.157047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529198, 34.661846, 36.856171>,  <38.424423, 34.543388, 36.675644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529198, 34.661846, 36.856171>,  <38.703823, 34.859280, 37.157047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529198, 34.661846, 36.856171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657218, 0.395997, -0.641289,
		0.614393, -0.774316, 0.151512,
		-0.436562, -0.493580, -0.752192,
		38.398228, 34.513771, 36.630512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276611, 34.444565, 36.751740>,  <38.703823, 34.859280, 37.157047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276611, 34.444565, 36.751740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950138, 34.528831, 36.536533>,  <38.754253, 34.579391, 36.407410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950138, 34.528831, 36.536533>,  <39.276611, 34.444565, 36.751740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950138, 34.528831, 36.536533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563179, 0.498154, -0.659296,
		0.129125, -0.841108, -0.525229,
		-0.816184, 0.210666, -0.538018,
		38.705284, 34.592030, 36.375130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337002, 34.108994, 36.117966>,  <39.276611, 34.444565, 36.751740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337002, 34.108994, 36.117966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111073, 34.437160, 36.082436>,  <38.975517, 34.634060, 36.061119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111073, 34.437160, 36.082436>,  <39.337002, 34.108994, 36.117966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111073, 34.437160, 36.082436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645692, 0.372354, -0.666659,
		-0.513868, -0.433893, -0.740052,
		-0.564820, 0.820420, -0.088821,
		38.941628, 34.683285, 36.055790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102608, 34.196144, 35.413670>,  <39.337002, 34.108994, 36.117966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102608, 34.196144, 35.413670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096455, 34.558262, 35.583469>,  <39.092762, 34.775532, 35.685349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096455, 34.558262, 35.583469>,  <39.102608, 34.196144, 35.413670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096455, 34.558262, 35.583469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614339, 0.343523, -0.710338,
		-0.788892, 0.249859, -0.561444,
		-0.015385, 0.905297, 0.424501,
		39.091839, 34.829849, 35.710819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879021, 34.677383, 34.943016>,  <39.102608, 34.196144, 35.413670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879021, 34.677383, 34.943016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124165, 34.842781, 35.212360>,  <39.271252, 34.942020, 35.373966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124165, 34.842781, 35.212360>,  <38.879021, 34.677383, 34.943016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124165, 34.842781, 35.212360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627684, 0.262906, -0.732730,
		-0.480013, 0.871723, -0.098420,
		0.612862, 0.413497, 0.673365,
		39.308022, 34.966831, 35.414371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012276, 35.327717, 34.718430>,  <38.879021, 34.677383, 34.943016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012276, 35.327717, 34.718430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326408, 35.231842, 34.946751>,  <39.514889, 35.174316, 35.083744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326408, 35.231842, 34.946751>,  <39.012276, 35.327717, 34.718430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326408, 35.231842, 34.946751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618864, 0.328313, -0.713595,
		-0.016362, 0.913653, 0.406166,
		0.785328, -0.239685, 0.570798,
		39.562008, 35.159935, 35.117989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483608, 35.859097, 34.700031>,  <39.012276, 35.327717, 34.718430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483608, 35.859097, 34.700031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692154, 35.523365, 34.761631>,  <39.817280, 35.321926, 34.798592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692154, 35.523365, 34.761631>,  <39.483608, 35.859097, 34.700031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692154, 35.523365, 34.761631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616685, 0.245855, -0.747834,
		0.589814, 0.484861, 0.645778,
		0.521363, -0.839324, 0.153998,
		39.848564, 35.271568, 34.807831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179501, 35.995094, 34.606438>,  <39.483608, 35.859097, 34.700031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179501, 35.995094, 34.606438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137947, 35.602802, 34.540253>,  <40.113014, 35.367428, 34.500542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137947, 35.602802, 34.540253>,  <40.179501, 35.995094, 34.606438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137947, 35.602802, 34.540253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641666, 0.061022, -0.764553,
		0.759916, -0.185602, 0.622960,
		-0.103888, -0.980728, -0.165466,
		40.106781, 35.308582, 34.490612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826385, 35.838558, 34.274963>,  <40.179501, 35.995094, 34.606438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826385, 35.838558, 34.274963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571220, 35.531952, 34.245239>,  <40.418121, 35.347988, 34.227406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571220, 35.531952, 34.245239>,  <40.826385, 35.838558, 34.274963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571220, 35.531952, 34.245239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290832, -0.150431, -0.944874,
		0.713085, -0.624355, 0.318890,
		-0.637908, -0.766519, -0.074312,
		40.379848, 35.301998, 34.222946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217724, 35.170071, 34.141815>,  <40.826385, 35.838558, 34.274963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217724, 35.170071, 34.141815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856834, 35.201740, 33.972240>,  <40.640301, 35.220741, 33.870495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856834, 35.201740, 33.972240>,  <41.217724, 35.170071, 34.141815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856834, 35.201740, 33.972240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362957, -0.391516, -0.845563,
		-0.232922, -0.916759, 0.324500,
		-0.902225, 0.079171, -0.423936,
		40.586166, 35.225491, 33.845058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458256, 35.392738, 33.349831>,  <41.217724, 35.170071, 34.141815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458256, 35.392738, 33.349831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811024, 35.491402, 33.510517>,  <42.022686, 35.550598, 33.606930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811024, 35.491402, 33.510517>,  <41.458256, 35.392738, 33.349831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811024, 35.491402, 33.510517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253552, 0.470203, -0.845352,
		-0.397400, 0.847390, 0.352142,
		0.881921, 0.246657, 0.401716,
		42.075600, 35.565399, 33.631031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604301, 36.122684, 33.362488>,  <41.458256, 35.392738, 33.349831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604301, 36.122684, 33.362488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972252, 35.975628, 33.417149>,  <42.193020, 35.887394, 33.449944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972252, 35.975628, 33.417149>,  <41.604301, 36.122684, 33.362488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972252, 35.975628, 33.417149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328025, 0.530114, -0.781907,
		0.215020, 0.764081, 0.608233,
		0.919873, -0.367641, 0.136653,
		42.248215, 35.865337, 33.458145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030640, 36.710552, 33.227554>,  <41.604301, 36.122684, 33.362488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030640, 36.710552, 33.227554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293194, 36.409542, 33.206165>,  <42.450726, 36.228935, 33.193333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293194, 36.409542, 33.206165>,  <42.030640, 36.710552, 33.227554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293194, 36.409542, 33.206165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431013, 0.432235, -0.792086,
		0.619177, 0.496870, 0.608063,
		0.656390, -0.752525, -0.053472,
		42.490112, 36.183784, 33.190125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759674, 37.016232, 33.185486>,  <42.030640, 36.710552, 33.227554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759674, 37.016232, 33.185486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.771259, 36.644226, 33.038933>,  <42.778210, 36.421024, 32.951000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.771259, 36.644226, 33.038933>,  <42.759674, 37.016232, 33.185486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771259, 36.644226, 33.038933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575862, 0.315123, -0.754374,
		0.817034, -0.189139, 0.544685,
		0.028961, -0.930013, -0.366385,
		42.779949, 36.365223, 32.929016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472088, 36.877663, 32.940830>,  <42.759674, 37.016232, 33.185486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472088, 36.877663, 32.940830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193687, 36.664017, 32.748871>,  <43.026649, 36.535828, 32.633694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193687, 36.664017, 32.748871>,  <43.472088, 36.877663, 32.940830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193687, 36.664017, 32.748871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430638, 0.224315, -0.874205,
		0.574576, -0.815109, 0.073888,
		-0.695998, -0.534116, -0.479903,
		42.984886, 36.503780, 32.604900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734653, 36.750443, 32.255402>,  <43.472088, 36.877663, 32.940830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734653, 36.750443, 32.255402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361977, 36.624722, 32.182556>,  <43.138371, 36.549290, 32.138851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361977, 36.624722, 32.182556>,  <43.734653, 36.750443, 32.255402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361977, 36.624722, 32.182556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071546, 0.332738, -0.940301,
		0.356140, -0.889098, -0.287521,
		-0.931690, -0.314308, -0.182113,
		43.082470, 36.530430, 32.127922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797901, 36.393135, 31.670168>,  <43.734653, 36.750443, 32.255402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797901, 36.393135, 31.670168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406826, 36.476799, 31.677971>,  <43.172180, 36.527000, 31.682652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406826, 36.476799, 31.677971>,  <43.797901, 36.393135, 31.670168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406826, 36.476799, 31.677971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028651, 0.224752, -0.973995,
		-0.208109, -0.951702, -0.225729,
		-0.977686, 0.209164, 0.019505,
		43.113522, 36.539547, 31.683823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510792, 36.185101, 31.073511>,  <43.797901, 36.393135, 31.670168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510792, 36.185101, 31.073511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218445, 36.430878, 31.192362>,  <43.043037, 36.578346, 31.263672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218445, 36.430878, 31.192362>,  <43.510792, 36.185101, 31.073511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218445, 36.430878, 31.192362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128106, 0.304105, -0.943986,
		-0.670388, -0.727994, -0.143547,
		-0.730869, 0.614447, 0.297129,
		42.999184, 36.615211, 31.281500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078381, 36.164272, 30.509949>,  <43.510792, 36.185101, 31.073511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078381, 36.164272, 30.509949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984287, 36.497372, 30.710423>,  <42.927830, 36.697231, 30.830708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984287, 36.497372, 30.710423>,  <43.078381, 36.164272, 30.509949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984287, 36.497372, 30.710423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343317, 0.411223, -0.844410,
		-0.909284, -0.370701, 0.189164,
		-0.235235, 0.832752, 0.501187,
		42.913715, 36.747196, 30.860779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383789, 36.430374, 30.254070>,  <43.078381, 36.164272, 30.509949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383789, 36.430374, 30.254070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551056, 36.762505, 30.401421>,  <42.651417, 36.961784, 30.489830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551056, 36.762505, 30.401421>,  <42.383789, 36.430374, 30.254070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551056, 36.762505, 30.401421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400556, 0.532527, -0.745634,
		-0.815288, 0.164242, 0.555275,
		0.418163, 0.830325, 0.368375,
		42.676506, 37.011600, 30.511932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003929, 36.880306, 29.983212>,  <42.383789, 36.430374, 30.254070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003929, 36.880306, 29.983212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329098, 37.084991, 30.094423>,  <42.524200, 37.207802, 30.161150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329098, 37.084991, 30.094423>,  <42.003929, 36.880306, 29.983212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329098, 37.084991, 30.094423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229940, 0.720657, -0.654050,
		-0.535052, 0.467763, 0.703504,
		0.812925, 0.511714, 0.278031,
		42.572975, 37.238506, 30.177834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794205, 37.538750, 30.312975>,  <42.003929, 36.880306, 29.983212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794205, 37.538750, 30.312975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170353, 37.571613, 30.180946>,  <42.396042, 37.591331, 30.101728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170353, 37.571613, 30.180946>,  <41.794205, 37.538750, 30.312975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170353, 37.571613, 30.180946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286717, 0.713565, -0.639233,
		0.183009, 0.695755, 0.694574,
		0.940373, 0.082161, -0.330073,
		42.452465, 37.596260, 30.081924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875015, 38.202137, 30.192053>,  <41.794205, 37.538750, 30.312975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875015, 38.202137, 30.192053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184757, 38.079674, 29.970551>,  <42.370602, 38.006195, 29.837648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184757, 38.079674, 29.970551>,  <41.875015, 38.202137, 30.192053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184757, 38.079674, 29.970551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110229, 0.796502, -0.594503,
		0.623079, 0.521396, 0.583026,
		0.774353, -0.306156, -0.553757,
		42.417065, 37.987827, 29.804424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176613, 38.769821, 30.051447>,  <41.875015, 38.202137, 30.192053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176613, 38.769821, 30.051447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323353, 38.548840, 29.752056>,  <42.411396, 38.416252, 29.572422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323353, 38.548840, 29.752056>,  <42.176613, 38.769821, 30.051447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323353, 38.548840, 29.752056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124639, 0.826505, -0.548958,
		0.921892, 0.108097, 0.372062,
		0.366852, -0.552453, -0.748475,
		42.433407, 38.383102, 29.527514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796940, 39.075768, 29.878283>,  <42.176613, 38.769821, 30.051447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796940, 39.075768, 29.878283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716122, 38.848522, 29.559177>,  <42.667633, 38.712173, 29.367714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716122, 38.848522, 29.559177>,  <42.796940, 39.075768, 29.878283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716122, 38.848522, 29.559177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157034, 0.785232, -0.598959,
		0.966706, -0.246291, -0.069436,
		-0.202041, -0.568113, -0.797764,
		42.655510, 38.678089, 29.319849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397335, 39.268967, 29.334526>,  <42.796940, 39.075768, 29.878283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397335, 39.268967, 29.334526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082134, 39.097542, 29.157715>,  <42.893013, 38.994686, 29.051628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082134, 39.097542, 29.157715>,  <43.397335, 39.268967, 29.334526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082134, 39.097542, 29.157715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009467, 0.709439, -0.704703,
		0.615601, -0.559491, -0.554982,
		-0.788001, -0.428562, -0.442028,
		42.845734, 38.968971, 29.025106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587471, 39.217972, 28.598053>,  <43.397335, 39.268967, 29.334526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587471, 39.217972, 28.598053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188839, 39.219387, 28.631094>,  <42.949661, 39.220238, 28.650919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188839, 39.219387, 28.631094>,  <43.587471, 39.217972, 28.598053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188839, 39.219387, 28.631094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045354, 0.811916, -0.582010,
		-0.069127, -0.583764, -0.808975,
		-0.996576, 0.003543, 0.082601,
		42.889866, 39.220451, 28.655874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366619, 39.452469, 27.971327>,  <43.587471, 39.217972, 28.598053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366619, 39.452469, 27.971327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022202, 39.456360, 28.174704>,  <42.815552, 39.458694, 28.296730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022202, 39.456360, 28.174704>,  <43.366619, 39.452469, 27.971327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022202, 39.456360, 28.174704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315318, 0.774207, -0.548797,
		-0.398977, -0.632858, -0.663557,
		-0.861041, 0.009726, 0.508442,
		42.763889, 39.459278, 28.327236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858585, 39.630516, 27.459976>,  <43.366619, 39.452469, 27.971327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858585, 39.630516, 27.459976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700546, 39.743523, 27.809624>,  <42.605724, 39.811325, 28.019413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700546, 39.743523, 27.809624>,  <42.858585, 39.630516, 27.459976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700546, 39.743523, 27.809624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340557, 0.838689, -0.424996,
		-0.853182, -0.465602, -0.235149,
		-0.395096, 0.282518, 0.874118,
		42.582016, 39.828278, 28.071859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197201, 39.941406, 27.333603>,  <42.858585, 39.630516, 27.459976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197201, 39.941406, 27.333603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276512, 40.090694, 27.696127>,  <42.324100, 40.180267, 27.913641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276512, 40.090694, 27.696127>,  <42.197201, 39.941406, 27.333603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276512, 40.090694, 27.696127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393039, 0.877343, -0.275301,
		-0.897890, -0.301629, 0.320645,
		0.198277, 0.373216, 0.906309,
		42.335995, 40.202660, 27.968019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494118, 40.213203, 27.511570>,  <42.197201, 39.941406, 27.333603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494118, 40.213203, 27.511570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794064, 40.381737, 27.715599>,  <41.974033, 40.482857, 27.838017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794064, 40.381737, 27.715599>,  <41.494118, 40.213203, 27.511570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794064, 40.381737, 27.715599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219269, 0.885684, -0.409249,
		-0.624194, 0.195040, 0.756532,
		0.749869, 0.421335, 0.510072,
		42.019024, 40.508137, 27.868620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232502, 40.847397, 27.817760>,  <41.494118, 40.213203, 27.511570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232502, 40.847397, 27.817760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630318, 40.857399, 27.777214>,  <41.869007, 40.863400, 27.752886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630318, 40.857399, 27.777214>,  <41.232502, 40.847397, 27.817760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630318, 40.857399, 27.777214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071805, 0.868645, -0.490204,
		0.075792, 0.494803, 0.865694,
		0.994535, 0.025008, -0.101366,
		41.928677, 40.864902, 27.746803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026340, 41.277557, 28.211912>,  <41.232502, 40.847397, 27.817760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026340, 41.277557, 28.211912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398129, 41.250137, 28.066923>,  <41.621201, 41.233685, 27.979929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398129, 41.250137, 28.066923>,  <41.026340, 41.277557, 28.211912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398129, 41.250137, 28.066923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190457, -0.930674, -0.312366,
		-0.315932, 0.359371, -0.878089,
		0.929469, -0.068552, -0.362474,
		41.676968, 41.229572, 27.958181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040398, 42.007397, 28.387516>,  <41.026340, 41.277557, 28.211912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040398, 42.007397, 28.387516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914433, 41.695366, 28.603775>,  <40.838852, 41.508148, 28.733530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914433, 41.695366, 28.603775>,  <41.040398, 42.007397, 28.387516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914433, 41.695366, 28.603775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622345, 0.260365, 0.738171,
		-0.716599, 0.568932, 0.403487,
		-0.314916, -0.780081, 0.540649,
		40.819958, 41.461342, 28.765970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647564, 42.321632, 27.973652>,  <41.040398, 42.007397, 28.387516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647564, 42.321632, 27.973652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529129, 41.941628, 27.934019>,  <41.458069, 41.713627, 27.910238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529129, 41.941628, 27.934019>,  <41.647564, 42.321632, 27.973652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529129, 41.941628, 27.934019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944544, 0.306639, -0.117509,
		0.142017, 0.058795, -0.988117,
		-0.296086, -0.950008, -0.099083,
		41.440304, 41.656624, 27.904295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354870, 42.627422, 28.022186>,  <41.647564, 42.321632, 27.973652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354870, 42.627422, 28.022186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549274, 42.888504, 28.254660>,  <42.665916, 43.045155, 28.394144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549274, 42.888504, 28.254660>,  <42.354870, 42.627422, 28.022186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549274, 42.888504, 28.254660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229680, -0.546236, 0.805527,
		0.843232, -0.524980, -0.115564,
		0.486010, 0.652703, 0.581181,
		42.695076, 43.084316, 28.429014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901920, 42.336739, 28.415766>,  <42.354870, 42.627422, 28.022186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901920, 42.336739, 28.415766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715591, 42.627785, 28.617195>,  <42.603794, 42.802414, 28.738052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715591, 42.627785, 28.617195>,  <42.901920, 42.336739, 28.415766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715591, 42.627785, 28.617195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232075, -0.649624, 0.723968,
		0.853902, 0.220377, 0.471473,
		-0.465826, 0.727614, 0.503571,
		42.575844, 42.846069, 28.768267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484524, 42.670536, 28.705042>,  <42.901920, 42.336739, 28.415766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484524, 42.670536, 28.705042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747524, 42.534122, 28.436302>,  <43.905327, 42.452274, 28.275059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747524, 42.534122, 28.436302>,  <43.484524, 42.670536, 28.705042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747524, 42.534122, 28.436302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403683, -0.593463, 0.696306,
		-0.636181, -0.729040, -0.252537,
		0.657506, -0.341032, -0.671851,
		43.944775, 42.431812, 28.234747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512978, 41.921909, 28.568693>,  <43.484524, 42.670536, 28.705042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512978, 41.921909, 28.568693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882687, 42.062122, 28.508236>,  <44.104511, 42.146252, 28.471962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882687, 42.062122, 28.508236>,  <43.512978, 41.921909, 28.568693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882687, 42.062122, 28.508236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344306, -0.594556, 0.726606,
		0.164837, -0.723623, -0.670223,
		0.924274, 0.350533, -0.151143,
		44.159969, 42.167282, 28.462893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100266, 41.380367, 28.402260>,  <43.512978, 41.921909, 28.568693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100266, 41.380367, 28.402260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233112, 41.712788, 28.580723>,  <44.312820, 41.912239, 28.687801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233112, 41.712788, 28.580723>,  <44.100266, 41.380367, 28.402260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233112, 41.712788, 28.580723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227329, -0.529589, 0.817225,
		0.915433, -0.169991, -0.364808,
		0.332120, 0.831046, 0.446160,
		44.332748, 41.962101, 28.714571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814480, 41.393070, 28.601574>,  <44.100266, 41.380367, 28.402260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814480, 41.393070, 28.601574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.571156, 41.579266, 28.858721>,  <44.425159, 41.690983, 29.013010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.571156, 41.579266, 28.858721>,  <44.814480, 41.393070, 28.601574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.571156, 41.579266, 28.858721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176689, -0.710220, 0.681446,
		0.773782, 0.528119, 0.349788,
		-0.608310, 0.465487, 0.642869,
		44.388664, 41.718910, 29.051582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.256401, 41.550426, 29.105619>,  <44.814480, 41.393070, 28.601574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.256401, 41.550426, 29.105619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877926, 41.487331, 29.218651>,  <44.650841, 41.449474, 29.286470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877926, 41.487331, 29.218651>,  <45.256401, 41.550426, 29.105619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877926, 41.487331, 29.218651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311673, -0.679254, 0.664435,
		0.087136, 0.716752, 0.691863,
		-0.946186, -0.157739, 0.282579,
		44.594070, 41.440010, 29.303425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.210365, 41.583252, 29.843441>,  <45.256401, 41.550426, 29.105619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.210365, 41.583252, 29.843441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866184, 41.403358, 29.747639>,  <44.659676, 41.295422, 29.690157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866184, 41.403358, 29.747639>,  <45.210365, 41.583252, 29.843441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866184, 41.403358, 29.747639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116578, -0.631341, 0.766693,
		-0.496021, 0.631779, 0.595666,
		-0.860449, -0.449738, -0.239507,
		44.608051, 41.268436, 29.675787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850529, 41.442039, 30.418747>,  <45.210365, 41.583252, 29.843441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850529, 41.442039, 30.418747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656532, 41.204041, 30.162384>,  <44.540134, 41.061241, 30.008566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656532, 41.204041, 30.162384>,  <44.850529, 41.442039, 30.418747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656532, 41.204041, 30.162384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061214, -0.707970, 0.703585,
		-0.872376, 0.380462, 0.306934,
		-0.484987, -0.595002, -0.640906,
		44.511036, 41.025539, 29.970112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246189, 41.181583, 30.743244>,  <44.850529, 41.442039, 30.418747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246189, 41.181583, 30.743244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303486, 40.916843, 30.448917>,  <44.337864, 40.757999, 30.272322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303486, 40.916843, 30.448917>,  <44.246189, 41.181583, 30.743244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303486, 40.916843, 30.448917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177153, -0.748626, 0.638887,
		-0.973703, 0.038835, -0.224485,
		0.143244, -0.661854, -0.735819,
		44.346458, 40.718288, 30.228172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645950, 40.707176, 30.791098>,  <44.246189, 41.181583, 30.743244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645950, 40.707176, 30.791098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964897, 40.541885, 30.615164>,  <44.156265, 40.442711, 30.509604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964897, 40.541885, 30.615164>,  <43.645950, 40.707176, 30.791098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964897, 40.541885, 30.615164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014559, -0.715427, 0.698536,
		-0.603320, -0.563393, -0.564442,
		0.797367, -0.413223, -0.439834,
		44.204105, 40.417919, 30.483213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477982, 40.004124, 30.775164>,  <43.645950, 40.707176, 30.791098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477982, 40.004124, 30.775164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874451, 39.991863, 30.723572>,  <44.112331, 39.984505, 30.692617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874451, 39.991863, 30.723572>,  <43.477982, 40.004124, 30.775164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874451, 39.991863, 30.723572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047717, -0.825201, 0.562819,
		-0.123686, -0.564006, -0.816455,
		0.991173, -0.030654, -0.128979,
		44.171803, 39.982666, 30.684877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603966, 39.319244, 30.644066>,  <43.477982, 40.004124, 30.775164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603966, 39.319244, 30.644066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945137, 39.490189, 30.763981>,  <44.149841, 39.592754, 30.835930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945137, 39.490189, 30.763981>,  <43.603966, 39.319244, 30.644066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945137, 39.490189, 30.763981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177019, -0.777040, 0.604048,
		0.491092, -0.462143, -0.738412,
		0.852932, 0.427356, 0.299790,
		44.201015, 39.618397, 30.853918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242294, 38.756954, 30.678364>,  <43.603966, 39.319244, 30.644066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242294, 38.756954, 30.678364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356327, 39.061020, 30.911903>,  <44.424747, 39.243458, 31.052027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356327, 39.061020, 30.911903>,  <44.242294, 38.756954, 30.678364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356327, 39.061020, 30.911903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369996, -0.649188, 0.664573,
		0.884213, 0.026565, -0.466328,
		0.285080, 0.760164, 0.583850,
		44.441853, 39.289070, 31.087059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981655, 38.764893, 30.754091>,  <44.242294, 38.756954, 30.678364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981655, 38.764893, 30.754091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830074, 38.958126, 31.069817>,  <44.739124, 39.074066, 31.259253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830074, 38.958126, 31.069817>,  <44.981655, 38.764893, 30.754091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830074, 38.958126, 31.069817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421665, -0.669107, 0.611960,
		0.823767, 0.564731, 0.049860,
		-0.378955, 0.483088, 0.789316,
		44.716389, 39.103054, 31.306612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482311, 38.671783, 31.279697>,  <44.981655, 38.764893, 30.754091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482311, 38.671783, 31.279697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183823, 38.827583, 31.495640>,  <45.004730, 38.921062, 31.625204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183823, 38.827583, 31.495640>,  <45.482311, 38.671783, 31.279697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183823, 38.827583, 31.495640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235770, -0.603759, 0.761503,
		0.622549, 0.695531, 0.358705,
		-0.746221, 0.389501, 0.539855,
		44.959957, 38.944435, 31.657597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.715664, 38.651367, 31.922182>,  <45.482311, 38.671783, 31.279697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.715664, 38.651367, 31.922182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321918, 38.672653, 31.989340>,  <45.085670, 38.685425, 32.029636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321918, 38.672653, 31.989340>,  <45.715664, 38.651367, 31.922182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321918, 38.672653, 31.989340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124316, -0.465350, 0.876353,
		0.124764, 0.883525, 0.451460,
		-0.984367, 0.053214, 0.167895,
		45.026608, 38.688618, 32.039707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681057, 38.832947, 32.609238>,  <45.715664, 38.651367, 31.922182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681057, 38.832947, 32.609238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319252, 38.690483, 32.515430>,  <45.102169, 38.605003, 32.459145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319252, 38.690483, 32.515430>,  <45.681057, 38.832947, 32.609238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319252, 38.690483, 32.515430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026500, -0.501940, 0.864497,
		-0.425615, 0.788166, 0.444574,
		-0.904516, -0.356162, -0.234520,
		45.047897, 38.583633, 32.445076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291145, 38.772774, 33.315327>,  <45.681057, 38.832947, 32.609238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291145, 38.772774, 33.315327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135727, 38.525196, 33.042290>,  <45.042477, 38.376648, 32.878468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135727, 38.525196, 33.042290>,  <45.291145, 38.772774, 33.315327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135727, 38.525196, 33.042290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119449, -0.700716, 0.703369,
		-0.913653, 0.354829, 0.198331,
		-0.388550, -0.618945, -0.682595,
		45.019161, 38.339512, 32.837513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631416, 38.470280, 33.525940>,  <45.291145, 38.772774, 33.315327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631416, 38.470280, 33.525940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770950, 38.217228, 33.249363>,  <44.854671, 38.065399, 33.083416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770950, 38.217228, 33.249363>,  <44.631416, 38.470280, 33.525940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770950, 38.217228, 33.249363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161538, -0.767335, 0.620566,
		-0.923156, -0.104782, -0.369869,
		0.348837, -0.632627, -0.691444,
		44.875603, 38.027439, 33.041931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123901, 37.907906, 33.537510>,  <44.631416, 38.470280, 33.525940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123901, 37.907906, 33.537510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431839, 37.731991, 33.352501>,  <44.616600, 37.626442, 33.241497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431839, 37.731991, 33.352501>,  <44.123901, 37.907906, 33.537510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.431839, 37.731991, 33.352501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187102, -0.848365, 0.495247,
		-0.610192, -0.294723, -0.735393,
		0.769843, -0.439790, -0.462523,
		44.662792, 37.600056, 33.213745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918533, 37.217411, 33.414989>,  <44.123901, 37.907906, 33.537510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918533, 37.217411, 33.414989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316315, 37.201187, 33.376167>,  <44.554985, 37.191452, 33.352875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316315, 37.201187, 33.376167>,  <43.918533, 37.217411, 33.414989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316315, 37.201187, 33.376167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027122, -0.792598, 0.609141,
		-0.101628, -0.608394, -0.787101,
		0.994453, -0.040558, -0.097051,
		44.614651, 37.189018, 33.347054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070152, 36.508156, 33.228462>,  <43.918533, 37.217411, 33.414989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070152, 36.508156, 33.228462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392639, 36.678265, 33.392979>,  <44.586132, 36.780331, 33.491688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392639, 36.678265, 33.392979>,  <44.070152, 36.508156, 33.228462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392639, 36.678265, 33.392979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085717, -0.771823, 0.630033,
		0.585382, -0.472686, -0.658707,
		0.806213, 0.425273, 0.411294,
		44.634502, 36.805847, 33.516365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697681, 36.029377, 33.255196>,  <44.070152, 36.508156, 33.228462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697681, 36.029377, 33.255196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774986, 36.324390, 33.514019>,  <44.821369, 36.501400, 33.669315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774986, 36.324390, 33.514019>,  <44.697681, 36.029377, 33.255196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774986, 36.324390, 33.514019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262931, -0.674306, 0.690057,
		0.945260, 0.036769, -0.324241,
		0.193265, 0.737536, 0.647063,
		44.832966, 36.545650, 33.708138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262337, 35.864388, 33.559513>,  <44.697681, 36.029377, 33.255196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262337, 35.864388, 33.559513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.124702, 36.139675, 33.814999>,  <45.042122, 36.304848, 33.968288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.124702, 36.139675, 33.814999>,  <45.262337, 35.864388, 33.559513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.124702, 36.139675, 33.814999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112987, -0.644960, 0.755818,
		0.932115, 0.332233, 0.144162,
		-0.344086, 0.688221, 0.638715,
		45.021477, 36.346142, 34.006615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689335, 35.827744, 34.168896>,  <45.262337, 35.864388, 33.559513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689335, 35.827744, 34.168896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373161, 36.031010, 34.305706>,  <45.183456, 36.152969, 34.387794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373161, 36.031010, 34.305706>,  <45.689335, 35.827744, 34.168896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373161, 36.031010, 34.305706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049882, -0.503118, 0.862777,
		0.610516, 0.699027, 0.372332,
		-0.790431, 0.508167, 0.342030,
		45.136032, 36.183460, 34.408314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.849983, 36.020393, 34.810608>,  <45.689335, 35.827744, 34.168896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.849983, 36.020393, 34.810608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450695, 36.039165, 34.825283>,  <45.211121, 36.050430, 34.834087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450695, 36.039165, 34.825283>,  <45.849983, 36.020393, 34.810608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450695, 36.039165, 34.825283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009597, -0.481143, 0.876590,
		0.058795, 0.875385, 0.479838,
		-0.998224, 0.046934, 0.036690,
		45.151226, 36.053246, 34.836288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297115, 35.521580, 35.050293>,  <45.849983, 36.020393, 34.810608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297115, 35.521580, 35.050293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.035213, 35.448696, 35.343712>,  <45.878071, 35.404968, 35.519764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.035213, 35.448696, 35.343712>,  <46.297115, 35.521580, 35.050293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.035213, 35.448696, 35.343712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523204, -0.591151, -0.613838,
		0.545486, -0.785711, 0.291727,
		-0.654754, -0.182207, 0.733552,
		45.838787, 35.394035, 35.563778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.291180, 34.836517, 35.015957>,  <46.297115, 35.521580, 35.050293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.291180, 34.836517, 35.015957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947155, 34.980457, 35.160622>,  <45.740742, 35.066822, 35.247421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947155, 34.980457, 35.160622>,  <46.291180, 34.836517, 35.015957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947155, 34.980457, 35.160622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508451, -0.663004, -0.549457,
		0.042059, -0.656454, 0.753193,
		-0.860063, 0.359852, 0.361660,
		45.689137, 35.088413, 35.269119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.060635, 34.581432, 34.947243>,  <46.291180, 34.836517, 35.015957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.060635, 34.581432, 34.947243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.398087, 34.554443, 34.734173>,  <47.600555, 34.538250, 34.606331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.398087, 34.554443, 34.734173>,  <47.060635, 34.581432, 34.947243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.398087, 34.554443, 34.734173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117863, 0.991147, 0.061129,
		0.523835, -0.114353, 0.844110,
		0.843626, -0.067468, -0.532675,
		47.651173, 34.534203, 34.574371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.675621, 34.667786, 35.487793>,  <47.060635, 34.581432, 34.947243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.675621, 34.667786, 35.487793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640965, 34.807518, 35.114597>,  <47.620171, 34.891357, 34.890682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640965, 34.807518, 35.114597>,  <47.675621, 34.667786, 35.487793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.640965, 34.807518, 35.114597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155899, 0.929724, 0.333631,
		0.983966, -0.116546, -0.135010,
		-0.086639, 0.349330, -0.932986,
		47.614971, 34.912315, 34.834702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.810520, 34.792683, 43.905788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.483334, 34.583214, 43.810539>,  <32.287022, 34.457531, 43.753391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.483334, 34.583214, 43.810539>,  <32.810520, 34.792683, 43.905788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483334, 34.583214, 43.810539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241435, 0.063214, -0.968356,
		0.522156, -0.849570, 0.074727,
		-0.817962, -0.523675, -0.238123,
		32.237946, 34.426113, 43.739101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932919, 34.222813, 43.486816>,  <32.810520, 34.792683, 43.905788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932919, 34.222813, 43.486816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.545956, 34.283382, 43.405640>,  <32.313778, 34.319725, 43.356934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.545956, 34.283382, 43.405640>,  <32.932919, 34.222813, 43.486816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545956, 34.283382, 43.405640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212151, 0.047190, -0.976097,
		-0.138233, -0.987341, -0.077778,
		-0.967411, 0.151430, -0.202942,
		32.255733, 34.328812, 43.344757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750622, 33.681175, 43.078865>,  <32.932919, 34.222813, 43.486816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750622, 33.681175, 43.078865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.496418, 33.976723, 42.989235>,  <32.343895, 34.154049, 42.935459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.496418, 33.976723, 42.989235>,  <32.750622, 33.681175, 43.078865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496418, 33.976723, 42.989235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128469, -0.184977, -0.974310,
		-0.761333, -0.647965, 0.022633,
		-0.635505, 0.738867, -0.224072,
		32.305767, 34.198383, 42.922012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681908, 33.558212, 42.275101>,  <32.750622, 33.681175, 43.078865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681908, 33.558212, 42.275101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.510002, 33.912010, 42.347725>,  <32.406860, 34.124290, 42.391300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.510002, 33.912010, 42.347725>,  <32.681908, 33.558212, 42.275101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510002, 33.912010, 42.347725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065190, 0.230950, -0.970779,
		-0.900585, -0.405370, -0.156915,
		-0.429764, 0.884499, 0.181564,
		32.381073, 34.177361, 42.402195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235538, 33.714649, 41.675076>,  <32.681908, 33.558212, 42.275101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235538, 33.714649, 41.675076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.320591, 34.071758, 41.833946>,  <32.371620, 34.286022, 41.929268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.320591, 34.071758, 41.833946>,  <32.235538, 33.714649, 41.675076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320591, 34.071758, 41.833946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265795, 0.338299, -0.902722,
		-0.940288, 0.297511, -0.165363,
		0.212627, 0.892771, 0.397176,
		32.384380, 34.339588, 41.953098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968727, 34.168476, 41.190296>,  <32.235538, 33.714649, 41.675076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968727, 34.168476, 41.190296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.231560, 34.362514, 41.421097>,  <32.389259, 34.478935, 41.559578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.231560, 34.362514, 41.421097>,  <31.968727, 34.168476, 41.190296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231560, 34.362514, 41.421097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482092, 0.318018, -0.816365,
		-0.579508, 0.814586, -0.024894,
		0.657083, 0.485091, 0.576999,
		32.428684, 34.508041, 41.594196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877209, 34.766712, 40.923893>,  <31.968727, 34.168476, 41.190296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877209, 34.766712, 40.923893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.233490, 34.743675, 41.104263>,  <32.447258, 34.729855, 41.212486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.233490, 34.743675, 41.104263>,  <31.877209, 34.766712, 40.923893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233490, 34.743675, 41.104263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443593, 0.326970, -0.834455,
		-0.099384, 0.943278, 0.316779,
		0.890701, -0.057590, 0.450927,
		32.500702, 34.726398, 41.239540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304855, 35.327393, 40.696907>,  <31.877209, 34.766712, 40.923893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304855, 35.327393, 40.696907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.587185, 35.089592, 40.850986>,  <32.756584, 34.946911, 40.943436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.587185, 35.089592, 40.850986>,  <32.304855, 35.327393, 40.696907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587185, 35.089592, 40.850986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590386, 0.193168, -0.783665,
		0.391480, 0.780548, 0.487328,
		0.705824, -0.594501, 0.385203,
		32.798931, 34.911243, 40.966549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867222, 35.660126, 40.655613>,  <32.304855, 35.327393, 40.696907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867222, 35.660126, 40.655613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.015419, 35.290630, 40.694492>,  <33.104336, 35.068932, 40.717819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.015419, 35.290630, 40.694492>,  <32.867222, 35.660126, 40.655613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015419, 35.290630, 40.694492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717936, 0.218401, -0.660961,
		0.589327, 0.314658, 0.744099,
		0.370489, -0.923738, 0.097195,
		33.126564, 35.013508, 40.723652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543324, 35.750462, 40.741203>,  <32.867222, 35.660126, 40.655613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543324, 35.750462, 40.741203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.500118, 35.371929, 40.619358>,  <33.474197, 35.144810, 40.546253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.500118, 35.371929, 40.619358>,  <33.543324, 35.750462, 40.741203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500118, 35.371929, 40.619358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509432, 0.210430, -0.834385,
		0.853706, -0.245299, 0.459364,
		-0.108010, -0.946334, -0.304608,
		33.467716, 35.088028, 40.527977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187149, 35.516239, 40.697407>,  <33.543324, 35.750462, 40.741203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187149, 35.516239, 40.697407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.977840, 35.284416, 40.447510>,  <33.852253, 35.145325, 40.297573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.977840, 35.284416, 40.447510>,  <34.187149, 35.516239, 40.697407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977840, 35.284416, 40.447510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538437, 0.343377, -0.769531,
		0.660507, -0.739058, 0.132374,
		-0.523274, -0.579556, -0.624739,
		33.820858, 35.110550, 40.260086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693905, 35.109585, 40.221870>,  <34.187149, 35.516239, 40.697407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693905, 35.109585, 40.221870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.343220, 35.105835, 40.029503>,  <34.132809, 35.103584, 39.914082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.343220, 35.105835, 40.029503>,  <34.693905, 35.109585, 40.221870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343220, 35.105835, 40.029503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460897, 0.269689, -0.845483,
		0.137625, -0.962902, -0.232120,
		-0.876717, -0.009377, -0.480915,
		34.080204, 35.103024, 39.885227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960266, 34.902695, 39.646595>,  <34.693905, 35.109585, 40.221870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960266, 34.902695, 39.646595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.594109, 35.017712, 39.533897>,  <34.374416, 35.086720, 39.466278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.594109, 35.017712, 39.533897>,  <34.960266, 34.902695, 39.646595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594109, 35.017712, 39.533897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372868, 0.341798, -0.862638,
		-0.151746, -0.894704, -0.420094,
		-0.915392, 0.287541, -0.281740,
		34.319492, 35.103973, 39.449375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899101, 34.742252, 39.004963>,  <34.960266, 34.902695, 39.646595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899101, 34.742252, 39.004963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.576260, 34.977947, 39.019817>,  <34.382553, 35.119362, 39.028728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.576260, 34.977947, 39.019817>,  <34.899101, 34.742252, 39.004963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576260, 34.977947, 39.019817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106870, 0.207668, -0.972344,
		-0.580651, -0.780817, -0.230583,
		-0.807108, 0.589235, 0.037137,
		34.334126, 35.154716, 39.030960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396442, 34.551010, 38.496010>,  <34.899101, 34.742252, 39.004963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396442, 34.551010, 38.496010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.356670, 34.940331, 38.578758>,  <34.332809, 35.173923, 38.628407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.356670, 34.940331, 38.578758>,  <34.396442, 34.551010, 38.496010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356670, 34.940331, 38.578758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109878, 0.217365, -0.969886,
		-0.988960, -0.073701, -0.128556,
		-0.099425, 0.973304, 0.206867,
		34.326843, 35.232323, 38.640820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054943, 34.791836, 37.982529>,  <34.396442, 34.551010, 38.496010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054943, 34.791836, 37.982529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.207462, 35.124676, 38.143635>,  <34.298973, 35.324379, 38.240299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.207462, 35.124676, 38.143635>,  <34.054943, 34.791836, 37.982529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207462, 35.124676, 38.143635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172707, 0.363892, -0.915290,
		-0.908177, 0.418557, -0.004959,
		0.381296, 0.832102, 0.402766,
		34.321850, 35.374306, 38.264465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838211, 35.290157, 37.559944>,  <34.054943, 34.791836, 37.982529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838211, 35.290157, 37.559944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.104652, 35.517109, 37.753597>,  <34.264519, 35.653282, 37.869789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.104652, 35.517109, 37.753597>,  <33.838211, 35.290157, 37.559944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104652, 35.517109, 37.753597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170607, 0.515979, -0.839439,
		-0.726085, 0.641750, 0.246896,
		0.666103, 0.567382, 0.484132,
		34.304485, 35.687325, 37.898838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778610, 36.019768, 37.312820>,  <33.838211, 35.290157, 37.559944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778610, 36.019768, 37.312820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.143375, 35.953651, 37.463070>,  <34.362236, 35.913982, 37.553219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.143375, 35.953651, 37.463070>,  <33.778610, 36.019768, 37.312820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143375, 35.953651, 37.463070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409774, 0.416547, -0.811526,
		-0.022331, 0.893963, 0.447585,
		0.911914, -0.165286, 0.375624,
		34.416950, 35.904064, 37.575756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186222, 36.731457, 37.376625>,  <33.778610, 36.019768, 37.312820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186222, 36.731457, 37.376625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.444996, 36.426907, 37.359722>,  <34.600262, 36.244179, 37.349583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.444996, 36.426907, 37.359722>,  <34.186222, 36.731457, 37.376625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444996, 36.426907, 37.359722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444304, 0.421399, -0.790580,
		0.619732, 0.492682, 0.610899,
		0.646937, -0.761372, -0.042254,
		34.639076, 36.198494, 37.347046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780510, 37.073921, 37.313183>,  <34.186222, 36.731457, 37.376625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780510, 37.073921, 37.313183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878902, 36.702106, 37.203300>,  <34.937939, 36.479019, 37.137371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878902, 36.702106, 37.203300>,  <34.780510, 37.073921, 37.313183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878902, 36.702106, 37.203300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519259, 0.365685, -0.772428,
		0.818452, 0.047362, 0.572620,
		0.245982, -0.929533, -0.274702,
		34.952698, 36.423248, 37.120892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587334, 37.043171, 37.284660>,  <34.780510, 37.073921, 37.313183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587334, 37.043171, 37.284660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.414883, 36.754570, 37.067936>,  <35.311413, 36.581409, 36.937901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.414883, 36.754570, 37.067936>,  <35.587334, 37.043171, 37.284660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414883, 36.754570, 37.067936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465783, 0.336323, -0.818494,
		0.772771, -0.605243, 0.191066,
		-0.431128, -0.721504, -0.541813,
		35.285545, 36.538120, 36.905392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150043, 36.703300, 36.992619>,  <35.587334, 37.043171, 37.284660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150043, 36.703300, 36.992619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.805664, 36.673168, 36.791386>,  <35.599037, 36.655090, 36.670647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.805664, 36.673168, 36.791386>,  <36.150043, 36.703300, 36.992619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805664, 36.673168, 36.791386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437461, 0.395079, -0.807800,
		0.259607, -0.915554, -0.307190,
		-0.860948, -0.075326, -0.503084,
		35.547379, 36.650570, 36.640461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173016, 35.988331, 37.122379>,  <36.150043, 36.703300, 36.992619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173016, 35.988331, 37.122379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.542641, 36.137146, 37.087307>,  <36.764416, 36.226437, 37.066265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.542641, 36.137146, 37.087307>,  <36.173016, 35.988331, 37.122379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542641, 36.137146, 37.087307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074652, 0.049305, 0.995990,
		0.374870, -0.926907, 0.017787,
		0.924067, 0.372038, -0.087679,
		36.819862, 36.248756, 37.061005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569118, 35.565884, 37.598568>,  <36.173016, 35.988331, 37.122379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569118, 35.565884, 37.598568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749535, 35.916298, 37.530312>,  <36.857784, 36.126549, 37.489357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749535, 35.916298, 37.530312>,  <36.569118, 35.565884, 37.598568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749535, 35.916298, 37.530312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057004, 0.162524, 0.985057,
		0.890682, -0.454026, 0.023367,
		0.451039, 0.876040, -0.170638,
		36.884846, 36.179111, 37.479118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238556, 35.585560, 38.047092>,  <36.569118, 35.565884, 37.598568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238556, 35.585560, 38.047092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.141712, 35.966007, 37.970406>,  <37.083607, 36.194275, 37.924393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.141712, 35.966007, 37.970406>,  <37.238556, 35.585560, 38.047092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141712, 35.966007, 37.970406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081106, 0.216747, 0.972853,
		0.966853, 0.219988, -0.129618,
		-0.242110, 0.951118, -0.191720,
		37.069080, 36.251343, 37.912891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689270, 35.973495, 38.471268>,  <37.238556, 35.585560, 38.047092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689270, 35.973495, 38.471268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.434097, 36.262653, 38.365093>,  <37.280994, 36.436150, 38.301388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.434097, 36.262653, 38.365093>,  <37.689270, 35.973495, 38.471268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434097, 36.262653, 38.365093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028175, 0.366364, 0.930045,
		0.769576, 0.585828, -0.254083,
		-0.637933, 0.722899, -0.265439,
		37.242718, 36.479523, 38.285461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897793, 36.493103, 38.860802>,  <37.689270, 35.973495, 38.471268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897793, 36.493103, 38.860802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525166, 36.586929, 38.749691>,  <37.301590, 36.643227, 38.683025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525166, 36.586929, 38.749691>,  <37.897793, 36.493103, 38.860802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525166, 36.586929, 38.749691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168553, 0.398309, 0.901632,
		0.322133, 0.886752, -0.331515,
		-0.931569, 0.234567, -0.277773,
		37.245693, 36.657299, 38.666359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810246, 37.157211, 39.113178>,  <37.897793, 36.493103, 38.860802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810246, 37.157211, 39.113178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.450802, 37.002422, 39.030476>,  <37.235134, 36.909550, 38.980854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.450802, 37.002422, 39.030476>,  <37.810246, 37.157211, 39.113178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450802, 37.002422, 39.030476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368402, 0.409571, 0.834585,
		-0.238283, 0.826136, -0.510608,
		-0.898611, -0.386976, -0.206757,
		37.181217, 36.886330, 38.968449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302338, 37.720085, 39.117638>,  <37.810246, 37.157211, 39.113178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302338, 37.720085, 39.117638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.127010, 37.372398, 39.209145>,  <37.021812, 37.163788, 39.264050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.127010, 37.372398, 39.209145>,  <37.302338, 37.720085, 39.117638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127010, 37.372398, 39.209145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454307, 0.433868, 0.778051,
		-0.775551, 0.237106, -0.585066,
		-0.438322, -0.869218, 0.228767,
		36.995514, 37.111633, 39.277775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595978, 38.010071, 39.351967>,  <37.302338, 37.720085, 39.117638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595978, 38.010071, 39.351967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631367, 37.624329, 39.451717>,  <36.652599, 37.392883, 39.511566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631367, 37.624329, 39.451717>,  <36.595978, 38.010071, 39.351967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631367, 37.624329, 39.451717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507304, 0.171830, 0.844463,
		-0.857214, -0.201216, -0.474021,
		0.088468, -0.964358, 0.249373,
		36.657906, 37.335022, 39.526531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912384, 37.845631, 39.593182>,  <36.595978, 38.010071, 39.351967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912384, 37.845631, 39.593182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.142376, 37.552410, 39.738525>,  <36.280369, 37.376476, 39.825733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.142376, 37.552410, 39.738525>,  <35.912384, 37.845631, 39.593182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142376, 37.552410, 39.738525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464731, 0.072898, 0.882446,
		-0.673371, -0.676251, -0.298759,
		0.574976, -0.733056, 0.363362,
		36.314869, 37.332493, 39.847534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476452, 37.325481, 39.920364>,  <35.912384, 37.845631, 39.593182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476452, 37.325481, 39.920364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834682, 37.248875, 40.080990>,  <36.049622, 37.202911, 40.177364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834682, 37.248875, 40.080990>,  <35.476452, 37.325481, 39.920364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834682, 37.248875, 40.080990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407739, 0.007802, 0.913065,
		-0.178007, -0.981457, -0.071104,
		0.895579, -0.191524, 0.401567,
		36.103355, 37.191418, 40.201462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435867, 36.706642, 40.385899>,  <35.476452, 37.325481, 39.920364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435867, 36.706642, 40.385899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.746078, 36.918797, 40.522869>,  <35.932205, 37.046089, 40.605049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.746078, 36.918797, 40.522869>,  <35.435867, 36.706642, 40.385899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746078, 36.918797, 40.522869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281841, -0.194476, 0.939545,
		0.564916, -0.825148, -0.001336,
		0.775523, 0.530387, 0.342423,
		35.978737, 37.077911, 40.625595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693970, 36.373913, 40.902390>,  <35.435867, 36.706642, 40.385899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693970, 36.373913, 40.902390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.871780, 36.720108, 40.994766>,  <35.978466, 36.927826, 41.050190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.871780, 36.720108, 40.994766>,  <35.693970, 36.373913, 40.902390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871780, 36.720108, 40.994766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102950, -0.206739, 0.972965,
		0.889831, -0.456282, -0.002799,
		0.444525, 0.865486, 0.230937,
		36.005138, 36.979755, 41.064049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208168, 36.239571, 41.424454>,  <35.693970, 36.373913, 40.902390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208168, 36.239571, 41.424454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.053696, 36.606915, 41.459045>,  <35.961014, 36.827320, 41.479801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.053696, 36.606915, 41.459045>,  <36.208168, 36.239571, 41.424454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053696, 36.606915, 41.459045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237922, -0.189746, 0.952570,
		0.891211, 0.347291, 0.291775,
		-0.386182, 0.918360, 0.086475,
		35.937840, 36.882423, 41.484989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494324, 36.577995, 42.064209>,  <36.208168, 36.239571, 41.424454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494324, 36.577995, 42.064209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138073, 36.753666, 42.017021>,  <35.924324, 36.859066, 41.988708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138073, 36.753666, 42.017021>,  <36.494324, 36.577995, 42.064209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138073, 36.753666, 42.017021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201608, -0.148812, 0.968096,
		0.407607, 0.885992, 0.221077,
		-0.890624, 0.439174, -0.117966,
		35.870888, 36.885418, 41.981632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303749, 36.970795, 42.754910>,  <36.494324, 36.577995, 42.064209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303749, 36.970795, 42.754910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.960068, 36.884659, 42.569263>,  <35.753860, 36.832977, 42.457874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.960068, 36.884659, 42.569263>,  <36.303749, 36.970795, 42.754910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960068, 36.884659, 42.569263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424137, -0.207553, 0.881493,
		-0.286151, 0.954227, 0.086995,
		-0.859200, -0.215342, -0.464114,
		35.702309, 36.820057, 42.430031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812355, 37.341499, 43.052124>,  <36.303749, 36.970795, 42.754910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812355, 37.341499, 43.052124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.596657, 37.045204, 42.891865>,  <35.467239, 36.867428, 42.795712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.596657, 37.045204, 42.891865>,  <35.812355, 37.341499, 43.052124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596657, 37.045204, 42.891865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470328, -0.129738, 0.872903,
		-0.698573, 0.659145, -0.278430,
		-0.539247, -0.740740, -0.400646,
		35.434883, 36.822983, 42.771671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105171, 37.568356, 43.251705>,  <35.812355, 37.341499, 43.052124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105171, 37.568356, 43.251705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.097595, 37.182449, 43.146736>,  <35.093052, 36.950905, 43.083755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.097595, 37.182449, 43.146736>,  <35.105171, 37.568356, 43.251705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097595, 37.182449, 43.146736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537298, -0.211530, 0.816435,
		-0.843180, 0.156460, -0.514362,
		-0.018937, -0.964767, -0.262423,
		35.091915, 36.893021, 43.068008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443722, 37.355011, 43.226738>,  <35.105171, 37.568356, 43.251705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443722, 37.355011, 43.226738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.633514, 37.006168, 43.274555>,  <34.747391, 36.796864, 43.303246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.633514, 37.006168, 43.274555>,  <34.443722, 37.355011, 43.226738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633514, 37.006168, 43.274555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551994, -0.188989, 0.812149,
		-0.685691, -0.451338, -0.571071,
		0.474480, -0.872111, 0.119547,
		34.775860, 36.744534, 43.310421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.818375, 36.891663, 43.432285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.141800, 36.671474, 43.515438>,  <34.335854, 36.539364, 43.565331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.141800, 36.671474, 43.515438>,  <33.818375, 36.891663, 43.432285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141800, 36.671474, 43.515438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499371, -0.455089, 0.737240,
		-0.311220, -0.699915, -0.642854,
		0.808561, -0.550467, 0.207885,
		34.384369, 36.506332, 43.577805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572983, 36.178555, 43.492355>,  <33.818375, 36.891663, 43.432285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572983, 36.178555, 43.492355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.921551, 36.201912, 43.687176>,  <34.130692, 36.215927, 43.804070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.921551, 36.201912, 43.687176>,  <33.572983, 36.178555, 43.492355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921551, 36.201912, 43.687176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411399, -0.453780, 0.790465,
		0.267173, -0.889198, -0.371409,
		0.871418, 0.058394, 0.487053,
		34.182976, 36.219429, 43.833290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560677, 35.592602, 43.744904>,  <33.572983, 36.178555, 43.492355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560677, 35.592602, 43.744904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817291, 35.802029, 43.969154>,  <33.971260, 35.927685, 44.103706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817291, 35.802029, 43.969154>,  <33.560677, 35.592602, 43.744904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817291, 35.802029, 43.969154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301047, -0.500373, 0.811787,
		0.705552, -0.689565, -0.163387,
		0.641535, 0.523571, 0.560631,
		34.009750, 35.959099, 44.137344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021938, 35.131447, 43.962650>,  <33.560677, 35.592602, 43.744904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021938, 35.131447, 43.962650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.023216, 35.433208, 44.225212>,  <34.023983, 35.614265, 44.382748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.023216, 35.433208, 44.225212>,  <34.021938, 35.131447, 43.962650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023216, 35.433208, 44.225212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214035, -0.640676, 0.737376,
		0.976821, -0.142850, 0.159421,
		0.003197, 0.754405, 0.656401,
		34.024174, 35.659531, 44.422131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524895, 34.927689, 44.463139>,  <34.021938, 35.131447, 43.962650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524895, 34.927689, 44.463139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.313000, 35.232365, 44.612381>,  <34.185863, 35.415169, 44.701927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.313000, 35.232365, 44.612381>,  <34.524895, 34.927689, 44.463139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313000, 35.232365, 44.612381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385292, -0.607999, 0.694181,
		0.755599, 0.223978, 0.615552,
		-0.529737, 0.761689, 0.373106,
		34.154079, 35.460873, 44.724312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533218, 34.738194, 45.167732>,  <34.524895, 34.927689, 44.463139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533218, 34.738194, 45.167732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255390, 35.025074, 45.145084>,  <34.088696, 35.197201, 45.131496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255390, 35.025074, 45.145084>,  <34.533218, 34.738194, 45.167732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255390, 35.025074, 45.145084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487804, -0.411633, 0.769809,
		0.528796, 0.562305, 0.635758,
		-0.694566, 0.717197, -0.056624,
		34.047020, 35.240234, 45.128098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693214, 35.178802, 45.708035>,  <34.533218, 34.738194, 45.167732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693214, 35.178802, 45.708035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.305424, 35.241550, 45.632671>,  <34.072750, 35.279198, 45.587452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.305424, 35.241550, 45.632671>,  <34.693214, 35.178802, 45.708035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305424, 35.241550, 45.632671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222995, -0.244858, 0.943567,
		0.101882, 0.956785, 0.272366,
		-0.969481, 0.156869, -0.188412,
		34.014580, 35.288612, 45.576149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481037, 35.489182, 46.253071>,  <34.693214, 35.178802, 45.708035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481037, 35.489182, 46.253071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139584, 35.364109, 46.086437>,  <33.934711, 35.289066, 45.986458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139584, 35.364109, 46.086437>,  <34.481037, 35.489182, 46.253071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139584, 35.364109, 46.086437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353234, -0.240266, 0.904156,
		-0.382808, 0.918967, 0.094647,
		-0.853630, -0.312686, -0.416586,
		33.883495, 35.270302, 45.961460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037998, 35.671417, 46.748329>,  <34.481037, 35.489182, 46.253071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037998, 35.671417, 46.748329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855511, 35.392601, 46.527058>,  <33.746017, 35.225311, 46.394295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855511, 35.392601, 46.527058>,  <34.037998, 35.671417, 46.748329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855511, 35.392601, 46.527058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415531, -0.382831, 0.825090,
		-0.786894, 0.606281, -0.114988,
		-0.456215, -0.697040, -0.553176,
		33.718647, 35.183491, 46.361103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395058, 35.695480, 46.937286>,  <34.037998, 35.671417, 46.748329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395058, 35.695480, 46.937286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.395607, 35.325130, 46.786152>,  <33.395935, 35.102921, 46.695473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.395607, 35.325130, 46.786152>,  <33.395058, 35.695480, 46.937286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395607, 35.325130, 46.786152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328571, -0.357276, 0.874297,
		-0.944478, 0.122950, -0.304704,
		0.001369, -0.925871, -0.377837,
		33.396019, 35.047371, 46.672802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816990, 35.374722, 47.160721>,  <33.395058, 35.695480, 46.937286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816990, 35.374722, 47.160721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.035694, 35.052944, 47.067841>,  <33.166916, 34.859879, 47.012112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.035694, 35.052944, 47.067841>,  <32.816990, 35.374722, 47.160721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035694, 35.052944, 47.067841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187610, -0.387977, 0.902373,
		-0.815997, -0.449823, -0.363054,
		0.546765, -0.804446, -0.232196,
		33.199722, 34.811611, 46.998180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386982, 34.827312, 47.246178>,  <32.816990, 35.374722, 47.160721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386982, 34.827312, 47.246178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.776192, 34.742165, 47.281742>,  <33.009720, 34.691074, 47.303082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.776192, 34.742165, 47.281742>,  <32.386982, 34.827312, 47.246178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776192, 34.742165, 47.281742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151389, -0.298376, 0.942366,
		-0.174069, -0.930408, -0.322554,
		0.973027, -0.212868, 0.088916,
		33.068100, 34.678303, 47.308418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416798, 34.156712, 47.436375>,  <32.386982, 34.827312, 47.246178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416798, 34.156712, 47.436375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762585, 34.322433, 47.550247>,  <32.970058, 34.421867, 47.618572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762585, 34.322433, 47.550247>,  <32.416798, 34.156712, 47.436375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762585, 34.322433, 47.550247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173571, -0.285477, 0.942537,
		0.471767, -0.864208, -0.174876,
		0.864471, 0.414304, 0.284680,
		33.021927, 34.446724, 47.635651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749527, 33.701107, 47.852703>,  <32.416798, 34.156712, 47.436375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749527, 33.701107, 47.852703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.909611, 34.053448, 47.953850>,  <33.005661, 34.264851, 48.014538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.909611, 34.053448, 47.953850>,  <32.749527, 33.701107, 47.852703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909611, 34.053448, 47.953850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032987, -0.261898, 0.964531,
		0.915832, -0.394351, -0.075757,
		0.400205, 0.880850, 0.252863,
		33.029671, 34.317703, 48.029709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326397, 33.491283, 48.080639>,  <32.749527, 33.701107, 47.852703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326397, 33.491283, 48.080639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.248394, 33.848080, 48.243771>,  <33.201591, 34.062157, 48.341648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.248394, 33.848080, 48.243771>,  <33.326397, 33.491283, 48.080639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248394, 33.848080, 48.243771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055018, -0.405205, 0.912569,
		0.979258, 0.200394, 0.029941,
		-0.195005, 0.891993, 0.407825,
		33.189892, 34.115677, 48.366119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884693, 33.481441, 48.501331>,  <33.326397, 33.491283, 48.080639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884693, 33.481441, 48.501331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.632416, 33.757984, 48.642330>,  <33.481049, 33.923908, 48.726929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.632416, 33.757984, 48.642330>,  <33.884693, 33.481441, 48.501331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632416, 33.757984, 48.642330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063975, -0.406368, 0.911467,
		0.773394, 0.597404, 0.212063,
		-0.630689, 0.691356, 0.352502,
		33.443211, 33.965389, 48.748081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236649, 33.842167, 49.085510>,  <33.884693, 33.481441, 48.501331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236649, 33.842167, 49.085510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.842728, 33.900219, 49.123665>,  <33.606373, 33.935051, 49.146557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.842728, 33.900219, 49.123665>,  <34.236649, 33.842167, 49.085510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842728, 33.900219, 49.123665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054335, -0.264203, 0.962935,
		0.164948, 0.953486, 0.252303,
		-0.984804, 0.145126, 0.095388,
		33.547287, 33.943756, 49.152283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156471, 34.106915, 49.798573>,  <34.236649, 33.842167, 49.085510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156471, 34.106915, 49.798573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.802437, 33.962189, 49.681473>,  <33.590015, 33.875351, 49.611214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.802437, 33.962189, 49.681473>,  <34.156471, 34.106915, 49.798573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802437, 33.962189, 49.681473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163779, -0.346648, 0.923586,
		-0.435652, 0.865403, 0.247556,
		-0.885090, -0.361818, -0.292753,
		33.536911, 33.853642, 49.593647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753906, 34.252457, 50.380604>,  <34.156471, 34.106915, 49.798573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753906, 34.252457, 50.380604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.598503, 33.939766, 50.185474>,  <33.505260, 33.752151, 50.068398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.598503, 33.939766, 50.185474>,  <33.753906, 34.252457, 50.380604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598503, 33.939766, 50.185474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098398, -0.491183, 0.865481,
		-0.916177, 0.384246, 0.113907,
		-0.388507, -0.781725, -0.487820,
		33.481953, 33.705250, 50.039127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285255, 34.037006, 50.826130>,  <33.753906, 34.252457, 50.380604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285255, 34.037006, 50.826130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.252342, 33.714775, 50.591431>,  <33.232594, 33.521439, 50.450611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.252342, 33.714775, 50.591431>,  <33.285255, 34.037006, 50.826130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252342, 33.714775, 50.591431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066241, -0.583025, 0.809749,
		-0.994405, 0.105495, -0.005389,
		-0.082283, -0.805576, -0.586751,
		33.227657, 33.473103, 50.415405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784550, 33.664120, 51.132355>,  <33.285255, 34.037006, 50.826130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784550, 33.664120, 51.132355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.958500, 33.387138, 50.902088>,  <33.062870, 33.220951, 50.763927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.958500, 33.387138, 50.902088>,  <32.784550, 33.664120, 51.132355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958500, 33.387138, 50.902088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025887, -0.648627, 0.760667,
		-0.900117, -0.315895, -0.299999,
		0.434878, -0.692455, -0.575663,
		33.088963, 33.179401, 50.729389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338589, 33.078598, 51.200947>,  <32.784550, 33.664120, 51.132355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338589, 33.078598, 51.200947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.695065, 32.948635, 51.074314>,  <32.908951, 32.870659, 50.998333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.695065, 32.948635, 51.074314>,  <32.338589, 33.078598, 51.200947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695065, 32.948635, 51.074314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027807, -0.735686, 0.676751,
		-0.452782, -0.594309, -0.664669,
		0.891187, -0.324903, -0.316580,
		32.962421, 32.851166, 50.979340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415005, 32.352470, 51.489197>,  <32.338589, 33.078598, 51.200947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415005, 32.352470, 51.489197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.771320, 32.379059, 51.309387>,  <32.985111, 32.395012, 51.201500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.771320, 32.379059, 51.309387>,  <32.415005, 32.352470, 51.489197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771320, 32.379059, 51.309387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353778, -0.722296, 0.594247,
		-0.285189, -0.688382, -0.666931,
		0.890791, 0.066473, -0.449525,
		33.038559, 32.399002, 51.174530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618980, 31.665730, 51.546391>,  <32.415005, 32.352470, 51.489197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618980, 31.665730, 51.546391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.923027, 31.925589, 51.541065>,  <33.105457, 32.081505, 51.537868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.923027, 31.925589, 51.541065>,  <32.618980, 31.665730, 51.546391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923027, 31.925589, 51.541065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487837, -0.557015, 0.672123,
		0.429225, -0.517390, -0.740320,
		0.760119, 0.649647, -0.013318,
		33.151062, 32.120483, 51.537071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903053, 31.583298, 51.425056>,  <32.618980, 31.665730, 51.546391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903053, 31.583298, 51.425056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.508968, 31.648989, 51.405533>,  <31.272516, 31.688404, 51.393818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.508968, 31.648989, 51.405533>,  <31.903053, 31.583298, 51.425056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508968, 31.648989, 51.405533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028505, -0.123809, -0.991897,
		-0.168946, -0.978621, 0.117297,
		-0.985213, 0.164234, -0.048813,
		31.213404, 31.698257, 51.390888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700859, 31.080267, 51.007969>,  <31.903053, 31.583298, 51.425056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700859, 31.080267, 51.007969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.407841, 31.352545, 51.005840>,  <31.232029, 31.515911, 51.004562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.407841, 31.352545, 51.005840>,  <31.700859, 31.080267, 51.007969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407841, 31.352545, 51.005840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048391, -0.059867, -0.997033,
		-0.678995, -0.730115, 0.076795,
		-0.732546, 0.680696, -0.005319,
		31.188076, 31.556753, 51.004246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246006, 30.774443, 50.560543>,  <31.700859, 31.080267, 51.007969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246006, 30.774443, 50.560543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.179579, 31.168768, 50.550812>,  <31.139723, 31.405363, 50.544971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.179579, 31.168768, 50.550812>,  <31.246006, 30.774443, 50.560543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179579, 31.168768, 50.550812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064092, -0.013827, -0.997848,
		-0.984029, -0.167272, -0.060886,
		-0.166070, 0.985814, -0.024327,
		31.129757, 31.464512, 50.543514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033064, 30.843437, 49.833393>,  <31.246006, 30.774443, 50.560543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033064, 30.843437, 49.833393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.065184, 31.231434, 49.925194>,  <31.084455, 31.464231, 49.980274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.065184, 31.231434, 49.925194>,  <31.033064, 30.843437, 49.833393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065184, 31.231434, 49.925194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045032, 0.226482, -0.972974,
		-0.995753, 0.088465, -0.025494,
		0.080300, 0.969989, 0.229504,
		31.089273, 31.522430, 49.994045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645397, 31.115355, 49.346725>,  <31.033064, 30.843437, 49.833393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645397, 31.115355, 49.346725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.858377, 31.421268, 49.491833>,  <30.986166, 31.604816, 49.578896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.858377, 31.421268, 49.491833>,  <30.645397, 31.115355, 49.346725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858377, 31.421268, 49.491833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092754, 0.373273, -0.923073,
		-0.841365, 0.525137, 0.127812,
		0.532448, 0.764787, 0.362768,
		31.018112, 31.650705, 49.600662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237967, 31.606373, 49.062798>,  <30.645397, 31.115355, 49.346725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237967, 31.606373, 49.062798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.596186, 31.754511, 49.161457>,  <30.811117, 31.843393, 49.220654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.596186, 31.754511, 49.161457>,  <30.237967, 31.606373, 49.062798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596186, 31.754511, 49.161457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064475, 0.440462, -0.895453,
		-0.440265, 0.817826, 0.370578,
		0.895550, 0.370343, 0.246650,
		30.864851, 31.865614, 49.235451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262224, 32.298504, 48.739933>,  <30.237967, 31.606373, 49.062798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262224, 32.298504, 48.739933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.640299, 32.171528, 48.770546>,  <30.867144, 32.095341, 48.788914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.640299, 32.171528, 48.770546>,  <30.262224, 32.298504, 48.739933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640299, 32.171528, 48.770546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191999, 0.350703, -0.916594,
		0.264124, 0.881044, 0.392428,
		0.945185, -0.317440, 0.076530,
		30.923855, 32.076294, 48.793507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635197, 32.738487, 48.363010>,  <30.262224, 32.298504, 48.739933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635197, 32.738487, 48.363010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924959, 32.463627, 48.385159>,  <31.098816, 32.298710, 48.398449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924959, 32.463627, 48.385159>,  <30.635197, 32.738487, 48.363010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924959, 32.463627, 48.385159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345121, 0.291951, -0.891996,
		0.596766, 0.665276, 0.448639,
		0.724404, -0.687148, 0.055374,
		31.142281, 32.257484, 48.401772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277605, 33.064419, 48.203140>,  <30.635197, 32.738487, 48.363010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277605, 33.064419, 48.203140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.304348, 32.673489, 48.122772>,  <31.320395, 32.438931, 48.074551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.304348, 32.673489, 48.122772>,  <31.277605, 33.064419, 48.203140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304348, 32.673489, 48.122772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410087, 0.210492, -0.887424,
		0.909593, -0.023064, 0.414860,
		0.066857, -0.977323, -0.200921,
		31.324406, 32.380291, 48.062496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899193, 33.027119, 48.073257>,  <31.277605, 33.064419, 48.203140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899193, 33.027119, 48.073257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.747099, 32.706245, 47.889114>,  <31.655842, 32.513721, 47.778629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.747099, 32.706245, 47.889114>,  <31.899193, 33.027119, 48.073257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747099, 32.706245, 47.889114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346127, 0.338154, -0.875127,
		0.857682, -0.492095, 0.149079,
		-0.380234, -0.802181, -0.460356,
		31.633028, 32.465591, 47.751007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430588, 32.716007, 47.652199>,  <31.899193, 33.027119, 48.073257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430588, 32.716007, 47.652199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.080078, 32.599812, 47.498444>,  <31.869772, 32.530094, 47.406189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.080078, 32.599812, 47.498444>,  <32.430588, 32.716007, 47.652199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080078, 32.599812, 47.498444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325322, 0.231759, -0.916763,
		0.355392, -0.928389, -0.108584,
		-0.876277, -0.290485, -0.384391,
		31.817194, 32.512665, 47.383125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576378, 32.285862, 47.075542>,  <32.430588, 32.716007, 47.652199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576378, 32.285862, 47.075542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.196354, 32.397049, 47.018806>,  <31.968340, 32.463760, 46.984764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.196354, 32.397049, 47.018806>,  <32.576378, 32.285862, 47.075542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196354, 32.397049, 47.018806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223988, 0.290922, -0.930158,
		-0.217284, -0.915478, -0.338654,
		-0.950061, 0.277963, -0.141844,
		31.911335, 32.480438, 46.976254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501377, 32.191032, 46.394508>,  <32.576378, 32.285862, 47.075542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501377, 32.191032, 46.394508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199734, 32.435944, 46.489529>,  <32.018749, 32.582890, 46.546539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199734, 32.435944, 46.489529>,  <32.501377, 32.191032, 46.394508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199734, 32.435944, 46.489529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094279, 0.458885, -0.883479,
		-0.649946, -0.643844, -0.403775,
		-0.754110, 0.612282, 0.237549,
		31.973501, 32.619629, 46.560795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146538, 32.119221, 45.798965>,  <32.501377, 32.191032, 46.394508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146538, 32.119221, 45.798965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.992876, 32.455181, 45.952328>,  <31.900679, 32.656757, 46.044346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.992876, 32.455181, 45.952328>,  <32.146538, 32.119221, 45.798965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992876, 32.455181, 45.952328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009733, 0.411560, -0.911331,
		-0.923216, -0.353825, -0.149929,
		-0.384157, 0.839897, 0.383403,
		31.877628, 32.707150, 46.067348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671871, 32.422661, 45.339951>,  <32.146538, 32.119221, 45.798965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671871, 32.422661, 45.339951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.733839, 32.746689, 45.566151>,  <31.771019, 32.941105, 45.701870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.733839, 32.746689, 45.566151>,  <31.671871, 32.422661, 45.339951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733839, 32.746689, 45.566151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016563, 0.570200, -0.821339,
		-0.987789, 0.136607, 0.074917,
		0.154918, 0.810068, 0.565500,
		31.780315, 32.989708, 45.735802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139671, 32.842773, 45.249142>,  <31.671871, 32.422661, 45.339951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139671, 32.842773, 45.249142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452000, 33.072548, 45.347404>,  <31.639397, 33.210411, 45.406364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452000, 33.072548, 45.347404>,  <31.139671, 32.842773, 45.249142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452000, 33.072548, 45.347404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140514, 0.544601, -0.826840,
		-0.608751, 0.611094, 0.505951,
		0.780819, 0.574433, 0.245660,
		31.686245, 33.244877, 45.421101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874613, 33.530525, 45.016171>,  <31.139671, 32.842773, 45.249142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874613, 33.530525, 45.016171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.273100, 33.555611, 45.040226>,  <31.512192, 33.570663, 45.054661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.273100, 33.555611, 45.040226>,  <30.874613, 33.530525, 45.016171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273100, 33.555611, 45.040226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003424, 0.663244, -0.748395,
		-0.086824, 0.745771, 0.660521,
		0.996218, 0.062717, 0.060138,
		31.571966, 33.574425, 45.058266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967134, 34.240093, 44.968525>,  <30.874613, 33.530525, 45.016171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967134, 34.240093, 44.968525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.324167, 34.087029, 44.873135>,  <31.538387, 33.995190, 44.815899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.324167, 34.087029, 44.873135>,  <30.967134, 34.240093, 44.968525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324167, 34.087029, 44.873135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089434, 0.668655, -0.738175,
		0.441930, 0.637552, 0.631051,
		0.892580, -0.382659, -0.238480,
		31.591942, 33.972229, 44.801590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397373, 34.796852, 44.847576>,  <30.967134, 34.240093, 44.968525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397373, 34.796852, 44.847576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.574940, 34.492832, 44.657730>,  <31.681479, 34.310421, 44.543823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.574940, 34.492832, 44.657730>,  <31.397373, 34.796852, 44.847576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574940, 34.492832, 44.657730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222238, 0.606503, -0.763390,
		0.868073, 0.233402, 0.438148,
		0.443915, -0.760051, -0.474618,
		31.708115, 34.264816, 44.515347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010464, 35.039810, 44.569794>,  <31.397373, 34.796852, 44.847576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010464, 35.039810, 44.569794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914164, 34.720383, 44.349129>,  <31.856382, 34.528728, 44.216728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914164, 34.720383, 44.349129>,  <32.010464, 35.039810, 44.569794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914164, 34.720383, 44.349129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336099, 0.464622, -0.819246,
		0.910536, -0.382649, 0.156538,
		-0.240752, -0.798565, -0.551663,
		31.841938, 34.480812, 44.183628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.955959, 41.015018, 28.601719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641277, 40.872189, 28.400286>,  <42.452469, 40.786491, 28.279427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641277, 40.872189, 28.400286>,  <42.955959, 41.015018, 28.601719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641277, 40.872189, 28.400286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209111, -0.921656, 0.326836,
		-0.580832, 0.151820, 0.799740,
		-0.786706, -0.357072, -0.503581,
		42.405266, 40.765068, 28.249212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543655, 40.820721, 29.055922>,  <42.955959, 41.015018, 28.601719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543655, 40.820721, 29.055922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.456997, 40.614933, 28.724047>,  <42.405003, 40.491459, 28.524921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.456997, 40.614933, 28.724047>,  <42.543655, 40.820721, 29.055922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456997, 40.614933, 28.724047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024308, -0.852452, 0.522240,
		-0.975947, 0.092975, 0.197190,
		-0.216650, -0.514472, -0.829688,
		42.392002, 40.460590, 28.475140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246880, 40.143494, 29.287012>,  <42.543655, 40.820721, 29.055922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246880, 40.143494, 29.287012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.326809, 40.039925, 28.909010>,  <42.374767, 39.977783, 28.682209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.326809, 40.039925, 28.909010>,  <42.246880, 40.143494, 29.287012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326809, 40.039925, 28.909010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262942, -0.914908, 0.306275,
		-0.943892, -0.309681, -0.114736,
		0.199821, -0.258921, -0.945004,
		42.386757, 39.962250, 28.625509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777569, 39.567924, 29.105093>,  <42.246880, 40.143494, 29.287012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777569, 39.567924, 29.105093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068176, 39.517635, 28.834873>,  <42.242542, 39.487461, 28.672741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068176, 39.517635, 28.834873>,  <41.777569, 39.567924, 29.105093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068176, 39.517635, 28.834873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147352, -0.931746, 0.331868,
		-0.671162, -0.340652, -0.658405,
		0.726518, -0.125720, -0.675548,
		42.286133, 39.479919, 28.632208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545280, 39.025043, 28.730856>,  <41.777569, 39.567924, 29.105093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545280, 39.025043, 28.730856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.941448, 39.046326, 28.679874>,  <42.179150, 39.059097, 28.649286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.941448, 39.046326, 28.679874>,  <41.545280, 39.025043, 28.730856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941448, 39.046326, 28.679874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109244, -0.866429, 0.487202,
		-0.084506, -0.496457, -0.863938,
		0.990416, 0.053209, -0.127453,
		42.238575, 39.062290, 28.641638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778019, 38.394623, 28.478664>,  <41.545280, 39.025043, 28.730856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778019, 38.394623, 28.478664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.099152, 38.560192, 28.650307>,  <42.291832, 38.659534, 28.753292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.099152, 38.560192, 28.650307>,  <41.778019, 38.394623, 28.478664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099152, 38.560192, 28.650307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120964, -0.817841, 0.562587,
		0.583810, -0.399754, -0.706655,
		0.802828, 0.413924, 0.429108,
		42.340000, 38.684368, 28.779039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284821, 37.967556, 28.277248>,  <41.778019, 38.394623, 28.478664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284821, 37.967556, 28.277248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.425533, 38.165535, 28.595060>,  <42.509960, 38.284321, 28.785748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.425533, 38.165535, 28.595060>,  <42.284821, 37.967556, 28.277248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425533, 38.165535, 28.595060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179228, -0.868691, 0.461794,
		0.918765, -0.020048, -0.394296,
		0.351779, 0.494948, 0.794529,
		42.531067, 38.314018, 28.833420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923107, 37.549805, 28.623934>,  <42.284821, 37.967556, 28.277248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923107, 37.549805, 28.623934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.802410, 37.822453, 28.890570>,  <42.729992, 37.986042, 29.050552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.802410, 37.822453, 28.890570>,  <42.923107, 37.549805, 28.623934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802410, 37.822453, 28.890570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183333, -0.644647, 0.742172,
		0.935597, 0.346151, 0.069552,
		-0.301740, 0.681622, 0.666591,
		42.711887, 38.026939, 29.090548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443386, 37.602657, 29.123476>,  <42.923107, 37.549805, 28.623934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443386, 37.602657, 29.123476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131203, 37.723118, 29.342634>,  <42.943893, 37.795395, 29.474129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131203, 37.723118, 29.342634>,  <43.443386, 37.602657, 29.123476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131203, 37.723118, 29.342634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316806, -0.565012, 0.761837,
		0.538994, 0.768161, 0.345564,
		-0.780461, 0.301149, 0.547896,
		42.897064, 37.813461, 29.507004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673679, 37.802700, 29.792334>,  <43.443386, 37.602657, 29.123476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673679, 37.802700, 29.792334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.288723, 37.724331, 29.867607>,  <43.057747, 37.677311, 29.912771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.288723, 37.724331, 29.867607>,  <43.673679, 37.802700, 29.792334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288723, 37.724331, 29.867607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265398, -0.530208, 0.805260,
		-0.057993, 0.824920, 0.562266,
		-0.962393, -0.195924, 0.188184,
		43.000004, 37.665554, 29.924063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593269, 37.899826, 30.466257>,  <43.673679, 37.802700, 29.792334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593269, 37.899826, 30.466257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.246609, 37.713848, 30.393875>,  <43.038612, 37.602261, 30.350447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.246609, 37.713848, 30.393875>,  <43.593269, 37.899826, 30.466257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246609, 37.713848, 30.393875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021743, -0.327155, 0.944721,
		-0.498441, 0.822678, 0.273420,
		-0.866651, -0.464942, -0.180955,
		42.986614, 37.574364, 30.339588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126270, 38.020473, 31.066553>,  <43.593269, 37.899826, 30.466257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126270, 38.020473, 31.066553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945087, 37.707043, 30.896454>,  <42.836380, 37.518986, 30.794394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945087, 37.707043, 30.896454>,  <43.126270, 38.020473, 31.066553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945087, 37.707043, 30.896454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003293, -0.475513, 0.879703,
		-0.891527, 0.399866, 0.212805,
		-0.452955, -0.783578, -0.425249,
		42.809200, 37.471970, 30.768879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504787, 37.884636, 31.449080>,  <43.126270, 38.020473, 31.066553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504787, 37.884636, 31.449080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.584732, 37.534031, 31.273905>,  <42.632698, 37.323669, 31.168800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.584732, 37.534031, 31.273905>,  <42.504787, 37.884636, 31.449080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584732, 37.534031, 31.273905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020226, -0.443169, 0.896210,
		-0.979616, -0.187974, -0.070844,
		0.199860, -0.876508, -0.437938,
		42.644691, 37.271080, 31.142523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039539, 37.426781, 31.643362>,  <42.504787, 37.884636, 31.449080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039539, 37.426781, 31.643362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.322495, 37.166515, 31.532913>,  <42.492268, 37.010357, 31.466644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.322495, 37.166515, 31.532913>,  <42.039539, 37.426781, 31.643362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322495, 37.166515, 31.532913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045240, -0.431527, 0.900965,
		-0.705378, -0.624838, -0.334692,
		0.707386, -0.650663, -0.276122,
		42.534710, 36.971317, 31.450077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794044, 36.759037, 31.743481>,  <42.039539, 37.426781, 31.643362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794044, 36.759037, 31.743481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.188843, 36.694756, 31.744953>,  <42.425720, 36.656185, 31.745836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.188843, 36.694756, 31.744953>,  <41.794044, 36.759037, 31.743481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188843, 36.694756, 31.744953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102142, -0.609326, 0.786313,
		-0.124120, -0.776464, -0.617817,
		0.986997, -0.160702, 0.003680,
		42.484943, 36.646545, 31.746058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923775, 36.114780, 31.912226>,  <41.794044, 36.759037, 31.743481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923775, 36.114780, 31.912226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.297485, 36.237221, 31.985365>,  <42.521713, 36.310684, 32.029247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.297485, 36.237221, 31.985365>,  <41.923775, 36.114780, 31.912226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297485, 36.237221, 31.985365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075607, -0.671243, 0.737372,
		0.348445, -0.675083, -0.650268,
		0.934275, 0.306098, 0.182850,
		42.577766, 36.329052, 32.040218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292614, 35.544258, 32.074665>,  <41.923775, 36.114780, 31.912226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292614, 35.544258, 32.074665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.498878, 35.840775, 32.246521>,  <42.622635, 36.018684, 32.349632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.498878, 35.840775, 32.246521>,  <42.292614, 35.544258, 32.074665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498878, 35.840775, 32.246521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078380, -0.540159, 0.837905,
		0.853201, -0.398399, -0.336640,
		0.515660, 0.741287, 0.429637,
		42.653576, 36.063160, 32.375412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803329, 35.213558, 32.343693>,  <42.292614, 35.544258, 32.074665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803329, 35.213558, 32.343693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778950, 35.574268, 32.514847>,  <42.764324, 35.790695, 32.617538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778950, 35.574268, 32.514847>,  <42.803329, 35.213558, 32.343693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778950, 35.574268, 32.514847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017923, -0.429600, 0.902841,
		0.997980, 0.047354, 0.042345,
		-0.060945, 0.901777, 0.427884,
		42.760666, 35.844803, 32.643211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258968, 35.171551, 32.893364>,  <42.803329, 35.213558, 32.343693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258968, 35.171551, 32.893364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.018925, 35.475697, 32.992733>,  <42.874897, 35.658184, 33.052353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.018925, 35.475697, 32.992733>,  <43.258968, 35.171551, 32.893364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018925, 35.475697, 32.992733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211251, -0.450183, 0.867588,
		0.771518, 0.468169, 0.430787,
		-0.600111, 0.760364, 0.248423,
		42.838890, 35.703804, 33.067261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442017, 35.383331, 33.557419>,  <43.258968, 35.171551, 32.893364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442017, 35.383331, 33.557419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.074352, 35.537636, 33.525581>,  <42.853756, 35.630219, 33.506477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.074352, 35.537636, 33.525581>,  <43.442017, 35.383331, 33.557419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074352, 35.537636, 33.525581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282119, -0.503732, 0.816494,
		0.274878, 0.772943, 0.571840,
		-0.919158, 0.385764, -0.079597,
		42.798607, 35.653366, 33.501701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368805, 35.748360, 34.201519>,  <43.442017, 35.383331, 33.557419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368805, 35.748360, 34.201519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.017303, 35.670181, 34.027351>,  <42.806400, 35.623276, 33.922852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.017303, 35.670181, 34.027351>,  <43.368805, 35.748360, 34.201519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017303, 35.670181, 34.027351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273687, -0.541057, 0.795206,
		-0.391003, 0.817961, 0.421967,
		-0.878756, -0.195441, -0.435420,
		42.753677, 35.611549, 33.896725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872051, 36.070602, 34.711388>,  <43.368805, 35.748360, 34.201519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872051, 36.070602, 34.711388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.268917, 36.098503, 34.752861>,  <44.507034, 36.115246, 34.777744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.268917, 36.098503, 34.752861>,  <43.872051, 36.070602, 34.711388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268917, 36.098503, 34.752861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020517, 0.727505, -0.685795,
		-0.123265, 0.682547, 0.720372,
		0.992162, 0.069754, 0.103680,
		44.566566, 36.119431, 34.783966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085556, 36.807789, 34.822113>,  <43.872051, 36.070602, 34.711388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085556, 36.807789, 34.822113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.396591, 36.600876, 34.679131>,  <44.583210, 36.476727, 34.593342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.396591, 36.600876, 34.679131>,  <44.085556, 36.807789, 34.822113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396591, 36.600876, 34.679131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166997, 0.717984, -0.675729,
		0.606195, 0.465742, 0.644679,
		0.777586, -0.517284, -0.357461,
		44.629868, 36.445690, 34.571892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.622406, 37.310848, 34.773922>,  <44.085556, 36.807789, 34.822113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.622406, 37.310848, 34.773922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.741657, 37.002342, 34.548973>,  <44.813210, 36.817238, 34.414001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.741657, 37.002342, 34.548973>,  <44.622406, 37.310848, 34.773922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.741657, 37.002342, 34.548973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273707, 0.633501, -0.723713,
		0.914442, 0.061832, 0.399965,
		0.298127, -0.771267, -0.562376,
		44.831097, 36.770962, 34.380260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152779, 37.516579, 34.513535>,  <44.622406, 37.310848, 34.773922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152779, 37.516579, 34.513535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.069817, 37.208858, 34.271824>,  <45.020039, 37.024227, 34.126797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.069817, 37.208858, 34.271824>,  <45.152779, 37.516579, 34.513535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.069817, 37.208858, 34.271824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144825, 0.586759, -0.796705,
		0.967476, -0.252755, -0.010282,
		-0.207404, -0.769304, -0.604281,
		45.007595, 36.978065, 34.090538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708961, 37.411556, 34.041462>,  <45.152779, 37.516579, 34.513535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708961, 37.411556, 34.041462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.375858, 37.264614, 33.875782>,  <45.175995, 37.176449, 33.776375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.375858, 37.264614, 33.875782>,  <45.708961, 37.411556, 34.041462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375858, 37.264614, 33.875782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154688, 0.563958, -0.811187,
		0.531583, -0.739596, -0.412817,
		-0.832761, -0.367356, -0.414197,
		45.126030, 37.154408, 33.751522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906693, 37.198956, 33.420189>,  <45.708961, 37.411556, 34.041462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906693, 37.198956, 33.420189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.507435, 37.202538, 33.396072>,  <45.267879, 37.204685, 33.381603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.507435, 37.202538, 33.396072>,  <45.906693, 37.198956, 33.420189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.507435, 37.202538, 33.396072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057655, 0.459713, -0.886194,
		0.019783, -0.888022, -0.459375,
		-0.998140, 0.008953, -0.060293,
		45.207993, 37.205223, 33.377983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743637, 37.101177, 32.662155>,  <45.906693, 37.198956, 33.420189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743637, 37.101177, 32.662155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413059, 37.255833, 32.825867>,  <45.214714, 37.348625, 32.924091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413059, 37.255833, 32.825867>,  <45.743637, 37.101177, 32.662155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413059, 37.255833, 32.825867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109547, 0.602610, -0.790482,
		-0.552264, -0.698121, -0.455666,
		-0.826441, 0.386638, 0.409276,
		45.165127, 37.371822, 32.948650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152870, 37.159176, 32.158195>,  <45.743637, 37.101177, 32.662155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152870, 37.159176, 32.158195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.053673, 37.443439, 32.421547>,  <44.994152, 37.613998, 32.579556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.053673, 37.443439, 32.421547>,  <45.152870, 37.159176, 32.158195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053673, 37.443439, 32.421547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235637, 0.614944, -0.752542,
		-0.939666, -0.341766, 0.014953,
		-0.247998, 0.710661, 0.658375,
		44.979275, 37.656639, 32.619061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.578789, 37.564827, 31.869059>,  <45.152870, 37.159176, 32.158195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.578789, 37.564827, 31.869059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.670780, 37.798309, 32.180546>,  <44.725975, 37.938396, 32.367439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.670780, 37.798309, 32.180546>,  <44.578789, 37.564827, 31.869059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670780, 37.798309, 32.180546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269282, 0.807091, -0.525444,
		-0.935200, -0.088856, 0.342791,
		0.229975, 0.583703, 0.778718,
		44.739773, 37.973419, 32.414162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976871, 37.989258, 32.107422>,  <44.578789, 37.564827, 31.869059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976871, 37.989258, 32.107422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.316708, 38.170868, 32.214798>,  <44.520607, 38.279835, 32.279224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.316708, 38.170868, 32.214798>,  <43.976871, 37.989258, 32.107422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316708, 38.170868, 32.214798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309959, 0.841561, -0.442380,
		-0.426762, 0.292635, 0.855710,
		0.849588, 0.454026, 0.268442,
		44.571583, 38.307076, 32.295330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779510, 38.578861, 32.256886>,  <43.976871, 37.989258, 32.107422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779510, 38.578861, 32.256886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168953, 38.649738, 32.199337>,  <44.402618, 38.692265, 32.164806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168953, 38.649738, 32.199337>,  <43.779510, 38.578861, 32.256886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168953, 38.649738, 32.199337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228010, 0.783809, -0.577628,
		0.010417, 0.595185, 0.803521,
		0.973603, 0.177194, -0.143873,
		44.461033, 38.702896, 32.156174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919682, 39.322636, 32.353104>,  <43.779510, 38.578861, 32.256886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919682, 39.322636, 32.353104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232307, 39.207123, 32.131924>,  <44.419884, 39.137817, 31.999214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232307, 39.207123, 32.131924>,  <43.919682, 39.322636, 32.353104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232307, 39.207123, 32.131924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122385, 0.798192, -0.589840,
		0.611698, 0.528673, 0.588499,
		0.781568, -0.288781, -0.552954,
		44.466778, 39.120487, 31.966038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365551, 39.937012, 32.282814>,  <43.919682, 39.322636, 32.353104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365551, 39.937012, 32.282814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.461128, 39.676243, 31.994949>,  <44.518475, 39.519783, 31.822231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.461128, 39.676243, 31.994949>,  <44.365551, 39.937012, 32.282814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461128, 39.676243, 31.994949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001633, 0.740856, -0.671662,
		0.971033, 0.161661, 0.175955,
		0.238939, -0.651919, -0.719659,
		44.532810, 39.480667, 31.779051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818790, 40.210873, 31.861954>,  <44.365551, 39.937012, 32.282814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818790, 40.210873, 31.861954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.707806, 39.915760, 31.615801>,  <44.641216, 39.738693, 31.468109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.707806, 39.915760, 31.615801>,  <44.818790, 40.210873, 31.861954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707806, 39.915760, 31.615801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039072, 0.631335, -0.774525,
		0.959942, -0.238946, -0.146345,
		-0.277462, -0.737781, -0.615381,
		44.624565, 39.694427, 31.431187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.322117, 40.172939, 31.300005>,  <44.818790, 40.210873, 31.861954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.322117, 40.172939, 31.300005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.984539, 40.016972, 31.152645>,  <44.781994, 39.923389, 31.064230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.984539, 40.016972, 31.152645>,  <45.322117, 40.172939, 31.300005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.984539, 40.016972, 31.152645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079926, 0.587692, -0.805128,
		0.530441, -0.708929, -0.464815,
		-0.843946, -0.389922, -0.368397,
		44.731354, 39.899994, 31.042126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440292, 40.032635, 30.512415>,  <45.322117, 40.172939, 31.300005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440292, 40.032635, 30.512415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.047745, 40.016148, 30.587481>,  <44.812218, 40.006256, 30.632519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.047745, 40.016148, 30.587481>,  <45.440292, 40.032635, 30.512415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047745, 40.016148, 30.587481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178210, 0.560319, -0.808878,
		-0.071814, -0.827251, -0.557224,
		-0.981368, -0.041214, 0.187663,
		44.753334, 40.003784, 30.643780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.213467, 39.882504, 29.910997>,  <45.440292, 40.032635, 30.512415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.213467, 39.882504, 29.910997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.912434, 40.054649, 30.110361>,  <44.731815, 40.157936, 30.229980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.912434, 40.054649, 30.110361>,  <45.213467, 39.882504, 29.910997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912434, 40.054649, 30.110361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155159, 0.619684, -0.769362,
		-0.639960, -0.656339, -0.399587,
		-0.752580, 0.430361, 0.498410,
		44.686661, 40.183758, 30.259884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830334, 39.896637, 29.352955>,  <45.213467, 39.882504, 29.910997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830334, 39.896637, 29.352955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.649540, 40.134911, 29.618547>,  <44.541065, 40.277874, 29.777903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.649540, 40.134911, 29.618547>,  <44.830334, 39.896637, 29.352955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649540, 40.134911, 29.618547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179662, 0.668308, -0.721863,
		-0.873748, -0.445560, -0.195040,
		-0.451980, 0.595685, 0.663983,
		44.513947, 40.313618, 29.817743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055275, 40.104130, 29.169127>,  <44.830334, 39.896637, 29.352955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055275, 40.104130, 29.169127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200401, 40.393948, 29.403528>,  <44.287476, 40.567837, 29.544168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200401, 40.393948, 29.403528>,  <44.055275, 40.104130, 29.169127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200401, 40.393948, 29.403528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339706, 0.688416, -0.640846,
		-0.867737, 0.033438, 0.495898,
		0.362813, 0.724545, 0.586005,
		44.309246, 40.611313, 29.579330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635857, 40.623730, 29.203459>,  <44.055275, 40.104130, 29.169127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635857, 40.623730, 29.203459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.951935, 40.814571, 29.357325>,  <44.141582, 40.929077, 29.449644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.951935, 40.814571, 29.357325>,  <43.635857, 40.623730, 29.203459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951935, 40.814571, 29.357325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274190, 0.836559, -0.474330,
		-0.548099, 0.269341, 0.791860,
		0.790195, 0.477100, 0.384666,
		44.188992, 40.957703, 29.472725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419090, 41.095795, 29.723930>,  <43.635857, 40.623730, 29.203459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419090, 41.095795, 29.723930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774055, 41.202858, 29.573807>,  <43.987034, 41.267094, 29.483732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774055, 41.202858, 29.573807>,  <43.419090, 41.095795, 29.723930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774055, 41.202858, 29.573807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382471, 0.881985, -0.275351,
		0.257318, 0.387895, 0.885056,
		0.887414, 0.267655, -0.375310,
		44.040279, 41.283154, 29.461214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.495510, 38.075607, 41.410763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353848, 37.720726, 41.292473>,  <36.268848, 37.507797, 41.221500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353848, 37.720726, 41.292473>,  <36.495510, 38.075607, 41.410763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353848, 37.720726, 41.292473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320326, 0.182004, -0.929659,
		0.878615, -0.423973, 0.219735,
		-0.354158, -0.887199, -0.295721,
		36.247601, 37.454567, 41.203758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006985, 37.678112, 41.021919>,  <36.495510, 38.075607, 41.410763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006985, 37.678112, 41.021919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678032, 37.485996, 40.899933>,  <36.480659, 37.370728, 40.826740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678032, 37.485996, 40.899933>,  <37.006985, 37.678112, 41.021919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678032, 37.485996, 40.899933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465160, -0.258976, -0.846497,
		0.327588, -0.838003, 0.436391,
		-0.822382, -0.480294, -0.304967,
		36.431316, 37.341908, 40.808441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281311, 37.102993, 40.658142>,  <37.006985, 37.678112, 41.021919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281311, 37.102993, 40.658142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900253, 37.097107, 40.536652>,  <36.671619, 37.093575, 40.463757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900253, 37.097107, 40.536652>,  <37.281311, 37.102993, 40.658142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900253, 37.097107, 40.536652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287480, -0.369070, -0.883823,
		-0.099093, -0.929285, 0.355823,
		-0.952647, -0.014712, -0.303723,
		36.614460, 37.092693, 40.445534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204338, 36.493652, 40.319309>,  <37.281311, 37.102993, 40.658142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204338, 36.493652, 40.319309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925049, 36.748814, 40.189339>,  <36.757477, 36.901909, 40.111359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925049, 36.748814, 40.189339>,  <37.204338, 36.493652, 40.319309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925049, 36.748814, 40.189339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184035, -0.278680, -0.942586,
		-0.691824, -0.717929, 0.077184,
		-0.698220, 0.637899, -0.324922,
		36.715584, 36.940182, 40.091862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753555, 36.093727, 39.961060>,  <37.204338, 36.493652, 40.319309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753555, 36.093727, 39.961060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720585, 36.467125, 39.821468>,  <36.700802, 36.691166, 39.737713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720585, 36.467125, 39.821468>,  <36.753555, 36.093727, 39.961060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720585, 36.467125, 39.821468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134668, -0.357393, -0.924194,
		-0.987456, -0.029184, 0.155172,
		-0.082430, 0.933498, -0.348980,
		36.695854, 36.747173, 39.716774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256283, 36.126194, 39.429848>,  <36.753555, 36.093727, 39.961060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256283, 36.126194, 39.429848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489288, 36.447178, 39.378098>,  <36.629093, 36.639767, 39.347050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489288, 36.447178, 39.378098>,  <36.256283, 36.126194, 39.429848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489288, 36.447178, 39.378098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025976, -0.177462, -0.983785,
		-0.812403, 0.569712, -0.124219,
		0.582518, 0.802456, -0.129372,
		36.664043, 36.687916, 39.339287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936005, 36.503487, 38.886684>,  <36.256283, 36.126194, 39.429848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936005, 36.503487, 38.886684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310516, 36.640873, 38.916100>,  <36.535225, 36.723305, 38.933746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310516, 36.640873, 38.916100>,  <35.936005, 36.503487, 38.886684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310516, 36.640873, 38.916100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096603, -0.050518, -0.994040,
		-0.337701, 0.937807, -0.080479,
		0.936283, 0.343463, 0.073535,
		36.591400, 36.743912, 38.938160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009186, 37.131573, 38.527187>,  <35.936005, 36.503487, 38.886684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009186, 37.131573, 38.527187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376915, 36.975155, 38.544731>,  <36.597553, 36.881306, 38.555256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376915, 36.975155, 38.544731>,  <36.009186, 37.131573, 38.527187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376915, 36.975155, 38.544731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026091, -0.171782, -0.984789,
		0.392628, 0.904199, -0.168127,
		0.919327, -0.391043, 0.043855,
		36.652714, 36.857841, 38.557888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384609, 37.363163, 37.968288>,  <36.009186, 37.131573, 38.527187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384609, 37.363163, 37.968288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643181, 37.076302, 38.072460>,  <36.798325, 36.904186, 38.134964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643181, 37.076302, 38.072460>,  <36.384609, 37.363163, 37.968288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643181, 37.076302, 38.072460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184771, -0.184028, -0.965398,
		0.740262, 0.672182, 0.013547,
		0.646430, -0.717150, 0.260429,
		36.837109, 36.861156, 38.150589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020653, 37.536457, 37.613350>,  <36.384609, 37.363163, 37.968288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020653, 37.536457, 37.613350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004246, 37.144066, 37.689243>,  <36.994400, 36.908630, 37.734779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004246, 37.144066, 37.689243>,  <37.020653, 37.536457, 37.613350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004246, 37.144066, 37.689243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223331, -0.194094, -0.955223,
		0.973879, 0.003195, 0.227044,
		-0.041016, -0.980978, 0.189737,
		36.991940, 36.849773, 37.746166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517365, 37.313004, 37.283329>,  <37.020653, 37.536457, 37.613350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517365, 37.313004, 37.283329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342743, 36.959503, 37.350735>,  <37.237968, 36.747402, 37.391178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342743, 36.959503, 37.350735>,  <37.517365, 37.313004, 37.283329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342743, 36.959503, 37.350735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309652, -0.323461, -0.894141,
		0.844710, -0.338160, 0.414865,
		-0.436555, -0.883754, 0.168519,
		37.211777, 36.694378, 37.401291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041576, 36.741440, 36.993557>,  <37.517365, 37.313004, 37.283329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041576, 36.741440, 36.993557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672459, 36.587570, 37.002243>,  <37.450989, 36.495247, 37.007454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672459, 36.587570, 37.002243>,  <38.041576, 36.741440, 36.993557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672459, 36.587570, 37.002243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113565, -0.325428, -0.938722,
		0.368173, -0.863782, 0.343990,
		-0.922795, -0.384677, 0.021718,
		37.395618, 36.472168, 37.008759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003735, 36.127827, 36.543335>,  <38.041576, 36.741440, 36.993557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003735, 36.127827, 36.543335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623692, 36.246815, 36.580864>,  <37.395664, 36.318207, 36.603382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623692, 36.246815, 36.580864>,  <38.003735, 36.127827, 36.543335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623692, 36.246815, 36.580864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174716, -0.258385, -0.950112,
		-0.258385, -0.919104, 0.297466,
		0.950112, -0.297466, -0.093819,
		37.338657, 36.336056, 36.609009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372520, 35.661182, 36.290257>,  <38.003735, 36.127827, 36.543335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372520, 35.661182, 36.290257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212200, 36.026226, 36.257984>,  <37.116009, 36.245251, 36.238621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212200, 36.026226, 36.257984>,  <37.372520, 35.661182, 36.290257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212200, 36.026226, 36.257984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556762, -0.312557, -0.769626,
		-0.727583, -0.263546, 0.633377,
		-0.400799, 0.912607, -0.080679,
		37.091961, 36.300007, 36.233780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905777, 35.505737, 35.806782>,  <37.372520, 35.661182, 36.290257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905777, 35.505737, 35.806782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218452, 35.262764, 35.863338>,  <38.406059, 35.116982, 35.897274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218452, 35.262764, 35.863338>,  <37.905777, 35.505737, 35.806782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218452, 35.262764, 35.863338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620598, -0.735123, 0.272859,
		-0.061802, -0.301039, -0.951607,
		0.781690, -0.607429, 0.141392,
		38.452961, 35.080536, 35.905754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679066, 34.820255, 35.606075>,  <37.905777, 35.505737, 35.806782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679066, 34.820255, 35.606075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993156, 34.755215, 35.845070>,  <38.181610, 34.716190, 35.988464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993156, 34.755215, 35.845070>,  <37.679066, 34.820255, 35.606075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993156, 34.755215, 35.845070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455578, -0.805208, 0.379590,
		0.419375, -0.570262, -0.706347,
		0.785222, -0.162605, 0.597483,
		38.228722, 34.706432, 36.024315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737625, 34.114540, 35.648777>,  <37.679066, 34.820255, 35.606075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737625, 34.114540, 35.648777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959026, 34.207138, 35.968788>,  <38.091866, 34.262695, 36.160793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959026, 34.207138, 35.968788>,  <37.737625, 34.114540, 35.648777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959026, 34.207138, 35.968788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229155, -0.881188, 0.413516,
		0.800701, -0.412213, -0.434692,
		0.553503, 0.231491, 0.800029,
		38.125076, 34.276585, 36.208797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292622, 33.531677, 35.848770>,  <37.737625, 34.114540, 35.648777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292622, 33.531677, 35.848770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224323, 33.768429, 36.163864>,  <38.183346, 33.910480, 36.352921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224323, 33.768429, 36.163864>,  <38.292622, 33.531677, 35.848770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224323, 33.768429, 36.163864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267090, -0.797344, 0.541208,
		0.948425, -0.117988, 0.294227,
		-0.170744, 0.591880, 0.787734,
		38.173100, 33.945992, 36.400185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444836, 33.097431, 36.468414>,  <38.292622, 33.531677, 35.848770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444836, 33.097431, 36.468414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209934, 33.395065, 36.595833>,  <38.068993, 33.573647, 36.672283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209934, 33.395065, 36.595833>,  <38.444836, 33.097431, 36.468414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209934, 33.395065, 36.595833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382299, -0.601876, 0.701137,
		0.713430, 0.289966, 0.637916,
		-0.587252, 0.744087, 0.318543,
		38.033760, 33.618290, 36.691395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470131, 32.955994, 37.128666>,  <38.444836, 33.097431, 36.468414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470131, 32.955994, 37.128666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208069, 33.258175, 37.131634>,  <38.050831, 33.439484, 37.133415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208069, 33.258175, 37.131634>,  <38.470131, 32.955994, 37.128666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208069, 33.258175, 37.131634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481555, -0.425142, 0.766394,
		0.582131, 0.498536, 0.642328,
		-0.655155, 0.755458, 0.007415,
		38.011520, 33.484814, 37.133858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489231, 33.141777, 37.822929>,  <38.470131, 32.955994, 37.128666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489231, 33.141777, 37.822929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145676, 33.233150, 37.639568>,  <37.939541, 33.287975, 37.529552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145676, 33.233150, 37.639568>,  <38.489231, 33.141777, 37.822929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145676, 33.233150, 37.639568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512143, -0.391371, 0.764551,
		-0.004757, 0.891430, 0.453133,
		-0.858887, 0.228432, -0.458401,
		37.888008, 33.301682, 37.502048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154011, 33.622932, 38.249184>,  <38.489231, 33.141777, 37.822929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154011, 33.622932, 38.249184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838993, 33.479115, 38.048985>,  <37.649982, 33.392822, 37.928864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838993, 33.479115, 38.048985>,  <38.154011, 33.622932, 38.249184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838993, 33.479115, 38.048985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550514, 0.045471, 0.833587,
		-0.276953, 0.932020, -0.233745,
		-0.787547, -0.359544, -0.500497,
		37.602730, 33.371250, 37.898834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650524, 34.010551, 38.443634>,  <38.154011, 33.622932, 38.249184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650524, 34.010551, 38.443634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459145, 33.683807, 38.314743>,  <37.344315, 33.487762, 38.237408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459145, 33.683807, 38.314743>,  <37.650524, 34.010551, 38.443634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459145, 33.683807, 38.314743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535931, -0.019044, 0.844047,
		-0.695601, 0.576528, -0.428667,
		-0.478453, -0.816856, -0.322226,
		37.315609, 33.438751, 38.218075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885998, 34.153648, 38.513199>,  <37.650524, 34.010551, 38.443634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885998, 34.153648, 38.513199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960670, 33.760757, 38.505432>,  <37.005474, 33.525024, 38.500774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960670, 33.760757, 38.505432>,  <36.885998, 34.153648, 38.513199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960670, 33.760757, 38.505432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598546, -0.129387, 0.790570,
		-0.779032, -0.135968, -0.612063,
		0.186685, -0.982228, -0.019413,
		37.016678, 33.466087, 38.499607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337578, 33.872311, 38.963238>,  <36.885998, 34.153648, 38.513199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337578, 33.872311, 38.963238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577827, 33.553349, 38.939934>,  <36.721977, 33.361973, 38.925953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577827, 33.553349, 38.939934>,  <36.337578, 33.872311, 38.963238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577827, 33.553349, 38.939934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451512, -0.398418, 0.798373,
		-0.659839, -0.453218, -0.599338,
		0.600624, -0.797406, -0.058259,
		36.758015, 33.314125, 38.922455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869797, 33.303986, 39.030144>,  <36.337578, 33.872311, 38.963238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869797, 33.303986, 39.030144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238136, 33.180885, 39.125919>,  <36.459141, 33.107025, 39.183384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238136, 33.180885, 39.125919>,  <35.869797, 33.303986, 39.030144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238136, 33.180885, 39.125919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338990, -0.328423, 0.881603,
		-0.192675, -0.892989, -0.406751,
		0.920849, -0.307747, 0.239436,
		36.514389, 33.088562, 39.197750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777138, 32.728088, 39.303413>,  <35.869797, 33.303986, 39.030144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777138, 32.728088, 39.303413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138454, 32.812771, 39.452671>,  <36.355244, 32.863583, 39.542225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138454, 32.812771, 39.452671>,  <35.777138, 32.728088, 39.303413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138454, 32.812771, 39.452671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302994, -0.300944, 0.904228,
		0.303730, -0.929845, -0.207694,
		0.903295, 0.211711, 0.373143,
		36.409443, 32.876286, 39.564613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990067, 32.189545, 39.785507>,  <35.777138, 32.728088, 39.303413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990067, 32.189545, 39.785507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225094, 32.480953, 39.926376>,  <36.366112, 32.655796, 40.010899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225094, 32.480953, 39.926376>,  <35.990067, 32.189545, 39.785507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225094, 32.480953, 39.926376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259294, -0.242756, 0.934792,
		0.766505, -0.640570, 0.046265,
		0.587569, 0.728518, 0.352170,
		36.401363, 32.699509, 40.032028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468365, 31.555061, 39.755100>,  <35.990067, 32.189545, 39.785507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468365, 31.555061, 39.755100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390667, 31.173615, 39.663109>,  <36.344048, 30.944746, 39.607914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390667, 31.173615, 39.663109>,  <36.468365, 31.555061, 39.755100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390667, 31.173615, 39.663109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175885, 0.264499, -0.948211,
		0.965057, -0.143734, -0.219103,
		-0.194243, -0.953615, -0.229976,
		36.332394, 30.887529, 39.594116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694305, 31.611378, 39.164551>,  <36.468365, 31.555061, 39.755100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694305, 31.611378, 39.164551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501129, 31.261181, 39.157875>,  <36.385223, 31.051062, 39.153870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501129, 31.261181, 39.157875>,  <36.694305, 31.611378, 39.164551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501129, 31.261181, 39.157875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344728, 0.207611, -0.915457,
		0.804942, -0.436357, -0.402071,
		-0.482940, -0.875494, -0.016690,
		36.356247, 30.998533, 39.152866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844639, 31.346893, 38.527122>,  <36.694305, 31.611378, 39.164551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844639, 31.346893, 38.527122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508999, 31.162653, 38.642879>,  <36.307613, 31.052109, 38.712334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508999, 31.162653, 38.642879>,  <36.844639, 31.346893, 38.527122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508999, 31.162653, 38.642879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411731, 0.190099, -0.891257,
		0.355502, -0.867011, -0.349158,
		-0.839105, -0.460603, 0.289395,
		36.257267, 31.024471, 38.729698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565781, 31.039108, 37.984196>,  <36.844639, 31.346893, 38.527122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565781, 31.039108, 37.984196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245861, 31.072914, 38.221912>,  <36.053909, 31.093199, 38.364544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245861, 31.072914, 38.221912>,  <36.565781, 31.039108, 37.984196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245861, 31.072914, 38.221912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530881, 0.362485, -0.766009,
		-0.280163, -0.928150, -0.245045,
		-0.799796, 0.084517, 0.594292,
		36.005920, 31.098269, 38.400200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026165, 30.795076, 37.544628>,  <36.565781, 31.039108, 37.984196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026165, 30.795076, 37.544628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822788, 30.985310, 37.831768>,  <35.700760, 31.099449, 38.004051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822788, 30.985310, 37.831768>,  <36.026165, 30.795076, 37.544628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822788, 30.985310, 37.831768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617648, 0.379448, -0.688861,
		-0.599996, -0.793626, 0.100814,
		-0.508444, 0.475582, 0.717849,
		35.670254, 31.127985, 38.047123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329781, 30.683825, 37.367939>,  <36.026165, 30.795076, 37.544628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329781, 30.683825, 37.367939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287590, 30.990156, 37.621674>,  <35.262276, 31.173956, 37.773914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287590, 30.990156, 37.621674>,  <35.329781, 30.683825, 37.367939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287590, 30.990156, 37.621674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703737, 0.393201, -0.591733,
		-0.702587, -0.508818, 0.497469,
		-0.105479, 0.765831, 0.634332,
		35.255947, 31.219906, 37.811974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558285, 30.759115, 37.430691>,  <35.329781, 30.683825, 37.367939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558285, 30.759115, 37.430691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741478, 31.097525, 37.539871>,  <34.851395, 31.300570, 37.605381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741478, 31.097525, 37.539871>,  <34.558285, 30.759115, 37.430691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741478, 31.097525, 37.539871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575386, 0.516163, -0.634434,
		-0.677633, 0.133504, 0.723181,
		0.457979, 0.846021, 0.272952,
		34.878872, 31.351332, 37.621758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018089, 31.221018, 37.434620>,  <34.558285, 30.759115, 37.430691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018089, 31.221018, 37.434620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342640, 31.454622, 37.424881>,  <34.537373, 31.594786, 37.419037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342640, 31.454622, 37.424881>,  <34.018089, 31.221018, 37.434620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342640, 31.454622, 37.424881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482743, 0.646036, -0.591267,
		-0.329576, 0.491497, 0.806108,
		0.811381, 0.584011, -0.024349,
		34.586056, 31.629826, 37.417576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896397, 31.921171, 37.639423>,  <34.018089, 31.221018, 37.434620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896397, 31.921171, 37.639423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226788, 31.961212, 37.417530>,  <34.425022, 31.985237, 37.284393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226788, 31.961212, 37.417530>,  <33.896397, 31.921171, 37.639423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226788, 31.961212, 37.417530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421477, 0.763151, -0.489855,
		0.374314, 0.638420, 0.672539,
		0.825982, 0.100101, -0.554738,
		34.474583, 31.991241, 37.251110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776756, 32.536144, 37.319977>,  <33.896397, 31.921171, 37.639423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776756, 32.536144, 37.319977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116379, 32.435879, 37.133957>,  <34.320152, 32.375721, 37.022346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116379, 32.435879, 37.133957>,  <33.776756, 32.536144, 37.319977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116379, 32.435879, 37.133957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116742, 0.769488, -0.627900,
		0.515242, 0.587413, 0.624076,
		0.849056, -0.250665, -0.465049,
		34.371098, 32.360680, 36.994442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118855, 33.218899, 37.287224>,  <33.776756, 32.536144, 37.319977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118855, 33.218899, 37.287224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253742, 32.959457, 37.014282>,  <34.334675, 32.803795, 36.850517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253742, 32.959457, 37.014282>,  <34.118855, 33.218899, 37.287224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253742, 32.959457, 37.014282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108822, 0.693091, -0.712589,
		0.935116, 0.314552, 0.163141,
		0.337218, -0.648600, -0.682351,
		34.354908, 32.764877, 36.809578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546696, 33.583424, 36.755322>,  <34.118855, 33.218899, 37.287224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546696, 33.583424, 36.755322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390755, 33.264751, 36.570576>,  <34.297188, 33.073547, 36.459728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390755, 33.264751, 36.570576>,  <34.546696, 33.583424, 36.755322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390755, 33.264751, 36.570576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216861, 0.566869, -0.794753,
		0.894977, -0.209679, -0.393765,
		-0.389856, -0.796677, -0.461863,
		34.273796, 33.025749, 36.432018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.177631, 29.800285, 43.261116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.825275, 29.636875, 43.165493>,  <36.613861, 29.538830, 43.108120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.825275, 29.636875, 43.165493>,  <37.177631, 29.800285, 43.261116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825275, 29.636875, 43.165493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269293, -0.017198, -0.962905,
		0.389259, -0.912585, 0.125162,
		-0.880886, -0.408525, -0.239058,
		36.561008, 29.514318, 43.093777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331100, 29.281015, 42.788376>,  <37.177631, 29.800285, 43.261116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331100, 29.281015, 42.788376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.948479, 29.357651, 42.700478>,  <36.718903, 29.403631, 42.647739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.948479, 29.357651, 42.700478>,  <37.331100, 29.281015, 42.788376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948479, 29.357651, 42.700478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244633, 0.117467, -0.962474,
		-0.158585, -0.974420, -0.159233,
		-0.956559, 0.191588, -0.219747,
		36.661510, 29.415127, 42.634552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255127, 28.980759, 42.122505>,  <37.331100, 29.281015, 42.788376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255127, 28.980759, 42.122505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.935360, 29.217569, 42.163368>,  <36.743500, 29.359655, 42.187885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.935360, 29.217569, 42.163368>,  <37.255127, 28.980759, 42.122505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935360, 29.217569, 42.163368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010383, 0.156400, -0.987639,
		-0.600688, -0.790596, -0.118882,
		-0.799416, 0.592028, 0.102156,
		36.695534, 29.395178, 42.194016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824051, 28.930338, 41.555920>,  <37.255127, 28.980759, 42.122505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824051, 28.930338, 41.555920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.692265, 29.288885, 41.674561>,  <36.613194, 29.504013, 41.745747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.692265, 29.288885, 41.674561>,  <36.824051, 28.930338, 41.555920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692265, 29.288885, 41.674561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213186, 0.235403, -0.948229,
		-0.919784, -0.375643, 0.113535,
		-0.329469, 0.896369, 0.296601,
		36.593422, 29.557796, 41.763542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245262, 29.068581, 41.199387>,  <36.824051, 28.930338, 41.555920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245262, 29.068581, 41.199387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.364948, 29.437639, 41.296707>,  <36.436760, 29.659075, 41.355099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.364948, 29.437639, 41.296707>,  <36.245262, 29.068581, 41.199387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364948, 29.437639, 41.296707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000190, 0.254922, -0.966961,
		-0.954186, 0.289374, 0.076101,
		0.299213, 0.922647, 0.243298,
		36.454712, 29.714434, 41.369698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845490, 29.462648, 40.784603>,  <36.245262, 29.068581, 41.199387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845490, 29.462648, 40.784603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.131363, 29.712166, 40.911167>,  <36.302887, 29.861876, 40.987106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.131363, 29.712166, 40.911167>,  <35.845490, 29.462648, 40.784603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131363, 29.712166, 40.911167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025127, 0.474969, -0.879644,
		-0.699000, 0.620714, 0.355125,
		0.714680, 0.623794, 0.316407,
		36.345768, 29.899303, 41.006088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512020, 30.178316, 40.856907>,  <35.845490, 29.462648, 40.784603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512020, 30.178316, 40.856907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.903332, 30.182226, 40.774086>,  <36.138119, 30.184572, 40.724392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.903332, 30.182226, 40.774086>,  <35.512020, 30.178316, 40.856907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903332, 30.182226, 40.774086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192305, 0.415646, -0.888964,
		0.077371, 0.909474, 0.408498,
		0.978280, 0.009776, -0.207055,
		36.196815, 30.185160, 40.711967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578842, 30.744646, 40.509289>,  <35.512020, 30.178316, 40.856907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578842, 30.744646, 40.509289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.944286, 30.608578, 40.420208>,  <36.163555, 30.526937, 40.366760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.944286, 30.608578, 40.420208>,  <35.578842, 30.744646, 40.509289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944286, 30.608578, 40.420208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048856, 0.451914, -0.890723,
		0.403640, 0.824656, 0.396255,
		0.913613, -0.340172, -0.222700,
		36.218369, 30.506527, 40.353397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914047, 31.250196, 40.192966>,  <35.578842, 30.744646, 40.509289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914047, 31.250196, 40.192966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.127060, 30.932495, 40.075958>,  <36.254868, 30.741875, 40.005753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.127060, 30.932495, 40.075958>,  <35.914047, 31.250196, 40.192966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127060, 30.932495, 40.075958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064301, 0.306641, -0.949651,
		0.843964, 0.524529, 0.112224,
		0.532532, -0.794255, -0.292522,
		36.286819, 30.694218, 39.988201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337540, 31.906225, 40.415928>,  <35.914047, 31.250196, 40.192966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337540, 31.906225, 40.415928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.344051, 32.302582, 40.469395>,  <36.347958, 32.540398, 40.501476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.344051, 32.302582, 40.469395>,  <36.337540, 31.906225, 40.415928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344051, 32.302582, 40.469395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105284, -0.131245, 0.985743,
		0.994309, -0.030118, 0.102189,
		0.016277, 0.990892, 0.133669,
		36.348934, 32.599850, 40.509495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839546, 32.030209, 40.894863>,  <36.337540, 31.906225, 40.415928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839546, 32.030209, 40.894863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.596851, 32.347694, 40.912262>,  <36.451233, 32.538185, 40.922699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.596851, 32.347694, 40.912262>,  <36.839546, 32.030209, 40.894863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596851, 32.347694, 40.912262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052144, -0.094340, 0.994173,
		0.793189, 0.600936, 0.098627,
		-0.606739, 0.793710, 0.043494,
		36.414829, 32.585808, 40.925312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989582, 32.393738, 41.498219>,  <36.839546, 32.030209, 40.894863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989582, 32.393738, 41.498219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.623260, 32.520031, 41.398933>,  <36.403465, 32.595806, 41.339363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.623260, 32.520031, 41.398933>,  <36.989582, 32.393738, 41.498219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623260, 32.520031, 41.398933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292831, -0.101975, 0.950711,
		0.274858, 0.943353, 0.185846,
		-0.915807, 0.315732, -0.248215,
		36.348518, 32.614750, 41.324471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833096, 32.922691, 41.995106>,  <36.989582, 32.393738, 41.498219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833096, 32.922691, 41.995106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.476704, 32.824165, 41.842541>,  <36.262867, 32.765049, 41.750999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.476704, 32.824165, 41.842541>,  <36.833096, 32.922691, 41.995106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476704, 32.824165, 41.842541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371924, -0.085896, 0.924281,
		-0.260422, 0.965377, -0.015077,
		-0.890984, -0.246310, -0.381416,
		36.209408, 32.750271, 41.728115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342587, 33.298279, 42.445724>,  <36.833096, 32.922691, 41.995106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342587, 33.298279, 42.445724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.118908, 33.029205, 42.251900>,  <35.984699, 32.867760, 42.135605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.118908, 33.029205, 42.251900>,  <36.342587, 33.298279, 42.445724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118908, 33.029205, 42.251900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459133, -0.235382, 0.856616,
		-0.690287, 0.701494, -0.177226,
		-0.559196, -0.672682, -0.484561,
		35.951149, 32.827400, 42.106533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628670, 33.325100, 42.620876>,  <36.342587, 33.298279, 42.445724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628670, 33.325100, 42.620876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.668781, 32.948463, 42.492279>,  <35.692848, 32.722481, 42.415123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.668781, 32.948463, 42.492279>,  <35.628670, 33.325100, 42.620876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668781, 32.948463, 42.492279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561439, -0.320310, 0.763012,
		-0.821420, 0.103987, -0.560764,
		0.100274, -0.941588, -0.321492,
		35.698864, 32.665985, 42.395832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927952, 33.052368, 42.662636>,  <35.628670, 33.325100, 42.620876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927952, 33.052368, 42.662636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.170029, 32.733936, 42.662971>,  <35.315277, 32.542877, 42.663174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.170029, 32.733936, 42.662971>,  <34.927952, 33.052368, 42.662636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170029, 32.733936, 42.662971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575050, -0.436435, 0.691984,
		-0.550507, -0.419268, -0.721912,
		0.605195, -0.796077, 0.000839,
		35.351585, 32.495113, 42.663223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490707, 32.534382, 42.711082>,  <34.927952, 33.052368, 42.662636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490707, 32.534382, 42.711082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848160, 32.411572, 42.842022>,  <35.062634, 32.337887, 42.920586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848160, 32.411572, 42.842022>,  <34.490707, 32.534382, 42.711082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848160, 32.411572, 42.842022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422563, -0.329890, 0.844164,
		-0.151187, -0.892699, -0.424536,
		0.893635, -0.307020, 0.327347,
		35.116249, 32.319466, 42.940228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404556, 31.947351, 42.948391>,  <34.490707, 32.534382, 42.711082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404556, 31.947351, 42.948391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.755150, 32.037193, 43.118721>,  <34.965508, 32.091099, 43.220921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.755150, 32.037193, 43.118721>,  <34.404556, 31.947351, 42.948391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755150, 32.037193, 43.118721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302304, -0.431614, 0.849895,
		0.374683, -0.873649, -0.310404,
		0.876484, 0.224606, 0.425826,
		35.018097, 32.104576, 43.246468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608368, 31.254885, 43.351902>,  <34.404556, 31.947351, 42.948391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608368, 31.254885, 43.351902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852310, 31.524336, 43.518894>,  <34.998676, 31.686007, 43.619091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852310, 31.524336, 43.518894>,  <34.608368, 31.254885, 43.351902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852310, 31.524336, 43.518894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431197, -0.159945, 0.887968,
		0.664937, -0.721554, 0.192923,
		0.609860, 0.673630, 0.417485,
		35.035267, 31.726425, 43.644138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796299, 30.944780, 43.891747>,  <34.608368, 31.254885, 43.351902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796299, 30.944780, 43.891747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848598, 31.336744, 43.951981>,  <34.879978, 31.571922, 43.988121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.848598, 31.336744, 43.951981>,  <34.796299, 30.944780, 43.891747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848598, 31.336744, 43.951981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354404, -0.095658, 0.930186,
		0.925906, -0.174994, 0.334778,
		0.130752, 0.979912, 0.150589,
		34.887825, 31.630718, 43.997158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315685, 30.959997, 44.274315>,  <34.796299, 30.944780, 43.891747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315685, 30.959997, 44.274315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103798, 31.295219, 44.326553>,  <34.976665, 31.496353, 44.357895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103798, 31.295219, 44.326553>,  <35.315685, 30.959997, 44.274315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103798, 31.295219, 44.326553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071095, -0.109554, 0.991435,
		0.845186, 0.534470, -0.001549,
		-0.529723, 0.838057, 0.130592,
		34.944881, 31.546637, 44.365730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586563, 31.185183, 44.952728>,  <35.315685, 30.959997, 44.274315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586563, 31.185183, 44.952728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.273495, 31.428688, 44.900837>,  <35.085655, 31.574791, 44.869701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.273495, 31.428688, 44.900837>,  <35.586563, 31.185183, 44.952728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273495, 31.428688, 44.900837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121290, 0.055268, 0.991077,
		0.610503, 0.791423, 0.030580,
		-0.782671, 0.608765, -0.129733,
		35.038692, 31.611317, 44.861916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737766, 31.800268, 45.329628>,  <35.586563, 31.185183, 44.952728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737766, 31.800268, 45.329628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.348373, 31.733652, 45.266888>,  <35.114738, 31.693684, 45.229244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.348373, 31.733652, 45.266888>,  <35.737766, 31.800268, 45.329628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348373, 31.733652, 45.266888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170243, 0.069375, 0.982957,
		-0.152819, 0.983592, -0.095888,
		-0.973480, -0.166538, -0.156848,
		35.056328, 31.683691, 45.219833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.835051, 30.701525, 43.944344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.182890, 30.759163, 44.133251>,  <31.391594, 30.793745, 44.246597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.182890, 30.759163, 44.133251>,  <30.835051, 30.701525, 43.944344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182890, 30.759163, 44.133251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430454, 0.247326, -0.868066,
		-0.241888, 0.958158, 0.153048,
		0.869598, 0.144094, 0.472268,
		31.443769, 30.802391, 44.274933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102922, 31.412296, 43.812019>,  <30.835051, 30.701525, 43.944344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102922, 31.412296, 43.812019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425993, 31.187082, 43.882050>,  <31.619835, 31.051954, 43.924068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425993, 31.187082, 43.882050>,  <31.102922, 31.412296, 43.812019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425993, 31.187082, 43.882050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428891, 0.357245, -0.829716,
		0.404614, 0.745230, 0.530018,
		0.807676, -0.563034, 0.175076,
		31.668295, 31.018171, 43.934574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654972, 31.834192, 43.877991>,  <31.102922, 31.412296, 43.812019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654972, 31.834192, 43.877991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.812994, 31.478493, 43.785759>,  <31.907808, 31.265074, 43.730419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.812994, 31.478493, 43.785759>,  <31.654972, 31.834192, 43.877991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812994, 31.478493, 43.785759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510785, 0.421244, -0.749434,
		0.763563, 0.178294, 0.620631,
		0.395057, -0.889249, -0.230577,
		31.931511, 31.211718, 43.716587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362278, 32.005035, 43.792011>,  <31.654972, 31.834192, 43.877991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362278, 32.005035, 43.792011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.293995, 31.654547, 43.611748>,  <32.253025, 31.444254, 43.503590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.293995, 31.654547, 43.611748>,  <32.362278, 32.005035, 43.792011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293995, 31.654547, 43.611748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462689, 0.332519, -0.821797,
		0.869929, -0.348804, 0.348654,
		-0.170712, -0.876223, -0.450655,
		32.242783, 31.391680, 43.476551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980618, 31.893507, 43.485867>,  <32.362278, 32.005035, 43.792011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980618, 31.893507, 43.485867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.708176, 31.658030, 43.311722>,  <32.544712, 31.516743, 43.207237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.708176, 31.658030, 43.311722>,  <32.980618, 31.893507, 43.485867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708176, 31.658030, 43.311722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370818, 0.235361, -0.898387,
		0.631341, -0.773334, 0.057993,
		-0.681104, -0.588693, -0.435359,
		32.503845, 31.481422, 43.181114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335629, 31.572742, 42.906269>,  <32.980618, 31.893507, 43.485867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335629, 31.572742, 42.906269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.944103, 31.537762, 42.832222>,  <32.709187, 31.516773, 42.787796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.944103, 31.537762, 42.832222>,  <33.335629, 31.572742, 42.906269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944103, 31.537762, 42.832222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170505, 0.152298, -0.973516,
		0.113324, -0.984458, -0.134162,
		-0.978819, -0.087447, -0.185114,
		32.650459, 31.511526, 42.776688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335251, 31.130177, 42.334423>,  <33.335629, 31.572742, 42.906269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335251, 31.130177, 42.334423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.009312, 31.362047, 42.335087>,  <32.813747, 31.501169, 42.335484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.009312, 31.362047, 42.335087>,  <33.335251, 31.130177, 42.334423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009312, 31.362047, 42.335087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079800, 0.115009, -0.990154,
		-0.574162, -0.806689, -0.139973,
		-0.814844, 0.579678, 0.001660,
		32.764858, 31.535950, 42.335587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980686, 31.028524, 41.721302>,  <33.335251, 31.130177, 42.334423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980686, 31.028524, 41.721302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826576, 31.375433, 41.847412>,  <32.734112, 31.583578, 41.923080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826576, 31.375433, 41.847412>,  <32.980686, 31.028524, 41.721302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826576, 31.375433, 41.847412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039831, 0.325707, -0.944632,
		-0.921942, -0.376500, -0.090943,
		-0.385274, 0.867273, 0.315279,
		32.710995, 31.635614, 41.941998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371040, 31.076180, 41.279137>,  <32.980686, 31.028524, 41.721302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371040, 31.076180, 41.279137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.464153, 31.436449, 41.425884>,  <32.520023, 31.652611, 41.513935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.464153, 31.436449, 41.425884>,  <32.371040, 31.076180, 41.279137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464153, 31.436449, 41.425884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013898, 0.380276, -0.924769,
		-0.972429, 0.210173, 0.101040,
		0.232785, 0.900676, 0.366871,
		32.533989, 31.706652, 41.535946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919363, 31.453741, 40.969749>,  <32.371040, 31.076180, 41.279137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919363, 31.453741, 40.969749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195023, 31.709776, 41.105610>,  <32.360420, 31.863398, 41.187126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195023, 31.709776, 41.105610>,  <31.919363, 31.453741, 40.969749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195023, 31.709776, 41.105610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036627, 0.437359, -0.898541,
		-0.723693, 0.631669, 0.277962,
		0.689149, 0.640087, 0.339650,
		32.401768, 31.901802, 41.207504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627890, 32.188972, 40.859207>,  <31.919363, 31.453741, 40.969749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627890, 32.188972, 40.859207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.026115, 32.204742, 40.893387>,  <32.265049, 32.214203, 40.913895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.026115, 32.204742, 40.893387>,  <31.627890, 32.188972, 40.859207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026115, 32.204742, 40.893387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052658, 0.519154, -0.853057,
		-0.077992, 0.853771, 0.514774,
		0.995562, 0.039425, 0.085447,
		32.324783, 32.216568, 40.919022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863934, 32.927265, 40.812145>,  <31.627890, 32.188972, 40.859207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863934, 32.927265, 40.812145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.189907, 32.717815, 40.712791>,  <32.385490, 32.592144, 40.653179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.189907, 32.717815, 40.712791>,  <31.863934, 32.927265, 40.812145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189907, 32.717815, 40.712791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085698, 0.532739, -0.841929,
		0.573180, 0.664832, 0.479022,
		0.814936, -0.523628, -0.248381,
		32.434387, 32.560726, 40.638279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331486, 33.423660, 40.561455>,  <31.863934, 32.927265, 40.812145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331486, 33.423660, 40.561455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.491501, 33.086193, 40.418243>,  <32.587509, 32.883713, 40.332317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.491501, 33.086193, 40.418243>,  <32.331486, 33.423660, 40.561455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491501, 33.086193, 40.418243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044116, 0.407922, -0.911950,
		0.915435, 0.349022, 0.200405,
		0.400041, -0.843672, -0.358029,
		32.611511, 32.833092, 40.310833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685448, 33.644817, 40.050186>,  <32.331486, 33.423660, 40.561455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685448, 33.644817, 40.050186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659771, 33.254589, 39.966148>,  <32.644367, 33.020451, 39.915726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659771, 33.254589, 39.966148>,  <32.685448, 33.644817, 40.050186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659771, 33.254589, 39.966148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062746, 0.214055, -0.974805,
		0.995963, -0.049390, -0.074953,
		-0.064190, -0.975572, -0.210092,
		32.640514, 32.961918, 39.903122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340290, 33.846592, 40.232735>,  <32.685448, 33.644817, 40.050186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340290, 33.846592, 40.232735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390503, 34.231907, 40.327656>,  <33.420631, 34.463097, 40.384609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390503, 34.231907, 40.327656>,  <33.340290, 33.846592, 40.232735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390503, 34.231907, 40.327656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408207, -0.167862, 0.897323,
		0.904218, -0.209509, 0.372151,
		0.125528, 0.963290, 0.237307,
		33.428162, 34.520893, 40.398849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766315, 33.926956, 40.821232>,  <33.340290, 33.846592, 40.232735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766315, 33.926956, 40.821232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524445, 34.242153, 40.774883>,  <33.379322, 34.431271, 40.747074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524445, 34.242153, 40.774883>,  <33.766315, 33.926956, 40.821232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524445, 34.242153, 40.774883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269540, -0.065555, 0.960756,
		0.749474, 0.612182, 0.252035,
		-0.604679, 0.787995, -0.115875,
		33.343040, 34.478550, 40.740120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661205, 34.001511, 41.490665>,  <33.766315, 33.926956, 40.821232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661205, 34.001511, 41.490665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.416569, 34.266830, 41.318165>,  <33.269787, 34.426022, 41.214664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.416569, 34.266830, 41.318165>,  <33.661205, 34.001511, 41.490665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416569, 34.266830, 41.318165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433762, 0.174745, 0.883920,
		0.661667, 0.727663, 0.180843,
		-0.611595, 0.663303, -0.431255,
		33.233089, 34.465820, 41.188789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681450, 34.730949, 41.857925>,  <33.661205, 34.001511, 41.490665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681450, 34.730949, 41.857925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.319595, 34.723476, 41.687614>,  <33.102482, 34.718990, 41.585426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.319595, 34.723476, 41.687614>,  <33.681450, 34.730949, 41.857925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319595, 34.723476, 41.687614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425074, 0.111809, 0.898227,
		0.030822, 0.993554, -0.109089,
		-0.904634, -0.018685, -0.425780,
		33.048206, 34.717873, 41.559879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295494, 35.194443, 42.161217>,  <33.681450, 34.730949, 41.857925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295494, 35.194443, 42.161217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.986561, 35.008377, 41.988186>,  <32.801201, 34.896736, 41.884369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.986561, 35.008377, 41.988186>,  <33.295494, 35.194443, 42.161217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986561, 35.008377, 41.988186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505783, 0.038353, 0.861808,
		-0.384290, 0.884394, -0.264893,
		-0.772337, -0.465163, -0.432573,
		32.754860, 34.868828, 41.858414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610458, 35.510193, 42.460041>,  <33.295494, 35.194443, 42.161217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610458, 35.510193, 42.460041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.544140, 35.142063, 42.318333>,  <32.504349, 34.921185, 42.233307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.544140, 35.142063, 42.318333>,  <32.610458, 35.510193, 42.460041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544140, 35.142063, 42.318333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521939, -0.222907, 0.823342,
		-0.836715, 0.321414, -0.443398,
		-0.165798, -0.920329, -0.354268,
		32.494400, 34.865963, 42.212051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947590, 35.384628, 42.673885>,  <32.610458, 35.510193, 42.460041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947590, 35.384628, 42.673885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.084103, 35.017879, 42.591061>,  <32.166012, 34.797829, 42.541367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.084103, 35.017879, 42.591061>,  <31.947590, 35.384628, 42.673885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084103, 35.017879, 42.591061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373512, -0.334430, 0.865243,
		-0.862563, -0.217953, -0.456597,
		0.341282, -0.916871, -0.207059,
		32.186489, 34.742817, 42.528942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363899, 35.055954, 42.707962>,  <31.947590, 35.384628, 42.673885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363899, 35.055954, 42.707962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.658606, 34.791508, 42.764675>,  <31.835430, 34.632839, 42.798702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.658606, 34.791508, 42.764675>,  <31.363899, 35.055954, 42.707962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658606, 34.791508, 42.764675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345817, -0.188252, 0.919223,
		-0.581022, -0.726284, -0.367323,
		0.736766, -0.661115, 0.141783,
		31.879635, 34.593174, 42.807209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031225, 34.598217, 43.166229>,  <31.363899, 35.055954, 42.707962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031225, 34.598217, 43.166229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.418209, 34.504555, 43.204590>,  <31.650398, 34.448357, 43.227608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.418209, 34.504555, 43.204590>,  <31.031225, 34.598217, 43.166229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418209, 34.504555, 43.204590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131257, -0.140387, 0.981358,
		-0.216327, -0.962010, -0.166553,
		0.967458, -0.234156, 0.095901,
		31.708447, 34.434311, 43.233360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169144, 33.847599, 43.382126>,  <31.031225, 34.598217, 43.166229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169144, 33.847599, 43.382126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.496922, 34.047016, 43.495239>,  <31.693588, 34.166668, 43.563107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.496922, 34.047016, 43.495239>,  <31.169144, 33.847599, 43.382126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496922, 34.047016, 43.495239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123497, -0.328210, 0.936497,
		0.559695, -0.802331, -0.207381,
		0.819445, 0.498542, 0.282783,
		31.742756, 34.196579, 43.580074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594151, 33.372601, 43.595409>,  <31.169144, 33.847599, 43.382126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594151, 33.372601, 43.595409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.725685, 33.711861, 43.761547>,  <31.804605, 33.915417, 43.861229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.725685, 33.711861, 43.761547>,  <31.594151, 33.372601, 43.595409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725685, 33.711861, 43.761547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030213, -0.449023, 0.893009,
		0.943903, -0.281105, -0.173280,
		0.328837, 0.848150, 0.415342,
		31.824337, 33.966305, 43.886150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282177, 33.313099, 43.895569>,  <31.594151, 33.372601, 43.595409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282177, 33.313099, 43.895569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.100563, 33.607697, 44.096138>,  <31.991594, 33.784454, 44.216480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.100563, 33.607697, 44.096138>,  <32.282177, 33.313099, 43.895569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100563, 33.607697, 44.096138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168959, -0.481388, 0.860069,
		0.874815, 0.475224, 0.094131,
		-0.454039, 0.736497, 0.501419,
		31.964352, 33.828644, 44.246563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763306, 33.428658, 44.505352>,  <32.282177, 33.313099, 43.895569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763306, 33.428658, 44.505352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407562, 33.593998, 44.583504>,  <32.194115, 33.693203, 44.630394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407562, 33.593998, 44.583504>,  <32.763306, 33.428658, 44.505352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407562, 33.593998, 44.583504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007502, -0.440473, 0.897735,
		0.457140, 0.796946, 0.394841,
		-0.889363, 0.413352, 0.195379,
		32.140755, 33.718002, 44.642117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814209, 33.900719, 45.091278>,  <32.763306, 33.428658, 44.505352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814209, 33.900719, 45.091278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429546, 33.791245, 45.084122>,  <32.198750, 33.725559, 45.079830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429546, 33.791245, 45.084122>,  <32.814209, 33.900719, 45.091278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429546, 33.791245, 45.084122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073381, -0.319582, 0.944713,
		-0.264275, 0.907173, 0.327410,
		-0.961652, -0.273689, -0.017889,
		32.141052, 33.709137, 45.078754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844948, 34.680351, 45.419571>,  <32.814209, 33.900719, 45.091278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844948, 34.680351, 45.419571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.158916, 34.866741, 45.582912>,  <33.347298, 34.978577, 45.680920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.158916, 34.866741, 45.582912>,  <32.844948, 34.680351, 45.419571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158916, 34.866741, 45.582912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152056, 0.494046, -0.856036,
		-0.600642, 0.734018, 0.316934,
		0.784925, 0.465980, 0.408357,
		33.394394, 35.006535, 45.705418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757332, 35.339172, 45.145184>,  <32.844948, 34.680351, 45.419571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757332, 35.339172, 45.145184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.123550, 35.356457, 45.305134>,  <33.343281, 35.366829, 45.401104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.123550, 35.356457, 45.305134>,  <32.757332, 35.339172, 45.145184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123550, 35.356457, 45.305134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284530, 0.633111, -0.719871,
		-0.284275, 0.772854, 0.567348,
		0.915549, 0.043214, 0.399878,
		33.398216, 35.369419, 45.425098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030258, 36.023369, 45.148930>,  <32.757332, 35.339172, 45.145184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030258, 36.023369, 45.148930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.347324, 35.779919, 45.134716>,  <33.537563, 35.633850, 45.126186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.347324, 35.779919, 45.134716>,  <33.030258, 36.023369, 45.148930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347324, 35.779919, 45.134716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479789, 0.658703, -0.579580,
		0.376153, 0.442362, 0.814140,
		0.792661, -0.608627, -0.035533,
		33.585121, 35.597332, 45.124058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532307, 36.483891, 45.239761>,  <33.030258, 36.023369, 45.148930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532307, 36.483891, 45.239761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.731392, 36.167400, 45.097633>,  <33.850842, 35.977509, 45.012356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.731392, 36.167400, 45.097633>,  <33.532307, 36.483891, 45.239761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731392, 36.167400, 45.097633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566156, 0.606720, -0.557995,
		0.657077, 0.076554, 0.749926,
		0.497712, -0.791221, -0.355321,
		33.880707, 35.930035, 44.991035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192123, 36.746223, 45.187004>,  <33.532307, 36.483891, 45.239761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192123, 36.746223, 45.187004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.156052, 36.423267, 44.953766>,  <34.134407, 36.229496, 44.813824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.156052, 36.423267, 44.953766>,  <34.192123, 36.746223, 45.187004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156052, 36.423267, 44.953766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451334, 0.488773, -0.746592,
		0.887786, -0.330499, 0.320322,
		-0.090183, -0.807386, -0.583091,
		34.128998, 36.181053, 44.778839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885830, 36.595345, 44.882576>,  <34.192123, 36.746223, 45.187004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885830, 36.595345, 44.882576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.622326, 36.386414, 44.665981>,  <34.464222, 36.261055, 44.536022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.622326, 36.386414, 44.665981>,  <34.885830, 36.595345, 44.882576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622326, 36.386414, 44.665981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440854, 0.315231, -0.840403,
		0.609659, -0.792341, 0.022608,
		-0.658760, -0.522326, -0.541490,
		34.424698, 36.229717, 44.503532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345810, 36.209797, 44.450577>,  <34.885830, 36.595345, 44.882576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345810, 36.209797, 44.450577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987000, 36.197689, 44.274200>,  <34.771713, 36.190422, 44.168373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987000, 36.197689, 44.274200>,  <35.345810, 36.209797, 44.450577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987000, 36.197689, 44.274200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426562, 0.201916, -0.881632,
		0.115721, -0.978935, -0.168211,
		-0.897025, -0.030271, -0.440942,
		34.717892, 36.188606, 44.141918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465439, 35.796925, 43.936531>,  <35.345810, 36.209797, 44.450577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465439, 35.796925, 43.936531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155224, 36.015076, 43.809345>,  <34.969093, 36.145966, 43.733036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155224, 36.015076, 43.809345>,  <35.465439, 35.796925, 43.936531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155224, 36.015076, 43.809345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491426, 0.205381, -0.846357,
		-0.396283, -0.812637, -0.427294,
		-0.775539, 0.545380, -0.317962,
		34.922562, 36.178688, 43.713955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319656, 35.557365, 43.316433>,  <35.465439, 35.796925, 43.936531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319656, 35.557365, 43.316433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.148865, 35.918785, 43.330807>,  <35.046391, 36.135635, 43.339432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.148865, 35.918785, 43.330807>,  <35.319656, 35.557365, 43.316433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148865, 35.918785, 43.330807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363376, 0.207833, -0.908165,
		-0.828037, -0.374713, -0.417068,
		-0.426981, 0.903546, 0.035932,
		35.020771, 36.189850, 43.341587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848866, 35.708046, 42.661663>,  <35.319656, 35.557365, 43.316433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848866, 35.708046, 42.661663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.914295, 36.086212, 42.774399>,  <34.953552, 36.313110, 42.842041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.914295, 36.086212, 42.774399>,  <34.848866, 35.708046, 42.661663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914295, 36.086212, 42.774399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320568, 0.219242, -0.921504,
		-0.932994, 0.241086, -0.267206,
		0.163579, 0.945416, 0.281836,
		34.963367, 36.369839, 42.858948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639469, 36.014942, 42.164089>,  <34.848866, 35.708046, 42.661663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639469, 36.014942, 42.164089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.872017, 36.277580, 42.356293>,  <35.011547, 36.435162, 42.471615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.872017, 36.277580, 42.356293>,  <34.639469, 36.014942, 42.164089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872017, 36.277580, 42.356293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328076, 0.351259, -0.876917,
		-0.744564, 0.667457, -0.011202,
		0.581370, 0.656596, 0.480511,
		35.046429, 36.474560, 42.500446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609047, 36.590843, 41.781490>,  <34.639469, 36.014942, 42.164089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609047, 36.590843, 41.781490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936401, 36.672237, 41.996464>,  <35.132816, 36.721073, 42.125446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936401, 36.672237, 41.996464>,  <34.609047, 36.590843, 41.781490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936401, 36.672237, 41.996464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411360, 0.445599, -0.795125,
		-0.401277, 0.871800, 0.280967,
		0.818388, 0.203487, 0.537432,
		35.181919, 36.733284, 42.157692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692379, 37.314304, 41.671520>,  <34.609047, 36.590843, 41.781490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692379, 37.314304, 41.671520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.047974, 37.165630, 41.778526>,  <35.261330, 37.076427, 41.842731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.047974, 37.165630, 41.778526>,  <34.692379, 37.314304, 41.671520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047974, 37.165630, 41.778526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434933, 0.502437, -0.747255,
		0.143332, 0.780647, 0.608315,
		0.888982, -0.371682, 0.267514,
		35.314667, 37.054127, 41.858780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158321, 37.853336, 41.564507>,  <34.692379, 37.314304, 41.671520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158321, 37.853336, 41.564507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.383644, 37.523815, 41.539078>,  <35.518837, 37.326103, 41.523819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.383644, 37.523815, 41.539078>,  <35.158321, 37.853336, 41.564507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383644, 37.523815, 41.539078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332457, 0.296423, -0.895324,
		0.756414, 0.483204, 0.440854,
		0.563304, -0.823801, -0.063574,
		35.552635, 37.276676, 41.520004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.133892, 39.765873, 31.409805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.314274, 39.758629, 31.052860>,  <25.422503, 39.754284, 30.838694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.314274, 39.758629, 31.052860>,  <25.133892, 39.765873, 31.409805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.314274, 39.758629, 31.052860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510167, -0.815144, 0.274353,
		-0.732372, -0.578975, -0.358356,
		0.450955, -0.018107, -0.892363,
		25.449560, 39.753197, 30.785151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.993908, 39.132973, 31.136295>,  <25.133892, 39.765873, 31.409805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.993908, 39.132973, 31.136295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.330225, 39.258427, 30.959795>,  <25.532015, 39.333698, 30.853895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.330225, 39.258427, 30.959795>,  <24.993908, 39.132973, 31.136295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330225, 39.258427, 30.959795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429685, -0.882430, 0.191545,
		-0.329298, -0.350648, -0.876703,
		0.840794, 0.313630, -0.441251,
		25.582462, 39.352516, 30.827419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.281128, 38.537510, 30.799294>,  <24.993908, 39.132973, 31.136295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.281128, 38.537510, 30.799294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.579649, 38.802216, 30.827864>,  <25.758762, 38.961040, 30.845005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.579649, 38.802216, 30.827864>,  <25.281128, 38.537510, 30.799294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579649, 38.802216, 30.827864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636932, -0.741185, 0.212043,
		0.193261, -0.112756, -0.974647,
		0.746303, 0.661763, 0.071424,
		25.803539, 39.000744, 30.849291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782425, 38.164948, 30.459389>,  <25.281128, 38.537510, 30.799294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782425, 38.164948, 30.459389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.974117, 38.441471, 30.675697>,  <26.089132, 38.607384, 30.805483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.974117, 38.441471, 30.675697>,  <25.782425, 38.164948, 30.459389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974117, 38.441471, 30.675697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705135, -0.670123, 0.231778,
		0.522614, 0.270244, -0.808606,
		0.479229, 0.691306, 0.540773,
		26.117886, 38.648865, 30.837929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404133, 37.981991, 30.300024>,  <25.782425, 38.164948, 30.459389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404133, 37.981991, 30.300024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.434340, 38.169224, 30.652205>,  <26.452463, 38.281563, 30.863512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.434340, 38.169224, 30.652205>,  <26.404133, 37.981991, 30.300024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434340, 38.169224, 30.652205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697580, -0.655732, 0.288785,
		0.712516, 0.592377, -0.376046,
		0.075516, 0.468086, 0.880450,
		26.456995, 38.309650, 30.916340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110655, 37.924839, 30.509912>,  <26.404133, 37.981991, 30.300024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110655, 37.924839, 30.509912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.938877, 38.026901, 30.856432>,  <26.835812, 38.088139, 31.064344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.938877, 38.026901, 30.856432>,  <27.110655, 37.924839, 30.509912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938877, 38.026901, 30.856432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642647, -0.587614, 0.491645,
		0.634495, 0.767858, 0.088373,
		-0.429443, 0.255154, 0.866300,
		26.810045, 38.103447, 31.116322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738100, 38.073456, 31.035976>,  <27.110655, 37.924839, 30.509912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738100, 38.073456, 31.035976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.393795, 37.974590, 31.213964>,  <27.187212, 37.915272, 31.320757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.393795, 37.974590, 31.213964>,  <27.738100, 38.073456, 31.035976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393795, 37.974590, 31.213964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507076, -0.492463, 0.707357,
		0.044301, 0.834501, 0.549223,
		-0.860762, -0.247161, 0.444972,
		27.135567, 37.900440, 31.347456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820080, 38.212685, 31.837778>,  <27.738100, 38.073456, 31.035976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820080, 38.212685, 31.837778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.520399, 37.950935, 31.796810>,  <27.340591, 37.793884, 31.772230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.520399, 37.950935, 31.796810>,  <27.820080, 38.212685, 31.837778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520399, 37.950935, 31.796810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390194, -0.561003, 0.730085,
		-0.535209, 0.507017, 0.675637,
		-0.749200, -0.654378, -0.102419,
		27.295639, 37.754623, 31.766085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867313, 37.939373, 32.533897>,  <27.820080, 38.212685, 31.837778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867313, 37.939373, 32.533897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.613640, 37.701847, 32.335827>,  <27.461435, 37.559334, 32.216984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.613640, 37.701847, 32.335827>,  <27.867313, 37.939373, 32.533897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613640, 37.701847, 32.335827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298821, -0.778915, 0.551359,
		-0.713105, 0.201693, 0.671417,
		-0.634182, -0.593810, -0.495178,
		27.423386, 37.523705, 32.187275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377253, 37.599125, 33.047943>,  <27.867313, 37.939373, 32.533897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377253, 37.599125, 33.047943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.392313, 37.353027, 32.732967>,  <27.401350, 37.205368, 32.543983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.392313, 37.353027, 32.732967>,  <27.377253, 37.599125, 33.047943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392313, 37.353027, 32.732967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192584, -0.768756, 0.609856,
		-0.980558, -0.174609, 0.089542,
		0.037650, -0.615244, -0.787437,
		27.403608, 37.168453, 32.496735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886003, 37.118782, 33.022800>,  <27.377253, 37.599125, 33.047943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886003, 37.118782, 33.022800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.102560, 36.876251, 32.789814>,  <27.232494, 36.730732, 32.650024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.102560, 36.876251, 32.789814>,  <26.886003, 37.118782, 33.022800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102560, 36.876251, 32.789814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067865, -0.659000, 0.749075,
		-0.838026, -0.445073, -0.315630,
		0.541393, -0.606325, -0.582464,
		27.264978, 36.694355, 32.615074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566275, 36.464779, 33.120949>,  <26.886003, 37.118782, 33.022800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566275, 36.464779, 33.120949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.939829, 36.416534, 32.986301>,  <27.163961, 36.387589, 32.905514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.939829, 36.416534, 32.986301>,  <26.566275, 36.464779, 33.120949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939829, 36.416534, 32.986301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138266, -0.746358, 0.651024,
		-0.329754, -0.654525, -0.680338,
		0.933887, -0.120610, -0.336613,
		27.219995, 36.380352, 32.885319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681822, 35.779411, 33.140236>,  <26.566275, 36.464779, 33.120949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681822, 35.779411, 33.140236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061949, 35.903606, 33.131340>,  <27.290026, 35.978123, 33.126003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061949, 35.903606, 33.131340>,  <26.681822, 35.779411, 33.140236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061949, 35.903606, 33.131340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230869, -0.655097, 0.719408,
		0.208797, -0.688800, -0.694232,
		0.950318, 0.310487, -0.022240,
		27.347044, 35.996754, 33.124668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052492, 35.135269, 33.355301>,  <26.681822, 35.779411, 33.140236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052492, 35.135269, 33.355301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318296, 35.430237, 33.403702>,  <27.477779, 35.607216, 33.432743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318296, 35.430237, 33.403702>,  <27.052492, 35.135269, 33.355301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318296, 35.430237, 33.403702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500855, -0.559667, 0.660240,
		0.554593, -0.378132, -0.741244,
		0.664508, 0.737420, 0.120998,
		27.517649, 35.651463, 33.440002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723522, 34.824593, 33.260376>,  <27.052492, 35.135269, 33.355301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723522, 34.824593, 33.260376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.796831, 35.149796, 33.481438>,  <27.840816, 35.344917, 33.614075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.796831, 35.149796, 33.481438>,  <27.723522, 34.824593, 33.260376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796831, 35.149796, 33.481438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415798, -0.573526, 0.705819,
		0.890800, 0.100438, -0.443157,
		0.183271, 0.813007, 0.552659,
		27.851812, 35.393696, 33.647236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397684, 34.807014, 33.462437>,  <27.723522, 34.824593, 33.260376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397684, 34.807014, 33.462437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.226191, 35.034401, 33.743301>,  <28.123295, 35.170834, 33.911819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.226191, 35.034401, 33.743301>,  <28.397684, 34.807014, 33.462437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226191, 35.034401, 33.743301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472562, -0.521301, 0.710584,
		0.769982, 0.636467, -0.045137,
		-0.428734, 0.568467, 0.702163,
		28.097570, 35.204941, 33.953949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000008, 35.089405, 33.813713>,  <28.397684, 34.807014, 33.462437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000008, 35.089405, 33.813713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.672607, 35.133041, 34.039333>,  <28.476168, 35.159225, 34.174706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.672607, 35.133041, 34.039333>,  <29.000008, 35.089405, 33.813713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672607, 35.133041, 34.039333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467024, -0.445444, 0.763851,
		0.334586, 0.888638, 0.313647,
		-0.818499, 0.109093, 0.564055,
		28.427057, 35.165768, 34.208549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256042, 35.416786, 34.564243>,  <29.000008, 35.089405, 33.813713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256042, 35.416786, 34.564243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.901693, 35.240448, 34.622051>,  <28.689083, 35.134644, 34.656734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.901693, 35.240448, 34.622051>,  <29.256042, 35.416786, 34.564243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901693, 35.240448, 34.622051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406170, -0.586458, 0.700781,
		-0.224181, 0.679502, 0.698585,
		-0.885872, -0.440846, 0.144520,
		28.635931, 35.108192, 34.665409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991749, 36.121082, 34.383900>,  <29.256042, 35.416786, 34.564243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991749, 36.121082, 34.383900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388918, 36.074280, 34.392017>,  <29.627220, 36.046200, 34.396889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388918, 36.074280, 34.392017>,  <28.991749, 36.121082, 34.383900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388918, 36.074280, 34.392017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105169, 0.945772, 0.307334,
		-0.055157, -0.303024, 0.951385,
		0.992924, -0.117008, 0.020297,
		29.686794, 36.039177, 34.398106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244301, 36.341888, 35.097942>,  <28.991749, 36.121082, 34.383900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244301, 36.341888, 35.097942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.537069, 36.368671, 34.826706>,  <29.712730, 36.384743, 34.663963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.537069, 36.368671, 34.826706>,  <29.244301, 36.341888, 35.097942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537069, 36.368671, 34.826706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136655, 0.960515, 0.242355,
		0.667544, -0.270049, 0.693872,
		0.731922, 0.066962, -0.678090,
		29.756645, 36.388760, 34.623280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037481, 36.612186, 35.411686>,  <29.244301, 36.341888, 35.097942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037481, 36.612186, 35.411686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.956089, 36.688068, 35.027477>,  <29.907253, 36.733597, 34.796951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.956089, 36.688068, 35.027477>,  <30.037481, 36.612186, 35.411686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956089, 36.688068, 35.027477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198331, 0.968697, 0.149305,
		0.958781, -0.160121, -0.234737,
		-0.203482, 0.189706, -0.960524,
		29.895044, 36.744980, 34.739319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524122, 37.135143, 35.150131>,  <30.037481, 36.612186, 35.411686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524122, 37.135143, 35.150131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.216944, 37.138645, 34.893948>,  <30.032637, 37.140747, 34.740238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.216944, 37.138645, 34.893948>,  <30.524122, 37.135143, 35.150131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216944, 37.138645, 34.893948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081106, 0.993187, -0.083670,
		0.635359, -0.116199, -0.763424,
		-0.767946, 0.008757, -0.640455,
		29.986561, 37.141273, 34.701813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640680, 37.549480, 34.549763>,  <30.524122, 37.135143, 35.150131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640680, 37.549480, 34.549763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240944, 37.540409, 34.538441>,  <30.001102, 37.534966, 34.531647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240944, 37.540409, 34.538441>,  <30.640680, 37.549480, 34.549763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240944, 37.540409, 34.538441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016460, 0.978964, -0.203367,
		0.032318, -0.202768, -0.978693,
		-0.999342, -0.022682, -0.028301,
		29.941141, 37.533604, 34.529949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506926, 38.020397, 34.020859>,  <30.640680, 37.549480, 34.549763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506926, 38.020397, 34.020859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.155130, 37.992729, 34.209206>,  <29.944054, 37.976128, 34.322212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.155130, 37.992729, 34.209206>,  <30.506926, 38.020397, 34.020859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155130, 37.992729, 34.209206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068626, 0.997474, 0.018352,
		-0.470945, -0.016173, -0.882014,
		-0.879489, -0.069172, 0.470865,
		29.891283, 37.971977, 34.350464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988585, 38.416779, 33.598534>,  <30.506926, 38.020397, 34.020859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988585, 38.416779, 33.598534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.813793, 38.397034, 33.957779>,  <29.708920, 38.385185, 34.173328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.813793, 38.397034, 33.957779>,  <29.988585, 38.416779, 33.598534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813793, 38.397034, 33.957779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262719, 0.961957, -0.074950,
		-0.860250, -0.268704, -0.433322,
		-0.436976, -0.049366, 0.898117,
		29.682701, 38.382225, 34.227215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347178, 38.751858, 33.546917>,  <29.988585, 38.416779, 33.598534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347178, 38.751858, 33.546917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431135, 38.762283, 33.937866>,  <29.481510, 38.768539, 34.172436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431135, 38.762283, 33.937866>,  <29.347178, 38.751858, 33.546917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431135, 38.762283, 33.937866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226147, 0.973831, 0.022600,
		-0.951210, -0.225774, 0.210296,
		0.209896, 0.026061, 0.977376,
		29.494104, 38.770100, 34.231079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873493, 39.160854, 33.831192>,  <29.347178, 38.751858, 33.546917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873493, 39.160854, 33.831192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.119213, 39.190876, 34.145390>,  <29.266645, 39.208889, 34.333908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.119213, 39.190876, 34.145390>,  <28.873493, 39.160854, 33.831192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119213, 39.190876, 34.145390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290254, 0.947165, 0.136497,
		-0.733751, -0.311843, 0.603626,
		0.614299, 0.075050, 0.785497,
		29.303503, 39.213390, 34.381039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481504, 39.539974, 34.340004>,  <28.873493, 39.160854, 33.831192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481504, 39.539974, 34.340004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.868433, 39.550476, 34.440880>,  <29.100590, 39.556778, 34.501408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.868433, 39.550476, 34.440880>,  <28.481504, 39.539974, 34.340004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868433, 39.550476, 34.440880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058739, 0.990769, 0.122175,
		-0.246659, -0.132996, 0.959933,
		0.967320, 0.026250, 0.252194,
		29.158628, 39.558350, 34.516537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345118, 40.105431, 34.628178>,  <28.481504, 39.539974, 34.340004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345118, 40.105431, 34.628178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.737936, 40.045120, 34.673531>,  <28.973627, 40.008934, 34.700741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.737936, 40.045120, 34.673531>,  <28.345118, 40.105431, 34.628178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737936, 40.045120, 34.673531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153542, 0.988013, -0.016003,
		-0.109608, 0.033124, 0.993423,
		0.982044, -0.150778, 0.113380,
		29.032549, 39.999886, 34.707546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585398, 40.593189, 35.104095>,  <28.345118, 40.105431, 34.628178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585398, 40.593189, 35.104095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.864550, 40.491463, 34.836277>,  <29.032040, 40.430428, 34.675587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.864550, 40.491463, 34.836277>,  <28.585398, 40.593189, 35.104095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864550, 40.491463, 34.836277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041732, 0.947686, -0.316464,
		0.715000, 0.192912, 0.671982,
		0.697878, -0.254315, -0.669545,
		29.073914, 40.415169, 34.635414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018064, 41.212849, 35.100262>,  <28.585398, 40.593189, 35.104095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018064, 41.212849, 35.100262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.087292, 41.003956, 34.766239>,  <29.128828, 40.878620, 34.565826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.087292, 41.003956, 34.766239>,  <29.018064, 41.212849, 35.100262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087292, 41.003956, 34.766239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062449, 0.840325, -0.538474,
		0.982928, 0.145341, 0.112819,
		0.173067, -0.522236, -0.835056,
		29.139212, 40.847286, 34.515724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418243, 41.691837, 34.616894>,  <29.018064, 41.212849, 35.100262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418243, 41.691837, 34.616894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.232321, 41.421249, 34.388386>,  <29.120768, 41.258896, 34.251282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.232321, 41.421249, 34.388386>,  <29.418243, 41.691837, 34.616894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232321, 41.421249, 34.388386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109092, 0.684040, -0.721241,
		0.878667, -0.272915, -0.391742,
		-0.464804, -0.676467, -0.571270,
		29.092880, 41.218311, 34.217003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601471, 41.849503, 33.921913>,  <29.418243, 41.691837, 34.616894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601471, 41.849503, 33.921913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.273790, 41.621895, 33.893269>,  <29.077183, 41.485329, 33.876083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.273790, 41.621895, 33.893269>,  <29.601471, 41.849503, 33.921913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273790, 41.621895, 33.893269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176364, 0.368758, -0.912641,
		0.545715, -0.735007, -0.402442,
		-0.819201, -0.569018, -0.071608,
		29.028030, 41.451191, 33.871788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524698, 41.764156, 33.178246>,  <29.601471, 41.849503, 33.921913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524698, 41.764156, 33.178246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.159315, 41.664059, 33.306602>,  <28.940086, 41.604000, 33.383617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.159315, 41.664059, 33.306602>,  <29.524698, 41.764156, 33.178246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159315, 41.664059, 33.306602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387347, 0.292971, -0.874145,
		0.124737, -0.922792, -0.364548,
		-0.913456, -0.250245, 0.320897,
		28.885279, 41.588985, 33.402870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245770, 41.398117, 32.569767>,  <29.524698, 41.764156, 33.178246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245770, 41.398117, 32.569767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938562, 41.520084, 32.795040>,  <28.754238, 41.593266, 32.930202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938562, 41.520084, 32.795040>,  <29.245770, 41.398117, 32.569767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938562, 41.520084, 32.795040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440196, 0.387380, -0.810040,
		-0.465165, -0.870034, -0.163289,
		-0.768016, 0.304923, 0.563181,
		28.708157, 41.611561, 32.963993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660593, 41.138145, 32.189541>,  <29.245770, 41.398117, 32.569767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660593, 41.138145, 32.189541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520321, 41.425972, 32.429291>,  <28.436157, 41.598667, 32.573139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520321, 41.425972, 32.429291>,  <28.660593, 41.138145, 32.189541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520321, 41.425972, 32.429291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653313, 0.270585, -0.707083,
		-0.670974, -0.639539, 0.375212,
		-0.350681, 0.719565, 0.599374,
		28.415117, 41.641842, 32.609104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003765, 41.120354, 32.092499>,  <28.660593, 41.138145, 32.189541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003765, 41.120354, 32.092499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.054382, 41.483673, 32.251984>,  <28.084753, 41.701664, 32.347675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.054382, 41.483673, 32.251984>,  <28.003765, 41.120354, 32.092499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054382, 41.483673, 32.251984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756760, 0.348265, -0.553195,
		-0.641327, -0.231729, 0.731438,
		0.126543, 0.908302, 0.398715,
		28.092346, 41.756165, 32.371597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392332, 41.399239, 32.159218>,  <28.003765, 41.120354, 32.092499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392332, 41.399239, 32.159218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.608721, 41.734711, 32.184380>,  <27.738554, 41.935993, 32.199478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.608721, 41.734711, 32.184380>,  <27.392332, 41.399239, 32.159218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608721, 41.734711, 32.184380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641313, 0.459740, -0.614293,
		-0.544119, 0.291972, 0.786566,
		0.540973, 0.838684, 0.062908,
		27.771013, 41.986317, 32.203251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930616, 41.869770, 32.159969>,  <27.392332, 41.399239, 32.159218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930616, 41.869770, 32.159969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.258551, 42.074181, 32.056648>,  <27.455311, 42.196827, 31.994656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.258551, 42.074181, 32.056648>,  <26.930616, 41.869770, 32.159969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258551, 42.074181, 32.056648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487980, 0.387543, -0.782103,
		-0.299570, 0.767245, 0.567092,
		0.819837, 0.511024, -0.258304,
		27.504501, 42.227489, 31.979156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663780, 42.559494, 31.999105>,  <26.930616, 41.869770, 32.159969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663780, 42.559494, 31.999105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016588, 42.543324, 31.811316>,  <27.228273, 42.533619, 31.698641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016588, 42.543324, 31.811316>,  <26.663780, 42.559494, 31.999105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016588, 42.543324, 31.811316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358200, 0.589808, -0.723753,
		0.306163, 0.806530, 0.505740,
		0.882019, -0.040430, -0.469477,
		27.281195, 42.531193, 31.670473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793358, 43.179592, 31.785175>,  <26.663780, 42.559494, 31.999105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793358, 43.179592, 31.785175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.032299, 42.966228, 31.545630>,  <27.175665, 42.838211, 31.401901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.032299, 42.966228, 31.545630>,  <26.793358, 43.179592, 31.785175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032299, 42.966228, 31.545630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483895, 0.355761, -0.799550,
		0.639541, 0.767404, -0.045599,
		0.597355, -0.533410, -0.598867,
		27.211506, 42.806206, 31.365969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465187, 43.424900, 31.161211>,  <26.793358, 43.179592, 31.785175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465187, 43.424900, 31.161211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.717936, 43.140903, 31.036860>,  <26.869585, 42.970505, 30.962248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.717936, 43.140903, 31.036860>,  <26.465187, 43.424900, 31.161211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717936, 43.140903, 31.036860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333209, 0.113300, -0.936021,
		0.699791, 0.695034, -0.164985,
		0.631873, -0.709993, -0.310878,
		26.907497, 42.927906, 30.943596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.397999, 32.382637, 45.795765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086018, 32.149845, 45.703709>,  <34.898827, 32.010170, 45.648476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086018, 32.149845, 45.703709>,  <35.397999, 32.382637, 45.795765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086018, 32.149845, 45.703709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231432, -0.073452, 0.970074,
		-0.581472, 0.809877, -0.077400,
		-0.779955, -0.581984, -0.230141,
		34.852032, 31.975250, 45.634666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886868, 32.628292, 46.192677>,  <35.397999, 32.382637, 45.795765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886868, 32.628292, 46.192677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.770050, 32.254864, 46.109589>,  <34.699959, 32.030807, 46.059734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.770050, 32.254864, 46.109589>,  <34.886868, 32.628292, 46.192677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770050, 32.254864, 46.109589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237542, -0.139577, 0.961297,
		-0.926436, 0.330084, -0.181001,
		-0.292045, -0.933575, -0.207718,
		34.682438, 31.974791, 46.047272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205875, 32.589062, 46.433456>,  <34.886868, 32.628292, 46.192677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205875, 32.589062, 46.433456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.332272, 32.210220, 46.411030>,  <34.408112, 31.982916, 46.397572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.332272, 32.210220, 46.411030>,  <34.205875, 32.589062, 46.433456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332272, 32.210220, 46.411030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178529, -0.117399, 0.976906,
		-0.931812, -0.298687, -0.206183,
		0.315995, -0.947102, -0.056070,
		34.427071, 31.926090, 46.394207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791782, 32.238152, 46.809280>,  <34.205875, 32.589062, 46.433456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791782, 32.238152, 46.809280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083408, 31.965630, 46.783104>,  <34.258385, 31.802116, 46.767399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083408, 31.965630, 46.783104>,  <33.791782, 32.238152, 46.809280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083408, 31.965630, 46.783104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135736, -0.237642, 0.961822,
		-0.670846, -0.692351, -0.265735,
		0.729068, -0.681305, -0.065444,
		34.302128, 31.761238, 46.763470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621353, 31.591465, 47.090862>,  <33.791782, 32.238152, 46.809280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621353, 31.591465, 47.090862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019753, 31.571285, 47.120380>,  <34.258793, 31.559177, 47.138092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019753, 31.571285, 47.120380>,  <33.621353, 31.591465, 47.090862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019753, 31.571285, 47.120380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082393, -0.197765, 0.976781,
		-0.034681, -0.978951, -0.201130,
		0.995996, -0.050448, 0.073800,
		34.318550, 31.556150, 47.142521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882988, 31.002230, 47.650002>,  <33.621353, 31.591465, 47.090862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882988, 31.002230, 47.650002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.198643, 31.246151, 47.620609>,  <34.388035, 31.392504, 47.602974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.198643, 31.246151, 47.620609>,  <33.882988, 31.002230, 47.650002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198643, 31.246151, 47.620609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253477, -0.214356, 0.943292,
		0.559473, -0.763014, -0.323728,
		0.789138, 0.609804, -0.073480,
		34.435383, 31.429092, 47.598564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416321, 30.671526, 48.019833>,  <33.882988, 31.002230, 47.650002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416321, 30.671526, 48.019833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530224, 31.051991, 47.972168>,  <34.598568, 31.280270, 47.943569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530224, 31.051991, 47.972168>,  <34.416321, 30.671526, 48.019833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530224, 31.051991, 47.972168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471161, -0.030618, 0.881515,
		0.834817, -0.307166, -0.456870,
		0.284760, 0.951163, -0.119164,
		34.615650, 31.337339, 47.936420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144653, 30.741926, 48.098072>,  <34.416321, 30.671526, 48.019833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144653, 30.741926, 48.098072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958309, 31.084642, 48.186504>,  <34.846500, 31.290272, 48.239563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958309, 31.084642, 48.186504>,  <35.144653, 30.741926, 48.098072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958309, 31.084642, 48.186504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273067, -0.098453, 0.956944,
		0.841669, 0.506175, -0.188096,
		-0.465863, 0.856793, 0.221085,
		34.818550, 31.341681, 48.252831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648746, 31.039743, 48.412685>,  <35.144653, 30.741926, 48.098072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648746, 31.039743, 48.412685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324890, 31.219362, 48.563862>,  <35.130577, 31.327133, 48.654568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324890, 31.219362, 48.563862>,  <35.648746, 31.039743, 48.412685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324890, 31.219362, 48.563862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431668, 0.019273, 0.901827,
		0.397676, 0.893301, -0.209443,
		-0.809639, 0.449045, 0.377945,
		35.081997, 31.354076, 48.677246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985783, 31.323095, 48.914265>,  <35.648746, 31.039743, 48.412685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985783, 31.323095, 48.914265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.599548, 31.397125, 48.987358>,  <35.367809, 31.441544, 49.031212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.599548, 31.397125, 48.987358>,  <35.985783, 31.323095, 48.914265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599548, 31.397125, 48.987358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192880, 0.038264, 0.980476,
		0.174468, 0.981980, -0.072644,
		-0.965587, 0.185073, 0.182729,
		35.309872, 31.452648, 49.042175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870365, 31.943584, 49.374527>,  <35.985783, 31.323095, 48.914265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870365, 31.943584, 49.374527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548492, 31.708084, 49.405159>,  <35.355370, 31.566784, 49.423538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548492, 31.708084, 49.405159>,  <35.870365, 31.943584, 49.374527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548492, 31.708084, 49.405159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126510, -0.044006, 0.990989,
		-0.580074, 0.807117, 0.109894,
		-0.804680, -0.588749, 0.076581,
		35.307087, 31.531460, 49.428135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423058, 32.342552, 49.740993>,  <35.870365, 31.943584, 49.374527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423058, 32.342552, 49.740993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.370991, 31.949780, 49.795948>,  <35.339752, 31.714117, 49.828918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.370991, 31.949780, 49.795948>,  <35.423058, 32.342552, 49.740993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370991, 31.949780, 49.795948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161104, 0.115774, 0.980124,
		-0.978316, 0.149713, 0.143122,
		-0.130167, -0.981928, 0.137383,
		35.331940, 31.655201, 49.837162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852745, 32.257332, 50.177551>,  <35.423058, 32.342552, 49.740993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852745, 32.257332, 50.177551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168514, 32.011848, 50.182850>,  <35.357975, 31.864559, 50.186028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168514, 32.011848, 50.182850>,  <34.852745, 32.257332, 50.177551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168514, 32.011848, 50.182850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163001, 0.230379, 0.959352,
		-0.591815, -0.755173, 0.281901,
		0.789421, -0.613709, 0.013248,
		35.405342, 31.827736, 50.186825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740902, 31.758642, 50.724068>,  <34.852745, 32.257332, 50.177551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740902, 31.758642, 50.724068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.097507, 31.918831, 50.639374>,  <35.311470, 32.014942, 50.588558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.097507, 31.918831, 50.639374>,  <34.740902, 31.758642, 50.724068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097507, 31.918831, 50.639374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056400, 0.365647, 0.929043,
		0.449476, -0.840194, 0.303391,
		0.891510, 0.400472, -0.211736,
		35.364960, 32.038971, 50.575851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129719, 32.320621, 50.784031>,  <34.740902, 31.758642, 50.724068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129719, 32.320621, 50.784031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765270, 32.482597, 50.814728>,  <33.546600, 32.579784, 50.833145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765270, 32.482597, 50.814728>,  <34.129719, 32.320621, 50.784031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765270, 32.482597, 50.814728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133498, 0.466114, -0.874595,
		-0.389929, -0.786613, -0.478743,
		-0.911117, 0.404941, 0.076740,
		33.491936, 32.604080, 50.837749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836414, 32.291283, 50.122620>,  <34.129719, 32.320621, 50.784031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836414, 32.291283, 50.122620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.613804, 32.573212, 50.298573>,  <33.480240, 32.742371, 50.404144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.613804, 32.573212, 50.298573>,  <33.836414, 32.291283, 50.122620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613804, 32.573212, 50.298573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151401, 0.434554, -0.887829,
		-0.816920, -0.560698, -0.135128,
		-0.556524, 0.704827, 0.439886,
		33.446846, 32.784660, 50.430538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252277, 32.399475, 49.764957>,  <33.836414, 32.291283, 50.122620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252277, 32.399475, 49.764957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287666, 32.747532, 49.958874>,  <33.308899, 32.956367, 50.075226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287666, 32.747532, 49.958874>,  <33.252277, 32.399475, 49.764957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287666, 32.747532, 49.958874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261558, 0.489918, -0.831606,
		-0.961124, -0.053227, 0.270937,
		0.088473, 0.870142, 0.484794,
		33.314209, 33.008575, 50.104313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751617, 32.784744, 49.526680>,  <33.252277, 32.399475, 49.764957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751617, 32.784744, 49.526680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978230, 33.070274, 49.691364>,  <33.114197, 33.241592, 49.790176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978230, 33.070274, 49.691364>,  <32.751617, 32.784744, 49.526680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978230, 33.070274, 49.691364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282332, 0.637522, -0.716837,
		-0.774168, 0.289867, 0.562708,
		0.566526, 0.713823, 0.411710,
		33.148186, 33.284420, 49.814877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376831, 33.375282, 49.372955>,  <32.751617, 32.784744, 49.526680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376831, 33.375282, 49.372955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.752270, 33.507404, 49.412811>,  <32.977535, 33.586678, 49.436726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.752270, 33.507404, 49.412811>,  <32.376831, 33.375282, 49.372955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752270, 33.507404, 49.412811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130393, 0.606999, -0.783932,
		-0.319416, 0.722807, 0.612799,
		0.938601, 0.330305, 0.099637,
		33.033852, 33.606495, 49.442703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283722, 34.085396, 49.115425>,  <32.376831, 33.375282, 49.372955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283722, 34.085396, 49.115425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680386, 34.049290, 49.152222>,  <32.918385, 34.027626, 49.174301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680386, 34.049290, 49.152222>,  <32.283722, 34.085396, 49.115425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680386, 34.049290, 49.152222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124115, 0.476451, -0.870396,
		0.034737, 0.874555, 0.483681,
		0.991660, -0.090267, 0.091995,
		32.977882, 34.022209, 49.179821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540169, 34.785603, 49.127399>,  <32.283722, 34.085396, 49.115425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540169, 34.785603, 49.127399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.808094, 34.515018, 49.004925>,  <32.968849, 34.352669, 48.931442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.808094, 34.515018, 49.004925>,  <32.540169, 34.785603, 49.127399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808094, 34.515018, 49.004925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161030, 0.534874, -0.829445,
		0.724858, 0.506269, 0.467197,
		0.669814, -0.676462, -0.306183,
		33.009037, 34.312080, 48.913071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117252, 35.253334, 48.928806>,  <32.540169, 34.785603, 49.127399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117252, 35.253334, 48.928806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153599, 34.899921, 48.745022>,  <33.175407, 34.687874, 48.634750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153599, 34.899921, 48.745022>,  <33.117252, 35.253334, 48.928806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153599, 34.899921, 48.745022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198930, 0.468179, -0.860950,
		0.975792, -0.013168, 0.218304,
		0.090868, -0.883535, -0.459465,
		33.180859, 34.634861, 48.607182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745380, 35.260513, 48.539574>,  <33.117252, 35.253334, 48.928806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745380, 35.260513, 48.539574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.510441, 34.984097, 48.371063>,  <33.369476, 34.818245, 48.269955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.510441, 34.984097, 48.371063>,  <33.745380, 35.260513, 48.539574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510441, 34.984097, 48.371063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366383, 0.237102, -0.899748,
		0.721652, -0.682817, 0.113926,
		-0.587351, -0.691046, -0.421278,
		33.334236, 34.776783, 48.244678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216557, 34.810776, 48.021740>,  <33.745380, 35.260513, 48.539574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216557, 34.810776, 48.021740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840809, 34.738434, 47.905209>,  <33.615360, 34.695026, 47.835289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840809, 34.738434, 47.905209>,  <34.216557, 34.810776, 48.021740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840809, 34.738434, 47.905209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284889, 0.061203, -0.956604,
		0.190840, -0.981603, -0.005968,
		-0.939371, -0.180858, -0.291328,
		33.558998, 34.684177, 47.817810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257080, 34.212753, 47.492039>,  <34.216557, 34.810776, 48.021740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257080, 34.212753, 47.492039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907413, 34.398567, 47.435413>,  <33.697613, 34.510056, 47.401436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907413, 34.398567, 47.435413>,  <34.257080, 34.212753, 47.492039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907413, 34.398567, 47.435413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117895, -0.079792, -0.989815,
		-0.471098, -0.881953, 0.014986,
		-0.874167, 0.464533, -0.141568,
		33.645164, 34.537926, 47.392944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003242, 33.830318, 46.796600>,  <34.257080, 34.212753, 47.492039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003242, 33.830318, 46.796600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779545, 34.157413, 46.851070>,  <33.645325, 34.353672, 46.883755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779545, 34.157413, 46.851070>,  <34.003242, 33.830318, 46.796600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779545, 34.157413, 46.851070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087055, 0.105431, -0.990609,
		-0.824420, -0.565847, 0.012227,
		-0.559244, 0.817742, 0.136179,
		33.611771, 34.402737, 46.891926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514236, 33.798599, 46.245060>,  <34.003242, 33.830318, 46.796600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514236, 33.798599, 46.245060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517136, 34.182079, 46.358788>,  <33.518875, 34.412167, 46.427025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517136, 34.182079, 46.358788>,  <33.514236, 33.798599, 46.245060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517136, 34.182079, 46.358788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116861, 0.283188, -0.951918,
		-0.993122, -0.026323, 0.114089,
		0.007252, 0.958703, 0.284317,
		33.519310, 34.469688, 46.444084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209473, 34.171284, 45.739777>,  <33.514236, 33.798599, 46.245060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209473, 34.171284, 45.739777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.357082, 34.491543, 45.928577>,  <33.445648, 34.683697, 46.041859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.357082, 34.491543, 45.928577>,  <33.209473, 34.171284, 45.739777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357082, 34.491543, 45.928577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114110, 0.464974, -0.877939,
		-0.922388, 0.377841, 0.080225,
		0.369024, 0.800647, 0.472002,
		33.467789, 34.731735, 46.070179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453915, 34.205780, 45.801300>,  <33.209473, 34.171284, 45.739777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453915, 34.205780, 45.801300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.215527, 33.908928, 45.678623>,  <32.072495, 33.730816, 45.605019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.215527, 33.908928, 45.678623>,  <32.453915, 34.205780, 45.801300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215527, 33.908928, 45.678623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047162, -0.348923, 0.935964,
		-0.801623, 0.572267, 0.172946,
		-0.595966, -0.742134, -0.306694,
		32.036736, 33.686287, 45.586617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073246, 34.032089, 46.364403>,  <32.453915, 34.205780, 45.801300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073246, 34.032089, 46.364403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.991875, 33.692135, 46.169952>,  <31.943052, 33.488163, 46.053284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.991875, 33.692135, 46.169952>,  <32.073246, 34.032089, 46.364403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991875, 33.692135, 46.169952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315611, -0.413082, 0.854256,
		-0.926827, 0.327202, -0.184201,
		-0.203424, -0.849884, -0.486124,
		31.930847, 33.437168, 46.024117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505394, 33.806599, 46.640034>,  <32.073246, 34.032089, 46.364403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505394, 33.806599, 46.640034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.610968, 33.465343, 46.460033>,  <31.674313, 33.260590, 46.352032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.610968, 33.465343, 46.460033>,  <31.505394, 33.806599, 46.640034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610968, 33.465343, 46.460033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302278, -0.516204, 0.801350,
		-0.915951, -0.075479, -0.394128,
		0.263935, -0.853133, -0.450002,
		31.690147, 33.209404, 46.325031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967253, 33.375561, 46.684395>,  <31.505394, 33.806599, 46.640034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967253, 33.375561, 46.684395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.295460, 33.147289, 46.671253>,  <31.492384, 33.010326, 46.663368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.295460, 33.147289, 46.671253>,  <30.967253, 33.375561, 46.684395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295460, 33.147289, 46.671253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359116, -0.559349, 0.747104,
		-0.444733, -0.601213, -0.663895,
		0.820517, -0.570677, -0.032856,
		31.541615, 32.976086, 46.661396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685799, 32.747883, 46.891510>,  <30.967253, 33.375561, 46.684395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685799, 32.747883, 46.891510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.080770, 32.684731, 46.894455>,  <31.317755, 32.646839, 46.896221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.080770, 32.684731, 46.894455>,  <30.685799, 32.747883, 46.891510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080770, 32.684731, 46.894455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112025, -0.666240, 0.737275,
		-0.111494, -0.728834, -0.675552,
		0.987431, -0.157881, 0.007366,
		31.376999, 32.637367, 46.896664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812742, 31.944147, 46.891991>,  <30.685799, 32.747883, 46.891510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812742, 31.944147, 46.891991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.139326, 32.123428, 47.037594>,  <31.335278, 32.230999, 47.124958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.139326, 32.123428, 47.037594>,  <30.812742, 31.944147, 46.891991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139326, 32.123428, 47.037594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012866, -0.616154, 0.787521,
		0.577258, -0.647663, -0.497298,
		0.816460, 0.448205, 0.364013,
		31.384264, 32.257889, 47.146797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218538, 31.376970, 47.153610>,  <30.812742, 31.944147, 46.891991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218538, 31.376970, 47.153610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.353542, 31.707935, 47.333153>,  <31.434546, 31.906515, 47.440880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.353542, 31.707935, 47.333153>,  <31.218538, 31.376970, 47.153610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353542, 31.707935, 47.333153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133304, -0.430022, 0.892923,
		0.931835, -0.361207, -0.034840,
		0.337512, 0.827412, 0.448860,
		31.454796, 31.956160, 47.467812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618484, 30.690601, 47.224770>,  <31.218538, 31.376970, 47.153610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618484, 30.690601, 47.224770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.527807, 30.311550, 47.134781>,  <31.473402, 30.084120, 47.080788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.527807, 30.311550, 47.134781>,  <31.618484, 30.690601, 47.224770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527807, 30.311550, 47.134781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269452, 0.160947, -0.949469,
		0.935952, -0.275855, 0.218855,
		-0.226692, -0.947629, -0.224968,
		31.459799, 30.027262, 47.067291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111935, 30.514338, 46.816631>,  <31.618484, 30.690601, 47.224770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111935, 30.514338, 46.816631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837803, 30.234415, 46.736038>,  <31.673323, 30.066462, 46.687683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837803, 30.234415, 46.736038>,  <32.111935, 30.514338, 46.816631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837803, 30.234415, 46.736038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145814, 0.139206, -0.979469,
		0.713485, -0.700639, 0.006639,
		-0.685331, -0.699804, -0.201484,
		31.632204, 30.024473, 46.675594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400734, 30.126007, 46.405418>,  <32.111935, 30.514338, 46.816631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400734, 30.126007, 46.405418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.012383, 30.062609, 46.333549>,  <31.779373, 30.024570, 46.290428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.012383, 30.062609, 46.333549>,  <32.400734, 30.126007, 46.405418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012383, 30.062609, 46.333549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163665, 0.108948, -0.980482,
		0.174977, -0.981331, -0.079835,
		-0.970875, -0.158495, -0.179673,
		31.721121, 30.015060, 46.279648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223621, 29.542978, 45.859753>,  <32.400734, 30.126007, 46.405418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223621, 29.542978, 45.859753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.934034, 29.818569, 45.873516>,  <31.760283, 29.983923, 45.881775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.934034, 29.818569, 45.873516>,  <32.223621, 29.542978, 45.859753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934034, 29.818569, 45.873516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018980, 0.069754, -0.997384,
		-0.689573, -0.721420, -0.063577,
		-0.723968, 0.688975, 0.034408,
		31.716845, 30.025261, 45.883839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037052, 29.430935, 45.213963>,  <32.223621, 29.542978, 45.859753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037052, 29.430935, 45.213963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.783422, 29.720556, 45.322548>,  <31.631245, 29.894329, 45.387699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.783422, 29.720556, 45.322548>,  <32.037052, 29.430935, 45.213963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783422, 29.720556, 45.322548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105983, 0.266368, -0.958027,
		-0.765973, -0.636232, -0.092160,
		-0.634076, 0.724056, 0.271460,
		31.593199, 29.937773, 45.403988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554670, 29.411556, 44.655979>,  <32.037052, 29.430935, 45.213963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554670, 29.411556, 44.655979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.519604, 29.778547, 44.811184>,  <31.498564, 29.998741, 44.904308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.519604, 29.778547, 44.811184>,  <31.554670, 29.411556, 44.655979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519604, 29.778547, 44.811184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070509, 0.382820, -0.921128,
		-0.993651, -0.108113, 0.031129,
		-0.087669, 0.917475, 0.388012,
		31.493303, 30.053789, 44.927589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996111, 29.790207, 44.312244>,  <31.554670, 29.411556, 44.655979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996111, 29.790207, 44.312244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.225622, 30.075624, 44.473057>,  <31.363329, 30.246876, 44.569546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.225622, 30.075624, 44.473057>,  <30.996111, 29.790207, 44.312244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225622, 30.075624, 44.473057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060557, 0.526496, -0.848018,
		-0.816770, 0.462227, 0.345301,
		0.573777, 0.713546, 0.402036,
		31.397755, 30.289688, 44.593666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.564812, 28.564819, 49.333694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.744858, 28.918997, 49.287422>,  <33.852886, 29.131504, 49.259659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.744858, 28.918997, 49.287422>,  <33.564812, 28.564819, 49.333694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744858, 28.918997, 49.287422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188905, -0.221030, -0.956797,
		-0.872758, 0.408821, -0.266755,
		0.450120, 0.885444, -0.115677,
		33.879894, 29.184629, 49.252720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284683, 28.878740, 48.735893>,  <33.564812, 28.564819, 49.333694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284683, 28.878740, 48.735893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.626881, 29.079456, 48.787018>,  <33.832199, 29.199886, 48.817692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.626881, 29.079456, 48.787018>,  <33.284683, 28.878740, 48.735893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626881, 29.079456, 48.787018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139962, 0.013554, -0.990064,
		-0.498538, 0.864883, -0.058636,
		0.855494, 0.501791, 0.127808,
		33.883530, 29.229994, 48.825359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191399, 29.514065, 48.340073>,  <33.284683, 28.878740, 48.735893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191399, 29.514065, 48.340073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.577744, 29.418304, 48.379662>,  <33.809551, 29.360847, 48.403416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.577744, 29.418304, 48.379662>,  <33.191399, 29.514065, 48.340073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577744, 29.418304, 48.379662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061642, -0.158689, -0.985403,
		0.251614, 0.957864, -0.138515,
		0.965863, -0.239403, 0.098973,
		33.867504, 29.346483, 48.409355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534611, 29.987154, 47.935497>,  <33.191399, 29.514065, 48.340073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534611, 29.987154, 47.935497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.779465, 29.673813, 47.978680>,  <33.926376, 29.485809, 48.004589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.779465, 29.673813, 47.978680>,  <33.534611, 29.987154, 47.935497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779465, 29.673813, 47.978680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191238, 0.014179, -0.981441,
		0.767283, 0.621417, 0.158486,
		0.612131, -0.783352, 0.107959,
		33.963104, 29.438807, 48.011066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891891, 30.085091, 47.332840>,  <33.534611, 29.987154, 47.935497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891891, 30.085091, 47.332840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.044971, 29.741581, 47.469105>,  <34.136818, 29.535475, 47.550865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.044971, 29.741581, 47.469105>,  <33.891891, 30.085091, 47.332840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044971, 29.741581, 47.469105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267562, -0.249909, -0.930568,
		0.884281, 0.447274, 0.134136,
		0.382697, -0.858773, 0.340663,
		34.159782, 29.483950, 47.571304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488403, 30.085907, 46.992031>,  <33.891891, 30.085091, 47.332840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488403, 30.085907, 46.992031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.427662, 29.704634, 47.096630>,  <34.391216, 29.475870, 47.159389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.427662, 29.704634, 47.096630>,  <34.488403, 30.085907, 46.992031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427662, 29.704634, 47.096630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426832, -0.301866, -0.852462,
		0.891491, -0.017832, 0.452688,
		-0.151852, -0.953184, 0.261499,
		34.382107, 29.418678, 47.175079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148552, 29.619614, 46.924797>,  <34.488403, 30.085907, 46.992031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148552, 29.619614, 46.924797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.829082, 29.379282, 46.911407>,  <34.637402, 29.235083, 46.903374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.829082, 29.379282, 46.911407>,  <35.148552, 29.619614, 46.924797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829082, 29.379282, 46.911407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427817, -0.527817, -0.733745,
		0.423186, -0.600346, 0.678600,
		-0.798678, -0.600827, -0.033474,
		34.589478, 29.199034, 46.901363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488911, 28.978697, 46.892437>,  <35.148552, 29.619614, 46.924797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488911, 28.978697, 46.892437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.116081, 28.916517, 46.761551>,  <34.892384, 28.879210, 46.683022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.116081, 28.916517, 46.761551>,  <35.488911, 28.978697, 46.892437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116081, 28.916517, 46.761551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362239, -0.409082, -0.837517,
		-0.003666, -0.899159, 0.437606,
		-0.932078, -0.155447, -0.327211,
		34.836456, 28.869883, 46.663387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450188, 28.302393, 46.715714>,  <35.488911, 28.978697, 46.892437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450188, 28.302393, 46.715714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.159958, 28.479824, 46.505272>,  <34.985821, 28.586283, 46.379005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.159958, 28.479824, 46.505272>,  <35.450188, 28.302393, 46.715714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159958, 28.479824, 46.505272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446899, -0.277627, -0.850414,
		-0.523287, -0.852151, 0.003203,
		-0.725570, 0.443579, -0.526104,
		34.942287, 28.612898, 46.347439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293427, 27.894316, 46.168865>,  <35.450188, 28.302393, 46.715714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293427, 27.894316, 46.168865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.165916, 28.259596, 46.067318>,  <35.089413, 28.478764, 46.006390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.165916, 28.259596, 46.067318>,  <35.293427, 27.894316, 46.168865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165916, 28.259596, 46.067318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483415, -0.073749, -0.872279,
		-0.815288, -0.400784, -0.417945,
		-0.318772, 0.913200, -0.253872,
		35.070286, 28.533556, 45.991158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231941, 27.850666, 45.430199>,  <35.293427, 27.894316, 46.168865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231941, 27.850666, 45.430199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.190758, 28.243753, 45.491730>,  <35.166046, 28.479607, 45.528648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.190758, 28.243753, 45.491730>,  <35.231941, 27.850666, 45.430199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190758, 28.243753, 45.491730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278410, 0.176939, -0.944024,
		-0.954928, -0.054368, -0.291816,
		-0.102958, 0.982719, 0.153827,
		35.159870, 28.538568, 45.537876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811188, 28.026203, 44.899715>,  <35.231941, 27.850666, 45.430199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811188, 28.026203, 44.899715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.010471, 28.354237, 45.012321>,  <35.130043, 28.551056, 45.079884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.010471, 28.354237, 45.012321>,  <34.811188, 28.026203, 44.899715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010471, 28.354237, 45.012321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377868, 0.086863, -0.921776,
		-0.780386, 0.565614, -0.266607,
		0.498211, 0.820083, 0.281514,
		35.159935, 28.600262, 45.096775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120941, 28.274536, 44.756008>,  <34.811188, 28.026203, 44.899715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120941, 28.274536, 44.756008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.875469, 28.010056, 44.583397>,  <33.728188, 27.851368, 44.479832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.875469, 28.010056, 44.583397>,  <34.120941, 28.274536, 44.756008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875469, 28.010056, 44.583397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367163, -0.244876, 0.897345,
		-0.698995, 0.709120, -0.092494,
		-0.613675, -0.661200, -0.431529,
		33.691368, 27.811695, 44.453938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432121, 28.400509, 45.015774>,  <34.120941, 28.274536, 44.756008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432121, 28.400509, 45.015774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.420021, 28.025408, 44.877380>,  <33.412762, 27.800346, 44.794346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.420021, 28.025408, 44.877380>,  <33.432121, 28.400509, 45.015774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420021, 28.025408, 44.877380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365534, -0.311784, 0.877027,
		-0.930307, 0.152997, -0.333349,
		-0.030249, -0.937754, -0.345980,
		33.410946, 27.744081, 44.773586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685345, 28.091888, 45.139050>,  <33.432121, 28.400509, 45.015774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685345, 28.091888, 45.139050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.963753, 27.805664, 45.115295>,  <33.130798, 27.633930, 45.101044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.963753, 27.805664, 45.115295>,  <32.685345, 28.091888, 45.139050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963753, 27.805664, 45.115295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399655, -0.454790, 0.795891,
		-0.596516, -0.530223, -0.602521,
		0.696021, -0.715562, -0.059383,
		33.172558, 27.590996, 45.097481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257305, 27.702856, 45.447586>,  <32.685345, 28.091888, 45.139050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257305, 27.702856, 45.447586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.609776, 27.514021, 45.457813>,  <32.821259, 27.400721, 45.463951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.609776, 27.514021, 45.457813>,  <32.257305, 27.702856, 45.447586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609776, 27.514021, 45.457813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233410, -0.387367, 0.891889,
		-0.411152, -0.791880, -0.451530,
		0.881177, -0.472094, 0.025566,
		32.874130, 27.372395, 45.465485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188560, 26.970692, 45.672421>,  <32.257305, 27.702856, 45.447586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188560, 26.970692, 45.672421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.567169, 27.063959, 45.761612>,  <32.794334, 27.119919, 45.815128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.567169, 27.063959, 45.761612>,  <32.188560, 26.970692, 45.672421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567169, 27.063959, 45.761612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074135, -0.515459, 0.853701,
		0.313995, -0.824581, -0.470610,
		0.946526, 0.233169, 0.222982,
		32.851128, 27.133909, 45.828506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428673, 26.424707, 45.933525>,  <32.188560, 26.970692, 45.672421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428673, 26.424707, 45.933525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.713917, 26.678551, 46.052689>,  <32.885063, 26.830856, 46.124187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.713917, 26.678551, 46.052689>,  <32.428673, 26.424707, 45.933525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713917, 26.678551, 46.052689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013692, -0.412259, 0.910964,
		0.700921, -0.653694, -0.285296,
		0.713108, 0.634607, 0.297911,
		32.927849, 26.868933, 46.142063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904491, 25.972113, 46.232162>,  <32.428673, 26.424707, 45.933525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904491, 25.972113, 46.232162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.968899, 26.344320, 46.363743>,  <33.007542, 26.567644, 46.442692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.968899, 26.344320, 46.363743>,  <32.904491, 25.972113, 46.232162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968899, 26.344320, 46.363743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058642, -0.341733, 0.937966,
		0.985208, -0.131736, -0.109592,
		0.161015, 0.930518, 0.328953,
		33.017204, 26.623476, 46.462429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364967, 25.877285, 46.658806>,  <32.904491, 25.972113, 46.232162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364967, 25.877285, 46.658806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.177906, 26.219957, 46.745888>,  <33.065670, 26.425560, 46.798138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.177906, 26.219957, 46.745888>,  <33.364967, 25.877285, 46.658806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177906, 26.219957, 46.745888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047531, -0.270318, 0.961597,
		0.882631, 0.439349, 0.167134,
		-0.467656, 0.856680, 0.217708,
		33.037609, 26.476961, 46.811199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480259, 25.914600, 47.301136>,  <33.364967, 25.877285, 46.658806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480259, 25.914600, 47.301136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.237026, 26.230980, 47.273899>,  <33.091087, 26.420807, 47.257557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.237026, 26.230980, 47.273899>,  <33.480259, 25.914600, 47.301136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237026, 26.230980, 47.273899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206993, -0.075165, 0.975451,
		0.766412, 0.607249, 0.209428,
		-0.608084, 0.790948, -0.068089,
		33.054600, 26.468264, 47.253471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738884, 26.386541, 47.773800>,  <33.480259, 25.914600, 47.301136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738884, 26.386541, 47.773800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.349316, 26.434982, 47.697052>,  <33.115574, 26.464046, 47.651005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.349316, 26.434982, 47.697052>,  <33.738884, 26.386541, 47.773800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349316, 26.434982, 47.697052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201618, -0.074077, 0.976659,
		0.104064, 0.989872, 0.096562,
		-0.973920, 0.121104, -0.191868,
		33.057140, 26.471313, 47.639492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573162, 26.791716, 48.288589>,  <33.738884, 26.386541, 47.773800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573162, 26.791716, 48.288589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.222580, 26.673468, 48.136574>,  <33.012230, 26.602518, 48.045364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.222580, 26.673468, 48.136574>,  <33.573162, 26.791716, 48.288589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222580, 26.673468, 48.136574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377725, -0.067309, 0.923468,
		-0.298576, 0.952932, -0.052670,
		-0.876457, -0.295620, -0.380042,
		32.959644, 26.584782, 48.022560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038456, 27.275703, 48.660065>,  <33.573162, 26.791716, 48.288589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038456, 27.275703, 48.660065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.834305, 26.959152, 48.525463>,  <32.711815, 26.769222, 48.444702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.834305, 26.959152, 48.525463>,  <33.038456, 27.275703, 48.660065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834305, 26.959152, 48.525463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539091, -0.010431, 0.842183,
		-0.669994, 0.611240, -0.421301,
		-0.510381, -0.791377, -0.336503,
		32.681190, 26.721739, 48.424511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325310, 27.414633, 48.840691>,  <33.038456, 27.275703, 48.660065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325310, 27.414633, 48.840691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.337433, 27.022718, 48.761600>,  <32.344707, 26.787569, 48.714146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.337433, 27.022718, 48.761600>,  <32.325310, 27.414633, 48.840691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337433, 27.022718, 48.761600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526382, -0.183813, 0.830142,
		-0.849708, 0.078919, -0.521314,
		0.030310, -0.979788, -0.197729,
		32.346527, 26.728783, 48.702282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680342, 27.191767, 49.044037>,  <32.325310, 27.414633, 48.840691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680342, 27.191767, 49.044037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.906681, 26.861996, 49.048733>,  <32.042484, 26.664133, 49.051552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.906681, 26.861996, 49.048733>,  <31.680342, 27.191767, 49.044037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906681, 26.861996, 49.048733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266690, -0.169533, 0.948755,
		-0.780187, -0.539982, -0.315796,
		0.565848, -0.824426, 0.011740,
		32.076435, 26.614668, 49.052254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929409, 27.862732, 49.336445>,  <31.680342, 27.191767, 49.044037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929409, 27.862732, 49.336445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.609543, 28.096233, 49.392685>,  <31.417624, 28.236334, 49.426430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.609543, 28.096233, 49.392685>,  <31.929409, 27.862732, 49.336445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609543, 28.096233, 49.392685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214296, 0.496203, -0.841344,
		-0.560904, -0.642663, -0.521892,
		-0.799665, 0.583753, 0.140602,
		31.369644, 28.271358, 49.434864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571138, 27.894655, 48.657169>,  <31.929409, 27.862732, 49.336445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571138, 27.894655, 48.657169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.479008, 28.212057, 48.882488>,  <31.423729, 28.402498, 49.017677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.479008, 28.212057, 48.882488>,  <31.571138, 27.894655, 48.657169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479008, 28.212057, 48.882488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195912, 0.604817, -0.771890,
		-0.953188, -0.067431, -0.294763,
		-0.230327, 0.793504, 0.563294,
		31.409910, 28.450108, 49.051476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107763, 28.157255, 48.273228>,  <31.571138, 27.894655, 48.657169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107763, 28.157255, 48.273228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.250223, 28.443680, 48.513367>,  <31.335699, 28.615534, 48.657452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.250223, 28.443680, 48.513367>,  <31.107763, 28.157255, 48.273228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250223, 28.443680, 48.513367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086372, 0.614497, -0.784177,
		-0.930429, 0.331137, 0.157004,
		0.356148, 0.716060, 0.600347,
		31.357067, 28.658497, 48.693470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586138, 28.668497, 48.317627>,  <31.107763, 28.157255, 48.273228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586138, 28.668497, 48.317627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.943972, 28.827248, 48.399803>,  <31.158672, 28.922499, 48.449108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.943972, 28.827248, 48.399803>,  <30.586138, 28.668497, 48.317627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943972, 28.827248, 48.399803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056422, 0.556328, -0.829045,
		-0.443320, 0.730061, 0.520076,
		0.894586, 0.396876, 0.205439,
		31.212347, 28.946310, 48.461433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543419, 29.443338, 48.354500>,  <30.586138, 28.668497, 48.317627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543419, 29.443338, 48.354500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.930382, 29.368473, 48.286274>,  <31.162560, 29.323553, 48.245338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.930382, 29.368473, 48.286274>,  <30.543419, 29.443338, 48.354500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930382, 29.368473, 48.286274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016702, 0.719268, -0.694532,
		0.252674, 0.669047, 0.698951,
		0.967407, -0.187164, -0.170565,
		31.220604, 29.312325, 48.235104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693081, 30.013771, 48.097046>,  <30.543419, 29.443338, 48.354500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693081, 30.013771, 48.097046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.034695, 29.826685, 48.005951>,  <31.239664, 29.714434, 47.951294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.034695, 29.826685, 48.005951>,  <30.693081, 30.013771, 48.097046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034695, 29.826685, 48.005951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093780, 0.569025, -0.816955,
		0.511692, 0.676352, 0.529830,
		0.854035, -0.467717, -0.227737,
		31.290905, 29.686369, 47.937630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134283, 30.523483, 47.835533>,  <30.693081, 30.013771, 48.097046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134283, 30.523483, 47.835533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.247372, 30.171574, 47.682659>,  <31.315226, 29.960428, 47.590935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.247372, 30.171574, 47.682659>,  <31.134283, 30.523483, 47.835533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247372, 30.171574, 47.682659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108604, 0.425236, -0.898543,
		0.953034, 0.212531, 0.215770,
		0.282721, -0.879775, -0.382183,
		31.332188, 29.907640, 47.568005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634502, 31.130362, 47.805367>,  <31.134283, 30.523483, 47.835533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634502, 31.130362, 47.805367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.520700, 31.507767, 47.873295>,  <31.452419, 31.734211, 47.914051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.520700, 31.507767, 47.873295>,  <31.634502, 31.130362, 47.805367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520700, 31.507767, 47.873295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191508, -0.229507, 0.954280,
		0.939352, 0.238973, 0.245985,
		-0.284503, 0.943514, 0.169823,
		31.435350, 31.790821, 47.924240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859077, 31.227407, 48.499561>,  <31.634502, 31.130362, 47.805367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859077, 31.227407, 48.499561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.626150, 31.549002, 48.451374>,  <31.486393, 31.741959, 48.422462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.626150, 31.549002, 48.451374>,  <31.859077, 31.227407, 48.499561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626150, 31.549002, 48.451374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043730, 0.116996, 0.992169,
		0.811783, 0.583028, -0.032970,
		-0.582320, 0.803984, -0.120471,
		31.451454, 31.790197, 48.415234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130013, 31.741472, 48.957035>,  <31.859077, 31.227407, 48.499561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130013, 31.741472, 48.957035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.746044, 31.835585, 48.896114>,  <31.515663, 31.892052, 48.859562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.746044, 31.835585, 48.896114>,  <32.130013, 31.741472, 48.957035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746044, 31.835585, 48.896114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142752, 0.057218, 0.988103,
		0.241195, 0.970242, -0.021338,
		-0.959920, 0.235280, -0.152304,
		31.458069, 31.906168, 48.850422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074947, 32.303627, 49.412388>,  <32.130013, 31.741472, 48.957035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074947, 32.303627, 49.412388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.704792, 32.172863, 49.335670>,  <31.482698, 32.094402, 49.289642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.704792, 32.172863, 49.335670>,  <32.074947, 32.303627, 49.412388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704792, 32.172863, 49.335670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190683, -0.035756, 0.981000,
		-0.327560, 0.944378, -0.029249,
		-0.925389, -0.326914, -0.191789,
		31.427176, 32.074787, 49.278133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717699, 32.702011, 49.740963>,  <32.074947, 32.303627, 49.412388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717699, 32.702011, 49.740963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.488703, 32.374115, 49.734173>,  <31.351305, 32.177380, 49.730099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.488703, 32.374115, 49.734173>,  <31.717699, 32.702011, 49.740963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488703, 32.374115, 49.734173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163283, 0.093692, 0.982120,
		-0.803489, 0.565026, -0.187486,
		-0.572489, -0.819736, -0.016979,
		31.316956, 32.128193, 49.729080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380346, 32.746422, 50.284801>,  <31.717699, 32.702011, 49.740963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380346, 32.746422, 50.284801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.279842, 32.368412, 50.201084>,  <31.219540, 32.141605, 50.150852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.279842, 32.368412, 50.201084>,  <31.380346, 32.746422, 50.284801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279842, 32.368412, 50.201084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262135, -0.141717, 0.954569,
		-0.931748, 0.294707, -0.212115,
		-0.251258, -0.945021, -0.209297,
		31.204466, 32.084908, 50.138294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723991, 32.714626, 50.454205>,  <31.380346, 32.746422, 50.284801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723991, 32.714626, 50.454205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.870970, 32.344063, 50.487083>,  <30.959158, 32.121727, 50.506809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.870970, 32.344063, 50.487083>,  <30.723991, 32.714626, 50.454205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870970, 32.344063, 50.487083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212435, 0.002440, 0.977172,
		-0.905458, -0.376520, -0.195904,
		0.367447, -0.926405, 0.082195,
		30.981203, 32.066143, 50.511742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212898, 32.389477, 50.988075>,  <30.723991, 32.714626, 50.454205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212898, 32.389477, 50.988075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.498245, 32.109371, 50.977188>,  <30.669453, 31.941309, 50.970654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.498245, 32.109371, 50.977188>,  <30.212898, 32.389477, 50.988075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498245, 32.109371, 50.977188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114719, -0.155008, 0.981230,
		-0.691337, -0.696854, -0.190911,
		0.713367, -0.700261, -0.027220,
		30.712255, 31.899292, 50.969021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918894, 31.907850, 51.467842>,  <30.212898, 32.389477, 50.988075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918894, 31.907850, 51.467842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.313532, 31.847439, 51.443115>,  <30.550314, 31.811192, 51.428280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.313532, 31.847439, 51.443115>,  <29.918894, 31.907850, 51.467842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313532, 31.847439, 51.443115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022546, -0.249002, 0.968240,
		-0.161619, -0.956655, -0.242260,
		0.986596, -0.151024, -0.061812,
		30.609510, 31.802130, 51.424572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.644024, 36.119438, 35.823879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977951, 36.189728, 36.032570>,  <35.178307, 36.231903, 36.157784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977951, 36.189728, 36.032570>,  <34.644024, 36.119438, 35.823879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977951, 36.189728, 36.032570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357874, -0.546914, 0.756843,
		0.418337, -0.818539, -0.393686,
		0.834817, 0.175725, 0.521729,
		35.228397, 36.242447, 36.189087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859989, 35.537014, 36.223034>,  <34.644024, 36.119438, 35.823879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859989, 35.537014, 36.223034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010437, 35.844498, 36.429962>,  <35.100704, 36.028988, 36.554119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010437, 35.844498, 36.429962>,  <34.859989, 35.537014, 36.223034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010437, 35.844498, 36.429962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319266, -0.416608, 0.851180,
		0.869829, -0.485309, 0.088728,
		0.376120, 0.768709, 0.517320,
		35.123272, 36.075111, 36.585159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266781, 35.193615, 36.793476>,  <34.859989, 35.537014, 36.223034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266781, 35.193615, 36.793476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162464, 35.570133, 36.879227>,  <35.099876, 35.796043, 36.930679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162464, 35.570133, 36.879227>,  <35.266781, 35.193615, 36.793476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162464, 35.570133, 36.879227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277681, -0.285819, 0.917170,
		0.924599, 0.179657, 0.335917,
		-0.260788, 0.941292, 0.214381,
		35.084229, 35.852520, 36.943542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644150, 35.384853, 37.341408>,  <35.266781, 35.193615, 36.793476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644150, 35.384853, 37.341408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331215, 35.633930, 37.347103>,  <35.143452, 35.783375, 37.350521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331215, 35.633930, 37.347103>,  <35.644150, 35.384853, 37.341408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331215, 35.633930, 37.347103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213449, -0.289511, 0.933072,
		0.585135, 0.726941, 0.359408,
		-0.782341, 0.622688, 0.014238,
		35.096512, 35.820736, 37.351376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657860, 35.911545, 37.923233>,  <35.644150, 35.384853, 37.341408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657860, 35.911545, 37.923233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270477, 35.875969, 37.830124>,  <35.038048, 35.854622, 37.774258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270477, 35.875969, 37.830124>,  <35.657860, 35.911545, 37.923233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270477, 35.875969, 37.830124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214234, -0.179884, 0.960076,
		-0.127261, 0.979659, 0.155156,
		-0.968457, -0.088940, -0.232769,
		34.979939, 35.849285, 37.760292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288013, 36.223873, 38.562107>,  <35.657860, 35.911545, 37.923233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288013, 36.223873, 38.562107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976246, 36.076077, 38.359730>,  <34.789185, 35.987400, 38.238304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976246, 36.076077, 38.359730>,  <35.288013, 36.223873, 38.562107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976246, 36.076077, 38.359730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445850, -0.240223, 0.862271,
		-0.440138, 0.897648, 0.022498,
		-0.779420, -0.369488, -0.505948,
		34.742420, 35.965229, 38.207947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611488, 36.555401, 38.799664>,  <35.288013, 36.223873, 38.562107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611488, 36.555401, 38.799664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544746, 36.196552, 38.636036>,  <34.504700, 35.981243, 38.537861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544746, 36.196552, 38.636036>,  <34.611488, 36.555401, 38.799664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544746, 36.196552, 38.636036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475757, -0.290135, 0.830347,
		-0.863605, 0.333168, -0.378399,
		-0.166858, -0.897118, -0.409069,
		34.494690, 35.927418, 38.513313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000675, 36.421558, 38.957260>,  <34.611488, 36.555401, 38.799664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000675, 36.421558, 38.957260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107784, 36.044235, 38.878811>,  <34.172050, 35.817841, 38.831741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107784, 36.044235, 38.878811>,  <34.000675, 36.421558, 38.957260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107784, 36.044235, 38.878811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528518, -0.314008, 0.788712,
		-0.805584, -0.107541, -0.582639,
		0.267773, -0.943310, -0.196122,
		34.188114, 35.761242, 38.819973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445637, 36.062004, 39.232723>,  <34.000675, 36.421558, 38.957260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445637, 36.062004, 39.232723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692997, 35.760059, 39.145302>,  <33.841412, 35.578892, 39.092850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692997, 35.760059, 39.145302>,  <33.445637, 36.062004, 39.232723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692997, 35.760059, 39.145302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342691, -0.509297, 0.789417,
		-0.707211, -0.413276, -0.573633,
		0.618397, -0.754863, -0.218555,
		33.878517, 35.533600, 39.079735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117699, 35.482822, 39.049892>,  <33.445637, 36.062004, 39.232723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117699, 35.482822, 39.049892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473721, 35.384159, 39.203239>,  <33.687332, 35.324963, 39.295246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473721, 35.384159, 39.203239>,  <33.117699, 35.482822, 39.049892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473721, 35.384159, 39.203239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451758, -0.589846, 0.669325,
		0.061031, -0.768922, -0.636423,
		0.890051, -0.246660, 0.383366,
		33.740734, 35.310162, 39.318249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947758, 34.804752, 39.301579>,  <33.117699, 35.482822, 39.049892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947758, 34.804752, 39.301579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292175, 34.919125, 39.469795>,  <33.498825, 34.987747, 39.570724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292175, 34.919125, 39.469795>,  <32.947758, 34.804752, 39.301579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292175, 34.919125, 39.469795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233741, -0.511913, 0.826626,
		0.451636, -0.810056, -0.373945,
		0.861040, 0.285928, 0.420542,
		33.550488, 35.004902, 39.595959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233509, 34.170261, 39.561798>,  <32.947758, 34.804752, 39.301579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233509, 34.170261, 39.561798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399387, 34.469326, 39.769272>,  <33.498913, 34.648766, 39.893757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399387, 34.469326, 39.769272>,  <33.233509, 34.170261, 39.561798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399387, 34.469326, 39.769272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306058, -0.422202, 0.853272,
		0.856947, -0.512595, 0.053742,
		0.414693, 0.747658, 0.518689,
		33.523796, 34.693623, 39.924877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246445, 33.457893, 39.510849>,  <33.233509, 34.170261, 39.561798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246445, 33.457893, 39.510849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985050, 33.157299, 39.474571>,  <32.828213, 32.976944, 39.452805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985050, 33.157299, 39.474571>,  <33.246445, 33.457893, 39.510849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985050, 33.157299, 39.474571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125251, 0.225513, -0.966155,
		0.746504, -0.620009, -0.241494,
		-0.653485, -0.751486, -0.090690,
		32.789005, 32.931854, 39.447365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402267, 33.156734, 38.894283>,  <33.246445, 33.457893, 39.510849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402267, 33.156734, 38.894283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021675, 33.051365, 38.957897>,  <32.793320, 32.988144, 38.996067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021675, 33.051365, 38.957897>,  <33.402267, 33.156734, 38.894283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021675, 33.051365, 38.957897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190138, 0.096947, -0.976959,
		0.241940, -0.959795, -0.142331,
		-0.951479, -0.263428, 0.159039,
		32.736233, 32.972336, 39.005608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276192, 32.631111, 38.450695>,  <33.402267, 33.156734, 38.894283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276192, 32.631111, 38.450695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923008, 32.791325, 38.548637>,  <32.711098, 32.887451, 38.607403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923008, 32.791325, 38.548637>,  <33.276192, 32.631111, 38.450695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923008, 32.791325, 38.548637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245737, 0.050080, -0.968042,
		-0.399998, -0.914911, 0.054208,
		-0.882958, 0.400536, 0.244860,
		32.658119, 32.911484, 38.622097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845097, 32.447590, 37.895950>,  <33.276192, 32.631111, 38.450695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845097, 32.447590, 37.895950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613934, 32.709091, 38.091351>,  <32.475235, 32.865993, 38.208591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613934, 32.709091, 38.091351>,  <32.845097, 32.447590, 37.895950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613934, 32.709091, 38.091351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450005, 0.244081, -0.859022,
		-0.680824, -0.716259, 0.153138,
		-0.577905, 0.653756, 0.488497,
		32.440563, 32.905216, 38.237900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153534, 32.222691, 37.702213>,  <32.845097, 32.447590, 37.895950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153534, 32.222691, 37.702213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149380, 32.603954, 37.823124>,  <32.146885, 32.832714, 37.895672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149380, 32.603954, 37.823124>,  <32.153534, 32.222691, 37.702213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149380, 32.603954, 37.823124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497259, 0.257346, -0.828557,
		-0.867540, -0.158918, 0.471296,
		-0.010387, 0.953162, 0.302281,
		32.146263, 32.889904, 37.913807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464487, 32.380482, 37.759460>,  <32.153534, 32.222691, 37.702213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464487, 32.380482, 37.759460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668909, 32.720612, 37.709217>,  <31.791561, 32.924690, 37.679070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668909, 32.720612, 37.709217>,  <31.464487, 32.380482, 37.759460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668909, 32.720612, 37.709217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575629, 0.230046, -0.784685,
		-0.638338, 0.473321, 0.607035,
		0.511054, 0.850321, -0.125610,
		31.822226, 32.975708, 37.671535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911835, 32.750423, 37.542694>,  <31.464487, 32.380482, 37.759460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911835, 32.750423, 37.542694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238110, 32.956566, 37.437572>,  <31.433874, 33.080250, 37.374500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238110, 32.956566, 37.437572>,  <30.911835, 32.750423, 37.542694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238110, 32.956566, 37.437572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492118, 0.379363, -0.783519,
		-0.304094, 0.768436, 0.563058,
		0.815688, 0.515355, -0.262799,
		31.482817, 33.111172, 37.358734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686415, 33.359779, 37.212399>,  <30.911835, 32.750423, 37.542694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686415, 33.359779, 37.212399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061720, 33.345570, 37.074757>,  <31.286903, 33.337044, 36.992172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061720, 33.345570, 37.074757>,  <30.686415, 33.359779, 37.212399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061720, 33.345570, 37.074757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314954, 0.323697, -0.892202,
		0.143077, 0.945494, 0.292524,
		0.938260, -0.035522, -0.344101,
		31.343199, 33.334911, 36.971527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781620, 34.056633, 36.906178>,  <30.686415, 33.359779, 37.212399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781620, 34.056633, 36.906178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057693, 33.805893, 36.761566>,  <31.223337, 33.655449, 36.674801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057693, 33.805893, 36.761566>,  <30.781620, 34.056633, 36.906178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057693, 33.805893, 36.761566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219080, 0.295143, -0.929997,
		0.689673, 0.721072, 0.066372,
		0.690185, -0.626853, -0.361525,
		31.264750, 33.617836, 36.653111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199265, 34.515064, 36.394505>,  <30.781620, 34.056633, 36.906178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199265, 34.515064, 36.394505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261341, 34.132729, 36.294670>,  <31.298588, 33.903328, 36.234768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261341, 34.132729, 36.294670>,  <31.199265, 34.515064, 36.394505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261341, 34.132729, 36.294670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178775, 0.221305, -0.958678,
		0.971573, 0.193400, -0.136534,
		0.155193, -0.955835, -0.249590,
		31.307899, 33.845978, 36.219791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652782, 34.562214, 35.815022>,  <31.199265, 34.515064, 36.394505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652782, 34.562214, 35.815022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511204, 34.189346, 35.784584>,  <31.426256, 33.965626, 35.766323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511204, 34.189346, 35.784584>,  <31.652782, 34.562214, 35.815022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511204, 34.189346, 35.784584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168777, 0.143687, -0.975125,
		0.919910, -0.332301, -0.208185,
		-0.353948, -0.932164, -0.076094,
		31.405020, 33.909698, 35.761757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969328, 34.299492, 35.223431>,  <31.652782, 34.562214, 35.815022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969328, 34.299492, 35.223431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642569, 34.082119, 35.300743>,  <31.446512, 33.951694, 35.347130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642569, 34.082119, 35.300743>,  <31.969328, 34.299492, 35.223431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642569, 34.082119, 35.300743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205938, -0.038200, -0.977819,
		0.538764, -0.838582, -0.080708,
		-0.816898, -0.543435, 0.193277,
		31.397499, 33.919090, 35.358727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982765, 33.751167, 34.800266>,  <31.969328, 34.299492, 35.223431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982765, 33.751167, 34.800266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598698, 33.816990, 34.890598>,  <31.368258, 33.856483, 34.944798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598698, 33.816990, 34.890598>,  <31.982765, 33.751167, 34.800266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598698, 33.816990, 34.890598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233916, -0.031263, -0.971754,
		-0.152847, -0.985872, 0.068509,
		-0.960167, 0.164555, 0.225833,
		31.310648, 33.866356, 34.958347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721684, 33.303253, 34.404675>,  <31.982765, 33.751167, 34.800266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721684, 33.303253, 34.404675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421297, 33.555920, 34.481667>,  <31.241066, 33.707520, 34.527863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421297, 33.555920, 34.481667>,  <31.721684, 33.303253, 34.404675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421297, 33.555920, 34.481667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235235, 0.016467, -0.971799,
		-0.617023, -0.775065, 0.136224,
		-0.750964, 0.631667, 0.192483,
		31.196007, 33.745419, 34.539410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815500, 32.833019, 35.068169>,  <31.721684, 33.303253, 34.404675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815500, 32.833019, 35.068169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020298, 32.549316, 34.874340>,  <32.143177, 32.379093, 34.758041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020298, 32.549316, 34.874340>,  <31.815500, 32.833019, 35.068169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020298, 32.549316, 34.874340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115665, -0.615907, 0.779282,
		-0.851166, -0.342940, -0.397378,
		0.511995, -0.709261, -0.484572,
		32.173897, 32.336536, 34.728970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468269, 32.143433, 35.184341>,  <31.815500, 32.833019, 35.068169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468269, 32.143433, 35.184341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837395, 32.042046, 35.068291>,  <32.058868, 31.981213, 34.998661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837395, 32.042046, 35.068291>,  <31.468269, 32.143433, 35.184341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837395, 32.042046, 35.068291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018361, -0.723284, 0.690307,
		-0.384812, -0.642351, -0.662801,
		0.922812, -0.253469, -0.290123,
		32.114239, 31.966005, 34.981255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439907, 31.394415, 34.990818>,  <31.468269, 32.143433, 35.184341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439907, 31.394415, 34.990818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813595, 31.506882, 35.078613>,  <32.037807, 31.574362, 35.131290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813595, 31.506882, 35.078613>,  <31.439907, 31.394415, 34.990818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813595, 31.506882, 35.078613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108252, -0.809812, 0.576617,
		0.339870, -0.514928, -0.786980,
		0.934222, 0.281167, 0.219489,
		32.093861, 31.591232, 35.144459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810163, 30.825390, 34.886112>,  <31.439907, 31.394415, 34.990818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810163, 30.825390, 34.886112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017044, 31.048435, 35.145828>,  <32.141171, 31.182262, 35.301659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017044, 31.048435, 35.145828>,  <31.810163, 30.825390, 34.886112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017044, 31.048435, 35.145828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054693, -0.778614, 0.625115,
		0.854115, -0.287798, -0.433196,
		0.517200, 0.557613, 0.649286,
		32.172203, 31.215719, 35.340614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445568, 30.452873, 35.105125>,  <31.810163, 30.825390, 34.886112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445568, 30.452873, 35.105125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407642, 30.726332, 35.394577>,  <32.384888, 30.890408, 35.568249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407642, 30.726332, 35.394577>,  <32.445568, 30.452873, 35.105125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407642, 30.726332, 35.394577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197017, -0.699638, 0.686797,
		0.975805, 0.207686, -0.068354,
		-0.094815, 0.683647, 0.723628,
		32.379196, 30.931425, 35.611664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052010, 30.488216, 35.488281>,  <32.445568, 30.452873, 35.105125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052010, 30.488216, 35.488281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771786, 30.628401, 35.736923>,  <32.603649, 30.712511, 35.886108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771786, 30.628401, 35.736923>,  <33.052010, 30.488216, 35.488281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771786, 30.628401, 35.736923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278974, -0.667255, 0.690611,
		0.656800, 0.657227, 0.369684,
		-0.700562, 0.350461, 0.621603,
		32.561619, 30.733540, 35.923405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396725, 30.381096, 36.025482>,  <33.052010, 30.488216, 35.488281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396725, 30.381096, 36.025482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033234, 30.456612, 36.174381>,  <32.815140, 30.501921, 36.263721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033234, 30.456612, 36.174381>,  <33.396725, 30.381096, 36.025482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033234, 30.456612, 36.174381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164779, -0.657141, 0.735536,
		0.383479, 0.729742, 0.566056,
		-0.908731, 0.188788, 0.372246,
		32.760612, 30.513248, 36.286057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346786, 30.751276, 36.737503>,  <33.396725, 30.381096, 36.025482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346786, 30.751276, 36.737503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022572, 30.528837, 36.663975>,  <32.828045, 30.395374, 36.619858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022572, 30.528837, 36.663975>,  <33.346786, 30.751276, 36.737503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022572, 30.528837, 36.663975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192412, -0.549257, 0.813200,
		-0.553182, 0.623758, 0.552192,
		-0.810535, -0.556096, -0.183820,
		32.779411, 30.362009, 36.608829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088718, 30.721718, 37.352211>,  <33.346786, 30.751276, 36.737503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088718, 30.721718, 37.352211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929176, 30.405611, 37.166138>,  <32.833450, 30.215948, 37.054493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929176, 30.405611, 37.166138>,  <33.088718, 30.721718, 37.352211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929176, 30.405611, 37.166138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298319, -0.591506, 0.749083,
		-0.867133, 0.160003, 0.471677,
		-0.398855, -0.790265, -0.465183,
		32.809521, 30.168531, 37.026585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455750, 30.514154, 37.782566>,  <33.088718, 30.721718, 37.352211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455750, 30.514154, 37.782566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563747, 30.204023, 37.554192>,  <32.628544, 30.017944, 37.417168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563747, 30.204023, 37.554192>,  <32.455750, 30.514154, 37.782566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563747, 30.204023, 37.554192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212694, -0.530289, 0.820704,
		-0.939078, -0.343017, 0.021734,
		0.269990, -0.775328, -0.570940,
		32.644745, 29.971426, 37.382908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109253, 29.900707, 38.089443>,  <32.455750, 30.514154, 37.782566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109253, 29.900707, 38.089443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382286, 29.751574, 37.838024>,  <32.546104, 29.662094, 37.687172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382286, 29.751574, 37.838024>,  <32.109253, 29.900707, 38.089443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382286, 29.751574, 37.838024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156645, -0.765445, 0.624145,
		-0.713821, -0.524491, -0.464079,
		0.682585, -0.372832, -0.628550,
		32.587063, 29.639723, 37.649460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880695, 29.144613, 37.900829>,  <32.109253, 29.900707, 38.089443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880695, 29.144613, 37.900829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271065, 29.226358, 37.870335>,  <32.505287, 29.275406, 37.852039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271065, 29.226358, 37.870335>,  <31.880695, 29.144613, 37.900829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271065, 29.226358, 37.870335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191881, -0.638195, 0.745579,
		0.103716, -0.742255, -0.662043,
		0.975922, 0.204362, -0.076234,
		32.563843, 29.287666, 37.847466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151600, 28.493761, 38.054432>,  <31.880695, 29.144613, 37.900829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151600, 28.493761, 38.054432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445950, 28.760799, 38.099701>,  <32.622559, 28.921022, 38.126862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445950, 28.760799, 38.099701>,  <32.151600, 28.493761, 38.054432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445950, 28.760799, 38.099701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341341, -0.510083, 0.789494,
		0.584790, -0.542337, -0.603234,
		0.735872, 0.667597, 0.113170,
		32.666710, 28.961079, 38.133652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758789, 28.105959, 38.079807>,  <32.151600, 28.493761, 38.054432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758789, 28.105959, 38.079807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823154, 28.450600, 38.272369>,  <32.861774, 28.657383, 38.387905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823154, 28.450600, 38.272369>,  <32.758789, 28.105959, 38.079807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823154, 28.450600, 38.272369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430203, -0.500217, 0.751471,
		0.888276, 0.086183, -0.451153,
		0.160910, 0.861601, 0.481406,
		32.871429, 28.709080, 38.416790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202759, 27.928625, 38.491833>,  <32.758789, 28.105959, 38.079807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202759, 27.928625, 38.491833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149563, 28.284588, 38.666363>,  <33.117645, 28.498165, 38.771080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149563, 28.284588, 38.666363>,  <33.202759, 27.928625, 38.491833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149563, 28.284588, 38.666363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423893, -0.346872, 0.836657,
		0.895895, 0.296226, -0.331093,
		-0.132993, 0.889905, 0.436329,
		33.109665, 28.551559, 38.797260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739475, 28.066528, 38.925747>,  <33.202759, 27.928625, 38.491833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739475, 28.066528, 38.925747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494343, 28.349506, 39.066578>,  <33.347263, 28.519293, 39.151077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494343, 28.349506, 39.066578>,  <33.739475, 28.066528, 38.925747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494343, 28.349506, 39.066578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320955, -0.184310, 0.928988,
		0.722100, 0.682312, -0.114108,
		-0.612829, 0.707446, 0.352082,
		33.310493, 28.561741, 39.172203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116062, 28.276390, 39.543995>,  <33.739475, 28.066528, 38.925747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116062, 28.276390, 39.543995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758995, 28.440239, 39.619217>,  <33.544754, 28.538548, 39.664349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758995, 28.440239, 39.619217>,  <34.116062, 28.276390, 39.543995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758995, 28.440239, 39.619217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195524, -0.024001, 0.980405,
		0.406107, 0.911940, -0.058666,
		-0.892663, 0.409620, 0.188053,
		33.491196, 28.563126, 39.675632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129730, 28.974840, 40.082123>,  <34.116062, 28.276390, 39.543995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129730, 28.974840, 40.082123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779434, 28.781727, 40.081100>,  <33.569256, 28.665859, 40.080486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779434, 28.781727, 40.081100>,  <34.129730, 28.974840, 40.082123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779434, 28.781727, 40.081100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035139, -0.069024, 0.996996,
		-0.481510, 0.873015, 0.077412,
		-0.875736, -0.482783, -0.002559,
		33.516712, 28.636892, 40.080334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710918, 29.350754, 40.668079>,  <34.129730, 28.974840, 40.082123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710918, 29.350754, 40.668079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554565, 28.990189, 40.593601>,  <33.460754, 28.773849, 40.548916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554565, 28.990189, 40.593601>,  <33.710918, 29.350754, 40.668079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554565, 28.990189, 40.593601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069900, -0.172631, 0.982503,
		-0.917783, 0.397056, 0.004469,
		-0.390881, -0.901413, -0.186192,
		33.437302, 28.719765, 40.537743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197369, 29.321455, 41.100410>,  <33.710918, 29.350754, 40.668079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197369, 29.321455, 41.100410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247707, 28.936621, 41.003620>,  <33.277908, 28.705721, 40.945545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247707, 28.936621, 41.003620>,  <33.197369, 29.321455, 41.100410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247707, 28.936621, 41.003620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037947, -0.248408, 0.967912,
		-0.991324, -0.112622, -0.067768,
		0.125843, -0.962086, -0.241979,
		33.285461, 28.647995, 40.931026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686806, 28.914118, 41.457283>,  <33.197369, 29.321455, 41.100410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686806, 28.914118, 41.457283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997433, 28.677881, 41.369522>,  <33.183811, 28.536139, 41.316864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997433, 28.677881, 41.369522>,  <32.686806, 28.914118, 41.457283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997433, 28.677881, 41.369522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049404, -0.290089, 0.955724,
		-0.628092, -0.753025, -0.196097,
		0.776569, -0.590594, -0.219405,
		33.230404, 28.500704, 41.303699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500092, 28.338455, 41.742859>,  <32.686806, 28.914118, 41.457283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500092, 28.338455, 41.742859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895569, 28.314327, 41.687939>,  <33.132854, 28.299850, 41.654987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895569, 28.314327, 41.687939>,  <32.500092, 28.338455, 41.742859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895569, 28.314327, 41.687939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095514, -0.452524, 0.886622,
		-0.115609, -0.889710, -0.441646,
		0.988692, -0.060318, -0.137296,
		33.192177, 28.296232, 41.646751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614300, 27.691429, 41.998600>,  <32.500092, 28.338455, 41.742859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614300, 27.691429, 41.998600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956036, 27.899212, 41.991985>,  <33.161076, 28.023882, 41.988018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956036, 27.899212, 41.991985>,  <32.614300, 27.691429, 41.998600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956036, 27.899212, 41.991985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178471, -0.263351, 0.948048,
		0.488115, -0.812903, -0.317698,
		0.854337, 0.519456, -0.016534,
		33.212337, 28.055048, 41.987026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051910, 27.234514, 42.320915>,  <32.614300, 27.691429, 41.998600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051910, 27.234514, 42.320915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251629, 27.580540, 42.340374>,  <33.371460, 27.788155, 42.352051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251629, 27.580540, 42.340374>,  <33.051910, 27.234514, 42.320915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251629, 27.580540, 42.340374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333972, -0.243960, 0.910465,
		0.799479, -0.438345, -0.410715,
		0.499296, 0.865065, 0.048646,
		33.401417, 27.840059, 42.354969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561081, 27.073778, 42.661465>,  <33.051910, 27.234514, 42.320915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561081, 27.073778, 42.661465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609344, 27.469494, 42.694321>,  <33.638302, 27.706924, 42.714035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609344, 27.469494, 42.694321>,  <33.561081, 27.073778, 42.661465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609344, 27.469494, 42.694321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299138, -0.115129, 0.947239,
		0.946551, -0.089721, -0.309826,
		0.120657, 0.989290, 0.082136,
		33.645542, 27.766281, 42.718960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238171, 27.275864, 42.935936>,  <33.561081, 27.073778, 42.661465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238171, 27.275864, 42.935936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013603, 27.595261, 43.022861>,  <33.878864, 27.786898, 43.075016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013603, 27.595261, 43.022861>,  <34.238171, 27.275864, 42.935936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013603, 27.595261, 43.022861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319777, -0.032879, 0.946922,
		0.763255, 0.601108, -0.236880,
		-0.561414, 0.798491, 0.217315,
		33.845181, 27.834808, 43.088055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576584, 27.611101, 43.454945>,  <34.238171, 27.275864, 42.935936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576584, 27.611101, 43.454945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200420, 27.739616, 43.499496>,  <33.974724, 27.816725, 43.526226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200420, 27.739616, 43.499496>,  <34.576584, 27.611101, 43.454945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200420, 27.739616, 43.499496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084491, -0.096489, 0.991741,
		0.329380, 0.942053, 0.063593,
		-0.940409, 0.321287, 0.111377,
		33.918297, 27.836002, 43.532909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479149, 28.000677, 44.095516>,  <34.576584, 27.611101, 43.454945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479149, 28.000677, 44.095516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104126, 27.875069, 44.035686>,  <33.879112, 27.799704, 43.999790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104126, 27.875069, 44.035686>,  <34.479149, 28.000677, 44.095516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104126, 27.875069, 44.035686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057137, -0.285146, 0.956779,
		-0.343099, 0.905584, 0.249400,
		-0.937560, -0.314020, -0.149576,
		33.822857, 27.780863, 43.990814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622620, 28.684423, 44.250202>,  <34.479149, 28.000677, 44.095516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622620, 28.684423, 44.250202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912231, 28.837420, 44.479801>,  <35.085999, 28.929216, 44.617561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912231, 28.837420, 44.479801>,  <34.622620, 28.684423, 44.250202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912231, 28.837420, 44.479801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470559, 0.334552, -0.816486,
		-0.504331, 0.861264, 0.062243,
		0.724034, 0.382490, 0.574001,
		35.129440, 28.952166, 44.652000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722416, 29.491821, 44.132118>,  <34.622620, 28.684423, 44.250202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722416, 29.491821, 44.132118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071827, 29.368389, 44.282707>,  <35.281471, 29.294329, 44.373062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071827, 29.368389, 44.282707>,  <34.722416, 29.491821, 44.132118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071827, 29.368389, 44.282707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467701, 0.317624, -0.824846,
		0.134955, 0.896600, 0.421776,
		0.873523, -0.308582, 0.376476,
		35.333885, 29.275814, 44.395649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167233, 29.971159, 43.962234>,  <34.722416, 29.491821, 44.132118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167233, 29.971159, 43.962234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406773, 29.655998, 44.019627>,  <35.550499, 29.466902, 44.054062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406773, 29.655998, 44.019627>,  <35.167233, 29.971159, 43.962234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406773, 29.655998, 44.019627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517149, 0.243649, -0.820483,
		0.611500, 0.565550, 0.553372,
		0.598853, -0.787901, 0.143482,
		35.586430, 29.419628, 44.062672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846657, 30.249372, 43.837337>,  <35.167233, 29.971159, 43.962234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846657, 30.249372, 43.837337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908741, 29.856483, 43.795097>,  <35.945992, 29.620750, 43.769753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908741, 29.856483, 43.795097>,  <35.846657, 30.249372, 43.837337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908741, 29.856483, 43.795097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534603, 0.173408, -0.827121,
		0.830727, 0.071924, 0.552013,
		0.155213, -0.982220, -0.105604,
		35.955303, 29.561817, 43.763416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587864, 30.182928, 43.708851>,  <35.846657, 30.249372, 43.837337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587864, 30.182928, 43.708851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390766, 29.861486, 43.575329>,  <36.272507, 29.668621, 43.495216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390766, 29.861486, 43.575329>,  <36.587864, 30.182928, 43.708851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390766, 29.861486, 43.575329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521562, 0.034324, -0.852523,
		0.696547, -0.594176, 0.402215,
		-0.492743, -0.803602, -0.333808,
		36.242943, 29.620405, 43.475185>
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
