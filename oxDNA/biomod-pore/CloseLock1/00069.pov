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
	<24.376722, 35.186306, 35.315697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.380154, 34.883472, 35.054394>,  <24.382212, 34.701771, 34.897610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.380154, 34.883472, 35.054394>,  <24.376722, 35.186306, 35.315697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.380154, 34.883472, 35.054394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378869, 0.607039, -0.698544,
		0.925411, -0.241508, 0.292043,
		0.008577, -0.757085, -0.653260,
		24.382727, 34.656345, 34.858418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.013937, 35.143902, 35.070660>,  <24.376722, 35.186306, 35.315697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.013937, 35.143902, 35.070660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770466, 34.980228, 34.798752>,  <24.624384, 34.882027, 34.635609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770466, 34.980228, 34.798752>,  <25.013937, 35.143902, 35.070660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770466, 34.980228, 34.798752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441340, 0.537371, -0.718646,
		0.659343, -0.737431, -0.146497,
		-0.608676, -0.409179, -0.679770,
		24.587864, 34.857475, 34.594822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.466042, 34.831463, 34.691475>,  <25.013937, 35.143902, 35.070660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.466042, 34.831463, 34.691475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145689, 34.909248, 34.464928>,  <24.953478, 34.955921, 34.328999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145689, 34.909248, 34.464928>,  <25.466042, 34.831463, 34.691475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145689, 34.909248, 34.464928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589383, 0.423271, -0.688091,
		0.105918, -0.884887, -0.453604,
		-0.800880, 0.194465, -0.566370,
		24.905424, 34.967587, 34.295017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.666618, 34.480190, 34.029797>,  <25.466042, 34.831463, 34.691475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.666618, 34.480190, 34.029797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404942, 34.782707, 34.026684>,  <25.247936, 34.964218, 34.024818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404942, 34.782707, 34.026684>,  <25.666618, 34.480190, 34.029797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404942, 34.782707, 34.026684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576795, 0.492224, -0.651938,
		-0.489225, -0.430978, -0.758232,
		-0.654191, 0.756289, -0.007778,
		25.208685, 35.009594, 34.024349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959600, 34.965469, 33.691917>,  <25.666618, 34.480190, 34.029797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959600, 34.965469, 33.691917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036566, 35.227104, 33.984531>,  <26.082745, 35.384087, 34.160099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036566, 35.227104, 33.984531>,  <25.959600, 34.965469, 33.691917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036566, 35.227104, 33.984531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786713, 0.342773, -0.513409,
		-0.586565, 0.674299, -0.448623,
		0.192415, 0.654086, 0.731539,
		26.094290, 35.423328, 34.203995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033998, 35.608852, 33.427700>,  <25.959600, 34.965469, 33.691917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033998, 35.608852, 33.427700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225368, 35.603382, 33.778908>,  <26.340191, 35.600101, 33.989632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225368, 35.603382, 33.778908>,  <26.033998, 35.608852, 33.427700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225368, 35.603382, 33.778908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847314, 0.269737, -0.457493,
		-0.230581, 0.962837, 0.140633,
		0.478426, -0.013671, 0.878022,
		26.368896, 35.599281, 34.042313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465742, 36.156864, 33.487885>,  <26.033998, 35.608852, 33.427700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465742, 36.156864, 33.487885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689816, 35.911095, 33.710121>,  <26.824259, 35.763634, 33.843464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689816, 35.911095, 33.710121>,  <26.465742, 36.156864, 33.487885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689816, 35.911095, 33.710121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828368, 0.415810, -0.375376,
		-0.000382, 0.670514, 0.741897,
		0.560183, -0.614421, 0.555591,
		26.857870, 35.726768, 33.876797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007061, 36.603455, 33.874344>,  <26.465742, 36.156864, 33.487885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007061, 36.603455, 33.874344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097301, 36.218166, 33.815956>,  <27.151445, 35.986992, 33.780922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097301, 36.218166, 33.815956>,  <27.007061, 36.603455, 33.874344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097301, 36.218166, 33.815956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736575, 0.266712, -0.621549,
		0.637622, 0.032703, 0.769655,
		0.225603, -0.963221, -0.145973,
		27.164982, 35.929199, 33.772163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613031, 36.531376, 34.128006>,  <27.007061, 36.603455, 33.874344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613031, 36.531376, 34.128006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582378, 36.233383, 33.862938>,  <27.563986, 36.054588, 33.703899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582378, 36.233383, 33.862938>,  <27.613031, 36.531376, 34.128006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582378, 36.233383, 33.862938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622076, 0.483674, -0.615696,
		0.779198, -0.459412, 0.426370,
		-0.076634, -0.744983, -0.662667,
		27.559389, 36.009888, 33.664139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303530, 36.511204, 34.025414>,  <27.613031, 36.531376, 34.128006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303530, 36.511204, 34.025414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094854, 36.342285, 33.728901>,  <27.969650, 36.240932, 33.550991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094854, 36.342285, 33.728901>,  <28.303530, 36.511204, 34.025414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094854, 36.342285, 33.728901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460694, 0.591872, -0.661399,
		0.718056, -0.686549, -0.114220,
		-0.521686, -0.422301, -0.741286,
		27.938349, 36.215595, 33.506516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809210, 36.372589, 33.450783>,  <28.303530, 36.511204, 34.025414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809210, 36.372589, 33.450783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460857, 36.368088, 33.254238>,  <28.251846, 36.365387, 33.136311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460857, 36.368088, 33.254238>,  <28.809210, 36.372589, 33.450783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460857, 36.368088, 33.254238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378355, 0.622764, -0.684845,
		0.313710, -0.782329, -0.538097,
		-0.870881, -0.011251, -0.491365,
		28.199593, 36.364712, 33.106827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978214, 36.182533, 32.722137>,  <28.809210, 36.372589, 33.450783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978214, 36.182533, 32.722137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624083, 36.368492, 32.725266>,  <28.411604, 36.480068, 32.727142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624083, 36.368492, 32.725266>,  <28.978214, 36.182533, 32.722137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624083, 36.368492, 32.725266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228913, 0.450449, -0.862957,
		-0.404713, -0.762209, -0.505217,
		-0.885328, 0.464901, 0.007823,
		28.358484, 36.507961, 32.727612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776258, 36.165115, 32.006500>,  <28.978214, 36.182533, 32.722137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776258, 36.165115, 32.006500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531872, 36.445602, 32.153473>,  <28.385241, 36.613895, 32.241657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531872, 36.445602, 32.153473>,  <28.776258, 36.165115, 32.006500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531872, 36.445602, 32.153473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034420, 0.487223, -0.872599,
		-0.790907, -0.520482, -0.321813,
		-0.610967, 0.701222, 0.367433,
		28.348581, 36.655968, 32.263702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340391, 36.293339, 31.502697>,  <28.776258, 36.165115, 32.006500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340391, 36.293339, 31.502697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281141, 36.612843, 31.735947>,  <28.245592, 36.804546, 31.875896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281141, 36.612843, 31.735947>,  <28.340391, 36.293339, 31.502697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281141, 36.612843, 31.735947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032644, 0.585361, -0.810116,
		-0.988430, -0.139033, -0.060632,
		-0.148125, 0.798763, 0.583126,
		28.236704, 36.852470, 31.910885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668711, 36.635017, 31.317001>,  <28.340391, 36.293339, 31.502697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668711, 36.635017, 31.317001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918871, 36.898029, 31.485064>,  <28.068968, 37.055836, 31.585901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918871, 36.898029, 31.485064>,  <27.668711, 36.635017, 31.317001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918871, 36.898029, 31.485064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186567, 0.648835, -0.737704,
		-0.757672, 0.382973, 0.528455,
		0.625400, 0.657530, 0.420154,
		28.106491, 37.095287, 31.611111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283903, 37.283474, 31.282778>,  <27.668711, 36.635017, 31.317001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283903, 37.283474, 31.282778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657085, 37.395977, 31.372650>,  <27.880995, 37.463478, 31.426575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657085, 37.395977, 31.372650>,  <27.283903, 37.283474, 31.282778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657085, 37.395977, 31.372650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036356, 0.547332, -0.836125,
		-0.358147, 0.788238, 0.500412,
		0.932957, 0.281262, 0.224683,
		27.936972, 37.480354, 31.440056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305605, 38.051723, 31.198383>,  <27.283903, 37.283474, 31.282778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305605, 38.051723, 31.198383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679909, 37.910946, 31.189524>,  <27.904491, 37.826477, 31.184208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679909, 37.910946, 31.189524>,  <27.305605, 38.051723, 31.198383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679909, 37.910946, 31.189524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180470, 0.531899, -0.827354,
		0.302965, 0.770206, 0.561245,
		0.935758, -0.351947, -0.022148,
		27.960636, 37.805363, 31.182878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735207, 38.633041, 31.060572>,  <27.305605, 38.051723, 31.198383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735207, 38.633041, 31.060572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918344, 38.301380, 30.932276>,  <28.028227, 38.102383, 30.855299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918344, 38.301380, 30.932276>,  <27.735207, 38.633041, 31.060572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918344, 38.301380, 30.932276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164547, 0.433574, -0.885967,
		0.873671, 0.352860, 0.334946,
		0.457847, -0.829158, -0.320739,
		28.055698, 38.052631, 30.836054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267946, 38.950783, 30.711334>,  <27.735207, 38.633041, 31.060572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267946, 38.950783, 30.711334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258186, 38.578850, 30.564470>,  <28.252331, 38.355690, 30.476351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258186, 38.578850, 30.564470>,  <28.267946, 38.950783, 30.711334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258186, 38.578850, 30.564470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223428, 0.352909, -0.908589,
		0.974415, -0.104203, 0.199141,
		-0.024399, -0.929837, -0.367162,
		28.250866, 38.299900, 30.454321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811628, 38.935398, 30.263239>,  <28.267946, 38.950783, 30.711334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811628, 38.935398, 30.263239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582487, 38.626049, 30.154623>,  <28.445004, 38.440441, 30.089453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582487, 38.626049, 30.154623>,  <28.811628, 38.935398, 30.263239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582487, 38.626049, 30.154623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276607, 0.129450, -0.952224,
		0.771576, -0.620593, 0.139765,
		-0.572852, -0.773374, -0.271541,
		28.410631, 38.394035, 30.073160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243557, 38.501484, 29.820200>,  <28.811628, 38.935398, 30.263239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243557, 38.501484, 29.820200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864820, 38.413788, 29.726027>,  <28.637579, 38.361168, 29.669523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864820, 38.413788, 29.726027>,  <29.243557, 38.501484, 29.820200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864820, 38.413788, 29.726027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181500, 0.240184, -0.953609,
		0.265625, -0.945643, -0.187622,
		-0.946837, -0.219249, -0.235433,
		28.580769, 38.348015, 29.655397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254160, 38.040813, 29.242794>,  <29.243557, 38.501484, 29.820200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254160, 38.040813, 29.242794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880026, 38.180141, 29.218084>,  <28.655544, 38.263741, 29.203259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880026, 38.180141, 29.218084>,  <29.254160, 38.040813, 29.242794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880026, 38.180141, 29.218084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151076, 0.235412, -0.960082,
		-0.319876, -0.907333, -0.272813,
		-0.935337, 0.348323, -0.061774,
		28.599424, 38.284637, 29.199553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853189, 37.604874, 28.718601>,  <29.254160, 38.040813, 29.242794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853189, 37.604874, 28.718601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689100, 37.966812, 28.764141>,  <28.590647, 38.183975, 28.791466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689100, 37.966812, 28.764141>,  <28.853189, 37.604874, 28.718601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689100, 37.966812, 28.764141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007858, 0.121326, -0.992582,
		-0.911951, -0.408076, -0.042661,
		-0.410225, 0.904850, 0.113850,
		28.566032, 38.238266, 28.798296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311459, 37.561543, 28.384809>,  <28.853189, 37.604874, 28.718601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311459, 37.561543, 28.384809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379683, 37.955238, 28.403482>,  <28.420616, 38.191456, 28.414686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379683, 37.955238, 28.403482>,  <28.311459, 37.561543, 28.384809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379683, 37.955238, 28.403482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213040, 0.009422, -0.976998,
		-0.962041, 0.176581, -0.208076,
		0.170559, 0.984241, 0.046683,
		28.430851, 38.250511, 28.417488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958273, 37.734825, 27.820868>,  <28.311459, 37.561543, 28.384809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958273, 37.734825, 27.820868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241425, 37.995712, 27.929325>,  <28.411316, 38.152245, 27.994400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241425, 37.995712, 27.929325>,  <27.958273, 37.734825, 27.820868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241425, 37.995712, 27.929325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332761, 0.030667, -0.942513,
		-0.623039, 0.757411, -0.195324,
		0.707879, 0.652218, 0.271143,
		28.453789, 38.191380, 28.010668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144321, 38.147919, 27.195433>,  <27.958273, 37.734825, 27.820868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144321, 38.147919, 27.195433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451914, 38.125988, 27.450199>,  <28.636469, 38.112827, 27.603060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451914, 38.125988, 27.450199>,  <28.144321, 38.147919, 27.195433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451914, 38.125988, 27.450199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602872, -0.269201, -0.751050,
		0.212638, 0.961522, -0.173956,
		0.768980, -0.054828, 0.636917,
		28.682608, 38.109539, 27.641273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889811, 38.728325, 26.588812>,  <28.144321, 38.147919, 27.195433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889811, 38.728325, 26.588812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742922, 38.977123, 26.865440>,  <27.654789, 39.126400, 27.031418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742922, 38.977123, 26.865440>,  <27.889811, 38.728325, 26.588812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742922, 38.977123, 26.865440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874132, 0.023315, -0.485128,
		-0.317870, -0.782676, 0.535142,
		-0.367221, 0.621993, 0.691573,
		27.632755, 39.163723, 27.072912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260876, 38.123917, 26.486431>,  <27.889811, 38.728325, 26.588812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260876, 38.123917, 26.486431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006153, 37.835098, 26.594604>,  <27.853319, 37.661808, 26.659508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006153, 37.835098, 26.594604>,  <28.260876, 38.123917, 26.486431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006153, 37.835098, 26.594604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645084, 0.306832, -0.699800,
		0.422309, -0.620087, -0.661171,
		-0.636805, -0.722043, 0.270431,
		27.815111, 37.618484, 26.675734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996153, 37.724072, 25.916334>,  <28.260876, 38.123917, 26.486431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996153, 37.724072, 25.916334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737707, 37.720589, 26.221609>,  <27.582640, 37.718498, 26.404774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737707, 37.720589, 26.221609>,  <27.996153, 37.724072, 25.916334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737707, 37.720589, 26.221609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675574, 0.471819, -0.566557,
		-0.355152, -0.881653, -0.310734,
		-0.646116, -0.008710, 0.763189,
		27.543873, 37.717976, 26.450565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273933, 37.463421, 25.769733>,  <27.996153, 37.724072, 25.916334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273933, 37.463421, 25.769733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231802, 37.741299, 26.054354>,  <27.206524, 37.908024, 26.225126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231802, 37.741299, 26.054354>,  <27.273933, 37.463421, 25.769733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231802, 37.741299, 26.054354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717827, 0.442076, -0.537859,
		-0.688208, -0.567423, 0.452108,
		-0.105327, 0.694694, 0.711553,
		27.200203, 37.949707, 26.267820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421986, 37.015461, 25.246683>,  <27.273933, 37.463421, 25.769733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421986, 37.015461, 25.246683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532415, 37.028927, 25.630901>,  <27.598673, 37.037006, 25.861433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532415, 37.028927, 25.630901>,  <27.421986, 37.015461, 25.246683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532415, 37.028927, 25.630901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490257, -0.854667, 0.170859,
		0.826699, -0.518085, -0.219448,
		0.276074, 0.033663, 0.960547,
		27.615238, 37.039024, 25.919065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896475, 36.518852, 25.475574>,  <27.421986, 37.015461, 25.246683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896475, 36.518852, 25.475574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661148, 36.588268, 25.791491>,  <27.519953, 36.629917, 25.981041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661148, 36.588268, 25.791491>,  <27.896475, 36.518852, 25.475574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661148, 36.588268, 25.791491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220479, -0.974119, 0.049807,
		0.777993, -0.144830, 0.611351,
		-0.588316, 0.173540, 0.789790,
		27.484653, 36.640331, 26.028427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508520, 35.782928, 25.582500>,  <27.896475, 36.518852, 25.475574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508520, 35.782928, 25.582500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127943, 35.720547, 25.476339>,  <26.899597, 35.683117, 25.412642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127943, 35.720547, 25.476339>,  <27.508520, 35.782928, 25.582500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127943, 35.720547, 25.476339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014958, 0.837735, -0.545872,
		0.307468, -0.523335, -0.794723,
		-0.951441, -0.155951, -0.265405,
		26.842510, 35.673759, 25.396717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261593, 35.631279, 25.739130>,  <27.508520, 35.782928, 25.582500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261593, 35.631279, 25.739130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612013, 35.438400, 25.741041>,  <28.822266, 35.322674, 25.742188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612013, 35.438400, 25.741041>,  <28.261593, 35.631279, 25.739130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612013, 35.438400, 25.741041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146737, -0.257126, 0.955172,
		-0.459350, -0.837481, -0.296011,
		0.876051, -0.482194, 0.004778,
		28.874828, 35.293743, 25.742476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149284, 34.994518, 26.086508>,  <28.261593, 35.631279, 25.739130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149284, 34.994518, 26.086508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528492, 35.119736, 26.109371>,  <28.756016, 35.194866, 26.123089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528492, 35.119736, 26.109371>,  <28.149284, 34.994518, 26.086508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528492, 35.119736, 26.109371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016766, -0.130242, 0.991340,
		0.317778, -0.940766, -0.118223,
		0.948017, 0.313044, 0.057161,
		28.812897, 35.213650, 26.126520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497139, 34.504280, 26.414429>,  <28.149284, 34.994518, 26.086508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497139, 34.504280, 26.414429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674377, 34.857536, 26.476046>,  <28.780720, 35.069489, 26.513016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674377, 34.857536, 26.476046>,  <28.497139, 34.504280, 26.414429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674377, 34.857536, 26.476046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092638, -0.216017, 0.971985,
		0.891675, -0.416413, -0.177529,
		0.443096, 0.883141, 0.154041,
		28.807306, 35.122478, 26.522259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965891, 34.385452, 26.908875>,  <28.497139, 34.504280, 26.414429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965891, 34.385452, 26.908875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944080, 34.781590, 26.959848>,  <28.930994, 35.019272, 26.990433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944080, 34.781590, 26.959848>,  <28.965891, 34.385452, 26.908875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944080, 34.781590, 26.959848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196270, -0.114506, 0.973841,
		0.979033, 0.078112, -0.188132,
		-0.054526, 0.990347, 0.127437,
		28.927723, 35.078693, 26.998079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514000, 34.607868, 27.406017>,  <28.965891, 34.385452, 26.908875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514000, 34.607868, 27.406017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247995, 34.906384, 27.417437>,  <29.088392, 35.085491, 27.424288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247995, 34.906384, 27.417437>,  <29.514000, 34.607868, 27.406017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247995, 34.906384, 27.417437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096727, 0.048165, 0.994145,
		0.740543, 0.663878, -0.104217,
		-0.665011, 0.746288, 0.028547,
		29.048492, 35.130268, 27.426001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917253, 35.088139, 27.762115>,  <29.514000, 34.607868, 27.406017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917253, 35.088139, 27.762115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534447, 35.202621, 27.780890>,  <29.304762, 35.271313, 27.792154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534447, 35.202621, 27.780890>,  <29.917253, 35.088139, 27.762115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534447, 35.202621, 27.780890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059011, 0.033707, 0.997688,
		0.283965, 0.957574, -0.049147,
		-0.957017, 0.286209, 0.046936,
		29.247341, 35.288483, 27.794970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821308, 35.617130, 28.254343>,  <29.917253, 35.088139, 27.762115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821308, 35.617130, 28.254343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458073, 35.453144, 28.220152>,  <29.240131, 35.354752, 28.199636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458073, 35.453144, 28.220152>,  <29.821308, 35.617130, 28.254343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458073, 35.453144, 28.220152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098909, 0.011624, 0.995029,
		-0.406935, 0.912026, -0.051105,
		-0.908087, -0.409967, -0.085477,
		29.185646, 35.330154, 28.194510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470943, 35.885159, 28.869686>,  <29.821308, 35.617130, 28.254343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470943, 35.885159, 28.869686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240641, 35.577419, 28.758980>,  <29.102459, 35.392776, 28.692556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240641, 35.577419, 28.758980>,  <29.470943, 35.885159, 28.869686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240641, 35.577419, 28.758980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144455, -0.237460, 0.960596,
		-0.804759, 0.593051, 0.025583,
		-0.575757, -0.769353, -0.276767,
		29.067913, 35.346615, 28.675949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869900, 35.871159, 29.307791>,  <29.470943, 35.885159, 28.869686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869900, 35.871159, 29.307791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914768, 35.505180, 29.152723>,  <28.941689, 35.285591, 29.059683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914768, 35.505180, 29.152723>,  <28.869900, 35.871159, 29.307791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914768, 35.505180, 29.152723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302640, -0.403053, 0.863688,
		-0.946481, 0.020444, -0.322111,
		0.112171, -0.914948, -0.387669,
		28.948420, 35.230698, 29.036423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350985, 35.487560, 29.632620>,  <28.869900, 35.871159, 29.307791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350985, 35.487560, 29.632620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567574, 35.181992, 29.492199>,  <28.697527, 34.998650, 29.407948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567574, 35.181992, 29.492199>,  <28.350985, 35.487560, 29.632620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567574, 35.181992, 29.492199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385645, -0.596727, 0.703701,
		-0.747052, -0.245652, -0.617712,
		0.541471, -0.763919, -0.351051,
		28.730015, 34.952816, 29.386883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001333, 34.893497, 29.821369>,  <28.350985, 35.487560, 29.632620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001333, 34.893497, 29.821369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374620, 34.767185, 29.752800>,  <28.598593, 34.691399, 29.711658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374620, 34.767185, 29.752800>,  <28.001333, 34.893497, 29.821369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374620, 34.767185, 29.752800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024219, -0.531288, 0.846845,
		-0.358491, -0.786140, -0.503456,
		0.933219, -0.315780, -0.171422,
		28.654587, 34.672451, 29.701374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929056, 34.211594, 29.943533>,  <28.001333, 34.893497, 29.821369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929056, 34.211594, 29.943533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313423, 34.314941, 29.983307>,  <28.544043, 34.376949, 30.007172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313423, 34.314941, 29.983307>,  <27.929056, 34.211594, 29.943533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313423, 34.314941, 29.983307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049285, -0.513086, 0.856921,
		0.272421, -0.818528, -0.505766,
		0.960915, 0.258370, 0.099435,
		28.601698, 34.392452, 30.013138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198967, 33.616348, 30.264977>,  <27.929056, 34.211594, 29.943533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198967, 33.616348, 30.264977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472605, 33.902725, 30.320747>,  <28.636787, 34.074551, 30.354210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472605, 33.902725, 30.320747>,  <28.198967, 33.616348, 30.264977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472605, 33.902725, 30.320747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216086, -0.381505, 0.898755,
		0.696648, -0.584707, -0.415692,
		0.684097, 0.715941, 0.139428,
		28.677834, 34.117508, 30.362576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732510, 33.277348, 30.554255>,  <28.198967, 33.616348, 30.264977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732510, 33.277348, 30.554255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787277, 33.666790, 30.627298>,  <28.820137, 33.900455, 30.671124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787277, 33.666790, 30.627298>,  <28.732510, 33.277348, 30.554255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787277, 33.666790, 30.627298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033174, -0.188747, 0.981465,
		0.990027, -0.128324, -0.058141,
		0.136919, 0.973605, 0.182608,
		28.828354, 33.958870, 30.682081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379299, 33.347466, 30.891167>,  <28.732510, 33.277348, 30.554255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379299, 33.347466, 30.891167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161743, 33.670441, 30.982574>,  <29.031210, 33.864227, 31.037420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161743, 33.670441, 30.982574>,  <29.379299, 33.347466, 30.891167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161743, 33.670441, 30.982574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040142, -0.246976, 0.968190,
		0.838195, 0.535764, 0.101915,
		-0.543892, 0.807441, 0.228521,
		28.998575, 33.912674, 31.051130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748756, 33.562782, 31.442774>,  <29.379299, 33.347466, 30.891167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748756, 33.562782, 31.442774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387678, 33.734009, 31.460207>,  <29.171032, 33.836746, 31.470667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387678, 33.734009, 31.460207>,  <29.748756, 33.562782, 31.442774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387678, 33.734009, 31.460207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089158, -0.285178, 0.954319,
		0.420945, 0.857572, 0.295594,
		-0.902694, 0.428070, 0.043585,
		29.116871, 33.862431, 31.473282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766218, 34.062244, 31.992575>,  <29.748756, 33.562782, 31.442774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766218, 34.062244, 31.992575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381519, 33.990963, 31.909355>,  <29.150700, 33.948193, 31.859425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381519, 33.990963, 31.909355>,  <29.766218, 34.062244, 31.992575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381519, 33.990963, 31.909355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183872, -0.143010, 0.972491,
		-0.203058, 0.973545, 0.104772,
		-0.961748, -0.178207, -0.208047,
		29.092995, 33.937500, 31.846941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389347, 34.364380, 32.609367>,  <29.766218, 34.062244, 31.992575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389347, 34.364380, 32.609367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134802, 34.102863, 32.445610>,  <28.982075, 33.945953, 32.347355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134802, 34.102863, 32.445610>,  <29.389347, 34.364380, 32.609367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134802, 34.102863, 32.445610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073844, -0.476657, 0.875982,
		-0.767848, 0.587674, 0.255048,
		-0.636362, -0.653787, -0.409396,
		28.943893, 33.906727, 32.322792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875050, 34.428524, 33.074284>,  <29.389347, 34.364380, 32.609367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875050, 34.428524, 33.074284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807442, 34.086498, 32.878201>,  <28.766876, 33.881283, 32.760551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807442, 34.086498, 32.878201>,  <28.875050, 34.428524, 33.074284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807442, 34.086498, 32.878201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366819, -0.407061, 0.836507,
		-0.914809, 0.321203, -0.244852,
		-0.169019, -0.855061, -0.490207,
		28.756737, 33.829979, 32.731140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152168, 34.321239, 33.148750>,  <28.875050, 34.428524, 33.074284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152168, 34.321239, 33.148750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296577, 33.965061, 33.037918>,  <28.383223, 33.751354, 32.971420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296577, 33.965061, 33.037918>,  <28.152168, 34.321239, 33.148750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296577, 33.965061, 33.037918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443891, -0.425385, 0.788675,
		-0.820137, -0.161735, -0.548833,
		0.361021, -0.890444, -0.277081,
		28.404884, 33.697929, 32.954792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615828, 33.845638, 33.046978>,  <28.152168, 34.321239, 33.148750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615828, 33.845638, 33.046978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947588, 33.639900, 33.134201>,  <28.146645, 33.516457, 33.186535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947588, 33.639900, 33.134201>,  <27.615828, 33.845638, 33.046978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947588, 33.639900, 33.134201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466269, -0.422334, 0.777320,
		-0.307714, -0.746383, -0.590105,
		0.829400, -0.514341, 0.218057,
		28.196407, 33.485596, 33.199619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374537, 33.228905, 33.139572>,  <27.615828, 33.845638, 33.046978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374537, 33.228905, 33.139572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733263, 33.229931, 33.316528>,  <27.948500, 33.230549, 33.422703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733263, 33.229931, 33.316528>,  <27.374537, 33.228905, 33.139572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733263, 33.229931, 33.316528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390358, -0.465965, 0.794039,
		0.208178, -0.884800, -0.416883,
		0.896818, 0.002568, 0.442392,
		28.002308, 33.230701, 33.449245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387939, 32.541317, 33.421459>,  <27.374537, 33.228905, 33.139572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387939, 32.541317, 33.421459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654055, 32.769405, 33.614227>,  <27.813723, 32.906258, 33.729889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654055, 32.769405, 33.614227>,  <27.387939, 32.541317, 33.421459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654055, 32.769405, 33.614227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242706, -0.445248, 0.861886,
		0.706038, -0.690365, -0.157821,
		0.665286, 0.570220, 0.481918,
		27.853640, 32.940472, 33.758804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531717, 32.179745, 33.960659>,  <27.387939, 32.541317, 33.421459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531717, 32.179745, 33.960659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683434, 32.526573, 34.089855>,  <27.774464, 32.734673, 34.167374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683434, 32.526573, 34.089855>,  <27.531717, 32.179745, 33.960659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683434, 32.526573, 34.089855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349650, -0.188877, 0.917644,
		0.856670, -0.460987, 0.231533,
		0.379290, 0.867074, 0.322990,
		27.797220, 32.786694, 34.186752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864134, 32.071819, 34.577206>,  <27.531717, 32.179745, 33.960659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864134, 32.071819, 34.577206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761248, 32.457794, 34.556252>,  <27.699516, 32.689377, 34.543678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761248, 32.457794, 34.556252>,  <27.864134, 32.071819, 34.577206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761248, 32.457794, 34.556252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208940, -0.002606, 0.977925,
		0.943495, 0.262484, 0.202283,
		-0.257217, 0.964933, -0.052385,
		27.684082, 32.747272, 34.540535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306210, 32.622177, 34.960751>,  <27.864134, 32.071819, 34.577206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306210, 32.622177, 34.960751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913363, 32.675766, 34.907837>,  <27.677654, 32.707920, 34.876087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913363, 32.675766, 34.907837>,  <28.306210, 32.622177, 34.960751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913363, 32.675766, 34.907837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144063, -0.082354, 0.986136,
		0.121224, 0.987557, 0.100181,
		-0.982115, 0.133975, -0.132287,
		27.618729, 32.715958, 34.868153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076437, 33.141296, 35.494476>,  <28.306210, 32.622177, 34.960751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076437, 33.141296, 35.494476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830402, 32.846317, 35.382877>,  <27.682781, 32.669331, 35.315918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830402, 32.846317, 35.382877>,  <28.076437, 33.141296, 35.494476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830402, 32.846317, 35.382877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021057, -0.369091, 0.929155,
		-0.788180, 0.565634, 0.242551,
		-0.615085, -0.737448, -0.278999,
		27.645878, 32.625084, 35.299179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444107, 33.036839, 35.966225>,  <28.076437, 33.141296, 35.494476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444107, 33.036839, 35.966225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585775, 32.695118, 35.814045>,  <27.670776, 32.490086, 35.722736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585775, 32.695118, 35.814045>,  <27.444107, 33.036839, 35.966225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585775, 32.695118, 35.814045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084412, -0.375950, 0.922787,
		-0.931364, -0.358937, -0.061036,
		0.354169, -0.854298, -0.380445,
		27.692026, 32.438828, 35.699913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263908, 32.356163, 36.236248>,  <27.444107, 33.036839, 35.966225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263908, 32.356163, 36.236248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618010, 32.216110, 36.113789>,  <27.830471, 32.132076, 36.040314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618010, 32.216110, 36.113789>,  <27.263908, 32.356163, 36.236248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618010, 32.216110, 36.113789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227924, -0.247206, 0.941775,
		-0.405432, -0.903490, -0.139036,
		0.885255, -0.350136, -0.306152,
		27.883587, 32.111069, 36.021942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353233, 31.620993, 36.436028>,  <27.263908, 32.356163, 36.236248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353233, 31.620993, 36.436028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720493, 31.779316, 36.428726>,  <27.940849, 31.874310, 36.424347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720493, 31.779316, 36.428726>,  <27.353233, 31.620993, 36.436028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720493, 31.779316, 36.428726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146769, -0.296951, 0.943546,
		0.368046, -0.868996, -0.330738,
		0.918151, 0.395811, -0.018250,
		27.995939, 31.898060, 36.423252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279623, 31.131470, 37.004654>,  <27.353233, 31.620993, 36.436028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279623, 31.131470, 37.004654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286953, 31.009451, 37.385517>,  <27.291351, 30.936239, 37.614037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286953, 31.009451, 37.385517>,  <27.279623, 31.131470, 37.004654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286953, 31.009451, 37.385517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283244, 0.911724, 0.297545,
		-0.958873, -0.275146, -0.069695,
		0.018326, -0.305048, 0.952161,
		27.292450, 30.917936, 37.671165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704006, 31.344227, 37.361588>,  <27.279623, 31.131470, 37.004654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704006, 31.344227, 37.361588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010912, 31.295729, 37.613495>,  <27.195055, 31.266630, 37.764637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010912, 31.295729, 37.613495>,  <26.704006, 31.344227, 37.361588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010912, 31.295729, 37.613495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176000, 0.904458, 0.388561,
		-0.616708, -0.408968, 0.672619,
		0.767264, -0.121247, 0.629765,
		27.241091, 31.259354, 37.802425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499969, 31.536106, 38.079250>,  <26.704006, 31.344227, 37.361588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499969, 31.536106, 38.079250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882938, 31.592083, 37.978252>,  <27.112720, 31.625669, 37.917652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882938, 31.592083, 37.978252>,  <26.499969, 31.536106, 38.079250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882938, 31.592083, 37.978252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004421, 0.881657, 0.471870,
		0.288651, -0.450664, 0.844738,
		0.957424, 0.139940, -0.252499,
		27.170166, 31.634066, 37.902504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918167, 31.781786, 38.685951>,  <26.499969, 31.536106, 38.079250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918167, 31.781786, 38.685951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123262, 31.876736, 38.355919>,  <27.246319, 31.933704, 38.157902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123262, 31.876736, 38.355919>,  <26.918167, 31.781786, 38.685951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123262, 31.876736, 38.355919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212880, 0.895857, 0.390028,
		0.831734, -0.375624, 0.408808,
		0.512738, 0.237372, -0.825078,
		27.277084, 31.947947, 38.108395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640833, 32.014923, 38.985931>,  <26.918167, 31.781786, 38.685951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640833, 32.014923, 38.985931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588484, 32.142685, 38.610516>,  <27.557074, 32.219341, 38.385265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588484, 32.142685, 38.610516>,  <27.640833, 32.014923, 38.985931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588484, 32.142685, 38.610516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350346, 0.900498, 0.257607,
		0.927432, -0.295099, -0.229754,
		-0.130873, 0.319406, -0.938537,
		27.549221, 32.238506, 38.328953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162710, 32.459270, 38.858608>,  <27.640833, 32.014923, 38.985931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162710, 32.459270, 38.858608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920265, 32.567429, 38.559406>,  <27.774797, 32.632324, 38.379887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920265, 32.567429, 38.559406>,  <28.162710, 32.459270, 38.858608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920265, 32.567429, 38.559406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235700, 0.959260, 0.155776,
		0.759652, -0.081887, -0.645153,
		-0.606113, 0.270398, -0.748005,
		27.738432, 32.648548, 38.335003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548069, 32.982033, 38.439564>,  <28.162710, 32.459270, 38.858608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548069, 32.982033, 38.439564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162540, 33.031315, 38.345016>,  <27.931223, 33.060883, 38.288288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162540, 33.031315, 38.345016>,  <28.548069, 32.982033, 38.439564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162540, 33.031315, 38.345016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075366, 0.976547, 0.201685,
		0.255672, 0.176574, -0.950502,
		-0.963821, 0.123201, -0.236368,
		27.873394, 33.068275, 38.274105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502768, 33.658524, 37.960300>,  <28.548069, 32.982033, 38.439564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502768, 33.658524, 37.960300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147457, 33.590122, 38.130817>,  <27.934271, 33.549084, 38.233128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147457, 33.590122, 38.130817>,  <28.502768, 33.658524, 37.960300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147457, 33.590122, 38.130817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076971, 0.970407, 0.228880,
		-0.452814, 0.170497, -0.875152,
		-0.888276, -0.171001, 0.426290,
		27.880974, 33.538822, 38.258705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202734, 34.305019, 37.815922>,  <28.502768, 33.658524, 37.960300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202734, 34.305019, 37.815922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959570, 34.140079, 38.087337>,  <27.813671, 34.041115, 38.250187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959570, 34.140079, 38.087337>,  <28.202734, 34.305019, 37.815922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959570, 34.140079, 38.087337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123293, 0.893229, 0.432366,
		-0.784376, 0.179180, -0.593843,
		-0.607909, -0.412354, 0.678536,
		27.777197, 34.016373, 38.290897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640135, 34.787487, 37.817623>,  <28.202734, 34.305019, 37.815922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640135, 34.787487, 37.817623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639351, 34.581318, 38.160397>,  <27.638880, 34.457619, 38.366062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639351, 34.581318, 38.160397>,  <27.640135, 34.787487, 37.817623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639351, 34.581318, 38.160397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124931, 0.850097, 0.511593,
		-0.992163, 0.108061, 0.062726,
		-0.001960, -0.515420, 0.856935,
		27.638763, 34.426693, 38.417477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136106, 35.086842, 38.208721>,  <27.640135, 34.787487, 37.817623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136106, 35.086842, 38.208721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394587, 34.905609, 38.454369>,  <27.549675, 34.796871, 38.601757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394587, 34.905609, 38.454369>,  <27.136106, 35.086842, 38.208721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394587, 34.905609, 38.454369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193457, 0.875663, 0.442479,
		-0.738242, -0.167124, 0.653505,
		0.646199, -0.453082, 0.614120,
		27.588446, 34.769684, 38.638603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994587, 35.348362, 38.947372>,  <27.136106, 35.086842, 38.208721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994587, 35.348362, 38.947372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368240, 35.206348, 38.962051>,  <27.592432, 35.121140, 38.970860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368240, 35.206348, 38.962051>,  <26.994587, 35.348362, 38.947372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368240, 35.206348, 38.962051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271064, 0.772551, 0.574185,
		-0.232204, -0.526419, 0.817903,
		0.934134, -0.355033, 0.036697,
		27.648479, 35.099838, 38.973061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192715, 35.588837, 39.580158>,  <26.994587, 35.348362, 38.947372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192715, 35.588837, 39.580158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542521, 35.478168, 39.420822>,  <27.752405, 35.411766, 39.325222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542521, 35.478168, 39.420822>,  <27.192715, 35.588837, 39.580158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542521, 35.478168, 39.420822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474928, 0.655009, 0.587713,
		0.098312, -0.703147, 0.704216,
		0.874516, -0.276672, -0.398339,
		27.804874, 35.395168, 39.301319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663069, 35.332737, 40.080387>,  <27.192715, 35.588837, 39.580158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663069, 35.332737, 40.080387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863447, 35.463848, 39.759983>,  <27.983673, 35.542515, 39.567741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863447, 35.463848, 39.759983>,  <27.663069, 35.332737, 40.080387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863447, 35.463848, 39.759983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395471, 0.736546, 0.548728,
		0.769843, -0.591658, 0.239340,
		0.500944, 0.327783, -0.801008,
		28.013731, 35.562183, 39.519680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327030, 35.384785, 40.331356>,  <27.663069, 35.332737, 40.080387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327030, 35.384785, 40.331356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315783, 35.613308, 40.003254>,  <28.309034, 35.750423, 39.806393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315783, 35.613308, 40.003254>,  <28.327030, 35.384785, 40.331356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315783, 35.613308, 40.003254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588350, 0.672845, 0.448467,
		0.808117, -0.469985, -0.355050,
		-0.028121, 0.571308, -0.820254,
		28.307346, 35.784698, 39.757179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055859, 35.619694, 40.179554>,  <28.327030, 35.384785, 40.331356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055859, 35.619694, 40.179554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789324, 35.859398, 40.002071>,  <28.629402, 36.003220, 39.895580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789324, 35.859398, 40.002071>,  <29.055859, 35.619694, 40.179554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789324, 35.859398, 40.002071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428212, 0.794692, 0.430232,
		0.610432, 0.096680, -0.786146,
		-0.666339, 0.599265, -0.443705,
		28.589422, 36.039177, 39.868961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390045, 36.183147, 39.936775>,  <29.055859, 35.619694, 40.179554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390045, 36.183147, 39.936775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022030, 36.338585, 39.956886>,  <28.801220, 36.431847, 39.968952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022030, 36.338585, 39.956886>,  <29.390045, 36.183147, 39.936775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022030, 36.338585, 39.956886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363052, 0.797152, 0.482433,
		0.147388, 0.462111, -0.874489,
		-0.920038, 0.388590, 0.050280,
		28.746019, 36.455162, 39.971970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420349, 36.839737, 39.605873>,  <29.390045, 36.183147, 39.936775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420349, 36.839737, 39.605873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132402, 36.832180, 39.883415>,  <28.959635, 36.827644, 40.049942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132402, 36.832180, 39.883415>,  <29.420349, 36.839737, 39.605873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132402, 36.832180, 39.883415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382034, 0.823812, 0.418789,
		-0.579519, 0.566548, -0.585817,
		-0.719867, -0.018894, 0.693855,
		28.916443, 36.826511, 40.091572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256298, 37.531284, 39.496780>,  <29.420349, 36.839737, 39.605873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256298, 37.531284, 39.496780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076591, 37.417545, 39.835556>,  <28.968767, 37.349300, 40.038822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076591, 37.417545, 39.835556>,  <29.256298, 37.531284, 39.496780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076591, 37.417545, 39.835556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062162, 0.935749, 0.347144,
		-0.891233, 0.208607, -0.402724,
		-0.449266, -0.284352, 0.846938,
		28.941813, 37.332241, 40.089638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658739, 37.966904, 39.616119>,  <29.256298, 37.531284, 39.496780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658739, 37.966904, 39.616119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778423, 37.802048, 39.960354>,  <28.850235, 37.703133, 40.166893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778423, 37.802048, 39.960354>,  <28.658739, 37.966904, 39.616119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778423, 37.802048, 39.960354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050337, 0.893833, 0.445566,
		-0.952858, -0.176638, 0.246700,
		0.299212, -0.412143, 0.860587,
		28.868187, 37.678406, 40.218529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211887, 38.332550, 40.100895>,  <28.658739, 37.966904, 39.616119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211887, 38.332550, 40.100895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509192, 38.177128, 40.318733>,  <28.687574, 38.083874, 40.449436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509192, 38.177128, 40.318733>,  <28.211887, 38.332550, 40.100895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509192, 38.177128, 40.318733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097153, 0.868107, 0.486777,
		-0.661910, -0.308893, 0.682979,
		0.743261, -0.388557, 0.544598,
		28.732170, 38.060562, 40.482113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092062, 38.523445, 40.810375>,  <28.211887, 38.332550, 40.100895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092062, 38.523445, 40.810375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480068, 38.426395, 40.804726>,  <28.712872, 38.368164, 40.801338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480068, 38.426395, 40.804726>,  <28.092062, 38.523445, 40.810375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480068, 38.426395, 40.804726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209605, 0.805770, 0.553897,
		-0.123011, -0.540249, 0.832466,
		0.970017, -0.242624, -0.014120,
		28.771074, 38.353607, 40.800491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225559, 38.795986, 41.374699>,  <28.092062, 38.523445, 40.810375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225559, 38.795986, 41.374699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566595, 38.769989, 41.167290>,  <28.771217, 38.754391, 41.042843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566595, 38.769989, 41.167290>,  <28.225559, 38.795986, 41.374699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566595, 38.769989, 41.167290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283230, 0.891332, 0.353989,
		0.439170, -0.448669, 0.778348,
		0.852590, -0.064990, -0.518523,
		28.822372, 38.750492, 41.011734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648325, 39.088882, 41.775604>,  <28.225559, 38.795986, 41.374699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648325, 39.088882, 41.775604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894676, 39.087296, 41.460472>,  <29.042486, 39.086342, 41.271393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894676, 39.087296, 41.460472>,  <28.648325, 39.088882, 41.775604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894676, 39.087296, 41.460472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348059, 0.898479, 0.267566,
		0.706790, -0.438999, 0.554733,
		0.615876, -0.003967, -0.787833,
		29.079439, 39.086105, 41.224121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339458, 39.288509, 41.986050>,  <28.648325, 39.088882, 41.775604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339458, 39.288509, 41.986050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294729, 39.381248, 41.599529>,  <29.267891, 39.436890, 41.367615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294729, 39.381248, 41.599529>,  <29.339458, 39.288509, 41.986050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294729, 39.381248, 41.599529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344867, 0.921021, 0.181070,
		0.931967, -0.312998, -0.182949,
		-0.111825, 0.231844, -0.966304,
		29.261181, 39.450802, 41.309639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788464, 39.723324, 41.919205>,  <29.339458, 39.288509, 41.986050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788464, 39.723324, 41.919205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591534, 39.797199, 41.578968>,  <29.473375, 39.841522, 41.374825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591534, 39.797199, 41.578968>,  <29.788464, 39.723324, 41.919205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591534, 39.797199, 41.578968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157706, 0.979983, 0.121498,
		0.856006, -0.074327, -0.511595,
		-0.492324, 0.184685, -0.850593,
		29.443836, 39.852604, 41.323792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167662, 40.272575, 41.613007>,  <29.788464, 39.723324, 41.919205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167662, 40.272575, 41.613007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809893, 40.290775, 41.435047>,  <29.595230, 40.301693, 41.328270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809893, 40.290775, 41.435047>,  <30.167662, 40.272575, 41.613007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809893, 40.290775, 41.435047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047268, 0.998857, 0.007116,
		0.444713, -0.014665, -0.895553,
		-0.894425, 0.045496, -0.444898,
		29.541565, 40.304424, 41.301579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205515, 40.800385, 41.052395>,  <30.167662, 40.272575, 41.613007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205515, 40.800385, 41.052395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812773, 40.745617, 41.104870>,  <29.577127, 40.712757, 41.136356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812773, 40.745617, 41.104870>,  <30.205515, 40.800385, 41.052395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812773, 40.745617, 41.104870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149745, 0.984296, -0.093474,
		-0.116330, -0.111423, -0.986941,
		-0.981857, -0.136916, 0.131188,
		29.518215, 40.704544, 41.144226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865198, 41.211300, 40.484722>,  <30.205515, 40.800385, 41.052395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865198, 41.211300, 40.484722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628368, 41.159462, 40.802879>,  <29.486271, 41.128361, 40.993774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628368, 41.159462, 40.802879>,  <29.865198, 41.211300, 40.484722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628368, 41.159462, 40.802879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054673, 0.991171, 0.120790,
		-0.804028, 0.028030, -0.593931,
		-0.592073, -0.129591, 0.795397,
		29.450747, 41.120586, 41.041500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477526, 41.779514, 40.405361>,  <29.865198, 41.211300, 40.484722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477526, 41.779514, 40.405361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395308, 41.661694, 40.778667>,  <29.345978, 41.591000, 41.002651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395308, 41.661694, 40.778667>,  <29.477526, 41.779514, 40.405361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395308, 41.661694, 40.778667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215549, 0.943837, 0.250419,
		-0.954615, -0.149693, -0.257492,
		-0.205545, -0.294556, 0.933267,
		29.333645, 41.573326, 41.058647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758139, 41.990978, 40.592579>,  <29.477526, 41.779514, 40.405361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758139, 41.990978, 40.592579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974428, 41.931660, 40.923790>,  <29.104202, 41.896069, 41.122517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974428, 41.931660, 40.923790>,  <28.758139, 41.990978, 40.592579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974428, 41.931660, 40.923790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083148, 0.970094, 0.228042,
		-0.837082, -0.192156, 0.512221,
		0.540722, -0.148300, 0.828025,
		29.136644, 41.887169, 41.172199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510113, 42.411076, 41.064270>,  <28.758139, 41.990978, 40.592579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510113, 42.411076, 41.064270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869698, 42.321251, 41.214703>,  <29.085449, 42.267357, 41.304962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869698, 42.321251, 41.214703>,  <28.510113, 42.411076, 41.064270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869698, 42.321251, 41.214703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210057, 0.974432, 0.079739,
		-0.384373, 0.007316, 0.923149,
		0.898963, -0.224563, 0.376082,
		29.139387, 42.253883, 41.327526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597301, 42.643982, 41.880154>,  <28.510113, 42.411076, 41.064270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597301, 42.643982, 41.880154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953671, 42.626297, 41.699352>,  <29.167492, 42.615685, 41.590874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953671, 42.626297, 41.699352>,  <28.597301, 42.643982, 41.880154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953671, 42.626297, 41.699352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213701, 0.918996, 0.331328,
		0.400739, -0.391780, 0.828201,
		0.890921, -0.044212, -0.452001,
		29.220947, 42.613033, 41.563751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113708, 42.898682, 42.446854>,  <28.597301, 42.643982, 41.880154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113708, 42.898682, 42.446854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315910, 42.937992, 42.103970>,  <29.437231, 42.961578, 41.898239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315910, 42.937992, 42.103970>,  <29.113708, 42.898682, 42.446854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315910, 42.937992, 42.103970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357821, 0.880155, 0.311916,
		0.785131, -0.464402, 0.409756,
		0.505504, 0.098276, -0.857209,
		29.467562, 42.967476, 41.846806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799429, 42.972878, 42.632515>,  <29.113708, 42.898682, 42.446854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799429, 42.972878, 42.632515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799238, 43.114433, 42.258400>,  <29.799124, 43.199368, 42.033932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799238, 43.114433, 42.258400>,  <29.799429, 42.972878, 42.632515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799238, 43.114433, 42.258400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739110, 0.630120, 0.238045,
		0.673585, -0.691165, -0.261867,
		-0.000479, 0.353892, -0.935286,
		29.799095, 43.220600, 41.977814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553453, 43.122501, 42.471489>,  <29.799429, 42.972878, 42.632515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553453, 43.122501, 42.471489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348701, 43.311062, 42.184223>,  <30.225851, 43.424198, 42.011864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348701, 43.311062, 42.184223>,  <30.553453, 43.122501, 42.471489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348701, 43.311062, 42.184223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603566, 0.792237, 0.089822,
		0.611299, -0.387482, -0.690052,
		-0.511880, 0.471400, -0.718164,
		30.195137, 43.452480, 41.968773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057138, 43.350979, 41.894722>,  <30.553453, 43.122501, 42.471489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057138, 43.350979, 41.894722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719543, 43.565258, 41.905457>,  <30.516987, 43.693825, 41.911896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719543, 43.565258, 41.905457>,  <31.057138, 43.350979, 41.894722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719543, 43.565258, 41.905457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535840, 0.839888, 0.086395,
		0.023741, 0.087296, -0.995900,
		-0.843986, 0.535694, 0.026837,
		30.466347, 43.725967, 41.913509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138081, 43.843033, 41.485523>,  <31.057138, 43.350979, 41.894722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138081, 43.843033, 41.485523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877811, 43.969345, 41.761757>,  <30.721651, 44.045132, 41.927498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877811, 43.969345, 41.761757>,  <31.138081, 43.843033, 41.485523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877811, 43.969345, 41.761757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546490, 0.826162, 0.137133,
		-0.527234, 0.466628, -0.710129,
		-0.650671, 0.315777, 0.690588,
		30.682610, 44.064079, 41.968933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236059, 44.559093, 41.459251>,  <31.138081, 43.843033, 41.485523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236059, 44.559093, 41.459251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987934, 44.595581, 41.770863>,  <30.839058, 44.617474, 41.957829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987934, 44.595581, 41.770863>,  <31.236059, 44.559093, 41.459251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987934, 44.595581, 41.770863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302883, 0.944032, 0.130632,
		-0.723514, 0.316988, -0.613225,
		-0.620314, 0.091222, 0.779031,
		30.801840, 44.622948, 42.004574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126968, 45.270966, 41.473175>,  <31.236059, 44.559093, 41.459251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126968, 45.270966, 41.473175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004940, 45.166637, 41.839542>,  <30.931723, 45.104042, 42.059364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004940, 45.166637, 41.839542>,  <31.126968, 45.270966, 41.473175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004940, 45.166637, 41.839542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344074, 0.866611, 0.361383,
		-0.888000, 0.425391, -0.174636,
		-0.305071, -0.260820, 0.915918,
		30.913420, 45.088390, 42.114319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744017, 45.842403, 41.650040>,  <31.126968, 45.270966, 41.473175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744017, 45.842403, 41.650040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829430, 45.651279, 41.990887>,  <30.880678, 45.536606, 42.195396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829430, 45.651279, 41.990887>,  <30.744017, 45.842403, 41.650040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829430, 45.651279, 41.990887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306117, 0.861033, 0.406096,
		-0.927737, 0.174133, 0.330123,
		0.213532, -0.477807, 0.852118,
		30.893490, 45.507938, 42.246521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293144, 46.114441, 42.219353>,  <30.744017, 45.842403, 41.650040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293144, 46.114441, 42.219353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616945, 45.965302, 42.400764>,  <30.811226, 45.875816, 42.509613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616945, 45.965302, 42.400764>,  <30.293144, 46.114441, 42.219353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616945, 45.965302, 42.400764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208351, 0.904625, 0.371811,
		-0.548905, -0.206488, 0.809979,
		0.809501, -0.372849, 0.453532,
		30.859797, 45.853447, 42.536823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369274, 46.511658, 42.823505>,  <30.293144, 46.114441, 42.219353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369274, 46.511658, 42.823505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732906, 46.356865, 42.761772>,  <30.951086, 46.263988, 42.724731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732906, 46.356865, 42.761772>,  <30.369274, 46.511658, 42.823505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732906, 46.356865, 42.761772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415862, 0.865242, 0.280026,
		0.025169, -0.318747, 0.947506,
		0.909079, -0.386984, -0.154332,
		31.005630, 46.240768, 42.715473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440245, 46.305618, 43.507736>,  <30.369274, 46.511658, 42.823505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440245, 46.305618, 43.507736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677023, 46.552036, 43.715618>,  <30.819090, 46.699886, 43.840347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677023, 46.552036, 43.715618>,  <30.440245, 46.305618, 43.507736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677023, 46.552036, 43.715618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582201, 0.772730, -0.252844,
		-0.557351, -0.152899, 0.816077,
		0.591948, 0.616044, 0.519700,
		30.854607, 46.736851, 43.871529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134720, 46.599010, 44.162449>,  <30.440245, 46.305618, 43.507736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134720, 46.599010, 44.162449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379585, 46.837788, 43.955021>,  <30.526505, 46.981052, 43.830563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379585, 46.837788, 43.955021>,  <30.134720, 46.599010, 44.162449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379585, 46.837788, 43.955021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768947, 0.602277, -0.214435,
		0.184318, 0.530023, 0.827709,
		0.612166, 0.596941, -0.518570,
		30.563234, 47.016869, 43.799450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881315, 47.256607, 44.451279>,  <30.134720, 46.599010, 44.162449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881315, 47.256607, 44.451279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079176, 47.248627, 44.103733>,  <30.197893, 47.243839, 43.895206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079176, 47.248627, 44.103733>,  <29.881315, 47.256607, 44.451279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079176, 47.248627, 44.103733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773162, 0.446477, -0.450421,
		0.396911, 0.894573, 0.205430,
		0.494654, -0.019947, -0.868861,
		30.227571, 47.242641, 43.843075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510548, 47.385967, 44.762306>,  <29.881315, 47.256607, 44.451279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510548, 47.385967, 44.762306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403301, 47.707626, 44.974518>,  <30.338953, 47.900620, 45.101845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403301, 47.707626, 44.974518>,  <30.510548, 47.385967, 44.762306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403301, 47.707626, 44.974518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615532, 0.566622, -0.547777,
		-0.741103, 0.179689, -0.646899,
		-0.268118, 0.804146, 0.530530,
		30.322866, 47.948872, 45.133678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141886, 47.677849, 44.836346>,  <30.510548, 47.385967, 44.762306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141886, 47.677849, 44.836346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488689, 47.607933, 45.022995>,  <31.696772, 47.565983, 45.134987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488689, 47.607933, 45.022995>,  <31.141886, 47.677849, 44.836346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488689, 47.607933, 45.022995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128184, -0.826702, -0.547844,
		0.481522, 0.534801, -0.694353,
		0.867010, -0.174794, 0.466628,
		31.748793, 47.555496, 45.162983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599861, 47.498142, 44.271370>,  <31.141886, 47.677849, 44.836346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599861, 47.498142, 44.271370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667528, 47.326576, 44.626316>,  <31.708128, 47.223637, 44.839283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667528, 47.326576, 44.626316>,  <31.599861, 47.498142, 44.271370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667528, 47.326576, 44.626316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186449, -0.870154, -0.456146,
		0.967791, 0.242613, -0.067230,
		0.169167, -0.428919, 0.887362,
		31.718279, 47.197899, 44.892525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127289, 47.084785, 44.099762>,  <31.599861, 47.498142, 44.271370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127289, 47.084785, 44.099762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006729, 46.981850, 44.467007>,  <31.934393, 46.920086, 44.687355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006729, 46.981850, 44.467007>,  <32.127289, 47.084785, 44.099762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006729, 46.981850, 44.467007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221672, -0.955419, -0.195029,
		0.927372, 0.144738, 0.345010,
		-0.301401, -0.257344, 0.918113,
		31.916309, 46.904648, 44.742439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559448, 46.674477, 44.592403>,  <32.127289, 47.084785, 44.099762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559448, 46.674477, 44.592403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178562, 46.575653, 44.664238>,  <31.950031, 46.516361, 44.707340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178562, 46.575653, 44.664238>,  <32.559448, 46.674477, 44.592403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178562, 46.575653, 44.664238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240061, -0.968899, -0.060040,
		0.188838, -0.014059, 0.981908,
		-0.952214, -0.247056, 0.179590,
		31.892899, 46.501537, 44.718117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418148, 46.108025, 45.105709>,  <32.559448, 46.674477, 44.592403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418148, 46.108025, 45.105709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074596, 46.100948, 44.900963>,  <31.868465, 46.096703, 44.778114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074596, 46.100948, 44.900963>,  <32.418148, 46.108025, 45.105709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074596, 46.100948, 44.900963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100576, -0.985770, -0.134693,
		-0.502203, -0.167167, 0.848438,
		-0.858881, -0.017690, -0.511870,
		31.816933, 46.095642, 44.747402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911282, 45.582741, 45.359703>,  <32.418148, 46.108025, 45.105709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911282, 45.582741, 45.359703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853561, 45.660324, 44.971569>,  <31.818930, 45.706875, 44.738686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853561, 45.660324, 44.971569>,  <31.911282, 45.582741, 45.359703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853561, 45.660324, 44.971569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200634, -0.954500, -0.220624,
		-0.968981, -0.226519, 0.098821,
		-0.144301, 0.193954, -0.970340,
		31.810272, 45.718510, 44.680466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678207, 45.001503, 45.171291>,  <31.911282, 45.582741, 45.359703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678207, 45.001503, 45.171291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763866, 45.161125, 44.814663>,  <31.815262, 45.256897, 44.600685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763866, 45.161125, 44.814663>,  <31.678207, 45.001503, 45.171291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763866, 45.161125, 44.814663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388647, -0.872195, -0.297035,
		-0.896155, -0.282895, -0.341873,
		0.214150, 0.399057, -0.891568,
		31.828112, 45.280842, 44.547192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312698, 44.623600, 44.545727>,  <31.678207, 45.001503, 45.171291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312698, 44.623600, 44.545727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655224, 44.808632, 44.453857>,  <31.860739, 44.919651, 44.398735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655224, 44.808632, 44.453857>,  <31.312698, 44.623600, 44.545727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655224, 44.808632, 44.453857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420630, -0.882699, -0.209553,
		-0.299663, 0.082837, -0.950442,
		0.856313, 0.462580, -0.229669,
		31.912117, 44.947407, 44.384956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398603, 44.369781, 43.935608>,  <31.312698, 44.623600, 44.545727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398603, 44.369781, 43.935608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754847, 44.529823, 44.022079>,  <31.968592, 44.625847, 44.073963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754847, 44.529823, 44.022079>,  <31.398603, 44.369781, 43.935608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754847, 44.529823, 44.022079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452517, -0.732374, -0.508779,
		-0.045239, 0.550948, -0.833313,
		0.890607, 0.400105, 0.216182,
		32.022030, 44.649857, 44.086933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746075, 44.324421, 43.329472>,  <31.398603, 44.369781, 43.935608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746075, 44.324421, 43.329472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027676, 44.353683, 43.612038>,  <32.196636, 44.371243, 43.781578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027676, 44.353683, 43.612038>,  <31.746075, 44.324421, 43.329472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027676, 44.353683, 43.612038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502901, -0.753691, -0.423132,
		0.501467, 0.653145, -0.567391,
		0.704004, 0.073155, 0.706418,
		32.238876, 44.375629, 43.823963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287838, 44.156704, 43.001938>,  <31.746075, 44.324421, 43.329472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287838, 44.156704, 43.001938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352062, 44.081978, 43.389610>,  <32.390598, 44.037140, 43.622215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352062, 44.081978, 43.389610>,  <32.287838, 44.156704, 43.001938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352062, 44.081978, 43.389610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345072, -0.909337, -0.232449,
		0.924741, 0.371761, -0.081540,
		0.160563, -0.186818, 0.969185,
		32.400230, 44.025932, 43.680367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854584, 43.862080, 42.940441>,  <32.287838, 44.156704, 43.001938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854584, 43.862080, 42.940441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747013, 43.771168, 43.314827>,  <32.682472, 43.716621, 43.539459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747013, 43.771168, 43.314827>,  <32.854584, 43.862080, 42.940441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747013, 43.771168, 43.314827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307635, -0.941127, -0.140141,
		0.912710, 0.250247, 0.323013,
		-0.268926, -0.227279, 0.935961,
		32.666336, 43.702984, 43.595615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463291, 43.533642, 43.210251>,  <32.854584, 43.862080, 42.940441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463291, 43.533642, 43.210251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163197, 43.420715, 43.449398>,  <32.983139, 43.352959, 43.592884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163197, 43.420715, 43.449398>,  <33.463291, 43.533642, 43.210251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163197, 43.420715, 43.449398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285532, -0.953929, -0.092146,
		0.596335, 0.101578, 0.796283,
		-0.750238, -0.282314, 0.597865,
		32.938126, 43.336021, 43.628757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809845, 43.095276, 43.637051>,  <33.463291, 43.533642, 43.210251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809845, 43.095276, 43.637051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423832, 42.997513, 43.674953>,  <33.192223, 42.938854, 43.697693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423832, 42.997513, 43.674953>,  <33.809845, 43.095276, 43.637051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423832, 42.997513, 43.674953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242945, -0.969667, -0.026883,
		0.098450, -0.002923, 0.995138,
		-0.965031, -0.244410, 0.094753,
		33.134323, 42.924191, 43.703381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721748, 42.667698, 44.228962>,  <33.809845, 43.095276, 43.637051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721748, 42.667698, 44.228962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391468, 42.603268, 44.012714>,  <33.193298, 42.564610, 43.882965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391468, 42.603268, 44.012714>,  <33.721748, 42.667698, 44.228962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391468, 42.603268, 44.012714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173592, -0.984415, 0.028173,
		-0.536731, -0.070585, 0.840796,
		-0.825704, -0.161076, -0.540618,
		33.143757, 42.554943, 43.850529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373016, 42.142963, 44.565948>,  <33.721748, 42.667698, 44.228962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373016, 42.142963, 44.565948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241524, 42.135414, 44.188255>,  <33.162628, 42.130882, 43.961639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241524, 42.135414, 44.188255>,  <33.373016, 42.142963, 44.565948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241524, 42.135414, 44.188255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289764, -0.953595, -0.081817,
		-0.898873, -0.300501, 0.318947,
		-0.328732, -0.018876, -0.944235,
		33.142902, 42.129749, 43.904984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014664, 41.540638, 44.545193>,  <33.373016, 42.142963, 44.565948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014664, 41.540638, 44.545193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067612, 41.630806, 44.159103>,  <33.099380, 41.684906, 43.927448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067612, 41.630806, 44.159103>,  <33.014664, 41.540638, 44.545193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067612, 41.630806, 44.159103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186271, -0.962104, -0.199145,
		-0.973540, -0.153433, -0.169344,
		0.132371, 0.225419, -0.965227,
		33.107323, 41.698433, 43.869534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135582, 40.914948, 44.330639>,  <33.014664, 41.540638, 44.545193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135582, 40.914948, 44.330639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153137, 41.111488, 43.982697>,  <33.163670, 41.229412, 43.773930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153137, 41.111488, 43.982697>,  <33.135582, 40.914948, 44.330639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153137, 41.111488, 43.982697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034240, -0.870922, -0.490227,
		-0.998449, -0.008268, -0.055050,
		0.043891, 0.491352, -0.869855,
		33.166306, 41.258892, 43.721741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617611, 40.619064, 43.994385>,  <33.135582, 40.914948, 44.330639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617611, 40.619064, 43.994385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905510, 40.776115, 43.765369>,  <33.078251, 40.870346, 43.627960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905510, 40.776115, 43.765369>,  <32.617611, 40.619064, 43.994385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905510, 40.776115, 43.765369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103877, -0.876331, -0.470376,
		-0.686418, 0.279079, -0.671524,
		0.719750, 0.392631, -0.572539,
		33.121433, 40.893906, 43.593609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502365, 40.529594, 43.239342>,  <32.617611, 40.619064, 43.994385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502365, 40.529594, 43.239342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900467, 40.567448, 43.248379>,  <33.139328, 40.590160, 43.253803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900467, 40.567448, 43.248379>,  <32.502365, 40.529594, 43.239342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900467, 40.567448, 43.248379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091147, -0.825608, -0.556834,
		-0.034042, 0.556252, -0.830316,
		0.995256, 0.094636, 0.022595,
		33.199043, 40.595840, 43.255157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670677, 40.612797, 42.507919>,  <32.502365, 40.529594, 43.239342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670677, 40.612797, 42.507919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986595, 40.481644, 42.715271>,  <33.176147, 40.402950, 42.839680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986595, 40.481644, 42.715271>,  <32.670677, 40.612797, 42.507919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986595, 40.481644, 42.715271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059451, -0.800228, -0.596742,
		0.610483, 0.502122, -0.612523,
		0.789795, -0.327886, 0.518377,
		33.223534, 40.383278, 42.870785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132648, 40.287483, 42.087708>,  <32.670677, 40.612797, 42.507919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132648, 40.287483, 42.087708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244324, 40.121647, 42.434158>,  <33.311329, 40.022144, 42.642029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244324, 40.121647, 42.434158>,  <33.132648, 40.287483, 42.087708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244324, 40.121647, 42.434158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185365, -0.908292, -0.375028,
		0.942176, -0.055846, -0.330432,
		0.279185, -0.414593, 0.866123,
		33.328079, 39.997269, 42.693996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634331, 39.612701, 41.887112>,  <33.132648, 40.287483, 42.087708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634331, 39.612701, 41.887112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484146, 39.557976, 42.253784>,  <33.394035, 39.525139, 42.473789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484146, 39.557976, 42.253784>,  <33.634331, 39.612701, 41.887112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484146, 39.557976, 42.253784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239058, -0.941285, -0.238400,
		0.895478, -0.308651, 0.320709,
		-0.375460, -0.136813, 0.916685,
		33.371510, 39.516933, 42.528790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888775, 38.916565, 42.109230>,  <33.634331, 39.612701, 41.887112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888775, 38.916565, 42.109230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576015, 38.988354, 42.348034>,  <33.388359, 39.031429, 42.491318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576015, 38.988354, 42.348034>,  <33.888775, 38.916565, 42.109230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576015, 38.988354, 42.348034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307581, -0.944047, -0.119037,
		0.542240, -0.276704, 0.793354,
		-0.781901, 0.179474, 0.597009,
		33.341446, 39.042194, 42.527138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824665, 38.234764, 42.564251>,  <33.888775, 38.916565, 42.109230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824665, 38.234764, 42.564251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477131, 38.432037, 42.581619>,  <33.268608, 38.550404, 42.592041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477131, 38.432037, 42.581619>,  <33.824665, 38.234764, 42.564251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477131, 38.432037, 42.581619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494057, -0.858007, -0.140468,
		-0.032019, -0.143498, 0.989133,
		-0.868840, 0.493185, 0.043424,
		33.216480, 38.579994, 42.594646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349239, 37.894718, 43.008705>,  <33.824665, 38.234764, 42.564251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349239, 37.894718, 43.008705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148926, 38.110950, 42.738304>,  <33.028736, 38.240692, 42.576061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148926, 38.110950, 42.738304>,  <33.349239, 37.894718, 43.008705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148926, 38.110950, 42.738304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543082, -0.804374, -0.240925,
		-0.674001, 0.246475, 0.696400,
		-0.500784, 0.540585, -0.676005,
		32.998692, 38.273125, 42.535503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673325, 37.617916, 43.052979>,  <33.349239, 37.894718, 43.008705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673325, 37.617916, 43.052979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683662, 37.813538, 42.704231>,  <32.689865, 37.930912, 42.494984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683662, 37.813538, 42.704231>,  <32.673325, 37.617916, 43.052979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683662, 37.813538, 42.704231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611896, -0.681949, -0.400662,
		-0.790516, 0.543850, 0.281622,
		0.025849, 0.489053, -0.871871,
		32.691418, 37.960255, 42.442669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913952, 37.514008, 42.736252>,  <32.673325, 37.617916, 43.052979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913952, 37.514008, 42.736252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176296, 37.636757, 42.460377>,  <32.333702, 37.710407, 42.294849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176296, 37.636757, 42.460377>,  <31.913952, 37.514008, 42.736252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176296, 37.636757, 42.460377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338267, -0.697304, -0.631935,
		-0.674850, 0.647762, -0.353529,
		0.655861, 0.306874, -0.689692,
		32.373055, 37.728821, 42.253468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568794, 37.375393, 42.097252>,  <31.913952, 37.514008, 42.736252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568794, 37.375393, 42.097252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955948, 37.418396, 42.006351>,  <32.188240, 37.444199, 41.951813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955948, 37.418396, 42.006351>,  <31.568794, 37.375393, 42.097252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955948, 37.418396, 42.006351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082498, -0.718070, -0.691064,
		-0.237475, 0.687617, -0.686140,
		0.967884, 0.107505, -0.227251,
		32.246315, 37.450649, 41.938175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482500, 37.425564, 41.399235>,  <31.568794, 37.375393, 42.097252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482500, 37.425564, 41.399235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855442, 37.333347, 41.510635>,  <32.079208, 37.278015, 41.577477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855442, 37.333347, 41.510635>,  <31.482500, 37.425564, 41.399235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855442, 37.333347, 41.510635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004099, -0.763526, -0.645764,
		0.361523, 0.603222, -0.710932,
		0.932354, -0.230545, 0.278505,
		32.135147, 37.264183, 41.594185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961538, 37.373310, 40.856152>,  <31.482500, 37.425564, 41.399235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961538, 37.373310, 40.856152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118855, 37.129940, 41.131874>,  <32.213245, 36.983917, 41.297306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118855, 37.129940, 41.131874>,  <31.961538, 37.373310, 40.856152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118855, 37.129940, 41.131874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010651, -0.752684, -0.658296,
		0.919352, 0.251562, -0.302505,
		0.393293, -0.608427, 0.689302,
		32.236843, 36.947411, 41.338665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333122, 36.916203, 40.430309>,  <31.961538, 37.373310, 40.856152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333122, 36.916203, 40.430309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333847, 36.725330, 40.781830>,  <32.334282, 36.610809, 40.992744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333847, 36.725330, 40.781830>,  <32.333122, 36.916203, 40.430309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333847, 36.725330, 40.781830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043216, -0.878022, -0.476665,
		0.999064, -0.037116, -0.022210,
		0.001809, -0.477179, 0.878805,
		32.334389, 36.582176, 41.045471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925060, 36.394867, 40.395599>,  <32.333122, 36.916203, 40.430309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925060, 36.394867, 40.395599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642021, 36.301834, 40.662495>,  <32.472198, 36.246014, 40.822632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642021, 36.301834, 40.662495>,  <32.925060, 36.394867, 40.395599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642021, 36.301834, 40.662495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267030, -0.786245, -0.557239,
		0.654218, -0.572474, 0.494239,
		-0.707597, -0.232579, 0.667243,
		32.429741, 36.232059, 40.862667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982117, 35.674145, 40.513092>,  <32.925060, 36.394867, 40.395599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982117, 35.674145, 40.513092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614857, 35.728729, 40.661892>,  <32.394501, 35.761482, 40.751171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614857, 35.728729, 40.661892>,  <32.982117, 35.674145, 40.513092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614857, 35.728729, 40.661892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232866, -0.945421, -0.227931,
		0.320592, -0.295900, 0.899813,
		-0.918147, 0.136463, 0.372000,
		32.339413, 35.769669, 40.773491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827923, 35.069382, 40.838673>,  <32.982117, 35.674145, 40.513092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827923, 35.069382, 40.838673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468090, 35.232246, 40.775475>,  <32.252190, 35.329967, 40.737556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468090, 35.232246, 40.775475>,  <32.827923, 35.069382, 40.838673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468090, 35.232246, 40.775475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397839, -0.913205, -0.088207,
		-0.180198, -0.016493, 0.983492,
		-0.899585, 0.407166, -0.157996,
		32.198215, 35.354397, 40.728077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441322, 34.620094, 41.178932>,  <32.827923, 35.069382, 40.838673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441322, 34.620094, 41.178932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181755, 34.830605, 40.959137>,  <32.026016, 34.956913, 40.827259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181755, 34.830605, 40.959137>,  <32.441322, 34.620094, 41.178932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181755, 34.830605, 40.959137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452014, -0.847591, -0.277981,
		-0.612036, 0.067989, 0.787902,
		-0.648919, 0.526278, -0.549489,
		31.987080, 34.988487, 40.794289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799437, 34.307011, 41.412296>,  <32.441322, 34.620094, 41.178932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799437, 34.307011, 41.412296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749403, 34.479572, 41.054916>,  <31.719383, 34.583107, 40.840488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749403, 34.479572, 41.054916>,  <31.799437, 34.307011, 41.412296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749403, 34.479572, 41.054916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332757, -0.866602, -0.371852,
		-0.934680, 0.250789, 0.251948,
		-0.125082, 0.431400, -0.893448,
		31.711878, 34.608994, 40.786880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122555, 34.041267, 41.112869>,  <31.799437, 34.307011, 41.412296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122555, 34.041267, 41.112869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321653, 34.183559, 40.796463>,  <31.441113, 34.268936, 40.606621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321653, 34.183559, 40.796463>,  <31.122555, 34.041267, 41.112869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321653, 34.183559, 40.796463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313251, -0.776726, -0.546416,
		-0.808778, 0.519763, -0.275180,
		0.497747, 0.355729, -0.791015,
		31.470978, 34.290279, 40.559158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786640, 33.741943, 40.619301>,  <31.122555, 34.041267, 41.112869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786640, 33.741943, 40.619301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099741, 33.852589, 40.396309>,  <31.287601, 33.918976, 40.262512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099741, 33.852589, 40.396309>,  <30.786640, 33.741943, 40.619301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099741, 33.852589, 40.396309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262428, -0.665544, -0.698700,
		-0.564298, 0.693208, -0.448365,
		0.782751, 0.276611, -0.557483,
		31.334566, 33.935574, 40.229065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587645, 33.791779, 39.881165>,  <30.786640, 33.741943, 40.619301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587645, 33.791779, 39.881165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986317, 33.767242, 39.859760>,  <31.225521, 33.752522, 39.846916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986317, 33.767242, 39.859760>,  <30.587645, 33.791779, 39.881165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986317, 33.767242, 39.859760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081286, -0.714721, -0.694670,
		0.004369, 0.696714, -0.717335,
		0.996681, -0.061344, -0.053510,
		31.285320, 33.748840, 39.843708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794928, 33.952103, 39.161083>,  <30.587645, 33.791779, 39.881165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794928, 33.952103, 39.161083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086124, 33.737339, 39.331612>,  <31.260841, 33.608479, 39.433929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086124, 33.737339, 39.331612>,  <30.794928, 33.952103, 39.161083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086124, 33.737339, 39.331612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063734, -0.672148, -0.737669,
		0.682618, 0.509844, -0.523538,
		0.727991, -0.536913, 0.426326,
		31.304522, 33.576263, 39.459511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411419, 33.755566, 38.618958>,  <30.794928, 33.952103, 39.161083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411419, 33.755566, 38.618958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389874, 33.489754, 38.917084>,  <31.376947, 33.330265, 39.095959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389874, 33.489754, 38.917084>,  <31.411419, 33.755566, 38.618958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389874, 33.489754, 38.917084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069375, -0.742105, -0.666684,
		0.996136, -0.087614, -0.006131,
		-0.053861, -0.664533, 0.745315,
		31.373714, 33.290394, 39.140678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617613, 33.141911, 38.355465>,  <31.411419, 33.755566, 38.618958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617613, 33.141911, 38.355465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508335, 32.964729, 38.697025>,  <31.442768, 32.858421, 38.901962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508335, 32.964729, 38.697025>,  <31.617613, 33.141911, 38.355465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508335, 32.964729, 38.697025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167332, -0.896023, -0.411271,
		0.947293, 0.030528, 0.318911,
		-0.273196, -0.442958, 0.853904,
		31.426376, 32.831841, 38.953197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100273, 32.664230, 38.527775>,  <31.617613, 33.141911, 38.355465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100273, 32.664230, 38.527775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779665, 32.545856, 38.735615>,  <31.587299, 32.474834, 38.860317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779665, 32.545856, 38.735615>,  <32.100273, 32.664230, 38.527775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779665, 32.545856, 38.735615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040296, -0.893705, -0.446841,
		0.596603, -0.337216, 0.728251,
		-0.801524, -0.295932, 0.519599,
		31.539207, 32.457077, 38.891495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317059, 32.065479, 38.833626>,  <32.100273, 32.664230, 38.527775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317059, 32.065479, 38.833626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917896, 32.073326, 38.808987>,  <31.678398, 32.078033, 38.794201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917896, 32.073326, 38.808987>,  <32.317059, 32.065479, 38.833626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917896, 32.073326, 38.808987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013454, -0.868949, -0.494719,
		-0.063235, -0.494512, 0.866867,
		-0.997908, 0.019621, -0.061601,
		31.618525, 32.079212, 38.790504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829739, 32.476959, 39.225998>,  <32.317059, 32.065479, 38.833626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829739, 32.476959, 39.225998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175591, 32.331928, 39.086884>,  <33.383102, 32.244911, 39.003414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175591, 32.331928, 39.086884>,  <32.829739, 32.476959, 39.225998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175591, 32.331928, 39.086884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502198, 0.603421, 0.619419,
		-0.014724, -0.710226, 0.703820,
		0.864627, -0.362578, -0.347789,
		33.434978, 32.223156, 38.982548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290138, 32.239323, 39.791367>,  <32.829739, 32.476959, 39.225998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290138, 32.239323, 39.791367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509586, 32.310860, 39.464680>,  <33.641254, 32.353783, 39.268669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509586, 32.310860, 39.464680>,  <33.290138, 32.239323, 39.791367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509586, 32.310860, 39.464680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548742, 0.659982, 0.513134,
		0.630788, -0.729684, 0.263944,
		0.548624, 0.178842, -0.816717,
		33.674171, 32.364513, 39.219666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969467, 32.337940, 39.991379>,  <33.290138, 32.239323, 39.791367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969467, 32.337940, 39.991379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011688, 32.504303, 39.630074>,  <34.037022, 32.604118, 39.413292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011688, 32.504303, 39.630074>,  <33.969467, 32.337940, 39.991379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011688, 32.504303, 39.630074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560216, 0.725604, 0.399571,
		0.821593, -0.548199, -0.156404,
		0.105556, 0.415905, -0.903261,
		34.043354, 32.629074, 39.359097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707867, 32.564960, 40.002354>,  <33.969467, 32.337940, 39.991379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707867, 32.564960, 40.002354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520493, 32.745373, 39.698475>,  <34.408070, 32.853619, 39.516148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520493, 32.745373, 39.698475>,  <34.707867, 32.564960, 40.002354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520493, 32.745373, 39.698475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414504, 0.871561, 0.261856,
		0.780229, -0.192236, -0.595221,
		-0.468433, 0.451029, -0.759699,
		34.379963, 32.880680, 39.470566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222378, 32.875198, 39.591637>,  <34.707867, 32.564960, 40.002354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222378, 32.875198, 39.591637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893726, 33.082161, 39.495956>,  <34.696537, 33.206341, 39.438549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893726, 33.082161, 39.495956>,  <35.222378, 32.875198, 39.591637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893726, 33.082161, 39.495956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425485, 0.835927, 0.346682,
		0.379333, 0.183065, -0.906969,
		-0.821626, 0.517410, -0.239203,
		34.647240, 33.237385, 39.424194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435291, 33.419544, 39.215626>,  <35.222378, 32.875198, 39.591637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435291, 33.419544, 39.215626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074333, 33.546444, 39.332272>,  <34.857758, 33.622581, 39.402260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074333, 33.546444, 39.332272>,  <35.435291, 33.419544, 39.215626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074333, 33.546444, 39.332272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418625, 0.805865, 0.418729,
		-0.102163, 0.499936, -0.860015,
		-0.902394, 0.317246, 0.291615,
		34.803616, 33.641617, 39.419758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383152, 34.160488, 38.963139>,  <35.435291, 33.419544, 39.215626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383152, 34.160488, 38.963139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126495, 34.117081, 39.266853>,  <34.972500, 34.091038, 39.449081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126495, 34.117081, 39.266853>,  <35.383152, 34.160488, 38.963139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126495, 34.117081, 39.266853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163375, 0.947888, 0.273529,
		-0.749402, 0.299556, -0.590477,
		-0.641643, -0.108514, 0.759289,
		34.934002, 34.084526, 39.494640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862293, 34.680958, 38.873749>,  <35.383152, 34.160488, 38.963139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862293, 34.680958, 38.873749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856899, 34.593632, 39.264061>,  <34.853661, 34.541237, 39.498249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856899, 34.593632, 39.264061>,  <34.862293, 34.680958, 38.873749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856899, 34.593632, 39.264061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041475, 0.974911, 0.218698,
		-0.999049, 0.043420, -0.004095,
		-0.013488, -0.218320, 0.975784,
		34.852852, 34.528137, 39.556797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615513, 35.288666, 39.137699>,  <34.862293, 34.680958, 38.873749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615513, 35.288666, 39.137699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750546, 35.094162, 39.460087>,  <34.831566, 34.977459, 39.653519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750546, 35.094162, 39.460087>,  <34.615513, 35.288666, 39.137699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750546, 35.094162, 39.460087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068625, 0.866669, 0.494142,
		-0.938790, -0.111505, 0.325944,
		0.337585, -0.486263, 0.805968,
		34.851822, 34.948284, 39.701878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363350, 35.674545, 39.606071>,  <34.615513, 35.288666, 39.137699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363350, 35.674545, 39.606071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663963, 35.469673, 39.772385>,  <34.844330, 35.346752, 39.872173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663963, 35.469673, 39.772385>,  <34.363350, 35.674545, 39.606071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663963, 35.469673, 39.772385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283425, 0.819807, 0.497581,
		-0.595709, -0.256106, 0.761275,
		0.751532, -0.512178, 0.415780,
		34.889423, 35.316021, 39.897118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416534, 35.870113, 40.393250>,  <34.363350, 35.674545, 39.606071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416534, 35.870113, 40.393250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776756, 35.742393, 40.275234>,  <34.992889, 35.665760, 40.204426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776756, 35.742393, 40.275234>,  <34.416534, 35.870113, 40.393250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776756, 35.742393, 40.275234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429980, 0.754365, 0.496035,
		0.064180, -0.573567, 0.816641,
		0.900554, -0.319304, -0.295038,
		35.046921, 35.646603, 40.186722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780247, 35.694260, 40.977581>,  <34.416534, 35.870113, 40.393250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780247, 35.694260, 40.977581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050655, 35.741806, 40.686687>,  <35.212898, 35.770336, 40.512150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050655, 35.741806, 40.686687>,  <34.780247, 35.694260, 40.977581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050655, 35.741806, 40.686687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413601, 0.755577, 0.507975,
		0.609862, -0.644185, 0.461621,
		0.676019, 0.118868, -0.727233,
		35.253460, 35.777466, 40.468517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579678, 35.740749, 41.334652>,  <34.780247, 35.694260, 40.977581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579678, 35.740749, 41.334652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591599, 35.895863, 40.966145>,  <35.598751, 35.988930, 40.745041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591599, 35.895863, 40.966145>,  <35.579678, 35.740749, 41.334652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591599, 35.895863, 40.966145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551632, 0.762229, 0.338688,
		0.833555, -0.518293, -0.191201,
		0.029801, 0.387787, -0.921267,
		35.600540, 36.012199, 40.689766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257065, 35.967319, 41.299965>,  <35.579678, 35.740749, 41.334652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257065, 35.967319, 41.299965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027695, 36.165615, 41.039062>,  <35.890072, 36.284592, 40.882523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027695, 36.165615, 41.039062>,  <36.257065, 35.967319, 41.299965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027695, 36.165615, 41.039062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562254, 0.817187, 0.126791,
		0.595866, -0.294026, -0.747323,
		-0.573423, 0.495736, -0.652252,
		35.855667, 36.314335, 40.843388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726219, 36.267582, 40.853554>,  <36.257065, 35.967319, 41.299965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726219, 36.267582, 40.853554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383812, 36.471329, 40.818260>,  <36.178368, 36.593578, 40.797085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383812, 36.471329, 40.818260>,  <36.726219, 36.267582, 40.853554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383812, 36.471329, 40.818260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507128, 0.860541, 0.047858,
		0.100304, -0.003778, -0.994950,
		-0.856014, 0.509367, -0.088232,
		36.127007, 36.624138, 40.791790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867554, 36.841541, 40.559296>,  <36.726219, 36.267582, 40.853554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867554, 36.841541, 40.559296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516491, 36.951756, 40.716167>,  <36.305855, 37.017883, 40.810291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516491, 36.951756, 40.716167>,  <36.867554, 36.841541, 40.559296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516491, 36.951756, 40.716167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326381, 0.942787, 0.068032,
		-0.350998, 0.187709, -0.917369,
		-0.877654, 0.275533, 0.392181,
		36.253197, 37.034416, 40.833820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802883, 37.494743, 40.357342>,  <36.867554, 36.841541, 40.559296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802883, 37.494743, 40.357342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504238, 37.497608, 40.623428>,  <36.325050, 37.499329, 40.783081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504238, 37.497608, 40.623428>,  <36.802883, 37.494743, 40.357342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504238, 37.497608, 40.623428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147331, 0.976893, 0.154836,
		-0.648740, 0.213610, -0.730415,
		-0.746612, 0.007164, 0.665221,
		36.280254, 37.499756, 40.822994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574425, 38.168587, 40.376434>,  <36.802883, 37.494743, 40.357342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574425, 38.168587, 40.376434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400372, 38.051918, 40.717159>,  <36.295940, 37.981918, 40.921597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400372, 38.051918, 40.717159>,  <36.574425, 38.168587, 40.376434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400372, 38.051918, 40.717159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092053, 0.926705, 0.364340,
		-0.895649, 0.236947, -0.376388,
		-0.435130, -0.291673, 0.851815,
		36.269833, 37.964417, 40.972702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020309, 38.599770, 40.559288>,  <36.574425, 38.168587, 40.376434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020309, 38.599770, 40.559288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114399, 38.438164, 40.912884>,  <36.170853, 38.341198, 41.125042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114399, 38.438164, 40.912884>,  <36.020309, 38.599770, 40.559288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114399, 38.438164, 40.912884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021629, 0.907109, 0.420339,
		-0.971700, -0.117996, 0.204638,
		0.235228, -0.404017, 0.883990,
		36.184967, 38.316959, 41.178082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481468, 38.786354, 41.004871>,  <36.020309, 38.599770, 40.559288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481468, 38.786354, 41.004871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777042, 38.676537, 41.250992>,  <35.954388, 38.610645, 41.398663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777042, 38.676537, 41.250992>,  <35.481468, 38.786354, 41.004871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777042, 38.676537, 41.250992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155381, 0.819165, 0.552111,
		-0.655612, -0.503582, 0.562653,
		0.738939, -0.274545, 0.615301,
		35.998722, 38.594173, 41.435581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202480, 38.752701, 41.720676>,  <35.481468, 38.786354, 41.004871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202480, 38.752701, 41.720676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595547, 38.826862, 41.720512>,  <35.831387, 38.871361, 41.720413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595547, 38.826862, 41.720512>,  <35.202480, 38.752701, 41.720676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595547, 38.826862, 41.720512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158862, 0.843114, 0.513734,
		0.095594, -0.504761, 0.857950,
		0.982662, 0.185406, -0.000409,
		35.890347, 38.882484, 41.720390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419357, 38.871326, 42.517746>,  <35.202480, 38.752701, 41.720676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419357, 38.871326, 42.517746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643349, 39.051636, 42.239689>,  <35.777744, 39.159821, 42.072853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643349, 39.051636, 42.239689>,  <35.419357, 38.871326, 42.517746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643349, 39.051636, 42.239689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045620, 0.854534, 0.517387,
		0.827248, -0.258015, 0.499089,
		0.559982, 0.450776, -0.695141,
		35.811344, 39.186871, 42.031147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052742, 39.199158, 42.827412>,  <35.419357, 38.871326, 42.517746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052742, 39.199158, 42.827412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008747, 39.397236, 42.482693>,  <35.982349, 39.516083, 42.275864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008747, 39.397236, 42.482693>,  <36.052742, 39.199158, 42.827412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008747, 39.397236, 42.482693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225778, 0.831940, 0.506854,
		0.967950, 0.250321, 0.020301,
		-0.109987, 0.495193, -0.861793,
		35.975750, 39.545795, 42.224155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446659, 39.864830, 42.949799>,  <36.052742, 39.199158, 42.827412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446659, 39.864830, 42.949799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178440, 39.905407, 42.655838>,  <36.017509, 39.929752, 42.479462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178440, 39.905407, 42.655838>,  <36.446659, 39.864830, 42.949799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178440, 39.905407, 42.655838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210936, 0.923651, 0.319962,
		0.711245, 0.369566, -0.597956,
		-0.670549, 0.101441, -0.734897,
		35.977276, 39.935841, 42.435368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534454, 40.587605, 42.580997>,  <36.446659, 39.864830, 42.949799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534454, 40.587605, 42.580997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157619, 40.474922, 42.508205>,  <35.931519, 40.407310, 42.464531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157619, 40.474922, 42.508205>,  <36.534454, 40.587605, 42.580997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157619, 40.474922, 42.508205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316353, 0.926593, 0.203337,
		0.111340, 0.249130, -0.962049,
		-0.942085, -0.281708, -0.181979,
		35.874992, 40.390411, 42.453613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389469, 41.057358, 42.020683>,  <36.534454, 40.587605, 42.580997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389469, 41.057358, 42.020683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052246, 40.930256, 42.194248>,  <35.849911, 40.853992, 42.298386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052246, 40.930256, 42.194248>,  <36.389469, 41.057358, 42.020683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052246, 40.930256, 42.194248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346763, 0.937862, 0.013067,
		-0.411099, -0.139447, -0.900862,
		-0.843062, -0.317757, 0.433909,
		35.799328, 40.834930, 42.324421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950977, 41.184704, 41.495365>,  <36.389469, 41.057358, 42.020683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950977, 41.184704, 41.495365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779381, 41.165752, 41.856194>,  <35.676422, 41.154381, 42.072689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779381, 41.165752, 41.856194>,  <35.950977, 41.184704, 41.495365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779381, 41.165752, 41.856194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407663, 0.901298, -0.146535,
		-0.806089, -0.430602, -0.405959,
		-0.428988, -0.047374, 0.902067,
		35.650684, 41.151539, 42.126812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318478, 41.551086, 41.450600>,  <35.950977, 41.184704, 41.495365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318478, 41.551086, 41.450600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356789, 41.544788, 41.848713>,  <35.379776, 41.541008, 42.087582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356789, 41.544788, 41.848713>,  <35.318478, 41.551086, 41.450600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356789, 41.544788, 41.848713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523338, 0.849733, 0.063801,
		-0.846726, -0.526977, 0.073142,
		0.095773, -0.015744, 0.995279,
		35.385521, 41.540066, 42.147297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670116, 41.536026, 41.721478>,  <35.318478, 41.551086, 41.450600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670116, 41.536026, 41.721478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921570, 41.696102, 41.988209>,  <35.072441, 41.792149, 42.148247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921570, 41.696102, 41.988209>,  <34.670116, 41.536026, 41.721478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921570, 41.696102, 41.988209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545582, 0.837979, 0.011430,
		-0.554217, -0.370997, 0.745121,
		0.628636, 0.400190, 0.666832,
		35.110161, 41.816158, 42.188259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302231, 42.022732, 41.961430>,  <34.670116, 41.536026, 41.721478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302231, 42.022732, 41.961430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650940, 42.118725, 42.132275>,  <34.860165, 42.176319, 42.234783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650940, 42.118725, 42.132275>,  <34.302231, 42.022732, 41.961430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650940, 42.118725, 42.132275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261535, 0.965157, -0.008474,
		-0.414268, -0.104319, 0.904157,
		0.871769, 0.239979, 0.427117,
		34.912472, 42.190720, 42.260410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104939, 42.521645, 42.373959>,  <34.302231, 42.022732, 41.961430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104939, 42.521645, 42.373959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496548, 42.602074, 42.387104>,  <34.731514, 42.650330, 42.394993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496548, 42.602074, 42.387104>,  <34.104939, 42.521645, 42.373959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496548, 42.602074, 42.387104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202790, 0.977260, 0.061966,
		-0.019658, -0.067331, 0.997537,
		0.979025, 0.201073, 0.032865,
		34.790257, 42.662395, 42.396965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301392, 43.097931, 42.922256>,  <34.104939, 42.521645, 42.373959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301392, 43.097931, 42.922256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586304, 43.065071, 42.643429>,  <34.757252, 43.045357, 42.476131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586304, 43.065071, 42.643429>,  <34.301392, 43.097931, 42.922256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586304, 43.065071, 42.643429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036088, 0.996100, -0.080515,
		0.700966, 0.032194, 0.712467,
		0.712281, -0.082150, -0.697071,
		34.799988, 43.040424, 42.434307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801788, 43.521576, 43.199192>,  <34.301392, 43.097931, 42.922256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801788, 43.521576, 43.199192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903900, 43.490967, 42.813660>,  <34.965168, 43.472603, 42.582340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903900, 43.490967, 42.813660>,  <34.801788, 43.521576, 43.199192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903900, 43.490967, 42.813660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144373, 0.988704, -0.040259,
		0.956028, -0.128874, 0.263441,
		0.255277, -0.076523, -0.963835,
		34.980484, 43.468010, 42.524509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426769, 43.783524, 43.091419>,  <34.801788, 43.521576, 43.199192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426769, 43.783524, 43.091419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244667, 43.820496, 42.737198>,  <35.135406, 43.842678, 42.524666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244667, 43.820496, 42.737198>,  <35.426769, 43.783524, 43.091419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244667, 43.820496, 42.737198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297599, 0.953190, -0.053504,
		0.839153, -0.287897, -0.461451,
		-0.455254, 0.092430, -0.885551,
		35.108089, 43.848225, 42.471531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950771, 44.174496, 42.587181>,  <35.426769, 43.783524, 43.091419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950771, 44.174496, 42.587181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589088, 44.188286, 42.416897>,  <35.372078, 44.196560, 42.314728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589088, 44.188286, 42.416897>,  <35.950771, 44.174496, 42.587181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589088, 44.188286, 42.416897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248998, 0.852374, -0.459845,
		0.347011, -0.521794, -0.779303,
		-0.904203, 0.034473, -0.425709,
		35.317829, 44.198627, 42.289185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066944, 44.408108, 41.872490>,  <35.950771, 44.174496, 42.587181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066944, 44.408108, 41.872490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674114, 44.472797, 41.911221>,  <35.438416, 44.511612, 41.934460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674114, 44.472797, 41.911221>,  <36.066944, 44.408108, 41.872490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674114, 44.472797, 41.911221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083196, 0.832827, -0.547246,
		-0.169141, -0.529381, -0.831353,
		-0.982074, 0.161726, 0.096823,
		35.379494, 44.521317, 41.940266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785324, 44.567738, 41.247921>,  <36.066944, 44.408108, 41.872490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785324, 44.567738, 41.247921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553600, 44.742653, 41.523075>,  <35.414566, 44.847603, 41.688168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553600, 44.742653, 41.523075>,  <35.785324, 44.567738, 41.247921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553600, 44.742653, 41.523075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027418, 0.832980, -0.552624,
		-0.814649, -0.338998, -0.470560,
		-0.579306, 0.437293, 0.687881,
		35.379810, 44.873840, 41.729439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173157, 44.862305, 40.975563>,  <35.785324, 44.567738, 41.247921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173157, 44.862305, 40.975563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268250, 45.060692, 41.309628>,  <35.325306, 45.179726, 41.510067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268250, 45.060692, 41.309628>,  <35.173157, 44.862305, 40.975563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268250, 45.060692, 41.309628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076325, 0.847617, -0.525090,
		-0.968326, 0.188577, 0.163655,
		0.237736, 0.495967, 0.835163,
		35.339569, 45.209480, 41.560177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768990, 45.303394, 40.559475>,  <35.173157, 44.862305, 40.975563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768990, 45.303394, 40.559475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426029, 45.509251, 40.560146>,  <34.220253, 45.632767, 40.560551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426029, 45.509251, 40.560146>,  <34.768990, 45.303394, 40.559475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426029, 45.509251, 40.560146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496680, -0.826610, -0.264623,
		-0.134795, -0.227724, 0.964350,
		-0.857403, 0.514643, 0.001683,
		34.168808, 45.663643, 40.560650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219772, 44.967262, 40.886318>,  <34.768990, 45.303394, 40.559475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219772, 44.967262, 40.886318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039585, 45.200726, 40.616081>,  <33.931473, 45.340801, 40.453938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039585, 45.200726, 40.616081>,  <34.219772, 44.967262, 40.886318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039585, 45.200726, 40.616081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403433, -0.808128, -0.429152,
		-0.796439, 0.079234, 0.599505,
		-0.450473, 0.583654, -0.675590,
		33.904446, 45.375820, 40.413403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584644, 44.612724, 40.907784>,  <34.219772, 44.967262, 40.886318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584644, 44.612724, 40.907784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640121, 44.855534, 40.594788>,  <33.673409, 45.001221, 40.406990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640121, 44.855534, 40.594788>,  <33.584644, 44.612724, 40.907784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640121, 44.855534, 40.594788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192027, -0.758643, -0.622565,
		-0.971539, 0.236607, 0.011343,
		0.138697, 0.607024, -0.782486,
		33.681732, 45.037640, 40.360043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118382, 44.402348, 40.405563>,  <33.584644, 44.612724, 40.907784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118382, 44.402348, 40.405563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397194, 44.600872, 40.198559>,  <33.564484, 44.719986, 40.074356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397194, 44.600872, 40.198559>,  <33.118382, 44.402348, 40.405563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397194, 44.600872, 40.198559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136903, -0.616344, -0.775486,
		-0.703848, 0.611389, -0.361666,
		0.697033, 0.496311, -0.517513,
		33.606304, 44.749763, 40.043304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824699, 44.377590, 39.729660>,  <33.118382, 44.402348, 40.405563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824699, 44.377590, 39.729660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219456, 44.434883, 39.699928>,  <33.456310, 44.469257, 39.682087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219456, 44.434883, 39.699928>,  <32.824699, 44.377590, 39.729660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219456, 44.434883, 39.699928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041720, -0.671445, -0.739879,
		-0.155882, 0.727081, -0.668621,
		0.986894, 0.143229, -0.074332,
		33.515526, 44.477852, 39.677628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922958, 44.314571, 39.035892>,  <32.824699, 44.377590, 39.729660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922958, 44.314571, 39.035892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298702, 44.321468, 39.172897>,  <33.524147, 44.325607, 39.255100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298702, 44.321468, 39.172897>,  <32.922958, 44.314571, 39.035892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298702, 44.321468, 39.172897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281144, -0.610643, -0.740319,
		0.196387, 0.791718, -0.578459,
		0.939356, 0.017241, 0.342509,
		33.580509, 44.326641, 39.275650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319176, 44.253712, 38.506847>,  <32.922958, 44.314571, 39.035892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319176, 44.253712, 38.506847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588234, 44.125431, 38.773590>,  <33.749668, 44.048462, 38.933636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588234, 44.125431, 38.773590>,  <33.319176, 44.253712, 38.506847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588234, 44.125431, 38.773590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220275, -0.773562, -0.594206,
		0.706417, 0.546583, -0.449692,
		0.672647, -0.320701, 0.666855,
		33.790028, 44.029221, 38.973648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984665, 44.121120, 38.199661>,  <33.319176, 44.253712, 38.506847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984665, 44.121120, 38.199661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999012, 43.905151, 38.536041>,  <34.007622, 43.775570, 38.737869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999012, 43.905151, 38.536041>,  <33.984665, 44.121120, 38.199661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999012, 43.905151, 38.536041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358311, -0.778599, -0.515167,
		0.932913, 0.319800, 0.165532,
		0.035867, -0.539918, 0.840953,
		34.009773, 43.743176, 38.788326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594387, 43.651817, 38.059830>,  <33.984665, 44.121120, 38.199661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594387, 43.651817, 38.059830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404766, 43.512352, 38.383240>,  <34.290993, 43.428673, 38.577286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404766, 43.512352, 38.383240>,  <34.594387, 43.651817, 38.059830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404766, 43.512352, 38.383240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309277, -0.925683, -0.217851,
		0.824390, 0.146783, 0.546658,
		-0.474055, -0.348663, 0.808521,
		34.262550, 43.407753, 38.625797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132103, 43.165565, 38.393829>,  <34.594387, 43.651817, 38.059830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132103, 43.165565, 38.393829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772877, 43.054592, 38.530369>,  <34.557343, 42.988010, 38.612293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772877, 43.054592, 38.530369>,  <35.132103, 43.165565, 38.393829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772877, 43.054592, 38.530369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275818, -0.959674, -0.054318,
		0.342650, 0.045368, 0.938367,
		-0.898062, -0.277431, 0.341345,
		34.503460, 42.971363, 38.632771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180851, 42.666939, 38.980911>,  <35.132103, 43.165565, 38.393829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180851, 42.666939, 38.980911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829659, 42.613937, 38.796917>,  <34.618942, 42.582138, 38.686520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829659, 42.613937, 38.796917>,  <35.180851, 42.666939, 38.980911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829659, 42.613937, 38.796917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241132, -0.952525, -0.185877,
		-0.413516, -0.274114, 0.868254,
		-0.877986, -0.132501, -0.459982,
		34.566261, 42.574188, 38.658920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777412, 42.159164, 39.188618>,  <35.180851, 42.666939, 38.980911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777412, 42.159164, 39.188618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672592, 42.179985, 38.803158>,  <34.609699, 42.192478, 38.571880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672592, 42.179985, 38.803158>,  <34.777412, 42.159164, 39.188618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672592, 42.179985, 38.803158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054918, -0.997731, -0.038954,
		-0.963490, 0.042714, 0.264315,
		-0.262052, 0.052047, -0.963650,
		34.593975, 42.195599, 38.514065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117966, 41.772587, 39.100784>,  <34.777412, 42.159164, 39.188618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117966, 41.772587, 39.100784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384449, 41.783291, 38.802670>,  <34.544338, 41.789715, 38.623802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384449, 41.783291, 38.802670>,  <34.117966, 41.772587, 39.100784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384449, 41.783291, 38.802670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110952, -0.991791, 0.063563,
		-0.737468, -0.125037, -0.663706,
		0.666206, 0.026764, -0.745288,
		34.584312, 41.791321, 38.579082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911442, 41.287342, 38.585934>,  <34.117966, 41.772587, 39.100784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911442, 41.287342, 38.585934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302208, 41.354084, 38.532581>,  <34.536667, 41.394127, 38.500568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302208, 41.354084, 38.532581>,  <33.911442, 41.287342, 38.585934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302208, 41.354084, 38.532581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151824, -0.981588, -0.115910,
		-0.150264, 0.092984, -0.984264,
		0.976919, 0.166852, -0.133380,
		34.595284, 41.404140, 38.492569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170708, 40.899258, 37.982300>,  <33.911442, 41.287342, 38.585934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170708, 40.899258, 37.982300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496101, 40.975060, 38.202236>,  <34.691338, 41.020542, 38.334198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496101, 40.975060, 38.202236>,  <34.170708, 40.899258, 37.982300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496101, 40.975060, 38.202236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313044, -0.939460, -0.139351,
		0.490147, 0.285485, -0.823562,
		0.813486, 0.189508, 0.549843,
		34.740147, 41.031914, 38.367188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632980, 40.535622, 37.637875>,  <34.170708, 40.899258, 37.982300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632980, 40.535622, 37.637875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788307, 40.590271, 38.002411>,  <34.881504, 40.623058, 38.221134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788307, 40.590271, 38.002411>,  <34.632980, 40.535622, 37.637875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788307, 40.590271, 38.002411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321848, -0.946779, 0.004793,
		0.863494, 0.291452, -0.411624,
		0.388320, 0.136619, 0.911341,
		34.904804, 40.631256, 38.275814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397549, 40.248150, 37.598827>,  <34.632980, 40.535622, 37.637875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397549, 40.248150, 37.598827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281883, 40.246799, 37.981735>,  <35.212482, 40.245987, 38.211479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281883, 40.246799, 37.981735>,  <35.397549, 40.248150, 37.598827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281883, 40.246799, 37.981735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168774, -0.984509, 0.047506,
		0.942284, 0.175299, 0.285255,
		-0.289164, -0.003379, 0.957273,
		35.195133, 40.245785, 38.268917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881577, 39.817730, 37.997578>,  <35.397549, 40.248150, 37.598827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881577, 39.817730, 37.997578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590641, 39.845592, 38.270668>,  <35.416080, 39.862309, 38.434525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590641, 39.845592, 38.270668>,  <35.881577, 39.817730, 37.997578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590641, 39.845592, 38.270668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040315, -0.988781, 0.143833,
		0.685090, 0.132140, 0.716374,
		-0.727343, 0.069658, 0.682731,
		35.372437, 39.866489, 38.475487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169777, 39.649361, 38.544773>,  <35.881577, 39.817730, 37.997578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169777, 39.649361, 38.544773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777363, 39.580929, 38.581200>,  <35.541912, 39.539867, 38.603058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777363, 39.580929, 38.581200>,  <36.169777, 39.649361, 38.544773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777363, 39.580929, 38.581200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180939, -0.976862, 0.114024,
		0.069454, 0.128340, 0.989295,
		-0.981039, -0.171083, 0.091068,
		35.483051, 39.529602, 38.608521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121437, 39.090118, 39.056728>,  <36.169777, 39.649361, 38.544773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121437, 39.090118, 39.056728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765141, 39.084351, 38.875015>,  <35.551365, 39.080891, 38.765987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765141, 39.084351, 38.875015>,  <36.121437, 39.090118, 39.056728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765141, 39.084351, 38.875015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024693, -0.999556, -0.016696,
		-0.453844, -0.026090, 0.890699,
		-0.890739, -0.014416, -0.454286,
		35.497917, 39.080025, 38.738728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787460, 38.513588, 39.446865>,  <36.121437, 39.090118, 39.056728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787460, 38.513588, 39.446865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597248, 38.561371, 39.098244>,  <35.483120, 38.590042, 38.889072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597248, 38.561371, 39.098244>,  <35.787460, 38.513588, 39.446865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597248, 38.561371, 39.098244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035906, -0.992547, -0.116450,
		-0.878968, -0.024081, 0.476272,
		-0.475526, 0.119457, -0.871553,
		35.454590, 38.597206, 38.836777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303345, 37.968224, 39.478603>,  <35.787460, 38.513588, 39.446865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303345, 37.968224, 39.478603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351864, 38.085587, 39.099300>,  <35.380974, 38.156006, 38.871719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351864, 38.085587, 39.099300>,  <35.303345, 37.968224, 39.478603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351864, 38.085587, 39.099300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019450, -0.955833, -0.293266,
		-0.992426, 0.017128, -0.121644,
		0.121294, 0.293411, -0.948260,
		35.388252, 38.173611, 38.814823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938080, 37.557446, 39.075821>,  <35.303345, 37.968224, 39.478603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938080, 37.557446, 39.075821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163956, 37.729328, 38.793976>,  <35.299480, 37.832458, 38.624870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163956, 37.729328, 38.793976>,  <34.938080, 37.557446, 39.075821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163956, 37.729328, 38.793976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289091, -0.902658, -0.318800,
		-0.773015, -0.023674, -0.633946,
		0.564690, 0.429706, -0.704612,
		35.333363, 37.858238, 38.582592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796345, 37.163914, 38.363655>,  <34.938080, 37.557446, 39.075821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796345, 37.163914, 38.363655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152702, 37.341698, 38.326195>,  <35.366516, 37.448368, 38.303719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152702, 37.341698, 38.326195>,  <34.796345, 37.163914, 38.363655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152702, 37.341698, 38.326195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330018, -0.775054, -0.538869,
		-0.312092, 0.449165, -0.837167,
		0.890891, 0.444457, -0.093655,
		35.419971, 37.475037, 38.298100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985786, 37.186260, 37.633595>,  <34.796345, 37.163914, 38.363655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985786, 37.186260, 37.633595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317253, 37.201797, 37.856949>,  <35.516132, 37.211121, 37.990963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317253, 37.201797, 37.856949>,  <34.985786, 37.186260, 37.633595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317253, 37.201797, 37.856949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391905, -0.752529, -0.529256,
		0.399646, 0.657413, -0.638820,
		0.828670, 0.038841, 0.558389,
		35.565853, 37.213451, 38.024464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583908, 37.103069, 37.189579>,  <34.985786, 37.186260, 37.633595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583908, 37.103069, 37.189579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732220, 37.008141, 37.548733>,  <35.821205, 36.951183, 37.764225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732220, 37.008141, 37.548733>,  <35.583908, 37.103069, 37.189579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732220, 37.008141, 37.548733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520342, -0.747717, -0.412509,
		0.769263, 0.620158, -0.153748,
		0.370780, -0.237326, 0.897885,
		35.843452, 36.936943, 37.818100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321457, 36.986595, 36.982670>,  <35.583908, 37.103069, 37.189579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321457, 36.986595, 36.982670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248917, 36.818420, 37.338276>,  <36.205391, 36.717518, 37.551640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248917, 36.818420, 37.338276>,  <36.321457, 36.986595, 36.982670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248917, 36.818420, 37.338276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582416, -0.774332, -0.247390,
		0.792404, 0.472911, 0.385294,
		-0.181352, -0.420434, 0.889014,
		36.194511, 36.692291, 37.604980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952648, 36.632252, 37.172291>,  <36.321457, 36.986595, 36.982670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952648, 36.632252, 37.172291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651035, 36.467831, 37.377216>,  <36.470066, 36.369179, 37.500172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651035, 36.467831, 37.377216>,  <36.952648, 36.632252, 37.172291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651035, 36.467831, 37.377216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364270, -0.910739, -0.194580,
		0.546568, 0.039900, 0.836464,
		-0.754037, -0.411050, 0.512315,
		36.424824, 36.344517, 37.530910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244595, 36.020599, 37.487629>,  <36.952648, 36.632252, 37.172291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244595, 36.020599, 37.487629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859257, 35.929955, 37.545059>,  <36.628056, 35.875568, 37.579517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859257, 35.929955, 37.545059>,  <37.244595, 36.020599, 37.487629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859257, 35.929955, 37.545059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194342, -0.958449, -0.208821,
		0.184935, -0.173263, 0.967357,
		-0.963343, -0.226617, 0.143579,
		36.570255, 35.861969, 37.588131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210609, 35.276669, 37.802002>,  <37.244595, 36.020599, 37.487629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210609, 35.276669, 37.802002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864849, 35.371040, 37.624393>,  <36.657394, 35.427662, 37.517830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864849, 35.371040, 37.624393>,  <37.210609, 35.276669, 37.802002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864849, 35.371040, 37.624393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013785, -0.871629, -0.489973,
		-0.502622, -0.429651, 0.750180,
		-0.864396, 0.235930, -0.444023,
		36.605530, 35.441818, 37.491188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716488, 34.724380, 37.929001>,  <37.210609, 35.276669, 37.802002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716488, 34.724380, 37.929001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571003, 34.902706, 37.601841>,  <36.483711, 35.009701, 37.405544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571003, 34.902706, 37.601841>,  <36.716488, 34.724380, 37.929001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571003, 34.902706, 37.601841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022227, -0.873634, -0.486076,
		-0.931244, -0.194973, 0.307846,
		-0.363717, 0.445813, -0.817900,
		36.461887, 35.036449, 37.356472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289913, 34.258816, 37.683342>,  <36.716488, 34.724380, 37.929001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289913, 34.258816, 37.683342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297646, 34.511261, 37.373161>,  <36.302284, 34.662727, 37.187054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297646, 34.511261, 37.373161>,  <36.289913, 34.258816, 37.683342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297646, 34.511261, 37.373161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014836, -0.775692, -0.630938,
		-0.999703, 0.000694, -0.024361,
		0.019334, 0.631112, -0.775451,
		36.303444, 34.700596, 37.140526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864822, 33.928062, 37.177937>,  <36.289913, 34.258816, 37.683342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864822, 33.928062, 37.177937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093044, 34.184196, 36.972240>,  <36.229977, 34.337875, 36.848824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093044, 34.184196, 36.972240>,  <35.864822, 33.928062, 37.177937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093044, 34.184196, 36.972240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158730, -0.700337, -0.695941,
		-0.805777, 0.315443, -0.501217,
		0.570550, 0.640332, -0.514245,
		36.264210, 34.376297, 36.817966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654034, 33.916378, 36.499428>,  <35.864822, 33.928062, 37.177937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654034, 33.916378, 36.499428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032986, 34.038727, 36.461658>,  <36.260357, 34.112137, 36.438995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032986, 34.038727, 36.461658>,  <35.654034, 33.916378, 36.499428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032986, 34.038727, 36.461658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115464, -0.601636, -0.790381,
		-0.298563, 0.737888, -0.605294,
		0.947380, 0.305868, -0.094427,
		36.317200, 34.130486, 36.433331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807877, 34.143116, 35.822517>,  <35.654034, 33.916378, 36.499428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807877, 34.143116, 35.822517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165764, 34.039455, 35.968025>,  <36.380497, 33.977261, 36.055328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165764, 34.039455, 35.968025>,  <35.807877, 34.143116, 35.822517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165764, 34.039455, 35.968025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083513, -0.703025, -0.706245,
		0.438760, 0.662267, -0.607364,
		0.894715, -0.259149, 0.363767,
		36.434177, 33.961712, 36.077156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190216, 34.113750, 35.227982>,  <35.807877, 34.143116, 35.822517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190216, 34.113750, 35.227982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435326, 33.940891, 35.492638>,  <36.582390, 33.837177, 35.651432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435326, 33.940891, 35.492638>,  <36.190216, 34.113750, 35.227982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435326, 33.940891, 35.492638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337954, -0.613519, -0.713710,
		0.714353, 0.660943, -0.229901,
		0.612770, -0.432144, 0.661637,
		36.619156, 33.811249, 35.691128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822151, 34.102821, 34.907127>,  <36.190216, 34.113750, 35.227982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822151, 34.102821, 34.907127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847134, 33.803249, 35.171009>,  <36.862125, 33.623505, 35.329338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847134, 33.803249, 35.171009>,  <36.822151, 34.102821, 34.907127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847134, 33.803249, 35.171009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272730, -0.623025, -0.733115,
		0.960061, 0.225710, 0.165342,
		0.062460, -0.748929, 0.659700,
		36.865871, 33.578571, 35.368919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400097, 33.695179, 34.662899>,  <36.822151, 34.102821, 34.907127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400097, 33.695179, 34.662899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215698, 33.446716, 34.916401>,  <37.105061, 33.297638, 35.068501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215698, 33.446716, 34.916401>,  <37.400097, 33.695179, 34.662899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215698, 33.446716, 34.916401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221737, -0.772144, -0.595506,
		0.859253, -0.133999, 0.493688,
		-0.460995, -0.621159, 0.633754,
		37.077400, 33.260368, 35.106525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910881, 33.102421, 34.679398>,  <37.400097, 33.695179, 34.662899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910881, 33.102421, 34.679398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541290, 33.002014, 34.794815>,  <37.319534, 32.941769, 34.864063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541290, 33.002014, 34.794815>,  <37.910881, 33.102421, 34.679398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541290, 33.002014, 34.794815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076323, -0.860310, -0.504025,
		0.374755, -0.443686, 0.814065,
		-0.923977, -0.251018, 0.288542,
		37.264095, 32.926708, 34.881378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452980, 33.583553, 34.666855>,  <37.910881, 33.102421, 34.679398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452980, 33.583553, 34.666855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794884, 33.514961, 34.470901>,  <39.000027, 33.473804, 34.353329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794884, 33.514961, 34.470901>,  <38.452980, 33.583553, 34.666855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794884, 33.514961, 34.470901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035217, 0.960832, -0.274883,
		0.517835, 0.217706, 0.827315,
		0.854755, -0.171480, -0.489886,
		39.051311, 33.463516, 34.323936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655563, 34.266926, 34.804733>,  <38.452980, 33.583553, 34.666855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655563, 34.266926, 34.804733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771736, 34.094250, 34.463139>,  <38.841438, 33.990643, 34.258183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771736, 34.094250, 34.463139>,  <38.655563, 34.266926, 34.804733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771736, 34.094250, 34.463139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245490, 0.896199, -0.369543,
		0.924870, -0.102318, 0.366261,
		0.290432, -0.431693, -0.853985,
		38.858864, 33.964741, 34.206944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239716, 34.511982, 34.587723>,  <38.655563, 34.266926, 34.804733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239716, 34.511982, 34.587723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057987, 34.403526, 34.248295>,  <38.948952, 34.338451, 34.044636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057987, 34.403526, 34.248295>,  <39.239716, 34.511982, 34.587723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057987, 34.403526, 34.248295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129288, 0.922402, -0.363950,
		0.881407, -0.275060, -0.384009,
		-0.454319, -0.271140, -0.848574,
		38.921692, 34.322186, 33.993721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692654, 34.592838, 34.087875>,  <39.239716, 34.511982, 34.587723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692654, 34.592838, 34.087875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319561, 34.645676, 33.953674>,  <39.095707, 34.677380, 33.873154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319561, 34.645676, 33.953674>,  <39.692654, 34.592838, 34.087875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319561, 34.645676, 33.953674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225336, 0.939946, -0.256371,
		0.281492, -0.314726, -0.906482,
		-0.932730, 0.132096, -0.335507,
		39.039742, 34.685303, 33.853024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843071, 34.752571, 33.436363>,  <39.692654, 34.592838, 34.087875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843071, 34.752571, 33.436363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475410, 34.888187, 33.516579>,  <39.254814, 34.969559, 33.564709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475410, 34.888187, 33.516579>,  <39.843071, 34.752571, 33.436363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475410, 34.888187, 33.516579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236442, 0.882049, -0.407536,
		-0.315059, -0.327169, -0.890897,
		-0.919148, 0.339043, 0.200541,
		39.199665, 34.989899, 33.576740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482330, 34.354366, 33.656921>,  <39.843071, 34.752571, 33.436363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482330, 34.354366, 33.656921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478168, 34.733185, 33.528553>,  <40.475670, 34.960476, 33.451530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478168, 34.733185, 33.528553>,  <40.482330, 34.354366, 33.656921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478168, 34.733185, 33.528553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289617, 0.304326, 0.907473,
		0.957086, 0.102389, 0.271114,
		-0.010408, 0.947049, -0.320919,
		40.475044, 35.017300, 33.432278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998840, 34.838375, 34.142117>,  <40.482330, 34.354366, 33.656921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998840, 34.838375, 34.142117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673958, 35.015923, 33.990696>,  <40.479027, 35.122452, 33.899845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673958, 35.015923, 33.990696>,  <40.998840, 34.838375, 34.142117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673958, 35.015923, 33.990696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329976, 0.185558, 0.925572,
		0.481071, 0.876671, -0.004247,
		-0.812211, 0.443865, -0.378547,
		40.430294, 35.149082, 33.877132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344490, 35.228336, 34.676331>,  <40.998840, 34.838375, 34.142117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344490, 35.228336, 34.676331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744133, 35.214161, 34.685574>,  <41.983917, 35.205654, 34.691120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744133, 35.214161, 34.685574>,  <41.344490, 35.228336, 34.676331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744133, 35.214161, 34.685574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016624, 0.173470, 0.984699,
		-0.038908, -0.984201, 0.172725,
		0.999104, -0.035442, 0.023111,
		42.043865, 35.203529, 34.692505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597530, 34.684540, 35.064381>,  <41.344490, 35.228336, 34.676331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597530, 34.684540, 35.064381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874409, 34.973003, 35.075619>,  <42.040535, 35.146084, 35.082359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874409, 34.973003, 35.075619>,  <41.597530, 34.684540, 35.064381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874409, 34.973003, 35.075619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133104, 0.089309, 0.987070,
		0.709328, -0.686986, 0.157808,
		0.692197, 0.721162, 0.028091,
		42.082069, 35.189350, 35.084045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119858, 34.484844, 35.554718>,  <41.597530, 34.684540, 35.064381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119858, 34.484844, 35.554718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148899, 34.882225, 35.519451>,  <42.166325, 35.120655, 35.498291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148899, 34.882225, 35.519451>,  <42.119858, 34.484844, 35.554718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148899, 34.882225, 35.519451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143851, 0.077045, 0.986596,
		0.986932, -0.084313, -0.137316,
		0.072603, 0.993456, -0.088167,
		42.170681, 35.180264, 35.493000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450378, 34.604862, 36.122955>,  <42.119858, 34.484844, 35.554718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450378, 34.604862, 36.122955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324959, 34.968616, 36.013622>,  <42.249706, 35.186867, 35.948025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324959, 34.968616, 36.013622>,  <42.450378, 34.604862, 36.122955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324959, 34.968616, 36.013622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093826, 0.316106, 0.944073,
		0.944925, 0.270369, -0.184439,
		-0.313550, 0.909383, -0.273329,
		42.230892, 35.241432, 35.931625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921486, 35.114258, 36.331116>,  <42.450378, 34.604862, 36.122955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921486, 35.114258, 36.331116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584782, 35.327824, 36.299175>,  <42.382759, 35.455963, 36.280010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584782, 35.327824, 36.299175>,  <42.921486, 35.114258, 36.331116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584782, 35.327824, 36.299175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058262, 0.236886, 0.969789,
		0.536704, 0.811674, -0.230508,
		-0.841757, 0.533919, -0.079848,
		42.332256, 35.487999, 36.275223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993767, 35.787739, 36.666538>,  <42.921486, 35.114258, 36.331116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993767, 35.787739, 36.666538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598709, 35.725517, 36.674198>,  <42.361675, 35.688187, 36.678795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598709, 35.725517, 36.674198>,  <42.993767, 35.787739, 36.666538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598709, 35.725517, 36.674198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040408, 0.370820, 0.927825,
		-0.151425, 0.915585, -0.372523,
		-0.987642, -0.155549, 0.019154,
		42.302418, 35.678852, 36.679943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765728, 36.420639, 36.932735>,  <42.993767, 35.787739, 36.666538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765728, 36.420639, 36.932735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473858, 36.157181, 37.006237>,  <42.298737, 35.999107, 37.050339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473858, 36.157181, 37.006237>,  <42.765728, 36.420639, 36.932735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473858, 36.157181, 37.006237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106510, 0.374918, 0.920919,
		-0.675449, 0.652400, -0.343720,
		-0.729674, -0.658643, 0.183750,
		42.254955, 35.959587, 37.061363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044510, 36.862236, 37.124958>,  <42.765728, 36.420639, 36.932735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044510, 36.862236, 37.124958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024113, 36.494431, 37.280849>,  <42.011875, 36.273746, 37.374386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024113, 36.494431, 37.280849>,  <42.044510, 36.862236, 37.124958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024113, 36.494431, 37.280849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242147, 0.389981, 0.888414,
		-0.968898, -0.049067, -0.242546,
		-0.050997, -0.919515, 0.389733,
		42.008812, 36.218575, 37.397770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508289, 36.969975, 37.556419>,  <42.044510, 36.862236, 37.124958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508289, 36.969975, 37.556419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668118, 36.624054, 37.678047>,  <41.764015, 36.416500, 37.751026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668118, 36.624054, 37.678047>,  <41.508289, 36.969975, 37.556419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668118, 36.624054, 37.678047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243020, 0.219904, 0.944766,
		-0.883903, -0.451396, -0.122297,
		0.399570, -0.864803, 0.304072,
		41.787987, 36.364613, 37.769268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183945, 36.826729, 38.074955>,  <41.508289, 36.969975, 37.556419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183945, 36.826729, 38.074955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473255, 36.561844, 38.153278>,  <41.646843, 36.402912, 38.200272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473255, 36.561844, 38.153278>,  <41.183945, 36.826729, 38.074955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473255, 36.561844, 38.153278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133430, 0.144194, 0.980512,
		-0.677546, -0.735308, 0.015933,
		0.723276, -0.662217, 0.195810,
		41.690239, 36.363178, 38.212021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039101, 36.425838, 38.732689>,  <41.183945, 36.826729, 38.074955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039101, 36.425838, 38.732689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434441, 36.393234, 38.681271>,  <41.671642, 36.373672, 38.650421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434441, 36.393234, 38.681271>,  <41.039101, 36.425838, 38.732689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434441, 36.393234, 38.681271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142108, 0.191611, 0.971129,
		-0.054531, -0.978080, 0.200962,
		0.988348, -0.081515, -0.128544,
		41.730946, 36.368778, 38.642708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248756, 35.951973, 39.260242>,  <41.039101, 36.425838, 38.732689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248756, 35.951973, 39.260242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559479, 36.172886, 39.139214>,  <41.745914, 36.305435, 39.066597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559479, 36.172886, 39.139214>,  <41.248756, 35.951973, 39.260242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559479, 36.172886, 39.139214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142275, 0.314133, 0.938657,
		0.613456, -0.772205, 0.165444,
		0.776807, 0.552286, -0.302573,
		41.792522, 36.338573, 39.048443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849136, 35.817078, 39.758591>,  <41.248756, 35.951973, 39.260242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849136, 35.817078, 39.758591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954842, 36.154633, 39.571823>,  <42.018265, 36.357166, 39.459763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954842, 36.154633, 39.571823>,  <41.849136, 35.817078, 39.758591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954842, 36.154633, 39.571823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339420, 0.371783, 0.864044,
		0.902750, -0.386819, -0.188183,
		0.264265, 0.843889, -0.466921,
		42.034122, 36.407799, 39.431747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397079, 35.944832, 40.118958>,  <41.849136, 35.817078, 39.758591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397079, 35.944832, 40.118958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296680, 36.294941, 39.953602>,  <42.236439, 36.505005, 39.854389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296680, 36.294941, 39.953602>,  <42.397079, 35.944832, 40.118958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296680, 36.294941, 39.953602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528510, 0.481709, 0.699023,
		0.810972, -0.043028, -0.583501,
		-0.251000, 0.875274, -0.413393,
		42.221382, 36.557522, 39.829582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977741, 36.394711, 40.059471>,  <42.397079, 35.944832, 40.118958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977741, 36.394711, 40.059471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672226, 36.650780, 40.026463>,  <42.488914, 36.804420, 40.006657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672226, 36.650780, 40.026463>,  <42.977741, 36.394711, 40.059471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672226, 36.650780, 40.026463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456533, 0.626165, 0.632056,
		0.456292, 0.445086, -0.770517,
		-0.763790, 0.640169, -0.082518,
		42.443089, 36.842831, 40.001709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290226, 37.070835, 39.850056>,  <42.977741, 36.394711, 40.059471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290226, 37.070835, 39.850056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936848, 37.141281, 40.023727>,  <42.724823, 37.183548, 40.127930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936848, 37.141281, 40.023727>,  <43.290226, 37.070835, 39.850056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936848, 37.141281, 40.023727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456249, 0.534222, 0.711649,
		-0.106615, 0.826795, -0.552307,
		-0.883442, 0.176117, 0.434180,
		42.671814, 37.194115, 40.153980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400070, 37.705853, 40.124580>,  <43.290226, 37.070835, 39.850056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400070, 37.705853, 40.124580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095039, 37.526661, 40.311256>,  <42.912022, 37.419147, 40.423260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095039, 37.526661, 40.311256>,  <43.400070, 37.705853, 40.124580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095039, 37.526661, 40.311256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394191, 0.250226, 0.884308,
		-0.512927, 0.858314, -0.014227,
		-0.762574, -0.447977, 0.466687,
		42.866268, 37.392269, 40.451263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166489, 38.157642, 40.601761>,  <43.400070, 37.705853, 40.124580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166489, 38.157642, 40.601761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041473, 37.802818, 40.737671>,  <42.966465, 37.589924, 40.819218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041473, 37.802818, 40.737671>,  <43.166489, 38.157642, 40.601761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041473, 37.802818, 40.737671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367117, 0.217102, 0.904484,
		-0.876098, 0.407420, 0.257802,
		-0.312535, -0.887060, 0.339773,
		42.947712, 37.536701, 40.839603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279610, 38.361259, 41.382679>,  <43.166489, 38.157642, 40.601761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279610, 38.361259, 41.382679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161915, 37.979027, 41.375793>,  <43.091297, 37.749687, 41.371662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161915, 37.979027, 41.375793>,  <43.279610, 38.361259, 41.382679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161915, 37.979027, 41.375793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367053, -0.129618, 0.921125,
		-0.882438, 0.264708, 0.388886,
		-0.294236, -0.955578, -0.017218,
		43.073643, 37.692352, 41.370628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993160, 38.220440, 42.061794>,  <43.279610, 38.361259, 41.382679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993160, 38.220440, 42.061794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111877, 37.877296, 41.893986>,  <43.183105, 37.671410, 41.793301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111877, 37.877296, 41.893986>,  <42.993160, 38.220440, 42.061794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111877, 37.877296, 41.893986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485927, -0.242522, 0.839678,
		-0.822066, -0.453065, 0.344877,
		0.296788, -0.857855, -0.419525,
		43.200912, 37.619942, 41.768127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834824, 37.696175, 42.570961>,  <42.993160, 38.220440, 42.061794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834824, 37.696175, 42.570961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098396, 37.524338, 42.323978>,  <43.256542, 37.421234, 42.175789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098396, 37.524338, 42.323978>,  <42.834824, 37.696175, 42.570961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098396, 37.524338, 42.323978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512498, -0.344451, 0.786574,
		-0.550590, -0.834748, -0.006806,
		0.658936, -0.429592, -0.617458,
		43.296078, 37.395458, 42.138741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817734, 36.981869, 42.623634>,  <42.834824, 37.696175, 42.570961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817734, 36.981869, 42.623634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184196, 37.042656, 42.475277>,  <43.404076, 37.079128, 42.386265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184196, 37.042656, 42.475277>,  <42.817734, 36.981869, 42.623634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184196, 37.042656, 42.475277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397499, -0.463297, 0.792054,
		-0.051467, -0.873076, -0.484860,
		0.916158, 0.151968, -0.370892,
		43.459045, 37.088245, 42.364010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283691, 36.393814, 42.780376>,  <42.817734, 36.981869, 42.623634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283691, 36.393814, 42.780376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528957, 36.707996, 42.746716>,  <43.676117, 36.896507, 42.726517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528957, 36.707996, 42.746716>,  <43.283691, 36.393814, 42.780376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528957, 36.707996, 42.746716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487194, -0.292148, 0.822977,
		0.621830, -0.545620, -0.561806,
		0.613163, 0.785460, -0.084156,
		43.712906, 36.943634, 42.721470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463444, 36.049442, 42.122776>,  <43.283691, 36.393814, 42.780376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463444, 36.049442, 42.122776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691734, 35.738441, 42.017120>,  <43.828709, 35.551842, 41.953728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691734, 35.738441, 42.017120>,  <43.463444, 36.049442, 42.122776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691734, 35.738441, 42.017120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353905, 0.523166, -0.775273,
		0.740961, 0.348989, 0.573745,
		0.570726, -0.777498, -0.264136,
		43.862953, 35.505192, 41.937878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482758, 35.592705, 42.727970>,  <43.463444, 36.049442, 42.122776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482758, 35.592705, 42.727970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129559, 35.533970, 42.906300>,  <42.917641, 35.498730, 43.013298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129559, 35.533970, 42.906300>,  <43.482758, 35.592705, 42.727970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129559, 35.533970, 42.906300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314191, -0.520738, -0.793798,
		0.348718, -0.840993, 0.413674,
		-0.882995, -0.146839, 0.445823,
		42.864658, 35.489918, 43.040047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275860, 34.812187, 42.813988>,  <43.482758, 35.592705, 42.727970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275860, 34.812187, 42.813988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929214, 35.011780, 42.814522>,  <42.721230, 35.131535, 42.814842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929214, 35.011780, 42.814522>,  <43.275860, 34.812187, 42.813988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929214, 35.011780, 42.814522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328385, -0.568302, -0.754451,
		-0.375703, -0.654252, 0.656355,
		-0.866609, 0.498986, 0.001333,
		42.669231, 35.161476, 42.814922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310425, 34.774693, 42.077602>,  <43.275860, 34.812187, 42.813988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310425, 34.774693, 42.077602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099312, 34.465809, 41.936108>,  <42.972645, 34.280479, 41.851212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099312, 34.465809, 41.936108>,  <43.310425, 34.774693, 42.077602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099312, 34.465809, 41.936108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426715, 0.119033, -0.896519,
		0.734410, -0.624114, 0.266691,
		-0.527785, -0.772213, -0.353738,
		42.940975, 34.234146, 41.829987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653141, 34.053791, 41.909336>,  <43.310425, 34.774693, 42.077602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653141, 34.053791, 41.909336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360504, 34.160156, 41.658241>,  <43.184921, 34.223976, 41.507584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360504, 34.160156, 41.658241>,  <43.653141, 34.053791, 41.909336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360504, 34.160156, 41.658241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598123, -0.191478, -0.778193,
		-0.327134, -0.944788, -0.018967,
		-0.731595, 0.265918, -0.627739,
		43.141026, 34.239933, 41.469921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261242, 34.325756, 42.247395>,  <43.653141, 34.053791, 41.909336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261242, 34.325756, 42.247395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336937, 33.954659, 42.376072>,  <44.382355, 33.732002, 42.453278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336937, 33.954659, 42.376072>,  <44.261242, 34.325756, 42.247395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336937, 33.954659, 42.376072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064098, -0.338583, -0.938751,
		0.979838, 0.157024, -0.123538,
		0.189235, -0.927742, 0.321692,
		44.393707, 33.676334, 42.472580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887974, 33.922958, 41.975750>,  <44.261242, 34.325756, 42.247395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887974, 33.922958, 41.975750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590195, 33.672325, 42.068005>,  <44.411530, 33.521946, 42.123360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590195, 33.672325, 42.068005>,  <44.887974, 33.922958, 41.975750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590195, 33.672325, 42.068005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041999, -0.388693, -0.920409,
		0.666362, -0.675507, 0.315677,
		-0.744445, -0.626584, 0.230640,
		44.366859, 33.484348, 42.137196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025616, 33.209526, 42.168514>,  <44.887974, 33.922958, 41.975750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025616, 33.209526, 42.168514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672756, 33.202835, 41.980247>,  <44.461040, 33.198822, 41.867287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672756, 33.202835, 41.980247>,  <45.025616, 33.209526, 42.168514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672756, 33.202835, 41.980247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438140, -0.395710, -0.807123,
		-0.172746, -0.918223, 0.356405,
		-0.882152, -0.016728, -0.470668,
		44.408112, 33.197819, 41.839046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892746, 32.551884, 41.938931>,  <45.025616, 33.209526, 42.168514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892746, 32.551884, 41.938931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700981, 32.805107, 41.695820>,  <44.585922, 32.957043, 41.549953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700981, 32.805107, 41.695820>,  <44.892746, 32.551884, 41.938931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700981, 32.805107, 41.695820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247737, -0.566765, -0.785751,
		-0.841895, -0.527271, 0.114884,
		-0.479415, 0.633058, -0.607781,
		44.557156, 32.995026, 41.513485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.847736, 32.344357, 41.240959>,  <44.892746, 32.551884, 41.938931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.847736, 32.344357, 41.240959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599869, 32.646610, 41.156075>,  <44.451149, 32.827961, 41.105145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599869, 32.646610, 41.156075>,  <44.847736, 32.344357, 41.240959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599869, 32.646610, 41.156075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127059, -0.363389, -0.922932,
		-0.774509, -0.544951, 0.321192,
		-0.619670, 0.755630, -0.212207,
		44.413967, 32.873299, 41.092411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195431, 32.093761, 40.919384>,  <44.847736, 32.344357, 41.240959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195431, 32.093761, 40.919384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211212, 32.473347, 40.794220>,  <44.220680, 32.701099, 40.719120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211212, 32.473347, 40.794220>,  <44.195431, 32.093761, 40.919384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211212, 32.473347, 40.794220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401641, -0.271685, -0.874569,
		-0.914947, 0.160183, 0.370424,
		0.039452, 0.948962, -0.312914,
		44.223049, 32.758034, 40.700344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549896, 32.209003, 40.620365>,  <44.195431, 32.093761, 40.919384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549896, 32.209003, 40.620365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810120, 32.473351, 40.470680>,  <43.966255, 32.631958, 40.380871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810120, 32.473351, 40.470680>,  <43.549896, 32.209003, 40.620365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810120, 32.473351, 40.470680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460659, -0.048363, -0.886259,
		-0.603794, 0.748946, 0.272970,
		0.650559, 0.660863, -0.374210,
		44.005287, 32.671608, 40.358418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050556, 32.725761, 40.139153>,  <43.549896, 32.209003, 40.620365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050556, 32.725761, 40.139153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428154, 32.791119, 40.024487>,  <43.654713, 32.830334, 39.955688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428154, 32.791119, 40.024487>,  <43.050556, 32.725761, 40.139153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428154, 32.791119, 40.024487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254367, -0.193016, -0.947651,
		-0.210174, 0.967495, -0.140643,
		0.943994, 0.163396, -0.286666,
		43.711353, 32.840137, 39.938488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999702, 33.182087, 39.560238>,  <43.050556, 32.725761, 40.139153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999702, 33.182087, 39.560238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354523, 32.997421, 39.561749>,  <43.567413, 32.886623, 39.562656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354523, 32.997421, 39.561749>,  <42.999702, 33.182087, 39.560238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354523, 32.997421, 39.561749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007422, 0.006075, -0.999954,
		0.461620, 0.887034, 0.008815,
		0.887047, -0.461664, 0.003779,
		43.620636, 32.858921, 39.562881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518955, 33.665524, 39.171139>,  <42.999702, 33.182087, 39.560238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518955, 33.665524, 39.171139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643284, 33.285351, 39.174618>,  <43.717880, 33.057247, 39.176704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643284, 33.285351, 39.174618>,  <43.518955, 33.665524, 39.171139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643284, 33.285351, 39.174618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278651, 0.082375, -0.956853,
		0.908705, 0.299830, 0.290442,
		0.310818, -0.950430, 0.008694,
		43.736530, 33.000221, 39.177227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146473, 33.647644, 38.919083>,  <43.518955, 33.665524, 39.171139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146473, 33.647644, 38.919083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038231, 33.267460, 38.857903>,  <43.973286, 33.039349, 38.821194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038231, 33.267460, 38.857903>,  <44.146473, 33.647644, 38.919083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038231, 33.267460, 38.857903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150054, 0.115297, -0.981932,
		0.950923, -0.288669, 0.111421,
		-0.270607, -0.950461, -0.152954,
		43.957050, 32.982323, 38.812016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683430, 33.378796, 38.538124>,  <44.146473, 33.647644, 38.919083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683430, 33.378796, 38.538124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373249, 33.135368, 38.470802>,  <44.187141, 32.989311, 38.430408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373249, 33.135368, 38.470802>,  <44.683430, 33.378796, 38.538124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373249, 33.135368, 38.470802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140321, 0.093792, -0.985654,
		0.615622, -0.787940, 0.012663,
		-0.775448, -0.608567, -0.168305,
		44.140614, 32.952797, 38.420311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857765, 32.902584, 38.055485>,  <44.683430, 33.378796, 38.538124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857765, 32.902584, 38.055485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460812, 32.863743, 38.025143>,  <44.222641, 32.840439, 38.006939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460812, 32.863743, 38.025143>,  <44.857765, 32.902584, 38.055485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460812, 32.863743, 38.025143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063528, 0.124260, -0.990214,
		0.105572, -0.987488, -0.117145,
		-0.992380, -0.097097, -0.075851,
		44.163097, 32.834610, 38.002388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782589, 32.500134, 37.468544>,  <44.857765, 32.902584, 38.055485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782589, 32.500134, 37.468544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.421013, 32.665340, 37.512924>,  <44.204067, 32.764465, 37.539555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.421013, 32.665340, 37.512924>,  <44.782589, 32.500134, 37.468544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421013, 32.665340, 37.512924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102283, 0.043125, -0.993820,
		-0.415255, -0.909699, 0.003263,
		-0.903937, 0.413023, 0.110954,
		44.149830, 32.789246, 37.546211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411427, 32.352886, 36.861977>,  <44.782589, 32.500134, 37.468544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.411427, 32.352886, 36.861977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200081, 32.656368, 37.014393>,  <44.073273, 32.838459, 37.105843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200081, 32.656368, 37.014393>,  <44.411427, 32.352886, 36.861977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200081, 32.656368, 37.014393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205220, 0.321369, -0.924449,
		-0.823845, -0.566640, -0.014096,
		-0.528360, 0.758710, 0.381044,
		44.041573, 32.883980, 37.128708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993580, 32.517529, 36.324963>,  <44.411427, 32.352886, 36.861977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993580, 32.517529, 36.324963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956566, 32.849854, 36.544487>,  <43.934357, 33.049248, 36.676201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956566, 32.849854, 36.544487>,  <43.993580, 32.517529, 36.324963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956566, 32.849854, 36.544487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049057, 0.546698, -0.835891,
		-0.994500, -0.104275, -0.009833,
		-0.092538, 0.830811, 0.548807,
		43.928802, 33.099098, 36.709129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442867, 33.086987, 35.936749>,  <43.993580, 32.517529, 36.324963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442867, 33.086987, 35.936749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691105, 33.294189, 36.172215>,  <43.840046, 33.418510, 36.313496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691105, 33.294189, 36.172215>,  <43.442867, 33.086987, 35.936749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691105, 33.294189, 36.172215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018177, 0.760025, -0.649639,
		-0.783920, 0.392463, 0.481084,
		0.620595, 0.518010, 0.588666,
		43.877285, 33.449593, 36.348816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196056, 33.757748, 35.917759>,  <43.442867, 33.086987, 35.936749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196056, 33.757748, 35.917759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572052, 33.821205, 36.038589>,  <43.797649, 33.859280, 36.111088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572052, 33.821205, 36.038589>,  <43.196056, 33.757748, 35.917759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572052, 33.821205, 36.038589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033322, 0.838421, -0.544004,
		-0.339574, 0.521423, 0.782820,
		0.939989, 0.158644, 0.302081,
		43.854050, 33.868797, 36.129215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220325, 34.527294, 36.026569>,  <43.196056, 33.757748, 35.917759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220325, 34.527294, 36.026569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593815, 34.384693, 36.039619>,  <43.817909, 34.299133, 36.047451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593815, 34.384693, 36.039619>,  <43.220325, 34.527294, 36.026569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593815, 34.384693, 36.039619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329578, 0.820437, -0.467185,
		0.139786, 0.446974, 0.883557,
		0.933723, -0.356507, 0.032627,
		43.873932, 34.277740, 36.049408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622177, 35.092678, 36.307983>,  <43.220325, 34.527294, 36.026569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622177, 35.092678, 36.307983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885521, 34.845314, 36.136337>,  <44.043526, 34.696896, 36.033352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885521, 34.845314, 36.136337>,  <43.622177, 35.092678, 36.307983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885521, 34.845314, 36.136337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333673, 0.750792, -0.570065,
		0.674707, 0.232123, 0.700635,
		0.658356, -0.618410, -0.429111,
		44.083027, 34.659790, 36.007603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263222, 35.492092, 36.206673>,  <43.622177, 35.092678, 36.307983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263222, 35.492092, 36.206673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289066, 35.197632, 35.937183>,  <44.304573, 35.020954, 35.775490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289066, 35.197632, 35.937183>,  <44.263222, 35.492092, 36.206673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289066, 35.197632, 35.937183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373205, 0.643972, -0.667845,
		0.925496, -0.208288, 0.316344,
		0.064613, -0.736149, -0.673728,
		44.308449, 34.976788, 35.735065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857895, 35.670696, 35.732975>,  <44.263222, 35.492092, 36.206673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857895, 35.670696, 35.732975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679817, 35.369892, 35.538540>,  <44.572971, 35.189407, 35.421879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679817, 35.369892, 35.538540>,  <44.857895, 35.670696, 35.732975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679817, 35.369892, 35.538540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294429, 0.389726, -0.872597,
		0.845646, -0.531589, 0.047914,
		-0.445190, -0.752015, -0.486085,
		44.546261, 35.144287, 35.392715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400604, 35.372150, 35.335548>,  <44.857895, 35.670696, 35.732975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400604, 35.372150, 35.335548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.043610, 35.310848, 35.165848>,  <44.829414, 35.274067, 35.064030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.043610, 35.310848, 35.165848>,  <45.400604, 35.372150, 35.335548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043610, 35.310848, 35.165848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408812, 0.122700, -0.904333,
		0.190650, -0.980539, -0.046855,
		-0.892483, -0.153256, -0.424249,
		44.775864, 35.264874, 35.038574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.541832, 34.919910, 34.741779>,  <45.400604, 35.372150, 35.335548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.541832, 34.919910, 34.741779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205063, 35.127438, 34.682457>,  <45.003002, 35.251953, 34.646862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205063, 35.127438, 34.682457>,  <45.541832, 34.919910, 34.741779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205063, 35.127438, 34.682457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251384, 0.133922, -0.958577,
		-0.477466, -0.844330, -0.243175,
		-0.841922, 0.518818, -0.148308,
		44.952488, 35.283081, 34.637966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.078594, 34.356682, 34.717754>,  <45.541832, 34.919910, 34.741779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.078594, 34.356682, 34.717754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.222004, 34.285778, 34.351139>,  <46.308052, 34.243237, 34.131172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.222004, 34.285778, 34.351139>,  <46.078594, 34.356682, 34.717754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.222004, 34.285778, 34.351139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859866, 0.444947, 0.250303,
		0.363441, -0.877838, 0.311947,
		0.358526, -0.177262, -0.916536,
		46.329563, 34.232601, 34.076180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.721684, 33.965965, 34.748383>,  <46.078594, 34.356682, 34.717754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.721684, 33.965965, 34.748383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.675022, 34.211475, 34.436058>,  <46.647026, 34.358780, 34.248661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.675022, 34.211475, 34.436058>,  <46.721684, 33.965965, 34.748383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.675022, 34.211475, 34.436058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818266, 0.504963, 0.274689,
		0.562880, -0.606871, -0.561137,
		-0.116652, 0.613776, -0.780815,
		46.640026, 34.395607, 34.201813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.445549, 34.101093, 34.661968>,  <46.721684, 33.965965, 34.748383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.445549, 34.101093, 34.661968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180817, 34.343731, 34.485775>,  <47.021976, 34.489315, 34.380058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180817, 34.343731, 34.485775>,  <47.445549, 34.101093, 34.661968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.180817, 34.343731, 34.485775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462377, 0.792811, 0.397061,
		0.590072, 0.059120, -0.805183,
		-0.661832, 0.606593, -0.440480,
		46.982265, 34.525707, 34.353630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.773560, 34.741936, 34.401691>,  <47.445549, 34.101093, 34.661968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.773560, 34.741936, 34.401691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390938, 34.820843, 34.487564>,  <47.161366, 34.868187, 34.539085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390938, 34.820843, 34.487564>,  <47.773560, 34.741936, 34.401691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.390938, 34.820843, 34.487564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281298, 0.817985, 0.501769,
		-0.076623, 0.540359, -0.837938,
		-0.956556, 0.197264, 0.214678,
		47.103970, 34.880020, 34.551968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.597618, 35.012020, 35.106438>,  <47.773560, 34.741936, 34.401691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.597618, 35.012020, 35.106438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.875660, 35.286694, 35.021309>,  <48.042484, 35.451500, 34.970234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.875660, 35.286694, 35.021309>,  <47.597618, 35.012020, 35.106438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.875660, 35.286694, 35.021309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149191, -0.151801, -0.977087,
		-0.703257, 0.710929, -0.003070,
		0.695105, 0.686685, -0.212819,
		48.084190, 35.492699, 34.957462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.539373, 40.153969, 36.651413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.263142, 40.255238, 36.922413>,  <29.097403, 40.315998, 37.085011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.263142, 40.255238, 36.922413>,  <29.539373, 40.153969, 36.651413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263142, 40.255238, 36.922413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100451, -0.961228, 0.256806,
		0.716246, 0.109290, 0.689236,
		-0.690580, 0.253172, 0.677498,
		29.055967, 40.331188, 37.125664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667397, 39.777340, 37.377148>,  <29.539373, 40.153969, 36.651413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667397, 39.777340, 37.377148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.276724, 39.850590, 37.332321>,  <29.042320, 39.894539, 37.305428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.276724, 39.850590, 37.332321>,  <29.667397, 39.777340, 37.377148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276724, 39.850590, 37.332321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210837, -0.916595, 0.339707,
		-0.040509, 0.355413, 0.933831,
		-0.976681, 0.183125, -0.112065,
		28.983719, 39.905529, 37.298702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392326, 39.386017, 37.976398>,  <29.667397, 39.777340, 37.377148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392326, 39.386017, 37.976398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.072676, 39.483727, 37.756680>,  <28.880886, 39.542355, 37.624847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.072676, 39.483727, 37.756680>,  <29.392326, 39.386017, 37.976398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072676, 39.483727, 37.756680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386455, -0.908651, 0.158135,
		-0.460490, 0.338648, 0.820528,
		-0.799125, 0.244277, -0.549297,
		28.832937, 39.557011, 37.591892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878138, 39.206249, 38.446011>,  <29.392326, 39.386017, 37.976398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878138, 39.206249, 38.446011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.742064, 39.222866, 38.070236>,  <28.660419, 39.232838, 37.844772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.742064, 39.222866, 38.070236>,  <28.878138, 39.206249, 38.446011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742064, 39.222866, 38.070236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303277, -0.950488, 0.067792,
		-0.890110, 0.307973, 0.335940,
		-0.340185, 0.041541, -0.939441,
		28.640009, 39.235329, 37.788403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185280, 38.865871, 38.424751>,  <28.878138, 39.206249, 38.446011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185280, 38.865871, 38.424751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.324747, 38.868977, 38.049866>,  <28.408426, 38.870838, 37.824936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.324747, 38.868977, 38.049866>,  <28.185280, 38.865871, 38.424751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324747, 38.868977, 38.049866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275534, -0.954930, -0.110410,
		-0.895830, 0.296731, -0.330815,
		0.348667, 0.007758, -0.937214,
		28.429348, 38.871304, 37.768700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669792, 38.437649, 37.993507>,  <28.185280, 38.865871, 38.424751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669792, 38.437649, 37.993507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.019859, 38.459606, 37.801228>,  <28.229900, 38.472778, 37.685860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.019859, 38.459606, 37.801228>,  <27.669792, 38.437649, 37.993507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019859, 38.459606, 37.801228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005744, -0.994652, -0.103123,
		-0.483786, 0.087489, -0.870803,
		0.875168, 0.054891, -0.480696,
		28.282410, 38.476074, 37.657021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574297, 37.847458, 37.474762>,  <27.669792, 38.437649, 37.993507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574297, 37.847458, 37.474762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.967369, 37.919792, 37.458569>,  <28.203213, 37.963192, 37.448853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.967369, 37.919792, 37.458569>,  <27.574297, 37.847458, 37.474762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967369, 37.919792, 37.458569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166150, -0.956543, -0.239626,
		-0.082059, 0.228749, -0.970021,
		0.982680, 0.180832, -0.040486,
		28.262173, 37.974041, 37.446423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781305, 37.505894, 36.866688>,  <27.574297, 37.847458, 37.474762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781305, 37.505894, 36.866688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.108114, 37.564957, 37.089642>,  <28.304199, 37.600395, 37.223412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.108114, 37.564957, 37.089642>,  <27.781305, 37.505894, 36.866688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108114, 37.564957, 37.089642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349503, -0.895659, -0.275032,
		0.458613, 0.419513, -0.783379,
		0.817020, 0.147660, 0.557382,
		28.353220, 37.609253, 37.256855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343832, 37.275894, 36.460728>,  <27.781305, 37.505894, 36.866688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343832, 37.275894, 36.460728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.496153, 37.269699, 36.830540>,  <28.587545, 37.265984, 37.052425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.496153, 37.269699, 36.830540>,  <28.343832, 37.275894, 36.460728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496153, 37.269699, 36.830540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449012, -0.870962, -0.199535,
		0.808318, 0.491107, -0.324710,
		0.380802, -0.015489, 0.924527,
		28.610394, 37.265053, 37.107899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864731, 36.965328, 36.359333>,  <28.343832, 37.275894, 36.460728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864731, 36.965328, 36.359333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.875662, 36.954659, 36.759041>,  <28.882221, 36.948257, 36.998867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.875662, 36.954659, 36.759041>,  <28.864731, 36.965328, 36.359333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875662, 36.954659, 36.759041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446694, -0.893959, -0.036077,
		0.894269, 0.447354, -0.012514,
		0.027327, -0.026673, 0.999271,
		28.883860, 36.946655, 37.058823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535616, 36.827206, 36.492222>,  <28.864731, 36.965328, 36.359333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535616, 36.827206, 36.492222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.319763, 36.704876, 36.805977>,  <29.190252, 36.631477, 36.994232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.319763, 36.704876, 36.805977>,  <29.535616, 36.827206, 36.492222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319763, 36.704876, 36.805977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554218, -0.830381, 0.057529,
		0.633751, 0.465769, 0.617592,
		-0.539632, -0.305821, 0.784392,
		29.157873, 36.613129, 37.041294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953920, 36.704525, 37.064205>,  <29.535616, 36.827206, 36.492222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953920, 36.704525, 37.064205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.642035, 36.454765, 37.082817>,  <29.454903, 36.304909, 37.093987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.642035, 36.454765, 37.082817>,  <29.953920, 36.704525, 37.064205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642035, 36.454765, 37.082817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625863, -0.779406, 0.028674,
		0.018364, 0.051481, 0.998505,
		-0.779717, -0.624401, 0.046533,
		29.408119, 36.267445, 37.096775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093157, 36.257465, 37.532566>,  <29.953920, 36.704525, 37.064205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093157, 36.257465, 37.532566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.791651, 36.066422, 37.352020>,  <29.610746, 35.951797, 37.243694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.791651, 36.066422, 37.352020>,  <30.093157, 36.257465, 37.532566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791651, 36.066422, 37.352020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511357, -0.857695, 0.053608,
		-0.412737, -0.190401, 0.890728,
		-0.753766, -0.477605, -0.451365,
		29.565521, 35.923141, 37.216610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992914, 35.748363, 37.993343>,  <30.093157, 36.257465, 37.532566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992914, 35.748363, 37.993343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.826773, 35.614876, 37.654850>,  <29.727087, 35.534782, 37.451752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.826773, 35.614876, 37.654850>,  <29.992914, 35.748363, 37.993343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826773, 35.614876, 37.654850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525195, -0.847541, 0.076449,
		-0.742731, -0.412685, 0.527296,
		-0.415355, -0.333714, -0.846236,
		29.702166, 35.514763, 37.400978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641058, 35.046703, 38.073799>,  <29.992914, 35.748363, 37.993343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641058, 35.046703, 38.073799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.722874, 35.078148, 37.683521>,  <29.771963, 35.097015, 37.449352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.722874, 35.078148, 37.683521>,  <29.641058, 35.046703, 38.073799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722874, 35.078148, 37.683521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295500, -0.955225, -0.015018,
		-0.933190, -0.285246, -0.218611,
		0.204539, 0.078614, -0.975697,
		29.784235, 35.101730, 37.390812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555710, 34.302433, 37.805431>,  <29.641058, 35.046703, 38.073799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555710, 34.302433, 37.805431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.736971, 34.517597, 37.521091>,  <29.845728, 34.646694, 37.350487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.736971, 34.517597, 37.521091>,  <29.555710, 34.302433, 37.805431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736971, 34.517597, 37.521091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339721, -0.841455, -0.420170,
		-0.824161, -0.051088, -0.564047,
		0.453155, 0.537906, -0.710850,
		29.872917, 34.678970, 37.307835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490347, 33.889938, 37.234886>,  <29.555710, 34.302433, 37.805431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490347, 33.889938, 37.234886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.777803, 34.145920, 37.126064>,  <29.950277, 34.299507, 37.060772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.777803, 34.145920, 37.126064>,  <29.490347, 33.889938, 37.234886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777803, 34.145920, 37.126064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498979, -0.747060, -0.439229,
		-0.484327, 0.179899, -0.856192,
		0.718643, 0.639952, -0.272055,
		29.993397, 34.337906, 37.044449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681240, 33.721661, 36.449352>,  <29.490347, 33.889938, 37.234886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681240, 33.721661, 36.449352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.985609, 33.954090, 36.564835>,  <30.168230, 34.093548, 36.634125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.985609, 33.954090, 36.564835>,  <29.681240, 33.721661, 36.449352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985609, 33.954090, 36.564835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616995, -0.510305, -0.599088,
		-0.200782, 0.633992, -0.746820,
		0.760923, 0.581070, 0.288710,
		30.213886, 34.128410, 36.651447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009720, 34.026428, 35.779533>,  <29.681240, 33.721661, 36.449352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009720, 34.026428, 35.779533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.246393, 33.998039, 36.100750>,  <30.388397, 33.981007, 36.293480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.246393, 33.998039, 36.100750>,  <30.009720, 34.026428, 35.779533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246393, 33.998039, 36.100750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638341, -0.567138, -0.520456,
		0.492373, 0.820559, -0.290262,
		0.591684, -0.070972, 0.803040,
		30.423899, 33.976749, 36.341663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685015, 34.000000, 35.538483>,  <30.009720, 34.026428, 35.779533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685015, 34.000000, 35.538483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.705664, 33.825928, 35.898026>,  <30.718054, 33.721485, 36.113750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.705664, 33.825928, 35.898026>,  <30.685015, 34.000000, 35.538483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705664, 33.825928, 35.898026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481341, -0.777773, -0.404202,
		0.875012, 0.453524, 0.169321,
		0.051622, -0.435183, 0.898861,
		30.721149, 33.695374, 36.167683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337730, 33.824219, 35.610046>,  <30.685015, 34.000000, 35.538483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337730, 33.824219, 35.610046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.123371, 33.588360, 35.851749>,  <30.994755, 33.446842, 35.996769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.123371, 33.588360, 35.851749>,  <31.337730, 33.824219, 35.610046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123371, 33.588360, 35.851749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397061, -0.807634, -0.435969,
		0.745086, 0.006290, 0.666939,
		-0.535900, -0.589650, 0.604255,
		30.962601, 33.411465, 36.033028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798090, 33.348885, 35.849110>,  <31.337730, 33.824219, 35.610046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798090, 33.348885, 35.849110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.445938, 33.162441, 35.884144>,  <31.234648, 33.050575, 35.905163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.445938, 33.162441, 35.884144>,  <31.798090, 33.348885, 35.849110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445938, 33.162441, 35.884144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394467, -0.822173, -0.410399,
		0.263304, -0.326756, 0.907690,
		-0.880379, -0.466113, 0.087587,
		31.181824, 33.022606, 35.910419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456291, 33.093983, 36.180046>,  <31.798090, 33.348885, 35.849110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456291, 33.093983, 36.180046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.273960, 32.751179, 36.276180>,  <32.164562, 32.545498, 36.333862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.273960, 32.751179, 36.276180>,  <32.456291, 33.093983, 36.180046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273960, 32.751179, 36.276180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840561, -0.325679, 0.432886,
		-0.292715, 0.399337, 0.868820,
		-0.455824, -0.857008, 0.240336,
		32.137215, 32.494076, 36.348282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222939, 32.663761, 36.414989>,  <32.456291, 33.093983, 36.180046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222939, 32.663761, 36.414989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.409744, 32.821434, 36.098377>,  <33.521828, 32.916039, 35.908409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.409744, 32.821434, 36.098377>,  <33.222939, 32.663761, 36.414989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409744, 32.821434, 36.098377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064890, 0.908005, 0.413904,
		0.881864, -0.141938, 0.449633,
		0.467018, 0.394184, -0.791526,
		33.549850, 32.939690, 35.860920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733948, 33.101261, 36.707836>,  <33.222939, 32.663761, 36.414989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733948, 33.101261, 36.707836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.681503, 33.231739, 36.333370>,  <33.650036, 33.310024, 36.108692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.681503, 33.231739, 36.333370>,  <33.733948, 33.101261, 36.707836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681503, 33.231739, 36.333370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036567, 0.942084, 0.333378,
		0.990693, 0.077942, -0.111590,
		-0.131112, 0.326195, -0.936166,
		33.642170, 33.329597, 36.052521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204723, 33.606407, 36.614185>,  <33.733948, 33.101261, 36.707836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204723, 33.606407, 36.614185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.893753, 33.660248, 36.368423>,  <33.707172, 33.692551, 36.220966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.893753, 33.660248, 36.368423>,  <34.204723, 33.606407, 36.614185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893753, 33.660248, 36.368423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133974, 0.918980, 0.370846,
		0.614546, 0.370619, -0.696401,
		-0.777421, 0.134603, -0.614409,
		33.660526, 33.700630, 36.184101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190819, 34.285725, 36.542820>,  <34.204723, 33.606407, 36.614185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190819, 34.285725, 36.542820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.858818, 34.233170, 36.325993>,  <33.659618, 34.201637, 36.195896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.858818, 34.233170, 36.325993>,  <34.190819, 34.285725, 36.542820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858818, 34.233170, 36.325993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307003, 0.919009, 0.247327,
		0.465669, 0.371698, -0.803115,
		-0.830001, -0.131386, -0.542066,
		33.609818, 34.193752, 36.163372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188896, 34.894741, 36.222908>,  <34.190819, 34.285725, 36.542820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188896, 34.894741, 36.222908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.818821, 34.742958, 36.225643>,  <33.596775, 34.651890, 36.227283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.818821, 34.742958, 36.225643>,  <34.188896, 34.894741, 36.222908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818821, 34.742958, 36.225643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374472, 0.915672, 0.145997,
		-0.061662, 0.132513, -0.989262,
		-0.925185, -0.379453, 0.006840,
		33.541264, 34.629124, 36.227695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833763, 35.324924, 35.818745>,  <34.188896, 34.894741, 36.222908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833763, 35.324924, 35.818745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.543102, 35.170891, 36.046318>,  <33.368706, 35.078468, 36.182861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.543102, 35.170891, 36.046318>,  <33.833763, 35.324924, 35.818745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543102, 35.170891, 36.046318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349012, 0.920232, 0.177099,
		-0.591747, -0.069874, -0.803090,
		-0.726655, -0.385086, 0.568931,
		33.325108, 35.055367, 36.216999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325169, 35.579227, 35.606800>,  <33.833763, 35.324924, 35.818745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325169, 35.579227, 35.606800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.221493, 35.452961, 35.971912>,  <33.159286, 35.377201, 36.190979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.221493, 35.452961, 35.971912>,  <33.325169, 35.579227, 35.606800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221493, 35.452961, 35.971912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391715, 0.898220, 0.199401,
		-0.882825, -0.305869, -0.356459,
		-0.259188, -0.315666, 0.912785,
		33.143738, 35.358261, 36.245747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749599, 35.804829, 35.721012>,  <33.325169, 35.579227, 35.606800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749599, 35.804829, 35.721012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.823872, 35.720924, 36.104996>,  <32.868435, 35.670582, 36.335384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.823872, 35.720924, 36.104996>,  <32.749599, 35.804829, 35.721012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823872, 35.720924, 36.104996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345777, 0.900514, 0.263654,
		-0.919761, -0.380889, 0.094680,
		0.185684, -0.209760, 0.959960,
		32.879578, 35.657997, 36.392982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112778, 36.003609, 36.045200>,  <32.749599, 35.804829, 35.721012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112778, 36.003609, 36.045200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.390678, 35.978710, 36.331821>,  <32.557419, 35.963772, 36.503796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.390678, 35.978710, 36.331821>,  <32.112778, 36.003609, 36.045200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390678, 35.978710, 36.331821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320151, 0.865351, 0.385580,
		-0.644071, -0.497286, 0.581274,
		0.694749, -0.062245, 0.716554,
		32.599102, 35.960037, 36.546787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787649, 36.088654, 36.644909>,  <32.112778, 36.003609, 36.045200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787649, 36.088654, 36.644909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.162174, 36.208469, 36.718220>,  <32.386890, 36.280361, 36.762207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.162174, 36.208469, 36.718220>,  <31.787649, 36.088654, 36.644909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162174, 36.208469, 36.718220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347405, 0.866297, 0.358943,
		-0.051255, -0.399755, 0.915188,
		0.936314, 0.299543, 0.183279,
		32.443069, 36.298332, 36.773205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869631, 36.298447, 37.357639>,  <31.787649, 36.088654, 36.644909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869631, 36.298447, 37.357639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.166969, 36.479862, 37.160973>,  <32.345371, 36.588711, 37.042973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.166969, 36.479862, 37.160973>,  <31.869631, 36.298447, 37.357639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166969, 36.479862, 37.160973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248396, 0.869639, 0.426648,
		0.621077, -0.195018, 0.759099,
		0.743346, 0.453538, -0.491671,
		32.389973, 36.615925, 37.013470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216080, 36.864197, 37.889408>,  <31.869631, 36.298447, 37.357639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216080, 36.864197, 37.889408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.332279, 36.984524, 37.526066>,  <32.402000, 37.056721, 37.308060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.332279, 36.984524, 37.526066>,  <32.216080, 36.864197, 37.889408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332279, 36.984524, 37.526066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198481, 0.947597, 0.250332,
		0.936062, 0.107569, 0.334988,
		0.290505, 0.300815, -0.908360,
		32.419430, 37.074768, 37.253559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692497, 37.483593, 37.920082>,  <32.216080, 36.864197, 37.889408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692497, 37.483593, 37.920082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.556274, 37.508533, 37.544819>,  <32.474541, 37.523499, 37.319660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.556274, 37.508533, 37.544819>,  <32.692497, 37.483593, 37.920082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556274, 37.508533, 37.544819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116200, 0.987359, 0.107798,
		0.933017, 0.145725, -0.329004,
		-0.340554, 0.062347, -0.938156,
		32.454109, 37.527237, 37.263371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885735, 38.189178, 37.640461>,  <32.692497, 37.483593, 37.920082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885735, 38.189178, 37.640461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.614330, 38.090439, 37.363712>,  <32.451488, 38.031197, 37.197662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.614330, 38.090439, 37.363712>,  <32.885735, 38.189178, 37.640461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614330, 38.090439, 37.363712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232164, 0.965634, -0.116842,
		0.696937, 0.081348, -0.712504,
		-0.678513, -0.246849, -0.691871,
		32.410778, 38.016384, 37.156151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990673, 38.644039, 37.144489>,  <32.885735, 38.189178, 37.640461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990673, 38.644039, 37.144489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.633324, 38.510799, 37.023872>,  <32.418915, 38.430855, 36.951504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.633324, 38.510799, 37.023872>,  <32.990673, 38.644039, 37.144489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633324, 38.510799, 37.023872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343506, 0.938948, -0.019501,
		0.289625, 0.086159, -0.953254,
		-0.893376, -0.333097, -0.301539,
		32.365311, 38.410870, 36.933411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746422, 39.094879, 36.552670>,  <32.990673, 38.644039, 37.144489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746422, 39.094879, 36.552670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.412109, 38.916092, 36.680222>,  <32.211521, 38.808819, 36.756752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.412109, 38.916092, 36.680222>,  <32.746422, 39.094879, 36.552670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412109, 38.916092, 36.680222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472668, 0.881233, -0.003652,
		-0.279373, -0.153775, -0.947789,
		-0.835784, -0.446970, 0.318877,
		32.161373, 38.782001, 36.775887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289852, 39.321201, 36.122169>,  <32.746422, 39.094879, 36.552670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289852, 39.321201, 36.122169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.117222, 39.213562, 36.466572>,  <32.013641, 39.148979, 36.673214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.117222, 39.213562, 36.466572>,  <32.289852, 39.321201, 36.122169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117222, 39.213562, 36.466572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522186, 0.852818, 0.004795,
		-0.735569, -0.447534, -0.508578,
		-0.431579, -0.269099, 0.861003,
		31.987749, 39.132832, 36.724873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.597067, 39.378399, 35.954033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653893, 39.389904, 36.349808>,  <31.687988, 39.396809, 36.587273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653893, 39.389904, 36.349808>,  <31.597067, 39.378399, 35.954033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653893, 39.389904, 36.349808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301581, 0.953313, 0.015590,
		-0.942797, -0.300611, 0.144106,
		0.142065, 0.028761, 0.989439,
		31.696512, 39.398533, 36.646641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946590, 39.668163, 36.284832>,  <31.597067, 39.378399, 35.954033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946590, 39.668163, 36.284832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240416, 39.730419, 36.549011>,  <31.416712, 39.767773, 36.707520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240416, 39.730419, 36.549011>,  <30.946590, 39.668163, 36.284832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240416, 39.730419, 36.549011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334076, 0.930149, 0.152365,
		-0.590600, -0.332562, 0.735251,
		0.734564, 0.155643, 0.660448,
		31.460785, 39.777111, 36.747147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663404, 40.194790, 36.873676>,  <30.946590, 39.668163, 36.284832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663404, 40.194790, 36.873676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.062708, 40.198429, 36.896980>,  <31.302290, 40.200611, 36.910965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.062708, 40.198429, 36.896980>,  <30.663404, 40.194790, 36.873676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062708, 40.198429, 36.896980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027623, 0.945039, 0.325788,
		-0.052097, -0.326831, 0.943646,
		0.998260, 0.009094, 0.058262,
		31.362186, 40.201157, 36.914459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804697, 40.372887, 37.606995>,  <30.663404, 40.194790, 36.873676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804697, 40.372887, 37.606995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.124876, 40.460705, 37.383892>,  <31.316982, 40.513393, 37.250031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.124876, 40.460705, 37.383892>,  <30.804697, 40.372887, 37.606995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124876, 40.460705, 37.383892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131939, 0.843154, 0.521233,
		0.584704, -0.490808, 0.645932,
		0.800446, 0.219543, -0.557752,
		31.365009, 40.526569, 37.216568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181545, 40.791977, 37.982803>,  <30.804697, 40.372887, 37.606995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181545, 40.791977, 37.982803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.345993, 40.868969, 37.626392>,  <31.444662, 40.915165, 37.412544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.345993, 40.868969, 37.626392>,  <31.181545, 40.791977, 37.982803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345993, 40.868969, 37.626392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196898, 0.935631, 0.292961,
		0.890063, -0.295884, 0.346756,
		0.411118, 0.192478, -0.891030,
		31.469328, 40.926712, 37.359085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738997, 41.206135, 38.152821>,  <31.181545, 40.791977, 37.982803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738997, 41.206135, 38.152821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.666977, 41.278179, 37.766010>,  <31.623766, 41.321404, 37.533924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.666977, 41.278179, 37.766010>,  <31.738997, 41.206135, 38.152821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666977, 41.278179, 37.766010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189112, 0.971093, 0.145656,
		0.965308, -0.156652, -0.208903,
		-0.180047, 0.180109, -0.967028,
		31.612963, 41.332211, 37.475903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391571, 41.509525, 37.879242>,  <31.738997, 41.206135, 38.152821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391571, 41.509525, 37.879242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091537, 41.614758, 37.636536>,  <31.911516, 41.677898, 37.490913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091537, 41.614758, 37.636536>,  <32.391571, 41.509525, 37.879242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091537, 41.614758, 37.636536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177369, 0.963886, 0.198656,
		0.637113, 0.041388, -0.769659,
		-0.750085, 0.263079, -0.606763,
		31.866512, 41.693680, 37.454506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567467, 42.200752, 37.671047>,  <32.391571, 41.509525, 37.879242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567467, 42.200752, 37.671047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.193951, 42.176598, 37.529968>,  <31.969843, 42.162106, 37.445320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.193951, 42.176598, 37.529968>,  <32.567467, 42.200752, 37.671047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193951, 42.176598, 37.529968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112609, 0.985168, 0.129476,
		0.339651, 0.160620, -0.926735,
		-0.933786, -0.060382, -0.352701,
		31.913815, 42.158482, 37.424156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545731, 42.661999, 37.132034>,  <32.567467, 42.200752, 37.671047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545731, 42.661999, 37.132034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.172134, 42.621689, 37.269150>,  <31.947977, 42.597504, 37.351418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.172134, 42.621689, 37.269150>,  <32.545731, 42.661999, 37.132034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172134, 42.621689, 37.269150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057700, 0.989347, 0.133652,
		-0.352604, 0.105051, -0.929857,
		-0.933992, -0.100779, 0.342786,
		31.891937, 42.591454, 37.371986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130108, 42.929119, 36.589352>,  <32.545731, 42.661999, 37.132034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130108, 42.929119, 36.589352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.942760, 42.949753, 36.942162>,  <31.830351, 42.962132, 37.153847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.942760, 42.949753, 36.942162>,  <32.130108, 42.929119, 36.589352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942760, 42.949753, 36.942162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160503, 0.976717, -0.142350,
		-0.868831, -0.208240, -0.449187,
		-0.468372, 0.051582, 0.882025,
		31.802250, 42.965229, 37.206768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717409, 43.514923, 36.453159>,  <32.130108, 42.929119, 36.589352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717409, 43.514923, 36.453159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.710030, 43.438156, 36.845654>,  <31.705603, 43.392097, 37.081150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.710030, 43.438156, 36.845654>,  <31.717409, 43.514923, 36.453159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710030, 43.438156, 36.845654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197200, 0.962825, 0.184606,
		-0.980190, -0.190094, -0.055607,
		-0.018447, -0.191915, 0.981238,
		31.704494, 43.380581, 37.140026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003838, 43.663082, 36.734940>,  <31.717409, 43.514923, 36.453159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003838, 43.663082, 36.734940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.252388, 43.671841, 37.048222>,  <31.401518, 43.677094, 37.236191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.252388, 43.671841, 37.048222>,  <31.003838, 43.663082, 36.734940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252388, 43.671841, 37.048222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328477, 0.914802, 0.235033,
		-0.711333, -0.403309, 0.575627,
		0.621376, 0.021894, 0.783207,
		31.438801, 43.678410, 37.283184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702480, 44.193047, 37.151817>,  <31.003838, 43.663082, 36.734940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702480, 44.193047, 37.151817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.061726, 44.128010, 37.315258>,  <31.277273, 44.088989, 37.413322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.061726, 44.128010, 37.315258>,  <30.702480, 44.193047, 37.151817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061726, 44.128010, 37.315258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051926, 0.883433, 0.465672,
		-0.436688, -0.439443, 0.784980,
		0.898113, -0.162592, 0.408603,
		31.331160, 44.079231, 37.437840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662590, 44.171871, 37.891098>,  <30.702480, 44.193047, 37.151817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662590, 44.171871, 37.891098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.030163, 44.290867, 37.787518>,  <31.250708, 44.362267, 37.725368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.030163, 44.290867, 37.787518>,  <30.662590, 44.171871, 37.891098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030163, 44.290867, 37.787518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087874, 0.794488, 0.600889,
		0.384497, -0.529422, 0.756224,
		0.918935, 0.297492, -0.258956,
		31.305843, 44.380116, 37.709831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819450, 44.505928, 38.468533>,  <30.662590, 44.171871, 37.891098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819450, 44.505928, 38.468533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.081142, 44.628220, 38.191833>,  <31.238157, 44.701595, 38.025814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.081142, 44.628220, 38.191833>,  <30.819450, 44.505928, 38.468533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081142, 44.628220, 38.191833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023429, 0.906019, 0.422588,
		0.755932, -0.292677, 0.585582,
		0.654230, 0.305728, -0.691746,
		31.277412, 44.719936, 37.984310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275938, 44.917454, 38.850590>,  <30.819450, 44.505928, 38.468533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275938, 44.917454, 38.850590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.341293, 45.012482, 38.467579>,  <31.380507, 45.069500, 38.237770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.341293, 45.012482, 38.467579>,  <31.275938, 44.917454, 38.850590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341293, 45.012482, 38.467579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252401, 0.928205, 0.273366,
		0.953729, -0.286346, 0.091693,
		0.163387, 0.237574, -0.957530,
		31.390310, 45.083755, 38.180321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935337, 45.254978, 38.831524>,  <31.275938, 44.917454, 38.850590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935337, 45.254978, 38.831524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.735817, 45.368008, 38.503780>,  <31.616104, 45.435825, 38.307133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.735817, 45.368008, 38.503780>,  <31.935337, 45.254978, 38.831524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735817, 45.368008, 38.503780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033735, 0.950975, 0.307423,
		0.866060, 0.125701, -0.483880,
		-0.498801, 0.282571, -0.819360,
		31.586176, 45.452778, 38.257973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227146, 45.741066, 38.706356>,  <31.935337, 45.254978, 38.831524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227146, 45.741066, 38.706356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891769, 45.811008, 38.499886>,  <31.690542, 45.852974, 38.376003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891769, 45.811008, 38.499886>,  <32.227146, 45.741066, 38.706356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891769, 45.811008, 38.499886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015499, 0.939100, 0.343295,
		0.544767, 0.295833, -0.784673,
		-0.838444, 0.174854, -0.516176,
		31.640236, 45.863464, 38.345032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296989, 46.436512, 38.512222>,  <32.227146, 45.741066, 38.706356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296989, 46.436512, 38.512222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.912701, 46.357616, 38.434143>,  <31.682127, 46.310280, 38.387295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.912701, 46.357616, 38.434143>,  <32.296989, 46.436512, 38.512222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912701, 46.357616, 38.434143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266487, 0.851957, 0.450726,
		0.077395, 0.485041, -0.871060,
		-0.960726, -0.197242, -0.195195,
		31.624483, 46.298443, 38.375584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027660, 46.907322, 38.026642>,  <32.296989, 46.436512, 38.512222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027660, 46.907322, 38.026642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.722708, 46.771572, 38.247044>,  <31.539738, 46.690121, 38.379284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.722708, 46.771572, 38.247044>,  <32.027660, 46.907322, 38.026642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722708, 46.771572, 38.247044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120487, 0.911007, 0.394397,
		-0.635817, 0.234290, -0.735422,
		-0.762378, -0.339373, 0.551005,
		31.493994, 46.669762, 38.412346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531155, 47.419987, 37.957218>,  <32.027660, 46.907322, 38.026642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531155, 47.419987, 37.957218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406391, 47.207703, 38.272446>,  <31.331533, 47.080330, 38.461582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406391, 47.207703, 38.272446>,  <31.531155, 47.419987, 37.957218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406391, 47.207703, 38.272446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132614, 0.845649, 0.517003,
		-0.940812, 0.056749, -0.334145,
		-0.311908, -0.530714, 0.788071,
		31.312819, 47.048489, 38.508865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051254, 47.778912, 38.250633>,  <31.531155, 47.419987, 37.957218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051254, 47.778912, 38.250633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.179022, 47.548626, 38.551704>,  <31.255682, 47.410454, 38.732349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.179022, 47.548626, 38.551704>,  <31.051254, 47.778912, 38.250633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179022, 47.548626, 38.551704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150238, 0.753479, 0.640077,
		-0.935628, -0.317534, 0.154183,
		0.319420, -0.575710, 0.752681,
		31.274847, 47.375912, 38.777508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560938, 47.728989, 38.794979>,  <31.051254, 47.778912, 38.250633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560938, 47.728989, 38.794979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936562, 47.684704, 38.925156>,  <31.161936, 47.658131, 39.003262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936562, 47.684704, 38.925156>,  <30.560938, 47.728989, 38.794979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936562, 47.684704, 38.925156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081754, 0.847624, 0.524261,
		-0.333896, -0.518918, 0.786917,
		0.939058, -0.110715, 0.325442,
		31.218279, 47.651489, 39.022789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552750, 47.870480, 39.467224>,  <30.560938, 47.728989, 38.794979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552750, 47.870480, 39.467224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.951309, 47.867016, 39.433479>,  <31.190445, 47.864937, 39.413231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.951309, 47.867016, 39.433479>,  <30.552750, 47.870480, 39.467224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951309, 47.867016, 39.433479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069607, 0.651858, 0.755140,
		0.048452, -0.758292, 0.650112,
		0.996397, -0.008664, -0.084366,
		31.250229, 47.864418, 39.408169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900494, 47.603470, 39.104530>,  <30.552750, 47.870480, 39.467224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900494, 47.603470, 39.104530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.525047, 47.653725, 39.233040>,  <29.299780, 47.683876, 39.310146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.525047, 47.653725, 39.233040>,  <29.900494, 47.603470, 39.104530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525047, 47.653725, 39.233040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073478, -0.982763, 0.169643,
		0.337044, 0.135624, 0.931669,
		-0.938617, 0.125634, 0.321269,
		29.243462, 47.691414, 39.329422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866779, 47.445736, 39.742516>,  <29.900494, 47.603470, 39.104530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866779, 47.445736, 39.742516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.487570, 47.385178, 39.630562>,  <29.260044, 47.348843, 39.563389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.487570, 47.385178, 39.630562>,  <29.866779, 47.445736, 39.742516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487570, 47.385178, 39.630562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098136, -0.975796, 0.195429,
		-0.302694, 0.157805, 0.939933,
		-0.948022, -0.151396, -0.279881,
		29.203163, 47.339760, 39.546597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629824, 46.990776, 40.181511>,  <29.866779, 47.445736, 39.742516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629824, 46.990776, 40.181511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.366722, 46.934853, 39.885452>,  <29.208862, 46.901299, 39.707817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.366722, 46.934853, 39.885452>,  <29.629824, 46.990776, 40.181511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366722, 46.934853, 39.885452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047949, -0.972858, 0.226379,
		-0.751706, 0.184391, 0.633197,
		-0.657753, -0.139809, -0.740145,
		29.169395, 46.892910, 39.663410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198273, 46.538078, 40.536396>,  <29.629824, 46.990776, 40.181511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198273, 46.538078, 40.536396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.073910, 46.509445, 40.157299>,  <28.999292, 46.492264, 39.929840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.073910, 46.509445, 40.157299>,  <29.198273, 46.538078, 40.536396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073910, 46.509445, 40.157299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082058, -0.991414, 0.101805,
		-0.946892, 0.109421, 0.302362,
		-0.310906, -0.071587, -0.947741,
		28.980639, 46.487968, 39.872978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559473, 46.181374, 40.507721>,  <29.198273, 46.538078, 40.536396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559473, 46.181374, 40.507721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.746931, 46.132057, 40.157825>,  <28.859406, 46.102467, 39.947887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.746931, 46.132057, 40.157825>,  <28.559473, 46.181374, 40.507721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746931, 46.132057, 40.157825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053409, -0.992355, 0.111256,
		-0.881770, -0.005421, -0.471648,
		0.468645, -0.123293, -0.874740,
		28.887524, 46.095070, 39.895405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239305, 45.546719, 40.266323>,  <28.559473, 46.181374, 40.507721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239305, 45.546719, 40.266323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.555367, 45.606243, 40.028496>,  <28.745003, 45.641956, 39.885799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.555367, 45.606243, 40.028496>,  <28.239305, 45.546719, 40.266323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555367, 45.606243, 40.028496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102833, -0.988514, -0.110748,
		-0.604220, 0.026367, -0.796382,
		0.790155, 0.148810, -0.594568,
		28.792414, 45.650887, 39.850124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140890, 45.073669, 39.722198>,  <28.239305, 45.546719, 40.266323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140890, 45.073669, 39.722198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.531002, 45.153645, 39.684570>,  <28.765070, 45.201630, 39.661995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.531002, 45.153645, 39.684570>,  <28.140890, 45.073669, 39.722198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531002, 45.153645, 39.684570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161022, -0.934627, -0.317088,
		-0.151317, 0.294103, -0.943720,
		0.975282, 0.199940, -0.094068,
		28.823587, 45.213627, 39.656349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325485, 44.764816, 39.089409>,  <28.140890, 45.073669, 39.722198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325485, 44.764816, 39.089409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.664291, 44.812656, 39.296585>,  <28.867575, 44.841362, 39.420891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.664291, 44.812656, 39.296585>,  <28.325485, 44.764816, 39.089409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664291, 44.812656, 39.296585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326356, -0.886112, -0.329087,
		0.419590, 0.447774, -0.789584,
		0.847016, 0.119603, 0.517937,
		28.918396, 44.848537, 39.451965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911680, 44.747578, 38.582424>,  <28.325485, 44.764816, 39.089409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911680, 44.747578, 38.582424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.054745, 44.673508, 38.948547>,  <29.140583, 44.629066, 39.168221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.054745, 44.673508, 38.948547>,  <28.911680, 44.747578, 38.582424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054745, 44.673508, 38.948547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491366, -0.796175, -0.353079,
		0.794127, 0.576034, -0.193771,
		0.357661, -0.185177, 0.915308,
		29.162043, 44.617954, 39.223141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548052, 44.630196, 38.468372>,  <28.911680, 44.747578, 38.582424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548052, 44.630196, 38.468372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.468826, 44.456425, 38.819836>,  <29.421291, 44.352161, 39.030712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.468826, 44.456425, 38.819836>,  <29.548052, 44.630196, 38.468372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468826, 44.456425, 38.819836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345477, -0.869833, -0.352187,
		0.917287, 0.233801, 0.322368,
		-0.198064, -0.434428, 0.878660,
		29.409407, 44.326096, 39.083435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121309, 44.262924, 38.625790>,  <29.548052, 44.630196, 38.468372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121309, 44.262924, 38.625790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.820755, 44.097713, 38.831638>,  <29.640423, 43.998589, 38.955147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.820755, 44.097713, 38.831638>,  <30.121309, 44.262924, 38.625790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820755, 44.097713, 38.831638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252080, -0.900402, -0.354587,
		0.609816, -0.136706, 0.780664,
		-0.751385, -0.413023, 0.514619,
		29.595339, 43.973808, 38.986023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376751, 43.636520, 38.963058>,  <30.121309, 44.262924, 38.625790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376751, 43.636520, 38.963058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.984627, 43.559547, 38.980751>,  <29.749352, 43.513363, 38.991367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.984627, 43.559547, 38.980751>,  <30.376751, 43.636520, 38.963058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984627, 43.559547, 38.980751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161795, -0.911276, -0.378679,
		0.113182, -0.364067, 0.924470,
		-0.980313, -0.192435, 0.044235,
		29.690533, 43.501816, 38.994022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347969, 42.861435, 38.933769>,  <30.376751, 43.636520, 38.963058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347969, 42.861435, 38.933769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.969976, 42.967716, 38.857441>,  <29.743181, 43.031487, 38.811646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.969976, 42.967716, 38.857441>,  <30.347969, 42.861435, 38.933769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969976, 42.967716, 38.857441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134821, -0.847813, -0.512871,
		-0.298049, -0.458928, 0.836990,
		-0.944982, 0.265704, -0.190817,
		29.686481, 43.047428, 38.800198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889561, 42.273197, 39.171143>,  <30.347969, 42.861435, 38.933769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889561, 42.273197, 39.171143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.695356, 42.491470, 38.897934>,  <29.578835, 42.622433, 38.734009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.695356, 42.491470, 38.897934>,  <29.889561, 42.273197, 39.171143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695356, 42.491470, 38.897934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279580, -0.837164, -0.470097,
		-0.828314, -0.037286, 0.559022,
		-0.485521, 0.545679, -0.683011,
		29.549704, 42.655174, 38.693027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216806, 41.942768, 38.979885>,  <29.889561, 42.273197, 39.171143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216806, 41.942768, 38.979885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.273848, 42.201424, 38.680145>,  <29.308073, 42.356617, 38.500301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.273848, 42.201424, 38.680145>,  <29.216806, 41.942768, 38.979885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273848, 42.201424, 38.680145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152547, -0.733680, -0.662150,
		-0.977954, 0.208736, -0.005982,
		0.142604, 0.646640, -0.749347,
		29.316629, 42.395416, 38.455341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535780, 41.900921, 38.582745>,  <29.216806, 41.942768, 38.979885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535780, 41.900921, 38.582745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.795740, 42.066730, 38.327934>,  <28.951715, 42.166218, 38.175049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.795740, 42.066730, 38.327934>,  <28.535780, 41.900921, 38.582745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795740, 42.066730, 38.327934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206748, -0.710134, -0.673026,
		-0.731359, 0.569103, -0.375814,
		0.649899, 0.414525, -0.637024,
		28.990709, 42.191090, 38.136826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202232, 42.173676, 37.975849>,  <28.535780, 41.900921, 38.582745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202232, 42.173676, 37.975849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.579176, 42.073971, 37.886559>,  <28.805342, 42.014149, 37.832985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.579176, 42.073971, 37.886559>,  <28.202232, 42.173676, 37.975849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579176, 42.073971, 37.886559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329725, -0.578195, -0.746306,
		0.056953, 0.776891, -0.627053,
		0.942358, -0.249259, -0.223230,
		28.861883, 41.999191, 37.819588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162886, 42.117699, 37.294918>,  <28.202232, 42.173676, 37.975849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162886, 42.117699, 37.294918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.494806, 41.925358, 37.408207>,  <28.693958, 41.809956, 37.476181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.494806, 41.925358, 37.408207>,  <28.162886, 42.117699, 37.294918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494806, 41.925358, 37.408207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196375, -0.726652, -0.658342,
		0.522369, 0.490673, -0.697402,
		0.829800, -0.480850, 0.283224,
		28.743746, 41.781101, 37.493176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386404, 41.791004, 36.784298>,  <28.162886, 42.117699, 37.294918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386404, 41.791004, 36.784298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.535522, 41.585491, 37.093376>,  <28.624994, 41.462185, 37.278824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.535522, 41.585491, 37.093376>,  <28.386404, 41.791004, 36.784298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535522, 41.585491, 37.093376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228248, -0.857908, -0.460322,
		0.899403, -0.004759, -0.437094,
		0.372796, -0.513781, 0.772691,
		28.647362, 41.431358, 37.325184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773884, 41.278839, 36.466331>,  <28.386404, 41.791004, 36.784298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773884, 41.278839, 36.466331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.726810, 41.135124, 36.836643>,  <28.698566, 41.048897, 37.058830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.726810, 41.135124, 36.836643>,  <28.773884, 41.278839, 36.466331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726810, 41.135124, 36.836643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092809, -0.924197, -0.370468,
		0.988705, -0.129518, 0.075416,
		-0.117682, -0.359284, 0.925778,
		28.691505, 41.027340, 37.114376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.605843, 37.346344, 41.887920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.249039, 37.238400, 42.032974>,  <44.034958, 37.173634, 42.120007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.249039, 37.238400, 42.032974>,  <44.605843, 37.346344, 41.887920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249039, 37.238400, 42.032974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430336, 0.261460, -0.863973,
		0.138333, -0.926724, -0.349352,
		-0.892006, -0.269855, 0.362634,
		43.981438, 37.157444, 42.141766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283501, 36.887413, 41.311977>,  <44.605843, 37.346344, 41.887920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283501, 36.887413, 41.311977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.986923, 37.033333, 41.537254>,  <43.808979, 37.120884, 41.672421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.986923, 37.033333, 41.537254>,  <44.283501, 36.887413, 41.311977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986923, 37.033333, 41.537254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585061, 0.059555, -0.808800,
		-0.328590, -0.929180, 0.169273,
		-0.741439, 0.364799, 0.563196,
		43.764492, 37.142773, 41.706215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661858, 36.596115, 41.189171>,  <44.283501, 36.887413, 41.311977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661858, 36.596115, 41.189171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.516766, 36.923485, 41.367435>,  <43.429710, 37.119907, 41.474392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.516766, 36.923485, 41.367435>,  <43.661858, 36.596115, 41.189171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516766, 36.923485, 41.367435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731758, 0.045967, -0.680013,
		-0.577023, -0.572777, 0.582212,
		-0.362733, 0.818421, 0.445658,
		43.407944, 37.169010, 41.501133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006260, 36.454819, 41.067043>,  <43.661858, 36.596115, 41.189171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006260, 36.454819, 41.067043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.000847, 36.833344, 41.196228>,  <42.997601, 37.060459, 41.273739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.000847, 36.833344, 41.196228>,  <43.006260, 36.454819, 41.067043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000847, 36.833344, 41.196228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681932, 0.227489, -0.695138,
		-0.731290, -0.229640, 0.642246,
		-0.013528, 0.946316, 0.322960,
		42.996788, 37.117237, 41.293118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324905, 36.469822, 41.291222>,  <43.006260, 36.454819, 41.067043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324905, 36.469822, 41.291222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.509556, 36.808784, 41.186310>,  <42.620346, 37.012161, 41.123363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.509556, 36.808784, 41.186310>,  <42.324905, 36.469822, 41.291222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509556, 36.808784, 41.186310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601626, 0.081806, -0.794577,
		-0.651877, 0.524597, 0.547589,
		0.461629, 0.847411, -0.262284,
		42.648045, 37.063007, 41.107624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845505, 36.957695, 41.129478>,  <42.324905, 36.469822, 41.291222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845505, 36.957695, 41.129478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.164490, 37.054928, 40.908581>,  <42.355881, 37.113266, 40.776043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.164490, 37.054928, 40.908581>,  <41.845505, 36.957695, 41.129478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164490, 37.054928, 40.908581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548525, -0.089216, -0.831361,
		-0.251357, 0.965894, 0.062190,
		0.797458, 0.243081, -0.552242,
		42.403728, 37.127853, 40.742908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567837, 37.461845, 40.665615>,  <41.845505, 36.957695, 41.129478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567837, 37.461845, 40.665615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.921551, 37.369675, 40.503162>,  <42.133778, 37.314373, 40.405689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.921551, 37.369675, 40.503162>,  <41.567837, 37.461845, 40.665615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921551, 37.369675, 40.503162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430744, -0.066748, -0.900003,
		0.180275, 0.970798, -0.158278,
		0.884285, -0.230425, -0.406132,
		42.186836, 37.300549, 40.381321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516537, 37.709446, 39.980148>,  <41.567837, 37.461845, 40.665615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516537, 37.709446, 39.980148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.782276, 37.411156, 40.000275>,  <41.941719, 37.232182, 40.012352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.782276, 37.411156, 40.000275>,  <41.516537, 37.709446, 39.980148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782276, 37.411156, 40.000275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277389, -0.308514, -0.909876,
		0.694045, 0.590515, -0.411817,
		0.664347, -0.745728, 0.050321,
		41.981579, 37.187439, 40.015369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940269, 37.749062, 39.388298>,  <41.516537, 37.709446, 39.980148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940269, 37.749062, 39.388298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.018570, 37.379662, 39.520252>,  <42.065552, 37.158020, 39.599422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.018570, 37.379662, 39.520252>,  <41.940269, 37.749062, 39.388298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018570, 37.379662, 39.520252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131058, -0.358011, -0.924474,
		0.971856, 0.137738, -0.191115,
		0.195756, -0.923503, 0.329884,
		42.077297, 37.102612, 39.619217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352962, 37.472202, 38.821938>,  <41.940269, 37.749062, 39.388298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352962, 37.472202, 38.821938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.250740, 37.143822, 39.026184>,  <42.189407, 36.946793, 39.148731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.250740, 37.143822, 39.026184>,  <42.352962, 37.472202, 38.821938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250740, 37.143822, 39.026184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006543, -0.526669, -0.850045,
		0.966773, -0.220572, 0.129220,
		-0.255553, -0.820956, 0.510612,
		42.174076, 36.897533, 39.179367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866268, 36.939655, 38.736809>,  <42.352962, 37.472202, 38.821938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866268, 36.939655, 38.736809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.491131, 36.813755, 38.795300>,  <42.266048, 36.738216, 38.830395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.491131, 36.813755, 38.795300>,  <42.866268, 36.939655, 38.736809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491131, 36.813755, 38.795300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018500, -0.466071, -0.884554,
		0.346567, -0.826867, 0.442924,
		-0.937843, -0.314751, 0.146228,
		42.209778, 36.719330, 38.839169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009350, 36.341400, 38.460911>,  <42.866268, 36.939655, 38.736809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009350, 36.341400, 38.460911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.612728, 36.354439, 38.511124>,  <42.374756, 36.362263, 38.541252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.612728, 36.354439, 38.511124>,  <43.009350, 36.341400, 38.460911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612728, 36.354439, 38.511124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119277, -0.609219, -0.783980,
		0.050924, -0.792332, 0.607961,
		-0.991554, 0.032593, 0.125531,
		42.315262, 36.364216, 38.548782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800613, 35.722229, 38.334255>,  <43.009350, 36.341400, 38.460911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800613, 35.722229, 38.334255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.453522, 35.918579, 38.303051>,  <42.245266, 36.036388, 38.284328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.453522, 35.918579, 38.303051>,  <42.800613, 35.722229, 38.334255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453522, 35.918579, 38.303051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183338, -0.461986, -0.867731,
		-0.461986, -0.738655, 0.490875,
		0.867731, -0.490875, 0.078007,
		42.193203, 36.065842, 38.279648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322025, 35.209423, 38.218540>,  <42.800613, 35.722229, 38.334255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322025, 35.209423, 38.218540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.162880, 35.552155, 38.087364>,  <42.067390, 35.757793, 38.008659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.162880, 35.552155, 38.087364>,  <42.322025, 35.209423, 38.218540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162880, 35.552155, 38.087364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133548, -0.407730, -0.903284,
		-0.907671, -0.315592, 0.276650,
		-0.397868, 0.856830, -0.327937,
		42.043518, 35.809204, 37.988983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797314, 34.943756, 37.802063>,  <42.322025, 35.209423, 38.218540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797314, 34.943756, 37.802063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.882118, 35.318970, 37.692413>,  <41.933002, 35.544098, 37.626625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.882118, 35.318970, 37.692413>,  <41.797314, 34.943756, 37.802063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882118, 35.318970, 37.692413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074331, -0.264205, -0.961598,
		-0.974436, 0.224248, 0.013710,
		0.212014, 0.938034, -0.274120,
		41.945721, 35.600380, 37.610176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262325, 35.176243, 37.317635>,  <41.797314, 34.943756, 37.802063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262325, 35.176243, 37.317635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.566525, 35.419811, 37.227421>,  <41.749043, 35.565952, 37.173294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.566525, 35.419811, 37.227421>,  <41.262325, 35.176243, 37.317635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566525, 35.419811, 37.227421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037358, -0.305717, -0.951389,
		-0.648266, 0.731954, -0.209749,
		0.760497, 0.608918, -0.225530,
		41.794674, 35.602486, 37.159763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026814, 35.535385, 36.752369>,  <41.262325, 35.176243, 37.317635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026814, 35.535385, 36.752369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.425133, 35.569237, 36.738388>,  <41.664124, 35.589546, 36.730000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.425133, 35.569237, 36.738388>,  <41.026814, 35.535385, 36.752369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425133, 35.569237, 36.738388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018424, -0.188718, -0.981859,
		-0.089688, 0.978378, -0.186366,
		0.995800, 0.084627, -0.034952,
		41.723873, 35.594624, 36.727901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111355, 36.011330, 36.161732>,  <41.026814, 35.535385, 36.752369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111355, 36.011330, 36.161732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.474854, 35.851051, 36.208412>,  <41.692951, 35.754883, 36.236420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.474854, 35.851051, 36.208412>,  <41.111355, 36.011330, 36.161732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474854, 35.851051, 36.208412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129513, 0.004926, -0.991565,
		0.396743, 0.916197, 0.056372,
		0.908747, -0.400698, 0.116705,
		41.747478, 35.730843, 36.243423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608376, 36.366920, 35.667847>,  <41.111355, 36.011330, 36.161732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608376, 36.366920, 35.667847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821510, 36.041569, 35.761223>,  <41.949390, 35.846355, 35.817249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821510, 36.041569, 35.761223>,  <41.608376, 36.366920, 35.667847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821510, 36.041569, 35.761223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283036, -0.088678, -0.955001,
		0.797483, 0.574930, 0.182965,
		0.532834, -0.813383, 0.233445,
		41.981361, 35.797554, 35.831257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244434, 36.471298, 35.448860>,  <41.608376, 36.366920, 35.667847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244434, 36.471298, 35.448860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.206921, 36.073101, 35.443367>,  <42.184414, 35.834183, 35.440071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.206921, 36.073101, 35.443367>,  <42.244434, 36.471298, 35.448860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206921, 36.073101, 35.443367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221128, -0.007380, -0.975217,
		0.970725, -0.094497, 0.220824,
		-0.093785, -0.995498, -0.013732,
		42.178783, 35.774452, 35.439247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823528, 36.262722, 35.099808>,  <42.244434, 36.471298, 35.448860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823528, 36.262722, 35.099808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.581326, 35.944450, 35.093483>,  <42.436005, 35.753487, 35.089687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.581326, 35.944450, 35.093483>,  <42.823528, 36.262722, 35.099808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581326, 35.944450, 35.093483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126062, -0.076277, -0.989086,
		0.785791, -0.600893, 0.146491,
		-0.605509, -0.795682, -0.015812,
		42.399673, 35.705746, 35.088737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086384, 35.960579, 34.619053>,  <42.823528, 36.262722, 35.099808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086384, 35.960579, 34.619053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.726612, 35.786606, 34.636341>,  <42.510750, 35.682220, 34.646713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.726612, 35.786606, 34.636341>,  <43.086384, 35.960579, 34.619053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726612, 35.786606, 34.636341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063493, -0.227864, -0.971621,
		0.432438, -0.871156, 0.232562,
		-0.899425, -0.434932, 0.043224,
		42.456783, 35.656128, 34.649307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886616, 35.904144, 34.425121>,  <43.086384, 35.960579, 34.619053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886616, 35.904144, 34.425121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.203259, 35.665226, 34.476646>,  <44.393246, 35.521877, 34.507561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.203259, 35.665226, 34.476646>,  <43.886616, 35.904144, 34.425121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203259, 35.665226, 34.476646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479715, -0.476957, 0.736469,
		-0.378452, -0.644789, -0.664095,
		0.791611, -0.597294, 0.128809,
		44.440742, 35.486038, 34.515289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614594, 35.216450, 34.471035>,  <43.886616, 35.904144, 34.425121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614594, 35.216450, 34.471035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.975025, 35.220657, 34.644444>,  <44.191284, 35.223183, 34.748489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.975025, 35.220657, 34.644444>,  <43.614594, 35.216450, 34.471035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975025, 35.220657, 34.644444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320894, -0.656244, 0.682914,
		0.291680, -0.754476, -0.587953,
		0.901082, 0.010521, 0.433520,
		44.245350, 35.223812, 34.774498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731281, 34.508503, 34.620689>,  <43.614594, 35.216450, 34.471035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731281, 34.508503, 34.620689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.987675, 34.704903, 34.856674>,  <44.141510, 34.822742, 34.998264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.987675, 34.704903, 34.856674>,  <43.731281, 34.508503, 34.620689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987675, 34.704903, 34.856674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130515, -0.687717, 0.714151,
		0.756375, -0.534760, -0.376734,
		0.640985, 0.490997, 0.589966,
		44.179970, 34.852203, 35.033665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239021, 34.035511, 34.917110>,  <43.731281, 34.508503, 34.620689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.239021, 34.035511, 34.917110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.241688, 34.346245, 35.168980>,  <44.243286, 34.532684, 35.320103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.241688, 34.346245, 35.168980>,  <44.239021, 34.035511, 34.917110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241688, 34.346245, 35.168980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037100, -0.629064, 0.776468,
		0.999289, -0.028537, 0.024627,
		0.006666, 0.776830, 0.629676,
		44.243687, 34.579292, 35.357883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923538, 33.983875, 35.282352>,  <44.239021, 34.035511, 34.917110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923538, 33.983875, 35.282352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659451, 34.180622, 35.509396>,  <44.500999, 34.298672, 35.645622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659451, 34.180622, 35.509396>,  <44.923538, 33.983875, 35.282352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659451, 34.180622, 35.509396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069296, -0.792396, 0.606059,
		0.747871, 0.360798, 0.557238,
		-0.660218, 0.491868, 0.567608,
		44.461384, 34.328182, 35.679676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125961, 33.822178, 35.929970>,  <44.923538, 33.983875, 35.282352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125961, 33.822178, 35.929970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.743675, 33.936424, 35.958347>,  <44.514305, 34.004971, 35.975376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.743675, 33.936424, 35.958347>,  <45.125961, 33.822178, 35.929970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743675, 33.936424, 35.958347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157228, -0.699317, 0.697305,
		0.248775, 0.655270, 0.713255,
		-0.955715, 0.285616, 0.070946,
		44.456963, 34.022110, 35.979630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025806, 33.933559, 36.653160>,  <45.125961, 33.822178, 35.929970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025806, 33.933559, 36.653160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.676579, 33.892052, 36.462589>,  <44.467041, 33.867146, 36.348248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.676579, 33.892052, 36.462589>,  <45.025806, 33.933559, 36.653160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676579, 33.892052, 36.462589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346683, -0.554976, 0.756183,
		-0.342877, 0.825369, 0.448555,
		-0.873067, -0.103771, -0.476430,
		44.414658, 33.860920, 36.319660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.629059, 34.116428, 37.132103>,  <45.025806, 33.933559, 36.653160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.629059, 34.116428, 37.132103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.398346, 33.904118, 36.883717>,  <44.259918, 33.776730, 36.734684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.398346, 33.904118, 36.883717>,  <44.629059, 34.116428, 37.132103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398346, 33.904118, 36.883717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383860, -0.494897, 0.779569,
		-0.721091, 0.688006, 0.081705,
		-0.576784, -0.530777, -0.620964,
		44.225311, 33.744884, 36.697426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931835, 34.195091, 37.303452>,  <44.629059, 34.116428, 37.132103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931835, 34.195091, 37.303452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.917557, 33.840332, 37.119217>,  <43.908989, 33.627476, 37.008675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.917557, 33.840332, 37.119217>,  <43.931835, 34.195091, 37.303452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917557, 33.840332, 37.119217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238728, -0.439975, 0.865697,
		-0.970430, 0.140856, -0.196023,
		-0.035693, -0.886895, -0.460591,
		43.906849, 33.574265, 36.981041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334721, 33.889847, 37.490013>,  <43.931835, 34.195091, 37.303452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334721, 33.889847, 37.490013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.552296, 33.565891, 37.402191>,  <43.682842, 33.371517, 37.349499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.552296, 33.565891, 37.402191>,  <43.334721, 33.889847, 37.490013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552296, 33.565891, 37.402191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220378, -0.390339, 0.893907,
		-0.809670, -0.437845, -0.390803,
		0.543938, -0.809893, -0.219555,
		43.715477, 33.322922, 37.336327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987614, 33.358730, 37.894138>,  <43.334721, 33.889847, 37.490013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987614, 33.358730, 37.894138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.330837, 33.191063, 37.775452>,  <43.536770, 33.090462, 37.704239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.330837, 33.191063, 37.775452>,  <42.987614, 33.358730, 37.894138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330837, 33.191063, 37.775452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021855, -0.547440, 0.836559,
		-0.513089, -0.724300, -0.460574,
		0.858057, -0.419163, -0.296715,
		43.588253, 33.065311, 37.686436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918873, 32.551311, 38.007710>,  <42.987614, 33.358730, 37.894138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918873, 32.551311, 38.007710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311794, 32.620304, 37.978512>,  <43.547546, 32.661697, 37.960991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311794, 32.620304, 37.978512>,  <42.918873, 32.551311, 38.007710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311794, 32.620304, 37.978512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143211, -0.440535, 0.886239,
		0.120700, -0.881010, -0.457441,
		0.982304, 0.172479, -0.072998,
		43.606487, 32.672047, 37.956612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218475, 31.968210, 38.164040>,  <42.918873, 32.551311, 38.007710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218475, 31.968210, 38.164040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.475327, 32.265320, 38.239895>,  <43.629436, 32.443584, 38.285408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.475327, 32.265320, 38.239895>,  <43.218475, 31.968210, 38.164040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475327, 32.265320, 38.239895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147459, -0.362433, 0.920270,
		0.752285, -0.562964, -0.342256,
		0.642124, 0.742774, 0.189639,
		43.667965, 32.488152, 38.296787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607170, 31.744953, 38.726166>,  <43.218475, 31.968210, 38.164040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607170, 31.744953, 38.726166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.719635, 32.128082, 38.749889>,  <43.787113, 32.357960, 38.764122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.719635, 32.128082, 38.749889>,  <43.607170, 31.744953, 38.726166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719635, 32.128082, 38.749889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013096, -0.065623, 0.997759,
		0.959570, -0.279759, -0.030994,
		0.281166, 0.957825, 0.059307,
		43.803986, 32.415428, 38.767681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312115, 31.768492, 39.175220>,  <43.607170, 31.744953, 38.726166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312115, 31.768492, 39.175220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126919, 32.122986, 39.169178>,  <44.015800, 32.335682, 39.165554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126919, 32.122986, 39.169178>,  <44.312115, 31.768492, 39.175220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126919, 32.122986, 39.169178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080712, -0.025186, 0.996419,
		0.882679, 0.462554, 0.083191,
		-0.462993, 0.886233, -0.015103,
		43.988022, 32.388855, 39.164646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725014, 32.204075, 39.566078>,  <44.312115, 31.768492, 39.175220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725014, 32.204075, 39.566078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.377094, 32.401234, 39.557068>,  <44.168343, 32.519531, 39.551662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.377094, 32.401234, 39.557068>,  <44.725014, 32.204075, 39.566078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377094, 32.401234, 39.557068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094491, 0.211204, 0.972864,
		0.484281, 0.844064, -0.230279,
		-0.869795, 0.492899, -0.022525,
		44.116158, 32.549103, 39.550312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957924, 32.899040, 39.687454>,  <44.725014, 32.204075, 39.566078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957924, 32.899040, 39.687454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.566223, 32.884640, 39.767220>,  <44.331203, 32.875999, 39.815079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.566223, 32.884640, 39.767220>,  <44.957924, 32.899040, 39.687454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566223, 32.884640, 39.767220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164410, 0.434084, 0.885743,
		-0.118447, 0.900153, -0.419160,
		-0.979255, -0.035999, 0.199411,
		44.272446, 32.873840, 39.827042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770004, 33.593304, 39.878616>,  <44.957924, 32.899040, 39.687454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770004, 33.593304, 39.878616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.536690, 33.305519, 40.029430>,  <44.396702, 33.132847, 40.119919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.536690, 33.305519, 40.029430>,  <44.770004, 33.593304, 39.878616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.536690, 33.305519, 40.029430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182504, 0.336230, 0.923927,
		-0.791501, 0.607722, -0.064813,
		-0.583283, -0.719460, 0.377038,
		44.361706, 33.089680, 40.142540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243546, 33.966293, 40.268459>,  <44.770004, 33.593304, 39.878616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243546, 33.966293, 40.268459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.279106, 33.593239, 40.408340>,  <44.300442, 33.369408, 40.492268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.279106, 33.593239, 40.408340>,  <44.243546, 33.966293, 40.268459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279106, 33.593239, 40.408340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010565, 0.350187, 0.936620,
		-0.995985, -0.086958, 0.021277,
		0.088897, -0.932635, 0.349700,
		44.305775, 33.313450, 40.513248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685543, 33.858143, 40.849354>,  <44.243546, 33.966293, 40.268459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685543, 33.858143, 40.849354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.986256, 33.597172, 40.887650>,  <44.166683, 33.440590, 40.910625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.986256, 33.597172, 40.887650>,  <43.685543, 33.858143, 40.849354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986256, 33.597172, 40.887650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063697, 0.216358, 0.974234,
		-0.656328, -0.726313, 0.204212,
		0.751782, -0.652425, 0.095738,
		44.211792, 33.401443, 40.916370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.441673, 37.022442, 36.447315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103951, 36.917488, 36.634205>,  <32.901318, 36.854515, 36.746338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103951, 36.917488, 36.634205>,  <33.441673, 37.022442, 36.447315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103951, 36.917488, 36.634205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360008, -0.923578, 0.131899,
		0.396907, 0.279567, 0.874247,
		-0.844310, -0.262384, 0.467221,
		32.850658, 36.838772, 36.774372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542477, 36.691372, 37.190090>,  <33.441673, 37.022442, 36.447315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542477, 36.691372, 37.190090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207954, 36.556633, 37.017059>,  <33.007240, 36.475788, 36.913242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207954, 36.556633, 37.017059>,  <33.542477, 36.691372, 37.190090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207954, 36.556633, 37.017059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337709, -0.938049, 0.077561,
		-0.431904, -0.081220, 0.898256,
		-0.836308, -0.336848, -0.432575,
		32.957062, 36.455578, 36.887287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590919, 36.022785, 37.385830>,  <33.542477, 36.691372, 37.190090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590919, 36.022785, 37.385830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289299, 35.992825, 37.124817>,  <33.108326, 35.974846, 36.968208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289299, 35.992825, 37.124817>,  <33.590919, 36.022785, 37.385830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289299, 35.992825, 37.124817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114448, -0.993262, -0.018238,
		-0.646769, -0.088433, 0.757542,
		-0.754051, -0.074903, -0.652531,
		33.063084, 35.970352, 36.929058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258926, 35.440083, 37.596298>,  <33.590919, 36.022785, 37.385830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258926, 35.440083, 37.596298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129475, 35.511963, 37.224712>,  <33.051804, 35.555092, 37.001762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129475, 35.511963, 37.224712>,  <33.258926, 35.440083, 37.596298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129475, 35.511963, 37.224712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002363, -0.981642, -0.190719,
		-0.946179, -0.063918, 0.317268,
		-0.323634, 0.179704, -0.928960,
		33.032383, 35.565876, 36.946026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812630, 34.913017, 37.441391>,  <33.258926, 35.440083, 37.596298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812630, 34.913017, 37.441391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926971, 35.060947, 37.087776>,  <32.995575, 35.149708, 36.875607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926971, 35.060947, 37.087776>,  <32.812630, 34.913017, 37.441391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926971, 35.060947, 37.087776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120905, -0.929074, -0.349575,
		-0.950617, -0.006958, -0.310290,
		0.285850, 0.369827, -0.884035,
		33.012726, 35.171894, 36.822567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317093, 34.568790, 36.980648>,  <32.812630, 34.913017, 37.441391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317093, 34.568790, 36.980648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628933, 34.687057, 36.759815>,  <32.816036, 34.758018, 36.627316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628933, 34.687057, 36.759815>,  <32.317093, 34.568790, 36.980648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628933, 34.687057, 36.759815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086342, -0.923864, -0.372854,
		-0.620295, 0.243010, -0.745775,
		0.779602, 0.295671, -0.552086,
		32.862812, 34.775761, 36.594189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356236, 34.118351, 36.355999>,  <32.317093, 34.568790, 36.980648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356236, 34.118351, 36.355999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723392, 34.272228, 36.317062>,  <32.943687, 34.364555, 36.293701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723392, 34.272228, 36.317062>,  <32.356236, 34.118351, 36.355999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723392, 34.272228, 36.317062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260848, -0.769796, -0.582557,
		-0.299041, 0.509336, -0.806940,
		0.917896, 0.384697, -0.097341,
		32.998760, 34.387638, 36.287861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368023, 33.956745, 35.733875>,  <32.356236, 34.118351, 36.355999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368023, 33.956745, 35.733875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738091, 34.005253, 35.877735>,  <32.960133, 34.034359, 35.964050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738091, 34.005253, 35.877735>,  <32.368023, 33.956745, 35.733875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738091, 34.005253, 35.877735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336723, -0.699499, -0.630333,
		0.175135, 0.704269, -0.687991,
		0.925173, 0.121269, 0.359651,
		33.015644, 34.041634, 35.985630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823555, 33.920441, 35.152802>,  <32.368023, 33.956745, 35.733875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823555, 33.920441, 35.152802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060081, 33.865799, 35.470715>,  <33.201996, 33.833012, 35.661465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060081, 33.865799, 35.470715>,  <32.823555, 33.920441, 35.152802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060081, 33.865799, 35.470715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322648, -0.863156, -0.388407,
		0.739085, 0.486107, -0.466319,
		0.591313, -0.136609, 0.794787,
		33.237476, 33.824818, 35.709152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361877, 33.743568, 34.866577>,  <32.823555, 33.920441, 35.152802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361877, 33.743568, 34.866577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429836, 33.616558, 35.239738>,  <33.470612, 33.540352, 35.463634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429836, 33.616558, 35.239738>,  <33.361877, 33.743568, 34.866577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429836, 33.616558, 35.239738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318648, -0.878111, -0.356909,
		0.932522, 0.357907, -0.048013,
		0.169901, -0.317526, 0.932905,
		33.480808, 33.521301, 35.519611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958790, 33.428848, 34.750591>,  <33.361877, 33.743568, 34.866577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958790, 33.428848, 34.750591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840240, 33.271286, 35.098614>,  <33.769112, 33.176750, 35.307426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840240, 33.271286, 35.098614>,  <33.958790, 33.428848, 34.750591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840240, 33.271286, 35.098614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061448, -0.916966, -0.394205,
		0.953093, -0.063369, 0.295970,
		-0.296375, -0.393901, 0.870060,
		33.751328, 33.153114, 35.359631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453167, 32.882183, 34.945099>,  <33.958790, 33.428848, 34.750591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453167, 32.882183, 34.945099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109787, 32.800938, 35.133484>,  <33.903759, 32.752190, 35.246517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109787, 32.800938, 35.133484>,  <34.453167, 32.882183, 34.945099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109787, 32.800938, 35.133484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065872, -0.954300, -0.291502,
		0.508652, -0.219216, 0.832597,
		-0.858449, -0.203118, 0.470967,
		33.852253, 32.740002, 35.274773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657871, 33.459476, 34.558727>,  <34.453167, 32.882183, 34.945099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657871, 33.459476, 34.558727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694881, 33.485607, 34.161301>,  <34.717087, 33.501286, 33.922844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694881, 33.485607, 34.161301>,  <34.657871, 33.459476, 34.558727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694881, 33.485607, 34.161301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995605, 0.008453, 0.093269,
		0.014492, -0.997828, -0.064260,
		0.092523, 0.065329, -0.993565,
		34.722637, 33.505207, 33.863232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335636, 33.173672, 34.447918>,  <34.657871, 33.459476, 34.558727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335636, 33.173672, 34.447918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267246, 33.291008, 34.071678>,  <35.226212, 33.361408, 33.845936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267246, 33.291008, 34.071678>,  <35.335636, 33.173672, 34.447918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267246, 33.291008, 34.071678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952713, -0.194182, -0.233734,
		-0.251210, -0.936080, -0.246267,
		-0.170973, 0.293338, -0.940596,
		35.215954, 33.379009, 33.789501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966263, 32.704872, 34.448387>,  <35.335636, 33.173672, 34.447918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966263, 32.704872, 34.448387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328823, 32.614716, 34.591286>,  <36.546360, 32.560623, 34.677025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328823, 32.614716, 34.591286>,  <35.966263, 32.704872, 34.448387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328823, 32.614716, 34.591286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045438, 0.788813, 0.612952,
		-0.419958, -0.571815, 0.704743,
		0.906406, -0.225392, 0.357250,
		36.600746, 32.547096, 34.698460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993786, 32.592587, 35.263371>,  <35.966263, 32.704872, 34.448387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993786, 32.592587, 35.263371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364700, 32.685280, 35.145763>,  <36.587250, 32.740894, 35.075199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364700, 32.685280, 35.145763>,  <35.993786, 32.592587, 35.263371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364700, 32.685280, 35.145763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066887, 0.670186, 0.739173,
		0.368333, -0.705089, 0.605954,
		0.927285, 0.231732, -0.294013,
		36.642887, 32.754799, 35.057560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339317, 32.611771, 35.899681>,  <35.993786, 32.592587, 35.263371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339317, 32.611771, 35.899681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571022, 32.797482, 35.631680>,  <36.710045, 32.908909, 35.470879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571022, 32.797482, 35.631680>,  <36.339317, 32.611771, 35.899681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571022, 32.797482, 35.631680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228762, 0.696324, 0.680295,
		0.782384, -0.547339, 0.297144,
		0.579260, 0.464277, -0.670003,
		36.744801, 32.936764, 35.430679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011219, 32.563824, 36.181187>,  <36.339317, 32.611771, 35.899681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011219, 32.563824, 36.181187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957108, 32.884697, 35.948563>,  <36.924641, 33.077221, 35.808990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957108, 32.884697, 35.948563>,  <37.011219, 32.563824, 36.181187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957108, 32.884697, 35.948563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124425, 0.596059, 0.793242,
		0.982964, 0.034950, -0.180446,
		-0.135280, 0.802180, -0.581556,
		36.916523, 33.125351, 35.774097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384995, 33.165642, 36.496059>,  <37.011219, 32.563824, 36.181187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384995, 33.165642, 36.496059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135658, 33.356087, 36.247940>,  <36.986057, 33.470352, 36.099068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135658, 33.356087, 36.247940>,  <37.384995, 33.165642, 36.496059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135658, 33.356087, 36.247940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023301, 0.781603, 0.623341,
		0.781603, 0.403007, -0.476111,
		-0.623341, 0.476111, -0.620294,
		36.948654, 33.498920, 36.061852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666138, 33.825722, 36.406105>,  <37.384995, 33.165642, 36.496059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666138, 33.825722, 36.406105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278103, 33.865108, 36.317341>,  <37.045284, 33.888741, 36.264084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278103, 33.865108, 36.317341>,  <37.666138, 33.825722, 36.406105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278103, 33.865108, 36.317341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010129, 0.896839, 0.442241,
		0.242564, 0.431258, -0.869011,
		-0.970083, 0.098470, -0.221908,
		36.987080, 33.894650, 36.250767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554157, 34.578747, 36.535877>,  <37.666138, 33.825722, 36.406105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554157, 34.578747, 36.535877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186844, 34.442890, 36.454494>,  <36.966454, 34.361378, 36.405663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186844, 34.442890, 36.454494>,  <37.554157, 34.578747, 36.535877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186844, 34.442890, 36.454494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395345, 0.814269, 0.425051,
		0.021308, 0.470755, -0.882006,
		-0.918285, -0.339640, -0.203461,
		36.911358, 34.341000, 36.393456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122707, 35.164551, 36.219181>,  <37.554157, 34.578747, 36.535877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122707, 35.164551, 36.219181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886658, 34.922710, 36.433178>,  <36.745026, 34.777607, 36.561577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886658, 34.922710, 36.433178>,  <37.122707, 35.164551, 36.219181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886658, 34.922710, 36.433178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413153, 0.795499, 0.443266,
		-0.693582, 0.040550, -0.719236,
		-0.590126, -0.604596, 0.534990,
		36.709621, 34.741333, 36.593674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492584, 35.305748, 36.052132>,  <37.122707, 35.164551, 36.219181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492584, 35.305748, 36.052132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457684, 35.150341, 36.419052>,  <36.436741, 35.057095, 36.639202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457684, 35.150341, 36.419052>,  <36.492584, 35.305748, 36.052132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457684, 35.150341, 36.419052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300026, 0.888306, 0.347703,
		-0.949932, -0.244875, -0.194074,
		-0.087253, -0.388522, 0.917299,
		36.431507, 35.033783, 36.694241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940399, 35.652561, 36.366825>,  <36.492584, 35.305748, 36.052132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940399, 35.652561, 36.366825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103806, 35.452282, 36.672092>,  <36.201851, 35.332115, 36.855251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103806, 35.452282, 36.672092>,  <35.940399, 35.652561, 36.366825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103806, 35.452282, 36.672092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366677, 0.675655, 0.639561,
		-0.835860, -0.541106, 0.092423,
		0.408516, -0.500694, 0.763164,
		36.226360, 35.302074, 36.901043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502552, 35.769535, 36.892792>,  <35.940399, 35.652561, 36.366825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502552, 35.769535, 36.892792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834038, 35.654766, 37.085003>,  <36.032928, 35.585903, 37.200329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834038, 35.654766, 37.085003>,  <35.502552, 35.769535, 36.892792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834038, 35.654766, 37.085003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205774, 0.642244, 0.738363,
		-0.520473, -0.710771, 0.473194,
		0.828713, -0.286926, 0.480529,
		36.082653, 35.568687, 37.229160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335423, 35.529030, 37.620235>,  <35.502552, 35.769535, 36.892792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335423, 35.529030, 37.620235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715145, 35.654377, 37.610275>,  <35.942978, 35.729584, 37.604298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715145, 35.654377, 37.610275>,  <35.335423, 35.529030, 37.620235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715145, 35.654377, 37.610275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204985, 0.677131, 0.706735,
		0.238327, -0.665804, 0.707040,
		0.949306, 0.313366, -0.024899,
		35.999935, 35.748386, 37.602806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500778, 35.777008, 38.301506>,  <35.335423, 35.529030, 37.620235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500778, 35.777008, 38.301506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776821, 35.960407, 38.077526>,  <35.942448, 36.070446, 37.943138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776821, 35.960407, 38.077526>,  <35.500778, 35.777008, 38.301506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776821, 35.960407, 38.077526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063153, 0.808917, 0.584521,
		0.720949, -0.368018, 0.587192,
		0.690105, 0.458493, -0.559946,
		35.983852, 36.097954, 37.909542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984451, 36.096027, 38.777969>,  <35.500778, 35.777008, 38.301506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984451, 36.096027, 38.777969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022694, 36.293549, 38.432251>,  <36.045639, 36.412064, 38.224819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022694, 36.293549, 38.432251>,  <35.984451, 36.096027, 38.777969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022694, 36.293549, 38.432251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044915, 0.865253, 0.499320,
		0.994405, -0.086557, 0.060543,
		0.095605, 0.493807, -0.864300,
		36.051376, 36.441692, 38.172962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011978, 35.753284, 39.447594>,  <35.984451, 36.096027, 38.777969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011978, 35.753284, 39.447594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808521, 35.770844, 39.791538>,  <35.686447, 35.781380, 39.997906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808521, 35.770844, 39.791538>,  <36.011978, 35.753284, 39.447594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808521, 35.770844, 39.791538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380030, -0.907594, -0.178469,
		0.772571, -0.417549, 0.478318,
		-0.508637, 0.043895, 0.859861,
		35.655930, 35.784012, 40.049496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213619, 35.199402, 39.862286>,  <36.011978, 35.753284, 39.447594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213619, 35.199402, 39.862286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852219, 35.333321, 39.969318>,  <35.635380, 35.413673, 40.033539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852219, 35.333321, 39.969318>,  <36.213619, 35.199402, 39.862286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852219, 35.333321, 39.969318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408547, -0.861470, -0.301595,
		0.129536, -0.381809, 0.915119,
		-0.903499, 0.334801, 0.267578,
		35.581169, 35.433762, 40.049591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945217, 34.745220, 40.353111>,  <36.213619, 35.199402, 39.862286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945217, 34.745220, 40.353111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609066, 34.922028, 40.227646>,  <35.407375, 35.028111, 40.152367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609066, 34.922028, 40.227646>,  <35.945217, 34.745220, 40.353111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609066, 34.922028, 40.227646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439899, -0.894324, -0.081693,
		-0.316627, 0.069328, 0.946013,
		-0.840378, 0.442016, -0.313665,
		35.356953, 35.054634, 40.133545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398987, 34.361259, 40.696877>,  <35.945217, 34.745220, 40.353111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398987, 34.361259, 40.696877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217907, 34.540771, 40.388680>,  <35.109261, 34.648479, 40.203762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217907, 34.540771, 40.388680>,  <35.398987, 34.361259, 40.696877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217907, 34.540771, 40.388680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436305, -0.865082, -0.247528,
		-0.777628, 0.224117, 0.587424,
		-0.452695, 0.448781, -0.770495,
		35.082100, 34.675407, 40.157532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750233, 34.187992, 40.814617>,  <35.398987, 34.361259, 40.696877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750233, 34.187992, 40.814617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785393, 34.285679, 40.428326>,  <34.806488, 34.344292, 40.196552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785393, 34.285679, 40.428326>,  <34.750233, 34.187992, 40.814617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785393, 34.285679, 40.428326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454298, -0.852959, -0.257050,
		-0.886502, 0.461324, 0.035971,
		0.087902, 0.244216, -0.965729,
		34.811764, 34.358944, 40.138607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084293, 34.105221, 40.530998>,  <34.750233, 34.187992, 40.814617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084293, 34.105221, 40.530998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334335, 34.093487, 40.219002>,  <34.484360, 34.086445, 40.031803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334335, 34.093487, 40.219002>,  <34.084293, 34.105221, 40.530998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334335, 34.093487, 40.219002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441163, -0.837649, -0.322054,
		-0.643907, 0.545420, -0.536564,
		0.625107, -0.029339, -0.779987,
		34.521866, 34.084686, 39.985004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612320, 34.002907, 39.866558>,  <34.084293, 34.105221, 40.530998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612320, 34.002907, 39.866558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981419, 33.870037, 39.788380>,  <34.202877, 33.790314, 39.741474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981419, 33.870037, 39.788380>,  <33.612320, 34.002907, 39.866558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981419, 33.870037, 39.788380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384369, -0.830335, -0.403491,
		-0.028254, 0.447443, -0.893866,
		0.922747, -0.332174, -0.195443,
		34.258244, 33.770386, 39.729748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579479, 33.892342, 39.122868>,  <33.612320, 34.002907, 39.866558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579479, 33.892342, 39.122868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902248, 33.684307, 39.234856>,  <34.095909, 33.559486, 39.302048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902248, 33.684307, 39.234856>,  <33.579479, 33.892342, 39.122868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902248, 33.684307, 39.234856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254720, -0.734071, -0.629489,
		0.532903, 0.436638, -0.724818,
		0.806927, -0.520082, 0.279968,
		34.144325, 33.528282, 39.318848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805950, 33.665092, 38.544834>,  <33.579479, 33.892342, 39.122868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805950, 33.665092, 38.544834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983650, 33.420631, 38.806866>,  <34.090271, 33.273952, 38.964085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983650, 33.420631, 38.806866>,  <33.805950, 33.665092, 38.544834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983650, 33.420631, 38.806866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235615, -0.785156, -0.572727,
		0.864365, 0.100088, -0.492804,
		0.444251, -0.611157, 0.655079,
		34.116924, 33.237286, 39.003387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170990, 33.153225, 38.197956>,  <33.805950, 33.665092, 38.544834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170990, 33.153225, 38.197956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132320, 33.003380, 38.566807>,  <34.109119, 32.913471, 38.788116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132320, 33.003380, 38.566807>,  <34.170990, 33.153225, 38.197956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132320, 33.003380, 38.566807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125087, -0.914547, -0.384651,
		0.987425, -0.152532, 0.041554,
		-0.096674, -0.374616, 0.922126,
		34.103317, 32.890995, 38.843445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564877, 32.537338, 38.221840>,  <34.170990, 33.153225, 38.197956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564877, 32.537338, 38.221840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270271, 32.519821, 38.491840>,  <34.093510, 32.509312, 38.653843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270271, 32.519821, 38.491840>,  <34.564877, 32.537338, 38.221840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270271, 32.519821, 38.491840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307873, -0.866844, -0.392167,
		0.602296, -0.496652, 0.624961,
		-0.736514, -0.043792, 0.675003,
		34.049316, 32.506683, 38.694340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505394, 31.907116, 38.533794>,  <34.564877, 32.537338, 38.221840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505394, 31.907116, 38.533794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139824, 32.066219, 38.566132>,  <33.920483, 32.161682, 38.585533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139824, 32.066219, 38.566132>,  <34.505394, 31.907116, 38.533794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139824, 32.066219, 38.566132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388725, -0.800418, -0.456316,
		-0.116795, -0.448463, 0.886138,
		-0.913921, 0.397759, 0.080844,
		33.865646, 32.185547, 38.590385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.185757, 38.983902, 41.708599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.793327, 38.938148, 41.771084>,  <36.557869, 38.910698, 41.808575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.793327, 38.938148, 41.771084>,  <37.185757, 38.983902, 41.708599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793327, 38.938148, 41.771084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068740, -0.960046, -0.271270,
		0.180999, -0.255399, 0.949742,
		-0.981078, -0.114385, 0.156211,
		36.499004, 38.903831, 41.817947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038010, 38.288605, 42.071163>,  <37.185757, 38.983902, 41.708599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038010, 38.288605, 42.071163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.694565, 38.392052, 41.894119>,  <36.488499, 38.454121, 41.787891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.694565, 38.392052, 41.894119>,  <37.038010, 38.288605, 42.071163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694565, 38.392052, 41.894119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120500, -0.941044, -0.316095,
		-0.498264, -0.218068, 0.839154,
		-0.858611, 0.258617, -0.442611,
		36.436981, 38.469635, 41.761337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582203, 37.808228, 42.274178>,  <37.038010, 38.288605, 42.071163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582203, 37.808228, 42.274178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.450920, 37.959469, 41.927925>,  <36.372150, 38.050213, 41.720173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.450920, 37.959469, 41.927925>,  <36.582203, 37.808228, 42.274178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450920, 37.959469, 41.927925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256181, -0.917680, -0.303702,
		-0.909203, 0.122079, 0.398054,
		-0.328211, 0.378101, -0.865631,
		36.352455, 38.072899, 41.668236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923431, 37.620949, 42.170387>,  <36.582203, 37.808228, 42.274178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923431, 37.620949, 42.170387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.047108, 37.700207, 41.798336>,  <36.121315, 37.747761, 41.575104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.047108, 37.700207, 41.798336>,  <35.923431, 37.620949, 42.170387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047108, 37.700207, 41.798336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354801, -0.883401, -0.306136,
		-0.882336, 0.424665, -0.202838,
		0.309193, 0.198147, -0.930128,
		36.139866, 37.759651, 41.519299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361229, 37.454369, 41.781281>,  <35.923431, 37.620949, 42.170387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361229, 37.454369, 41.781281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627415, 37.468655, 41.483051>,  <35.787125, 37.477226, 41.304111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627415, 37.468655, 41.483051>,  <35.361229, 37.454369, 41.781281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627415, 37.468655, 41.483051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450252, -0.777467, -0.439110,
		-0.595342, 0.627909, -0.501297,
		0.665463, 0.035711, -0.745576,
		35.827053, 37.479366, 41.259377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043484, 37.339714, 41.214863>,  <35.361229, 37.454369, 41.781281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043484, 37.339714, 41.214863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.421989, 37.245316, 41.126411>,  <35.649094, 37.188675, 41.073341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.421989, 37.245316, 41.126411>,  <35.043484, 37.339714, 41.214863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421989, 37.245316, 41.126411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298928, -0.899191, -0.319528,
		-0.123427, 0.368457, -0.921415,
		0.946260, -0.235998, -0.221126,
		35.705868, 37.174515, 41.060074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009052, 37.153381, 40.527557>,  <35.043484, 37.339714, 41.214863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009052, 37.153381, 40.527557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.330803, 36.970413, 40.679214>,  <35.523853, 36.860634, 40.770210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.330803, 36.970413, 40.679214>,  <35.009052, 37.153381, 40.527557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330803, 36.970413, 40.679214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224485, -0.824849, -0.518875,
		0.550080, 0.332257, -0.766171,
		0.804375, -0.457416, 0.379146,
		35.572117, 36.833187, 40.792957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210125, 36.891659, 39.879738>,  <35.009052, 37.153381, 40.527557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210125, 36.891659, 39.879738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420311, 36.716854, 40.171738>,  <35.546425, 36.611969, 40.346939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420311, 36.716854, 40.171738>,  <35.210125, 36.891659, 39.879738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420311, 36.716854, 40.171738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038285, -0.869280, -0.492835,
		0.849952, 0.231020, -0.473509,
		0.525467, -0.437015, 0.730002,
		35.577950, 36.585751, 40.390739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742157, 36.546410, 39.557545>,  <35.210125, 36.891659, 39.879738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742157, 36.546410, 39.557545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.700340, 36.375137, 39.916595>,  <35.675251, 36.272373, 40.132027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.700340, 36.375137, 39.916595>,  <35.742157, 36.546410, 39.557545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700340, 36.375137, 39.916595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197542, -0.875647, -0.440703,
		0.974704, -0.223393, 0.006962,
		-0.104546, -0.428179, 0.897626,
		35.668976, 36.246685, 40.185883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320801, 36.697674, 38.965614>,  <35.742157, 36.546410, 39.557545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320801, 36.697674, 38.965614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.194374, 36.789425, 38.597378>,  <36.118519, 36.844475, 38.376434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.194374, 36.789425, 38.597378>,  <36.320801, 36.697674, 38.965614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194374, 36.789425, 38.597378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185385, 0.936697, 0.297036,
		0.930449, 0.264546, -0.253535,
		-0.316066, 0.229375, -0.920592,
		36.099556, 36.858238, 38.321201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649399, 37.342281, 38.738728>,  <36.320801, 36.697674, 38.965614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649399, 37.342281, 38.738728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.336411, 37.314117, 38.491249>,  <36.148617, 37.297218, 38.342762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.336411, 37.314117, 38.491249>,  <36.649399, 37.342281, 38.738728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336411, 37.314117, 38.491249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328325, 0.890900, 0.313848,
		0.529103, 0.448710, -0.720215,
		-0.782466, -0.070407, -0.618700,
		36.101669, 37.292995, 38.305637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663731, 37.913143, 38.208889>,  <36.649399, 37.342281, 38.738728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663731, 37.913143, 38.208889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.285351, 37.793804, 38.259758>,  <36.058323, 37.722202, 38.290279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.285351, 37.793804, 38.259758>,  <36.663731, 37.913143, 38.208889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285351, 37.793804, 38.259758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256791, 0.928513, 0.268184,
		-0.198091, 0.221032, -0.954937,
		-0.945948, -0.298345, 0.127171,
		36.001568, 37.704300, 38.297909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185383, 38.390144, 37.825500>,  <36.663731, 37.913143, 38.208889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185383, 38.390144, 37.825500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.906334, 38.222160, 38.057693>,  <35.738903, 38.121372, 38.197010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.906334, 38.222160, 38.057693>,  <36.185383, 38.390144, 37.825500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906334, 38.222160, 38.057693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326488, 0.907529, 0.264190,
		-0.637753, -0.005216, -0.770223,
		-0.697621, -0.419957, 0.580483,
		35.697048, 38.096172, 38.231838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520885, 38.713467, 37.637936>,  <36.185383, 38.390144, 37.825500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520885, 38.713467, 37.637936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.456841, 38.530231, 37.987682>,  <35.418415, 38.420292, 38.197533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.456841, 38.530231, 37.987682>,  <35.520885, 38.713467, 37.637936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456841, 38.530231, 37.987682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455261, 0.820228, 0.346357,
		-0.875844, -0.342610, -0.339877,
		-0.160111, -0.458087, 0.874368,
		35.408806, 38.392807, 38.249992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835667, 38.727749, 37.720264>,  <35.520885, 38.713467, 37.637936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835667, 38.727749, 37.720264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.006321, 38.678989, 38.078732>,  <35.108715, 38.649734, 38.293812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.006321, 38.678989, 38.078732>,  <34.835667, 38.727749, 37.720264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006321, 38.678989, 38.078732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437086, 0.839689, 0.322301,
		-0.791793, -0.529209, 0.304962,
		0.426638, -0.121901, 0.896170,
		35.134312, 38.642418, 38.347584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361080, 39.068604, 38.186813>,  <34.835667, 38.727749, 37.720264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361080, 39.068604, 38.186813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.707954, 39.051640, 38.385284>,  <34.916080, 39.041462, 38.504368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.707954, 39.051640, 38.385284>,  <34.361080, 39.068604, 38.186813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707954, 39.051640, 38.385284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123713, 0.946787, 0.297136,
		-0.482376, -0.319056, 0.815792,
		0.867184, -0.042407, 0.496179,
		34.968109, 39.038918, 38.534138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259506, 39.271622, 38.922375>,  <34.361080, 39.068604, 38.186813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259506, 39.271622, 38.922375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.634319, 39.346821, 38.804642>,  <34.859207, 39.391941, 38.734001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.634319, 39.346821, 38.804642>,  <34.259506, 39.271622, 38.922375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634319, 39.346821, 38.804642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116248, 0.962596, 0.244737,
		0.329334, -0.195110, 0.923835,
		0.937030, 0.187994, -0.294334,
		34.915428, 39.403217, 38.716343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302238, 39.884865, 39.273994>,  <34.259506, 39.271622, 38.922375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302238, 39.884865, 39.273994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.633400, 39.898663, 39.050072>,  <34.832096, 39.906940, 38.915718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.633400, 39.898663, 39.050072>,  <34.302238, 39.884865, 39.273994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633400, 39.898663, 39.050072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073821, 0.996125, -0.047802,
		0.555987, 0.080901, 0.827244,
		0.827906, 0.034491, -0.559805,
		34.881771, 39.909008, 38.882130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837021, 40.323242, 39.523384>,  <34.302238, 39.884865, 39.273994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837021, 40.323242, 39.523384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.977043, 40.298061, 39.149540>,  <35.061054, 40.282955, 38.925232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.977043, 40.298061, 39.149540>,  <34.837021, 40.323242, 39.523384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977043, 40.298061, 39.149540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001694, 0.997695, -0.067831,
		0.936728, 0.025328, 0.349140,
		0.350053, -0.062948, -0.934612,
		35.082058, 40.279179, 38.869156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374016, 40.753944, 39.471523>,  <34.837021, 40.323242, 39.523384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374016, 40.753944, 39.471523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.243820, 40.717754, 39.095039>,  <35.165703, 40.696041, 38.869148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.243820, 40.717754, 39.095039>,  <35.374016, 40.753944, 39.471523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243820, 40.717754, 39.095039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049827, 0.992388, -0.112623,
		0.944231, -0.083555, -0.318506,
		-0.325491, -0.090472, -0.941207,
		35.146172, 40.690613, 38.812675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771702, 41.234150, 39.051811>,  <35.374016, 40.753944, 39.471523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771702, 41.234150, 39.051811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.428978, 41.180042, 38.852779>,  <35.223343, 41.147579, 38.733360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.428978, 41.180042, 38.852779>,  <35.771702, 41.234150, 39.051811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428978, 41.180042, 38.852779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058719, 0.933106, -0.354776,
		0.512281, -0.333192, -0.791550,
		-0.856808, -0.135266, -0.497578,
		35.171936, 41.139462, 38.703506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914909, 41.490421, 38.356632>,  <35.771702, 41.234150, 39.051811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914909, 41.490421, 38.356632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.517334, 41.481277, 38.399654>,  <35.278790, 41.475792, 38.425468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.517334, 41.481277, 38.399654>,  <35.914909, 41.490421, 38.356632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517334, 41.481277, 38.399654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054699, 0.951331, -0.303277,
		-0.095386, -0.307321, -0.946813,
		-0.993936, -0.022861, 0.107554,
		35.219154, 41.474419, 38.431919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623108, 41.886879, 37.772129>,  <35.914909, 41.490421, 38.356632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623108, 41.886879, 37.772129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.322250, 41.857124, 38.034046>,  <35.141735, 41.839272, 38.191196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.322250, 41.857124, 38.034046>,  <35.623108, 41.886879, 37.772129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322250, 41.857124, 38.034046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194148, 0.974523, -0.112304,
		-0.629756, -0.211595, -0.747419,
		-0.752140, -0.074386, 0.654792,
		35.096607, 41.834808, 38.230484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.292101, 40.770035, 41.464485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.672684, 40.727245, 41.349049>,  <28.901033, 40.701572, 41.279785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.672684, 40.727245, 41.349049>,  <28.292101, 40.770035, 41.464485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672684, 40.727245, 41.349049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211829, -0.907843, -0.361869,
		-0.223290, 0.405436, -0.886433,
		0.951457, -0.106970, -0.288595,
		28.958120, 40.695156, 41.262470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345556, 40.389275, 40.780331>,  <28.292101, 40.770035, 41.464485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345556, 40.389275, 40.780331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.716181, 40.363914, 40.928635>,  <28.938555, 40.348698, 41.017616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.716181, 40.363914, 40.928635>,  <28.345556, 40.389275, 40.780331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716181, 40.363914, 40.928635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031797, -0.968960, -0.245163,
		0.374796, 0.238947, -0.895786,
		0.926562, -0.063403, 0.370760,
		28.994150, 40.344894, 41.039864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728785, 40.084949, 40.242607>,  <28.345556, 40.389275, 40.780331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728785, 40.084949, 40.242607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.958231, 40.018764, 40.563503>,  <29.095900, 39.979053, 40.756039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.958231, 40.018764, 40.563503>,  <28.728785, 40.084949, 40.242607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958231, 40.018764, 40.563503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032891, -0.983248, -0.179278,
		0.818464, 0.076451, -0.569450,
		0.573616, -0.165463, 0.802238,
		29.130316, 39.969124, 40.804176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375128, 39.730492, 40.043911>,  <28.728785, 40.084949, 40.242607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375128, 39.730492, 40.043911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.332249, 39.628414, 40.428284>,  <29.306522, 39.567165, 40.658905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.332249, 39.628414, 40.428284>,  <29.375128, 39.730492, 40.043911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332249, 39.628414, 40.428284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176924, -0.955968, -0.234143,
		0.978369, 0.144912, 0.147627,
		-0.107197, -0.255197, 0.960928,
		29.300089, 39.551853, 40.716560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565369, 39.075241, 40.092220>,  <29.375128, 39.730492, 40.043911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565369, 39.075241, 40.092220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.437395, 39.081287, 40.471149>,  <29.360611, 39.084915, 40.698505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.437395, 39.081287, 40.471149>,  <29.565369, 39.075241, 40.092220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437395, 39.081287, 40.471149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052224, -0.998634, -0.001698,
		0.945999, -0.050016, 0.320288,
		-0.319935, 0.015121, 0.947319,
		29.341415, 39.085823, 40.755344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962975, 38.515537, 40.437202>,  <29.565369, 39.075241, 40.092220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962975, 38.515537, 40.437202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.618746, 38.598343, 40.623348>,  <29.412209, 38.648026, 40.735035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.618746, 38.598343, 40.623348>,  <29.962975, 38.515537, 40.437202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618746, 38.598343, 40.623348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340426, -0.913390, -0.223224,
		0.378845, -0.350522, 0.856511,
		-0.860573, 0.207011, 0.465360,
		29.360573, 38.660446, 40.762955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996759, 38.085461, 41.017601>,  <29.962975, 38.515537, 40.437202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996759, 38.085461, 41.017601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.616926, 38.169804, 40.924793>,  <29.389027, 38.220409, 40.869106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.616926, 38.169804, 40.924793>,  <29.996759, 38.085461, 41.017601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616926, 38.169804, 40.924793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151406, -0.956449, -0.249564,
		-0.274541, -0.201852, 0.940150,
		-0.949581, 0.210860, -0.232023,
		29.332052, 38.233063, 40.855186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667433, 37.466049, 41.236286>,  <29.996759, 38.085461, 41.017601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667433, 37.466049, 41.236286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.384514, 37.646576, 41.018646>,  <29.214762, 37.754890, 40.888062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.384514, 37.646576, 41.018646>,  <29.667433, 37.466049, 41.236286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384514, 37.646576, 41.018646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263146, -0.882458, -0.389899,
		-0.656113, -0.132597, 0.742923,
		-0.707298, 0.451315, -0.544100,
		29.172325, 37.781971, 40.855415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041506, 37.089500, 41.369141>,  <29.667433, 37.466049, 41.236286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041506, 37.089500, 41.369141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.968664, 37.273312, 41.021423>,  <28.924959, 37.383598, 40.812794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.968664, 37.273312, 41.021423>,  <29.041506, 37.089500, 41.369141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968664, 37.273312, 41.021423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395150, -0.843746, -0.363249,
		-0.900386, 0.277353, 0.335232,
		-0.182102, 0.459531, -0.869293,
		28.914034, 37.411171, 40.760635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376823, 36.806271, 41.099327>,  <29.041506, 37.089500, 41.369141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376823, 36.806271, 41.099327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.557755, 36.984623, 40.790371>,  <28.666313, 37.091633, 40.604996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.557755, 36.984623, 40.790371>,  <28.376823, 36.806271, 41.099327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557755, 36.984623, 40.790371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322571, -0.725634, -0.607786,
		-0.831474, 0.524070, -0.184395,
		0.452326, 0.445878, -0.772395,
		28.693453, 37.118385, 40.558651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833261, 37.063938, 40.681915>,  <28.376823, 36.806271, 41.099327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833261, 37.063938, 40.681915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.176794, 36.975784, 40.496944>,  <28.382914, 36.922894, 40.385960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.176794, 36.975784, 40.496944>,  <27.833261, 37.063938, 40.681915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176794, 36.975784, 40.496944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488847, -0.622382, -0.611285,
		-0.153093, 0.751048, -0.642253,
		0.858831, -0.220380, -0.462430,
		28.434443, 36.909672, 40.358215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624578, 37.000313, 40.042320>,  <27.833261, 37.063938, 40.681915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624578, 37.000313, 40.042320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.986807, 36.831165, 40.028915>,  <28.204144, 36.729679, 40.020874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.986807, 36.831165, 40.028915>,  <27.624578, 37.000313, 40.042320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986807, 36.831165, 40.028915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375819, -0.763164, -0.525682,
		0.196722, 0.488636, -0.850021,
		0.905572, -0.422867, -0.033508,
		28.258478, 36.704304, 40.018864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701107, 36.810635, 39.323071>,  <27.624578, 37.000313, 40.042320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701107, 36.810635, 39.323071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.969860, 36.576630, 39.504768>,  <28.131111, 36.436226, 39.613789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.969860, 36.576630, 39.504768>,  <27.701107, 36.810635, 39.323071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969860, 36.576630, 39.504768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238657, -0.751586, -0.614947,
		0.701154, 0.304763, -0.644595,
		0.671882, -0.585010, 0.454244,
		28.171425, 36.401127, 39.641041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180828, 36.634537, 38.793919>,  <27.701107, 36.810635, 39.323071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180828, 36.634537, 38.793919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.212439, 36.366856, 39.089466>,  <28.231405, 36.206245, 39.266792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.212439, 36.366856, 39.089466>,  <28.180828, 36.634537, 38.793919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212439, 36.366856, 39.089466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244364, -0.731575, -0.636462,
		0.966458, -0.130255, -0.221343,
		0.079027, -0.669202, 0.738866,
		28.236147, 36.166096, 39.311127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659340, 36.637981, 38.355518>,  <28.180828, 36.634537, 38.793919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659340, 36.637981, 38.355518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.752893, 36.735512, 37.979042>,  <28.809025, 36.794029, 37.753155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.752893, 36.735512, 37.979042>,  <28.659340, 36.637981, 38.355518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752893, 36.735512, 37.979042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085552, 0.969450, 0.229887,
		0.968494, 0.026754, 0.247598,
		0.233883, 0.243826, -0.941194,
		28.823059, 36.808659, 37.696682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136158, 37.181252, 38.314064>,  <28.659340, 36.637981, 38.355518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136158, 37.181252, 38.314064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.963182, 37.209103, 37.954475>,  <28.859396, 37.225811, 37.738724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.963182, 37.209103, 37.954475>,  <29.136158, 37.181252, 38.314064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963182, 37.209103, 37.954475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080988, 0.989985, 0.115631,
		0.898018, 0.122809, -0.422471,
		-0.432440, 0.069623, -0.898971,
		28.833450, 37.229988, 37.684784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430159, 37.699993, 38.005753>,  <29.136158, 37.181252, 38.314064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430159, 37.699993, 38.005753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.094038, 37.678337, 37.789989>,  <28.892365, 37.665344, 37.660530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.094038, 37.678337, 37.789989>,  <29.430159, 37.699993, 38.005753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094038, 37.678337, 37.789989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083954, 0.995993, 0.030821,
		0.535576, 0.071184, -0.841481,
		-0.840303, -0.054138, -0.539406,
		28.841948, 37.662094, 37.628166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553118, 38.167782, 37.443703>,  <29.430159, 37.699993, 38.005753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553118, 38.167782, 37.443703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.156200, 38.118637, 37.437294>,  <28.918049, 38.089149, 37.433449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.156200, 38.118637, 37.437294>,  <29.553118, 38.167782, 37.443703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156200, 38.118637, 37.437294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119504, 0.983185, -0.138081,
		0.032718, -0.135102, -0.990291,
		-0.992295, -0.122861, -0.016022,
		28.858513, 38.081779, 37.432487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274080, 38.487297, 36.790367>,  <29.553118, 38.167782, 37.443703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274080, 38.487297, 36.790367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.971188, 38.493385, 37.051556>,  <28.789452, 38.497040, 37.208267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.971188, 38.493385, 37.051556>,  <29.274080, 38.487297, 36.790367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971188, 38.493385, 37.051556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105472, 0.983758, -0.145247,
		-0.644574, -0.178856, -0.743327,
		-0.757232, 0.015222, 0.652969,
		28.744019, 38.497952, 37.247448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749420, 38.901043, 36.469940>,  <29.274080, 38.487297, 36.790367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749420, 38.901043, 36.469940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.636900, 38.861256, 36.851719>,  <28.569387, 38.837383, 37.080788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.636900, 38.861256, 36.851719>,  <28.749420, 38.901043, 36.469940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636900, 38.861256, 36.851719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310336, 0.950596, 0.007606,
		-0.908055, -0.294061, -0.298270,
		-0.281298, -0.099470, 0.954451,
		28.552511, 38.831413, 37.138054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217129, 39.307014, 36.544041>,  <28.749420, 38.901043, 36.469940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217129, 39.307014, 36.544041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.313330, 39.276161, 36.931072>,  <28.371050, 39.257648, 37.163292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.313330, 39.276161, 36.931072>,  <28.217129, 39.307014, 36.544041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313330, 39.276161, 36.931072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018709, 0.996284, 0.084072,
		-0.970468, -0.038322, 0.238167,
		0.240504, -0.077133, 0.967578,
		28.385481, 39.253021, 37.221344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782776, 39.801342, 36.877029>,  <28.217129, 39.307014, 36.544041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782776, 39.801342, 36.877029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.100603, 39.728874, 37.108833>,  <28.291300, 39.685394, 37.247917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.100603, 39.728874, 37.108833>,  <27.782776, 39.801342, 36.877029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100603, 39.728874, 37.108833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174875, 0.982287, 0.067317,
		-0.581444, 0.047855, 0.812178,
		0.794570, -0.181171, 0.579513,
		28.338974, 39.674522, 37.282688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742088, 40.272900, 37.360523>,  <27.782776, 39.801342, 36.877029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742088, 40.272900, 37.360523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.125729, 40.160137, 37.350269>,  <28.355913, 40.092480, 37.344116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.125729, 40.160137, 37.350269>,  <27.742088, 40.272900, 37.360523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125729, 40.160137, 37.350269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282782, 0.958265, 0.041975,
		0.012730, -0.047507, 0.998790,
		0.959100, -0.281906, -0.025633,
		28.413458, 40.075565, 37.342579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050587, 40.640591, 37.934456>,  <27.742088, 40.272900, 37.360523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050587, 40.640591, 37.934456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.338152, 40.543812, 37.673805>,  <28.510691, 40.485744, 37.517414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.338152, 40.543812, 37.673805>,  <28.050587, 40.640591, 37.934456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338152, 40.543812, 37.673805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405414, 0.907449, 0.110339,
		0.564624, -0.343504, 0.750469,
		0.718915, -0.241951, -0.651630,
		28.553827, 40.471226, 37.478317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706223, 40.624588, 38.310356>,  <28.050587, 40.640591, 37.934456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706223, 40.624588, 38.310356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.711077, 40.731205, 37.924858>,  <28.713989, 40.795174, 37.693558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.711077, 40.731205, 37.924858>,  <28.706223, 40.624588, 38.310356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711077, 40.731205, 37.924858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520708, 0.821137, 0.233660,
		0.853649, -0.504666, -0.128826,
		0.012137, 0.266544, -0.963746,
		28.714718, 40.811169, 37.635735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434898, 40.722309, 38.072357>,  <28.706223, 40.624588, 38.310356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434898, 40.722309, 38.072357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.191561, 40.949657, 37.850773>,  <29.045559, 41.086067, 37.717823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.191561, 40.949657, 37.850773>,  <29.434898, 40.722309, 38.072357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191561, 40.949657, 37.850773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530450, 0.810350, 0.248909,
		0.590374, -0.142426, -0.794464,
		-0.608342, 0.568373, -0.553960,
		29.009058, 41.120171, 37.684586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894613, 41.255829, 37.811737>,  <29.434898, 40.722309, 38.072357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894613, 41.255829, 37.811737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.540756, 41.410339, 37.707275>,  <29.328442, 41.503048, 37.644600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.540756, 41.410339, 37.707275>,  <29.894613, 41.255829, 37.811737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540756, 41.410339, 37.707275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351584, 0.920489, 0.170553,
		0.306269, 0.059062, -0.950111,
		-0.884640, 0.386279, -0.261152,
		29.275364, 41.526222, 37.628929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137810, 41.833302, 37.576286>,  <29.894613, 41.255829, 37.811737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137810, 41.833302, 37.576286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.746197, 41.879158, 37.643639>,  <29.511229, 41.906673, 37.684052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.746197, 41.879158, 37.643639>,  <30.137810, 41.833302, 37.576286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746197, 41.879158, 37.643639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175568, 0.894065, 0.412096,
		-0.103302, 0.433018, -0.895446,
		-0.979033, 0.114641, 0.168382,
		29.452486, 41.913551, 37.694153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665028, 42.036903, 37.155766>,  <30.137810, 41.833302, 37.576286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665028, 42.036903, 37.155766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051554, 42.094021, 37.241413>,  <31.283470, 42.128292, 37.292801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051554, 42.094021, 37.241413>,  <30.665028, 42.036903, 37.155766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051554, 42.094021, 37.241413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208945, -0.921003, -0.328778,
		0.150256, 0.362442, -0.919815,
		0.966315, 0.142790, 0.214117,
		31.341448, 42.136856, 37.305649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973221, 41.995743, 36.564053>,  <30.665028, 42.036903, 37.155766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973221, 41.995743, 36.564053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.262428, 41.908413, 36.826221>,  <31.435953, 41.856014, 36.983524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.262428, 41.908413, 36.826221>,  <30.973221, 41.995743, 36.564053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262428, 41.908413, 36.826221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006255, -0.946642, -0.322227,
		0.690801, 0.237075, -0.683073,
		0.723018, -0.218322, 0.655424,
		31.479334, 41.842915, 37.022850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485636, 41.656940, 36.259914>,  <30.973221, 41.995743, 36.564053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485636, 41.656940, 36.259914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.510056, 41.546021, 36.643452>,  <31.524708, 41.479469, 36.873573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.510056, 41.546021, 36.643452>,  <31.485636, 41.656940, 36.259914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510056, 41.546021, 36.643452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154500, -0.946431, -0.283547,
		0.986105, 0.165452, -0.014936,
		0.061050, -0.277299, 0.958842,
		31.528370, 41.462830, 36.931103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892420, 41.048763, 36.174534>,  <31.485636, 41.656940, 36.259914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892420, 41.048763, 36.174534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.784771, 41.011253, 36.557945>,  <31.720182, 40.988747, 36.787991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.784771, 41.011253, 36.557945>,  <31.892420, 41.048763, 36.174534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784771, 41.011253, 36.557945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265224, -0.963982, -0.019845,
		0.925867, 0.248885, 0.284300,
		-0.269121, -0.093777, 0.958530,
		31.704035, 40.983120, 36.845505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459908, 40.766495, 36.547581>,  <31.892420, 41.048763, 36.174534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459908, 40.766495, 36.547581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.122311, 40.682892, 36.745167>,  <31.919754, 40.632729, 36.863716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.122311, 40.682892, 36.745167>,  <32.459908, 40.766495, 36.547581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122311, 40.682892, 36.745167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252631, -0.967304, 0.022359,
		0.473140, 0.143661, 0.869195,
		-0.843988, -0.209006, 0.493963,
		31.869114, 40.620190, 36.893356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644680, 40.257137, 37.047695>,  <32.459908, 40.766495, 36.547581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644680, 40.257137, 37.047695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.246162, 40.233238, 37.022976>,  <32.007050, 40.218899, 37.008144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.246162, 40.233238, 37.022976>,  <32.644680, 40.257137, 37.047695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246162, 40.233238, 37.022976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044944, -0.974921, 0.217965,
		-0.073275, 0.214380, 0.973998,
		-0.996299, -0.059747, -0.061802,
		31.947273, 40.215313, 37.004436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458824, 39.805275, 37.563301>,  <32.644680, 40.257137, 37.047695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458824, 39.805275, 37.563301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.143887, 39.794502, 37.316933>,  <31.954924, 39.788036, 37.169113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.143887, 39.794502, 37.316933>,  <32.458824, 39.805275, 37.563301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143887, 39.794502, 37.316933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028528, -0.996383, 0.080042,
		-0.615848, 0.080592, 0.783732,
		-0.787348, -0.026935, -0.615920,
		31.907682, 39.786423, 37.132156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956877, 39.424587, 37.919277>,  <32.458824, 39.805275, 37.563301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956877, 39.424587, 37.919277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.882757, 39.413639, 37.526356>,  <31.838285, 39.407070, 37.290604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.882757, 39.413639, 37.526356>,  <31.956877, 39.424587, 37.919277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882757, 39.413639, 37.526356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021547, -0.999259, 0.031905,
		-0.982446, 0.027078, 0.184573,
		-0.185300, -0.027368, -0.982301,
		31.827168, 39.405430, 37.231667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358568, 38.898487, 37.825363>,  <31.956877, 39.424587, 37.919277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358568, 38.898487, 37.825363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.571611, 38.963184, 37.493057>,  <31.699436, 39.002003, 37.293674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.571611, 38.963184, 37.493057>,  <31.358568, 38.898487, 37.825363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571611, 38.963184, 37.493057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170689, -0.981928, -0.081745,
		-0.828973, -0.098265, -0.550588,
		0.532606, 0.161744, -0.830765,
		31.731394, 39.011707, 37.243828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196423, 38.307869, 37.478390>,  <31.358568, 38.898487, 37.825363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196423, 38.307869, 37.478390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.505316, 38.467834, 37.280914>,  <31.690651, 38.563812, 37.162430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.505316, 38.467834, 37.280914>,  <31.196423, 38.307869, 37.478390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505316, 38.467834, 37.280914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397239, -0.910346, -0.116064,
		-0.495842, -0.106484, -0.861859,
		0.772231, 0.399914, -0.493688,
		31.736984, 38.587811, 37.132809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232334, 37.848331, 36.839127>,  <31.196423, 38.307869, 37.478390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232334, 37.848331, 36.839127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.579268, 38.042797, 36.881794>,  <31.787428, 38.159477, 36.907394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.579268, 38.042797, 36.881794>,  <31.232334, 37.848331, 36.839127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579268, 38.042797, 36.881794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495498, -0.823138, -0.277353,
		-0.047033, 0.293414, -0.954828,
		0.867335, 0.486160, 0.106671,
		31.839468, 38.188644, 36.913795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594475, 37.732285, 36.247654>,  <31.232334, 37.848331, 36.839127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594475, 37.732285, 36.247654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.851727, 37.811077, 36.543648>,  <32.006077, 37.858353, 36.721245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.851727, 37.811077, 36.543648>,  <31.594475, 37.732285, 36.247654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851727, 37.811077, 36.543648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500827, -0.839215, -0.211875,
		0.579271, 0.506869, -0.638380,
		0.643131, 0.196985, 0.739986,
		32.044666, 37.870174, 36.765644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230068, 37.529778, 36.001389>,  <31.594475, 37.732285, 36.247654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230068, 37.529778, 36.001389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.280945, 37.531170, 36.398136>,  <32.311470, 37.532005, 36.636185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.280945, 37.531170, 36.398136>,  <32.230068, 37.529778, 36.001389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280945, 37.531170, 36.398136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536156, -0.841551, -0.065797,
		0.834482, 0.540167, -0.108903,
		0.127189, 0.003483, 0.991872,
		32.319103, 37.532215, 36.695698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904701, 37.296406, 36.062096>,  <32.230068, 37.529778, 36.001389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904701, 37.296406, 36.062096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727207, 37.223663, 36.413101>,  <32.620712, 37.180016, 36.623703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727207, 37.223663, 36.413101>,  <32.904701, 37.296406, 36.062096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727207, 37.223663, 36.413101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478189, -0.876190, 0.060223,
		0.757914, 0.446339, 0.475760,
		-0.443736, -0.181860, 0.877511,
		32.594086, 37.169106, 36.676353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.208784, 39.193127, 28.327671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985651, 38.873474, 28.238045>,  <28.851770, 38.681683, 28.184269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985651, 38.873474, 28.238045>,  <29.208784, 39.193127, 28.327671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985651, 38.873474, 28.238045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435720, 0.052207, 0.898567,
		-0.706378, 0.598881, -0.377321,
		-0.557834, -0.799134, -0.224066,
		28.818300, 38.633736, 28.170824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640165, 39.519341, 28.571903>,  <29.208784, 39.193127, 28.327671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640165, 39.519341, 28.571903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.602980, 39.125153, 28.515049>,  <28.580667, 38.888638, 28.480936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.602980, 39.125153, 28.515049>,  <28.640165, 39.519341, 28.571903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602980, 39.125153, 28.515049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436414, -0.087981, 0.895435,
		-0.894931, 0.145276, -0.421894,
		-0.092966, -0.985472, -0.142137,
		28.575090, 38.829510, 28.472408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054295, 39.404682, 28.956841>,  <28.640165, 39.519341, 28.571903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054295, 39.404682, 28.956841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.209621, 39.041508, 28.893764>,  <28.302816, 38.823605, 28.855919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.209621, 39.041508, 28.893764>,  <28.054295, 39.404682, 28.956841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209621, 39.041508, 28.893764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544052, -0.363987, 0.755990,
		-0.743787, -0.207771, -0.635305,
		0.388316, -0.907935, -0.157690,
		28.326117, 38.769127, 28.846458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538324, 38.948700, 29.221512>,  <28.054295, 39.404682, 28.956841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538324, 38.948700, 29.221512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.859838, 38.711189, 29.206787>,  <28.052748, 38.568684, 29.197952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.859838, 38.711189, 29.206787>,  <27.538324, 38.948700, 29.221512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859838, 38.711189, 29.206787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287382, -0.441713, 0.849883,
		-0.520903, -0.672545, -0.525684,
		0.803786, -0.593779, -0.036813,
		28.100975, 38.533058, 29.195744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326038, 38.206539, 29.348429>,  <27.538324, 38.948700, 29.221512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326038, 38.206539, 29.348429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707619, 38.255562, 29.457941>,  <27.936567, 38.284973, 29.523647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707619, 38.255562, 29.457941>,  <27.326038, 38.206539, 29.348429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707619, 38.255562, 29.457941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180036, -0.496109, 0.849390,
		0.239921, -0.859568, -0.451200,
		0.953952, 0.122555, 0.273780,
		27.993805, 38.292328, 29.540075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507812, 37.561932, 29.671911>,  <27.326038, 38.206539, 29.348429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507812, 37.561932, 29.671911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.789124, 37.820152, 29.791021>,  <27.957911, 37.975082, 29.862488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.789124, 37.820152, 29.791021>,  <27.507812, 37.561932, 29.671911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789124, 37.820152, 29.791021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008726, -0.410992, 0.911597,
		0.710864, -0.643702, -0.283408,
		0.703275, 0.645549, 0.297776,
		28.000107, 38.013817, 29.880354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005922, 37.116600, 30.021692>,  <27.507812, 37.561932, 29.671911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005922, 37.116600, 30.021692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.084290, 37.489742, 30.142614>,  <28.131310, 37.713627, 30.215168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.084290, 37.489742, 30.142614>,  <28.005922, 37.116600, 30.021692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084290, 37.489742, 30.142614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161127, -0.334715, 0.928442,
		0.967292, -0.133190, -0.215886,
		0.195919, 0.932859, 0.302307,
		28.143064, 37.769600, 30.233307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654282, 37.004780, 30.433138>,  <28.005922, 37.116600, 30.021692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654282, 37.004780, 30.433138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.461065, 37.338696, 30.538820>,  <28.345137, 37.539043, 30.602230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.461065, 37.338696, 30.538820>,  <28.654282, 37.004780, 30.433138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461065, 37.338696, 30.538820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153897, -0.216102, 0.964166,
		0.861968, 0.506390, -0.024085,
		-0.483039, 0.834787, 0.264205,
		28.316154, 37.589130, 30.618082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155807, 37.398945, 30.956451>,  <28.654282, 37.004780, 30.433138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155807, 37.398945, 30.956451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.783188, 37.525097, 31.028845>,  <28.559616, 37.600788, 31.072281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.783188, 37.525097, 31.028845>,  <29.155807, 37.398945, 30.956451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783188, 37.525097, 31.028845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061297, -0.354398, 0.933083,
		0.358414, 0.880306, 0.310807,
		-0.931548, 0.315379, 0.180982,
		28.503723, 37.619709, 31.083139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181387, 37.760704, 31.604219>,  <29.155807, 37.398945, 30.956451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181387, 37.760704, 31.604219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.799635, 37.657581, 31.543966>,  <28.570583, 37.595707, 31.507814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.799635, 37.657581, 31.543966>,  <29.181387, 37.760704, 31.604219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799635, 37.657581, 31.543966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053644, -0.348236, 0.935871,
		-0.293730, 0.901259, 0.318520,
		-0.954382, -0.257806, -0.150634,
		28.513321, 37.580238, 31.498775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782129, 38.101036, 32.154312>,  <29.181387, 37.760704, 31.604219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782129, 38.101036, 32.154312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.561069, 37.792198, 32.028809>,  <28.428434, 37.606895, 31.953506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.561069, 37.792198, 32.028809>,  <28.782129, 38.101036, 32.154312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561069, 37.792198, 32.028809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196975, -0.244797, 0.949355,
		-0.809803, 0.586462, -0.016797,
		-0.552649, -0.772099, -0.313756,
		28.395275, 37.560570, 31.934681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143122, 37.940125, 32.620995>,  <28.782129, 38.101036, 32.154312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143122, 37.940125, 32.620995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182560, 37.607624, 32.402161>,  <28.206223, 37.408123, 32.270863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182560, 37.607624, 32.402161>,  <28.143122, 37.940125, 32.620995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182560, 37.607624, 32.402161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320343, -0.547009, 0.773409,
		-0.942157, 0.099000, -0.320218,
		0.098595, -0.831252, -0.547083,
		28.212139, 37.358250, 32.238037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552452, 37.527809, 32.718632>,  <28.143122, 37.940125, 32.620995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552452, 37.527809, 32.718632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.811180, 37.253090, 32.586010>,  <27.966417, 37.088257, 32.506435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.811180, 37.253090, 32.586010>,  <27.552452, 37.527809, 32.718632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811180, 37.253090, 32.586010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326110, -0.642077, 0.693823,
		-0.689404, -0.340652, -0.639279,
		0.646819, -0.686800, -0.331560,
		28.005226, 37.047050, 32.486542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177240, 37.029480, 32.639771>,  <27.552452, 37.527809, 32.718632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177240, 37.029480, 32.639771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532690, 36.846691, 32.655407>,  <27.745960, 36.737019, 32.664791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532690, 36.846691, 32.655407>,  <27.177240, 37.029480, 32.639771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532690, 36.846691, 32.655407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399345, -0.729002, 0.555949,
		-0.225552, -0.509641, -0.830296,
		0.888623, -0.456970, 0.039094,
		27.799276, 36.709599, 32.667133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059269, 36.376514, 32.497044>,  <27.177240, 37.029480, 32.639771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059269, 36.376514, 32.497044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406641, 36.370434, 32.695274>,  <27.615065, 36.366783, 32.814213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406641, 36.370434, 32.695274>,  <27.059269, 36.376514, 32.497044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406641, 36.370434, 32.695274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389950, -0.638254, 0.663755,
		0.306210, -0.769675, -0.560210,
		0.868432, -0.015205, 0.495575,
		27.667171, 36.365871, 32.843948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254635, 35.735729, 32.540085>,  <27.059269, 36.376514, 32.497044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254635, 35.735729, 32.540085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441313, 35.911926, 32.846851>,  <27.553320, 36.017643, 33.030910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441313, 35.911926, 32.846851>,  <27.254635, 35.735729, 32.540085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441313, 35.911926, 32.846851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302610, -0.735276, 0.606462,
		0.831037, -0.515110, -0.209854,
		0.466695, 0.440489, 0.766919,
		27.581322, 36.044071, 33.076927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493801, 35.034302, 32.839886>,  <27.254635, 35.735729, 32.540085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493801, 35.034302, 32.839886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.502254, 35.347851, 33.088108>,  <27.507326, 35.535980, 33.237041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.502254, 35.347851, 33.088108>,  <27.493801, 35.034302, 32.839886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502254, 35.347851, 33.088108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442899, -0.549130, 0.708729,
		0.896322, -0.289825, 0.335572,
		0.021135, 0.783874, 0.620561,
		27.508595, 35.583012, 33.274277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616360, 34.731026, 33.481045>,  <27.493801, 35.034302, 32.839886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616360, 34.731026, 33.481045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.443478, 35.087391, 33.536861>,  <27.339748, 35.301208, 33.570351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.443478, 35.087391, 33.536861>,  <27.616360, 34.731026, 33.481045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443478, 35.087391, 33.536861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657079, -0.417113, 0.627905,
		0.617613, 0.179695, 0.765679,
		-0.432206, 0.890914, 0.139540,
		27.313816, 35.354664, 33.578724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418669, 34.724655, 34.177925>,  <27.616360, 34.731026, 33.481045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418669, 34.724655, 34.177925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206480, 35.007103, 33.990311>,  <27.079166, 35.176571, 33.877743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206480, 35.007103, 33.990311>,  <27.418669, 34.724655, 34.177925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206480, 35.007103, 33.990311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818041, -0.281323, 0.501664,
		0.222284, 0.649809, 0.726869,
		-0.530470, 0.706120, -0.469037,
		27.047338, 35.218941, 33.849598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449682, 34.076927, 34.618599>,  <27.418669, 34.724655, 34.177925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449682, 34.076927, 34.618599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.509907, 33.682690, 34.587791>,  <27.546041, 33.446148, 34.569305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.509907, 33.682690, 34.587791>,  <27.449682, 34.076927, 34.618599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509907, 33.682690, 34.587791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615180, 0.154393, -0.773121,
		0.773876, 0.069020, 0.629565,
		0.150561, -0.985596, -0.077021,
		27.555075, 33.387012, 34.564686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140944, 33.928928, 34.592918>,  <27.449682, 34.076927, 34.618599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140944, 33.928928, 34.592918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.050573, 33.565674, 34.451923>,  <27.996351, 33.347721, 34.367325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.050573, 33.565674, 34.451923>,  <28.140944, 33.928928, 34.592918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050573, 33.565674, 34.451923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698448, 0.101230, -0.708465,
		0.679064, -0.406258, 0.611414,
		-0.225926, -0.908134, -0.352492,
		27.982796, 33.293232, 34.346176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733904, 33.757179, 34.265648>,  <28.140944, 33.928928, 34.592918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733904, 33.757179, 34.265648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.491442, 33.465630, 34.138325>,  <28.345964, 33.290699, 34.061932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.491442, 33.465630, 34.138325>,  <28.733904, 33.757179, 34.265648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491442, 33.465630, 34.138325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621217, -0.183961, -0.761739,
		0.496654, -0.659472, 0.564297,
		-0.606154, -0.728873, -0.318310,
		28.309595, 33.246967, 34.042831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168255, 33.213470, 33.986443>,  <28.733904, 33.757179, 34.265648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168255, 33.213470, 33.986443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803106, 33.203976, 33.823418>,  <28.584017, 33.198280, 33.725605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803106, 33.203976, 33.823418>,  <29.168255, 33.213470, 33.986443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803106, 33.203976, 33.823418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406077, 0.050046, -0.912467,
		0.042039, -0.998465, -0.036055,
		-0.912871, -0.023718, -0.407558,
		28.529245, 33.196854, 33.701149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265722, 32.828552, 33.424984>,  <29.168255, 33.213470, 33.986443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265722, 32.828552, 33.424984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.949789, 33.066559, 33.365498>,  <28.760229, 33.209362, 33.329807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.949789, 33.066559, 33.365498>,  <29.265722, 32.828552, 33.424984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949789, 33.066559, 33.365498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194065, 0.012448, -0.980910,
		-0.581808, -0.803616, -0.125305,
		-0.789834, 0.595019, -0.148711,
		28.712839, 33.245064, 33.320885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091724, 32.631805, 32.737152>,  <29.265722, 32.828552, 33.424984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091724, 32.631805, 32.737152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.857512, 32.950954, 32.794498>,  <28.716984, 33.142445, 32.828907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.857512, 32.950954, 32.794498>,  <29.091724, 32.631805, 32.737152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857512, 32.950954, 32.794498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175982, 0.297747, -0.938284,
		-0.791316, -0.524167, -0.314752,
		-0.585533, 0.797870, 0.143368,
		28.681852, 33.190315, 32.837509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613941, 32.637741, 32.165077>,  <29.091724, 32.631805, 32.737152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613941, 32.637741, 32.165077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.643019, 33.009281, 32.310375>,  <28.660465, 33.232204, 32.397552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.643019, 33.009281, 32.310375>,  <28.613941, 32.637741, 32.165077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643019, 33.009281, 32.310375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052238, 0.367254, -0.928653,
		-0.995985, 0.048533, 0.075219,
		0.072695, 0.928854, 0.363244,
		28.664827, 33.287937, 32.419350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080956, 33.055439, 31.822346>,  <28.613941, 32.637741, 32.165077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080956, 33.055439, 31.822346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.322023, 33.327419, 31.989416>,  <28.466663, 33.490608, 32.089657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.322023, 33.327419, 31.989416>,  <28.080956, 33.055439, 31.822346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322023, 33.327419, 31.989416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048850, 0.553863, -0.831173,
		-0.796494, 0.480520, 0.367013,
		0.602670, 0.679953, 0.417675,
		28.502825, 33.531406, 32.114719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773125, 33.723354, 31.711966>,  <28.080956, 33.055439, 31.822346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773125, 33.723354, 31.711966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.169170, 33.768864, 31.744783>,  <28.406797, 33.796169, 31.764475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.169170, 33.768864, 31.744783>,  <27.773125, 33.723354, 31.711966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169170, 33.768864, 31.744783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018834, 0.687426, -0.726010,
		-0.139003, 0.717286, 0.682772,
		0.990113, 0.113777, 0.082045,
		28.466204, 33.802998, 31.769396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870382, 34.393066, 31.585054>,  <27.773125, 33.723354, 31.711966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870382, 34.393066, 31.585054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.234528, 34.237743, 31.527849>,  <28.453014, 34.144550, 31.493526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.234528, 34.237743, 31.527849>,  <27.870382, 34.393066, 31.585054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234528, 34.237743, 31.527849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089283, 0.521780, -0.848395,
		0.404060, 0.759580, 0.509679,
		0.910365, -0.388308, -0.143013,
		28.507637, 34.121250, 31.484945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257023, 34.992020, 31.337118>,  <27.870382, 34.393066, 31.585054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257023, 34.992020, 31.337118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.472645, 34.668339, 31.243645>,  <28.602018, 34.474129, 31.187561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.472645, 34.668339, 31.243645>,  <28.257023, 34.992020, 31.337118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472645, 34.668339, 31.243645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153153, 0.366990, -0.917531,
		0.828229, 0.458811, 0.321760,
		0.539056, -0.809204, -0.233683,
		28.634361, 34.425579, 31.173540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791946, 35.223423, 30.986574>,  <28.257023, 34.992020, 31.337118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791946, 35.223423, 30.986574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.820818, 34.835751, 30.892357>,  <28.838140, 34.603146, 30.835827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.820818, 34.835751, 30.892357>,  <28.791946, 35.223423, 30.986574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820818, 34.835751, 30.892357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104646, 0.242216, -0.964563,
		0.991887, 0.044973, 0.118904,
		0.072179, -0.969180, -0.235545,
		28.842472, 34.544998, 30.821693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444485, 35.110142, 30.621056>,  <28.791946, 35.223423, 30.986574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444485, 35.110142, 30.621056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217394, 34.791931, 30.536373>,  <29.081141, 34.601006, 30.485563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217394, 34.791931, 30.536373>,  <29.444485, 35.110142, 30.621056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217394, 34.791931, 30.536373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107143, 0.183575, -0.977149,
		0.816216, -0.577435, -0.018985,
		-0.567725, -0.795531, -0.211705,
		29.047077, 34.553272, 30.472862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842806, 34.682247, 30.155781>,  <29.444485, 35.110142, 30.621056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842806, 34.682247, 30.155781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.455381, 34.592316, 30.113186>,  <29.222927, 34.538357, 30.087629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.455381, 34.592316, 30.113186>,  <29.842806, 34.682247, 30.155781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455381, 34.592316, 30.113186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089299, 0.085307, -0.992345,
		0.232195, -0.970656, -0.062547,
		-0.968562, -0.224832, -0.106487,
		29.164812, 34.524868, 30.081240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855793, 34.236794, 29.589474>,  <29.842806, 34.682247, 30.155781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855793, 34.236794, 29.589474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481918, 34.375828, 29.619257>,  <29.257593, 34.459248, 29.637127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481918, 34.375828, 29.619257>,  <29.855793, 34.236794, 29.589474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481918, 34.375828, 29.619257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033268, 0.123001, -0.991849,
		-0.353915, -0.929544, -0.103404,
		-0.934686, 0.347590, 0.074456,
		29.201513, 34.480106, 29.641594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433155, 34.003788, 28.961206>,  <29.855793, 34.236794, 29.589474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433155, 34.003788, 28.961206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.190226, 34.301266, 29.072979>,  <29.044468, 34.479752, 29.140043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.190226, 34.301266, 29.072979>,  <29.433155, 34.003788, 28.961206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190226, 34.301266, 29.072979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055609, 0.311069, -0.948759,
		-0.792506, -0.591742, -0.147563,
		-0.607323, 0.743692, 0.279431,
		29.008028, 34.524372, 29.156809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928333, 34.048138, 28.540096>,  <29.433155, 34.003788, 28.961206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928333, 34.048138, 28.540096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938301, 34.423008, 28.679281>,  <28.944283, 34.647930, 28.762793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938301, 34.423008, 28.679281>,  <28.928333, 34.048138, 28.540096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938301, 34.423008, 28.679281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234711, 0.343823, -0.909228,
		-0.971746, -0.059013, 0.228533,
		0.024919, 0.937178, 0.347960,
		28.945776, 34.704163, 28.783669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372704, 34.309093, 28.317417>,  <28.928333, 34.048138, 28.540096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372704, 34.309093, 28.317417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.614925, 34.613796, 28.409525>,  <28.760260, 34.796619, 28.464790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.614925, 34.613796, 28.409525>,  <28.372704, 34.309093, 28.317417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614925, 34.613796, 28.409525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210328, 0.432266, -0.876874,
		-0.767505, 0.482565, 0.421981,
		0.605556, 0.761759, 0.230270,
		28.796593, 34.842323, 28.478605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983692, 34.919735, 28.188980>,  <28.372704, 34.309093, 28.317417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983692, 34.919735, 28.188980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.366020, 35.036831, 28.178345>,  <28.595417, 35.107090, 28.171963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.366020, 35.036831, 28.178345>,  <27.983692, 34.919735, 28.188980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366020, 35.036831, 28.178345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148519, 0.402903, -0.903112,
		-0.253665, 0.867164, 0.428581,
		0.955822, 0.292740, -0.026588,
		28.652767, 35.124653, 28.170368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975340, 35.557827, 27.770975>,  <27.983692, 34.919735, 28.188980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975340, 35.557827, 27.770975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367598, 35.486458, 27.803232>,  <28.602951, 35.443634, 27.822586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367598, 35.486458, 27.803232>,  <27.975340, 35.557827, 27.770975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367598, 35.486458, 27.803232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113018, 0.179472, -0.977250,
		0.159893, 0.967447, 0.196164,
		0.980643, -0.178425, 0.080643,
		28.661791, 35.432930, 27.827425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243010, 36.152184, 27.477047>,  <27.975340, 35.557827, 27.770975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243010, 36.152184, 27.477047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.494795, 35.841488, 27.468548>,  <28.645866, 35.655071, 27.463449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.494795, 35.841488, 27.468548>,  <28.243010, 36.152184, 27.477047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494795, 35.841488, 27.468548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165846, 0.161014, -0.972918,
		0.759123, 0.608895, 0.230172,
		0.629465, -0.776738, -0.021247,
		28.683634, 35.608467, 27.462173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788116, 36.387691, 27.158127>,  <28.243010, 36.152184, 27.477047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788116, 36.387691, 27.158127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832233, 35.992970, 27.110722>,  <28.858704, 35.756134, 27.082277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832233, 35.992970, 27.110722>,  <28.788116, 36.387691, 27.158127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832233, 35.992970, 27.110722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244072, 0.142482, -0.959233,
		0.963465, 0.076870, 0.256566,
		0.110293, -0.986808, -0.118515,
		28.865322, 35.696926, 27.075167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236698, 36.403503, 26.671713>,  <28.788116, 36.387691, 27.158127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236698, 36.403503, 26.671713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.130819, 36.019279, 26.637636>,  <29.067291, 35.788746, 26.617189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.130819, 36.019279, 26.637636>,  <29.236698, 36.403503, 26.671713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130819, 36.019279, 26.637636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407939, -0.031488, -0.912466,
		0.873797, -0.276280, 0.400185,
		-0.264697, -0.960561, -0.085191,
		29.051411, 35.731110, 26.612080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.840767, 42.250042, 37.770626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033035, 42.187626, 38.115788>,  <34.148396, 42.150177, 38.322884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033035, 42.187626, 38.115788>,  <33.840767, 42.250042, 37.770626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033035, 42.187626, 38.115788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405356, 0.833056, 0.376435,
		-0.777588, -0.530726, 0.337175,
		0.480669, -0.156036, 0.862908,
		34.177235, 42.140816, 38.374660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340988, 42.406490, 38.339943>,  <33.840767, 42.250042, 37.770626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340988, 42.406490, 38.339943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.717094, 42.458492, 38.465794>,  <33.942760, 42.489693, 38.541306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.717094, 42.458492, 38.465794>,  <33.340988, 42.406490, 38.339943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717094, 42.458492, 38.465794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237055, 0.913353, 0.331047,
		-0.244331, -0.385858, 0.889615,
		0.940269, 0.130003, 0.314630,
		33.999176, 42.497494, 38.560184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245720, 42.729404, 38.980110>,  <33.340988, 42.406490, 38.339943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245720, 42.729404, 38.980110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630230, 42.785717, 38.885345>,  <33.860935, 42.819504, 38.828487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630230, 42.785717, 38.885345>,  <33.245720, 42.729404, 38.980110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630230, 42.785717, 38.885345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053468, 0.938611, 0.340809,
		0.270348, -0.314944, 0.909792,
		0.961277, 0.140782, -0.236912,
		33.918613, 42.827953, 38.814270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605740, 42.811604, 39.609398>,  <33.245720, 42.729404, 38.980110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605740, 42.811604, 39.609398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.794540, 42.996075, 39.308861>,  <33.907822, 43.106758, 39.128536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.794540, 42.996075, 39.308861>,  <33.605740, 42.811604, 39.609398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794540, 42.996075, 39.308861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084790, 0.872056, 0.482006,
		0.877519, -0.163793, 0.450702,
		0.471986, 0.461185, -0.751357,
		33.936142, 43.134430, 39.083458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165775, 43.089527, 39.929066>,  <33.605740, 42.811604, 39.609398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165775, 43.089527, 39.929066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.107853, 43.276802, 39.580391>,  <34.073101, 43.389168, 39.371185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.107853, 43.276802, 39.580391>,  <34.165775, 43.089527, 39.929066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107853, 43.276802, 39.580391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016382, 0.879716, 0.475218,
		0.989325, 0.083094, -0.119717,
		-0.144805, 0.468184, -0.871686,
		34.064411, 43.417255, 39.318886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664669, 43.570160, 39.814373>,  <34.165775, 43.089527, 39.929066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664669, 43.570160, 39.814373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381317, 43.703175, 39.565338>,  <34.211308, 43.782982, 39.415916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381317, 43.703175, 39.565338>,  <34.664669, 43.570160, 39.814373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381317, 43.703175, 39.565338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093470, 0.918493, 0.384232,
		0.699614, 0.213989, -0.681724,
		-0.708380, 0.332535, -0.622589,
		34.168804, 43.802937, 39.378563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814686, 44.223999, 39.670689>,  <34.664669, 43.570160, 39.814373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814686, 44.223999, 39.670689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434448, 44.253345, 39.550034>,  <34.206306, 44.270954, 39.477638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434448, 44.253345, 39.550034>,  <34.814686, 44.223999, 39.670689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434448, 44.253345, 39.550034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092267, 0.860992, 0.500179,
		0.296406, 0.503299, -0.811685,
		-0.950595, 0.073364, -0.301642,
		34.149269, 44.275356, 39.459541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780869, 44.890186, 39.325306>,  <34.814686, 44.223999, 39.670689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780869, 44.890186, 39.325306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.420574, 44.767353, 39.448185>,  <34.204395, 44.693653, 39.521912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.420574, 44.767353, 39.448185>,  <34.780869, 44.890186, 39.325306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420574, 44.767353, 39.448185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157536, 0.890036, 0.427807,
		-0.404787, 0.336948, -0.850067,
		-0.900739, -0.307087, 0.307193,
		34.150352, 44.675228, 39.540344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442322, 45.426731, 39.301636>,  <34.780869, 44.890186, 39.325306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442322, 45.426731, 39.301636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184933, 45.213993, 39.521847>,  <34.030499, 45.086349, 39.653973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184933, 45.213993, 39.521847>,  <34.442322, 45.426731, 39.301636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184933, 45.213993, 39.521847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290166, 0.835004, 0.467516,
		-0.708338, 0.141092, -0.691629,
		-0.643476, -0.531847, 0.550525,
		33.991890, 45.054440, 39.687004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791218, 45.800575, 39.317177>,  <34.442322, 45.426731, 39.301636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791218, 45.800575, 39.317177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705563, 45.568474, 39.631489>,  <33.654171, 45.429211, 39.820076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705563, 45.568474, 39.631489>,  <33.791218, 45.800575, 39.317177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705563, 45.568474, 39.631489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271423, 0.808106, 0.522775,
		-0.938336, -0.101332, -0.330542,
		-0.214139, -0.580255, 0.785779,
		33.641319, 45.394398, 39.867222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154797, 45.994045, 39.635811>,  <33.791218, 45.800575, 39.317177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154797, 45.994045, 39.635811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369900, 45.794300, 39.907532>,  <33.498962, 45.674454, 40.070564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369900, 45.794300, 39.907532>,  <33.154797, 45.994045, 39.635811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369900, 45.794300, 39.907532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090424, 0.766915, 0.635346,
		-0.838238, -0.403086, 0.367259,
		0.537755, -0.499362, 0.679306,
		33.531227, 45.644493, 40.111324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947334, 46.227814, 40.268040>,  <33.154797, 45.994045, 39.635811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947334, 46.227814, 40.268040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.299507, 46.081203, 40.388378>,  <33.510811, 45.993237, 40.460579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.299507, 46.081203, 40.388378>,  <32.947334, 46.227814, 40.268040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299507, 46.081203, 40.388378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138748, 0.805808, 0.575693,
		-0.453428, -0.465115, 0.760310,
		0.880427, -0.366527, 0.300842,
		33.563637, 45.971245, 40.478630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496372, 46.799042, 40.226929>,  <32.947334, 46.227814, 40.268040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496372, 46.799042, 40.226929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158207, 46.790882, 40.440418>,  <31.955307, 46.785984, 40.568512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158207, 46.790882, 40.440418>,  <32.496372, 46.799042, 40.226929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158207, 46.790882, 40.440418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530037, -0.091156, -0.843061,
		0.065856, -0.995627, 0.066249,
		-0.845413, -0.020406, 0.533723,
		31.904583, 46.784760, 40.600536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033741, 46.317295, 39.918633>,  <32.496372, 46.799042, 40.226929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033741, 46.317295, 39.918633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.796242, 46.550617, 40.140343>,  <31.653742, 46.690609, 40.273369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.796242, 46.550617, 40.140343>,  <32.033741, 46.317295, 39.918633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796242, 46.550617, 40.140343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750578, -0.153231, -0.642770,
		-0.289998, -0.797669, 0.528796,
		-0.593745, 0.583304, 0.554276,
		31.618118, 46.725609, 40.306625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409456, 46.726551, 39.815487>,  <32.033741, 46.317295, 39.918633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409456, 46.726551, 39.815487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.298876, 46.898281, 39.471569>,  <31.232527, 47.001320, 39.265217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.298876, 46.898281, 39.471569>,  <31.409456, 46.726551, 39.815487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298876, 46.898281, 39.471569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133231, -0.903146, -0.408137,
		-0.951748, 0.001721, 0.306877,
		-0.276452, 0.429329, -0.859797,
		31.215940, 47.027081, 39.213631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013741, 46.330212, 39.545036>,  <31.409456, 46.726551, 39.815487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013741, 46.330212, 39.545036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.094965, 46.551525, 39.221889>,  <31.143700, 46.684311, 39.028000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.094965, 46.551525, 39.221889>,  <31.013741, 46.330212, 39.545036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094965, 46.551525, 39.221889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065295, -0.830871, -0.552622,
		-0.976987, 0.059465, -0.204842,
		0.203059, 0.553279, -0.807867,
		31.155882, 46.717510, 38.979530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473896, 46.221115, 39.043503>,  <31.013741, 46.330212, 39.545036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473896, 46.221115, 39.043503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791546, 46.362976, 38.846085>,  <30.982136, 46.448093, 38.727634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791546, 46.362976, 38.846085>,  <30.473896, 46.221115, 39.043503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791546, 46.362976, 38.846085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036609, -0.782689, -0.621335,
		-0.606653, 0.511486, -0.608568,
		0.794124, 0.354655, -0.493545,
		31.029783, 46.469372, 38.698021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320503, 45.966404, 38.375870>,  <30.473896, 46.221115, 39.043503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320503, 45.966404, 38.375870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.704309, 46.076221, 38.350723>,  <30.934593, 46.142113, 38.335636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.704309, 46.076221, 38.350723>,  <30.320503, 45.966404, 38.375870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704309, 46.076221, 38.350723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205805, -0.835811, -0.508983,
		-0.192283, 0.475440, -0.858478,
		0.959516, 0.274547, -0.062864,
		30.992165, 46.158585, 38.331863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495819, 45.926933, 37.696598>,  <30.320503, 45.966404, 38.375870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495819, 45.926933, 37.696598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.844639, 45.932846, 37.892277>,  <31.053930, 45.936394, 38.009682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.844639, 45.932846, 37.892277>,  <30.495819, 45.926933, 37.696598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844639, 45.932846, 37.892277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301129, -0.804150, -0.512507,
		0.385811, 0.594242, -0.705710,
		0.872050, 0.014779, 0.489193,
		31.106255, 45.937279, 38.039036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981497, 45.866299, 37.156162>,  <30.495819, 45.926933, 37.696598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981497, 45.866299, 37.156162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.161180, 45.730995, 37.486927>,  <31.268991, 45.649811, 37.685387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.161180, 45.730995, 37.486927>,  <30.981497, 45.866299, 37.156162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161180, 45.730995, 37.486927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202461, -0.862935, -0.462981,
		0.870185, 0.375393, -0.319153,
		0.449208, -0.338263, 0.826916,
		31.295942, 45.629517, 37.735001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613939, 45.467377, 36.940792>,  <30.981497, 45.866299, 37.156162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613939, 45.467377, 36.940792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.546686, 45.337906, 37.313236>,  <31.506334, 45.260223, 37.536701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.546686, 45.337906, 37.313236>,  <31.613939, 45.467377, 36.940792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546686, 45.337906, 37.313236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275705, -0.922299, -0.270835,
		0.946424, 0.211175, 0.244308,
		-0.168132, -0.323682, 0.931108,
		31.496246, 45.240803, 37.592567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140995, 45.094501, 37.061756>,  <31.613939, 45.467377, 36.940792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140995, 45.094501, 37.061756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859184, 44.975197, 37.319340>,  <31.690098, 44.903614, 37.473888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859184, 44.975197, 37.319340>,  <32.140995, 45.094501, 37.061756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859184, 44.975197, 37.319340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299020, -0.947677, -0.111786,
		0.643604, 0.113799, 0.756851,
		-0.704529, -0.298260, 0.643957,
		31.647825, 44.885719, 37.512527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580978, 44.552700, 37.470669>,  <32.140995, 45.094501, 37.061756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580978, 44.552700, 37.470669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193413, 44.503906, 37.556763>,  <31.960873, 44.474628, 37.608418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193413, 44.503906, 37.556763>,  <32.580978, 44.552700, 37.470669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193413, 44.503906, 37.556763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116329, -0.992452, -0.038803,
		0.218344, -0.012559, 0.975791,
		-0.968913, -0.121985, 0.215235,
		31.902739, 44.467312, 37.621334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509041, 44.020920, 37.937164>,  <32.580978, 44.552700, 37.470669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509041, 44.020920, 37.937164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.151123, 44.030037, 37.758804>,  <31.936373, 44.035507, 37.651787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.151123, 44.030037, 37.758804>,  <32.509041, 44.020920, 37.937164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151123, 44.030037, 37.758804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003992, -0.998248, -0.059028,
		-0.446468, -0.054598, 0.893133,
		-0.894791, 0.022789, -0.445904,
		31.882687, 44.036873, 37.625034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167194, 43.462757, 38.334709>,  <32.509041, 44.020920, 37.937164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167194, 43.462757, 38.334709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.952440, 43.551033, 38.008995>,  <31.823589, 43.604000, 37.813568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.952440, 43.551033, 38.008995>,  <32.167194, 43.462757, 38.334709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952440, 43.551033, 38.008995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196853, -0.971308, -0.133455,
		-0.820370, 0.088644, 0.564920,
		-0.536881, 0.220688, -0.814282,
		31.791376, 43.617241, 37.764709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604841, 43.117908, 38.451103>,  <32.167194, 43.462757, 38.334709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604841, 43.117908, 38.451103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.591625, 43.198570, 38.059544>,  <31.583696, 43.246967, 37.824608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.591625, 43.198570, 38.059544>,  <31.604841, 43.117908, 38.451103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591625, 43.198570, 38.059544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218087, -0.957288, -0.189837,
		-0.975370, 0.207214, 0.075604,
		-0.033037, 0.201650, -0.978900,
		31.581715, 43.259064, 37.765873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975346, 42.980453, 38.172100>,  <31.604841, 43.117908, 38.451103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975346, 42.980453, 38.172100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.244822, 42.948879, 37.878185>,  <31.406507, 42.929935, 37.701836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.244822, 42.948879, 37.878185>,  <30.975346, 42.980453, 38.172100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244822, 42.948879, 37.878185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298127, -0.938812, -0.172488,
		-0.676211, 0.335263, -0.656001,
		0.673691, -0.078933, -0.734786,
		31.446928, 42.925198, 37.657749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663692, 42.395359, 37.833721>,  <30.975346, 42.980453, 38.172100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663692, 42.395359, 37.833721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.036942, 42.454643, 37.702682>,  <31.260891, 42.490215, 37.624062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.036942, 42.454643, 37.702682>,  <30.663692, 42.395359, 37.833721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036942, 42.454643, 37.702682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134671, -0.988836, -0.063778,
		-0.333388, 0.015396, -0.942664,
		0.933122, 0.148212, -0.327593,
		31.316877, 42.499107, 37.604404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980013, 42.562084, 37.423500>,  <30.663692, 42.395359, 37.833721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980013, 42.562084, 37.423500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.667673, 42.428940, 37.634964>,  <29.480270, 42.349052, 37.761841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.667673, 42.428940, 37.634964>,  <29.980013, 42.562084, 37.423500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667673, 42.428940, 37.634964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008817, 0.840279, 0.542082,
		-0.624658, 0.427945, -0.653196,
		-0.780849, -0.332857, 0.528661,
		29.433418, 42.329082, 37.793564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471474, 43.239487, 37.515919>,  <29.980013, 42.562084, 37.423500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471474, 43.239487, 37.515919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.422726, 42.969284, 37.806805>,  <29.393476, 42.807163, 37.981335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.422726, 42.969284, 37.806805>,  <29.471474, 43.239487, 37.515919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422726, 42.969284, 37.806805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107761, 0.737350, 0.666861,
		-0.986679, 0.002905, -0.162655,
		-0.121871, -0.675505, 0.727214,
		29.386164, 42.766632, 38.024967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910070, 43.468082, 37.862087>,  <29.471474, 43.239487, 37.515919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910070, 43.468082, 37.862087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.093704, 43.216034, 38.112587>,  <29.203884, 43.064804, 38.262886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.093704, 43.216034, 38.112587>,  <28.910070, 43.468082, 37.862087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093704, 43.216034, 38.112587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062899, 0.726210, 0.684589,
		-0.886163, -0.274894, 0.373026,
		0.459085, -0.630121, 0.626250,
		29.231430, 43.026997, 38.300461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533756, 43.425915, 38.505955>,  <28.910070, 43.468082, 37.862087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533756, 43.425915, 38.505955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.903061, 43.310684, 38.607628>,  <29.124643, 43.241547, 38.668633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.903061, 43.310684, 38.607628>,  <28.533756, 43.425915, 38.505955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903061, 43.310684, 38.607628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003350, 0.655556, 0.755139,
		-0.384163, -0.698040, 0.604283,
		0.923259, -0.288072, 0.254179,
		29.180038, 43.224262, 38.683880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442598, 43.152409, 39.177818>,  <28.533756, 43.425915, 38.505955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442598, 43.152409, 39.177818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.823174, 43.262035, 39.121746>,  <29.051519, 43.327812, 39.088104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.823174, 43.262035, 39.121746>,  <28.442598, 43.152409, 39.177818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823174, 43.262035, 39.121746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135401, 0.781527, 0.609001,
		0.276460, -0.560448, 0.780685,
		0.951439, 0.274070, -0.140176,
		29.108604, 43.344257, 39.079693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686707, 43.435844, 39.748142>,  <28.442598, 43.152409, 39.177818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686707, 43.435844, 39.748142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.967875, 43.609268, 39.522602>,  <29.136576, 43.713322, 39.387276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.967875, 43.609268, 39.522602>,  <28.686707, 43.435844, 39.748142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967875, 43.609268, 39.522602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016703, 0.802586, 0.596302,
		0.711074, -0.409734, 0.571395,
		0.702919, 0.433559, -0.563855,
		29.178749, 43.739334, 39.353447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226439, 43.801689, 40.248856>,  <28.686707, 43.435844, 39.748142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226439, 43.801689, 40.248856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.291061, 43.956898, 39.885902>,  <29.329834, 44.050022, 39.668133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.291061, 43.956898, 39.885902>,  <29.226439, 43.801689, 40.248856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291061, 43.956898, 39.885902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174243, 0.893798, 0.413236,
		0.971359, -0.224865, 0.076788,
		0.161555, 0.388021, -0.907380,
		29.339527, 44.073303, 39.613689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817957, 43.586758, 40.734886>,  <29.226439, 43.801689, 40.248856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817957, 43.586758, 40.734886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.795002, 43.478298, 41.119217>,  <29.781229, 43.413223, 41.349815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.795002, 43.478298, 41.119217>,  <29.817957, 43.586758, 40.734886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795002, 43.478298, 41.119217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092183, -0.956859, -0.275540,
		0.994087, -0.104384, 0.029916,
		-0.057388, -0.271153, 0.960824,
		29.777786, 43.396954, 41.407463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130081, 42.926517, 40.729469>,  <29.817957, 43.586758, 40.734886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130081, 42.926517, 40.729469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.943571, 42.942680, 41.082954>,  <29.831665, 42.952377, 41.295048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.943571, 42.942680, 41.082954>,  <30.130081, 42.926517, 40.729469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943571, 42.942680, 41.082954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166972, -0.985021, -0.043060,
		0.868738, -0.167634, 0.466040,
		-0.466277, 0.040408, 0.883715,
		29.803688, 42.954803, 41.348068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459625, 42.400635, 41.196781>,  <30.130081, 42.926517, 40.729469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459625, 42.400635, 41.196781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.087189, 42.475708, 41.321903>,  <29.863728, 42.520752, 41.396976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.087189, 42.475708, 41.321903>,  <30.459625, 42.400635, 41.196781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087189, 42.475708, 41.321903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197053, -0.980392, 0.001683,
		0.306988, -0.060072, 0.949816,
		-0.931090, 0.187680, 0.312806,
		29.807861, 42.532013, 41.415745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380444, 41.960167, 41.683006>,  <30.459625, 42.400635, 41.196781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380444, 41.960167, 41.683006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.007530, 42.043308, 41.564587>,  <29.783783, 42.093193, 41.493534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.007530, 42.043308, 41.564587>,  <30.380444, 41.960167, 41.683006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007530, 42.043308, 41.564587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265501, -0.949044, 0.169780,
		-0.245679, 0.236886, 0.939961,
		-0.932283, 0.207849, -0.296054,
		29.727846, 42.105663, 41.475769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913013, 41.705399, 42.144093>,  <30.380444, 41.960167, 41.683006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913013, 41.705399, 42.144093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.702766, 41.740921, 41.805664>,  <29.576618, 41.762234, 41.602608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.702766, 41.740921, 41.805664>,  <29.913013, 41.705399, 42.144093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702766, 41.740921, 41.805664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398436, -0.904414, 0.152594,
		-0.751650, 0.417313, 0.510758,
		-0.525616, 0.088807, -0.846074,
		29.545082, 41.767563, 41.551842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325325, 41.195984, 42.313694>,  <29.913013, 41.705399, 42.144093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325325, 41.195984, 42.313694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.313375, 41.321861, 41.934204>,  <29.306206, 41.397388, 41.706512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.313375, 41.321861, 41.934204>,  <29.325325, 41.195984, 42.313694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313375, 41.321861, 41.934204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253379, -0.920528, -0.297366,
		-0.966906, 0.231503, 0.107235,
		-0.029872, 0.314696, -0.948722,
		29.304415, 41.416271, 41.649586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654089, 41.068340, 42.078983>,  <29.325325, 41.195984, 42.313694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654089, 41.068340, 42.078983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.905661, 41.076202, 41.768097>,  <29.056604, 41.080917, 41.581566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.905661, 41.076202, 41.768097>,  <28.654089, 41.068340, 42.078983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905661, 41.076202, 41.768097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123250, -0.984519, -0.124628,
		-0.767630, 0.174174, -0.616772,
		0.628930, 0.019652, -0.777213,
		29.094339, 41.082096, 41.534931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.902390, 45.442238, 43.203400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.614597, 45.164482, 43.198032>,  <34.441921, 44.997829, 43.194813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.614597, 45.164482, 43.198032>,  <34.902390, 45.442238, 43.203400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614597, 45.164482, 43.198032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653512, -0.683414, 0.325373,
		-0.235102, 0.225332, 0.945490,
		-0.719478, -0.694385, -0.013415,
		34.398754, 44.956165, 43.194008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435810, 45.271744, 42.576138>,  <34.902390, 45.442238, 43.203400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435810, 45.271744, 42.576138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.739780, 45.162041, 42.340408>,  <34.922161, 45.096218, 42.198971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.739780, 45.162041, 42.340408>,  <34.435810, 45.271744, 42.576138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739780, 45.162041, 42.340408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158679, -0.957471, 0.240977,
		-0.630349, -0.089611, -0.771123,
		0.759922, -0.274260, -0.589321,
		34.967758, 45.079762, 42.163612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120617, 44.672260, 42.207752>,  <34.435810, 45.271744, 42.576138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120617, 44.672260, 42.207752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.514309, 44.645905, 42.142086>,  <34.750523, 44.630093, 42.102688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.514309, 44.645905, 42.142086>,  <34.120617, 44.672260, 42.207752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514309, 44.645905, 42.142086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058070, -0.996959, 0.051969,
		-0.167089, -0.041616, -0.985063,
		0.984230, -0.065886, -0.164165,
		34.809578, 44.626141, 42.092838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218777, 44.227150, 41.604435>,  <34.120617, 44.672260, 42.207752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218777, 44.227150, 41.604435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.535328, 44.221607, 41.848904>,  <34.725258, 44.218281, 41.995583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.535328, 44.221607, 41.848904>,  <34.218777, 44.227150, 41.604435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535328, 44.221607, 41.848904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136203, -0.970618, -0.198369,
		0.595960, 0.240228, -0.766239,
		0.791379, -0.013857, 0.611169,
		34.772743, 44.217449, 42.032253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874115, 44.001209, 41.223743>,  <34.218777, 44.227150, 41.604435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874115, 44.001209, 41.223743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.922817, 43.931087, 41.614525>,  <34.952038, 43.889015, 41.848995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.922817, 43.931087, 41.614525>,  <34.874115, 44.001209, 41.223743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922817, 43.931087, 41.614525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136952, -0.971897, -0.191469,
		0.983067, 0.157108, -0.094321,
		0.121752, -0.175309, 0.976956,
		34.959343, 43.878494, 41.907612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280743, 43.348957, 41.288097>,  <34.874115, 44.001209, 41.223743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280743, 43.348957, 41.288097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.173012, 43.409405, 41.668545>,  <35.108376, 43.445671, 41.896812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.173012, 43.409405, 41.668545>,  <35.280743, 43.348957, 41.288097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173012, 43.409405, 41.668545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001829, -0.987530, 0.157420,
		0.963048, 0.044137, 0.265688,
		-0.269323, 0.151117, 0.951120,
		35.092216, 43.454739, 41.953880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819412, 42.989006, 41.569111>,  <35.280743, 43.348957, 41.288097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819412, 42.989006, 41.569111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.536980, 43.030575, 41.849297>,  <35.367519, 43.055515, 42.017406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.536980, 43.030575, 41.849297>,  <35.819412, 42.989006, 41.569111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536980, 43.030575, 41.849297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167067, -0.936803, 0.307391,
		0.688141, 0.334068, 0.644097,
		-0.706082, 0.103921, 0.700464,
		35.325153, 43.061752, 42.059437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092583, 42.811016, 42.197140>,  <35.819412, 42.989006, 41.569111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092583, 42.811016, 42.197140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.698406, 42.755512, 42.236435>,  <35.461899, 42.722210, 42.260014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.698406, 42.755512, 42.236435>,  <36.092583, 42.811016, 42.197140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698406, 42.755512, 42.236435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166213, -0.907847, 0.384951,
		0.035770, 0.395676, 0.917693,
		-0.985441, -0.138762, 0.098240,
		35.402775, 42.713882, 42.265907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034504, 42.629498, 42.816101>,  <36.092583, 42.811016, 42.197140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034504, 42.629498, 42.816101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.692001, 42.492561, 42.661373>,  <35.486500, 42.410400, 42.568539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.692001, 42.492561, 42.661373>,  <36.034504, 42.629498, 42.816101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692001, 42.492561, 42.661373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175758, -0.897252, 0.405028,
		-0.485730, 0.278821, 0.828447,
		-0.856256, -0.342341, -0.386817,
		35.435123, 42.389858, 42.545326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928368, 42.049114, 43.147621>,  <36.034504, 42.629498, 42.816101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928368, 42.049114, 43.147621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.652977, 41.988316, 42.863960>,  <35.487743, 41.951836, 42.693764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.652977, 41.988316, 42.863960>,  <35.928368, 42.049114, 43.147621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652977, 41.988316, 42.863960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101590, -0.988364, 0.113208,
		-0.718106, 0.005899, 0.695908,
		-0.688478, -0.151993, -0.709151,
		35.446434, 41.942719, 42.651215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563637, 41.560638, 43.419167>,  <35.928368, 42.049114, 43.147621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563637, 41.560638, 43.419167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.494659, 41.559914, 43.025158>,  <35.453274, 41.559479, 42.788754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.494659, 41.559914, 43.025158>,  <35.563637, 41.560638, 43.419167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494659, 41.559914, 43.025158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000656, -0.999998, 0.001728,
		-0.985019, -0.000348, 0.172444,
		-0.172443, -0.001816, -0.985018,
		35.442928, 41.559368, 42.729652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009708, 41.064575, 43.290455>,  <35.563637, 41.560638, 43.419167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009708, 41.064575, 43.290455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.205437, 41.107094, 42.944214>,  <35.322872, 41.132607, 42.736469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.205437, 41.107094, 42.944214>,  <35.009708, 41.064575, 43.290455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205437, 41.107094, 42.944214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070182, -0.994125, -0.082406,
		-0.869275, -0.020427, -0.493906,
		0.489321, 0.106297, -0.865602,
		35.352234, 41.138985, 42.684532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326031, 41.241196, 43.125362>,  <35.009708, 41.064575, 43.290455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326031, 41.241196, 43.125362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.956367, 41.142311, 43.241852>,  <33.734570, 41.082981, 43.311745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.956367, 41.142311, 43.241852>,  <34.326031, 41.241196, 43.125362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956367, 41.142311, 43.241852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244787, 0.968516, 0.045336,
		-0.293262, -0.029389, -0.955580,
		-0.924163, -0.247209, 0.291223,
		33.679119, 41.068150, 43.329220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071503, 41.801376, 43.130405>,  <34.326031, 41.241196, 43.125362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071503, 41.801376, 43.130405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.737228, 41.613743, 43.244656>,  <33.536663, 41.501163, 43.313206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.737228, 41.613743, 43.244656>,  <34.071503, 41.801376, 43.130405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737228, 41.613743, 43.244656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418164, 0.880626, 0.222791,
		-0.356041, 0.066744, -0.932084,
		-0.835687, -0.469087, 0.285630,
		33.486523, 41.473015, 43.330345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507309, 41.978722, 42.609840>,  <34.071503, 41.801376, 43.130405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507309, 41.978722, 42.609840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.387886, 41.892475, 42.981728>,  <33.316231, 41.840729, 43.204861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.387886, 41.892475, 42.981728>,  <33.507309, 41.978722, 42.609840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387886, 41.892475, 42.981728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422920, 0.903169, 0.073646,
		-0.855571, -0.371208, -0.360836,
		-0.298558, -0.215614, 0.929717,
		33.298317, 41.827789, 43.260643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739841, 42.119614, 42.671131>,  <33.507309, 41.978722, 42.609840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739841, 42.119614, 42.671131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.894001, 42.152275, 43.038784>,  <32.986496, 42.171871, 43.259377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.894001, 42.152275, 43.038784>,  <32.739841, 42.119614, 42.671131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894001, 42.152275, 43.038784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422012, 0.901399, 0.096878,
		-0.820594, -0.425221, 0.381855,
		0.385398, 0.081650, 0.919131,
		33.009621, 42.176769, 43.314522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132118, 42.326710, 43.080471>,  <32.739841, 42.119614, 42.671131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132118, 42.326710, 43.080471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.477249, 42.405899, 43.266518>,  <32.684326, 42.453415, 43.378147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.477249, 42.405899, 43.266518>,  <32.132118, 42.326710, 43.080471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477249, 42.405899, 43.266518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380750, 0.859758, 0.340360,
		-0.332507, -0.470766, 0.817202,
		0.862826, 0.197977, 0.465120,
		32.736095, 42.465294, 43.406052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820028, 42.634254, 43.714233>,  <32.132118, 42.326710, 43.080471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820028, 42.634254, 43.714233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.209866, 42.721493, 43.693832>,  <32.443768, 42.773838, 43.681591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.209866, 42.721493, 43.693832>,  <31.820028, 42.634254, 43.714233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209866, 42.721493, 43.693832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199003, 0.947654, 0.249701,
		0.102794, -0.233206, 0.966979,
		0.974593, 0.218100, -0.051004,
		32.502243, 42.786922, 43.678532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920685, 42.903446, 44.298553>,  <31.820028, 42.634254, 43.714233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920685, 42.903446, 44.298553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.236889, 43.032421, 44.090275>,  <32.426613, 43.109806, 43.965305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.236889, 43.032421, 44.090275>,  <31.920685, 42.903446, 44.298553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236889, 43.032421, 44.090275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110744, 0.911432, 0.396266,
		0.602353, -0.255588, 0.756205,
		0.790511, 0.322437, -0.520699,
		32.474041, 43.129150, 43.934067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252323, 43.372250, 44.784985>,  <31.920685, 42.903446, 44.298553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252323, 43.372250, 44.784985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.418320, 43.478298, 44.436848>,  <32.517918, 43.541927, 44.227966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.418320, 43.478298, 44.436848>,  <32.252323, 43.372250, 44.784985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418320, 43.478298, 44.436848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118225, 0.964204, 0.237346,
		0.902113, 0.004401, 0.431477,
		0.414988, 0.265125, -0.870342,
		32.542816, 43.557835, 44.175747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690083, 43.851955, 44.938526>,  <32.252323, 43.372250, 44.784985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690083, 43.851955, 44.938526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.587200, 43.926590, 44.559258>,  <32.525471, 43.971371, 44.331696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.587200, 43.926590, 44.559258>,  <32.690083, 43.851955, 44.938526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587200, 43.926590, 44.559258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088042, 0.972577, 0.215273,
		0.962338, 0.138848, -0.233724,
		-0.257204, 0.186587, -0.948172,
		32.510040, 43.982567, 44.274807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166603, 44.346127, 44.687176>,  <32.690083, 43.851955, 44.938526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166603, 44.346127, 44.687176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.845482, 44.375263, 44.450466>,  <32.652809, 44.392746, 44.308441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.845482, 44.375263, 44.450466>,  <33.166603, 44.346127, 44.687176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845482, 44.375263, 44.450466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007467, 0.993661, 0.112173,
		0.596194, 0.085634, -0.798260,
		-0.802805, 0.072837, -0.591775,
		32.604641, 44.397114, 44.272934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197857, 44.980259, 44.504951>,  <33.166603, 44.346127, 44.687176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197857, 44.980259, 44.504951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.839558, 44.883945, 44.355469>,  <32.624577, 44.826157, 44.265781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.839558, 44.883945, 44.355469>,  <33.197857, 44.980259, 44.504951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839558, 44.883945, 44.355469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329769, 0.923635, 0.195325,
		0.298133, 0.298197, -0.906750,
		-0.895751, -0.240785, -0.373702,
		32.570831, 44.811710, 44.243359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006187, 45.530487, 43.990528>,  <33.197857, 44.980259, 44.504951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006187, 45.530487, 43.990528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.673515, 45.351303, 44.121761>,  <32.473911, 45.243793, 44.200500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.673515, 45.351303, 44.121761>,  <33.006187, 45.530487, 43.990528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673515, 45.351303, 44.121761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428346, 0.893585, 0.134257,
		-0.353313, -0.028874, -0.935060,
		-0.831679, -0.447964, 0.328083,
		32.424011, 45.216915, 44.220184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463562, 45.745434, 43.547306>,  <33.006187, 45.530487, 43.990528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463562, 45.745434, 43.547306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.282452, 45.623672, 43.882526>,  <32.173786, 45.550617, 44.083660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.282452, 45.623672, 43.882526>,  <32.463562, 45.745434, 43.547306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282452, 45.623672, 43.882526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514411, 0.856896, 0.033321,
		-0.728266, -0.416016, -0.544573,
		-0.452780, -0.304401, 0.838051,
		32.146618, 45.532352, 44.133942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906408, 45.871346, 43.352501>,  <32.463562, 45.745434, 43.547306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906408, 45.871346, 43.352501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.884279, 45.855740, 43.751583>,  <31.871002, 45.846378, 43.991032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.884279, 45.855740, 43.751583>,  <31.906408, 45.871346, 43.352501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884279, 45.855740, 43.751583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530170, 0.847883, 0.003755,
		-0.846085, -0.528746, -0.067588,
		-0.055321, -0.039010, 0.997706,
		31.867683, 45.844036, 44.050896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807657, 45.215420, 43.104122>,  <31.906408, 45.871346, 43.352501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807657, 45.215420, 43.104122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.505070, 45.428829, 42.952801>,  <31.323517, 45.556873, 42.862007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.505070, 45.428829, 42.952801>,  <31.807657, 45.215420, 43.104122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505070, 45.428829, 42.952801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485963, -0.845620, -0.220830,
		-0.437718, 0.016791, 0.898955,
		-0.756467, 0.533521, -0.378303,
		31.278130, 45.588886, 42.839310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212856, 44.985935, 43.404682>,  <31.807657, 45.215420, 43.104122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212856, 44.985935, 43.404682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.101061, 45.138733, 43.052326>,  <31.033983, 45.230412, 42.840912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.101061, 45.138733, 43.052326>,  <31.212856, 44.985935, 43.404682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101061, 45.138733, 43.052326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364924, -0.890864, -0.270541,
		-0.888095, 0.245841, 0.388393,
		-0.279495, 0.381999, -0.880885,
		31.017214, 45.253334, 42.788059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860584, 44.493382, 43.215015>,  <31.212856, 44.985935, 43.404682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860584, 44.493382, 43.215015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.834721, 44.711548, 42.880749>,  <30.819202, 44.842449, 42.680191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.834721, 44.711548, 42.880749>,  <30.860584, 44.493382, 43.215015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834721, 44.711548, 42.880749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594994, -0.693354, -0.406500,
		-0.801125, 0.470932, 0.369353,
		-0.064659, 0.545420, -0.835665,
		30.815323, 44.875175, 42.630051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144741, 44.645855, 43.150726>,  <30.860584, 44.493382, 43.215015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144741, 44.645855, 43.150726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.329847, 44.647022, 42.796135>,  <30.440910, 44.647720, 42.583382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.329847, 44.647022, 42.796135>,  <30.144741, 44.645855, 43.150726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329847, 44.647022, 42.796135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646496, -0.683099, -0.339733,
		-0.606542, 0.730320, -0.314230,
		0.462764, 0.002914, -0.886477,
		30.468676, 44.647896, 42.530193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652388, 44.504890, 42.616234>,  <30.144741, 44.645855, 43.150726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652388, 44.504890, 42.616234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.971798, 44.384182, 42.407894>,  <30.163445, 44.311756, 42.282890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.971798, 44.384182, 42.407894>,  <29.652388, 44.504890, 42.616234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971798, 44.384182, 42.407894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550520, -0.716087, -0.429123,
		-0.243479, 0.629407, -0.737947,
		0.798527, -0.301772, -0.520854,
		30.211355, 44.293652, 42.251637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610203, 44.581081, 41.753815>,  <29.652388, 44.504890, 42.616234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610203, 44.581081, 41.753815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.850996, 44.282173, 41.866390>,  <29.995472, 44.102829, 41.933933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.850996, 44.282173, 41.866390>,  <29.610203, 44.581081, 41.753815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850996, 44.282173, 41.866390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609143, -0.657641, -0.443230,
		0.516295, 0.095382, -0.851083,
		0.601983, -0.747269, 0.281435,
		30.031591, 44.057991, 41.950821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480249, 44.188164, 41.141357>,  <29.610203, 44.581081, 41.753815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480249, 44.188164, 41.141357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.677568, 43.953026, 41.397823>,  <29.795959, 43.811943, 41.551704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.677568, 43.953026, 41.397823>,  <29.480249, 44.188164, 41.141357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677568, 43.953026, 41.397823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392976, -0.808190, -0.438634,
		0.776032, -0.035585, -0.629688,
		0.493299, -0.587846, 0.641166,
		29.825558, 43.776672, 41.590172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565781, 44.430645, 40.435646>,  <29.480249, 44.188164, 41.141357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565781, 44.430645, 40.435646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.473104, 44.482475, 40.049999>,  <29.417498, 44.513573, 39.818611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.473104, 44.482475, 40.049999>,  <29.565781, 44.430645, 40.435646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473104, 44.482475, 40.049999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075484, 0.985707, 0.150614,
		0.969856, 0.107671, -0.218599,
		-0.231692, 0.129573, -0.964121,
		29.403597, 44.521347, 39.760761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951145, 45.015965, 40.227612>,  <29.565781, 44.430645, 40.435646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951145, 45.015965, 40.227612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.649212, 44.956688, 39.972031>,  <29.468052, 44.921124, 39.818680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.649212, 44.956688, 39.972031>,  <29.951145, 45.015965, 40.227612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649212, 44.956688, 39.972031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167579, 0.985385, -0.030563,
		0.634146, 0.084006, -0.768636,
		-0.754835, -0.148189, -0.638955,
		29.422762, 44.912231, 39.780342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072624, 45.472534, 39.696270>,  <29.951145, 45.015965, 40.227612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072624, 45.472534, 39.696270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.683958, 45.378407, 39.705173>,  <29.450758, 45.321930, 39.710514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.683958, 45.378407, 39.705173>,  <30.072624, 45.472534, 39.696270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683958, 45.378407, 39.705173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236367, 0.967711, -0.087555,
		-0.000939, -0.090335, -0.995911,
		-0.971663, -0.235318, 0.022260,
		29.392460, 45.307812, 39.711853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766624, 45.627331, 39.060314>,  <30.072624, 45.472534, 39.696270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766624, 45.627331, 39.060314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.448122, 45.642799, 39.301804>,  <29.257021, 45.652081, 39.446697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.448122, 45.642799, 39.301804>,  <29.766624, 45.627331, 39.060314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448122, 45.642799, 39.301804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041626, 0.992087, -0.118454,
		-0.603524, -0.119451, -0.788347,
		-0.796258, 0.038674, 0.603721,
		29.209246, 45.654400, 39.482922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292881, 45.965042, 38.716892>,  <29.766624, 45.627331, 39.060314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292881, 45.965042, 38.716892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.142426, 46.001045, 39.085766>,  <29.052153, 46.022648, 39.307091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.142426, 46.001045, 39.085766>,  <29.292881, 45.965042, 38.716892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142426, 46.001045, 39.085766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265718, 0.942988, -0.200419,
		-0.887645, -0.320426, -0.330777,
		-0.376138, 0.090007, 0.922182,
		29.029585, 46.028046, 39.362419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624382, 46.151455, 38.651127>,  <29.292881, 45.965042, 38.716892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624382, 46.151455, 38.651127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.740379, 46.263783, 39.017086>,  <28.809978, 46.331181, 39.236664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.740379, 46.263783, 39.017086>,  <28.624382, 46.151455, 38.651127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740379, 46.263783, 39.017086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261606, 0.942831, -0.206475,
		-0.920579, -0.179467, 0.346881,
		0.289994, 0.280822, 0.914900,
		28.827377, 46.348030, 39.291557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251400, 46.653309, 38.761955>,  <28.624382, 46.151455, 38.651127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251400, 46.653309, 38.761955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.510483, 46.727276, 39.057598>,  <28.665934, 46.771656, 39.234985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.510483, 46.727276, 39.057598>,  <28.251400, 46.653309, 38.761955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510483, 46.727276, 39.057598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168008, 0.980885, -0.098173,
		-0.743133, -0.060588, 0.666395,
		0.647709, 0.184915, 0.739107,
		28.704796, 46.782749, 39.279331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897409, 47.174744, 39.320278>,  <28.251400, 46.653309, 38.761955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897409, 47.174744, 39.320278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.289207, 47.230953, 39.378021>,  <28.524286, 47.264679, 39.412666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.289207, 47.230953, 39.378021>,  <27.897409, 47.174744, 39.320278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289207, 47.230953, 39.378021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170495, 0.959926, 0.222424,
		-0.107314, -0.242475, 0.964204,
		0.979497, 0.140523, 0.144354,
		28.583057, 47.273109, 39.421326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970068, 47.815098, 39.681400>,  <27.897409, 47.174744, 39.320278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970068, 47.815098, 39.681400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.341459, 47.759315, 39.543716>,  <28.564293, 47.725845, 39.461105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.341459, 47.759315, 39.543716>,  <27.970068, 47.815098, 39.681400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341459, 47.759315, 39.543716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158437, 0.986986, 0.027492,
		0.335900, -0.080062, 0.938489,
		0.928477, -0.139457, -0.344214,
		28.620003, 47.717480, 39.440453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.074873, 32.424500, 36.231445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425863, 32.597599, 36.148727>,  <30.636457, 32.701458, 36.099098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425863, 32.597599, 36.148727>,  <30.074873, 32.424500, 36.231445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425863, 32.597599, 36.148727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136823, 0.639108, 0.756849,
		0.459689, -0.635823, 0.620012,
		0.877477, 0.432747, -0.206795,
		30.689106, 32.727425, 36.086689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371141, 32.645103, 36.874859>,  <30.074873, 32.424500, 36.231445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371141, 32.645103, 36.874859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522953, 32.885220, 36.593258>,  <30.614040, 33.029289, 36.424297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522953, 32.885220, 36.593258>,  <30.371141, 32.645103, 36.874859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522953, 32.885220, 36.593258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218755, 0.797580, 0.562150,
		0.898946, -0.059349, 0.434021,
		0.379529, 0.600286, -0.703999,
		30.636812, 33.065304, 36.382057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797251, 33.160515, 37.331806>,  <30.371141, 32.645103, 36.874859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797251, 33.160515, 37.331806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758087, 33.337032, 36.975002>,  <30.734589, 33.442944, 36.760921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758087, 33.337032, 36.975002>,  <30.797251, 33.160515, 37.331806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758087, 33.337032, 36.975002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175963, 0.874516, 0.451951,
		0.979516, 0.201210, -0.007971,
		-0.097908, 0.441290, -0.892007,
		30.728716, 33.469418, 36.707401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093857, 33.839100, 37.413269>,  <30.797251, 33.160515, 37.331806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093857, 33.839100, 37.413269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885963, 33.863594, 37.072418>,  <30.761227, 33.878292, 36.867908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885963, 33.863594, 37.072418>,  <31.093857, 33.839100, 37.413269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885963, 33.863594, 37.072418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275624, 0.932075, 0.235092,
		0.808646, 0.357053, -0.467553,
		-0.519734, 0.061238, -0.852130,
		30.730043, 33.881966, 36.816780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194052, 34.553978, 37.374329>,  <31.093857, 33.839100, 37.413269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194052, 34.553978, 37.374329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901690, 34.432232, 37.129990>,  <30.726273, 34.359184, 36.983387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901690, 34.432232, 37.129990>,  <31.194052, 34.553978, 37.374329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901690, 34.432232, 37.129990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463669, 0.878221, 0.117213,
		0.500787, 0.368905, -0.783020,
		-0.730905, -0.304363, -0.610852,
		30.682419, 34.340923, 36.946735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993380, 35.146870, 36.939056>,  <31.194052, 34.553978, 37.374329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993380, 35.146870, 36.939056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685900, 34.891834, 36.959381>,  <30.501411, 34.738815, 36.971577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685900, 34.891834, 36.959381>,  <30.993380, 35.146870, 36.939056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685900, 34.891834, 36.959381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634831, 0.770240, 0.060990,
		-0.078027, 0.014624, -0.996844,
		-0.768701, -0.637587, 0.050816,
		30.455290, 34.700558, 36.974625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527763, 35.350128, 36.381508>,  <30.993380, 35.146870, 36.939056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527763, 35.350128, 36.381508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329576, 35.139050, 36.657494>,  <30.210665, 35.012402, 36.823086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329576, 35.139050, 36.657494>,  <30.527763, 35.350128, 36.381508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329576, 35.139050, 36.657494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651021, 0.751450, 0.107216,
		-0.575049, -0.396058, -0.715861,
		-0.495469, -0.527695, 0.689962,
		30.180935, 34.980740, 36.864483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819376, 35.330212, 36.136242>,  <30.527763, 35.350128, 36.381508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819376, 35.330212, 36.136242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821180, 35.242855, 36.526581>,  <29.822264, 35.190441, 36.760784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821180, 35.242855, 36.526581>,  <29.819376, 35.330212, 36.136242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821180, 35.242855, 36.526581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636427, 0.752084, 0.171258,
		-0.771323, -0.621830, -0.135599,
		0.004511, -0.218394, 0.975850,
		29.822535, 35.177338, 36.819336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140863, 35.072453, 36.306046>,  <29.819376, 35.330212, 36.136242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140863, 35.072453, 36.306046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321377, 35.233433, 36.624638>,  <29.429686, 35.330021, 36.815792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321377, 35.233433, 36.624638>,  <29.140863, 35.072453, 36.306046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321377, 35.233433, 36.624638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772595, 0.622866, 0.123026,
		-0.446587, -0.670875, 0.592019,
		0.451283, 0.402449, 0.796479,
		29.456762, 35.354168, 36.863583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568310, 35.162411, 36.794476>,  <29.140863, 35.072453, 36.306046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568310, 35.162411, 36.794476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874058, 35.390057, 36.915703>,  <29.057507, 35.526642, 36.988441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874058, 35.390057, 36.915703>,  <28.568310, 35.162411, 36.794476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874058, 35.390057, 36.915703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626167, 0.767312, 0.138372,
		-0.153802, -0.295541, 0.942868,
		0.764369, 0.569111, 0.303072,
		29.103369, 35.560791, 37.006626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267595, 35.621586, 37.342987>,  <28.568310, 35.162411, 36.794476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267595, 35.621586, 37.342987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616154, 35.792469, 37.246517>,  <28.825289, 35.895000, 37.188637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616154, 35.792469, 37.246517>,  <28.267595, 35.621586, 37.342987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616154, 35.792469, 37.246517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394830, 0.902494, 0.172088,
		0.291172, -0.054735, 0.955104,
		0.871394, 0.427210, -0.241170,
		28.877571, 35.920631, 37.174168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326288, 36.160099, 37.930840>,  <28.267595, 35.621586, 37.342987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326288, 36.160099, 37.930840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591087, 36.302204, 37.666855>,  <28.749968, 36.387466, 37.508465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591087, 36.302204, 37.666855>,  <28.326288, 36.160099, 37.930840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591087, 36.302204, 37.666855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317779, 0.930506, 0.182139,
		0.678802, 0.089146, 0.728889,
		0.661999, 0.355262, -0.659959,
		28.789688, 36.408783, 37.468868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736107, 35.806934, 38.486618>,  <28.326288, 36.160099, 37.930840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736107, 35.806934, 38.486618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512173, 35.759533, 38.814651>,  <28.377813, 35.731091, 39.011471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512173, 35.759533, 38.814651>,  <28.736107, 35.806934, 38.486618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512173, 35.759533, 38.814651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285305, -0.901633, -0.325053,
		0.777938, -0.415950, 0.470955,
		-0.559834, -0.118505, 0.820087,
		28.344223, 35.723980, 39.060677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040131, 35.152996, 38.805565>,  <28.736107, 35.806934, 38.486618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040131, 35.152996, 38.805565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671318, 35.216423, 38.946827>,  <28.450031, 35.254478, 39.031582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671318, 35.216423, 38.946827>,  <29.040131, 35.152996, 38.805565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671318, 35.216423, 38.946827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303384, -0.862630, -0.404757,
		0.240457, -0.480338, 0.843478,
		-0.922030, 0.158572, 0.353152,
		28.394709, 35.263996, 39.052773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871586, 34.562843, 39.090561>,  <29.040131, 35.152996, 38.805565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871586, 34.562843, 39.090561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500425, 34.711063, 39.074139>,  <28.277729, 34.799995, 39.064285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500425, 34.711063, 39.074139>,  <28.871586, 34.562843, 39.090561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500425, 34.711063, 39.074139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325248, -0.858402, -0.396686,
		-0.182233, -0.354734, 0.917036,
		-0.927904, 0.370553, -0.041053,
		28.222054, 34.822227, 39.061821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368862, 34.202980, 39.464252>,  <28.871586, 34.562843, 39.090561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368862, 34.202980, 39.464252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120213, 34.370010, 39.199158>,  <27.971024, 34.470230, 39.040100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120213, 34.370010, 39.199158>,  <28.368862, 34.202980, 39.464252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120213, 34.370010, 39.199158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423820, -0.890820, -0.163759,
		-0.658758, 0.179084, 0.730730,
		-0.621622, 0.417576, -0.662734,
		27.933725, 34.495281, 39.000336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724768, 33.842953, 39.546101>,  <28.368862, 34.202980, 39.464252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724768, 33.842953, 39.546101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679878, 34.024239, 39.192379>,  <27.652945, 34.133011, 38.980145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679878, 34.024239, 39.192379>,  <27.724768, 33.842953, 39.546101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679878, 34.024239, 39.192379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320386, -0.858906, -0.399541,
		-0.940616, 0.238481, 0.241595,
		-0.112225, 0.453218, -0.884307,
		27.646212, 34.160206, 38.927086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065554, 33.619396, 39.281410>,  <27.724768, 33.842953, 39.546101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065554, 33.619396, 39.281410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284531, 33.733700, 38.966793>,  <27.415916, 33.802284, 38.778023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284531, 33.733700, 38.966793>,  <27.065554, 33.619396, 39.281410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284531, 33.733700, 38.966793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143201, -0.894038, -0.424487,
		-0.824499, 0.345016, -0.448515,
		0.547444, 0.285761, -0.786540,
		27.448765, 33.819427, 38.730831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685011, 33.473049, 38.731827>,  <27.065554, 33.619396, 39.281410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685011, 33.473049, 38.731827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059158, 33.477390, 38.590424>,  <27.283646, 33.479996, 38.505581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059158, 33.477390, 38.590424>,  <26.685011, 33.473049, 38.731827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059158, 33.477390, 38.590424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170855, -0.861291, -0.478524,
		-0.309671, 0.507995, -0.803769,
		0.935367, 0.010857, -0.353511,
		27.339769, 33.480648, 38.484371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595097, 33.265766, 38.024296>,  <26.685011, 33.473049, 38.731827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595097, 33.265766, 38.024296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987659, 33.205448, 38.071800>,  <27.223196, 33.169258, 38.100304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987659, 33.205448, 38.071800>,  <26.595097, 33.265766, 38.024296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987659, 33.205448, 38.071800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089375, -0.906548, -0.412532,
		0.169869, 0.394247, -0.903169,
		0.981405, -0.150797, 0.118758,
		27.282082, 33.160210, 38.107430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877220, 32.850857, 37.446529>,  <26.595097, 33.265766, 38.024296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877220, 32.850857, 37.446529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181101, 32.814373, 37.704067>,  <27.363428, 32.792484, 37.858589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181101, 32.814373, 37.704067>,  <26.877220, 32.850857, 37.446529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181101, 32.814373, 37.704067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121286, -0.952866, -0.278093,
		0.638864, 0.289356, -0.712830,
		0.759700, -0.091207, 0.643846,
		27.409010, 32.787010, 37.897221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401274, 32.717407, 37.074554>,  <26.877220, 32.850857, 37.446529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401274, 32.717407, 37.074554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474976, 32.570782, 37.439339>,  <27.519197, 32.482807, 37.658211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474976, 32.570782, 37.439339>,  <27.401274, 32.717407, 37.074554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474976, 32.570782, 37.439339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168973, -0.902222, -0.396792,
		0.968245, 0.227209, -0.104300,
		0.184256, -0.366568, 0.911964,
		27.530252, 32.460812, 37.712929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021957, 32.252567, 37.085873>,  <27.401274, 32.717407, 37.074554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021957, 32.252567, 37.085873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808468, 32.162815, 37.412010>,  <27.680374, 32.108963, 37.607693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808468, 32.162815, 37.412010>,  <28.021957, 32.252567, 37.085873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808468, 32.162815, 37.412010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147813, -0.974067, -0.171303,
		0.832641, 0.029091, 0.553048,
		-0.533723, -0.224382, 0.815348,
		27.648352, 32.095501, 37.656616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402052, 31.754667, 37.576954>,  <28.021957, 32.252567, 37.085873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402052, 31.754667, 37.576954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009216, 31.724873, 37.646187>,  <27.773516, 31.706995, 37.687725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009216, 31.724873, 37.646187>,  <28.402052, 31.754667, 37.576954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009216, 31.724873, 37.646187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075390, -0.997153, -0.001367,
		0.172689, 0.011706, 0.984907,
		-0.982087, -0.074488, 0.173079,
		27.714590, 31.702526, 37.698112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011545, 32.143181, 37.376049>,  <28.402052, 31.754667, 37.576954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011545, 32.143181, 37.376049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396824, 32.209183, 37.291172>,  <29.627991, 32.248783, 37.240246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396824, 32.209183, 37.291172>,  <29.011545, 32.143181, 37.376049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396824, 32.209183, 37.291172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034543, 0.858851, 0.511059,
		0.266564, -0.484921, 0.832944,
		0.963198, 0.165002, -0.212188,
		29.685783, 32.258682, 37.227516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484913, 32.413731, 37.917713>,  <29.011545, 32.143181, 37.376049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484913, 32.413731, 37.917713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693600, 32.532604, 37.597839>,  <29.818811, 32.603928, 37.405914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693600, 32.532604, 37.597839>,  <29.484913, 32.413731, 37.917713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693600, 32.532604, 37.597839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194478, 0.871252, 0.450664,
		0.830655, -0.390641, 0.396751,
		0.521718, 0.297187, -0.799681,
		29.850115, 32.621761, 37.357933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074497, 32.610325, 38.060303>,  <29.484913, 32.413731, 37.917713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074497, 32.610325, 38.060303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008604, 32.818012, 37.724857>,  <29.969069, 32.942623, 37.523590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008604, 32.818012, 37.724857>,  <30.074497, 32.610325, 38.060303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008604, 32.818012, 37.724857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131054, 0.854216, 0.503131,
		0.977593, -0.027021, -0.208764,
		-0.164734, 0.519216, -0.838616,
		29.959185, 32.973778, 37.473274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639833, 31.993391, 38.182026>,  <30.074497, 32.610325, 38.060303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639833, 31.993391, 38.182026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851665, 31.806292, 38.465084>,  <30.978765, 31.694031, 38.634918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851665, 31.806292, 38.465084>,  <30.639833, 31.993391, 38.182026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851665, 31.806292, 38.465084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048127, 0.816314, 0.575599,
		-0.846894, -0.338882, 0.409792,
		0.529580, -0.467750, 0.707641,
		31.010540, 31.665966, 38.677376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297855, 31.975048, 38.882221>,  <30.639833, 31.993391, 38.182026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297855, 31.975048, 38.882221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697222, 31.963230, 38.901379>,  <30.936842, 31.956139, 38.912872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697222, 31.963230, 38.901379>,  <30.297855, 31.975048, 38.882221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697222, 31.963230, 38.901379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004848, 0.802744, 0.596304,
		-0.056063, -0.595591, 0.801329,
		0.998415, -0.029546, 0.047891,
		30.996746, 31.954367, 38.915745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470657, 32.126862, 39.557148>,  <30.297855, 31.975048, 38.882221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470657, 32.126862, 39.557148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804623, 32.212635, 39.354393>,  <31.005001, 32.264099, 39.232738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804623, 32.212635, 39.354393>,  <30.470657, 32.126862, 39.557148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804623, 32.212635, 39.354393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040706, 0.894397, 0.445418,
		0.548875, -0.392519, 0.738015,
		0.834913, 0.214437, -0.506889,
		31.055096, 32.276966, 39.202328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002693, 32.223995, 39.987427>,  <30.470657, 32.126862, 39.557148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002693, 32.223995, 39.987427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121393, 32.436623, 39.670094>,  <31.192614, 32.564201, 39.479694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121393, 32.436623, 39.670094>,  <31.002693, 32.223995, 39.987427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121393, 32.436623, 39.670094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248866, 0.758997, 0.601655,
		0.921958, -0.375973, 0.092942,
		0.296749, 0.531570, -0.793330,
		31.210419, 32.596092, 39.432095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646019, 32.444813, 40.128330>,  <31.002693, 32.223995, 39.987427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646019, 32.444813, 40.128330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500208, 32.710068, 39.866837>,  <31.412722, 32.869221, 39.709938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500208, 32.710068, 39.866837>,  <31.646019, 32.444813, 40.128330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500208, 32.710068, 39.866837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242199, 0.745398, 0.621064,
		0.899144, 0.068059, -0.432328,
		-0.364526, 0.663136, -0.653737,
		31.390850, 32.909008, 39.670715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238892, 32.963013, 40.083084>,  <31.646019, 32.444813, 40.128330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238892, 32.963013, 40.083084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956066, 33.149021, 39.869984>,  <31.786371, 33.260624, 39.742123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956066, 33.149021, 39.869984>,  <32.238892, 32.963013, 40.083084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956066, 33.149021, 39.869984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218174, 0.860072, 0.461167,
		0.672653, 0.209843, -0.709580,
		-0.707063, 0.465017, -0.532748,
		31.743948, 33.288525, 39.710159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538532, 33.592678, 39.832466>,  <32.238892, 32.963013, 40.083084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538532, 33.592678, 39.832466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140823, 33.635345, 39.835346>,  <31.902199, 33.660946, 39.837074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140823, 33.635345, 39.835346>,  <32.538532, 33.592678, 39.832466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140823, 33.635345, 39.835346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100486, 0.909365, 0.403680,
		0.036515, 0.402090, -0.914872,
		-0.994268, 0.106672, 0.007199,
		31.842543, 33.667347, 39.837505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408394, 34.224152, 39.575863>,  <32.538532, 33.592678, 39.832466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408394, 34.224152, 39.575863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076130, 34.134117, 39.779564>,  <31.876772, 34.080097, 39.901783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076130, 34.134117, 39.779564>,  <32.408394, 34.224152, 39.575863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076130, 34.134117, 39.779564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043639, 0.885511, 0.462565,
		-0.555066, 0.406458, -0.725737,
		-0.830661, -0.225084, 0.509254,
		31.826931, 34.066593, 39.932339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145466, 34.844276, 39.577904>,  <32.408394, 34.224152, 39.575863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145466, 34.844276, 39.577904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929127, 34.669548, 39.865421>,  <31.799324, 34.564709, 40.037933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929127, 34.669548, 39.865421>,  <32.145466, 34.844276, 39.577904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929127, 34.669548, 39.865421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027573, 0.844903, 0.534208,
		-0.840670, 0.308744, -0.444918,
		-0.540846, -0.436825, 0.718797,
		31.766872, 34.538502, 40.081062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563562, 35.241688, 39.638554>,  <32.145466, 34.844276, 39.577904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563562, 35.241688, 39.638554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624243, 35.065483, 39.992489>,  <31.660650, 34.959759, 40.204849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624243, 35.065483, 39.992489>,  <31.563562, 35.241688, 39.638554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624243, 35.065483, 39.992489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073037, 0.897746, 0.434417,
		-0.985724, -0.001275, 0.168362,
		0.151701, -0.440512, 0.884837,
		31.669752, 34.933331, 40.257938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115204, 35.630489, 40.096668>,  <31.563562, 35.241688, 39.638554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115204, 35.630489, 40.096668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374023, 35.422672, 40.319881>,  <31.529316, 35.297981, 40.453808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374023, 35.422672, 40.319881>,  <31.115204, 35.630489, 40.096668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374023, 35.422672, 40.319881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222223, 0.828629, 0.513801,
		-0.729345, -0.208447, 0.651618,
		0.647050, -0.519543, 0.558035,
		31.568138, 35.266811, 40.487293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989634, 35.746536, 40.771244>,  <31.115204, 35.630489, 40.096668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989634, 35.746536, 40.771244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375731, 35.642540, 40.760582>,  <31.607389, 35.580143, 40.754185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375731, 35.642540, 40.760582>,  <30.989634, 35.746536, 40.771244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375731, 35.642540, 40.760582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237359, 0.829368, 0.505776,
		-0.109392, -0.494524, 0.862253,
		0.965243, -0.259991, -0.026654,
		31.665304, 35.564541, 40.752586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255777, 36.081570, 41.372372>,  <30.989634, 35.746536, 40.771244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255777, 36.081570, 41.372372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585073, 35.960148, 41.180485>,  <31.782652, 35.887295, 41.065353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585073, 35.960148, 41.180485>,  <31.255777, 36.081570, 41.372372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585073, 35.960148, 41.180485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551528, 0.627881, 0.549165,
		0.134503, -0.716672, 0.684317,
		0.823241, -0.303555, -0.479717,
		31.832047, 35.869080, 41.036572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721731, 35.894581, 41.941715>,  <31.255777, 36.081570, 41.372372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721731, 35.894581, 41.941715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931629, 35.979736, 41.612034>,  <32.057568, 36.030830, 41.414223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931629, 35.979736, 41.612034>,  <31.721731, 35.894581, 41.941715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931629, 35.979736, 41.612034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529648, 0.676333, 0.511905,
		0.666419, -0.705160, 0.242145,
		0.524746, 0.212892, -0.824208,
		32.089054, 36.043602, 41.364773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358521, 35.929077, 42.157681>,  <31.721731, 35.894581, 41.941715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358521, 35.929077, 42.157681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368099, 36.148304, 41.823242>,  <32.373844, 36.279839, 41.622581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368099, 36.148304, 41.823242>,  <32.358521, 35.929077, 42.157681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368099, 36.148304, 41.823242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531857, 0.701172, 0.474854,
		0.846496, -0.456051, -0.274703,
		0.023944, 0.548065, -0.836093,
		32.375282, 36.312725, 41.572414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997952, 36.249771, 42.092911>,  <32.358521, 35.929077, 42.157681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997952, 36.249771, 42.092911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766808, 36.476795, 41.858322>,  <32.628120, 36.613010, 41.717571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766808, 36.476795, 41.858322>,  <32.997952, 36.249771, 42.092911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766808, 36.476795, 41.858322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312124, 0.817655, 0.483754,
		0.754092, 0.096492, -0.649643,
		-0.577862, 0.567564, -0.586469,
		32.593449, 36.647064, 41.682381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338902, 36.836838, 41.885372>,  <32.997952, 36.249771, 42.092911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338902, 36.836838, 41.885372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979382, 36.980804, 41.785278>,  <32.763668, 37.067184, 41.725220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979382, 36.980804, 41.785278>,  <33.338902, 36.836838, 41.885372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979382, 36.980804, 41.785278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264068, 0.900203, 0.346269,
		0.349892, 0.245147, -0.904145,
		-0.898801, 0.359912, -0.250238,
		32.709740, 37.088779, 41.710205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453728, 37.509048, 41.523609>,  <33.338902, 36.836838, 41.885372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453728, 37.509048, 41.523609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069275, 37.521454, 41.633350>,  <32.838604, 37.528896, 41.699196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069275, 37.521454, 41.633350>,  <33.453728, 37.509048, 41.523609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069275, 37.521454, 41.633350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104519, 0.960592, 0.257563,
		-0.255558, 0.276226, -0.926493,
		-0.961128, 0.031014, 0.274358,
		32.780937, 37.530758, 41.715656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118355, 38.155338, 41.267582>,  <33.453728, 37.509048, 41.523609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118355, 38.155338, 41.267582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902195, 38.026108, 41.578346>,  <32.772499, 37.948570, 41.764805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902195, 38.026108, 41.578346>,  <33.118355, 38.155338, 41.267582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902195, 38.026108, 41.578346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109366, 0.888543, 0.445567,
		-0.834271, 0.325752, -0.444835,
		-0.540399, -0.323074, 0.776912,
		32.740074, 37.929184, 41.811420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713589, 38.744881, 41.464279>,  <33.118355, 38.155338, 41.267582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713589, 38.744881, 41.464279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675636, 38.493507, 41.773102>,  <32.652863, 38.342686, 41.958397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675636, 38.493507, 41.773102>,  <32.713589, 38.744881, 41.464279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675636, 38.493507, 41.773102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144264, 0.758689, 0.635278,
		-0.984980, 0.171657, 0.018674,
		-0.094883, -0.628430, 0.772058,
		32.647171, 38.304977, 42.004719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201786, 39.163544, 41.977150>,  <32.713589, 38.744881, 41.464279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201786, 39.163544, 41.977150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466522, 38.899914, 42.120029>,  <32.625366, 38.741737, 42.205757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466522, 38.899914, 42.120029>,  <32.201786, 39.163544, 41.977150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466522, 38.899914, 42.120029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361947, 0.698217, 0.617647,
		-0.656474, -0.279500, 0.700658,
		0.661844, -0.659070, 0.357197,
		32.665073, 38.702194, 42.227188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102894, 39.184109, 42.648537>,  <32.201786, 39.163544, 41.977150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102894, 39.184109, 42.648537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456665, 38.997772, 42.637428>,  <32.668930, 38.885971, 42.630764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456665, 38.997772, 42.637428>,  <32.102894, 39.184109, 42.648537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456665, 38.997772, 42.637428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406327, 0.739436, 0.536779,
		-0.229518, -0.486030, 0.843265,
		0.884432, -0.465843, -0.027773,
		32.721996, 38.858021, 42.629097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328762, 39.322601, 43.277264>,  <32.102894, 39.184109, 42.648537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328762, 39.322601, 43.277264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643002, 39.225937, 43.049427>,  <32.831543, 39.167938, 42.912724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643002, 39.225937, 43.049427>,  <32.328762, 39.322601, 43.277264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643002, 39.225937, 43.049427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547709, 0.699866, 0.458479,
		0.287842, -0.672151, 0.682173,
		0.785597, -0.241662, -0.569594,
		32.878681, 39.153439, 42.878548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926216, 39.289955, 43.714386>,  <32.328762, 39.322601, 43.277264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926216, 39.289955, 43.714386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046730, 39.387203, 43.345577>,  <33.119038, 39.445553, 43.124294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046730, 39.387203, 43.345577>,  <32.926216, 39.289955, 43.714386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046730, 39.387203, 43.345577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552273, 0.743761, 0.376581,
		0.777318, -0.622664, 0.089810,
		0.301281, 0.243124, -0.922020,
		33.137115, 39.460140, 43.068970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666088, 39.479702, 43.885689>,  <32.926216, 39.289955, 43.714386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666088, 39.479702, 43.885689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539852, 39.635765, 43.539700>,  <33.464111, 39.729401, 43.332104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539852, 39.635765, 43.539700>,  <33.666088, 39.479702, 43.885689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539852, 39.635765, 43.539700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483603, 0.850422, 0.207146,
		0.816413, -0.352932, -0.457065,
		-0.315590, 0.390155, -0.864975,
		33.445175, 39.752811, 43.280209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191277, 39.935566, 43.654190>,  <33.666088, 39.479702, 43.885689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191277, 39.935566, 43.654190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883591, 40.054752, 43.428085>,  <33.698978, 40.126266, 43.292423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883591, 40.054752, 43.428085>,  <34.191277, 39.935566, 43.654190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883591, 40.054752, 43.428085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268059, 0.953490, 0.137842,
		0.580044, -0.045494, -0.813313,
		-0.769216, 0.297970, -0.565262,
		33.652824, 40.144142, 43.258507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461128, 40.594898, 43.485958>,  <34.191277, 39.935566, 43.654190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461128, 40.594898, 43.485958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071701, 40.617569, 43.397453>,  <33.838047, 40.631172, 43.344349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071701, 40.617569, 43.397453>,  <34.461128, 40.594898, 43.485958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071701, 40.617569, 43.397453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038585, 0.995610, 0.085272,
		0.225124, 0.074481, -0.971479,
		-0.973566, 0.056681, -0.221262,
		33.779633, 40.634575, 43.331074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693253, 40.414913, 42.835228>,  <34.461128, 40.594898, 43.485958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693253, 40.414913, 42.835228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033913, 40.555191, 42.679428>,  <35.238308, 40.639359, 42.585949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033913, 40.555191, 42.679428>,  <34.693253, 40.414913, 42.835228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033913, 40.555191, 42.679428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174990, -0.890775, -0.419403,
		-0.494041, 0.289024, -0.819993,
		0.851647, 0.350693, -0.389503,
		35.289406, 40.660400, 42.562576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638988, 40.263611, 42.152935>,  <34.693253, 40.414913, 42.835228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638988, 40.263611, 42.152935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020397, 40.277916, 42.272614>,  <35.249241, 40.286499, 42.344421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020397, 40.277916, 42.272614>,  <34.638988, 40.263611, 42.152935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020397, 40.277916, 42.272614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197694, -0.823607, -0.531590,
		0.227404, 0.566032, -0.792398,
		0.953522, 0.035767, 0.299193,
		35.306454, 40.288647, 42.362370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059582, 40.169907, 41.512646>,  <34.638988, 40.263611, 42.152935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059582, 40.169907, 41.512646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302891, 40.077221, 41.816307>,  <35.448875, 40.021610, 41.998505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302891, 40.077221, 41.816307>,  <35.059582, 40.169907, 41.512646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302891, 40.077221, 41.816307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346764, -0.782756, -0.516767,
		0.713972, 0.577583, -0.395780,
		0.608274, -0.231715, 0.759151,
		35.485374, 40.007706, 42.044052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728024, 40.105671, 41.086254>,  <35.059582, 40.169907, 41.512646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728024, 40.105671, 41.086254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827141, 39.940464, 41.436798>,  <35.886612, 39.841339, 41.647125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827141, 39.940464, 41.436798>,  <35.728024, 40.105671, 41.086254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827141, 39.940464, 41.436798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396953, -0.781874, -0.480729,
		0.883757, 0.466997, -0.029795,
		0.247795, -0.413020, 0.876363,
		35.901478, 39.816559, 41.699707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381321, 39.893780, 41.086613>,  <35.728024, 40.105671, 41.086254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381321, 39.893780, 41.086613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214367, 39.664944, 41.369034>,  <36.114197, 39.527641, 41.538486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214367, 39.664944, 41.369034>,  <36.381321, 39.893780, 41.086613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214367, 39.664944, 41.369034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542085, -0.780329, -0.311819,
		0.729340, 0.252592, 0.635815,
		-0.417382, -0.572087, 0.706051,
		36.089153, 39.493317, 41.580849>
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
