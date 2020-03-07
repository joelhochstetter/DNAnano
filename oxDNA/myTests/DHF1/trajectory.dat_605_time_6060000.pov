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
	<3.032194, 2.590539, 2.998435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.639736, 2.666845, 2.986009>,  <2.404262, 2.712630, 2.978553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.639736, 2.666845, 2.986009>,  <3.032194, 2.590539, 2.998435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.639736, 2.666845, 2.986009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041479, -0.050838, 0.997845,
		0.188777, 0.980318, 0.057792,
		-0.981143, 0.190767, -0.031066,
		2.345393, 2.724076, 2.976689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.862634, 2.990009, 3.614967>,  <3.032194, 2.590539, 2.998435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.862634, 2.990009, 3.614967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.501194, 2.854084, 3.510632>,  <2.284330, 2.772529, 3.448031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.501194, 2.854084, 3.510632>,  <2.862634, 2.990009, 3.614967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.501194, 2.854084, 3.510632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169352, -0.275924, 0.946143,
		-0.393481, 0.899107, 0.191777,
		-0.903600, -0.339812, -0.260836,
		2.230114, 2.752141, 3.432381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.350542, 3.325095, 4.004773>,  <2.862634, 2.990009, 3.614967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.350542, 3.325095, 4.004773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.253983, 2.955635, 3.885712>,  <2.196047, 2.733959, 3.814276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.253983, 2.955635, 3.885712>,  <2.350542, 3.325095, 4.004773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.253983, 2.955635, 3.885712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283249, -0.226304, 0.931964,
		-0.928168, 0.309284, -0.206994,
		-0.241398, -0.923650, -0.297652,
		2.181563, 2.678540, 3.796417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.681219, 3.061794, 4.142805>,  <2.350542, 3.325095, 4.004773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.681219, 3.061794, 4.142805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.922241, 2.742903, 4.157523>,  <2.066854, 2.551568, 4.166354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.922241, 2.742903, 4.157523>,  <1.681219, 3.061794, 4.142805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.922241, 2.742903, 4.157523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424901, -0.281435, 0.860380,
		-0.675564, -0.534060, -0.508324,
		0.602554, -0.797229, 0.036795,
		2.103008, 2.503734, 4.168561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.227298, 2.465929, 4.395579>,  <1.681219, 3.061794, 4.142805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.227298, 2.465929, 4.395579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.599483, 2.339516, 4.469725>,  <1.822795, 2.263668, 4.514213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.599483, 2.339516, 4.469725>,  <1.227298, 2.465929, 4.395579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.599483, 2.339516, 4.469725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300608, -0.369273, 0.879359,
		-0.209454, -0.873935, -0.438596,
		0.930465, -0.316031, 0.185366,
		1.878623, 2.244706, 4.525335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.193344, 1.801684, 4.654631>,  <1.227298, 2.465929, 4.395579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.193344, 1.801684, 4.654631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.553524, 1.911196, 4.789825>,  <1.769632, 1.976903, 4.870941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.553524, 1.911196, 4.789825>,  <1.193344, 1.801684, 4.654631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.553524, 1.911196, 4.789825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232101, -0.354732, 0.905701,
		0.367856, -0.893986, -0.255874,
		0.900450, 0.273779, 0.337985,
		1.823659, 1.993329, 4.891221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.425123, 1.255037, 5.030720>,  <1.193344, 1.801684, 4.654631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.425123, 1.255037, 5.030720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.597351, 1.593258, 5.156989>,  <1.700688, 1.796191, 5.232751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.597351, 1.593258, 5.156989>,  <1.425123, 1.255037, 5.030720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.597351, 1.593258, 5.156989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294723, -0.198863, 0.934661,
		0.853082, -0.495472, 0.163580,
		0.430569, 0.845554, 0.315674,
		1.726522, 1.846924, 5.251691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.564318, 1.156012, 5.679035>,  <1.425123, 1.255037, 5.030720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.564318, 1.156012, 5.679035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.592129, 1.554947, 5.670232>,  <1.608815, 1.794308, 5.664951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.592129, 1.554947, 5.670232>,  <1.564318, 1.156012, 5.679035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.592129, 1.554947, 5.670232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598670, 0.059360, 0.798793,
		0.797972, -0.042363, 0.601203,
		0.069527, 0.997337, -0.022006,
		1.612987, 1.854148, 5.663630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.196653, 2.214223, 1.097915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.520493, 2.376802, 1.267313>,  <0.714796, 2.474350, 1.368952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.520493, 2.376802, 1.267313>,  <0.196653, 2.214223, 1.097915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.520493, 2.376802, 1.267313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566291, -0.350960, -0.745750,
		-0.154479, 0.843580, -0.514304,
		0.809600, 0.406448, 0.423496,
		0.763372, 2.498737, 1.394362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.573707, 2.522137, 0.554591>,  <0.196653, 2.214223, 1.097915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.573707, 2.522137, 0.554591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.813118, 2.432191, 0.862149>,  <0.956765, 2.378224, 1.046684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.813118, 2.432191, 0.862149>,  <0.573707, 2.522137, 0.554591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.813118, 2.432191, 0.862149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712472, -0.289401, -0.639243,
		0.366262, 0.930421, -0.013005,
		0.598528, -0.224864, 0.768895,
		0.992676, 2.364732, 1.092818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.176990, 3.090080, 0.608956>,  <0.573707, 2.522137, 0.554591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.176990, 3.090080, 0.608956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.303368, 2.732896, 0.737206>,  <1.379194, 2.518585, 0.814157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.303368, 2.732896, 0.737206>,  <1.176990, 3.090080, 0.608956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.303368, 2.732896, 0.737206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761425, 0.037022, -0.647195,
		0.566049, 0.448610, 0.691619,
		0.315943, -0.892961, 0.320627,
		1.398151, 2.465007, 0.833394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.878314, 3.113368, 0.677331>,  <1.176990, 3.090080, 0.608956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.878314, 3.113368, 0.677331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.776505, 2.726977, 0.658978>,  <1.715419, 2.495142, 0.647966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.776505, 2.726977, 0.658978>,  <1.878314, 3.113368, 0.677331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.776505, 2.726977, 0.658978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710181, -0.154499, -0.686857,
		0.656400, -0.207407, 0.725343,
		-0.254524, -0.965977, -0.045883,
		1.700147, 2.437184, 0.645213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.511350, 2.790828, 0.622010>,  <1.878314, 3.113368, 0.677331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.511350, 2.790828, 0.622010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.235573, 2.548093, 0.463812>,  <2.070106, 2.402452, 0.368893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.235573, 2.548093, 0.463812>,  <2.511350, 2.790828, 0.622010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.235573, 2.548093, 0.463812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605663, -0.183490, -0.774277,
		0.397291, -0.773356, 0.494045,
		-0.689444, -0.606837, -0.395494,
		2.028740, 2.366042, 0.345164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.992461, 2.430808, 0.208778>,  <2.511350, 2.790828, 0.622010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.992461, 2.430808, 0.208778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.636589, 2.283206, 0.101217>,  <2.423066, 2.194645, 0.036681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.636589, 2.283206, 0.101217>,  <2.992461, 2.430808, 0.208778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.636589, 2.283206, 0.101217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350528, -0.174614, -0.920131,
		0.292578, -0.912878, 0.284696,
		-0.889679, -0.369003, -0.268901,
		2.369685, 2.172505, 0.020547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.173740, 1.962416, -0.181604>,  <2.992461, 2.430808, 0.208778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.173740, 1.962416, -0.181604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.792946, 2.040793, -0.275692>,  <2.564469, 2.087820, -0.332145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.792946, 2.040793, -0.275692>,  <3.173740, 1.962416, -0.181604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.792946, 2.040793, -0.275692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261377, 0.120199, -0.957723,
		-0.159388, -0.973220, -0.165643,
		-0.951986, 0.195945, -0.235219,
		2.507350, 2.099576, -0.346258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.020722, 1.549106, -0.712962>,  <3.173740, 1.962416, -0.181604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.020722, 1.549106, -0.712962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.752159, 1.844009, -0.743061>,  <2.591022, 2.020952, -0.761120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.752159, 1.844009, -0.743061>,  <3.020722, 1.549106, -0.712962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.752159, 1.844009, -0.743061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263988, 0.143054, -0.953858,
		-0.692477, -0.660291, -0.290674,
		-0.671407, 0.737259, -0.075247,
		2.550737, 2.065187, -0.765635>
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
