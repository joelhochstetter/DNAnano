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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.320072, 32.413841, 22.196615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004066, 32.576614, 22.380039>,  <42.814461, 32.674278, 22.490093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004066, 32.576614, 22.380039>,  <43.320072, 32.413841, 22.196615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004066, 32.576614, 22.380039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154871, 0.591238, -0.791488,
		-0.593200, -0.696307, -0.404066,
		-0.790018, 0.406933, 0.458561,
		42.767059, 32.698692, 22.517607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691677, 32.337940, 21.788046>,  <43.320072, 32.413841, 22.196615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691677, 32.337940, 21.788046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652073, 32.662735, 22.018131>,  <42.628311, 32.857613, 22.156181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652073, 32.662735, 22.018131>,  <42.691677, 32.337940, 21.788046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652073, 32.662735, 22.018131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070419, 0.570885, -0.818005,
		-0.992592, -0.121493, 0.000659,
		-0.099006, 0.811991, 0.575211,
		42.622372, 32.906334, 22.190695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141060, 32.709717, 21.447712>,  <42.691677, 32.337940, 21.788046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141060, 32.709717, 21.447712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349148, 32.956238, 21.684200>,  <42.473999, 33.104149, 21.826094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349148, 32.956238, 21.684200>,  <42.141060, 32.709717, 21.447712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349148, 32.956238, 21.684200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067402, 0.719738, -0.690966,
		-0.851369, 0.319604, 0.415961,
		0.520218, 0.616304, 0.591221,
		42.505215, 33.141129, 21.861567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812298, 33.341053, 21.744595>,  <42.141060, 32.709717, 21.447712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812298, 33.341053, 21.744595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202568, 33.428299, 21.735821>,  <42.436729, 33.480648, 21.730556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202568, 33.428299, 21.735821>,  <41.812298, 33.341053, 21.744595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202568, 33.428299, 21.735821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178759, 0.733711, -0.655526,
		-0.126886, 0.643502, 0.754854,
		0.975677, 0.218114, -0.021934,
		42.495270, 33.493732, 21.729240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950661, 34.058174, 21.894007>,  <41.812298, 33.341053, 21.744595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950661, 34.058174, 21.894007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232971, 33.952766, 21.630966>,  <42.402359, 33.889523, 21.473143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232971, 33.952766, 21.630966>,  <41.950661, 34.058174, 21.894007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232971, 33.952766, 21.630966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279069, 0.749772, -0.599969,
		0.651153, 0.606959, 0.455631,
		0.705776, -0.263520, -0.657600,
		42.444706, 33.873711, 21.433687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715916, 34.751102, 21.870916>,  <41.950661, 34.058174, 21.894007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715916, 34.751102, 21.870916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408600, 34.721218, 22.125210>,  <41.224213, 34.703289, 22.277786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408600, 34.721218, 22.125210>,  <41.715916, 34.751102, 21.870916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408600, 34.721218, 22.125210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097442, 0.995241, -0.000799,
		-0.632646, -0.062561, -0.771910,
		-0.768286, -0.074711, 0.635731,
		41.178112, 34.698807, 22.315929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113708, 35.097393, 21.568092>,  <41.715916, 34.751102, 21.870916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113708, 35.097393, 21.568092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035698, 35.119152, 21.959808>,  <40.988892, 35.132210, 22.194838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035698, 35.119152, 21.959808>,  <41.113708, 35.097393, 21.568092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035698, 35.119152, 21.959808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111899, 0.990707, -0.077321,
		-0.974395, -0.124661, -0.187123,
		-0.195023, 0.054402, 0.979289,
		40.977192, 35.135471, 22.253595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680786, 35.602509, 21.563257>,  <41.113708, 35.097393, 21.568092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680786, 35.602509, 21.563257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765186, 35.568333, 21.952755>,  <40.815826, 35.547825, 22.186453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765186, 35.568333, 21.952755>,  <40.680786, 35.602509, 21.563257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765186, 35.568333, 21.952755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180617, 0.975611, 0.124746,
		-0.960653, -0.202196, 0.190425,
		0.211004, -0.085444, 0.973744,
		40.828487, 35.542698, 22.244879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218285, 36.082439, 21.877062>,  <40.680786, 35.602509, 21.563257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218285, 36.082439, 21.877062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526173, 36.023590, 22.125538>,  <40.710907, 35.988281, 22.274624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526173, 36.023590, 22.125538>,  <40.218285, 36.082439, 21.877062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526173, 36.023590, 22.125538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114237, 0.989118, 0.092711,
		-0.628072, -0.000399, 0.778155,
		0.769724, -0.147123, 0.621192,
		40.757092, 35.979454, 22.311895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120602, 36.495602, 22.485592>,  <40.218285, 36.082439, 21.877062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120602, 36.495602, 22.485592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516708, 36.439972, 22.487480>,  <40.754372, 36.406593, 22.488613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516708, 36.439972, 22.487480>,  <40.120602, 36.495602, 22.485592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516708, 36.439972, 22.487480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134702, 0.966566, 0.218188,
		-0.034906, -0.215430, 0.975895,
		0.990271, -0.139071, 0.004720,
		40.813789, 36.398251, 22.488895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357956, 36.872116, 23.092607>,  <40.120602, 36.495602, 22.485592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357956, 36.872116, 23.092607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660744, 36.831017, 22.834480>,  <40.842415, 36.806355, 22.679604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660744, 36.831017, 22.834480>,  <40.357956, 36.872116, 23.092607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660744, 36.831017, 22.834480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239365, 0.962519, 0.127520,
		0.608030, -0.250996, 0.753194,
		0.756971, -0.102752, -0.645320,
		40.887836, 36.800190, 22.640884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730324, 37.468449, 23.233850>,  <40.357956, 36.872116, 23.092607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730324, 37.468449, 23.233850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897255, 37.329777, 22.897839>,  <40.997414, 37.246574, 22.696232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897255, 37.329777, 22.897839>,  <40.730324, 37.468449, 23.233850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897255, 37.329777, 22.897839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477237, 0.870256, -0.122065,
		0.773357, -0.349951, 0.528634,
		0.417330, -0.346683, -0.840028,
		41.022453, 37.225773, 22.645830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416386, 37.598171, 23.207338>,  <40.730324, 37.468449, 23.233850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416386, 37.598171, 23.207338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361755, 37.544186, 22.814781>,  <41.328976, 37.511795, 22.579247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361755, 37.544186, 22.814781>,  <41.416386, 37.598171, 23.207338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361755, 37.544186, 22.814781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624484, 0.757308, -0.191059,
		0.769003, -0.638958, -0.019147,
		-0.136579, -0.134968, -0.981392,
		41.320782, 37.503696, 22.520363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057247, 37.686104, 22.920671>,  <41.416386, 37.598171, 23.207338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057247, 37.686104, 22.920671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798492, 37.746368, 22.621651>,  <41.643238, 37.782528, 22.442238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798492, 37.746368, 22.621651>,  <42.057247, 37.686104, 22.920671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798492, 37.746368, 22.621651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440644, 0.873919, -0.205177,
		0.622389, -0.462132, -0.631717,
		-0.646888, 0.150662, -0.747553,
		41.604427, 37.791569, 22.397385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384243, 37.784706, 22.148167>,  <42.057247, 37.686104, 22.920671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384243, 37.784706, 22.148167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035397, 37.969376, 22.212997>,  <41.826088, 38.080177, 22.251896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035397, 37.969376, 22.212997>,  <42.384243, 37.784706, 22.148167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035397, 37.969376, 22.212997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465412, 0.884941, -0.016444,
		-0.151019, 0.061091, -0.986641,
		-0.872115, 0.461678, 0.162075,
		41.773762, 38.107880, 22.261620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595745, 38.395298, 22.049267>,  <42.384243, 37.784706, 22.148167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595745, 38.395298, 22.049267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217888, 38.467365, 22.158943>,  <41.991173, 38.510605, 22.224749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217888, 38.467365, 22.158943>,  <42.595745, 38.395298, 22.049267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217888, 38.467365, 22.158943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173878, 0.983631, -0.047290,
		-0.278225, 0.003004, -0.960511,
		-0.944646, 0.180169, 0.274193,
		41.934494, 38.521416, 22.241201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308060, 38.944386, 21.602167>,  <42.595745, 38.395298, 22.049267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308060, 38.944386, 21.602167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080055, 38.974220, 21.929466>,  <41.943253, 38.992119, 22.125845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080055, 38.974220, 21.929466>,  <42.308060, 38.944386, 21.602167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080055, 38.974220, 21.929466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312092, 0.940887, 0.131647,
		-0.760058, 0.330408, -0.559591,
		-0.570009, 0.074585, 0.818246,
		41.909054, 38.996597, 22.174940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080898, 39.645977, 21.610903>,  <42.308060, 38.944386, 21.602167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080898, 39.645977, 21.610903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043343, 39.514095, 21.986664>,  <42.020809, 39.434967, 22.212120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043343, 39.514095, 21.986664>,  <42.080898, 39.645977, 21.610903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043343, 39.514095, 21.986664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430143, 0.837525, 0.336939,
		-0.897865, 0.435712, 0.063190,
		-0.093885, -0.329707, 0.939404,
		42.015179, 39.415184, 22.268484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681873, 40.130348, 21.945404>,  <42.080898, 39.645977, 21.610903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681873, 40.130348, 21.945404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885395, 39.940063, 22.232407>,  <42.007507, 39.825893, 22.404608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885395, 39.940063, 22.232407>,  <41.681873, 40.130348, 21.945404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885395, 39.940063, 22.232407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318593, 0.878332, 0.356415,
		-0.799760, 0.047247, 0.598458,
		0.508805, -0.475711, 0.717507,
		42.038036, 39.797352, 22.447659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521885, 40.518509, 22.520868>,  <41.681873, 40.130348, 21.945404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521885, 40.518509, 22.520868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840652, 40.318085, 22.655834>,  <42.031914, 40.197830, 22.736814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840652, 40.318085, 22.655834>,  <41.521885, 40.518509, 22.520868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840652, 40.318085, 22.655834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244130, 0.778055, 0.578819,
		-0.552554, -0.378900, 0.742374,
		0.796922, -0.501064, 0.337416,
		42.079731, 40.167767, 22.757059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612370, 40.548534, 23.313671>,  <41.521885, 40.518509, 22.520868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612370, 40.548534, 23.313671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976288, 40.457008, 23.175156>,  <42.194637, 40.402092, 23.092047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976288, 40.457008, 23.175156>,  <41.612370, 40.548534, 23.313671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976288, 40.457008, 23.175156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401070, 0.699433, 0.591555,
		0.106845, -0.677078, 0.728114,
		0.909795, -0.228820, -0.346286,
		42.249226, 40.388363, 23.071270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070541, 40.473660, 23.880806>,  <41.612370, 40.548534, 23.313671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070541, 40.473660, 23.880806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330406, 40.540112, 23.584064>,  <42.486324, 40.579983, 23.406019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330406, 40.540112, 23.584064>,  <42.070541, 40.473660, 23.880806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330406, 40.540112, 23.584064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478142, 0.669368, 0.568618,
		0.591036, -0.724119, 0.355428,
		0.649659, 0.166129, -0.741852,
		42.525303, 40.589951, 23.361509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679382, 40.766308, 24.220402>,  <42.070541, 40.473660, 23.880806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679382, 40.766308, 24.220402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754269, 40.852528, 23.837051>,  <42.799198, 40.904259, 23.607040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754269, 40.852528, 23.837051>,  <42.679382, 40.766308, 24.220402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754269, 40.852528, 23.837051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647755, 0.706369, 0.285407,
		0.738488, -0.674226, -0.007384,
		0.187212, 0.215553, -0.958378,
		42.810432, 40.917194, 23.549538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353764, 40.888908, 24.236107>,  <42.679382, 40.766308, 24.220402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353764, 40.888908, 24.236107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234882, 41.052547, 23.891014>,  <43.163555, 41.150730, 23.683958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234882, 41.052547, 23.891014>,  <43.353764, 40.888908, 24.236107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234882, 41.052547, 23.891014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706883, 0.701681, 0.089214,
		0.641861, -0.583338, -0.497726,
		-0.297204, 0.409097, -0.862734,
		43.145721, 41.175278, 23.632195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960659, 40.988228, 23.850960>,  <43.353764, 40.888908, 24.236107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960659, 40.988228, 23.850960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687744, 41.241230, 23.704308>,  <43.523994, 41.393032, 23.616316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687744, 41.241230, 23.704308>,  <43.960659, 40.988228, 23.850960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687744, 41.241230, 23.704308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638315, 0.759877, 0.123049,
		0.356424, -0.150072, -0.922193,
		-0.682287, 0.632507, -0.366632,
		43.483059, 41.430981, 23.594318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342709, 41.407959, 23.365971>,  <43.960659, 40.988228, 23.850960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342709, 41.407959, 23.365971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020992, 41.624538, 23.463909>,  <43.827961, 41.754486, 23.522673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020992, 41.624538, 23.463909>,  <44.342709, 41.407959, 23.365971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020992, 41.624538, 23.463909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575271, 0.812720, 0.092460,
		-0.148930, 0.215219, -0.965143,
		-0.804290, 0.541449, 0.244847,
		43.779705, 41.786972, 23.537363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369587, 42.078907, 22.878653>,  <44.342709, 41.407959, 23.365971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369587, 42.078907, 22.878653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186523, 42.084198, 23.234264>,  <44.076683, 42.087372, 23.447632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186523, 42.084198, 23.234264>,  <44.369587, 42.078907, 22.878653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186523, 42.084198, 23.234264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536154, 0.801748, 0.264081,
		-0.709284, 0.597516, -0.374020,
		-0.457663, 0.013224, 0.889027,
		44.049225, 42.088165, 23.500973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080082, 42.744335, 23.112322>,  <44.369587, 42.078907, 22.878653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080082, 42.744335, 23.112322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149960, 42.568913, 23.464947>,  <44.191887, 42.463657, 23.676521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149960, 42.568913, 23.464947>,  <44.080082, 42.744335, 23.112322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149960, 42.568913, 23.464947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232815, 0.888337, 0.395795,
		-0.956702, 0.136099, 0.257289,
		0.174692, -0.438559, 0.881561,
		44.202366, 42.437344, 23.729414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942909, 43.395615, 23.623768>,  <44.080082, 42.744335, 23.112322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942909, 43.395615, 23.623768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091377, 43.077763, 23.815933>,  <44.180458, 42.887051, 23.931232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091377, 43.077763, 23.815933>,  <43.942909, 43.395615, 23.623768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091377, 43.077763, 23.815933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331193, 0.596636, 0.730984,
		-0.867494, -0.112207, 0.484627,
		0.371168, -0.794629, 0.480416,
		44.202728, 42.839375, 23.960058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652798, 43.307831, 24.264458>,  <43.942909, 43.395615, 23.623768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652798, 43.307831, 24.264458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031799, 43.180630, 24.277786>,  <44.259201, 43.104309, 24.285784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031799, 43.180630, 24.277786>,  <43.652798, 43.307831, 24.264458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031799, 43.180630, 24.277786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149111, 0.531646, 0.833738,
		-0.282847, -0.785001, 0.551154,
		0.947504, -0.318003, 0.033322,
		44.316051, 43.085228, 24.287783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812984, 43.304039, 24.971184>,  <43.652798, 43.307831, 24.264458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812984, 43.304039, 24.971184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157578, 43.337116, 24.770782>,  <44.364334, 43.356964, 24.650541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157578, 43.337116, 24.770782>,  <43.812984, 43.304039, 24.971184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.157578, 43.337116, 24.770782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356915, 0.603189, 0.713285,
		0.361184, -0.793300, 0.490124,
		0.861486, 0.082695, -0.501003,
		44.416023, 43.361923, 24.620481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177574, 43.000263, 25.088804>,  <43.812984, 43.304039, 24.971184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177574, 43.000263, 25.088804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952793, 43.063000, 24.763939>,  <42.817924, 43.100643, 24.569019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952793, 43.063000, 24.763939>,  <43.177574, 43.000263, 25.088804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952793, 43.063000, 24.763939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696250, -0.619800, 0.362055,
		-0.446593, 0.768927, 0.457500,
		-0.561952, 0.156843, -0.812164,
		42.784206, 43.110054, 24.520290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675369, 42.410870, 25.173956>,  <43.177574, 43.000263, 25.088804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675369, 42.410870, 25.173956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491554, 42.681644, 24.943974>,  <42.381264, 42.844109, 24.805984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491554, 42.681644, 24.943974>,  <42.675369, 42.410870, 25.173956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491554, 42.681644, 24.943974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862115, -0.495597, 0.105552,
		-0.213494, 0.544184, 0.811347,
		-0.459541, 0.676940, -0.574956,
		42.353691, 42.884727, 24.771486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093582, 42.588490, 25.525375>,  <42.675369, 42.410870, 25.173956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093582, 42.588490, 25.525375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036007, 42.598591, 25.129669>,  <42.001461, 42.604652, 24.892246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036007, 42.598591, 25.129669>,  <42.093582, 42.588490, 25.525375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036007, 42.598591, 25.129669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860116, -0.497550, 0.112450,
		-0.489369, 0.867068, 0.093337,
		-0.143941, 0.025251, -0.989264,
		41.992825, 42.606167, 24.832890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417553, 42.834949, 25.359625>,  <42.093582, 42.588490, 25.525375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417553, 42.834949, 25.359625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531555, 42.630836, 25.035061>,  <41.599957, 42.508369, 24.840322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531555, 42.630836, 25.035061>,  <41.417553, 42.834949, 25.359625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531555, 42.630836, 25.035061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754594, -0.641444, 0.138340,
		-0.591065, 0.572855, -0.567872,
		0.285010, -0.510281, -0.811408,
		41.617058, 42.477753, 24.791637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790733, 42.752743, 24.982172>,  <41.417553, 42.834949, 25.359625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790733, 42.752743, 24.982172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050556, 42.494427, 24.821655>,  <41.206448, 42.339436, 24.725346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050556, 42.494427, 24.821655>,  <40.790733, 42.752743, 24.982172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050556, 42.494427, 24.821655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731649, -0.674473, -0.098873,
		-0.206809, 0.357829, -0.910598,
		0.649553, -0.645790, -0.401292,
		41.245422, 42.300690, 24.701267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568974, 42.512844, 24.315205>,  <40.790733, 42.752743, 24.982172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568974, 42.512844, 24.315205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799572, 42.238754, 24.493244>,  <40.937931, 42.074299, 24.600067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799572, 42.238754, 24.493244>,  <40.568974, 42.512844, 24.315205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799572, 42.238754, 24.493244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709982, -0.689708, -0.142227,
		0.404446, -0.234019, -0.884115,
		0.576497, -0.685229, 0.445099,
		40.972523, 42.033184, 24.626774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512821, 42.026718, 23.892244>,  <40.568974, 42.512844, 24.315205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512821, 42.026718, 23.892244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651371, 41.860966, 24.228889>,  <40.734501, 41.761517, 24.430878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651371, 41.860966, 24.228889>,  <40.512821, 42.026718, 23.892244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651371, 41.860966, 24.228889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652263, -0.751179, -0.101407,
		0.674224, -0.513829, -0.530473,
		0.346375, -0.414379, 0.841614,
		40.755283, 41.736652, 24.481373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973782, 41.219730, 23.810387>,  <40.512821, 42.026718, 23.892244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973782, 41.219730, 23.810387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806545, 41.275806, 24.169395>,  <40.706203, 41.309452, 24.384802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806545, 41.275806, 24.169395>,  <40.973782, 41.219730, 23.810387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806545, 41.275806, 24.169395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646912, -0.739578, -0.185824,
		0.637737, -0.658309, 0.399901,
		-0.418087, 0.140194, 0.897524,
		40.681118, 41.317863, 24.438652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929413, 40.495419, 24.003983>,  <40.973782, 41.219730, 23.810387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929413, 40.495419, 24.003983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682098, 40.716698, 24.227299>,  <40.533710, 40.849464, 24.361288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682098, 40.716698, 24.227299>,  <40.929413, 40.495419, 24.003983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682098, 40.716698, 24.227299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683212, -0.729435, -0.033851,
		0.388510, -0.402360, 0.828955,
		-0.618289, 0.553200, 0.558290,
		40.496613, 40.882656, 24.394785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735508, 40.028912, 24.519852>,  <40.929413, 40.495419, 24.003983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735508, 40.028912, 24.519852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445885, 40.304352, 24.504017>,  <40.272110, 40.469616, 24.494516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445885, 40.304352, 24.504017>,  <40.735508, 40.028912, 24.519852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445885, 40.304352, 24.504017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665611, -0.712625, -0.221649,
		-0.180838, -0.134137, 0.974323,
		-0.724058, 0.688602, -0.039586,
		40.228668, 40.510933, 24.492142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256271, 39.759491, 24.879448>,  <40.735508, 40.028912, 24.519852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256271, 39.759491, 24.879448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042782, 40.041348, 24.692421>,  <39.914688, 40.210461, 24.580204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042782, 40.041348, 24.692421>,  <40.256271, 39.759491, 24.879448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042782, 40.041348, 24.692421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750663, -0.649372, -0.121741,
		-0.389408, 0.286009, 0.875534,
		-0.533728, 0.704638, -0.467567,
		39.882664, 40.252739, 24.552151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625359, 39.695774, 25.220694>,  <40.256271, 39.759491, 24.879448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625359, 39.695774, 25.220694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577286, 39.898369, 24.879162>,  <39.548443, 40.019928, 24.674242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577286, 39.898369, 24.879162>,  <39.625359, 39.695774, 25.220694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577286, 39.898369, 24.879162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728419, -0.629344, -0.270798,
		-0.674509, 0.589401, 0.444571,
		-0.120179, 0.506490, -0.853829,
		39.541233, 40.050316, 24.623013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820599, 39.849102, 25.126608>,  <39.625359, 39.695774, 25.220694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820599, 39.849102, 25.126608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005787, 39.877445, 24.773193>,  <39.116901, 39.894451, 24.561146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005787, 39.877445, 24.773193>,  <38.820599, 39.849102, 25.126608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005787, 39.877445, 24.773193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636944, -0.666605, -0.387221,
		-0.616407, 0.742036, -0.263488,
		0.462974, 0.070859, -0.883535,
		39.144680, 39.898705, 24.508133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280735, 39.910194, 24.674049>,  <38.820599, 39.849102, 25.126608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280735, 39.910194, 24.674049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592239, 39.791382, 24.453030>,  <38.779140, 39.720097, 24.320417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592239, 39.791382, 24.453030>,  <38.280735, 39.910194, 24.674049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592239, 39.791382, 24.453030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495780, -0.831087, -0.251987,
		-0.384368, 0.470179, -0.794476,
		0.778758, -0.297029, -0.552549,
		38.825867, 39.702274, 24.287266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924316, 39.446194, 24.133869>,  <38.280735, 39.910194, 24.674049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924316, 39.446194, 24.133869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312038, 39.359921, 24.086678>,  <38.544674, 39.308155, 24.058363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312038, 39.359921, 24.086678>,  <37.924316, 39.446194, 24.133869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312038, 39.359921, 24.086678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245014, -0.808124, -0.535634,
		0.020186, 0.548102, -0.836168,
		0.969309, -0.215686, -0.117980,
		38.602833, 39.295216, 24.051283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902462, 39.204288, 23.461327>,  <37.924316, 39.446194, 24.133869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902462, 39.204288, 23.461327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211811, 39.036777, 23.651699>,  <38.397423, 38.936272, 23.765923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211811, 39.036777, 23.651699>,  <37.902462, 39.204288, 23.461327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211811, 39.036777, 23.651699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159840, -0.855303, -0.492857,
		0.613465, 0.305091, -0.728410,
		0.773377, -0.418780, 0.475932,
		38.443825, 38.911144, 23.794479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165058, 38.771996, 22.919346>,  <37.902462, 39.204288, 23.461327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165058, 38.771996, 22.919346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341385, 38.621208, 23.245186>,  <38.447182, 38.530735, 23.440689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341385, 38.621208, 23.245186>,  <38.165058, 38.771996, 22.919346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341385, 38.621208, 23.245186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032014, -0.900356, -0.433975,
		0.897024, 0.217384, -0.384827,
		0.440821, -0.376966, 0.814600,
		38.473633, 38.508118, 23.489567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809555, 38.409912, 22.702324>,  <38.165058, 38.771996, 22.919346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809555, 38.409912, 22.702324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714024, 38.242100, 23.052628>,  <38.656704, 38.141411, 23.262810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714024, 38.242100, 23.052628>,  <38.809555, 38.409912, 22.702324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714024, 38.242100, 23.052628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138466, -0.907353, -0.396910,
		0.961139, 0.026469, 0.274793,
		-0.238829, -0.419535, 0.875757,
		38.642376, 38.116238, 23.315355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356380, 37.927570, 22.872606>,  <38.809555, 38.409912, 22.702324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356380, 37.927570, 22.872606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032146, 37.811855, 23.076275>,  <38.837605, 37.742424, 23.198477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032146, 37.811855, 23.076275>,  <39.356380, 37.927570, 22.872606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032146, 37.811855, 23.076275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143487, -0.941075, -0.306250,
		0.567766, -0.175183, 0.804334,
		-0.810588, -0.289290, 0.509174,
		38.788971, 37.725067, 23.229027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439049, 37.253452, 22.982885>,  <39.356380, 37.927570, 22.872606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439049, 37.253452, 22.982885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064083, 37.246449, 23.121990>,  <38.839104, 37.242245, 23.205454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064083, 37.246449, 23.121990>,  <39.439049, 37.253452, 22.982885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064083, 37.246449, 23.121990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012510, -0.999784, -0.016627,
		0.347980, -0.011236, 0.937435,
		-0.937419, -0.017513, 0.347764,
		38.782856, 37.241196, 23.226320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457253, 36.768852, 23.425274>,  <39.439049, 37.253452, 22.982885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457253, 36.768852, 23.425274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070210, 36.769474, 23.324295>,  <38.837982, 36.769848, 23.263708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070210, 36.769474, 23.324295>,  <39.457253, 36.768852, 23.425274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070210, 36.769474, 23.324295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094693, -0.924730, -0.368656,
		-0.234018, -0.380620, 0.894631,
		-0.967610, 0.001556, -0.252445,
		38.779926, 36.769939, 23.248562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111683, 36.174164, 23.817331>,  <39.457253, 36.768852, 23.425274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111683, 36.174164, 23.817331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858231, 36.273300, 23.524189>,  <38.706158, 36.332783, 23.348303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858231, 36.273300, 23.524189>,  <39.111683, 36.174164, 23.817331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858231, 36.273300, 23.524189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140186, -0.968396, -0.206295,
		-0.760825, -0.027979, 0.648353,
		-0.633635, 0.247844, -0.732858,
		38.668140, 36.347652, 23.304331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706314, 35.656048, 23.883604>,  <39.111683, 36.174164, 23.817331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706314, 35.656048, 23.883604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649731, 35.808849, 23.518295>,  <38.615780, 35.900528, 23.299110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649731, 35.808849, 23.518295>,  <38.706314, 35.656048, 23.883604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649731, 35.808849, 23.518295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017233, -0.923358, -0.383552,
		-0.989794, -0.038519, 0.137202,
		-0.141461, 0.382002, -0.913271,
		38.607292, 35.923450, 23.244314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040070, 35.311665, 23.664024>,  <38.706314, 35.656048, 23.883604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040070, 35.311665, 23.664024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248455, 35.437149, 23.346489>,  <38.373486, 35.512440, 23.155968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248455, 35.437149, 23.346489>,  <38.040070, 35.311665, 23.664024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248455, 35.437149, 23.346489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023694, -0.924340, -0.380834,
		-0.853249, 0.217210, -0.474116,
		0.520965, 0.313713, -0.793839,
		38.404743, 35.531261, 23.108337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708286, 35.021385, 23.103811>,  <38.040070, 35.311665, 23.664024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708286, 35.021385, 23.103811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080208, 35.096832, 22.977394>,  <38.303360, 35.142101, 22.901545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080208, 35.096832, 22.977394>,  <37.708286, 35.021385, 23.103811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080208, 35.096832, 22.977394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023533, -0.887408, -0.460383,
		-0.367294, 0.420630, -0.829557,
		0.929807, 0.188618, -0.316041,
		38.359150, 35.153419, 22.882582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809982, 34.856323, 22.315407>,  <37.708286, 35.021385, 23.103811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809982, 34.856323, 22.315407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147404, 34.805267, 22.524067>,  <38.349857, 34.774632, 22.649263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147404, 34.805267, 22.524067>,  <37.809982, 34.856323, 22.315407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147404, 34.805267, 22.524067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029929, -0.958661, -0.282973,
		0.536205, 0.254316, -0.804865,
		0.843557, -0.127643, 0.521650,
		38.400471, 34.766975, 22.680563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283394, 34.681198, 21.846090>,  <37.809982, 34.856323, 22.315407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283394, 34.681198, 21.846090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385044, 34.549252, 22.209763>,  <38.446033, 34.470085, 22.427965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385044, 34.549252, 22.209763>,  <38.283394, 34.681198, 21.846090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385044, 34.549252, 22.209763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230227, -0.892387, -0.388125,
		0.939370, 0.307951, -0.150835,
		0.254126, -0.329866, 0.909180,
		38.461281, 34.450291, 22.482517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513054, 34.853745, 21.539043>,  <38.283394, 34.681198, 21.846090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513054, 34.853745, 21.539043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335457, 35.133629, 21.762928>,  <37.228897, 35.301559, 21.897259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335457, 35.133629, 21.762928>,  <37.513054, 34.853745, 21.539043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335457, 35.133629, 21.762928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702500, 0.115921, -0.702180,
		-0.556203, -0.704961, 0.440077,
		-0.443995, 0.699709, 0.559711,
		37.202259, 35.343540, 21.930841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716057, 34.668373, 21.839392>,  <37.513054, 34.853745, 21.539043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716057, 34.668373, 21.839392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769669, 35.060894, 21.784149>,  <36.801838, 35.296406, 21.751003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769669, 35.060894, 21.784149>,  <36.716057, 34.668373, 21.839392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769669, 35.060894, 21.784149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517731, -0.049492, -0.854111,
		-0.844979, 0.185982, 0.501419,
		0.134033, 0.981306, -0.138108,
		36.809879, 35.355286, 21.742716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117092, 35.001804, 21.700180>,  <36.716057, 34.668373, 21.839392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117092, 35.001804, 21.700180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401169, 35.190575, 21.491215>,  <36.571613, 35.303837, 21.365835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401169, 35.190575, 21.491215>,  <36.117092, 35.001804, 21.700180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401169, 35.190575, 21.491215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577204, -0.034531, -0.815869,
		-0.403070, 0.880961, 0.247874,
		0.710190, 0.471927, -0.522413,
		36.614227, 35.332153, 21.334492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025536, 35.132347, 20.960409>,  <36.117092, 35.001804, 21.700180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025536, 35.132347, 20.960409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822044, 34.795803, 20.887398>,  <35.699951, 34.593876, 20.843590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822044, 34.795803, 20.887398>,  <36.025536, 35.132347, 20.960409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822044, 34.795803, 20.887398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854834, -0.518823, 0.008976,
		-0.102253, -0.151466, 0.983159,
		-0.508726, -0.841356, -0.182529,
		35.669426, 34.543396, 20.832640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653774, 35.589901, 20.499912>,  <36.025536, 35.132347, 20.960409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653774, 35.589901, 20.499912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906792, 35.843990, 20.677170>,  <36.058601, 35.996445, 20.783524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906792, 35.843990, 20.677170>,  <35.653774, 35.589901, 20.499912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906792, 35.843990, 20.677170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154989, 0.456763, -0.875983,
		-0.758857, 0.622781, 0.190470,
		0.632545, 0.635225, 0.443142,
		36.096554, 36.034557, 20.810112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117352, 35.512165, 20.021252>,  <35.653774, 35.589901, 20.499912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117352, 35.512165, 20.021252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071896, 35.793373, 20.302063>,  <35.044624, 35.962097, 20.470551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071896, 35.793373, 20.302063>,  <35.117352, 35.512165, 20.021252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071896, 35.793373, 20.302063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960963, 0.101639, -0.257333,
		-0.252265, -0.703865, 0.664030,
		-0.113636, 0.703024, 0.702028,
		35.037804, 36.004280, 20.512671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523117, 35.050919, 19.750053>,  <35.117352, 35.512165, 20.021252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523117, 35.050919, 19.750053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308460, 35.009251, 20.084995>,  <34.179668, 34.984249, 20.285961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308460, 35.009251, 20.084995>,  <34.523117, 35.050919, 19.750053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308460, 35.009251, 20.084995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039369, -0.988179, -0.148165,
		0.842893, -0.112477, 0.526195,
		-0.536640, -0.104171, 0.837357,
		34.147469, 34.978001, 20.336203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860840, 34.511421, 20.103985>,  <34.523117, 35.050919, 19.750053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860840, 34.511421, 20.103985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485809, 34.544788, 20.239037>,  <34.260792, 34.564808, 20.320068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485809, 34.544788, 20.239037>,  <34.860840, 34.511421, 20.103985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485809, 34.544788, 20.239037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148911, -0.973604, -0.172978,
		0.314290, -0.212457, 0.925248,
		-0.937575, 0.083415, 0.337631,
		34.204536, 34.569813, 20.340326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807945, 34.022484, 20.577950>,  <34.860840, 34.511421, 20.103985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807945, 34.022484, 20.577950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424526, 34.099030, 20.493515>,  <34.194473, 34.144958, 20.442854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424526, 34.099030, 20.493515>,  <34.807945, 34.022484, 20.577950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424526, 34.099030, 20.493515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178092, -0.980726, -0.080366,
		-0.222399, -0.039442, 0.974157,
		-0.958552, 0.191364, -0.211088,
		34.136959, 34.156437, 20.430189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417892, 33.597538, 21.084780>,  <34.807945, 34.022484, 20.577950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417892, 33.597538, 21.084780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196030, 33.695484, 20.766685>,  <34.062912, 33.754253, 20.575829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196030, 33.695484, 20.766685>,  <34.417892, 33.597538, 21.084780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196030, 33.695484, 20.766685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216546, -0.965265, -0.146187,
		-0.803409, 0.091122, 0.588413,
		-0.554654, 0.244866, -0.795236,
		34.029633, 33.768944, 20.528114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184647, 33.065102, 20.934093>,  <34.417892, 33.597538, 21.084780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184647, 33.065102, 20.934093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036419, 33.204609, 20.589760>,  <33.947483, 33.288315, 20.383160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036419, 33.204609, 20.589760>,  <34.184647, 33.065102, 20.934093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036419, 33.204609, 20.589760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332166, -0.915289, -0.227843,
		-0.867377, 0.201509, 0.455028,
		-0.370570, 0.348771, -0.860835,
		33.925247, 33.309238, 20.331509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506172, 32.791534, 20.965799>,  <34.184647, 33.065102, 20.934093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506172, 32.791534, 20.965799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624313, 32.858284, 20.589520>,  <33.695198, 32.898335, 20.363750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624313, 32.858284, 20.589520>,  <33.506172, 32.791534, 20.965799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624313, 32.858284, 20.589520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298166, -0.919348, -0.256702,
		-0.907670, 0.356304, -0.221776,
		0.295353, 0.166874, -0.940702,
		33.712917, 32.908348, 20.307308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958508, 32.445816, 20.567852>,  <33.506172, 32.791534, 20.965799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958508, 32.445816, 20.567852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276913, 32.476460, 20.327686>,  <33.467957, 32.494846, 20.183586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276913, 32.476460, 20.327686>,  <32.958508, 32.445816, 20.567852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276913, 32.476460, 20.327686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189532, -0.910525, -0.367453,
		-0.574843, 0.406294, -0.710267,
		0.796010, 0.076609, -0.600415,
		33.515717, 32.499443, 20.147562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749420, 31.960484, 20.072989>,  <32.958508, 32.445816, 20.567852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749420, 31.960484, 20.072989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138077, 32.028660, 20.007420>,  <33.371269, 32.069565, 19.968079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138077, 32.028660, 20.007420>,  <32.749420, 31.960484, 20.072989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138077, 32.028660, 20.007420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105934, -0.933463, -0.342674,
		-0.211420, 0.315590, -0.925043,
		0.971638, 0.170441, -0.163921,
		33.429569, 32.079792, 19.958242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793228, 31.729443, 19.385565>,  <32.749420, 31.960484, 20.072989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793228, 31.729443, 19.385565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137733, 31.704273, 19.587265>,  <33.344437, 31.689171, 19.708284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137733, 31.704273, 19.587265>,  <32.793228, 31.729443, 19.385565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137733, 31.704273, 19.587265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093825, -0.955551, -0.279497,
		0.499425, 0.288031, -0.817076,
		0.861262, -0.062926, 0.504251,
		33.396111, 31.685396, 19.738541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232456, 31.528402, 18.844553>,  <32.793228, 31.729443, 19.385565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232456, 31.528402, 18.844553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401127, 31.432297, 19.194286>,  <33.502331, 31.374634, 19.404127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401127, 31.432297, 19.194286>,  <33.232456, 31.528402, 18.844553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401127, 31.432297, 19.194286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164979, -0.927831, -0.334531,
		0.891609, 0.285312, -0.351611,
		0.421681, -0.240262, 0.874334,
		33.527630, 31.360218, 19.456587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771198, 31.089945, 18.624502>,  <33.232456, 31.528402, 18.844553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771198, 31.089945, 18.624502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746567, 31.011806, 19.016022>,  <33.731789, 30.964924, 19.250933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746567, 31.011806, 19.016022>,  <33.771198, 31.089945, 18.624502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746567, 31.011806, 19.016022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345580, -0.924177, -0.162703,
		0.936367, 0.328234, 0.124416,
		-0.061578, -0.195346, 0.978799,
		33.728092, 30.953203, 19.309662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371536, 30.781816, 18.874174>,  <33.771198, 31.089945, 18.624502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371536, 30.781816, 18.874174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069786, 30.670414, 19.111950>,  <33.888737, 30.603573, 19.254616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069786, 30.670414, 19.111950>,  <34.371536, 30.781816, 18.874174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069786, 30.670414, 19.111950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267800, -0.957326, -0.108677,
		0.599338, 0.077208, 0.796764,
		-0.754372, -0.278508, 0.594438,
		33.843475, 30.586861, 19.290281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629986, 30.218298, 19.310863>,  <34.371536, 30.781816, 18.874174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629986, 30.218298, 19.310863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238907, 30.155277, 19.366409>,  <34.004261, 30.117464, 19.399736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238907, 30.155277, 19.366409>,  <34.629986, 30.218298, 19.310863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238907, 30.155277, 19.366409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167150, -0.984085, 0.060317,
		0.127153, 0.082183, 0.988473,
		-0.977698, -0.157554, 0.138866,
		33.945599, 30.108011, 19.408070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675243, 29.701960, 19.848656>,  <34.629986, 30.218298, 19.310863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675243, 29.701960, 19.848656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326839, 29.679482, 19.653439>,  <34.117798, 29.665995, 19.536308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326839, 29.679482, 19.653439>,  <34.675243, 29.701960, 19.848656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326839, 29.679482, 19.653439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011409, -0.995482, 0.094264,
		-0.491135, 0.076537, 0.867715,
		-0.871009, -0.056196, -0.488042,
		34.065536, 29.662622, 19.507027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356030, 29.145302, 20.128345>,  <34.675243, 29.701960, 19.848656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356030, 29.145302, 20.128345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107792, 29.203632, 19.820164>,  <33.958851, 29.238630, 19.635254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107792, 29.203632, 19.820164>,  <34.356030, 29.145302, 20.128345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107792, 29.203632, 19.820164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185939, -0.981899, -0.036076,
		-0.761769, 0.120868, 0.636474,
		-0.620592, 0.145827, -0.770454,
		33.921616, 29.247381, 19.589027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819386, 28.815054, 20.337004>,  <34.356030, 29.145302, 20.128345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819386, 28.815054, 20.337004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843910, 28.803768, 19.937916>,  <33.858624, 28.796997, 19.698463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843910, 28.803768, 19.937916>,  <33.819386, 28.815054, 20.337004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843910, 28.803768, 19.937916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093014, -0.995412, 0.022432,
		-0.993775, 0.091427, -0.063654,
		0.061311, -0.028213, -0.997720,
		33.862305, 28.795303, 19.638599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376457, 28.250559, 20.182106>,  <33.819386, 28.815054, 20.337004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376457, 28.250559, 20.182106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582664, 28.298767, 19.842762>,  <33.706390, 28.327692, 19.639156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582664, 28.298767, 19.842762>,  <33.376457, 28.250559, 20.182106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582664, 28.298767, 19.842762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022568, -0.987806, -0.154047,
		-0.856582, 0.098560, -0.506512,
		0.515518, 0.120523, -0.848361,
		33.737320, 28.334925, 19.588253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037334, 27.918627, 19.673311>,  <33.376457, 28.250559, 20.182106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037334, 27.918627, 19.673311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398701, 27.967522, 19.508923>,  <33.615520, 27.996859, 19.410290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398701, 27.967522, 19.508923>,  <33.037334, 27.918627, 19.673311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398701, 27.967522, 19.508923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017086, -0.968002, -0.250359,
		-0.428426, 0.219156, -0.876596,
		0.903415, 0.122238, -0.410973,
		33.669724, 28.004192, 19.385630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066681, 27.697847, 18.914175>,  <33.037334, 27.918627, 19.673311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066681, 27.697847, 18.914175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437145, 27.659294, 19.060020>,  <33.659424, 27.636162, 19.147528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437145, 27.659294, 19.060020>,  <33.066681, 27.697847, 18.914175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437145, 27.659294, 19.060020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002022, -0.965508, -0.260366,
		0.377131, 0.241877, -0.894018,
		0.926158, -0.096384, 0.364612,
		33.714993, 27.630379, 19.169403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391853, 27.295595, 18.383738>,  <33.066681, 27.697847, 18.914175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391853, 27.295595, 18.383738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589054, 27.265938, 18.730484>,  <33.707375, 27.248144, 18.938532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589054, 27.265938, 18.730484>,  <33.391853, 27.295595, 18.383738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589054, 27.265938, 18.730484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197294, -0.960879, -0.194388,
		0.847365, 0.266860, -0.459083,
		0.492998, -0.074143, 0.866866,
		33.736954, 27.243694, 18.990543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930096, 26.972507, 18.175070>,  <33.391853, 27.295595, 18.383738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930096, 26.972507, 18.175070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937813, 26.915924, 18.570972>,  <33.942444, 26.881975, 18.808514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937813, 26.915924, 18.570972>,  <33.930096, 26.972507, 18.175070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937813, 26.915924, 18.570972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172603, -0.974606, -0.142656,
		0.984803, 0.173587, 0.005613,
		0.019293, -0.141456, 0.989757,
		33.943600, 26.873487, 18.867899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519375, 26.506779, 18.372747>,  <33.930096, 26.972507, 18.175070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519375, 26.506779, 18.372747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282562, 26.501656, 18.695072>,  <34.140476, 26.498581, 18.888468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282562, 26.501656, 18.695072>,  <34.519375, 26.506779, 18.372747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282562, 26.501656, 18.695072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132661, -0.987783, 0.081764,
		0.794921, 0.155307, 0.586498,
		-0.592032, -0.012809, 0.805813,
		34.104954, 26.497812, 18.936815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923309, 26.111200, 18.903250>,  <34.519375, 26.506779, 18.372747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923309, 26.111200, 18.903250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539120, 26.115353, 19.014519>,  <34.308605, 26.117844, 19.081280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539120, 26.115353, 19.014519>,  <34.923309, 26.111200, 18.903250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539120, 26.115353, 19.014519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024886, -0.992101, 0.122944,
		0.277254, 0.125008, 0.952630,
		-0.960474, 0.010380, 0.278175,
		34.250977, 26.118467, 19.097971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906181, 25.659925, 19.446463>,  <34.923309, 26.111200, 18.903250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906181, 25.659925, 19.446463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520336, 25.677532, 19.342472>,  <34.288830, 25.688097, 19.280077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520336, 25.677532, 19.342472>,  <34.906181, 25.659925, 19.446463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520336, 25.677532, 19.342472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058573, -0.997104, 0.048510,
		-0.257088, 0.062021, 0.964396,
		-0.964611, 0.044016, -0.259976,
		34.230953, 25.690737, 19.264479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614082, 25.163599, 19.815794>,  <34.906181, 25.659925, 19.446463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614082, 25.163599, 19.815794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380260, 25.214031, 19.495193>,  <34.239967, 25.244291, 19.302834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380260, 25.214031, 19.495193>,  <34.614082, 25.163599, 19.815794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380260, 25.214031, 19.495193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180514, -0.983303, -0.023027,
		-0.791022, 0.131222, 0.597549,
		-0.584550, 0.126081, -0.801502,
		34.204895, 25.251856, 19.254744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121235, 24.677734, 19.997398>,  <34.614082, 25.163599, 19.815794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121235, 24.677734, 19.997398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066288, 24.750031, 19.607841>,  <34.033321, 24.793407, 19.374107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066288, 24.750031, 19.607841>,  <34.121235, 24.677734, 19.997398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066288, 24.750031, 19.607841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215312, -0.965151, -0.148746,
		-0.966836, 0.189257, 0.171495,
		-0.137368, 0.180738, -0.973891,
		34.025078, 24.804253, 19.315674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479923, 24.476866, 19.850861>,  <34.121235, 24.677734, 19.997398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479923, 24.476866, 19.850861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703335, 24.465313, 19.519268>,  <33.837383, 24.458382, 19.320312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703335, 24.465313, 19.519268>,  <33.479923, 24.476866, 19.850861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703335, 24.465313, 19.519268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105381, -0.993766, -0.036380,
		-0.822761, 0.107678, -0.558095,
		0.558533, -0.028881, -0.828979,
		33.870895, 24.456648, 19.270575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105099, 23.997398, 19.460506>,  <33.479923, 24.476866, 19.850861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105099, 23.997398, 19.460506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451538, 24.017902, 19.261612>,  <33.659401, 24.030205, 19.142275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451538, 24.017902, 19.261612>,  <33.105099, 23.997398, 19.460506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451538, 24.017902, 19.261612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050458, -0.980683, -0.188983,
		-0.497318, 0.188767, -0.846783,
		0.866100, 0.051258, -0.497236,
		33.711369, 24.033279, 19.112440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005013, 23.796034, 18.739538>,  <33.105099, 23.997398, 19.460506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005013, 23.796034, 18.739538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378990, 23.746563, 18.872555>,  <33.603378, 23.716881, 18.952366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378990, 23.746563, 18.872555>,  <33.005013, 23.796034, 18.739538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378990, 23.746563, 18.872555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087734, -0.988760, -0.121066,
		0.343778, 0.084015, -0.935285,
		0.934943, -0.123676, 0.332543,
		33.659473, 23.709459, 18.972317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157932, 23.132641, 18.418863>,  <33.005013, 23.796034, 18.739538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157932, 23.132641, 18.418863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466099, 23.174644, 18.670395>,  <33.651001, 23.199846, 18.821314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466099, 23.174644, 18.670395>,  <33.157932, 23.132641, 18.418863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466099, 23.174644, 18.670395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129693, -0.991532, 0.006680,
		0.624208, 0.076409, -0.777513,
		0.770418, 0.105007, 0.628831,
		33.697224, 23.206146, 18.859045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658772, 22.653212, 18.284418>,  <33.157932, 23.132641, 18.418863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658772, 22.653212, 18.284418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783306, 22.752728, 18.651279>,  <33.858028, 22.812437, 18.871397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783306, 22.752728, 18.651279>,  <33.658772, 22.653212, 18.284418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783306, 22.752728, 18.651279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202212, -0.960363, 0.191867,
		0.928536, 0.125724, -0.349306,
		0.311338, 0.248790, 0.917154,
		33.876709, 22.827364, 18.926426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273518, 22.284534, 18.424049>,  <33.658772, 22.653212, 18.284418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273518, 22.284534, 18.424049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136608, 22.372021, 18.789566>,  <34.054462, 22.424513, 19.008875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136608, 22.372021, 18.789566>,  <34.273518, 22.284534, 18.424049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136608, 22.372021, 18.789566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239403, -0.920133, 0.309906,
		0.908590, 0.324837, 0.262575,
		-0.342273, 0.218716, 0.913790,
		34.033928, 22.437635, 19.063704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779388, 22.006645, 18.848841>,  <34.273518, 22.284534, 18.424049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779388, 22.006645, 18.848841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468491, 22.058575, 19.095104>,  <34.281952, 22.089733, 19.242863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468491, 22.058575, 19.095104>,  <34.779388, 22.006645, 18.848841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468491, 22.058575, 19.095104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064029, -0.989722, 0.127868,
		0.625931, 0.059965, 0.777570,
		-0.777246, 0.129824, 0.615658,
		34.235317, 22.097523, 19.279802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900040, 21.563690, 19.418509>,  <34.779388, 22.006645, 18.848841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900040, 21.563690, 19.418509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506477, 21.634567, 19.409267>,  <34.270340, 21.677094, 19.403723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506477, 21.634567, 19.409267>,  <34.900040, 21.563690, 19.418509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506477, 21.634567, 19.409267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178613, -0.971369, 0.156651,
		0.005314, 0.158257, 0.987384,
		-0.983905, 0.177192, -0.023105,
		34.211308, 21.687725, 19.402336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526154, 21.333447, 20.059824>,  <34.900040, 21.563690, 19.418509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526154, 21.333447, 20.059824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246944, 21.350105, 19.773876>,  <34.079418, 21.360100, 19.602308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246944, 21.350105, 19.773876>,  <34.526154, 21.333447, 20.059824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246944, 21.350105, 19.773876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333354, -0.902434, 0.272924,
		-0.633755, 0.428810, 0.643799,
		-0.698019, 0.041646, -0.714868,
		34.037540, 21.362598, 19.559416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896564, 21.078966, 20.339392>,  <34.526154, 21.333447, 20.059824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896564, 21.078966, 20.339392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814159, 21.028053, 19.951298>,  <33.764717, 20.997505, 19.718441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814159, 21.028053, 19.951298>,  <33.896564, 21.078966, 20.339392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814159, 21.028053, 19.951298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455229, -0.865215, 0.210167,
		-0.866213, 0.484977, 0.120303,
		-0.206014, -0.127284, -0.970235,
		33.752354, 20.989868, 19.660227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253929, 20.906961, 20.373806>,  <33.896564, 21.078966, 20.339392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253929, 20.906961, 20.373806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347099, 20.780430, 20.005962>,  <33.403000, 20.704512, 19.785255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347099, 20.780430, 20.005962>,  <33.253929, 20.906961, 20.373806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347099, 20.780430, 20.005962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467684, -0.865526, 0.179267,
		-0.852653, 0.388331, -0.349545,
		0.232925, -0.316329, -0.919609,
		33.416977, 20.685532, 19.730080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692154, 20.502539, 20.139265>,  <33.253929, 20.906961, 20.373806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692154, 20.502539, 20.139265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015873, 20.374634, 19.942173>,  <33.210106, 20.297892, 19.823917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015873, 20.374634, 19.942173>,  <32.692154, 20.502539, 20.139265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015873, 20.374634, 19.942173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222850, -0.943273, 0.246115,
		-0.543478, -0.089376, -0.834652,
		0.809302, -0.319761, -0.492731,
		33.258663, 20.278706, 19.794353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442509, 19.858040, 20.033438>,  <32.692154, 20.502539, 20.139265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442509, 19.858040, 20.033438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822540, 19.820351, 19.914459>,  <33.050560, 19.797737, 19.843073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822540, 19.820351, 19.914459>,  <32.442509, 19.858040, 20.033438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822540, 19.820351, 19.914459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069277, -0.993220, 0.093348,
		-0.304225, -0.068082, -0.950164,
		0.950078, -0.094224, -0.297446,
		33.107563, 19.792084, 19.825226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425793, 19.302868, 19.590279>,  <32.442509, 19.858040, 20.033438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425793, 19.302868, 19.590279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811596, 19.329021, 19.692608>,  <33.043079, 19.344713, 19.754005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811596, 19.329021, 19.692608>,  <32.425793, 19.302868, 19.590279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811596, 19.329021, 19.692608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059743, -0.997770, 0.029758,
		0.257199, -0.013418, -0.966265,
		0.964510, 0.065382, 0.255824,
		33.100948, 19.348637, 19.769356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641922, 18.746439, 19.318890>,  <32.425793, 19.302868, 19.590279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641922, 18.746439, 19.318890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927086, 18.854424, 19.577774>,  <33.098183, 18.919214, 19.733105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927086, 18.854424, 19.577774>,  <32.641922, 18.746439, 19.318890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927086, 18.854424, 19.577774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235942, -0.961462, 0.141146,
		0.660372, 0.052080, -0.749130,
		0.712910, 0.269960, 0.647211,
		33.140957, 18.935411, 19.771936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255516, 18.464209, 19.068895>,  <32.641922, 18.746439, 19.318890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255516, 18.464209, 19.068895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281330, 18.521637, 19.463909>,  <33.296818, 18.556093, 19.700918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281330, 18.521637, 19.463909>,  <33.255516, 18.464209, 19.068895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281330, 18.521637, 19.463909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341521, -0.933017, 0.113326,
		0.937656, 0.329950, -0.109243,
		0.064534, 0.143570, 0.987534,
		33.300690, 18.564709, 19.760170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949997, 18.481869, 19.391800>,  <33.255516, 18.464209, 19.068895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949997, 18.481869, 19.391800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661034, 18.340599, 19.629589>,  <33.487656, 18.255838, 19.772263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661034, 18.340599, 19.629589>,  <33.949997, 18.481869, 19.391800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661034, 18.340599, 19.629589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461025, -0.886757, 0.033422,
		0.515350, 0.298211, 0.803420,
		-0.722406, -0.353173, 0.594474,
		33.444313, 18.234648, 19.807932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205837, 17.921877, 19.585176>,  <33.949997, 18.481869, 19.391800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205837, 17.921877, 19.585176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834873, 17.881943, 19.729370>,  <33.612297, 17.857983, 19.815887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834873, 17.881943, 19.729370>,  <34.205837, 17.921877, 19.585176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834873, 17.881943, 19.729370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132612, -0.988881, 0.067297,
		0.349759, 0.110216, 0.930334,
		-0.927406, -0.099836, 0.360486,
		33.556652, 17.851992, 19.837517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215916, 17.690701, 20.288431>,  <34.205837, 17.921877, 19.585176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215916, 17.690701, 20.288431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921215, 17.550766, 20.056980>,  <33.744396, 17.466806, 19.918110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921215, 17.550766, 20.056980>,  <34.215916, 17.690701, 20.288431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921215, 17.550766, 20.056980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447935, -0.893559, -0.030103,
		-0.506508, -0.281366, 0.815035,
		-0.736752, -0.349835, -0.578629,
		33.700188, 17.445816, 19.883392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738800, 17.183277, 20.638895>,  <34.215916, 17.690701, 20.288431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738800, 17.183277, 20.638895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762245, 17.109833, 20.246395>,  <33.776310, 17.065765, 20.010895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762245, 17.109833, 20.246395>,  <33.738800, 17.183277, 20.638895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762245, 17.109833, 20.246395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377746, -0.905773, 0.192052,
		-0.924052, -0.381919, 0.016271,
		0.058611, -0.183612, -0.981250,
		33.779827, 17.054749, 19.952021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563778, 16.428635, 20.456734>,  <33.738800, 17.183277, 20.638895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563778, 16.428635, 20.456734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851219, 16.581844, 20.224560>,  <34.023682, 16.673771, 20.085255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851219, 16.581844, 20.224560>,  <33.563778, 16.428635, 20.456734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851219, 16.581844, 20.224560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575379, -0.796243, 0.186909,
		-0.390577, -0.468283, -0.792566,
		0.718601, 0.383024, -0.580435,
		34.066799, 16.696751, 20.050428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928951, 16.882462, 20.466528>,  <33.563778, 16.428635, 20.456734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928951, 16.882462, 20.466528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659489, 16.750977, 20.731293>,  <32.497810, 16.672085, 20.890152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659489, 16.750977, 20.731293>,  <32.928951, 16.882462, 20.466528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659489, 16.750977, 20.731293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288515, 0.707594, 0.645035,
		-0.680398, 0.625506, -0.381839,
		-0.673659, -0.328714, 0.661914,
		32.457390, 16.652363, 20.929867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333599, 17.283049, 20.620638>,  <32.928951, 16.882462, 20.466528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333599, 17.283049, 20.620638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461426, 17.077713, 20.939224>,  <32.538120, 16.954512, 21.130377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461426, 17.077713, 20.939224>,  <32.333599, 17.283049, 20.620638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461426, 17.077713, 20.939224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102051, 0.854299, 0.509665,
		-0.942052, -0.081592, 0.325392,
		0.319567, -0.513338, 0.796468,
		32.557297, 16.923712, 21.178165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881067, 17.313669, 21.214771>,  <32.333599, 17.283049, 20.620638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881067, 17.313669, 21.214771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250732, 17.251511, 21.354355>,  <32.472530, 17.214216, 21.438105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250732, 17.251511, 21.354355>,  <31.881067, 17.313669, 21.214771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250732, 17.251511, 21.354355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083838, 0.808731, 0.582173,
		-0.372680, -0.567280, 0.734373,
		0.924165, -0.155396, 0.348957,
		32.527981, 17.204891, 21.459042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935642, 17.271442, 22.023584>,  <31.881067, 17.313669, 21.214771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935642, 17.271442, 22.023584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260914, 17.408836, 21.835644>,  <32.456078, 17.491272, 21.722879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260914, 17.408836, 21.835644>,  <31.935642, 17.271442, 22.023584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260914, 17.408836, 21.835644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114784, 0.886077, 0.449102,
		0.570584, -0.311268, 0.759964,
		0.813178, 0.343483, -0.469853,
		32.504868, 17.511881, 21.694689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017620, 17.954887, 22.197805>,  <31.935642, 17.271442, 22.023584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017620, 17.954887, 22.197805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341457, 17.980503, 21.964413>,  <32.535759, 17.995872, 21.824377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341457, 17.980503, 21.964413>,  <32.017620, 17.954887, 22.197805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341457, 17.980503, 21.964413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097454, 0.965571, 0.241194,
		0.578839, -0.252133, 0.775483,
		0.809597, 0.064039, -0.583482,
		32.584335, 17.999714, 21.789368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745792, 18.026583, 22.504133>,  <32.017620, 17.954887, 22.197805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745792, 18.026583, 22.504133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722366, 18.199684, 22.144291>,  <32.708309, 18.303545, 21.928385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722366, 18.199684, 22.144291>,  <32.745792, 18.026583, 22.504133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722366, 18.199684, 22.144291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314933, 0.863146, 0.394710,
		0.947305, -0.260199, -0.186842,
		-0.058569, 0.432753, -0.899608,
		32.704796, 18.329510, 21.874409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384811, 18.467634, 22.372427>,  <32.745792, 18.026583, 22.504133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384811, 18.467634, 22.372427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095531, 18.607056, 22.133934>,  <32.921963, 18.690708, 21.990837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095531, 18.607056, 22.133934>,  <33.384811, 18.467634, 22.372427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095531, 18.607056, 22.133934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230817, 0.935645, 0.267006,
		0.650930, 0.055477, -0.757108,
		-0.723197, 0.348556, -0.596234,
		32.878571, 18.711622, 21.955063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703880, 19.001400, 22.067341>,  <33.384811, 18.467634, 22.372427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703880, 19.001400, 22.067341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315762, 19.084995, 22.018600>,  <33.082890, 19.135153, 21.989357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315762, 19.084995, 22.018600>,  <33.703880, 19.001400, 22.067341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315762, 19.084995, 22.018600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149970, 0.914860, 0.374886,
		0.189823, 0.345477, -0.919028,
		-0.970297, 0.208989, -0.121850,
		33.024673, 19.147692, 21.982046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794174, 19.688629, 21.866070>,  <33.703880, 19.001400, 22.067341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794174, 19.688629, 21.866070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404716, 19.663963, 21.953907>,  <33.171043, 19.649164, 22.006609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404716, 19.663963, 21.953907>,  <33.794174, 19.688629, 21.866070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404716, 19.663963, 21.953907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000030, 0.962793, 0.270239,
		-0.228086, 0.263109, -0.937417,
		-0.973641, -0.061666, 0.219592,
		33.112625, 19.645464, 22.019785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546196, 20.238464, 21.543436>,  <33.794174, 19.688629, 21.866070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546196, 20.238464, 21.543436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244045, 20.152908, 21.791195>,  <33.062756, 20.101574, 21.939850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244045, 20.152908, 21.791195>,  <33.546196, 20.238464, 21.543436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244045, 20.152908, 21.791195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187744, 0.976245, 0.108155,
		-0.627815, -0.034589, -0.777594,
		-0.755381, -0.213890, 0.619395,
		33.017429, 20.088741, 21.977013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940094, 20.633476, 21.346138>,  <33.546196, 20.238464, 21.543436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940094, 20.633476, 21.346138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898548, 20.529858, 21.730244>,  <32.873623, 20.467686, 21.960707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898548, 20.529858, 21.730244>,  <32.940094, 20.633476, 21.346138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898548, 20.529858, 21.730244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211031, 0.949242, 0.233250,
		-0.971946, -0.178419, -0.153258,
		-0.103863, -0.259048, 0.960264,
		32.867390, 20.452143, 22.018322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203220, 20.865347, 21.655750>,  <32.940094, 20.633476, 21.346138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203220, 20.865347, 21.655750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453278, 20.821762, 21.964897>,  <32.603313, 20.795610, 22.150385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453278, 20.821762, 21.964897>,  <32.203220, 20.865347, 21.655750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453278, 20.821762, 21.964897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305027, 0.877354, 0.370417,
		-0.718440, -0.467309, 0.515234,
		0.625142, -0.108962, 0.772868,
		32.640820, 20.789074, 22.196758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784494, 21.139240, 22.190435>,  <32.203220, 20.865347, 21.655750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784494, 21.139240, 22.190435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171391, 21.136471, 22.291939>,  <32.403530, 21.134809, 22.352840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171391, 21.136471, 22.291939>,  <31.784494, 21.139240, 22.190435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171391, 21.136471, 22.291939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089899, 0.925505, 0.367912,
		-0.237403, -0.378672, 0.894565,
		0.967243, -0.006923, 0.253759,
		32.461563, 21.134394, 22.368067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637728, 21.396187, 22.929121>,  <31.784494, 21.139240, 22.190435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637728, 21.396187, 22.929121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017818, 21.460239, 22.822220>,  <32.245872, 21.498671, 22.758080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017818, 21.460239, 22.822220>,  <31.637728, 21.396187, 22.929121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017818, 21.460239, 22.822220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018400, 0.885150, 0.464943,
		0.311013, -0.436884, 0.844040,
		0.950228, 0.160134, -0.267254,
		32.302887, 21.508280, 22.742044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907223, 21.825058, 23.422449>,  <31.637728, 21.396187, 22.929121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907223, 21.825058, 23.422449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167355, 21.868797, 23.121754>,  <32.323433, 21.895041, 22.941336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167355, 21.868797, 23.121754>,  <31.907223, 21.825058, 23.422449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167355, 21.868797, 23.121754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154668, 0.949797, 0.271962,
		0.743739, -0.293136, 0.600770,
		0.650331, 0.109349, -0.751739,
		32.362453, 21.901602, 22.896233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373192, 22.353897, 23.631908>,  <31.907223, 21.825058, 23.422449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373192, 22.353897, 23.631908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447124, 22.355473, 23.238804>,  <32.491486, 22.356419, 23.002941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447124, 22.355473, 23.238804>,  <32.373192, 22.353897, 23.631908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447124, 22.355473, 23.238804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263598, 0.963151, 0.053438,
		0.946758, -0.268931, 0.176987,
		0.184836, 0.003940, -0.982761,
		32.502575, 22.356655, 22.943975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980923, 22.721088, 23.593464>,  <32.373192, 22.353897, 23.631908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980923, 22.721088, 23.593464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815552, 22.727268, 23.229301>,  <32.716331, 22.730976, 23.010803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815552, 22.727268, 23.229301>,  <32.980923, 22.721088, 23.593464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815552, 22.727268, 23.229301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347590, 0.926814, -0.142118,
		0.841582, -0.375203, -0.388538,
		-0.413426, 0.015448, -0.910407,
		32.691525, 22.731903, 22.956179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507221, 23.036688, 23.077814>,  <32.980923, 22.721088, 23.593464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507221, 23.036688, 23.077814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152763, 23.065842, 22.894756>,  <32.940090, 23.083334, 22.784922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152763, 23.065842, 22.894756>,  <33.507221, 23.036688, 23.077814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152763, 23.065842, 22.894756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139097, 0.983851, -0.112650,
		0.442042, -0.163481, -0.881971,
		-0.886144, 0.072884, -0.457643,
		32.886921, 23.087708, 22.757463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601685, 23.431965, 22.524002>,  <33.507221, 23.036688, 23.077814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601685, 23.431965, 22.524002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205605, 23.463367, 22.570198>,  <32.967957, 23.482208, 22.597916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205605, 23.463367, 22.570198>,  <33.601685, 23.431965, 22.524002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205605, 23.463367, 22.570198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070455, 0.994897, -0.072219,
		-0.120572, -0.063374, -0.990680,
		-0.990201, 0.078506, 0.115492,
		32.908543, 23.486919, 22.604845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390461, 23.895752, 22.003611>,  <33.601685, 23.431965, 22.524002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390461, 23.895752, 22.003611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106812, 23.917660, 22.284794>,  <32.936623, 23.930805, 22.453503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106812, 23.917660, 22.284794>,  <33.390461, 23.895752, 22.003611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106812, 23.917660, 22.284794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092489, 0.995589, 0.015729,
		-0.698995, 0.076169, -0.711059,
		-0.709121, 0.054771, 0.702957,
		32.894073, 23.934092, 22.495680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032925, 24.649668, 21.879929>,  <33.390461, 23.895752, 22.003611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032925, 24.649668, 21.879929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931831, 24.519478, 22.244389>,  <32.871178, 24.441364, 22.463064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931831, 24.519478, 22.244389>,  <33.032925, 24.649668, 21.879929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931831, 24.519478, 22.244389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001305, 0.941836, 0.336071,
		-0.967536, 0.083746, -0.238454,
		-0.252729, -0.325472, 0.911151,
		32.856014, 24.421837, 22.517735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534550, 25.096184, 21.975981>,  <33.032925, 24.649668, 21.879929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534550, 25.096184, 21.975981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591057, 24.963566, 22.349102>,  <32.624962, 24.883995, 22.572975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591057, 24.963566, 22.349102>,  <32.534550, 25.096184, 21.975981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591057, 24.963566, 22.349102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016400, 0.941339, 0.337065,
		-0.989835, -0.062915, 0.127545,
		0.141270, -0.331547, 0.932802,
		32.633438, 24.864101, 22.628942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000626, 25.303175, 22.347965>,  <32.534550, 25.096184, 21.975981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000626, 25.303175, 22.347965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322227, 25.251076, 22.580040>,  <32.515186, 25.219816, 22.719286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322227, 25.251076, 22.580040>,  <32.000626, 25.303175, 22.347965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322227, 25.251076, 22.580040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105374, 0.929065, 0.354590,
		-0.585218, -0.346227, 0.733244,
		0.804001, -0.130248, 0.580189,
		32.563427, 25.212002, 22.754097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779564, 25.454969, 23.019840>,  <32.000626, 25.303175, 22.347965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779564, 25.454969, 23.019840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177315, 25.497032, 23.014828>,  <32.415966, 25.522270, 23.011820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177315, 25.497032, 23.014828>,  <31.779564, 25.454969, 23.019840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177315, 25.497032, 23.014828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094417, 0.933929, 0.344764,
		0.047958, -0.341642, 0.938606,
		0.994377, 0.105155, -0.012533,
		32.475628, 25.528578, 23.011068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946981, 25.886389, 23.552843>,  <31.779564, 25.454969, 23.019840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946981, 25.886389, 23.552843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308811, 25.884537, 23.382328>,  <32.525909, 25.883427, 23.280018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308811, 25.884537, 23.382328>,  <31.946981, 25.886389, 23.552843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308811, 25.884537, 23.382328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189467, 0.900125, 0.392273,
		0.381897, -0.435608, 0.815108,
		0.904575, -0.004628, -0.426289,
		32.580185, 25.883148, 23.254442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473495, 26.002371, 24.072039>,  <31.946981, 25.886389, 23.552843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473495, 26.002371, 24.072039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605515, 26.116772, 23.712200>,  <32.684727, 26.185411, 23.496298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605515, 26.116772, 23.712200>,  <32.473495, 26.002371, 24.072039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605515, 26.116772, 23.712200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121407, 0.957943, 0.260011,
		0.936124, 0.023401, 0.350890,
		0.330048, 0.286003, -0.899595,
		32.704529, 26.202572, 23.442322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040207, 26.534502, 24.221367>,  <32.473495, 26.002371, 24.072039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040207, 26.534502, 24.221367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903805, 26.584541, 23.848686>,  <32.821964, 26.614565, 23.625078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903805, 26.584541, 23.848686>,  <33.040207, 26.534502, 24.221367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903805, 26.584541, 23.848686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020579, 0.991862, 0.125642,
		0.939836, 0.023671, -0.340804,
		-0.341005, 0.125097, -0.931701,
		32.801502, 26.622070, 23.569176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487759, 26.866976, 23.906704>,  <33.040207, 26.534502, 24.221367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487759, 26.866976, 23.906704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153454, 26.940025, 23.699570>,  <32.952873, 26.983854, 23.575289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153454, 26.940025, 23.699570>,  <33.487759, 26.866976, 23.906704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153454, 26.940025, 23.699570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200232, 0.979495, 0.022274,
		0.511285, -0.085071, -0.855190,
		-0.835760, 0.182624, -0.517835,
		32.902725, 26.994812, 23.544218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664680, 27.655813, 23.730032>,  <33.487759, 26.866976, 23.906704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664680, 27.655813, 23.730032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286621, 27.574787, 23.627541>,  <33.059784, 27.526171, 23.566046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286621, 27.574787, 23.627541>,  <33.664680, 27.655813, 23.730032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286621, 27.574787, 23.627541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122828, 0.947309, -0.295836,
		0.302656, -0.248138, -0.920232,
		-0.945152, -0.202567, -0.256230,
		33.003075, 27.514017, 23.550671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635315, 27.862377, 23.044016>,  <33.664680, 27.655813, 23.730032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635315, 27.862377, 23.044016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259056, 27.852451, 23.179413>,  <33.033302, 27.846497, 23.260651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259056, 27.852451, 23.179413>,  <33.635315, 27.862377, 23.044016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259056, 27.852451, 23.179413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111678, 0.964416, -0.239644,
		-0.320499, -0.263222, -0.909942,
		-0.940642, -0.024815, 0.338491,
		32.976864, 27.845007, 23.280960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291294, 28.084877, 22.508743>,  <33.635315, 27.862377, 23.044016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291294, 28.084877, 22.508743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065250, 28.139774, 22.834152>,  <32.929626, 28.172712, 23.029398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065250, 28.139774, 22.834152>,  <33.291294, 28.084877, 22.508743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065250, 28.139774, 22.834152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305689, 0.881050, -0.360977,
		-0.766296, -0.452676, -0.455934,
		-0.565106, 0.137242, 0.813523,
		32.895718, 28.180946, 23.078209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718430, 28.416988, 22.257879>,  <33.291294, 28.084877, 22.508743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718430, 28.416988, 22.257879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691307, 28.529568, 22.640751>,  <32.675034, 28.597116, 22.870474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691307, 28.529568, 22.640751>,  <32.718430, 28.416988, 22.257879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691307, 28.529568, 22.640751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178862, 0.940413, -0.289191,
		-0.981535, -0.190810, -0.013421,
		-0.067802, 0.281451, 0.957177,
		32.670967, 28.614002, 22.927904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048084, 28.708282, 22.375374>,  <32.718430, 28.416988, 22.257879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048084, 28.708282, 22.375374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286816, 28.851810, 22.662437>,  <32.430054, 28.937927, 22.834677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286816, 28.851810, 22.662437>,  <32.048084, 28.708282, 22.375374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286816, 28.851810, 22.662437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297516, 0.929639, -0.217383,
		-0.745168, -0.083774, 0.661594,
		0.596833, 0.358822, 0.717661,
		32.465866, 28.959457, 22.877735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712200, 29.341156, 22.645245>,  <32.048084, 28.708282, 22.375374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712200, 29.341156, 22.645245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087288, 29.372887, 22.780529>,  <32.312340, 29.391926, 22.861700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087288, 29.372887, 22.780529>,  <31.712200, 29.341156, 22.645245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087288, 29.372887, 22.780529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075159, 0.996847, -0.025427,
		-0.339164, -0.001576, 0.940726,
		0.937720, 0.079328, 0.338213,
		32.368603, 29.396685, 22.881992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706421, 29.821545, 23.061539>,  <31.712200, 29.341156, 22.645245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706421, 29.821545, 23.061539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101074, 29.825851, 22.996502>,  <32.337868, 29.828436, 22.957479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101074, 29.825851, 22.996502>,  <31.706421, 29.821545, 23.061539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101074, 29.825851, 22.996502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002205, 0.996841, 0.079394,
		0.162933, -0.078692, 0.983494,
		0.986635, 0.010767, -0.162592,
		32.397064, 29.829082, 22.947725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922228, 30.444719, 23.432667>,  <31.706421, 29.821545, 23.061539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922228, 30.444719, 23.432667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261120, 30.356392, 23.239407>,  <32.464455, 30.303394, 23.123449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261120, 30.356392, 23.239407>,  <31.922228, 30.444719, 23.432667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261120, 30.356392, 23.239407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183086, 0.975164, -0.124639,
		0.498676, 0.017140, 0.866619,
		0.847232, -0.220820, -0.483153,
		32.515289, 30.290146, 23.094461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487343, 30.761059, 23.872587>,  <31.922228, 30.444719, 23.432667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487343, 30.761059, 23.872587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569271, 30.719315, 23.483299>,  <32.618427, 30.694267, 23.249727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569271, 30.719315, 23.483299>,  <32.487343, 30.761059, 23.872587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569271, 30.719315, 23.483299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243313, 0.968518, -0.052649,
		0.948075, -0.226014, 0.223766,
		0.204822, -0.104360, -0.973220,
		32.630718, 30.688007, 23.191334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166405, 31.132914, 23.710098>,  <32.487343, 30.761059, 23.872587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166405, 31.132914, 23.710098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985222, 31.123913, 23.353600>,  <32.876511, 31.118513, 23.139700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985222, 31.123913, 23.353600>,  <33.166405, 31.132914, 23.710098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985222, 31.123913, 23.353600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095600, 0.992692, -0.073648,
		0.886390, -0.118563, -0.447500,
		-0.452961, -0.022500, -0.891246,
		32.849335, 31.117163, 23.086226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600403, 31.604855, 23.252596>,  <33.166405, 31.132914, 23.710098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600403, 31.604855, 23.252596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255989, 31.553719, 23.055710>,  <33.049339, 31.523037, 22.937578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255989, 31.553719, 23.055710>,  <33.600403, 31.604855, 23.252596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255989, 31.553719, 23.055710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037387, 0.981181, -0.189434,
		0.507171, -0.144707, -0.849610,
		-0.861034, -0.127840, -0.492217,
		32.997681, 31.515366, 22.908045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649769, 31.915627, 22.537582>,  <33.600403, 31.604855, 23.252596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649769, 31.915627, 22.537582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257866, 31.909954, 22.617466>,  <33.022724, 31.906551, 22.665396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257866, 31.909954, 22.617466>,  <33.649769, 31.915627, 22.537582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257866, 31.909954, 22.617466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087796, 0.926896, -0.364904,
		-0.179935, -0.375049, -0.909374,
		-0.979753, -0.014181, 0.199709,
		32.963940, 31.905701, 22.677378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351902, 32.327305, 21.927536>,  <33.649769, 31.915627, 22.537582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351902, 32.327305, 21.927536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088253, 32.311642, 22.227943>,  <32.930065, 32.302242, 22.408188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088253, 32.311642, 22.227943>,  <33.351902, 32.327305, 21.927536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088253, 32.311642, 22.227943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269771, 0.944491, -0.187511,
		-0.701987, -0.326195, -0.633096,
		-0.659119, -0.039160, 0.751018,
		32.890518, 32.299892, 22.453249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819687, 32.738060, 21.708426>,  <33.351902, 32.327305, 21.927536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819687, 32.738060, 21.708426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758148, 32.701717, 22.101990>,  <32.721226, 32.679913, 22.338127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758148, 32.701717, 22.101990>,  <32.819687, 32.738060, 21.708426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758148, 32.701717, 22.101990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370694, 0.928340, 0.027759,
		-0.915924, -0.360458, -0.176503,
		-0.153849, -0.090854, 0.983909,
		32.711994, 32.674461, 22.397161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163380, 33.207867, 21.866648>,  <32.819687, 32.738060, 21.708426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163380, 33.207867, 21.866648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364624, 33.161297, 22.209187>,  <32.485371, 33.133354, 22.414709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364624, 33.161297, 22.209187>,  <32.163380, 33.207867, 21.866648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364624, 33.161297, 22.209187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150337, 0.963988, 0.219378,
		-0.851047, -0.239111, 0.467487,
		0.503107, -0.116420, 0.856346,
		32.515556, 33.126369, 22.466091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770185, 33.533257, 22.299129>,  <32.163380, 33.207867, 21.866648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770185, 33.533257, 22.299129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137589, 33.512680, 22.455948>,  <32.358028, 33.500336, 22.550039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137589, 33.512680, 22.455948>,  <31.770185, 33.533257, 22.299129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137589, 33.512680, 22.455948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089854, 0.938411, 0.333633,
		-0.385063, -0.341671, 0.857314,
		0.918506, -0.051437, 0.392048,
		32.413139, 33.497250, 22.573563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732796, 33.814198, 23.001030>,  <31.770185, 33.533257, 22.299129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732796, 33.814198, 23.001030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122215, 33.857109, 22.920338>,  <32.355865, 33.882858, 22.871922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122215, 33.857109, 22.920338>,  <31.732796, 33.814198, 23.001030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122215, 33.857109, 22.920338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056232, 0.968255, 0.243557,
		0.221457, -0.225771, 0.948675,
		0.973548, 0.107283, -0.201731,
		32.414280, 33.889294, 22.859818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973780, 33.949848, 23.023661>,  <31.732796, 33.814198, 23.001030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973780, 33.949848, 23.023661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591469, 33.930553, 23.139702>,  <30.362082, 33.918976, 23.209326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591469, 33.930553, 23.139702>,  <30.973780, 33.949848, 23.023661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591469, 33.930553, 23.139702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112459, -0.971432, 0.208980,
		0.271734, 0.232363, 0.933899,
		-0.955779, -0.048239, 0.290103,
		30.304735, 33.916080, 23.226732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941595, 33.569443, 23.751705>,  <30.973780, 33.949848, 23.023661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941595, 33.569443, 23.751705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606636, 33.540123, 23.535042>,  <30.405661, 33.522530, 23.405045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606636, 33.540123, 23.535042>,  <30.941595, 33.569443, 23.751705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606636, 33.540123, 23.535042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041387, -0.979620, 0.196549,
		-0.545025, 0.187007, 0.817298,
		-0.837397, -0.073298, -0.541658,
		30.355417, 33.518135, 23.372545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574867, 33.065250, 24.039742>,  <30.941595, 33.569443, 23.751705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574867, 33.065250, 24.039742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367308, 33.099953, 23.699574>,  <30.242771, 33.120773, 23.495472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367308, 33.099953, 23.699574>,  <30.574867, 33.065250, 24.039742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367308, 33.099953, 23.699574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145287, -0.989313, -0.012279,
		-0.842399, 0.117183, 0.525959,
		-0.518899, 0.086759, -0.850422,
		30.211637, 33.125980, 23.444447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844961, 32.719341, 24.189037>,  <30.574867, 33.065250, 24.039742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844961, 32.719341, 24.189037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913900, 32.732124, 23.795231>,  <29.955263, 32.739796, 23.558947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913900, 32.732124, 23.795231>,  <29.844961, 32.719341, 24.189037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913900, 32.732124, 23.795231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313738, -0.945641, -0.085621,
		-0.933737, 0.323637, -0.152952,
		0.172348, 0.031961, -0.984518,
		29.965605, 32.741714, 23.499876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216473, 32.459541, 23.832804>,  <29.844961, 32.719341, 24.189037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216473, 32.459541, 23.832804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520859, 32.416927, 23.576809>,  <29.703491, 32.391357, 23.423212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520859, 32.416927, 23.576809>,  <29.216473, 32.459541, 23.832804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520859, 32.416927, 23.576809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206255, -0.974976, -0.082947,
		-0.615134, 0.195120, -0.763897,
		0.760966, -0.106534, -0.639986,
		29.749149, 32.384968, 23.384813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950897, 32.032124, 23.291361>,  <29.216473, 32.459541, 23.832804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950897, 32.032124, 23.291361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347713, 32.023796, 23.241692>,  <29.585804, 32.018799, 23.211891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347713, 32.023796, 23.241692>,  <28.950897, 32.032124, 23.291361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347713, 32.023796, 23.241692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049779, -0.970733, -0.234945,
		-0.115646, 0.239256, -0.964045,
		0.992042, -0.020818, -0.124172,
		29.645327, 32.017551, 23.204439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101999, 31.622366, 22.647997>,  <28.950897, 32.032124, 23.291361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101999, 31.622366, 22.647997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446980, 31.625210, 22.850433>,  <29.653969, 31.626917, 22.971895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446980, 31.625210, 22.850433>,  <29.101999, 31.622366, 22.647997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446980, 31.625210, 22.850433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078472, -0.989689, -0.119821,
		0.500019, 0.143053, -0.854118,
		0.862452, 0.007112, 0.506089,
		29.705715, 31.627344, 23.002260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496840, 31.348852, 22.212839>,  <29.101999, 31.622366, 22.647997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496840, 31.348852, 22.212839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658350, 31.311199, 22.576839>,  <29.755257, 31.288607, 22.795240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658350, 31.311199, 22.576839>,  <29.496840, 31.348852, 22.212839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658350, 31.311199, 22.576839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058932, -0.995303, -0.076807,
		0.912957, -0.022616, -0.407428,
		0.403777, -0.094132, 0.910002,
		29.779484, 31.282959, 22.849840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090326, 30.853954, 22.140215>,  <29.496840, 31.348852, 22.212839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090326, 30.853954, 22.140215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007189, 30.860241, 22.531429>,  <29.957306, 30.864014, 22.766157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007189, 30.860241, 22.531429>,  <30.090326, 30.853954, 22.140215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007189, 30.860241, 22.531429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057057, -0.998363, 0.003920,
		0.976496, -0.054989, 0.208401,
		-0.207844, 0.015719, 0.978036,
		29.944836, 30.864956, 22.824841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603640, 30.485771, 22.438419>,  <30.090326, 30.853954, 22.140215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603640, 30.485771, 22.438419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307775, 30.465363, 22.706837>,  <30.130257, 30.453117, 22.867887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307775, 30.465363, 22.706837>,  <30.603640, 30.485771, 22.438419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307775, 30.465363, 22.706837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094253, -0.995148, 0.028225,
		0.666347, 0.084124, 0.740881,
		-0.739661, -0.051023, 0.671043,
		30.085876, 30.450056, 22.908150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748976, 30.062263, 22.935619>,  <30.603640, 30.485771, 22.438419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748976, 30.062263, 22.935619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352665, 30.059563, 22.989758>,  <30.114880, 30.057943, 23.022240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352665, 30.059563, 22.989758>,  <30.748976, 30.062263, 22.935619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352665, 30.059563, 22.989758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041839, -0.965201, 0.258140,
		0.128893, 0.261421, 0.956580,
		-0.990776, -0.006750, 0.135345,
		30.055431, 30.057537, 23.030361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555914, 29.771408, 23.692865>,  <30.748976, 30.062263, 22.935619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555914, 29.771408, 23.692865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231495, 29.721447, 23.464268>,  <30.036844, 29.691469, 23.327110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231495, 29.721447, 23.464268>,  <30.555914, 29.771408, 23.692865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231495, 29.721447, 23.464268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028695, -0.967269, 0.252128,
		-0.584279, 0.220886, 0.780915,
		-0.811045, -0.124904, -0.571493,
		29.988182, 29.683975, 23.292820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000505, 29.527248, 24.192972>,  <30.555914, 29.771408, 23.692865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000505, 29.527248, 24.192972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883230, 29.424515, 23.824608>,  <29.812864, 29.362875, 23.603590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883230, 29.424515, 23.824608>,  <30.000505, 29.527248, 24.192972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883230, 29.424515, 23.824608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189312, -0.928572, 0.319241,
		-0.937124, 0.267937, 0.223624,
		-0.293187, -0.256834, -0.920911,
		29.795275, 29.347466, 23.548334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655832, 28.883200, 24.367456>,  <30.000505, 29.527248, 24.192972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655832, 28.883200, 24.367456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655682, 28.872154, 23.967609>,  <29.655590, 28.865528, 23.727701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655682, 28.872154, 23.967609>,  <29.655832, 28.883200, 24.367456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655682, 28.872154, 23.967609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164510, -0.985997, 0.027298,
		-0.986375, 0.164458, -0.004169,
		-0.000378, -0.027612, -0.999619,
		29.655569, 28.863871, 23.667725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952305, 28.579445, 24.070705>,  <29.655832, 28.883200, 24.367456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952305, 28.579445, 24.070705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283895, 28.539955, 23.850506>,  <29.482851, 28.516260, 23.718386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283895, 28.539955, 23.850506>,  <28.952305, 28.579445, 24.070705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283895, 28.539955, 23.850506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106419, -0.994158, 0.018038,
		-0.549063, 0.043631, -0.834641,
		0.828978, -0.098726, -0.550499,
		29.532589, 28.510338, 23.685356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807348, 27.877357, 23.815701>,  <28.952305, 28.579445, 24.070705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807348, 27.877357, 23.815701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191597, 27.932705, 23.719318>,  <29.422146, 27.965914, 23.661489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191597, 27.932705, 23.719318>,  <28.807348, 27.877357, 23.815701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191597, 27.932705, 23.719318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154517, -0.986756, 0.049371,
		-0.230933, -0.084659, -0.969280,
		0.960622, 0.138369, -0.240955,
		29.479784, 27.974216, 23.647032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911587, 27.465933, 23.266453>,  <28.807348, 27.877357, 23.815701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911587, 27.465933, 23.266453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275261, 27.520828, 23.423702>,  <29.493465, 27.553764, 23.518051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275261, 27.520828, 23.423702>,  <28.911587, 27.465933, 23.266453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275261, 27.520828, 23.423702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181670, -0.980265, -0.077948,
		0.374666, 0.142288, -0.916177,
		0.909187, 0.137237, 0.393122,
		29.548018, 27.562000, 23.541639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308483, 27.060898, 22.852720>,  <28.911587, 27.465933, 23.266453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308483, 27.060898, 22.852720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539970, 27.128361, 23.171879>,  <29.678864, 27.168839, 23.363375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539970, 27.128361, 23.171879>,  <29.308483, 27.060898, 22.852720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539970, 27.128361, 23.171879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382891, -0.920036, -0.083239,
		0.720054, 0.353680, -0.597020,
		0.578720, 0.168657, 0.797896,
		29.713587, 27.178957, 23.411247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935102, 26.816944, 22.683678>,  <29.308483, 27.060898, 22.852720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935102, 26.816944, 22.683678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967157, 26.809673, 23.082325>,  <29.986391, 26.805311, 23.321514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967157, 26.809673, 23.082325>,  <29.935102, 26.816944, 22.683678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967157, 26.809673, 23.082325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410662, -0.910436, -0.049624,
		0.908259, 0.413250, -0.065496,
		0.080137, -0.018175, 0.996618,
		29.991198, 26.804220, 23.381310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426464, 26.370182, 22.774813>,  <29.935102, 26.816944, 22.683678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426464, 26.370182, 22.774813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333910, 26.395866, 23.163109>,  <30.278378, 26.411276, 23.396086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333910, 26.395866, 23.163109>,  <30.426464, 26.370182, 22.774813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333910, 26.395866, 23.163109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458817, -0.872679, 0.167088,
		0.857874, 0.484054, 0.172467,
		-0.231387, 0.064210, 0.970740,
		30.264494, 26.415129, 23.454330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932959, 26.052315, 23.164265>,  <30.426464, 26.370182, 22.774813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932959, 26.052315, 23.164265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610682, 26.066536, 23.400772>,  <30.417315, 26.075069, 23.542677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610682, 26.066536, 23.400772>,  <30.932959, 26.052315, 23.164265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610682, 26.066536, 23.400772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178815, -0.937028, 0.300007,
		0.564700, 0.347440, 0.748598,
		-0.805692, 0.035553, 0.591267,
		30.368975, 26.077202, 23.578152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071659, 25.867027, 23.990417>,  <30.932959, 26.052315, 23.164265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071659, 25.867027, 23.990417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699774, 25.774918, 23.875454>,  <30.476643, 25.719652, 23.806477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699774, 25.774918, 23.875454>,  <31.071659, 25.867027, 23.990417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699774, 25.774918, 23.875454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199311, -0.970852, 0.133126,
		-0.309687, 0.066485, 0.948512,
		-0.929715, -0.230276, -0.287409,
		30.420860, 25.705835, 23.789230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039434, 25.272543, 24.277908>,  <31.071659, 25.867027, 23.990417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039434, 25.272543, 24.277908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712816, 25.258331, 24.047436>,  <30.516846, 25.249804, 23.909151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712816, 25.258331, 24.047436>,  <31.039434, 25.272543, 24.277908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712816, 25.258331, 24.047436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108612, -0.989735, -0.092890,
		-0.566969, -0.138430, 0.812025,
		-0.816548, -0.035530, -0.576184,
		30.467852, 25.247673, 23.874580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728563, 24.680443, 24.585503>,  <31.039434, 25.272543, 24.277908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728563, 24.680443, 24.585503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568356, 24.715580, 24.220676>,  <30.472231, 24.736662, 24.001780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568356, 24.715580, 24.220676>,  <30.728563, 24.680443, 24.585503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568356, 24.715580, 24.220676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009054, -0.994966, -0.099801,
		-0.916243, -0.048230, 0.397710,
		-0.400522, 0.087841, -0.912067,
		30.448198, 24.741932, 23.947056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097404, 24.286556, 24.611338>,  <30.728563, 24.680443, 24.585503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097404, 24.286556, 24.611338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239180, 24.323742, 24.239159>,  <30.324245, 24.346052, 24.015852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239180, 24.323742, 24.239159>,  <30.097404, 24.286556, 24.611338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239180, 24.323742, 24.239159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141806, -0.978194, -0.151751,
		-0.924265, 0.185729, -0.333526,
		0.354438, 0.092962, -0.930447,
		30.345510, 24.351631, 23.960024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641356, 23.886919, 24.243473>,  <30.097404, 24.286556, 24.611338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641356, 23.886919, 24.243473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948599, 23.915028, 23.988892>,  <30.132944, 23.931892, 23.836143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948599, 23.915028, 23.988892>,  <29.641356, 23.886919, 24.243473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948599, 23.915028, 23.988892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196369, -0.920214, -0.338595,
		-0.609466, 0.385057, -0.693024,
		0.768109, 0.070273, -0.636452,
		30.179031, 23.936110, 23.797956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363005, 23.707439, 23.541441>,  <29.641356, 23.886919, 24.243473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363005, 23.707439, 23.541441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756916, 23.639252, 23.527847>,  <29.993263, 23.598339, 23.519691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756916, 23.639252, 23.527847>,  <29.363005, 23.707439, 23.541441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756916, 23.639252, 23.527847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167771, -0.881011, -0.442349,
		0.045466, 0.441317, -0.896199,
		0.984777, -0.170468, -0.033984,
		30.052349, 23.588112, 23.517653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539099, 23.567080, 22.866598>,  <29.363005, 23.707439, 23.541441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539099, 23.567080, 22.866598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808807, 23.370842, 23.087387>,  <29.970633, 23.253099, 23.219860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808807, 23.370842, 23.087387>,  <29.539099, 23.567080, 22.866598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808807, 23.370842, 23.087387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187706, -0.836750, -0.514408,
		0.714229, 0.243243, -0.656285,
		0.674272, -0.490594, 0.551973,
		30.011089, 23.223663, 23.252979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913897, 23.096952, 22.364515>,  <29.539099, 23.567080, 22.866598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913897, 23.096952, 22.364515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970045, 22.955223, 22.734325>,  <30.003735, 22.870186, 22.956211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970045, 22.955223, 22.734325>,  <29.913897, 23.096952, 22.364515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970045, 22.955223, 22.734325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047991, -0.935110, -0.351092,
		0.988935, 0.004914, -0.148268,
		0.140372, -0.354323, 0.924528,
		30.012157, 22.848927, 23.011684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419956, 22.534765, 22.246780>,  <29.913897, 23.096952, 22.364515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419956, 22.534765, 22.246780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266449, 22.491795, 22.613644>,  <30.174345, 22.466011, 22.833761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266449, 22.491795, 22.613644>,  <30.419956, 22.534765, 22.246780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266449, 22.491795, 22.613644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161898, -0.969998, -0.181361,
		0.909127, -0.218087, 0.354861,
		-0.383767, -0.107429, 0.917159,
		30.151320, 22.459566, 22.888792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611759, 21.891466, 22.343168>,  <30.419956, 22.534765, 22.246780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611759, 21.891466, 22.343168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339170, 21.941410, 22.631615>,  <30.175617, 21.971376, 22.804682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339170, 21.941410, 22.631615>,  <30.611759, 21.891466, 22.343168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339170, 21.941410, 22.631615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133675, -0.989999, 0.045088,
		0.719532, -0.065669, 0.691347,
		-0.681472, 0.124858, 0.721114,
		30.134729, 21.978867, 22.847950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855848, 21.433794, 22.894419>,  <30.611759, 21.891466, 22.343168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855848, 21.433794, 22.894419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464680, 21.507267, 22.934280>,  <30.229979, 21.551350, 22.958199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464680, 21.507267, 22.934280>,  <30.855848, 21.433794, 22.894419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464680, 21.507267, 22.934280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176631, -0.981374, 0.075547,
		0.111675, 0.056277, 0.992150,
		-0.977921, 0.183681, 0.099655,
		30.171303, 21.562372, 22.964176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666059, 20.888729, 23.391747>,  <30.855848, 21.433794, 22.894419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666059, 20.888729, 23.391747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336510, 21.017281, 23.205009>,  <30.138779, 21.094412, 23.092966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336510, 21.017281, 23.205009>,  <30.666059, 20.888729, 23.391747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336510, 21.017281, 23.205009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353830, -0.935110, -0.019309,
		-0.442756, 0.149275, 0.884129,
		-0.823876, 0.321381, -0.466843,
		30.089348, 21.113695, 23.064957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151197, 20.592514, 23.716284>,  <30.666059, 20.888729, 23.391747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151197, 20.592514, 23.716284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987604, 20.692879, 23.365337>,  <29.889448, 20.753098, 23.154770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987604, 20.692879, 23.365337>,  <30.151197, 20.592514, 23.716284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987604, 20.692879, 23.365337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275530, -0.950536, -0.143400,
		-0.869951, 0.183094, 0.457887,
		-0.408983, 0.250913, -0.877369,
		29.864908, 20.768152, 23.102127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577503, 20.248152, 23.735470>,  <30.151197, 20.592514, 23.716284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577503, 20.248152, 23.735470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608892, 20.304775, 23.340744>,  <29.627726, 20.338749, 23.103909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608892, 20.304775, 23.340744>,  <29.577503, 20.248152, 23.735470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608892, 20.304775, 23.340744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329975, -0.930382, -0.159702,
		-0.940722, 0.338157, -0.026302,
		0.078475, 0.141557, -0.986815,
		29.632435, 20.347242, 23.044699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972948, 19.915207, 23.332157>,  <29.577503, 20.248152, 23.735470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972948, 19.915207, 23.332157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236122, 19.950165, 23.032963>,  <29.394028, 19.971140, 22.853447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236122, 19.950165, 23.032963>,  <28.972948, 19.915207, 23.332157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236122, 19.950165, 23.032963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174411, -0.948554, -0.264245,
		-0.732598, 0.304313, -0.608846,
		0.657937, 0.087396, -0.747985,
		29.433502, 19.976383, 22.808567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620295, 19.637465, 22.663605>,  <28.972948, 19.915207, 23.332157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620295, 19.637465, 22.663605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011885, 19.605305, 22.588615>,  <29.246838, 19.586008, 22.543623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011885, 19.605305, 22.588615>,  <28.620295, 19.637465, 22.663605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011885, 19.605305, 22.588615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136487, -0.941192, -0.309079,
		-0.151596, 0.328167, -0.932376,
		0.978974, -0.080402, -0.187472,
		29.305576, 19.581184, 22.532373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846001, 19.190451, 21.951872>,  <28.620295, 19.637465, 22.663605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846001, 19.190451, 21.951872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125851, 19.185669, 22.237637>,  <29.293760, 19.182800, 22.409096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125851, 19.185669, 22.237637>,  <28.846001, 19.190451, 21.951872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125851, 19.185669, 22.237637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171379, -0.967865, -0.184030,
		0.693653, 0.251187, -0.675094,
		0.699625, -0.011956, 0.714410,
		29.335739, 19.182081, 22.451960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128580, 19.152191, 21.254778>,  <28.846001, 19.190451, 21.951872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128580, 19.152191, 21.254778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.933496, 19.243637, 20.917763>,  <28.816446, 19.298504, 20.715553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.933496, 19.243637, 20.917763>,  <29.128580, 19.152191, 21.254778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933496, 19.243637, 20.917763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031069, 0.959946, 0.278457,
		0.872452, 0.161984, -0.461074,
		-0.487711, 0.228615, -0.842540,
		28.787184, 19.312222, 20.665001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496559, 19.698053, 20.923237>,  <29.128580, 19.152191, 21.254778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496559, 19.698053, 20.923237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127357, 19.704765, 20.769466>,  <28.905836, 19.708792, 20.677204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127357, 19.704765, 20.769466>,  <29.496559, 19.698053, 20.923237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127357, 19.704765, 20.769466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030497, 0.992717, 0.116550,
		0.383580, 0.119299, -0.915769,
		-0.923004, 0.016778, -0.384425,
		28.850456, 19.709799, 20.654139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558815, 20.268473, 20.377213>,  <29.496559, 19.698053, 20.923237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558815, 20.268473, 20.377213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173758, 20.200165, 20.461266>,  <28.942722, 20.159180, 20.511698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173758, 20.200165, 20.461266>,  <29.558815, 20.268473, 20.377213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173758, 20.200165, 20.461266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168855, 0.985267, 0.027158,
		-0.211675, -0.009339, -0.977296,
		-0.962643, -0.170769, 0.210133,
		28.884964, 20.148933, 20.524305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134445, 20.612183, 19.789721>,  <29.558815, 20.268473, 20.377213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134445, 20.612183, 19.789721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872864, 20.571892, 20.089642>,  <28.715916, 20.547716, 20.269594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872864, 20.571892, 20.089642>,  <29.134445, 20.612183, 19.789721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872864, 20.571892, 20.089642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136810, 0.990502, 0.013743,
		-0.744063, -0.093593, -0.661521,
		-0.653952, -0.100728, 0.749800,
		28.676678, 20.541674, 20.314581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580957, 20.907864, 19.643232>,  <29.134445, 20.612183, 19.789721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580957, 20.907864, 19.643232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551371, 20.923344, 20.041836>,  <28.533619, 20.932631, 20.280998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551371, 20.923344, 20.041836>,  <28.580957, 20.907864, 19.643232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551371, 20.923344, 20.041836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135260, 0.989624, -0.048471,
		-0.988046, -0.138373, -0.067964,
		-0.073965, 0.038699, 0.996510,
		28.529181, 20.934954, 20.340788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933910, 21.239075, 19.791887>,  <28.580957, 20.907864, 19.643232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933910, 21.239075, 19.791887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162817, 21.266151, 20.118793>,  <28.300161, 21.282396, 20.314938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162817, 21.266151, 20.118793>,  <27.933910, 21.239075, 19.791887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162817, 21.266151, 20.118793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116688, 0.993168, -0.000552,
		-0.811722, -0.095050, 0.576258,
		0.572269, 0.067691, 0.817268,
		28.334497, 21.286459, 20.363974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549957, 21.684479, 20.239283>,  <27.933910, 21.239075, 19.791887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549957, 21.684479, 20.239283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929020, 21.713261, 20.363716>,  <28.156458, 21.730530, 20.438375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929020, 21.713261, 20.363716>,  <27.549957, 21.684479, 20.239283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929020, 21.713261, 20.363716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105323, 0.990191, 0.091809,
		-0.301427, -0.119767, 0.945937,
		0.947654, 0.071955, 0.311084,
		28.213316, 21.734848, 20.457041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401041, 21.971558, 20.857012>,  <27.549957, 21.684479, 20.239283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401041, 21.971558, 20.857012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.779730, 22.055172, 20.759018>,  <28.006943, 22.105341, 20.700222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.779730, 22.055172, 20.759018>,  <27.401041, 21.971558, 20.857012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779730, 22.055172, 20.759018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219974, 0.975343, -0.017845,
		0.235214, 0.070785, 0.969362,
		0.946724, 0.209037, -0.244986,
		28.063747, 22.117884, 20.685522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559385, 22.620989, 21.187454>,  <27.401041, 21.971558, 20.857012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559385, 22.620989, 21.187454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856745, 22.613159, 20.920029>,  <28.035160, 22.608461, 20.759573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856745, 22.613159, 20.920029>,  <27.559385, 22.620989, 21.187454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856745, 22.613159, 20.920029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032800, 0.999436, 0.007210,
		0.668045, -0.027289, 0.743620,
		0.743397, -0.019574, -0.668564,
		28.079763, 22.607286, 20.719460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217823, 22.916506, 21.527485>,  <27.559385, 22.620989, 21.187454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217823, 22.916506, 21.527485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255278, 22.948086, 21.130497>,  <28.277750, 22.967033, 20.892303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255278, 22.948086, 21.130497>,  <28.217823, 22.916506, 21.527485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255278, 22.948086, 21.130497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190572, 0.976997, 0.095699,
		0.977198, -0.198098, 0.076429,
		0.093629, 0.078952, -0.992472,
		28.283369, 22.971771, 20.832756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728350, 23.427336, 21.468849>,  <28.217823, 22.916506, 21.527485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728350, 23.427336, 21.468849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590933, 23.418392, 21.093300>,  <28.508482, 23.413027, 20.867971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590933, 23.418392, 21.093300>,  <28.728350, 23.427336, 21.468849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590933, 23.418392, 21.093300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084028, 0.994975, -0.054439,
		0.935371, -0.097593, -0.339938,
		-0.343542, -0.022356, -0.938871,
		28.487869, 23.411686, 20.811638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216587, 23.825777, 21.206923>,  <28.728350, 23.427336, 21.468849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216587, 23.825777, 21.206923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946947, 23.836021, 20.911644>,  <28.785164, 23.842167, 20.734476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946947, 23.836021, 20.911644>,  <29.216587, 23.825777, 21.206923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946947, 23.836021, 20.911644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135210, 0.986790, -0.089236,
		0.726159, -0.159965, -0.668658,
		-0.674100, 0.025610, -0.738196,
		28.744717, 23.843704, 20.690186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498669, 24.253807, 20.621622>,  <29.216587, 23.825777, 21.206923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498669, 24.253807, 20.621622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098812, 24.243118, 20.620636>,  <28.858898, 24.236706, 20.620045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098812, 24.243118, 20.620636>,  <29.498669, 24.253807, 20.621622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098812, 24.243118, 20.620636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026099, 0.989479, -0.142303,
		0.006243, -0.142187, -0.989820,
		-0.999640, -0.026722, -0.002466,
		28.798920, 24.235102, 20.619896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348600, 24.535000, 20.031858>,  <29.498669, 24.253807, 20.621622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348600, 24.535000, 20.031858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034550, 24.569603, 20.277164>,  <28.846119, 24.590364, 20.424347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034550, 24.569603, 20.277164>,  <29.348600, 24.535000, 20.031858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034550, 24.569603, 20.277164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104010, 0.994551, -0.007135,
		-0.610539, 0.058183, -0.789846,
		-0.785126, 0.086508, 0.613264,
		28.799011, 24.595556, 20.461143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902308, 25.048115, 19.743759>,  <29.348600, 24.535000, 20.031858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902308, 25.048115, 19.743759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773129, 25.038944, 20.122215>,  <28.695621, 25.033442, 20.349289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773129, 25.038944, 20.122215>,  <28.902308, 25.048115, 19.743759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773129, 25.038944, 20.122215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239199, 0.969227, -0.058158,
		-0.915691, -0.245098, -0.318493,
		-0.322946, -0.022928, 0.946140,
		28.676245, 25.032066, 20.406057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286236, 25.428118, 19.687880>,  <28.902308, 25.048115, 19.743759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286236, 25.428118, 19.687880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399635, 25.425549, 20.071461>,  <28.467674, 25.424007, 20.301609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399635, 25.425549, 20.071461>,  <28.286236, 25.428118, 19.687880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399635, 25.425549, 20.071461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203632, 0.976770, 0.066743,
		-0.937104, -0.214194, 0.275604,
		0.283497, -0.006423, 0.958951,
		28.484684, 25.423622, 20.359146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818213, 25.864712, 20.048290>,  <28.286236, 25.428118, 19.687880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818213, 25.864712, 20.048290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106060, 25.829494, 20.323795>,  <28.278769, 25.808365, 20.489098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106060, 25.829494, 20.323795>,  <27.818213, 25.864712, 20.048290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106060, 25.829494, 20.323795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115702, 0.962858, 0.243963,
		-0.684660, -0.255252, 0.682706,
		0.719621, -0.088041, 0.688763,
		28.321947, 25.803082, 20.530424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560703, 26.207541, 20.696014>,  <27.818213, 25.864712, 20.048290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560703, 26.207541, 20.696014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960665, 26.205818, 20.701321>,  <28.200642, 26.204784, 20.704504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960665, 26.205818, 20.701321>,  <27.560703, 26.207541, 20.696014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960665, 26.205818, 20.701321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000077, 0.949394, 0.314087,
		-0.013948, -0.314058, 0.949302,
		0.999903, -0.004307, 0.013266,
		28.260635, 26.204527, 20.705301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745203, 26.508678, 21.300447>,  <27.560703, 26.207541, 20.696014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745203, 26.508678, 21.300447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072176, 26.526447, 21.070724>,  <28.268360, 26.537109, 20.932890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072176, 26.526447, 21.070724>,  <27.745203, 26.508678, 21.300447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072176, 26.526447, 21.070724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133870, 0.955072, 0.264418,
		0.560251, -0.293026, 0.774761,
		0.817434, 0.044423, -0.574307,
		28.317406, 26.539774, 20.898432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168680, 26.963627, 21.689829>,  <27.745203, 26.508678, 21.300447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168680, 26.963627, 21.689829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383900, 26.938362, 21.353611>,  <28.513031, 26.923203, 21.151880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383900, 26.938362, 21.353611>,  <28.168680, 26.963627, 21.689829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383900, 26.938362, 21.353611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295806, 0.947917, 0.118122,
		0.789304, -0.312193, 0.528709,
		0.538049, -0.063161, -0.840544,
		28.545315, 26.919415, 21.101448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803659, 27.303394, 21.804430>,  <28.168680, 26.963627, 21.689829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803659, 27.303394, 21.804430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744251, 27.317966, 21.409134>,  <28.708607, 27.326710, 21.171957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744251, 27.317966, 21.409134>,  <28.803659, 27.303394, 21.804430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744251, 27.317966, 21.409134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238152, 0.971228, 0.000011,
		0.959805, -0.235349, -0.152924,
		-0.148521, 0.036430, -0.988238,
		28.699696, 27.328896, 21.112663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396986, 27.657730, 21.543066>,  <28.803659, 27.303394, 21.804430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396986, 27.657730, 21.543066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102331, 27.718868, 21.279549>,  <28.925539, 27.755552, 21.121439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102331, 27.718868, 21.279549>,  <29.396986, 27.657730, 21.543066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102331, 27.718868, 21.279549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058837, 0.984916, 0.162723,
		0.673726, 0.081106, -0.734517,
		-0.736636, 0.152847, -0.658791,
		28.881340, 27.764723, 21.081911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537092, 28.411175, 21.294268>,  <29.396986, 27.657730, 21.543066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537092, 28.411175, 21.294268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168295, 28.325428, 21.165287>,  <28.947016, 28.273979, 21.087898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168295, 28.325428, 21.165287>,  <29.537092, 28.411175, 21.294268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168295, 28.325428, 21.165287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264155, 0.957109, 0.119013,
		0.283109, 0.194906, -0.939074,
		-0.921993, -0.214367, -0.322452,
		28.891697, 28.261118, 21.068552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352774, 28.772928, 20.634802>,  <29.537092, 28.411175, 21.294268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352774, 28.772928, 20.634802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009205, 28.698868, 20.825787>,  <28.803062, 28.654432, 20.940376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009205, 28.698868, 20.825787>,  <29.352774, 28.772928, 20.634802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009205, 28.698868, 20.825787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231722, 0.971961, -0.039949,
		-0.456677, -0.144951, -0.877744,
		-0.858924, -0.185149, 0.477461,
		28.751528, 28.643322, 20.969025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858427, 29.117542, 20.233467>,  <29.352774, 28.772928, 20.634802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858427, 29.117542, 20.233467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688833, 29.041721, 20.587711>,  <28.587078, 28.996229, 20.800259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688833, 29.041721, 20.587711>,  <28.858427, 29.117542, 20.233467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688833, 29.041721, 20.587711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340732, 0.939395, 0.037942,
		-0.839131, -0.285669, -0.462874,
		-0.423982, -0.189554, 0.885612,
		28.561638, 28.984856, 20.853395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168554, 29.436934, 20.205254>,  <28.858427, 29.117542, 20.233467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168554, 29.436934, 20.205254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251255, 29.376026, 20.591843>,  <28.300875, 29.339481, 20.823795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251255, 29.376026, 20.591843>,  <28.168554, 29.436934, 20.205254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251255, 29.376026, 20.591843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309527, 0.926900, 0.212249,
		-0.928142, -0.343032, 0.144507,
		0.206752, -0.152268, 0.966472,
		28.313280, 29.330345, 20.881784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570290, 29.599752, 20.460823>,  <28.168554, 29.436934, 20.205254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570290, 29.599752, 20.460823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846478, 29.661312, 20.743542>,  <28.012190, 29.698248, 20.913174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846478, 29.661312, 20.743542>,  <27.570290, 29.599752, 20.460823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846478, 29.661312, 20.743542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544601, 0.753691, 0.367912,
		-0.476087, -0.638956, 0.604215,
		0.690472, 0.153898, 0.706799,
		28.053619, 29.707481, 20.955582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143713, 29.720625, 21.072815>,  <27.570290, 29.599752, 20.460823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143713, 29.720625, 21.072815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506243, 29.854725, 21.175720>,  <27.723761, 29.935184, 21.237463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506243, 29.854725, 21.175720>,  <27.143713, 29.720625, 21.072815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506243, 29.854725, 21.175720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421353, 0.763387, 0.489594,
		-0.032256, -0.552129, 0.833134,
		0.906323, 0.335251, 0.257264,
		27.778139, 29.955299, 21.252899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015104, 29.871634, 21.692087>,  <27.143713, 29.720625, 21.072815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015104, 29.871634, 21.692087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351667, 30.075489, 21.620197>,  <27.553606, 30.197803, 21.577065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351667, 30.075489, 21.620197>,  <27.015104, 29.871634, 21.692087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351667, 30.075489, 21.620197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452806, 0.846412, 0.280273,
		0.294959, -0.154444, 0.942945,
		0.841407, 0.509640, -0.179723,
		27.604090, 30.228380, 21.566280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062840, 30.321562, 22.196535>,  <27.015104, 29.871634, 21.692087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062840, 30.321562, 22.196535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299400, 30.486656, 21.919437>,  <27.441338, 30.585712, 21.753180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299400, 30.486656, 21.919437>,  <27.062840, 30.321562, 22.196535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299400, 30.486656, 21.919437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442575, 0.884264, 0.149010,
		0.674070, 0.218466, 0.705622,
		0.591403, 0.412734, -0.692743,
		27.476822, 30.610476, 21.711615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266674, 30.945511, 22.412107>,  <27.062840, 30.321562, 22.196535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266674, 30.945511, 22.412107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326614, 30.957027, 22.016792>,  <27.362577, 30.963938, 21.779602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326614, 30.957027, 22.016792>,  <27.266674, 30.945511, 22.412107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326614, 30.957027, 22.016792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304361, 0.952379, -0.018401,
		0.940697, 0.303554, 0.151477,
		0.149849, 0.028794, -0.988289,
		27.371569, 30.965666, 21.720304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450249, 31.651947, 22.351370>,  <27.266674, 30.945511, 22.412107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450249, 31.651947, 22.351370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340727, 31.512463, 21.992832>,  <27.275013, 31.428772, 21.777710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340727, 31.512463, 21.992832>,  <27.450249, 31.651947, 22.351370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340727, 31.512463, 21.992832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549770, 0.821438, -0.151632,
		0.789167, 0.451265, -0.416624,
		-0.273805, -0.348710, -0.896344,
		27.258585, 31.407850, 21.723928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465893, 32.166031, 21.895500>,  <27.450249, 31.651947, 22.351370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465893, 32.166031, 21.895500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220320, 31.904026, 21.719296>,  <27.072975, 31.746824, 21.613573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220320, 31.904026, 21.719296>,  <27.465893, 32.166031, 21.895500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220320, 31.904026, 21.719296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513389, 0.755240, -0.407486,
		0.599598, -0.024016, -0.799941,
		-0.613933, -0.655009, -0.440511,
		27.036140, 31.707523, 21.587143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499350, 32.386898, 21.172014>,  <27.465893, 32.166031, 21.895500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499350, 32.386898, 21.172014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167517, 32.169056, 21.221333>,  <26.968416, 32.038353, 21.250923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167517, 32.169056, 21.221333>,  <27.499350, 32.386898, 21.172014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167517, 32.169056, 21.221333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546435, 0.746361, -0.379940,
		0.114892, -0.382565, -0.916757,
		-0.829583, -0.544601, 0.123296,
		26.918642, 32.005676, 21.258322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096128, 32.629810, 20.597155>,  <27.499350, 32.386898, 21.172014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096128, 32.629810, 20.597155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822161, 32.437069, 20.815769>,  <26.657780, 32.321423, 20.946938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822161, 32.437069, 20.815769>,  <27.096128, 32.629810, 20.597155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822161, 32.437069, 20.815769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681437, 0.689163, -0.246371,
		-0.257938, -0.541175, -0.800374,
		-0.684917, -0.481855, 0.546538,
		26.616686, 32.292511, 20.979731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442991, 32.543240, 20.221020>,  <27.096128, 32.629810, 20.597155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442991, 32.543240, 20.221020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339756, 32.500240, 20.605068>,  <26.277815, 32.474442, 20.835497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339756, 32.500240, 20.605068>,  <26.442991, 32.543240, 20.221020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339756, 32.500240, 20.605068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738756, 0.662389, -0.124422,
		-0.622600, -0.741408, -0.250367,
		-0.258088, -0.107495, 0.960123,
		26.262329, 32.467991, 20.893105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635138, 32.636509, 20.238920>,  <26.442991, 32.543240, 20.221020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635138, 32.636509, 20.238920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758308, 32.703224, 20.613590>,  <25.832211, 32.743252, 20.838392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758308, 32.703224, 20.613590>,  <25.635138, 32.636509, 20.238920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.758308, 32.703224, 20.613590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641492, 0.763460, 0.074943,
		-0.702617, -0.623947, 0.342081,
		0.307926, 0.166786, 0.936677,
		25.850687, 32.753262, 20.894594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.990181, 32.679081, 20.670399>,  <25.635138, 32.636509, 20.238920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.990181, 32.679081, 20.670399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.288925, 32.868332, 20.857311>,  <25.468172, 32.981880, 20.969460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.288925, 32.868332, 20.857311>,  <24.990181, 32.679081, 20.670399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.288925, 32.868332, 20.857311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566131, 0.821026, 0.073560,
		-0.348846, -0.319482, 0.881044,
		0.746861, 0.473125, 0.467281,
		25.512983, 33.010269, 20.997496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609882, 33.005733, 21.289049>,  <24.990181, 32.679081, 20.670399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609882, 33.005733, 21.289049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947170, 33.212551, 21.230190>,  <25.149542, 33.336639, 21.194876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947170, 33.212551, 21.230190>,  <24.609882, 33.005733, 21.289049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.947170, 33.212551, 21.230190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530512, 0.844580, -0.072400,
		0.086844, 0.139112, 0.986461,
		0.843217, 0.517042, -0.147147,
		25.200136, 33.367664, 21.186047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.527962, 33.581383, 21.714804>,  <24.609882, 33.005733, 21.289049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.527962, 33.581383, 21.714804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781445, 33.679424, 21.421318>,  <24.933535, 33.738251, 21.245226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781445, 33.679424, 21.421318>,  <24.527962, 33.581383, 21.714804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.781445, 33.679424, 21.421318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609336, 0.742488, -0.278246,
		0.476575, 0.623406, 0.619871,
		0.633707, 0.245105, -0.733715,
		24.971558, 33.752956, 21.201204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.541643, 34.310040, 21.629965>,  <24.527962, 33.581383, 21.714804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.541643, 34.310040, 21.629965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.703335, 34.213139, 21.277168>,  <24.800350, 34.154999, 21.065491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.703335, 34.213139, 21.277168>,  <24.541643, 34.310040, 21.629965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.703335, 34.213139, 21.277168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455217, 0.783095, -0.423722,
		0.793332, 0.572779, 0.206272,
		0.404230, -0.242254, -0.881993,
		24.824604, 34.140461, 21.012569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.311882, 34.914207, 22.032431>,  <24.541643, 34.310040, 21.629965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.311882, 34.914207, 22.032431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687571, 34.776901, 22.034798>,  <24.912983, 34.694519, 22.036219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687571, 34.776901, 22.034798>,  <24.311882, 34.914207, 22.032431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.687571, 34.776901, 22.034798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337856, -0.921087, 0.193527,
		-0.060981, -0.183763, -0.981077,
		0.939220, -0.343264, 0.005917,
		24.969337, 34.673923, 22.036573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.899933, 34.349800, 22.578293>,  <24.311882, 34.914207, 22.032431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.899933, 34.349800, 22.578293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.124151, 34.480865, 22.882511>,  <24.258682, 34.559505, 23.065042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.124151, 34.480865, 22.882511>,  <23.899933, 34.349800, 22.578293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.124151, 34.480865, 22.882511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196013, 0.944793, -0.262574,
		-0.804593, -0.001892, 0.593824,
		0.560544, 0.327663, 0.760545,
		24.292315, 34.579163, 23.110674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.605968, 34.976135, 22.603882>,  <23.899933, 34.349800, 22.578293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.605968, 34.976135, 22.603882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.933071, 35.034355, 22.826626>,  <24.129332, 35.069286, 22.960272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.933071, 35.034355, 22.826626>,  <23.605968, 34.976135, 22.603882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.933071, 35.034355, 22.826626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000509, 0.967681, -0.252178,
		-0.575566, 0.205937, 0.791400,
		0.817755, 0.145548, 0.556859,
		24.178398, 35.078018, 22.993683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.421532, 35.619801, 22.812700>,  <23.605968, 34.976135, 22.603882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.421532, 35.619801, 22.812700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.805895, 35.558361, 22.904842>,  <24.036512, 35.521500, 22.960129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.805895, 35.558361, 22.904842>,  <23.421532, 35.619801, 22.812700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.805895, 35.558361, 22.904842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176146, 0.981056, -0.080630,
		-0.213609, 0.118055, 0.969760,
		0.960907, -0.153596, 0.230357,
		24.094168, 35.512283, 22.973949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.689775, 35.848888, 22.802879>,  <23.421532, 35.619801, 22.812700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.689775, 35.848888, 22.802879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.302080, 35.945847, 22.785820>,  <22.069462, 36.004021, 22.775583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.302080, 35.945847, 22.785820>,  <22.689775, 35.848888, 22.802879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.302080, 35.945847, 22.785820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061103, -0.069123, 0.995735,
		0.238415, 0.967712, 0.081808,
		-0.969239, 0.242397, -0.042650,
		22.011309, 36.018566, 22.773026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.262571, 36.479824, 23.039312>,  <22.689775, 35.848888, 22.802879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.262571, 36.479824, 23.039312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.026352, 36.702911, 22.806004>,  <21.884621, 36.836761, 22.666018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.026352, 36.702911, 22.806004>,  <22.262571, 36.479824, 23.039312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.026352, 36.702911, 22.806004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806822, 0.392713, -0.441378,
		-0.017105, -0.731252, -0.681893,
		-0.590547, 0.557716, -0.583272,
		21.849188, 36.870228, 22.631021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.384197, 36.448265, 22.263824>,  <22.262571, 36.479824, 23.039312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.384197, 36.448265, 22.263824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.220608, 36.800682, 22.358906>,  <22.122454, 37.012135, 22.415955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.220608, 36.800682, 22.358906>,  <22.384197, 36.448265, 22.263824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.220608, 36.800682, 22.358906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823335, 0.468582, -0.320235,
		-0.393524, 0.064741, -0.917032,
		-0.408972, 0.881045, 0.237702,
		22.097916, 37.064995, 22.430216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.407866, 36.914204, 21.710417>,  <22.384197, 36.448265, 22.263824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.407866, 36.914204, 21.710417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.386385, 37.160007, 22.025249>,  <22.373497, 37.307487, 22.214149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.386385, 37.160007, 22.025249>,  <22.407866, 36.914204, 21.710417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.386385, 37.160007, 22.025249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730978, 0.561181, -0.388262,
		-0.680285, 0.554490, -0.479325,
		-0.053700, 0.614505, 0.787083,
		22.370275, 37.344360, 22.261374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.499140, 37.510437, 21.352770>,  <22.407866, 36.914204, 21.710417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.499140, 37.510437, 21.352770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.534258, 37.588802, 21.743443>,  <22.555328, 37.635822, 21.977846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.534258, 37.588802, 21.743443>,  <22.499140, 37.510437, 21.352770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.534258, 37.588802, 21.743443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753787, 0.627917, -0.193715,
		-0.651228, 0.753217, -0.092552,
		0.087794, 0.195917, 0.976683,
		22.560596, 37.647579, 22.036448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.349554, 38.231918, 21.522015>,  <22.499140, 37.510437, 21.352770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.349554, 38.231918, 21.522015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.588892, 38.083916, 21.806290>,  <22.732494, 37.995113, 21.976854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.588892, 38.083916, 21.806290>,  <22.349554, 38.231918, 21.522015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.588892, 38.083916, 21.806290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707661, 0.660019, -0.252173,
		-0.375764, 0.653813, 0.656757,
		0.598346, -0.370004, 0.710689,
		22.768396, 37.972916, 22.019497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.834848, 38.797848, 21.639784>,  <22.349554, 38.231918, 21.522015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.834848, 38.797848, 21.639784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.975439, 38.484791, 21.845280>,  <23.059793, 38.296955, 21.968578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.975439, 38.484791, 21.845280>,  <22.834848, 38.797848, 21.639784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.975439, 38.484791, 21.845280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933988, 0.330805, -0.135036,
		-0.064263, 0.527290, 0.847252,
		0.351478, -0.782645, 0.513741,
		23.080883, 38.249996, 21.999403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.232269, 39.164200, 22.224503>,  <22.834848, 38.797848, 21.639784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.232269, 39.164200, 22.224503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.352226, 38.794224, 22.131084>,  <23.424200, 38.572239, 22.075033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.352226, 38.794224, 22.131084>,  <23.232269, 39.164200, 22.224503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.352226, 38.794224, 22.131084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882661, 0.361903, -0.299891,
		0.361903, -0.116209, 0.924944,
		0.299891, -0.924944, -0.233547,
		23.442194, 38.516739, 22.061020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.898483, 39.062607, 22.557890>,  <23.232269, 39.164200, 22.224503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.898483, 39.062607, 22.557890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.879368, 38.796261, 22.260075>,  <23.867899, 38.636452, 22.081387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.879368, 38.796261, 22.260075>,  <23.898483, 39.062607, 22.557890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.879368, 38.796261, 22.260075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856365, 0.356372, -0.373682,
		0.514156, -0.655452, 0.553196,
		-0.047787, -0.665869, -0.744537,
		23.865032, 38.596500, 22.036713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.488995, 38.926453, 22.450254>,  <23.898483, 39.062607, 22.557890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.488995, 38.926453, 22.450254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358469, 38.775520, 22.103580>,  <24.280153, 38.684959, 21.895576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358469, 38.775520, 22.103580>,  <24.488995, 38.926453, 22.450254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358469, 38.775520, 22.103580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809038, 0.362683, -0.462513,
		0.488853, -0.852104, 0.186929,
		-0.326313, -0.377334, -0.866683,
		24.260574, 38.662319, 21.843576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168344, 38.592388, 22.192400>,  <24.488995, 38.926453, 22.450254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168344, 38.592388, 22.192400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912941, 38.630486, 21.886921>,  <24.759699, 38.653343, 21.703634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912941, 38.630486, 21.886921>,  <25.168344, 38.592388, 22.192400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.912941, 38.630486, 21.886921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761327, 0.223393, -0.608668,
		0.112635, -0.970064, -0.215147,
		-0.638509, 0.095240, -0.763698,
		24.721388, 38.659058, 21.657812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322781, 38.093742, 21.786873>,  <25.168344, 38.592388, 22.192400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322781, 38.093742, 21.786873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.138199, 38.387398, 21.587631>,  <25.027451, 38.563591, 21.468086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.138199, 38.387398, 21.587631>,  <25.322781, 38.093742, 21.786873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.138199, 38.387398, 21.587631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800494, 0.102507, -0.590510,
		-0.382454, -0.671222, -0.634972,
		-0.461453, 0.734134, -0.498105,
		24.999763, 38.607639, 21.438200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690666, 38.113564, 21.086645>,  <25.322781, 38.093742, 21.786873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690666, 38.113564, 21.086645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.472052, 38.448349, 21.075417>,  <25.340883, 38.649220, 21.068680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.472052, 38.448349, 21.075417>,  <25.690666, 38.113564, 21.086645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472052, 38.448349, 21.075417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655358, 0.406599, -0.636540,
		-0.521347, -0.366292, -0.770732,
		-0.546538, 0.836964, -0.028073,
		25.308090, 38.699436, 21.066994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796160, 38.264744, 20.476421>,  <25.690666, 38.113564, 21.086645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796160, 38.264744, 20.476421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660198, 38.609142, 20.627762>,  <25.578621, 38.815781, 20.718567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660198, 38.609142, 20.627762>,  <25.796160, 38.264744, 20.476421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.660198, 38.609142, 20.627762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550628, 0.508336, -0.662120,
		-0.762413, -0.016725, -0.646874,
		-0.339904, 0.860996, 0.378353,
		25.558228, 38.867443, 20.741268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448540, 38.691139, 19.965939>,  <25.796160, 38.264744, 20.476421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448540, 38.691139, 19.965939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587942, 38.943645, 20.243080>,  <25.671583, 39.095150, 20.409365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587942, 38.943645, 20.243080>,  <25.448540, 38.691139, 19.965939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587942, 38.943645, 20.243080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468838, 0.522674, -0.712042,
		-0.811625, 0.572986, -0.113808,
		0.348505, 0.631268, 0.692852,
		25.692493, 39.133026, 20.450935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337330, 39.381027, 19.676121>,  <25.448540, 38.691139, 19.965939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337330, 39.381027, 19.676121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591185, 39.457008, 19.975761>,  <25.743498, 39.502598, 20.155546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591185, 39.457008, 19.975761>,  <25.337330, 39.381027, 19.676121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591185, 39.457008, 19.975761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457284, 0.689115, -0.562148,
		-0.622999, 0.699313, 0.350476,
		0.634636, 0.189951, 0.749103,
		25.781576, 39.513992, 20.200493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377447, 40.127621, 19.705889>,  <25.337330, 39.381027, 19.676121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377447, 40.127621, 19.705889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706734, 39.968292, 19.867706>,  <25.904306, 39.872696, 19.964796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706734, 39.968292, 19.867706>,  <25.377447, 40.127621, 19.705889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706734, 39.968292, 19.867706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565032, 0.505465, -0.652107,
		0.055266, 0.765405, 0.641171,
		0.823216, -0.398322, 0.404544,
		25.953699, 39.848797, 19.989069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701086, 40.712349, 19.668545>,  <25.377447, 40.127621, 19.705889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701086, 40.712349, 19.668545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965445, 40.426556, 19.760399>,  <26.124060, 40.255081, 19.815512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965445, 40.426556, 19.760399>,  <25.701086, 40.712349, 19.668545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965445, 40.426556, 19.760399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693884, 0.465183, -0.549663,
		0.285900, 0.522613, 0.803204,
		0.660898, -0.714480, 0.229637,
		26.163713, 40.212212, 19.829290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412607, 41.076595, 19.707636>,  <25.701086, 40.712349, 19.668545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412607, 41.076595, 19.707636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481298, 40.686554, 19.651524>,  <26.522512, 40.452530, 19.617857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481298, 40.686554, 19.651524>,  <26.412607, 41.076595, 19.707636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.481298, 40.686554, 19.651524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668445, 0.219933, -0.710500,
		0.723665, 0.028243, 0.689573,
		0.171727, -0.975106, -0.140279,
		26.532816, 40.394024, 19.609440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191368, 41.089478, 19.750174>,  <26.412607, 41.076595, 19.707636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191368, 41.089478, 19.750174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053415, 40.770664, 19.551865>,  <26.970644, 40.579376, 19.432880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053415, 40.770664, 19.551865>,  <27.191368, 41.089478, 19.750174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053415, 40.770664, 19.551865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479177, 0.304669, -0.823144,
		0.807123, -0.521448, 0.276848,
		-0.344880, -0.797038, -0.495771,
		26.949951, 40.531551, 19.403133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759401, 40.817184, 19.444180>,  <27.191368, 41.089478, 19.750174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759401, 40.817184, 19.444180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467003, 40.655949, 19.223938>,  <27.291563, 40.559208, 19.091793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467003, 40.655949, 19.223938>,  <27.759401, 40.817184, 19.444180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467003, 40.655949, 19.223938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539338, 0.153028, -0.828068,
		0.418043, -0.902276, 0.105539,
		-0.730996, -0.403089, -0.550604,
		27.247704, 40.535023, 19.058756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117249, 40.527317, 18.965425>,  <27.759401, 40.817184, 19.444180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117249, 40.527317, 18.965425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748194, 40.552807, 18.813278>,  <27.526760, 40.568100, 18.721991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748194, 40.552807, 18.813278>,  <28.117249, 40.527317, 18.965425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748194, 40.552807, 18.813278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376568, 0.361808, -0.852813,
		0.083277, -0.930072, -0.357814,
		-0.922638, 0.063722, -0.380366,
		27.471403, 40.571922, 18.699169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218140, 40.251904, 18.265461>,  <28.117249, 40.527317, 18.965425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218140, 40.251904, 18.265461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864201, 40.436375, 18.291878>,  <27.651838, 40.547058, 18.307728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864201, 40.436375, 18.291878>,  <28.218140, 40.251904, 18.265461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864201, 40.436375, 18.291878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197924, 0.500450, -0.842838,
		-0.421751, -0.732710, -0.534100,
		-0.884846, 0.461179, 0.066044,
		27.598747, 40.574730, 18.311691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948168, 40.241871, 17.624670>,  <28.218140, 40.251904, 18.265461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948168, 40.241871, 17.624670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784786, 40.564873, 17.794891>,  <27.686758, 40.758675, 17.897024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784786, 40.564873, 17.794891>,  <27.948168, 40.241871, 17.624670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784786, 40.564873, 17.794891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244907, 0.546076, -0.801137,
		-0.879310, -0.223005, -0.420811,
		-0.408453, 0.807508, 0.425555,
		27.662251, 40.807125, 17.922558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613693, 40.569000, 17.080139>,  <27.948168, 40.241871, 17.624670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613693, 40.569000, 17.080139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669304, 40.854607, 17.354614>,  <27.702669, 41.025970, 17.519299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669304, 40.854607, 17.354614>,  <27.613693, 40.569000, 17.080139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669304, 40.854607, 17.354614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124943, 0.674731, -0.727411,
		-0.982375, 0.186862, 0.004594,
		0.139025, 0.714017, 0.686186,
		27.711012, 41.068813, 17.560471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281239, 41.115295, 16.796930>,  <27.613693, 40.569000, 17.080139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281239, 41.115295, 16.796930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938084, 40.932476, 16.703007>,  <26.732191, 40.822784, 16.646652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938084, 40.932476, 16.703007>,  <27.281239, 41.115295, 16.796930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938084, 40.932476, 16.703007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506611, 0.675993, 0.535143,
		-0.085854, 0.578052, -0.811471,
		-0.857890, -0.457044, -0.234811,
		26.680717, 40.795364, 16.632563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378334, 41.720497, 16.290989>,  <27.281239, 41.115295, 16.796930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378334, 41.720497, 16.290989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583412, 41.388390, 16.203533>,  <27.706459, 41.189125, 16.151060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583412, 41.388390, 16.203533>,  <27.378334, 41.720497, 16.290989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583412, 41.388390, 16.203533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488418, -0.072609, -0.869583,
		0.706110, 0.552618, -0.442743,
		0.512695, -0.830266, -0.218638,
		27.737221, 41.139309, 16.137941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749805, 41.813408, 15.572212>,  <27.378334, 41.720497, 16.290989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749805, 41.813408, 15.572212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604393, 41.465298, 15.705161>,  <27.517145, 41.256432, 15.784930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604393, 41.465298, 15.705161>,  <27.749805, 41.813408, 15.572212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604393, 41.465298, 15.705161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549167, -0.088002, -0.831066,
		0.752504, -0.484645, -0.445933,
		-0.363529, -0.870273, 0.332373,
		27.495335, 41.204216, 15.804873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234764, 41.703304, 14.904452>,  <27.749805, 41.813408, 15.572212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234764, 41.703304, 14.904452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269424, 41.326923, 14.773543>,  <27.290220, 41.101097, 14.694998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269424, 41.326923, 14.773543>,  <27.234764, 41.703304, 14.904452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269424, 41.326923, 14.773543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419284, -0.263553, 0.868759,
		-0.903711, -0.212501, 0.371686,
		0.086653, -0.940948, -0.327274,
		27.295420, 41.044640, 14.675362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522484, 41.381210, 14.958036>,  <27.234764, 41.703304, 14.904452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522484, 41.381210, 14.958036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188751, 41.271084, 14.766999>,  <25.988512, 41.205009, 14.652377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188751, 41.271084, 14.766999>,  <26.522484, 41.381210, 14.958036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188751, 41.271084, 14.766999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434645, -0.204359, 0.877109,
		-0.339082, 0.939382, 0.050838,
		-0.834330, -0.275316, -0.477593,
		25.938452, 41.188488, 14.623721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003674, 41.637180, 15.315425>,  <26.522484, 41.381210, 14.958036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003674, 41.637180, 15.315425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821718, 41.336369, 15.124627>,  <25.712545, 41.155880, 15.010148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821718, 41.336369, 15.124627>,  <26.003674, 41.637180, 15.315425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.821718, 41.336369, 15.124627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571326, -0.164427, 0.804084,
		-0.683128, 0.638287, -0.354860,
		-0.454888, -0.752033, -0.476995,
		25.685251, 41.110760, 14.981529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.340387, 41.857841, 15.370682>,  <26.003674, 41.637180, 15.315425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.340387, 41.857841, 15.370682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378870, 41.464264, 15.310559>,  <25.401960, 41.228115, 15.274486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378870, 41.464264, 15.310559>,  <25.340387, 41.857841, 15.370682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.378870, 41.464264, 15.310559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768444, -0.169400, 0.617088,
		-0.632644, 0.056134, -0.772406,
		0.096206, -0.983948, -0.150306,
		25.407732, 41.169079, 15.265468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725620, 41.556782, 15.585621>,  <25.340387, 41.857841, 15.370682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725620, 41.556782, 15.585621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.903355, 41.200188, 15.550260>,  <25.009995, 40.986229, 15.529043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.903355, 41.200188, 15.550260>,  <24.725620, 41.556782, 15.585621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.903355, 41.200188, 15.550260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631994, -0.381870, 0.674358,
		-0.634941, -0.243772, -0.733093,
		0.444336, -0.891488, -0.088403,
		25.036655, 40.932743, 15.523739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.295153, 40.905880, 15.327560>,  <24.725620, 41.556782, 15.585621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.295153, 40.905880, 15.327560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577965, 40.819157, 15.596810>,  <24.747652, 40.767120, 15.758361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577965, 40.819157, 15.596810>,  <24.295153, 40.905880, 15.327560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577965, 40.819157, 15.596810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706647, -0.253569, 0.660570,
		0.027466, -0.942707, -0.332489,
		0.707033, -0.216810, 0.673126,
		24.790075, 40.754112, 15.798748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.016401, 40.443562, 15.762015>,  <24.295153, 40.905880, 15.327560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.016401, 40.443562, 15.762015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323469, 40.564606, 15.987975>,  <24.507710, 40.637234, 16.123550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323469, 40.564606, 15.987975>,  <24.016401, 40.443562, 15.762015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.323469, 40.564606, 15.987975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534048, -0.185156, 0.824931,
		0.354226, -0.934957, 0.019470,
		0.767670, 0.302610, 0.564899,
		24.553770, 40.655388, 16.157444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.985847, 40.032570, 16.404190>,  <24.016401, 40.443562, 15.762015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.985847, 40.032570, 16.404190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203392, 40.352966, 16.504295>,  <24.333920, 40.545204, 16.564358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203392, 40.352966, 16.504295>,  <23.985847, 40.032570, 16.404190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.203392, 40.352966, 16.504295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447113, 0.024216, 0.894149,
		0.710143, -0.598190, 0.371303,
		0.543863, 0.800988, 0.250262,
		24.366550, 40.593262, 16.579374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.320204, 39.828449, 16.950327>,  <23.985847, 40.032570, 16.404190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.320204, 39.828449, 16.950327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326254, 40.227413, 16.978470>,  <24.329884, 40.466789, 16.995356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326254, 40.227413, 16.978470>,  <24.320204, 39.828449, 16.950327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326254, 40.227413, 16.978470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451072, -0.055994, 0.890729,
		0.892359, -0.045207, 0.449056,
		0.015123, 0.997407, 0.070359,
		24.330791, 40.526634, 16.999578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572863, 39.990932, 17.588867>,  <24.320204, 39.828449, 16.950327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572863, 39.990932, 17.588867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373383, 40.316891, 17.470722>,  <24.253695, 40.512466, 17.399836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373383, 40.316891, 17.470722>,  <24.572863, 39.990932, 17.588867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.373383, 40.316891, 17.470722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492019, 0.014396, 0.870465,
		0.713594, 0.579423, 0.393767,
		-0.498699, 0.814900, -0.295360,
		24.223774, 40.561359, 17.382114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.529236, 40.459057, 18.082178>,  <24.572863, 39.990932, 17.588867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.529236, 40.459057, 18.082178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214315, 40.571812, 17.862835>,  <24.025364, 40.639465, 17.731228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214315, 40.571812, 17.862835>,  <24.529236, 40.459057, 18.082178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.214315, 40.571812, 17.862835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558678, 0.050105, 0.827870,
		0.260842, 0.958138, 0.118036,
		-0.787300, 0.281887, -0.548360,
		23.978125, 40.656380, 17.698326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.253689, 41.040276, 18.497869>,  <24.529236, 40.459057, 18.082178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.253689, 41.040276, 18.497869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.964148, 40.894733, 18.263386>,  <23.790422, 40.807407, 18.122696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.964148, 40.894733, 18.263386>,  <24.253689, 41.040276, 18.497869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.964148, 40.894733, 18.263386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671390, 0.175712, 0.719973,
		-0.158962, 0.914732, -0.371480,
		-0.723855, -0.363856, -0.586210,
		23.746990, 40.785576, 18.087523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.643827, 41.471622, 18.651827>,  <24.253689, 41.040276, 18.497869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.643827, 41.471622, 18.651827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.476477, 41.156338, 18.471302>,  <23.376066, 40.967167, 18.362988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.476477, 41.156338, 18.471302>,  <23.643827, 41.471622, 18.651827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.476477, 41.156338, 18.471302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752150, 0.022122, 0.658621,
		-0.509148, 0.615008, -0.602108,
		-0.418377, -0.788211, -0.451314,
		23.350964, 40.919876, 18.335907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.046926, 41.704433, 18.444864>,  <23.643827, 41.471622, 18.651827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.046926, 41.704433, 18.444864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.036194, 41.308632, 18.501656>,  <23.029755, 41.071152, 18.535730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.036194, 41.308632, 18.501656>,  <23.046926, 41.704433, 18.444864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.036194, 41.308632, 18.501656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838101, 0.099682, 0.536329,
		-0.544854, -0.104603, -0.831981,
		-0.026832, -0.989506, 0.141980,
		23.028145, 41.011780, 18.544250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.370989, 41.563435, 18.772490>,  <23.046926, 41.704433, 18.444864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.370989, 41.563435, 18.772490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.530325, 41.198742, 18.812645>,  <22.625927, 40.979927, 18.836739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.530325, 41.198742, 18.812645>,  <22.370989, 41.563435, 18.772490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.530325, 41.198742, 18.812645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696226, -0.229288, 0.680218,
		-0.597156, -0.340850, -0.726103,
		0.398339, -0.911728, 0.100388,
		22.649826, 40.925224, 18.842762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.762344, 41.226662, 18.883453>,  <22.370989, 41.563435, 18.772490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.762344, 41.226662, 18.883453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.049854, 40.969875, 18.990223>,  <22.222361, 40.815804, 19.054285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.049854, 40.969875, 18.990223>,  <21.762344, 41.226662, 18.883453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.049854, 40.969875, 18.990223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598595, -0.376144, 0.707248,
		-0.353617, -0.668137, -0.654635,
		0.718776, -0.641957, 0.266933,
		22.265486, 40.777287, 19.070301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.525812, 40.497105, 18.802467>,  <21.762344, 41.226662, 18.883453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.525812, 40.497105, 18.802467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.817068, 40.502773, 19.076580>,  <21.991821, 40.506176, 19.241047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.817068, 40.502773, 19.076580>,  <21.525812, 40.497105, 18.802467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.817068, 40.502773, 19.076580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554729, -0.575057, 0.601319,
		0.402600, -0.817990, -0.410859,
		0.728141, 0.014175, 0.685281,
		22.035511, 40.507027, 19.282164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.567427, 39.876442, 19.093847>,  <21.525812, 40.497105, 18.802467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.567427, 39.876442, 19.093847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.739607, 40.102230, 19.375580>,  <21.842915, 40.237705, 19.544619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.739607, 40.102230, 19.375580>,  <21.567427, 39.876442, 19.093847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.739607, 40.102230, 19.375580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432250, -0.556113, 0.709858,
		0.792383, -0.610007, 0.004614,
		0.430452, 0.564474, 0.704330,
		21.868742, 40.271572, 19.586880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.811953, 39.408333, 19.757799>,  <21.567427, 39.876442, 19.093847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.811953, 39.408333, 19.757799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.786709, 39.779984, 19.903534>,  <21.771563, 40.002975, 19.990974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.786709, 39.779984, 19.903534>,  <21.811953, 39.408333, 19.757799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.786709, 39.779984, 19.903534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265781, -0.367527, 0.891226,
		0.961966, -0.040591, 0.270138,
		-0.063108, 0.929127, 0.364336,
		21.767776, 40.058723, 20.012835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.123119, 39.367542, 20.456486>,  <21.811953, 39.408333, 19.757799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.123119, 39.367542, 20.456486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.896055, 39.696228, 20.476643>,  <21.759817, 39.893440, 20.488737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.896055, 39.696228, 20.476643>,  <22.123119, 39.367542, 20.456486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.896055, 39.696228, 20.476643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345366, -0.293256, 0.891473,
		0.747317, 0.488652, 0.450264,
		-0.567662, 0.821718, 0.050391,
		21.725756, 39.942745, 20.491760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.174267, 39.600021, 21.141973>,  <22.123119, 39.367542, 20.456486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.174267, 39.600021, 21.141973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.840054, 39.773991, 21.007671>,  <21.639526, 39.878372, 20.927090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.840054, 39.773991, 21.007671>,  <22.174267, 39.600021, 21.141973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.840054, 39.773991, 21.007671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502232, -0.356723, 0.787726,
		0.222825, 0.826797, 0.516484,
		-0.835531, 0.434920, -0.335757,
		21.589394, 39.904465, 20.906944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.959700, 39.913105, 21.731850>,  <22.174267, 39.600021, 21.141973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.959700, 39.913105, 21.731850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.648340, 39.876747, 21.483387>,  <21.461525, 39.854935, 21.334311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.648340, 39.876747, 21.483387>,  <21.959700, 39.913105, 21.731850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.648340, 39.876747, 21.483387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581381, -0.268918, 0.767905,
		-0.236835, 0.958865, 0.156484,
		-0.778399, -0.090890, -0.621156,
		21.414820, 39.849480, 21.297041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.445644, 40.303211, 21.995777>,  <21.959700, 39.913105, 21.731850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.445644, 40.303211, 21.995777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.210163, 40.063293, 21.779011>,  <21.068874, 39.919342, 21.648951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.210163, 40.063293, 21.779011>,  <21.445644, 40.303211, 21.995777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.210163, 40.063293, 21.779011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546735, -0.198348, 0.813473,
		-0.595405, 0.775181, -0.211160,
		-0.588706, -0.599794, -0.541916,
		21.033552, 39.883354, 21.616436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.688745, 40.426285, 22.147652>,  <21.445644, 40.303211, 21.995777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.688745, 40.426285, 22.147652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682871, 40.065193, 21.975666>,  <20.679346, 39.848537, 21.872475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682871, 40.065193, 21.975666>,  <20.688745, 40.426285, 22.147652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682871, 40.065193, 21.975666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668142, -0.311053, 0.675893,
		-0.743889, 0.297203, -0.598581,
		-0.014687, -0.902727, -0.429963,
		20.678465, 39.794376, 21.846678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.018713, 40.270645, 22.105236>,  <20.688745, 40.426285, 22.147652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.018713, 40.270645, 22.105236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.207062, 39.918854, 22.077545>,  <20.320070, 39.707779, 22.060930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.207062, 39.918854, 22.077545>,  <20.018713, 40.270645, 22.105236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.207062, 39.918854, 22.077545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701403, -0.420811, 0.575284,
		-0.535082, -0.222330, -0.815019,
		0.470872, -0.879481, -0.069226,
		20.348324, 39.655010, 22.056778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.448088, 39.836067, 22.097677>,  <20.018713, 40.270645, 22.105236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.448088, 39.836067, 22.097677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.773727, 39.630444, 22.205742>,  <19.969112, 39.507069, 22.270580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.773727, 39.630444, 22.205742>,  <19.448088, 39.836067, 22.097677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.773727, 39.630444, 22.205742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574959, -0.648095, 0.499395,
		-0.081625, -0.561890, -0.823175,
		0.814100, -0.514055, 0.270163,
		20.017958, 39.476227, 22.286791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.355150, 39.094952, 21.976534>,  <19.448088, 39.836067, 22.097677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.355150, 39.094952, 21.976534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.585747, 39.188263, 22.289772>,  <19.724104, 39.244251, 22.477715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.585747, 39.188263, 22.289772>,  <19.355150, 39.094952, 21.976534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.585747, 39.188263, 22.289772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660939, -0.430371, 0.614768,
		0.480434, -0.871987, -0.093922,
		0.576491, 0.233279, 0.783095,
		19.758694, 39.258247, 22.524700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.663645, 38.481346, 22.228594>,  <19.355150, 39.094952, 21.976534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.663645, 38.481346, 22.228594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.614540, 38.760597, 22.510742>,  <19.585077, 38.928146, 22.680031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.614540, 38.760597, 22.510742>,  <19.663645, 38.481346, 22.228594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.614540, 38.760597, 22.510742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732901, -0.543007, 0.409877,
		0.669167, -0.466648, 0.578321,
		-0.122764, 0.698129, 0.705369,
		19.577711, 38.970036, 22.722353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.706186, 38.220222, 22.913719>,  <19.663645, 38.481346, 22.228594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.706186, 38.220222, 22.913719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.488197, 38.555332, 22.927250>,  <19.357403, 38.756397, 22.935368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.488197, 38.555332, 22.927250>,  <19.706186, 38.220222, 22.913719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.488197, 38.555332, 22.927250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784901, -0.523939, 0.330784,
		0.294845, 0.153718, 0.943100,
		-0.544975, 0.837770, 0.033827,
		19.324705, 38.806664, 22.937399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.213461, 38.140533, 23.602966>,  <19.706186, 38.220222, 22.913719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.213461, 38.140533, 23.602966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.024298, 38.332493, 23.307384>,  <18.910799, 38.447670, 23.130035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.024298, 38.332493, 23.307384>,  <19.213461, 38.140533, 23.602966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.024298, 38.332493, 23.307384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829389, -0.525562, 0.189466,
		-0.297442, 0.702481, 0.646567,
		-0.472908, 0.479901, -0.738954,
		18.882425, 38.476463, 23.085699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.429028, 38.225853, 23.860035>,  <19.213461, 38.140533, 23.602966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.429028, 38.225853, 23.860035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.459280, 38.254883, 23.462238>,  <18.477432, 38.272301, 23.223560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.459280, 38.254883, 23.462238>,  <18.429028, 38.225853, 23.860035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.459280, 38.254883, 23.462238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682369, -0.723473, -0.104690,
		-0.727085, 0.686528, -0.005197,
		0.075632, 0.072572, -0.994491,
		18.481970, 38.276653, 23.163891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.991116, 25.654018, 17.089451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.382084, 25.736958, 17.105713>,  <31.616665, 25.786720, 17.115471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.382084, 25.736958, 17.105713>,  <30.991116, 25.654018, 17.089451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382084, 25.736958, 17.105713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211049, 0.967322, 0.140524,
		-0.010191, -0.145932, 0.989242,
		0.977423, 0.207346, 0.040657,
		31.675310, 25.799162, 17.117910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088171, 26.210247, 17.560745>,  <30.991116, 25.654018, 17.089451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088171, 26.210247, 17.560745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.460310, 26.221966, 17.414543>,  <31.683594, 26.228996, 17.326822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.460310, 26.221966, 17.414543>,  <31.088171, 26.210247, 17.560745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460310, 26.221966, 17.414543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022499, 0.990364, 0.136653,
		0.365985, -0.135358, 0.920724,
		0.930349, 0.029297, -0.365504,
		31.739414, 26.230755, 17.304892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461245, 26.554401, 18.078167>,  <31.088171, 26.210247, 17.560745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461245, 26.554401, 18.078167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.669012, 26.585960, 17.737820>,  <31.793673, 26.604895, 17.533611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.669012, 26.585960, 17.737820>,  <31.461245, 26.554401, 18.078167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669012, 26.585960, 17.737820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069341, 0.988554, 0.133992,
		0.851701, -0.128598, 0.508003,
		0.519419, 0.078896, -0.850870,
		31.824839, 26.609629, 17.482559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052563, 26.941450, 18.191206>,  <31.461245, 26.554401, 18.078167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052563, 26.941450, 18.191206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.025681, 26.986809, 17.794697>,  <32.009552, 27.014023, 17.556791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.025681, 26.986809, 17.794697>,  <32.052563, 26.941450, 18.191206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025681, 26.986809, 17.794697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142346, 0.984447, 0.102963,
		0.987533, -0.134184, -0.082302,
		-0.067206, 0.113395, -0.991274,
		32.005520, 27.020828, 17.497314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576134, 27.383087, 18.010746>,  <32.052563, 26.941450, 18.191206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576134, 27.383087, 18.010746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.364441, 27.402988, 17.671940>,  <32.237423, 27.414928, 17.468657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.364441, 27.402988, 17.671940>,  <32.576134, 27.383087, 18.010746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364441, 27.402988, 17.671940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028365, 0.996684, 0.076268,
		0.848001, 0.064390, -0.526069,
		-0.529235, 0.049753, -0.847015,
		32.205669, 27.417913, 17.417835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975521, 27.795647, 17.440769>,  <32.576134, 27.383087, 18.010746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975521, 27.795647, 17.440769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.580246, 27.797264, 17.379501>,  <32.343079, 27.798235, 17.342741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.580246, 27.797264, 17.379501>,  <32.975521, 27.795647, 17.440769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580246, 27.797264, 17.379501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015320, 0.992034, 0.125038,
		0.152456, 0.125908, -0.980257,
		-0.988192, 0.004045, -0.153170,
		32.283787, 27.798477, 17.333549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852177, 28.402960, 17.015022>,  <32.975521, 27.795647, 17.440769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852177, 28.402960, 17.015022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.504707, 28.295826, 17.181717>,  <32.296227, 28.231544, 17.281734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.504707, 28.295826, 17.181717>,  <32.852177, 28.402960, 17.015022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504707, 28.295826, 17.181717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209263, 0.960894, 0.181362,
		-0.449016, 0.070337, -0.890751,
		-0.868673, -0.267836, 0.416738,
		32.244106, 28.215475, 17.306738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296867, 28.839678, 16.725462>,  <32.852177, 28.402960, 17.015022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296867, 28.839678, 16.725462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.130051, 28.728050, 17.071457>,  <32.029961, 28.661074, 17.279053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.130051, 28.728050, 17.071457>,  <32.296867, 28.839678, 16.725462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130051, 28.728050, 17.071457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296274, 0.941453, 0.160897,
		-0.859244, -0.189172, -0.475303,
		-0.417038, -0.279070, 0.864985,
		32.004940, 28.644329, 17.330952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792215, 29.320745, 16.836123>,  <32.296867, 28.839678, 16.725462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792215, 29.320745, 16.836123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.843973, 29.154140, 17.196072>,  <31.875029, 29.054176, 17.412041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.843973, 29.154140, 17.196072>,  <31.792215, 29.320745, 16.836123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843973, 29.154140, 17.196072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137691, 0.891164, 0.432282,
		-0.981987, -0.179840, 0.057961,
		0.129394, -0.416515, 0.899874,
		31.882792, 29.029186, 17.466034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240707, 29.543510, 17.188551>,  <31.792215, 29.320745, 16.836123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240707, 29.543510, 17.188551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.489534, 29.420891, 17.476734>,  <31.638830, 29.347321, 17.649645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.489534, 29.420891, 17.476734>,  <31.240707, 29.543510, 17.188551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489534, 29.420891, 17.476734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267746, 0.781408, 0.563661,
		-0.735760, -0.543536, 0.404013,
		0.622069, -0.306547, 0.720458,
		31.676155, 29.328926, 17.692871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778416, 29.558548, 17.731867>,  <31.240707, 29.543510, 17.188551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778416, 29.558548, 17.731867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.154446, 29.556129, 17.868233>,  <31.380064, 29.554678, 17.950052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.154446, 29.556129, 17.868233>,  <30.778416, 29.558548, 17.731867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154446, 29.556129, 17.868233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219158, 0.755240, 0.617723,
		-0.261209, -0.655420, 0.708657,
		0.940074, -0.006048, 0.340916,
		31.436468, 29.554316, 17.970507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666241, 29.485083, 18.402288>,  <30.778416, 29.558548, 17.731867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666241, 29.485083, 18.402288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.028238, 29.650234, 18.361263>,  <31.245436, 29.749325, 18.336649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.028238, 29.650234, 18.361263>,  <30.666241, 29.485083, 18.402288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028238, 29.650234, 18.361263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301463, 0.792477, 0.530188,
		0.300182, -0.448897, 0.841654,
		0.904992, 0.412881, -0.102561,
		31.299736, 29.774099, 18.330494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832960, 29.867636, 19.012724>,  <30.666241, 29.485083, 18.402288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832960, 29.867636, 19.012724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.105619, 30.041245, 18.777103>,  <31.269215, 30.145411, 18.635731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.105619, 30.041245, 18.777103>,  <30.832960, 29.867636, 19.012724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105619, 30.041245, 18.777103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173333, 0.877938, 0.446297,
		0.710851, -0.202117, 0.673676,
		0.681650, 0.434021, -0.589050,
		31.310114, 30.171452, 18.600388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156040, 30.309776, 19.380833>,  <30.832960, 29.867636, 19.012724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156040, 30.309776, 19.380833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.265945, 30.453976, 19.024284>,  <31.331888, 30.540495, 18.810354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.265945, 30.453976, 19.024284>,  <31.156040, 30.309776, 19.380833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265945, 30.453976, 19.024284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246987, 0.922409, 0.296916,
		0.929248, 0.138577, 0.342482,
		0.274763, 0.360497, -0.891373,
		31.348375, 30.562124, 18.756872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556738, 30.895531, 19.446592>,  <31.156040, 30.309776, 19.380833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556738, 30.895531, 19.446592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.402424, 30.961285, 19.083462>,  <31.309835, 31.000738, 18.865583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.402424, 30.961285, 19.083462>,  <31.556738, 30.895531, 19.446592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402424, 30.961285, 19.083462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249341, 0.928802, 0.274145,
		0.888255, 0.332120, -0.317331,
		-0.385787, 0.164387, -0.907825,
		31.286688, 31.010601, 18.811115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788702, 31.632349, 19.312691>,  <31.556738, 30.895531, 19.446592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788702, 31.632349, 19.312691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.491713, 31.547157, 19.058643>,  <31.313519, 31.496042, 18.906216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.491713, 31.547157, 19.058643>,  <31.788702, 31.632349, 19.312691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491713, 31.547157, 19.058643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314242, 0.948054, 0.049443,
		0.591597, 0.236291, -0.770830,
		-0.742472, -0.212977, -0.635119,
		31.268970, 31.483265, 18.868107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803219, 32.255695, 18.837557>,  <31.788702, 31.632349, 19.312691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803219, 32.255695, 18.837557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.461937, 32.068081, 18.746300>,  <31.257168, 31.955513, 18.691545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.461937, 32.068081, 18.746300>,  <31.803219, 32.255695, 18.837557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461937, 32.068081, 18.746300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477223, 0.878521, -0.021429,
		0.210478, 0.090591, -0.973392,
		-0.853204, -0.469035, -0.228142,
		31.205976, 31.927370, 18.677856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414682, 32.639229, 18.201635>,  <31.803219, 32.255695, 18.837557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414682, 32.639229, 18.201635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.167282, 32.422668, 18.429440>,  <31.018843, 32.292732, 18.566122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.167282, 32.422668, 18.429440>,  <31.414682, 32.639229, 18.201635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167282, 32.422668, 18.429440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603850, 0.791247, 0.096402,
		-0.502817, -0.284276, -0.816310,
		-0.618499, -0.541401, 0.569513,
		30.981733, 32.260246, 18.600294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723530, 32.691780, 17.888010>,  <31.414682, 32.639229, 18.201635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723530, 32.691780, 17.888010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.695181, 32.583920, 18.272148>,  <30.678171, 32.519203, 18.502632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.695181, 32.583920, 18.272148>,  <30.723530, 32.691780, 17.888010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695181, 32.583920, 18.272148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630303, 0.758305, 0.166408,
		-0.773108, -0.593516, -0.223704,
		-0.070870, -0.269653, 0.960346,
		30.673920, 32.503025, 18.560251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045210, 32.619686, 17.933212>,  <30.723530, 32.691780, 17.888010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045210, 32.619686, 17.933212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.199070, 32.670330, 18.298946>,  <30.291386, 32.700718, 18.518387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.199070, 32.670330, 18.298946>,  <30.045210, 32.619686, 17.933212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199070, 32.670330, 18.298946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738183, 0.636903, 0.222351,
		-0.554191, -0.760476, 0.338450,
		0.384652, 0.126613, 0.914337,
		30.314466, 32.708313, 18.573248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353165, 32.719337, 18.240623>,  <30.045210, 32.619686, 17.933212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353165, 32.719337, 18.240623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.605625, 32.862358, 18.515957>,  <29.757101, 32.948170, 18.681158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.605625, 32.862358, 18.515957>,  <29.353165, 32.719337, 18.240623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605625, 32.862358, 18.515957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682756, 0.677222, 0.274254,
		-0.368095, -0.643060, 0.671550,
		0.631150, 0.357553, 0.688336,
		29.794970, 32.969624, 18.722458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997761, 32.663933, 18.924776>,  <29.353165, 32.719337, 18.240623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997761, 32.663933, 18.924776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.288321, 32.938694, 18.933754>,  <29.462656, 33.103550, 18.939140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.288321, 32.938694, 18.933754>,  <28.997761, 32.663933, 18.924776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288321, 32.938694, 18.933754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642031, 0.666565, 0.378797,
		0.245237, -0.289568, 0.925208,
		0.726399, 0.686907, 0.022446,
		29.506241, 33.144768, 18.940487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925068, 32.987034, 19.516233>,  <28.997761, 32.663933, 18.924776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925068, 32.987034, 19.516233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.149221, 33.244961, 19.308319>,  <29.283712, 33.399719, 19.183571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.149221, 33.244961, 19.308319>,  <28.925068, 32.987034, 19.516233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149221, 33.244961, 19.308319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414026, 0.761638, 0.498488,
		0.717323, -0.064140, 0.693782,
		0.560384, 0.644821, -0.519785,
		29.317335, 33.438408, 19.152384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111784, 33.013683, 19.513926>,  <28.925068, 32.987034, 19.516233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111784, 33.013683, 19.513926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.876410, 33.166393, 19.228832>,  <27.735184, 33.258018, 19.057775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.876410, 33.166393, 19.228832>,  <28.111784, 33.013683, 19.513926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876410, 33.166393, 19.228832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326443, -0.918643, -0.222555,
		-0.739714, 0.101707, 0.665191,
		-0.588437, 0.381774, -0.712734,
		27.699879, 33.280926, 19.015013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370232, 32.889885, 19.650528>,  <28.111784, 33.013683, 19.513926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370232, 32.889885, 19.650528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.430017, 32.927612, 19.256824>,  <27.465889, 32.950249, 19.020603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.430017, 32.927612, 19.256824>,  <27.370232, 32.889885, 19.650528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430017, 32.927612, 19.256824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252979, -0.958659, -0.130285,
		-0.955857, 0.268470, -0.119426,
		0.149467, 0.094322, -0.984258,
		27.474857, 32.955910, 18.961548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835796, 32.617893, 19.370749>,  <27.370232, 32.889885, 19.650528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835796, 32.617893, 19.370749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.064390, 32.616077, 19.042507>,  <27.201546, 32.614990, 18.845562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.064390, 32.616077, 19.042507>,  <26.835796, 32.617893, 19.370749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064390, 32.616077, 19.042507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230004, -0.960788, -0.154870,
		-0.787721, 0.277247, -0.550117,
		0.571483, -0.004535, -0.820601,
		27.235836, 32.614716, 18.796328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422977, 32.263126, 18.919333>,  <26.835796, 32.617893, 19.370749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422977, 32.263126, 18.919333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.787365, 32.260956, 18.754356>,  <27.005997, 32.259655, 18.655371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.787365, 32.260956, 18.754356>,  <26.422977, 32.263126, 18.919333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787365, 32.260956, 18.754356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023046, -0.999021, -0.037762,
		-0.411832, 0.043905, -0.910201,
		0.910968, -0.005424, -0.412441,
		27.060656, 32.259327, 18.630625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278450, 31.986090, 18.254480>,  <26.422977, 32.263126, 18.919333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278450, 31.986090, 18.254480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.668552, 31.935772, 18.327202>,  <26.902615, 31.905581, 18.370834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.668552, 31.935772, 18.327202>,  <26.278450, 31.986090, 18.254480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668552, 31.935772, 18.327202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081687, -0.969180, -0.232417,
		0.205436, 0.211816, -0.955474,
		0.975256, -0.125796, 0.181802,
		26.961128, 31.898033, 18.381742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549538, 31.625994, 17.636414>,  <26.278450, 31.986090, 18.254480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549538, 31.625994, 17.636414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.789261, 31.556206, 17.948925>,  <26.933094, 31.514334, 18.136431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.789261, 31.556206, 17.948925>,  <26.549538, 31.625994, 17.636414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789261, 31.556206, 17.948925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145403, -0.936002, -0.320559,
		0.787204, 0.305713, -0.535583,
		0.599306, -0.174470, 0.781276,
		26.969053, 31.503864, 18.183308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165396, 31.264587, 17.383238>,  <26.549538, 31.625994, 17.636414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165396, 31.264587, 17.383238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.178658, 31.169125, 17.771454>,  <27.186615, 31.111847, 18.004383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.178658, 31.169125, 17.771454>,  <27.165396, 31.264587, 17.383238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178658, 31.169125, 17.771454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495633, -0.839330, -0.223322,
		0.867899, 0.488435, 0.090460,
		0.033153, -0.238656, 0.970538,
		27.188602, 31.097528, 18.062614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670708, 30.914345, 17.380331>,  <27.165396, 31.264587, 17.383238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670708, 30.914345, 17.380331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.543121, 30.812477, 17.745495>,  <27.466570, 30.751356, 17.964594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.543121, 30.812477, 17.745495>,  <27.670708, 30.914345, 17.380331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543121, 30.812477, 17.745495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484981, -0.871418, -0.073646,
		0.814282, 0.419254, 0.401462,
		-0.318965, -0.254670, 0.912910,
		27.447432, 30.736076, 18.019367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281712, 30.638702, 17.719091>,  <27.670708, 30.914345, 17.380331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281712, 30.638702, 17.719091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.966516, 30.473572, 17.901802>,  <27.777399, 30.374493, 18.011429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.966516, 30.473572, 17.901802>,  <28.281712, 30.638702, 17.719091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966516, 30.473572, 17.901802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462845, -0.886435, -0.002689,
		0.406013, 0.209298, 0.889578,
		-0.787990, -0.412829, 0.456776,
		27.730120, 30.349724, 18.038836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556461, 30.319300, 18.246918>,  <28.281712, 30.638702, 17.719091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556461, 30.319300, 18.246918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.199663, 30.139164, 18.231224>,  <27.985584, 30.031082, 18.221807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.199663, 30.139164, 18.231224>,  <28.556461, 30.319300, 18.246918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199663, 30.139164, 18.231224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448270, -0.892401, 0.051709,
		-0.058300, 0.028536, 0.997891,
		-0.891995, -0.450339, -0.039235,
		27.932064, 30.004063, 18.219454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544344, 29.742350, 18.790356>,  <28.556461, 30.319300, 18.246918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544344, 29.742350, 18.790356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.278294, 29.647881, 18.506996>,  <28.118664, 29.591198, 18.336981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.278294, 29.647881, 18.506996>,  <28.544344, 29.742350, 18.790356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278294, 29.647881, 18.506996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274871, -0.959493, 0.061806,
		-0.694302, -0.153610, 0.703100,
		-0.665125, -0.236174, -0.708400,
		28.078756, 29.577028, 18.294476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258062, 29.061754, 19.008572>,  <28.544344, 29.742350, 18.790356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258062, 29.061754, 19.008572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.202124, 29.130116, 18.618446>,  <28.168560, 29.171133, 18.384371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.202124, 29.130116, 18.618446>,  <28.258062, 29.061754, 19.008572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202124, 29.130116, 18.618446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276860, -0.938956, -0.204230,
		-0.950680, -0.298586, 0.083993,
		-0.139846, 0.170903, -0.975313,
		28.160170, 29.181387, 18.325853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808268, 28.606421, 18.782072>,  <28.258062, 29.061754, 19.008572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808268, 28.606421, 18.782072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.014805, 28.707302, 18.454712>,  <28.138727, 28.767830, 18.258295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.014805, 28.707302, 18.454712>,  <27.808268, 28.606421, 18.782072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014805, 28.707302, 18.454712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193009, -0.965336, -0.175709,
		-0.834348, -0.067233, -0.547123,
		0.516344, 0.252202, -0.818402,
		28.169708, 28.782963, 18.209190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623356, 28.106405, 18.397083>,  <27.808268, 28.606421, 18.782072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623356, 28.106405, 18.397083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.954233, 28.236446, 18.213757>,  <28.152760, 28.314472, 18.103760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.954233, 28.236446, 18.213757>,  <27.623356, 28.106405, 18.397083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954233, 28.236446, 18.213757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171857, -0.922924, -0.344494,
		-0.534989, 0.206198, -0.819310,
		0.827195, 0.325105, -0.458318,
		28.202393, 28.333979, 18.076262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756784, 27.687456, 17.791122>,  <27.623356, 28.106405, 18.397083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756784, 27.687456, 17.791122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.109426, 27.867577, 17.847687>,  <28.321012, 27.975649, 17.881624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.109426, 27.867577, 17.847687>,  <27.756784, 27.687456, 17.791122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109426, 27.867577, 17.847687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468792, -0.800634, -0.373121,
		-0.054800, 0.395238, -0.916943,
		0.881607, 0.450302, 0.141410,
		28.373909, 28.002666, 17.890110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103716, 27.387468, 17.235455>,  <27.756784, 27.687456, 17.791122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103716, 27.387468, 17.235455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.410095, 27.561916, 17.424397>,  <28.593924, 27.666586, 17.537762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.410095, 27.561916, 17.424397>,  <28.103716, 27.387468, 17.235455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410095, 27.561916, 17.424397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591660, -0.765618, -0.252521,
		0.251514, 0.472892, -0.844460,
		0.765950, 0.436121, 0.472355,
		28.639879, 27.692753, 17.566103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689846, 27.265537, 16.785582>,  <28.103716, 27.387468, 17.235455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689846, 27.265537, 16.785582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.824471, 27.324127, 17.157661>,  <28.905245, 27.359282, 17.380909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.824471, 27.324127, 17.157661>,  <28.689846, 27.265537, 16.785582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824471, 27.324127, 17.157661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551024, -0.831680, -0.068408,
		0.763608, 0.535586, -0.360625,
		0.336563, 0.146476, 0.930199,
		28.925440, 27.368071, 17.436722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.603384, 27.285416, 16.745539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.474258, 27.223595, 17.119041>,  <29.396784, 27.186502, 17.343143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.474258, 27.223595, 17.119041>,  <29.603384, 27.285416, 16.745539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474258, 27.223595, 17.119041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704517, -0.698044, 0.128026,
		0.632018, 0.699177, 0.334222,
		-0.322814, -0.154550, 0.933759,
		29.377415, 27.177229, 17.399170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192928, 27.140343, 17.099396>,  <29.603384, 27.285416, 16.745539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192928, 27.140343, 17.099396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.886936, 27.016415, 17.325253>,  <29.703341, 26.942059, 17.460766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.886936, 27.016415, 17.325253>,  <30.192928, 27.140343, 17.099396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886936, 27.016415, 17.325253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500361, -0.837886, 0.218141,
		0.405521, 0.449398, 0.795986,
		-0.764978, -0.309819, 0.564642,
		29.657442, 26.923470, 17.494644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526455, 26.835703, 17.532743>,  <30.192928, 27.140343, 17.099396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526455, 26.835703, 17.532743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.149902, 26.711185, 17.584732>,  <29.923969, 26.636475, 17.615925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.149902, 26.711185, 17.584732>,  <30.526455, 26.835703, 17.532743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149902, 26.711185, 17.584732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323873, -0.941799, 0.090120,
		0.094355, 0.126933, 0.987413,
		-0.941384, -0.311293, 0.129974,
		29.867487, 26.617798, 17.623724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499920, 26.165014, 18.026468>,  <30.526455, 26.835703, 17.532743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499920, 26.165014, 18.026468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141790, 26.152561, 17.848736>,  <29.926912, 26.145090, 17.742096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141790, 26.152561, 17.848736>,  <30.499920, 26.165014, 18.026468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141790, 26.152561, 17.848736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017407, -0.994347, 0.104744,
		-0.445080, 0.101514, 0.889718,
		-0.895322, -0.031132, -0.444331,
		29.873194, 26.143221, 17.715437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067274, 25.755232, 18.470327>,  <30.499920, 26.165014, 18.026468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067274, 25.755232, 18.470327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.947477, 25.720215, 18.090298>,  <29.875599, 25.699205, 17.862280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.947477, 25.720215, 18.090298>,  <30.067274, 25.755232, 18.470327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947477, 25.720215, 18.090298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014909, -0.995231, 0.096401,
		-0.953983, 0.043036, 0.296758,
		-0.299491, -0.087540, -0.950075,
		29.857630, 25.693953, 17.805275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636465, 25.100986, 18.391676>,  <30.067274, 25.755232, 18.470327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636465, 25.100986, 18.391676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.693180, 25.211815, 18.011543>,  <29.727209, 25.278311, 17.783464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.693180, 25.211815, 18.011543>,  <29.636465, 25.100986, 18.391676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693180, 25.211815, 18.011543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010868, -0.960408, -0.278386,
		-0.989837, 0.029144, -0.139185,
		0.141788, 0.277070, -0.950331,
		29.735716, 25.294935, 17.726444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075680, 24.931831, 18.119055>,  <29.636465, 25.100986, 18.391676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075680, 24.931831, 18.119055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.380356, 24.931721, 17.859879>,  <29.563162, 24.931654, 17.704372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.380356, 24.931721, 17.859879>,  <29.075680, 24.931831, 18.119055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380356, 24.931721, 17.859879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161176, -0.968648, -0.189056,
		-0.627575, 0.248435, -0.737854,
		0.761690, -0.000277, -0.647942,
		29.608862, 24.931637, 17.665497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859022, 24.632578, 17.622046>,  <29.075680, 24.931831, 18.119055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859022, 24.632578, 17.622046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.248938, 24.602448, 17.538036>,  <29.482887, 24.584370, 17.487631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.248938, 24.602448, 17.538036>,  <28.859022, 24.632578, 17.622046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248938, 24.602448, 17.538036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110995, -0.980265, -0.163586,
		-0.193556, 0.182773, -0.963914,
		0.974790, -0.075327, -0.210023,
		29.541374, 24.579849, 17.475029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867685, 24.321081, 16.956375>,  <28.859022, 24.632578, 17.622046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867685, 24.321081, 16.956375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.229521, 24.262268, 17.116425>,  <29.446623, 24.226980, 17.212454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.229521, 24.262268, 17.116425>,  <28.867685, 24.321081, 16.956375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229521, 24.262268, 17.116425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062802, -0.974358, -0.216060,
		0.421633, 0.170317, -0.890628,
		0.904589, -0.147032, 0.400125,
		29.500898, 24.218159, 17.236462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208239, 23.788593, 16.533653>,  <28.867685, 24.321081, 16.956375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208239, 23.788593, 16.533653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.411695, 23.765949, 16.877300>,  <29.533770, 23.752363, 17.083488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.411695, 23.765949, 16.877300>,  <29.208239, 23.788593, 16.533653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411695, 23.765949, 16.877300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018196, -0.998320, -0.055009,
		0.860786, 0.012348, -0.508817,
		0.508642, -0.056609, 0.859115,
		29.564287, 23.748966, 17.135035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668200, 23.242371, 16.415121>,  <29.208239, 23.788593, 16.533653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668200, 23.242371, 16.415121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.710787, 23.305649, 16.807781>,  <29.736340, 23.343616, 17.043377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.710787, 23.305649, 16.807781>,  <29.668200, 23.242371, 16.415121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710787, 23.305649, 16.807781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063458, -0.984169, 0.165484,
		0.992289, -0.079912, -0.094743,
		0.106467, 0.158196, 0.981651,
		29.742727, 23.353107, 17.102276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212330, 22.880011, 16.578817>,  <29.668200, 23.242371, 16.415121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212330, 22.880011, 16.578817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.988020, 22.915501, 16.908096>,  <29.853434, 22.936794, 17.105663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.988020, 22.915501, 16.908096>,  <30.212330, 22.880011, 16.578817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988020, 22.915501, 16.908096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067096, -0.986102, 0.151992,
		0.825244, 0.140467, 0.547030,
		-0.560777, 0.088727, 0.823199,
		29.819786, 22.942120, 17.155056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532696, 22.529345, 16.983274>,  <30.212330, 22.880011, 16.578817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532696, 22.529345, 16.983274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.191187, 22.552979, 17.190189>,  <29.986282, 22.567160, 17.314339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.191187, 22.552979, 17.190189>,  <30.532696, 22.529345, 16.983274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191187, 22.552979, 17.190189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052395, -0.978745, 0.198274,
		0.518006, 0.196383, 0.832528,
		-0.853771, 0.059087, 0.517286,
		29.935055, 22.570705, 17.345375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694082, 22.134476, 17.503796>,  <30.532696, 22.529345, 16.983274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694082, 22.134476, 17.503796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.296488, 22.168190, 17.531754>,  <30.057930, 22.188419, 17.548529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.296488, 22.168190, 17.531754>,  <30.694082, 22.134476, 17.503796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296488, 22.168190, 17.531754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070843, -0.981762, 0.176420,
		0.083490, 0.170408, 0.981830,
		-0.993987, 0.084286, 0.069896,
		29.998291, 22.193476, 17.552723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525503, 21.732275, 18.054146>,  <30.694082, 22.134476, 17.503796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525503, 21.732275, 18.054146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.188679, 21.772694, 17.842213>,  <29.986584, 21.796946, 17.715052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.188679, 21.772694, 17.842213>,  <30.525503, 21.732275, 18.054146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188679, 21.772694, 17.842213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169722, -0.982037, 0.082445,
		-0.511986, 0.159349, 0.844084,
		-0.842059, 0.101049, -0.529835,
		29.936060, 21.803009, 17.683262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940968, 21.516016, 18.488041>,  <30.525503, 21.732275, 18.054146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940968, 21.516016, 18.488041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.830759, 21.472782, 18.105961>,  <29.764635, 21.446842, 17.876713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.830759, 21.472782, 18.105961>,  <29.940968, 21.516016, 18.488041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830759, 21.472782, 18.105961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229882, -0.957420, 0.174645,
		-0.933404, 0.267702, 0.238942,
		-0.275521, -0.108086, -0.955199,
		29.748102, 21.440355, 17.819401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349085, 21.128317, 18.544508>,  <29.940968, 21.516016, 18.488041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349085, 21.128317, 18.544508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.481106, 21.089802, 18.168892>,  <29.560318, 21.066692, 17.943523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.481106, 21.089802, 18.168892>,  <29.349085, 21.128317, 18.544508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481106, 21.089802, 18.168892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223453, -0.974480, 0.021381,
		-0.917134, 0.202774, -0.343145,
		0.330053, -0.096286, -0.939039,
		29.580122, 21.060917, 17.887180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786526, 20.660185, 18.179787>,  <29.349085, 21.128317, 18.544508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786526, 20.660185, 18.179787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.098429, 20.658501, 17.929359>,  <29.285570, 20.657490, 17.779102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.098429, 20.658501, 17.929359>,  <28.786526, 20.660185, 18.179787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098429, 20.658501, 17.929359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131266, -0.978851, -0.156905,
		-0.612169, 0.204530, -0.763818,
		0.779756, -0.004211, -0.626070,
		29.332355, 20.657238, 17.741539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560133, 20.351173, 17.640984>,  <28.786526, 20.660185, 18.179787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560133, 20.351173, 17.640984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.958092, 20.310852, 17.642731>,  <29.196867, 20.286659, 17.643778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.958092, 20.310852, 17.642731>,  <28.560133, 20.351173, 17.640984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958092, 20.310852, 17.642731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100900, -0.994028, 0.041555,
		0.000151, -0.041783, -0.999127,
		0.994897, -0.100805, 0.004366,
		29.256561, 20.280611, 17.644041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729372, 19.841316, 17.145084>,  <28.560133, 20.351173, 17.640984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729372, 19.841316, 17.145084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.053617, 19.857006, 17.378792>,  <29.248165, 19.866421, 17.519016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.053617, 19.857006, 17.378792>,  <28.729372, 19.841316, 17.145084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053617, 19.857006, 17.378792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082478, -0.980160, 0.180235,
		0.579745, -0.194290, -0.791294,
		0.810613, 0.039226, 0.584267,
		29.296801, 19.868774, 17.554071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033693, 19.254541, 16.903446>,  <28.729372, 19.841316, 17.145084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033693, 19.254541, 16.903446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.174791, 19.333786, 17.269249>,  <29.259449, 19.381332, 17.488731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.174791, 19.333786, 17.269249>,  <29.033693, 19.254541, 16.903446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174791, 19.333786, 17.269249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141201, -0.954869, 0.261318,
		0.925005, -0.221308, -0.308850,
		0.352744, 0.198111, 0.914508,
		29.280615, 19.393219, 17.543602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367115, 18.666494, 17.089506>,  <29.033693, 19.254541, 16.903446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367115, 18.666494, 17.089506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.311382, 18.861729, 17.434147>,  <29.277943, 18.978868, 17.640932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.311382, 18.861729, 17.434147>,  <29.367115, 18.666494, 17.089506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311382, 18.861729, 17.434147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301767, -0.849634, 0.432503,
		0.943145, -0.199741, 0.265670,
		-0.139333, 0.488083, 0.861604,
		29.269583, 19.008154, 17.692629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753801, 18.314840, 17.651396>,  <29.367115, 18.666494, 17.089506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753801, 18.314840, 17.651396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.428164, 18.508961, 17.778976>,  <29.232780, 18.625433, 17.855526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.428164, 18.508961, 17.778976>,  <29.753801, 18.314840, 17.651396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428164, 18.508961, 17.778976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374030, -0.858312, 0.351285,
		0.444241, 0.166682, 0.880265,
		-0.814096, 0.485301, 0.318953,
		29.183935, 18.654551, 17.874662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289650, 17.831608, 17.337000>,  <29.753801, 18.314840, 17.651396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289650, 17.831608, 17.337000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.394249, 18.093258, 17.053101>,  <30.457008, 18.250248, 16.882761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.394249, 18.093258, 17.053101>,  <30.289650, 17.831608, 17.337000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394249, 18.093258, 17.053101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963433, 0.132356, -0.232979,
		-0.058458, 0.744718, 0.664814,
		0.261496, 0.654123, -0.709749,
		30.472698, 18.289495, 16.840176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942524, 18.117870, 17.075472>,  <30.289650, 17.831608, 17.337000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942524, 18.117870, 17.075472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.334160, 18.041069, 17.102367>,  <31.569141, 17.994987, 17.118504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.334160, 18.041069, 17.102367>,  <30.942524, 18.117870, 17.075472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334160, 18.041069, 17.102367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193584, 0.980923, -0.017769,
		-0.062542, 0.030414, 0.997579,
		0.979088, -0.192004, 0.067237,
		31.627886, 17.983467, 17.122538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278296, 18.589426, 17.576754>,  <30.942524, 18.117870, 17.075472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278296, 18.589426, 17.576754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.598503, 18.468597, 17.369709>,  <31.790628, 18.396101, 17.245481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.598503, 18.468597, 17.369709>,  <31.278296, 18.589426, 17.576754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598503, 18.468597, 17.369709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372845, 0.927214, 0.035518,
		0.469209, -0.221423, 0.854877,
		0.800518, -0.302071, -0.517613,
		31.838659, 18.377975, 17.214424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917578, 18.745007, 17.959810>,  <31.278296, 18.589426, 17.576754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917578, 18.745007, 17.959810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.016727, 18.712475, 17.573662>,  <32.076218, 18.692957, 17.341972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.016727, 18.712475, 17.573662>,  <31.917578, 18.745007, 17.959810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016727, 18.712475, 17.573662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426893, 0.903682, 0.033480,
		0.869668, -0.420410, 0.258716,
		0.247872, -0.081327, -0.965373,
		32.091087, 18.688076, 17.284050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574921, 18.854048, 17.943918>,  <31.917578, 18.745007, 17.959810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574921, 18.854048, 17.943918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.421066, 18.925282, 17.581627>,  <32.328754, 18.968021, 17.364252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.421066, 18.925282, 17.581627>,  <32.574921, 18.854048, 17.943918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421066, 18.925282, 17.581627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563777, 0.822260, -0.077743,
		0.730900, -0.540531, -0.416668,
		-0.384632, 0.178085, -0.905728,
		32.305676, 18.978706, 17.309908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094479, 19.177790, 17.470547>,  <32.574921, 18.854048, 17.943918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094479, 19.177790, 17.470547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.743298, 19.285027, 17.311893>,  <32.532589, 19.349369, 17.216702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.743298, 19.285027, 17.311893>,  <33.094479, 19.177790, 17.470547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743298, 19.285027, 17.311893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268036, 0.961736, 0.056753,
		0.396672, -0.056486, -0.916221,
		-0.877957, 0.268092, -0.396634,
		32.479912, 19.365454, 17.192904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270409, 19.764170, 17.111933>,  <33.094479, 19.177790, 17.470547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270409, 19.764170, 17.111933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873055, 19.809189, 17.102879>,  <32.634640, 19.836201, 17.097446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873055, 19.809189, 17.102879>,  <33.270409, 19.764170, 17.111933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873055, 19.809189, 17.102879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105586, 0.973120, 0.204671,
		0.045064, 0.200928, -0.978569,
		-0.993389, 0.112547, -0.022638,
		32.575039, 19.842953, 17.096087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115307, 20.327124, 16.619112>,  <33.270409, 19.764170, 17.111933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115307, 20.327124, 16.619112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790867, 20.320187, 16.852970>,  <32.596203, 20.316025, 16.993286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790867, 20.320187, 16.852970>,  <33.115307, 20.327124, 16.619112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790867, 20.320187, 16.852970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005800, 0.999273, 0.037691,
		-0.584875, 0.033962, -0.810412,
		-0.811103, -0.017344, 0.584646,
		32.547535, 20.314983, 17.028364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644062, 20.804514, 16.286619>,  <33.115307, 20.327124, 16.619112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644062, 20.804514, 16.286619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.519112, 20.784233, 16.666061>,  <32.444141, 20.772064, 16.893726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.519112, 20.784233, 16.666061>,  <32.644062, 20.804514, 16.286619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519112, 20.784233, 16.666061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344521, 0.936636, -0.063387,
		-0.885283, -0.346615, -0.310052,
		-0.312377, -0.050704, 0.948604,
		32.425400, 20.769022, 16.950644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912006, 21.074923, 16.335659>,  <32.644062, 20.804514, 16.286619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912006, 21.074923, 16.335659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.058006, 21.099041, 16.707279>,  <32.145607, 21.113512, 16.930252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.058006, 21.099041, 16.707279>,  <31.912006, 21.074923, 16.335659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058006, 21.099041, 16.707279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360861, 0.929054, 0.081475,
		-0.858227, -0.364997, 0.360865,
		0.365002, 0.060298, 0.929052,
		32.167507, 21.117130, 16.985994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515482, 21.589943, 16.571503>,  <31.912006, 21.074923, 16.335659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515482, 21.589943, 16.571503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.801012, 21.545025, 16.848007>,  <31.972330, 21.518074, 17.013910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.801012, 21.545025, 16.848007>,  <31.515482, 21.589943, 16.571503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801012, 21.545025, 16.848007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107643, 0.957738, 0.266740,
		-0.692000, -0.264816, 0.671572,
		0.713827, -0.112294, 0.691260,
		32.015160, 21.511337, 17.055386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228584, 21.693632, 17.188778>,  <31.515482, 21.589943, 16.571503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228584, 21.693632, 17.188778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.613838, 21.799496, 17.208073>,  <31.844990, 21.863014, 17.219648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.613838, 21.799496, 17.208073>,  <31.228584, 21.693632, 17.188778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613838, 21.799496, 17.208073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268120, 0.929704, 0.252511,
		0.021986, -0.256135, 0.966391,
		0.963135, 0.264660, 0.048235,
		31.902779, 21.878893, 17.222544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365856, 22.124836, 17.785246>,  <31.228584, 21.693632, 17.188778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365856, 22.124836, 17.785246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.691675, 22.209980, 17.569393>,  <31.887167, 22.261066, 17.439882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.691675, 22.209980, 17.569393>,  <31.365856, 22.124836, 17.785246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691675, 22.209980, 17.569393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093892, 0.966356, 0.239457,
		0.572445, -0.144382, 0.807131,
		0.814549, 0.212860, -0.539630,
		31.936039, 22.273838, 17.407505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767534, 22.672203, 18.172842>,  <31.365856, 22.124836, 17.785246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767534, 22.672203, 18.172842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.945730, 22.718483, 17.817730>,  <32.052647, 22.746250, 17.604662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.945730, 22.718483, 17.817730>,  <31.767534, 22.672203, 18.172842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945730, 22.718483, 17.817730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031473, 0.988978, 0.144680,
		0.894734, -0.092394, 0.436938,
		0.445489, 0.115698, -0.887780,
		32.079376, 22.753193, 17.551395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364620, 23.158337, 18.233566>,  <31.767534, 22.672203, 18.172842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364620, 23.158337, 18.233566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.283913, 23.148743, 17.841911>,  <32.235489, 23.142986, 17.606918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.283913, 23.148743, 17.841911>,  <32.364620, 23.158337, 18.233566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283913, 23.148743, 17.841911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185811, 0.980608, -0.062311,
		0.961645, -0.194507, -0.193404,
		-0.201773, -0.023984, -0.979139,
		32.223381, 23.141548, 17.548170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896397, 23.501661, 17.814098>,  <32.364620, 23.158337, 18.233566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896397, 23.501661, 17.814098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556522, 23.539597, 17.606621>,  <32.352596, 23.562357, 17.482134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556522, 23.539597, 17.606621>,  <32.896397, 23.501661, 17.814098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556522, 23.539597, 17.606621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145747, 0.987610, -0.058179,
		0.506748, -0.125031, -0.852980,
		-0.849685, 0.094837, -0.518692,
		32.301617, 23.568048, 17.451014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037563, 24.111673, 17.380667>,  <32.896397, 23.501661, 17.814098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037563, 24.111673, 17.380667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648533, 24.046513, 17.314262>,  <32.415115, 24.007416, 17.274420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648533, 24.046513, 17.314262>,  <33.037563, 24.111673, 17.380667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648533, 24.046513, 17.314262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129464, 0.972129, -0.195457,
		0.193226, -0.168605, -0.966559,
		-0.972576, -0.162902, -0.166012,
		32.356762, 23.997643, 17.264460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923683, 24.399584, 16.691345>,  <33.037563, 24.111673, 17.380667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923683, 24.399584, 16.691345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.594395, 24.377888, 16.917393>,  <32.396820, 24.364870, 17.053020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.594395, 24.377888, 16.917393>,  <32.923683, 24.399584, 16.691345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594395, 24.377888, 16.917393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229937, 0.941980, -0.244546,
		-0.519066, -0.331257, -0.787934,
		-0.823225, -0.054240, 0.565118,
		32.347427, 24.361616, 17.086927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484344, 24.692354, 16.348984>,  <32.923683, 24.399584, 16.691345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484344, 24.692354, 16.348984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301052, 24.703953, 16.704327>,  <32.191074, 24.710913, 16.917532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301052, 24.703953, 16.704327>,  <32.484344, 24.692354, 16.348984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301052, 24.703953, 16.704327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255923, 0.952836, -0.163114,
		-0.851190, -0.302096, -0.429201,
		-0.458234, 0.028999, 0.888358,
		32.163582, 24.712652, 16.970835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758335, 24.876339, 16.226923>,  <32.484344, 24.692354, 16.348984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758335, 24.876339, 16.226923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841883, 24.958939, 16.609280>,  <31.892012, 25.008499, 16.838694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841883, 24.958939, 16.609280>,  <31.758335, 24.876339, 16.226923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841883, 24.958939, 16.609280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269602, 0.951733, -0.146691,
		-0.940047, -0.227071, 0.254462,
		0.208871, 0.206500, 0.955893,
		31.904545, 25.020889, 16.896048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285378, 25.287426, 16.429001>,  <31.758335, 24.876339, 16.226923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285378, 25.287426, 16.429001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.558207, 25.362591, 16.711693>,  <31.721903, 25.407690, 16.881308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.558207, 25.362591, 16.711693>,  <31.285378, 25.287426, 16.429001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558207, 25.362591, 16.711693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267669, 0.963508, 0.002145,
		-0.680538, -0.190634, 0.707479,
		0.682071, 0.187910, 0.706731,
		31.762827, 25.418964, 16.923712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.482195, 41.364670, 18.240877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.801674, 41.124317, 18.253647>,  <26.993362, 40.980106, 18.261309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.801674, 41.124317, 18.253647>,  <26.482195, 41.364670, 18.240877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801674, 41.124317, 18.253647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466710, -0.585120, 0.663187,
		-0.379816, -0.544588, -0.747773,
		0.798700, -0.600882, 0.031927,
		27.041285, 40.944054, 18.263226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.290365, 40.713718, 18.180523>,  <26.482195, 41.364670, 18.240877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.290365, 40.713718, 18.180523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.647116, 40.680592, 18.358376>,  <26.861166, 40.660713, 18.465088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.647116, 40.680592, 18.358376>,  <26.290365, 40.713718, 18.180523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647116, 40.680592, 18.358376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386906, -0.648825, 0.655232,
		0.234221, -0.756417, -0.610716,
		0.891877, -0.082821, 0.444631,
		26.914679, 40.655746, 18.491764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272312, 40.064163, 18.316818>,  <26.290365, 40.713718, 18.180523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272312, 40.064163, 18.316818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.575645, 40.183353, 18.548729>,  <26.757645, 40.254868, 18.687876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.575645, 40.183353, 18.548729>,  <26.272312, 40.064163, 18.316818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575645, 40.183353, 18.548729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417766, -0.460593, 0.783151,
		0.500405, -0.836099, -0.224796,
		0.758331, 0.297980, 0.579777,
		26.803144, 40.272747, 18.722662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624987, 39.477699, 18.697643>,  <26.272312, 40.064163, 18.316818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624987, 39.477699, 18.697643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.709381, 39.799953, 18.919071>,  <26.760017, 39.993305, 19.051928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.709381, 39.799953, 18.919071>,  <26.624987, 39.477699, 18.697643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709381, 39.799953, 18.919071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206112, -0.516918, 0.830851,
		0.955511, -0.289397, 0.056987,
		0.210988, 0.805633, 0.553569,
		26.772678, 40.041645, 19.085142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018864, 39.229763, 19.278173>,  <26.624987, 39.477699, 18.697643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018864, 39.229763, 19.278173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.860390, 39.582554, 19.380268>,  <26.765305, 39.794228, 19.441525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.860390, 39.582554, 19.380268>,  <27.018864, 39.229763, 19.278173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860390, 39.582554, 19.380268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287876, -0.383288, 0.877621,
		0.871874, 0.274225, 0.405754,
		-0.396186, 0.881982, 0.255236,
		26.741533, 39.847149, 19.456839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064034, 39.234596, 19.939835>,  <27.018864, 39.229763, 19.278173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064034, 39.234596, 19.939835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.813301, 39.542835, 19.893784>,  <26.662861, 39.727779, 19.866154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.813301, 39.542835, 19.893784>,  <27.064034, 39.234596, 19.939835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813301, 39.542835, 19.893784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437516, -0.225855, 0.870384,
		0.644717, 0.595957, 0.478724,
		-0.626833, 0.770601, -0.115128,
		26.625252, 39.774017, 19.859245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933559, 39.316719, 20.614527>,  <27.064034, 39.234596, 19.939835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933559, 39.316719, 20.614527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.634396, 39.450302, 20.385056>,  <26.454897, 39.530453, 20.247374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.634396, 39.450302, 20.385056>,  <26.933559, 39.316719, 20.614527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634396, 39.450302, 20.385056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663564, -0.353033, 0.659584,
		0.017742, 0.873981, 0.485636,
		-0.747909, 0.333953, -0.573679,
		26.410023, 39.550488, 20.212952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666033, 39.769703, 21.124203>,  <26.933559, 39.316719, 20.614527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666033, 39.769703, 21.124203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.406660, 39.664200, 20.838554>,  <26.251036, 39.600899, 20.667166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.406660, 39.664200, 20.838554>,  <26.666033, 39.769703, 21.124203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406660, 39.664200, 20.838554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613889, -0.373576, 0.695400,
		-0.450193, 0.889311, 0.080323,
		-0.648434, -0.263754, -0.714120,
		26.212130, 39.585075, 20.624319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007570, 39.955727, 21.382578>,  <26.666033, 39.769703, 21.124203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007570, 39.955727, 21.382578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.952034, 39.685905, 21.092556>,  <25.918713, 39.524014, 20.918543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.952034, 39.685905, 21.092556>,  <26.007570, 39.955727, 21.382578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952034, 39.685905, 21.092556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769104, -0.387777, 0.508043,
		-0.623860, 0.628178, -0.464962,
		-0.138840, -0.674553, -0.725053,
		25.910381, 39.483540, 20.875040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298653, 39.880997, 21.523813>,  <26.007570, 39.955727, 21.382578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298653, 39.880997, 21.523813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.367878, 39.576912, 21.273335>,  <25.409412, 39.394459, 21.123047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.367878, 39.576912, 21.273335>,  <25.298653, 39.880997, 21.523813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367878, 39.576912, 21.273335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809007, -0.472346, 0.349852,
		-0.561745, 0.446053, -0.696764,
		0.173061, -0.760215, -0.626198,
		25.419796, 39.348846, 21.085476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.665508, 39.798122, 21.082912>,  <25.298653, 39.880997, 21.523813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.665508, 39.798122, 21.082912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.874338, 39.457642, 21.061363>,  <24.999636, 39.253353, 21.048433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.874338, 39.457642, 21.061363>,  <24.665508, 39.798122, 21.082912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.874338, 39.457642, 21.061363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810563, -0.514820, 0.279190,
		-0.265381, -0.102089, -0.958723,
		0.522072, -0.851198, -0.053874,
		25.030960, 39.202282, 21.045200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.271654, 39.373196, 20.545895>,  <24.665508, 39.798122, 21.082912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.271654, 39.373196, 20.545895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.471373, 39.173317, 20.829021>,  <24.591204, 39.053391, 20.998898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.471373, 39.173317, 20.829021>,  <24.271654, 39.373196, 20.545895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.471373, 39.173317, 20.829021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823389, -0.527939, 0.208114,
		0.269691, -0.686719, -0.675044,
		0.499298, -0.499697, 0.707817,
		24.621162, 39.023407, 21.041367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.104630, 38.673618, 20.539913>,  <24.271654, 39.373196, 20.545895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.104630, 38.673618, 20.539913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.255136, 38.691540, 20.910084>,  <24.345440, 38.702293, 21.132187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.255136, 38.691540, 20.910084>,  <24.104630, 38.673618, 20.539913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255136, 38.691540, 20.910084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723894, -0.609194, 0.323819,
		0.578274, -0.791754, -0.196785,
		0.376266, 0.044805, 0.925428,
		24.368015, 38.704983, 21.187712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.756916, 38.137901, 20.801632>,  <24.104630, 38.673618, 20.539913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.756916, 38.137901, 20.801632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.937889, 38.288242, 21.125122>,  <24.046473, 38.378448, 21.319216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.937889, 38.288242, 21.125122>,  <23.756916, 38.137901, 20.801632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.937889, 38.288242, 21.125122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705321, -0.404137, 0.582405,
		0.545736, -0.833910, 0.082254,
		0.452432, 0.375855, 0.808726,
		24.073618, 38.400997, 21.367741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.895020, 37.583755, 21.183657>,  <23.756916, 38.137901, 20.801632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.895020, 37.583755, 21.183657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.895945, 37.888348, 21.442928>,  <23.896500, 38.071102, 21.598492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.895945, 37.888348, 21.442928>,  <23.895020, 37.583755, 21.183657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.895945, 37.888348, 21.442928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663146, -0.483989, 0.570957,
		0.748487, -0.431160, 0.503854,
		0.002314, 0.761483, 0.648181,
		23.896639, 38.116791, 21.637383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.909302, 37.293716, 21.855392>,  <23.895020, 37.583755, 21.183657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.909302, 37.293716, 21.855392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.758392, 37.662346, 21.891968>,  <23.667847, 37.883526, 21.913912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.758392, 37.662346, 21.891968>,  <23.909302, 37.293716, 21.855392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.758392, 37.662346, 21.891968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716804, -0.353099, 0.601260,
		0.586394, 0.161296, 0.793805,
		-0.377273, 0.921577, 0.091437,
		23.645210, 37.938820, 21.919399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.784185, 37.331539, 22.523504>,  <23.909302, 37.293716, 21.855392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.784185, 37.331539, 22.523504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.560133, 37.629211, 22.377930>,  <23.425701, 37.807816, 22.290585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.560133, 37.629211, 22.377930>,  <23.784185, 37.331539, 22.523504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.560133, 37.629211, 22.377930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803772, -0.381885, 0.456195,
		0.200509, 0.548051, 0.812057,
		-0.560131, 0.744180, -0.363937,
		23.392094, 37.852467, 22.268749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.410006, 37.459064, 23.055885>,  <23.784185, 37.331539, 22.523504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.410006, 37.459064, 23.055885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.223478, 37.640804, 22.752277>,  <23.111561, 37.749847, 22.570112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.223478, 37.640804, 22.752277>,  <23.410006, 37.459064, 23.055885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.223478, 37.640804, 22.752277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879589, -0.329490, 0.343161,
		-0.094174, 0.827648, 0.553289,
		-0.466320, 0.454350, -0.759020,
		23.083582, 37.777111, 22.524570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.790279, 37.673611, 23.356428>,  <23.410006, 37.459064, 23.055885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.790279, 37.673611, 23.356428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.708223, 37.688564, 22.965221>,  <22.658991, 37.697536, 22.730497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.708223, 37.688564, 22.965221>,  <22.790279, 37.673611, 23.356428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.708223, 37.688564, 22.965221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891828, -0.418788, 0.171053,
		-0.403188, 0.907314, 0.119248,
		-0.205139, 0.037382, -0.978019,
		22.646683, 37.699780, 22.671816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.112602, 38.116390, 23.199770>,  <22.790279, 37.673611, 23.356428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.112602, 38.116390, 23.199770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.199160, 37.882294, 22.887188>,  <22.251093, 37.741837, 22.699638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.199160, 37.882294, 22.887188>,  <22.112602, 38.116390, 23.199770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.199160, 37.882294, 22.887188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938629, -0.344926, -0.001595,
		-0.268610, 0.733839, -0.623962,
		0.216391, -0.585240, -0.781453,
		22.264076, 37.706722, 22.652752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.531975, 38.272110, 22.683336>,  <22.112602, 38.116390, 23.199770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.531975, 38.272110, 22.683336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.699083, 37.917103, 22.605591>,  <21.799349, 37.704098, 22.558943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.699083, 37.917103, 22.605591>,  <21.531975, 38.272110, 22.683336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.699083, 37.917103, 22.605591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822797, -0.460309, 0.333347,
		-0.385319, 0.020659, -0.922552,
		0.417772, -0.887518, -0.194364,
		21.824415, 37.650848, 22.547281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.083752, 38.898724, 22.641348>,  <21.531975, 38.272110, 22.683336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.083752, 38.898724, 22.641348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.733780, 39.061340, 22.536110>,  <20.523796, 39.158913, 22.472967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.733780, 39.061340, 22.536110>,  <21.083752, 38.898724, 22.641348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.733780, 39.061340, 22.536110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321918, 0.082431, -0.943172,
		-0.361755, -0.909905, -0.202995,
		-0.874930, 0.406545, -0.263095,
		20.471300, 39.183304, 22.457182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.121740, 38.585178, 21.953415>,  <21.083752, 38.898724, 22.641348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.121740, 38.585178, 21.953415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.874517, 38.897041, 21.993694>,  <20.726183, 39.084160, 22.017862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.874517, 38.897041, 21.993694>,  <21.121740, 38.585178, 21.953415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.874517, 38.897041, 21.993694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296578, 0.349878, -0.888610,
		-0.728043, -0.519346, -0.447473,
		-0.618057, 0.779657, 0.100700,
		20.689100, 39.130939, 22.023905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.756556, 38.703140, 21.270317>,  <21.121740, 38.585178, 21.953415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.756556, 38.703140, 21.270317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.745340, 39.043346, 21.480396>,  <20.738611, 39.247471, 21.606443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.745340, 39.043346, 21.480396>,  <20.756556, 38.703140, 21.270317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.745340, 39.043346, 21.480396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213239, 0.518398, -0.828126,
		-0.976598, 0.088772, -0.195900,
		-0.028040, 0.850519, 0.525196,
		20.736929, 39.298504, 21.637955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.392811, 39.065048, 20.793364>,  <20.756556, 38.703140, 21.270317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.392811, 39.065048, 20.793364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.604633, 39.293106, 21.044601>,  <20.731728, 39.429939, 21.195345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.604633, 39.293106, 21.044601>,  <20.392811, 39.065048, 20.793364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.604633, 39.293106, 21.044601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360648, 0.518862, -0.775058,
		-0.767789, 0.636960, 0.069146,
		0.529558, 0.570144, 0.628095,
		20.763500, 39.464149, 21.233030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.345261, 39.689877, 20.607618>,  <20.392811, 39.065048, 20.793364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.345261, 39.689877, 20.607618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.678329, 39.727322, 20.825935>,  <20.878172, 39.749790, 20.956926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.678329, 39.727322, 20.825935>,  <20.345261, 39.689877, 20.607618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.678329, 39.727322, 20.825935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379044, 0.622180, -0.684995,
		-0.403708, 0.777257, 0.482589,
		0.832674, 0.093615, 0.545793,
		20.928131, 39.755405, 20.989674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.523710, 40.496914, 20.575047>,  <20.345261, 39.689877, 20.607618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.523710, 40.496914, 20.575047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.859867, 40.292587, 20.647495>,  <21.061562, 40.169991, 20.690964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.859867, 40.292587, 20.647495>,  <20.523710, 40.496914, 20.575047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859867, 40.292587, 20.647495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506944, 0.622679, -0.596053,
		0.191695, 0.592736, 0.782251,
		0.840393, -0.510818, 0.181120,
		21.111984, 40.139343, 20.701832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.966600, 40.993015, 20.546209>,  <20.523710, 40.496914, 20.575047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.966600, 40.993015, 20.546209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.199488, 40.668488, 20.525085>,  <21.339220, 40.473770, 20.512411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.199488, 40.668488, 20.525085>,  <20.966600, 40.993015, 20.546209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.199488, 40.668488, 20.525085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558978, 0.446609, -0.698630,
		0.590393, 0.377237, 0.713532,
		0.582219, -0.811315, -0.052808,
		21.374153, 40.425095, 20.509243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.683043, 41.224548, 20.539289>,  <20.966600, 40.993015, 20.546209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.683043, 41.224548, 20.539289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.711874, 40.864510, 20.367413>,  <21.729174, 40.648487, 20.264286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.711874, 40.864510, 20.367413>,  <21.683043, 41.224548, 20.539289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.711874, 40.864510, 20.367413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684384, 0.358026, -0.635166,
		0.725550, -0.248292, 0.641816,
		0.072080, -0.900094, -0.429693,
		21.733498, 40.594482, 20.238504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.404240, 41.082222, 20.441479>,  <21.683043, 41.224548, 20.539289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.404240, 41.082222, 20.441479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.244890, 40.813858, 20.191303>,  <22.149281, 40.652840, 20.041199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.244890, 40.813858, 20.191303>,  <22.404240, 41.082222, 20.441479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.244890, 40.813858, 20.191303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736277, 0.172730, -0.654263,
		0.546986, -0.721138, 0.425166,
		-0.398375, -0.670913, -0.625439,
		22.125378, 40.612583, 20.003672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.899025, 40.447308, 20.184111>,  <22.404240, 41.082222, 20.441479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.899025, 40.447308, 20.184111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.631552, 40.498001, 19.891045>,  <22.471067, 40.528419, 19.715204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.631552, 40.498001, 19.891045>,  <22.899025, 40.447308, 20.184111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.631552, 40.498001, 19.891045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743490, 0.126080, -0.656754,
		0.009139, -0.983891, -0.178536,
		-0.668684, 0.126738, -0.732666,
		22.430946, 40.536022, 19.671246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.119123, 39.984993, 19.616947>,  <22.899025, 40.447308, 20.184111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.119123, 39.984993, 19.616947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.873707, 40.242931, 19.434631>,  <22.726458, 40.397694, 19.325243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.873707, 40.242931, 19.434631>,  <23.119123, 39.984993, 19.616947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.873707, 40.242931, 19.434631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599734, 0.005036, -0.800184,
		-0.513698, -0.764297, -0.389825,
		-0.613542, 0.644844, -0.455788,
		22.689644, 40.436386, 19.297895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.223593, 39.783020, 18.977201>,  <23.119123, 39.984993, 19.616947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.223593, 39.783020, 18.977201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.034195, 40.126915, 18.900616>,  <22.920555, 40.333252, 18.854664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.034195, 40.126915, 18.900616>,  <23.223593, 39.783020, 18.977201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.034195, 40.126915, 18.900616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387533, 0.008141, -0.921820,
		-0.790961, -0.510677, -0.337030,
		-0.473496, 0.859734, -0.191465,
		22.892147, 40.384834, 18.843176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.914217, 39.643063, 18.324348>,  <23.223593, 39.783020, 18.977201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.914217, 39.643063, 18.324348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.960840, 40.033741, 18.396431>,  <22.988813, 40.268150, 18.439680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.960840, 40.033741, 18.396431>,  <22.914217, 39.643063, 18.324348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.960840, 40.033741, 18.396431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391916, 0.121490, -0.911944,
		-0.912588, 0.176919, -0.368624,
		0.116556, 0.976698, 0.180207,
		22.995808, 40.326752, 18.450493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.856207, 39.866169, 17.743080>,  <22.914217, 39.643063, 18.324348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.856207, 39.866169, 17.743080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.978363, 40.210304, 17.906326>,  <23.051657, 40.416786, 18.004274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.978363, 40.210304, 17.906326>,  <22.856207, 39.866169, 17.743080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.978363, 40.210304, 17.906326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487486, 0.226910, -0.843130,
		-0.817981, 0.456435, -0.350106,
		0.305392, 0.860336, 0.408114,
		23.069981, 40.468407, 18.028761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.735876, 40.497814, 17.294172>,  <22.856207, 39.866169, 17.743080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.735876, 40.497814, 17.294172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.037193, 40.585114, 17.542339>,  <23.217983, 40.637493, 17.691238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.037193, 40.585114, 17.542339>,  <22.735876, 40.497814, 17.294172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.037193, 40.585114, 17.542339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559342, 0.283618, -0.778908,
		-0.345954, 0.933772, 0.091575,
		0.753294, 0.218245, 0.620417,
		23.263182, 40.650589, 17.728464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.001690, 41.074341, 16.990007>,  <22.735876, 40.497814, 17.294172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.001690, 41.074341, 16.990007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.301067, 40.934444, 17.215401>,  <23.480694, 40.850506, 17.350637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.301067, 40.934444, 17.215401>,  <23.001690, 41.074341, 16.990007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.301067, 40.934444, 17.215401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623192, 0.080247, -0.777941,
		0.226858, 0.933404, 0.278014,
		0.748443, -0.349738, 0.563485,
		23.525600, 40.829521, 17.384447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.553425, 41.597980, 16.925745>,  <23.001690, 41.074341, 16.990007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.553425, 41.597980, 16.925745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.776922, 41.296070, 17.063217>,  <23.911020, 41.114922, 17.145700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.776922, 41.296070, 17.063217>,  <23.553425, 41.597980, 16.925745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.776922, 41.296070, 17.063217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692889, 0.197118, -0.693577,
		0.455752, 0.625663, 0.633116,
		0.558744, -0.754778, 0.343678,
		23.944546, 41.069637, 17.166321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.262838, 41.828293, 17.003500>,  <23.553425, 41.597980, 16.925745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.262838, 41.828293, 17.003500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.272739, 41.428516, 16.994560>,  <24.278681, 41.188648, 16.989197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.272739, 41.428516, 16.994560>,  <24.262838, 41.828293, 17.003500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.272739, 41.428516, 16.994560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522480, 0.031994, -0.852051,
		0.852292, 0.009414, 0.522982,
		0.024753, -0.999444, -0.022350,
		24.280165, 41.128685, 16.987856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.022320, 41.646042, 16.942549>,  <24.262838, 41.828293, 17.003500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.022320, 41.646042, 16.942549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.816603, 41.320454, 16.834507>,  <24.693172, 41.125103, 16.769682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.816603, 41.320454, 16.834507>,  <25.022320, 41.646042, 16.942549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.816603, 41.320454, 16.834507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615361, -0.130869, -0.777306,
		0.597354, -0.565976, 0.568189,
		-0.514295, -0.813968, -0.270104,
		24.662313, 41.076263, 16.753475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531549, 41.079124, 16.868715>,  <25.022320, 41.646042, 16.942549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531549, 41.079124, 16.868715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.211624, 40.968613, 16.655560>,  <25.019669, 40.902306, 16.527666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.211624, 40.968613, 16.655560>,  <25.531549, 41.079124, 16.868715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.211624, 40.968613, 16.655560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565012, -0.046817, -0.823753,
		0.202635, -0.959937, 0.193544,
		-0.799813, -0.276276, -0.532890,
		24.971680, 40.885731, 16.495693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758215, 40.438896, 16.512447>,  <25.531549, 41.079124, 16.868715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758215, 40.438896, 16.512447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.459503, 40.609627, 16.308430>,  <25.280275, 40.712063, 16.186020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.459503, 40.609627, 16.308430>,  <25.758215, 40.438896, 16.512447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459503, 40.609627, 16.308430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554905, -0.022866, -0.831599,
		-0.366608, -0.904046, -0.219770,
		-0.746779, 0.426822, -0.510043,
		25.235470, 40.737675, 16.155416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.161894, 29.424919, 17.406324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436750, 29.463749, 17.694328>,  <27.601665, 29.487047, 17.867130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436750, 29.463749, 17.694328>,  <27.161894, 29.424919, 17.406324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436750, 29.463749, 17.694328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424669, 0.857769, 0.289636,
		-0.589484, -0.504786, 0.630635,
		0.687143, 0.097075, 0.720008,
		27.642893, 29.492872, 17.910330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777073, 29.492388, 18.136906>,  <27.161894, 29.424919, 17.406324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777073, 29.492388, 18.136906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144142, 29.651138, 18.129230>,  <27.364384, 29.746389, 18.124626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144142, 29.651138, 18.129230>,  <26.777073, 29.492388, 18.136906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144142, 29.651138, 18.129230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392738, 0.913313, 0.107778,
		0.060300, -0.091369, 0.993990,
		0.917672, 0.396876, -0.019188,
		27.419443, 29.770201, 18.123474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714258, 29.917995, 18.729826>,  <26.777073, 29.492388, 18.136906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714258, 29.917995, 18.729826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032904, 30.047203, 18.525448>,  <27.224091, 30.124727, 18.402821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032904, 30.047203, 18.525448>,  <26.714258, 29.917995, 18.729826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032904, 30.047203, 18.525448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264513, 0.946304, 0.185853,
		0.543544, -0.012901, 0.839281,
		0.796613, 0.323020, -0.510945,
		27.271887, 30.144110, 18.372164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826967, 30.438335, 19.101574>,  <26.714258, 29.917995, 18.729826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826967, 30.438335, 19.101574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031311, 30.511105, 18.765495>,  <27.153917, 30.554766, 18.563848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031311, 30.511105, 18.765495>,  <26.826967, 30.438335, 19.101574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031311, 30.511105, 18.765495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084376, 0.983243, 0.161597,
		0.855514, -0.011661, 0.517648,
		0.510858, 0.181925, -0.840195,
		27.184568, 30.565681, 18.513437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267109, 30.936335, 19.309700>,  <26.826967, 30.438335, 19.101574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267109, 30.936335, 19.309700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250221, 30.980850, 18.912544>,  <27.240088, 31.007559, 18.674250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250221, 30.980850, 18.912544>,  <27.267109, 30.936335, 19.309700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250221, 30.980850, 18.912544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010762, 0.993770, 0.110929,
		0.999050, -0.006002, -0.043156,
		-0.042221, 0.111288, -0.992891,
		27.237555, 31.014236, 18.614677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805431, 31.457087, 19.130215>,  <27.267109, 30.936335, 19.309700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805431, 31.457087, 19.130215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577841, 31.442543, 18.801594>,  <27.441286, 31.433817, 18.604422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577841, 31.442543, 18.801594>,  <27.805431, 31.457087, 19.130215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577841, 31.442543, 18.801594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016558, 0.998313, -0.055648,
		0.822187, -0.045265, -0.567415,
		-0.568976, -0.036358, -0.821550,
		27.407148, 31.431635, 18.555128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183514, 31.670498, 18.709482>,  <27.805431, 31.457087, 19.130215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183514, 31.670498, 18.709482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812906, 31.749340, 18.581287>,  <27.590542, 31.796644, 18.504372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812906, 31.749340, 18.581287>,  <28.183514, 31.670498, 18.709482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812906, 31.749340, 18.581287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192391, 0.980209, 0.046644,
		0.323336, -0.018442, -0.946104,
		-0.926520, 0.197104, -0.320485,
		27.534950, 31.808472, 18.485142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277065, 32.211349, 18.189159>,  <28.183514, 31.670498, 18.709482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277065, 32.211349, 18.189159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890072, 32.236488, 18.287163>,  <27.657877, 32.251572, 18.345964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890072, 32.236488, 18.287163>,  <28.277065, 32.211349, 18.189159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890072, 32.236488, 18.287163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091225, 0.990148, 0.106233,
		-0.235917, 0.125129, -0.963683,
		-0.967482, 0.062850, 0.245008,
		27.599827, 32.255344, 18.360664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008997, 32.831619, 17.777899>,  <28.277065, 32.211349, 18.189159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008997, 32.831619, 17.777899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756432, 32.737831, 18.073559>,  <27.604893, 32.681561, 18.250954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756432, 32.737831, 18.073559>,  <28.008997, 32.831619, 17.777899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756432, 32.737831, 18.073559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124068, 0.971459, 0.202176,
		-0.765457, 0.035952, -0.642482,
		-0.631413, -0.234469, 0.739149,
		27.567007, 32.667492, 18.295303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357000, 33.237213, 17.709339>,  <28.008997, 32.831619, 17.777899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357000, 33.237213, 17.709339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440935, 33.139183, 18.087948>,  <27.491297, 33.080364, 18.315113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440935, 33.139183, 18.087948>,  <27.357000, 33.237213, 17.709339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440935, 33.139183, 18.087948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249208, 0.922697, 0.294152,
		-0.945444, -0.297605, 0.132542,
		0.209837, -0.245073, 0.946524,
		27.503887, 33.065662, 18.371904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102957, 33.815826, 17.982193>,  <27.357000, 33.237213, 17.709339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102957, 33.815826, 17.982193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277042, 33.632072, 18.291916>,  <27.381493, 33.521820, 18.477751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277042, 33.632072, 18.291916>,  <27.102957, 33.815826, 17.982193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277042, 33.632072, 18.291916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078428, 0.837416, 0.540909,
		-0.896905, -0.296138, 0.328425,
		0.435213, -0.459387, 0.774309,
		27.407606, 33.494255, 18.524208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624252, 33.938961, 18.468256>,  <27.102957, 33.815826, 17.982193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624252, 33.938961, 18.468256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976904, 33.873066, 18.645161>,  <27.188496, 33.833530, 18.751303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976904, 33.873066, 18.645161>,  <26.624252, 33.938961, 18.468256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976904, 33.873066, 18.645161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106801, 0.843152, 0.526962,
		-0.459700, -0.511819, 0.725753,
		0.881629, -0.164733, 0.442260,
		27.241392, 33.823647, 18.777838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089354, 33.609383, 18.943077>,  <26.624252, 33.938961, 18.468256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089354, 33.609383, 18.943077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439253, 33.453392, 19.058128>,  <26.649193, 33.359798, 19.127159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439253, 33.453392, 19.058128>,  <26.089354, 33.609383, 18.943077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439253, 33.453392, 19.058128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368855, 0.920811, 0.126699,
		-0.314260, -0.004737, 0.949325,
		0.874750, -0.389979, 0.287627,
		26.701677, 33.336399, 19.144417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216942, 33.840080, 19.664890>,  <26.089354, 33.609383, 18.943077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216942, 33.840080, 19.664890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549927, 33.806091, 19.445881>,  <26.749718, 33.785698, 19.314474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549927, 33.806091, 19.445881>,  <26.216942, 33.840080, 19.664890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549927, 33.806091, 19.445881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297270, 0.902406, 0.311920,
		0.467585, -0.422425, 0.776480,
		0.832463, -0.084975, -0.547525,
		26.799665, 33.780598, 19.281624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942080, 34.014252, 20.351210>,  <26.216942, 33.840080, 19.664890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942080, 34.014252, 20.351210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670372, 33.969051, 20.641266>,  <25.507347, 33.941933, 20.815300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670372, 33.969051, 20.641266>,  <25.942080, 34.014252, 20.351210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.670372, 33.969051, 20.641266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490187, -0.805207, 0.333704,
		0.546180, 0.582128, 0.602340,
		-0.679267, -0.112996, 0.725140,
		25.466591, 33.935154, 20.858809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273914, 34.055126, 21.017464>,  <25.942080, 34.014252, 20.351210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273914, 34.055126, 21.017464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.940437, 33.841335, 21.073013>,  <25.740351, 33.713062, 21.106344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.940437, 33.841335, 21.073013>,  <26.273914, 34.055126, 21.017464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940437, 33.841335, 21.073013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549774, -0.779645, 0.299838,
		-0.051983, 0.326324, 0.943828,
		-0.833694, -0.534478, 0.138876,
		25.690329, 33.680992, 21.114676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428394, 33.594135, 21.671114>,  <26.273914, 34.055126, 21.017464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428394, 33.594135, 21.671114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136787, 33.429600, 21.452267>,  <25.961824, 33.330879, 21.320959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136787, 33.429600, 21.452267>,  <26.428394, 33.594135, 21.671114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136787, 33.429600, 21.452267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356047, -0.910533, 0.210143,
		-0.584609, -0.041602, 0.810248,
		-0.729015, -0.411338, -0.547118,
		25.918083, 33.306198, 21.288132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138510, 33.010933, 22.140116>,  <26.428394, 33.594135, 21.671114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138510, 33.010933, 22.140116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050499, 32.918842, 21.760941>,  <25.997692, 32.863590, 21.533436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050499, 32.918842, 21.760941>,  <26.138510, 33.010933, 22.140116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050499, 32.918842, 21.760941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449636, -0.886302, 0.110888,
		-0.865688, -0.401829, 0.298527,
		-0.220027, -0.230222, -0.947938,
		25.984491, 32.849777, 21.476559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819651, 32.320194, 22.105757>,  <26.138510, 33.010933, 22.140116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819651, 32.320194, 22.105757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971210, 32.367588, 21.738628>,  <26.062147, 32.396023, 21.518351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971210, 32.367588, 21.738628>,  <25.819651, 32.320194, 22.105757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971210, 32.367588, 21.738628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402330, -0.914232, 0.048072,
		-0.833406, -0.387482, -0.394072,
		0.378900, 0.118483, -0.917821,
		26.084881, 32.403133, 21.463282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840452, 31.610739, 21.838589>,  <25.819651, 32.320194, 22.105757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840452, 31.610739, 21.838589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065685, 31.827808, 21.589287>,  <26.200825, 31.958050, 21.439705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065685, 31.827808, 21.589287>,  <25.840452, 31.610739, 21.838589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065685, 31.827808, 21.589287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570782, -0.800776, -0.181566,
		-0.597618, -0.253506, -0.760649,
		0.563082, 0.542672, -0.623254,
		26.234610, 31.990610, 21.402311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.864971, 31.207088, 21.278442>,  <25.840452, 31.610739, 21.838589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.864971, 31.207088, 21.278442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179955, 31.453251, 21.264660>,  <26.368944, 31.600948, 21.256392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179955, 31.453251, 21.264660>,  <25.864971, 31.207088, 21.278442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179955, 31.453251, 21.264660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612129, -0.787361, -0.073220,
		-0.072189, 0.036566, -0.996721,
		0.787456, 0.615407, -0.034455,
		26.416191, 31.637873, 21.254324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321310, 30.920774, 20.942905>,  <25.864971, 31.207088, 21.278442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321310, 30.920774, 20.942905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554600, 31.191879, 21.122009>,  <26.694572, 31.354542, 21.229471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554600, 31.191879, 21.122009>,  <26.321310, 30.920774, 20.942905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554600, 31.191879, 21.122009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776527, -0.626986, -0.062400,
		0.238445, 0.384089, -0.891975,
		0.583223, 0.677764, 0.447757,
		26.729567, 31.395208, 21.256336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863419, 31.037670, 20.506134>,  <26.321310, 30.920774, 20.942905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863419, 31.037670, 20.506134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982418, 31.146381, 20.872223>,  <27.053818, 31.211607, 21.091877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982418, 31.146381, 20.872223>,  <26.863419, 31.037670, 20.506134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982418, 31.146381, 20.872223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770386, -0.634557, -0.061988,
		0.563913, 0.723515, -0.398154,
		0.297501, 0.271777, 0.915222,
		27.071669, 31.227915, 21.146790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616018, 31.152893, 20.428585>,  <26.863419, 31.037670, 20.506134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616018, 31.152893, 20.428585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538668, 31.077244, 20.813675>,  <27.492258, 31.031855, 21.044729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538668, 31.077244, 20.813675>,  <27.616018, 31.152893, 20.428585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538668, 31.077244, 20.813675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684395, -0.729089, -0.005758,
		0.703000, 0.657770, 0.270425,
		-0.193376, -0.189125, 0.962724,
		27.480654, 31.020506, 21.102491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177687, 31.179842, 20.867626>,  <27.616018, 31.152893, 20.428585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177687, 31.179842, 20.867626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941736, 30.978149, 21.119911>,  <27.800165, 30.857134, 21.271282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941736, 30.978149, 21.119911>,  <28.177687, 31.179842, 20.867626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941736, 30.978149, 21.119911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672714, -0.738903, 0.038437,
		0.446653, 0.446961, 0.775066,
		-0.589878, -0.504230, 0.630711,
		27.764772, 30.826881, 21.309124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651827, 30.948614, 21.228807>,  <28.177687, 31.179842, 20.867626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651827, 30.948614, 21.228807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341190, 30.720299, 21.335472>,  <28.154808, 30.583309, 21.399471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341190, 30.720299, 21.335472>,  <28.651827, 30.948614, 21.228807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341190, 30.720299, 21.335472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538408, -0.821089, -0.189552,
		0.327147, -0.003632, 0.944967,
		-0.776590, -0.570789, 0.266661,
		28.108213, 30.549063, 21.415470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881943, 30.438072, 21.664207>,  <28.651827, 30.948614, 21.228807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881943, 30.438072, 21.664207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546316, 30.283882, 21.510651>,  <28.344940, 30.191368, 21.418516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546316, 30.283882, 21.510651>,  <28.881943, 30.438072, 21.664207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546316, 30.283882, 21.510651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433656, -0.899998, -0.044122,
		-0.328494, -0.203498, 0.922323,
		-0.839067, -0.385477, -0.383892,
		28.294596, 30.168240, 21.395483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921112, 29.820024, 21.960775>,  <28.881943, 30.438072, 21.664207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921112, 29.820024, 21.960775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626656, 29.763634, 21.695984>,  <28.449982, 29.729799, 21.537109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626656, 29.763634, 21.695984>,  <28.921112, 29.820024, 21.960775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626656, 29.763634, 21.695984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263853, -0.960460, -0.088873,
		-0.623277, -0.240089, 0.744233,
		-0.736143, -0.140976, -0.661981,
		28.405813, 29.721340, 21.497389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851114, 29.594614, 22.729776>,  <28.921112, 29.820024, 21.960775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851114, 29.594614, 22.729776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203075, 29.611252, 22.919109>,  <29.414251, 29.621235, 23.032709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203075, 29.611252, 22.919109>,  <28.851114, 29.594614, 22.729776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203075, 29.611252, 22.919109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021749, 0.998643, -0.047329,
		-0.474659, 0.031350, 0.879611,
		0.879901, 0.041596, 0.473333,
		29.467045, 29.623730, 23.061110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765348, 30.068689, 23.233047>,  <28.851114, 29.594614, 22.729776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765348, 30.068689, 23.233047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162889, 30.072235, 23.188911>,  <29.401415, 30.074364, 23.162430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162889, 30.072235, 23.188911>,  <28.765348, 30.068689, 23.233047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162889, 30.072235, 23.188911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002982, 0.994281, 0.106749,
		0.110654, -0.106422, 0.988145,
		0.993854, 0.008866, -0.110339,
		29.461046, 30.074894, 23.155809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088133, 30.459526, 23.747118>,  <28.765348, 30.068689, 23.233047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088133, 30.459526, 23.747118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383430, 30.460693, 23.477306>,  <29.560610, 30.461393, 23.315420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383430, 30.460693, 23.477306>,  <29.088133, 30.459526, 23.747118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383430, 30.460693, 23.477306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285624, 0.904564, 0.316516,
		0.611076, -0.426327, 0.666956,
		0.738244, 0.002917, -0.674527,
		29.604904, 30.461569, 23.274948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675144, 30.776077, 24.067226>,  <29.088133, 30.459526, 23.747118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675144, 30.776077, 24.067226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742264, 30.814182, 23.674744>,  <29.782536, 30.837046, 23.439255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742264, 30.814182, 23.674744>,  <29.675144, 30.776077, 24.067226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742264, 30.814182, 23.674744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276236, 0.950903, 0.139561,
		0.946328, -0.294463, 0.133244,
		0.167798, 0.095264, -0.981208,
		29.792604, 30.842762, 23.380381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312836, 31.156076, 24.049614>,  <29.675144, 30.776077, 24.067226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312836, 31.156076, 24.049614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152225, 31.181286, 23.684143>,  <30.055859, 31.196411, 23.464861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152225, 31.181286, 23.684143>,  <30.312836, 31.156076, 24.049614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152225, 31.181286, 23.684143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259460, 0.964586, -0.047487,
		0.878326, -0.256130, -0.403659,
		-0.401527, 0.063025, -0.913676,
		30.031767, 31.200193, 23.410040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833494, 31.520361, 23.624844>,  <30.312836, 31.156076, 24.049614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833494, 31.520361, 23.624844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476444, 31.558056, 23.448509>,  <30.262215, 31.580673, 23.342709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476444, 31.558056, 23.448509>,  <30.833494, 31.520361, 23.624844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476444, 31.558056, 23.448509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186840, 0.967297, -0.171542,
		0.410254, -0.235489, -0.881043,
		-0.892627, 0.094239, -0.440836,
		30.208656, 31.586327, 23.316257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986563, 31.890299, 23.014011>,  <30.833494, 31.520361, 23.624844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986563, 31.890299, 23.014011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593016, 31.908878, 23.083115>,  <30.356888, 31.920025, 23.124577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593016, 31.908878, 23.083115>,  <30.986563, 31.890299, 23.014011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593016, 31.908878, 23.083115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001158, 0.967339, -0.253484,
		-0.178888, -0.249195, -0.951788,
		-0.983869, 0.046448, 0.172757,
		30.297855, 31.922813, 23.134941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682350, 32.316032, 22.528494>,  <30.986563, 31.890299, 23.014011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682350, 32.316032, 22.528494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382236, 32.334877, 22.792267>,  <30.202168, 32.346184, 22.950531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382236, 32.334877, 22.792267>,  <30.682350, 32.316032, 22.528494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382236, 32.334877, 22.792267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022052, 0.995120, -0.096180,
		-0.660747, -0.086704, -0.745584,
		-0.750285, 0.047110, 0.659434,
		30.157150, 32.349010, 22.990097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237928, 32.797531, 22.258642>,  <30.682350, 32.316032, 22.528494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237928, 32.797531, 22.258642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142179, 32.763542, 22.645523>,  <30.084730, 32.743149, 22.877651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142179, 32.763542, 22.645523>,  <30.237928, 32.797531, 22.258642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142179, 32.763542, 22.645523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011749, 0.995837, 0.090396,
		-0.970857, 0.033002, -0.237377,
		-0.239372, -0.084973, 0.967203,
		30.070368, 32.738049, 22.935684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682112, 33.130871, 22.267553>,  <30.237928, 32.797531, 22.258642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682112, 33.130871, 22.267553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849649, 33.142696, 22.630585>,  <29.950172, 33.149792, 22.848404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849649, 33.142696, 22.630585>,  <29.682112, 33.130871, 22.267553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849649, 33.142696, 22.630585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048792, 0.997293, -0.055006,
		-0.906746, 0.067321, 0.416268,
		0.418844, 0.029566, 0.907577,
		29.975304, 33.151566, 22.902857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281481, 33.571281, 22.592752>,  <29.682112, 33.130871, 22.267553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281481, 33.571281, 22.592752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598228, 33.554962, 22.836483>,  <29.788277, 33.545170, 22.982721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598228, 33.554962, 22.836483>,  <29.281481, 33.571281, 22.592752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598228, 33.554962, 22.836483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054542, 0.989053, 0.137110,
		-0.608253, -0.141807, 0.780973,
		0.791867, -0.040802, 0.609329,
		29.835789, 33.542721, 23.019281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031073, 33.778553, 23.267740>,  <29.281481, 33.571281, 22.592752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031073, 33.778553, 23.267740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425135, 33.845932, 23.254486>,  <29.661572, 33.886360, 23.246534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425135, 33.845932, 23.254486>,  <29.031073, 33.778553, 23.267740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425135, 33.845932, 23.254486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137970, 0.891685, 0.431117,
		0.102167, -0.420145, 0.901688,
		0.985153, 0.168452, -0.033134,
		29.720680, 33.896469, 23.244547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.253286, 25.975468, 24.233589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.586353, 26.009937, 24.014778>,  <29.786194, 26.030619, 23.883492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.586353, 26.009937, 24.014778>,  <29.253286, 25.975468, 24.233589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586353, 26.009937, 24.014778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015171, 0.990997, 0.133024,
		0.553564, -0.102466, 0.826479,
		0.832668, 0.086176, -0.547025,
		29.836153, 26.035789, 23.850670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565035, 26.503965, 24.553349>,  <29.253286, 25.975468, 24.233589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565035, 26.503965, 24.553349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.820789, 26.485676, 24.246338>,  <29.974241, 26.474701, 24.062132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.820789, 26.485676, 24.246338>,  <29.565035, 26.503965, 24.553349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820789, 26.485676, 24.246338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065812, 0.991312, -0.113883,
		0.766064, 0.123328, 0.630821,
		0.639386, -0.045726, -0.767525,
		30.012606, 26.471958, 24.016081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994930, 27.108213, 24.582315>,  <29.565035, 26.503965, 24.553349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994930, 27.108213, 24.582315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.041040, 26.995739, 24.201233>,  <30.068707, 26.928255, 23.972584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.041040, 26.995739, 24.201233>,  <29.994930, 27.108213, 24.582315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041040, 26.995739, 24.201233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046796, 0.956496, -0.287967,
		0.992231, 0.077778, 0.097103,
		0.115276, -0.281186, -0.952704,
		30.075623, 26.911383, 23.915422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550713, 27.449516, 24.383385>,  <29.994930, 27.108213, 24.582315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550713, 27.449516, 24.383385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.307203, 27.342510, 24.084633>,  <30.161098, 27.278307, 23.905382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.307203, 27.342510, 24.084633>,  <30.550713, 27.449516, 24.383385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307203, 27.342510, 24.084633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028914, 0.948289, -0.316090,
		0.792818, -0.170831, -0.585027,
		-0.608773, -0.267517, -0.746880,
		30.124571, 27.262255, 23.860569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803598, 27.760981, 23.757885>,  <30.550713, 27.449516, 24.383385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803598, 27.760981, 23.757885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.410868, 27.701336, 23.710930>,  <30.175228, 27.665550, 23.682756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.410868, 27.701336, 23.710930>,  <30.803598, 27.760981, 23.757885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410868, 27.701336, 23.710930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106135, 0.944239, -0.311687,
		0.157319, -0.293564, -0.942906,
		-0.981828, -0.149109, -0.117389,
		30.116320, 27.656603, 23.675713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686537, 28.198530, 23.289694>,  <30.803598, 27.760981, 23.757885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686537, 28.198530, 23.289694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.311363, 28.119801, 23.403915>,  <30.086260, 28.072563, 23.472448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.311363, 28.119801, 23.403915>,  <30.686537, 28.198530, 23.289694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311363, 28.119801, 23.403915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271000, 0.929737, -0.249294,
		-0.216421, -0.311206, -0.925372,
		-0.937934, -0.196824, 0.285552,
		30.029984, 28.060753, 23.489580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333864, 28.230783, 22.716387>,  <30.686537, 28.198530, 23.289694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333864, 28.230783, 22.716387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.111992, 28.326405, 23.035179>,  <29.978868, 28.383778, 23.226456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.111992, 28.326405, 23.035179>,  <30.333864, 28.230783, 22.716387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111992, 28.326405, 23.035179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039152, 0.949280, -0.311985,
		-0.831141, -0.204256, -0.517189,
		-0.554682, 0.239055, 0.796982,
		29.945587, 28.398121, 23.274273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012882, 28.788668, 22.428423>,  <30.333864, 28.230783, 22.716387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012882, 28.788668, 22.428423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.894127, 28.828487, 22.808308>,  <29.822874, 28.852379, 23.036238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.894127, 28.828487, 22.808308>,  <30.012882, 28.788668, 22.428423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894127, 28.828487, 22.808308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100126, 0.985824, -0.134636,
		-0.949649, -0.135062, -0.282710,
		-0.296886, 0.099550, 0.949710,
		29.805061, 28.858353, 23.093220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274500, 29.031870, 22.410973>,  <30.012882, 28.788668, 22.428423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274500, 29.031870, 22.410973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.444948, 29.124035, 22.760906>,  <29.547218, 29.179333, 22.970865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.444948, 29.124035, 22.760906>,  <29.274500, 29.031870, 22.410973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444948, 29.124035, 22.760906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254096, 0.958578, -0.128699,
		-0.868248, -0.167449, 0.467018,
		0.426123, 0.230410, 0.874832,
		29.572784, 29.193157, 23.023355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616547, 29.129658, 22.165657>,  <29.274500, 29.031870, 22.410973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616547, 29.129658, 22.165657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.491055, 29.201939, 21.792793>,  <28.415758, 29.245308, 21.569075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.491055, 29.201939, 21.792793>,  <28.616547, 29.129658, 22.165657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491055, 29.201939, 21.792793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069255, -0.983464, -0.167341,
		-0.946983, 0.012057, 0.321058,
		-0.313732, 0.180704, -0.932158,
		28.396935, 29.256149, 21.513145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027714, 28.725428, 21.996084>,  <28.616547, 29.129658, 22.165657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027714, 28.725428, 21.996084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.203743, 28.809689, 21.646923>,  <28.309361, 28.860245, 21.437426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.203743, 28.809689, 21.646923>,  <28.027714, 28.725428, 21.996084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203743, 28.809689, 21.646923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016397, -0.973818, -0.226738,
		-0.897812, 0.085469, -0.432005,
		0.440074, 0.210652, -0.872904,
		28.335766, 28.872885, 21.385052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633989, 28.356094, 21.553789>,  <28.027714, 28.725428, 21.996084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633989, 28.356094, 21.553789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.975458, 28.441299, 21.363686>,  <28.180340, 28.492422, 21.249624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.975458, 28.441299, 21.363686>,  <27.633989, 28.356094, 21.553789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975458, 28.441299, 21.363686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155816, -0.975196, -0.157207,
		-0.496958, 0.060150, -0.865687,
		0.853671, 0.213013, -0.475259,
		28.231560, 28.505203, 21.221107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610260, 28.029808, 20.891037>,  <27.633989, 28.356094, 21.553789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610260, 28.029808, 20.891037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.000717, 28.094318, 20.949192>,  <28.234991, 28.133024, 20.984085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.000717, 28.094318, 20.949192>,  <27.610260, 28.029808, 20.891037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000717, 28.094318, 20.949192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198027, -0.935873, -0.291421,
		0.089066, 0.313259, -0.945482,
		0.976142, 0.161276, 0.145388,
		28.293560, 28.142700, 20.992809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894333, 27.838808, 20.216690>,  <27.610260, 28.029808, 20.891037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894333, 27.838808, 20.216690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.194033, 27.812332, 20.480278>,  <28.373854, 27.796446, 20.638432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.194033, 27.812332, 20.480278>,  <27.894333, 27.838808, 20.216690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194033, 27.812332, 20.480278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139332, -0.956971, -0.254543,
		0.647464, 0.282533, -0.707789,
		0.749251, -0.066190, 0.658970,
		28.418808, 27.792475, 20.677969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395851, 27.380375, 19.877922>,  <27.894333, 27.838808, 20.216690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395851, 27.380375, 19.877922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.515810, 27.366199, 20.259247>,  <28.587786, 27.357695, 20.488043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.515810, 27.366199, 20.259247>,  <28.395851, 27.380375, 19.877922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515810, 27.366199, 20.259247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279340, -0.952246, -0.123274,
		0.912158, 0.303268, -0.275674,
		0.299895, -0.035439, 0.953314,
		28.605778, 27.355568, 20.545240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041693, 26.987190, 19.875891>,  <28.395851, 27.380375, 19.877922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041693, 26.987190, 19.875891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.918194, 26.961418, 20.255474>,  <28.844095, 26.945955, 20.483225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.918194, 26.961418, 20.255474>,  <29.041693, 26.987190, 19.875891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918194, 26.961418, 20.255474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149505, -0.988588, -0.018477,
		0.939321, 0.136169, 0.314854,
		-0.308745, -0.064428, 0.948960,
		28.825571, 26.942089, 20.540163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462210, 26.531424, 20.223011>,  <29.041693, 26.987190, 19.875891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462210, 26.531424, 20.223011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.130177, 26.541752, 20.445827>,  <28.930956, 26.547949, 20.579517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.130177, 26.541752, 20.445827>,  <29.462210, 26.531424, 20.223011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130177, 26.541752, 20.445827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023045, -0.996486, 0.080529,
		0.557165, 0.079683, 0.826570,
		-0.830082, 0.025820, 0.557043,
		28.881151, 26.549498, 20.612940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552927, 26.096651, 20.743294>,  <29.462210, 26.531424, 20.223011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552927, 26.096651, 20.743294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.154953, 26.135109, 20.755043>,  <28.916168, 26.158184, 20.762093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.154953, 26.135109, 20.755043>,  <29.552927, 26.096651, 20.743294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154953, 26.135109, 20.755043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089569, -0.980443, 0.175238,
		0.045649, 0.171719, 0.984088,
		-0.994934, 0.096143, 0.029375,
		28.856472, 26.163952, 20.763855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313475, 25.691296, 21.368910>,  <29.552927, 26.096651, 20.743294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313475, 25.691296, 21.368910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.019241, 25.711563, 21.098694>,  <28.842701, 25.723724, 20.936565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.019241, 25.711563, 21.098694>,  <29.313475, 25.691296, 21.368910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019241, 25.711563, 21.098694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100391, -0.994342, 0.034731,
		-0.669956, 0.093366, 0.736507,
		-0.735582, 0.050670, -0.675538,
		28.798567, 25.726765, 20.896032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709923, 25.342342, 21.674725>,  <29.313475, 25.691296, 21.368910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709923, 25.342342, 21.674725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.647964, 25.354370, 21.279736>,  <28.610790, 25.361588, 21.042742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.647964, 25.354370, 21.279736>,  <28.709923, 25.342342, 21.674725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647964, 25.354370, 21.279736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039429, -0.998929, -0.024233,
		-0.987144, 0.035181, 0.155914,
		-0.154894, 0.030069, -0.987473,
		28.601496, 25.363390, 20.983494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179367, 24.932785, 21.580992>,  <28.709923, 25.342342, 21.674725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179367, 24.932785, 21.580992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.360802, 24.975292, 21.227051>,  <28.469664, 25.000797, 21.014687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.360802, 24.975292, 21.227051>,  <28.179367, 24.932785, 21.580992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360802, 24.975292, 21.227051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153165, -0.968797, -0.194865,
		-0.877951, 0.223917, -0.423158,
		0.453588, 0.106269, -0.884853,
		28.496878, 25.007174, 20.961596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710775, 24.640013, 21.175724>,  <28.179367, 24.932785, 21.580992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710775, 24.640013, 21.175724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.059084, 24.640926, 20.979050>,  <28.268068, 24.641474, 20.861046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.059084, 24.640926, 20.979050>,  <27.710775, 24.640013, 21.175724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059084, 24.640926, 20.979050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121914, -0.967760, -0.220402,
		-0.476338, 0.251863, -0.842418,
		0.870770, 0.002283, -0.491686,
		28.320314, 24.641611, 20.831543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486052, 24.287041, 20.619844>,  <27.710775, 24.640013, 21.175724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486052, 24.287041, 20.619844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.884336, 24.262840, 20.591866>,  <28.123308, 24.248320, 20.575079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.884336, 24.262840, 20.591866>,  <27.486052, 24.287041, 20.619844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884336, 24.262840, 20.591866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078598, -0.952184, -0.295243,
		-0.048740, 0.299476, -0.952858,
		0.995714, -0.060503, -0.069947,
		28.183050, 24.244690, 20.570881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.808727, 23.972530, 18.391415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.467541, 23.995575, 18.598927>,  <34.262829, 24.009401, 18.723434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.467541, 23.995575, 18.598927>,  <34.808727, 23.972530, 18.391415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467541, 23.995575, 18.598927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080287, 0.967581, -0.239461,
		-0.515759, -0.245903, -0.820685,
		-0.852963, 0.057614, 0.518781,
		34.211651, 24.012859, 18.754560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360214, 24.495623, 18.057899>,  <34.808727, 23.972530, 18.391415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360214, 24.495623, 18.057899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.215843, 24.488827, 18.430874>,  <34.129219, 24.484749, 18.654659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.215843, 24.488827, 18.430874>,  <34.360214, 24.495623, 18.057899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215843, 24.488827, 18.430874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144085, 0.988845, -0.037755,
		-0.921395, -0.147977, -0.359353,
		-0.360931, -0.016990, 0.932438,
		34.107563, 24.483730, 18.710606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859489, 24.931667, 18.044054>,  <34.360214, 24.495623, 18.057899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859489, 24.931667, 18.044054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.923954, 24.901600, 18.437679>,  <33.962631, 24.883560, 18.673855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.923954, 24.901600, 18.437679>,  <33.859489, 24.931667, 18.044054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923954, 24.901600, 18.437679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150340, 0.983589, 0.099754,
		-0.975410, -0.164021, 0.147214,
		0.161160, -0.075169, 0.984062,
		33.972301, 24.879049, 18.732897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322544, 25.435904, 18.308584>,  <33.859489, 24.931667, 18.044054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322544, 25.435904, 18.308584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590286, 25.389198, 18.602066>,  <33.750931, 25.361176, 18.778156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590286, 25.389198, 18.602066>,  <33.322544, 25.435904, 18.308584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590286, 25.389198, 18.602066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041324, 0.980192, 0.193689,
		-0.741789, -0.159967, 0.651275,
		0.669359, -0.116763, 0.733706,
		33.791096, 25.354170, 18.822178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053326, 25.775408, 18.794792>,  <33.322544, 25.435904, 18.308584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053326, 25.775408, 18.794792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.430901, 25.737625, 18.921318>,  <33.657448, 25.714954, 18.997232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.430901, 25.737625, 18.921318>,  <33.053326, 25.775408, 18.794792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430901, 25.737625, 18.921318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018634, 0.971908, 0.234623,
		-0.329589, -0.215576, 0.919184,
		0.943941, -0.094457, 0.316313,
		33.714085, 25.709288, 19.016212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054272, 26.079544, 19.475714>,  <33.053326, 25.775408, 18.794792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054272, 26.079544, 19.475714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.419003, 26.096748, 19.312386>,  <33.637840, 26.107071, 19.214388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.419003, 26.096748, 19.312386>,  <33.054272, 26.079544, 19.475714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419003, 26.096748, 19.312386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116802, 0.926234, 0.358396,
		0.393615, -0.374487, 0.839540,
		0.911825, 0.043010, -0.408321,
		33.692551, 26.109652, 19.189890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393089, 26.353155, 19.960186>,  <33.054272, 26.079544, 19.475714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393089, 26.353155, 19.960186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643272, 26.415443, 19.654362>,  <33.793381, 26.452816, 19.470867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643272, 26.415443, 19.654362>,  <33.393089, 26.353155, 19.960186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643272, 26.415443, 19.654362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046696, 0.970655, 0.235897,
		0.778861, -0.183245, 0.599830,
		0.625456, 0.155721, -0.764563,
		33.830910, 26.462160, 19.424994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043400, 26.735712, 20.132940>,  <33.393089, 26.353155, 19.960186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043400, 26.735712, 20.132940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.971931, 26.791775, 19.743389>,  <33.929050, 26.825413, 19.509659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.971931, 26.791775, 19.743389>,  <34.043400, 26.735712, 20.132940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971931, 26.791775, 19.743389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284004, 0.955018, 0.085340,
		0.942030, -0.261337, -0.210434,
		-0.178666, 0.140157, -0.973876,
		33.918331, 26.833822, 19.451227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550728, 27.192154, 19.953777>,  <34.043400, 26.735712, 20.132940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550728, 27.192154, 19.953777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.284634, 27.208542, 19.655575>,  <34.124977, 27.218374, 19.476652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.284634, 27.208542, 19.655575>,  <34.550728, 27.192154, 19.953777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284634, 27.208542, 19.655575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182622, 0.977094, -0.109259,
		0.723954, -0.208829, -0.657481,
		-0.665237, 0.040972, -0.745508,
		34.085064, 27.220833, 19.431923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943710, 27.562572, 19.416292>,  <34.550728, 27.192154, 19.953777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943710, 27.562572, 19.416292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557034, 27.587345, 19.316959>,  <34.325027, 27.602209, 19.257359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557034, 27.587345, 19.316959>,  <34.943710, 27.562572, 19.416292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557034, 27.587345, 19.316959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088626, 0.991252, -0.097795,
		0.240104, -0.116547, -0.963725,
		-0.966693, 0.061930, -0.248333,
		34.267025, 27.605925, 19.242460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883286, 28.156822, 18.917652>,  <34.943710, 27.562572, 19.416292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883286, 28.156822, 18.917652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.510586, 28.109451, 19.054947>,  <34.286964, 28.081030, 19.137323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.510586, 28.109451, 19.054947>,  <34.883286, 28.156822, 18.917652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510586, 28.109451, 19.054947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130331, 0.991401, -0.011740,
		-0.338894, -0.055674, -0.939176,
		-0.931754, -0.118425, 0.343236,
		34.231060, 28.073923, 19.157917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395679, 28.480419, 18.517855>,  <34.883286, 28.156822, 18.917652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395679, 28.480419, 18.517855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.183716, 28.435143, 18.854042>,  <34.056538, 28.407976, 19.055754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.183716, 28.435143, 18.854042>,  <34.395679, 28.480419, 18.517855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183716, 28.435143, 18.854042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335509, 0.938178, -0.085187,
		-0.778866, -0.327126, -0.535124,
		-0.529908, -0.113189, 0.840468,
		34.024742, 28.401186, 19.106182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893414, 28.780636, 18.373972>,  <34.395679, 28.480419, 18.517855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893414, 28.780636, 18.373972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.904564, 28.792294, 18.773647>,  <33.911255, 28.799288, 19.013453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.904564, 28.792294, 18.773647>,  <33.893414, 28.780636, 18.373972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904564, 28.792294, 18.773647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021238, 0.999332, -0.029740,
		-0.999386, 0.022050, 0.027236,
		0.027874, 0.029143, 0.999187,
		33.912926, 28.801037, 19.073402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238979, 29.087286, 18.506962>,  <33.893414, 28.780636, 18.373972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238979, 29.087286, 18.506962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.462982, 29.132435, 18.835266>,  <33.597385, 29.159525, 19.032249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.462982, 29.132435, 18.835266>,  <33.238979, 29.087286, 18.506962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462982, 29.132435, 18.835266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262231, 0.963891, 0.046366,
		-0.785891, -0.241194, 0.569386,
		0.560009, 0.112872, 0.820762,
		33.630985, 29.166296, 19.081495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485329, 29.052519, 18.657217>,  <33.238979, 29.087286, 18.506962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485329, 29.052519, 18.657217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.234615, 29.137146, 18.357250>,  <32.084187, 29.187922, 18.177269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.234615, 29.137146, 18.357250>,  <32.485329, 29.052519, 18.657217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234615, 29.137146, 18.357250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028673, -0.968043, -0.249138,
		-0.778662, -0.134655, 0.612824,
		-0.626788, 0.211566, -0.749918,
		32.046577, 29.200615, 18.132275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990965, 28.481960, 18.620312>,  <32.485329, 29.052519, 18.657217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990965, 28.481960, 18.620312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.961180, 28.638920, 18.253601>,  <31.943308, 28.733095, 18.033575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.961180, 28.638920, 18.253601>,  <31.990965, 28.481960, 18.620312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961180, 28.638920, 18.253601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134285, -0.914900, -0.380690,
		-0.988141, 0.094761, 0.120820,
		-0.074464, 0.392399, -0.916776,
		31.938841, 28.756639, 17.978569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442692, 28.108416, 18.406994>,  <31.990965, 28.481960, 18.620312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442692, 28.108416, 18.406994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.632627, 28.262928, 18.090687>,  <31.746590, 28.355635, 17.900902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.632627, 28.262928, 18.090687>,  <31.442692, 28.108416, 18.406994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632627, 28.262928, 18.090687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087050, -0.873506, -0.478967,
		-0.875757, 0.296269, -0.381149,
		0.474839, 0.386280, -0.790769,
		31.775080, 28.378813, 17.853456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076977, 27.914835, 17.738039>,  <31.442692, 28.108416, 18.406994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076977, 27.914835, 17.738039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.449717, 28.014980, 17.632984>,  <31.673361, 28.075068, 17.569950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.449717, 28.014980, 17.632984>,  <31.076977, 27.914835, 17.738039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449717, 28.014980, 17.632984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136864, -0.912877, -0.384608,
		-0.336048, 0.322450, -0.884928,
		0.931848, 0.250362, -0.262638,
		31.729271, 28.090090, 17.554193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063612, 27.798086, 17.023489>,  <31.076977, 27.914835, 17.738039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063612, 27.798086, 17.023489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.452465, 27.790329, 17.116943>,  <31.685776, 27.785675, 17.173016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.452465, 27.790329, 17.116943>,  <31.063612, 27.798086, 17.023489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452465, 27.790329, 17.116943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072118, -0.923508, -0.376739,
		0.223070, 0.383089, -0.896372,
		0.972131, -0.019395, 0.233635,
		31.744104, 27.784510, 17.187035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435787, 27.591438, 16.418768>,  <31.063612, 27.798086, 17.023489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435787, 27.591438, 16.418768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.655275, 27.517742, 16.744949>,  <31.786968, 27.473524, 16.940659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.655275, 27.517742, 16.744949>,  <31.435787, 27.591438, 16.418768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655275, 27.517742, 16.744949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313693, -0.858768, -0.405110,
		0.774922, 0.478093, -0.413428,
		0.548719, -0.184239, 0.815453,
		31.819891, 27.462471, 16.989586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871372, 27.074265, 16.174412>,  <31.435787, 27.591438, 16.418768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871372, 27.074265, 16.174412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.948591, 27.068707, 16.566849>,  <31.994923, 27.065371, 16.802311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.948591, 27.068707, 16.566849>,  <31.871372, 27.074265, 16.174412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948591, 27.068707, 16.566849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070619, -0.997110, -0.028020,
		0.978645, 0.074693, -0.191509,
		0.193048, -0.013897, 0.981091,
		32.006504, 27.064537, 16.861176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426815, 26.662193, 16.300678>,  <31.871372, 27.074265, 16.174412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426815, 26.662193, 16.300678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.234608, 26.659145, 16.651459>,  <32.119282, 26.657316, 16.861927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.234608, 26.659145, 16.651459>,  <32.426815, 26.662193, 16.300678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234608, 26.659145, 16.651459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278687, -0.949456, 0.144454,
		0.831525, 0.313808, 0.458357,
		-0.480520, -0.007621, 0.876951,
		32.090450, 26.656858, 16.914543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870205, 26.291801, 16.744902>,  <32.426815, 26.662193, 16.300678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870205, 26.291801, 16.744902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.508999, 26.281612, 16.916447>,  <32.292274, 26.275499, 17.019373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.508999, 26.281612, 16.916447>,  <32.870205, 26.291801, 16.744902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508999, 26.281612, 16.916447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152556, -0.952196, 0.264668,
		0.401619, 0.304423, 0.863729,
		-0.903011, -0.025471, 0.428862,
		32.238094, 26.273972, 17.045105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993053, 25.951847, 17.246218>,  <32.870205, 26.291801, 16.744902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993053, 25.951847, 17.246218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.596050, 25.904606, 17.233738>,  <32.357849, 25.876261, 17.226250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.596050, 25.904606, 17.233738>,  <32.993053, 25.951847, 17.246218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596050, 25.904606, 17.233738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110688, -0.977561, 0.179230,
		-0.051666, 0.174434, 0.983312,
		-0.992511, -0.118101, -0.031199,
		32.298298, 25.869175, 17.224379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757748, 25.494829, 17.776325>,  <32.993053, 25.951847, 17.246218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757748, 25.494829, 17.776325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438744, 25.493584, 17.535004>,  <32.247341, 25.492836, 17.390211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438744, 25.493584, 17.535004>,  <32.757748, 25.494829, 17.776325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438744, 25.493584, 17.535004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091150, -0.987886, 0.125587,
		-0.596385, 0.155148, 0.787562,
		-0.797506, -0.003112, -0.603302,
		32.199493, 25.492651, 17.354013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296700, 25.137127, 18.136280>,  <32.757748, 25.494829, 17.776325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296700, 25.137127, 18.136280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.187935, 25.126904, 17.751488>,  <32.122677, 25.120770, 17.520613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.187935, 25.126904, 17.751488>,  <32.296700, 25.137127, 18.136280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187935, 25.126904, 17.751488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253732, -0.962369, 0.097288,
		-0.928269, 0.270540, 0.255196,
		-0.271913, -0.025558, -0.961982,
		32.106361, 25.119236, 17.462893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749041, 24.716702, 18.219765>,  <32.296700, 25.137127, 18.136280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749041, 24.716702, 18.219765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.839285, 24.725872, 17.830185>,  <31.893431, 24.731375, 17.596437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.839285, 24.725872, 17.830185>,  <31.749041, 24.716702, 18.219765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839285, 24.725872, 17.830185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091270, -0.994829, -0.044561,
		-0.969933, 0.098946, -0.222350,
		0.225609, 0.022928, -0.973948,
		31.906967, 24.732750, 17.538000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211779, 24.403770, 17.779076>,  <31.749041, 24.716702, 18.219765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211779, 24.403770, 17.779076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.570784, 24.367973, 17.606350>,  <31.786186, 24.346495, 17.502714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.570784, 24.367973, 17.606350>,  <31.211779, 24.403770, 17.779076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570784, 24.367973, 17.606350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081020, -0.995987, 0.038016,
		-0.433483, 0.000866, -0.901161,
		0.897512, -0.089492, -0.431814,
		31.840036, 24.341125, 17.476807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840218, 24.535086, 17.153517>,  <31.211779, 24.403770, 17.779076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840218, 24.535086, 17.153517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.448410, 24.532742, 17.234024>,  <30.213326, 24.531336, 17.282328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.448410, 24.532742, 17.234024>,  <30.840218, 24.535086, 17.153517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448410, 24.532742, 17.234024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014570, 0.999019, -0.041818,
		-0.200825, -0.043894, -0.978643,
		-0.979519, -0.005861, 0.201268,
		30.154554, 24.530983, 17.294405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596537, 25.017815, 16.785984>,  <30.840218, 24.535086, 17.153517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596537, 25.017815, 16.785984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.300142, 24.982056, 17.052200>,  <30.122305, 24.960600, 17.211929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.300142, 24.982056, 17.052200>,  <30.596537, 25.017815, 16.785984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300142, 24.982056, 17.052200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121414, 0.992600, -0.001849,
		-0.660451, -0.082177, -0.746359,
		-0.740988, -0.089397, 0.665541,
		30.077847, 24.955236, 17.251863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067125, 25.404671, 16.560694>,  <30.596537, 25.017815, 16.785984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067125, 25.404671, 16.560694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.998205, 25.409206, 16.954685>,  <29.956854, 25.411928, 17.191080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.998205, 25.409206, 16.954685>,  <30.067125, 25.404671, 16.560694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998205, 25.409206, 16.954685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353091, 0.932775, -0.072506,
		-0.919587, -0.360280, -0.156711,
		-0.172299, 0.011342, 0.984980,
		29.946516, 25.412609, 17.250179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441763, 25.805368, 16.563717>,  <30.067125, 25.404671, 16.560694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441763, 25.805368, 16.563717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.554066, 25.781597, 16.946892>,  <29.621447, 25.767334, 17.176796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.554066, 25.781597, 16.946892>,  <29.441763, 25.805368, 16.563717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554066, 25.781597, 16.946892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338833, 0.927679, 0.156855,
		-0.897980, -0.368619, 0.240316,
		0.280756, -0.059426, 0.957938,
		29.638292, 25.763769, 17.234274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849977, 26.068233, 17.001493>,  <29.441763, 25.805368, 16.563717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849977, 26.068233, 17.001493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.198191, 26.098690, 17.195965>,  <29.407120, 26.116964, 17.312649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.198191, 26.098690, 17.195965>,  <28.849977, 26.068233, 17.001493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198191, 26.098690, 17.195965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323286, 0.833346, 0.448353,
		-0.371019, -0.547482, 0.750072,
		0.870535, 0.076141, 0.486181,
		29.459351, 26.121532, 17.341820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688881, 26.098045, 17.752155>,  <28.849977, 26.068233, 17.001493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688881, 26.098045, 17.752155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.046579, 26.267448, 17.694237>,  <29.261198, 26.369089, 17.659485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.046579, 26.267448, 17.694237>,  <28.688881, 26.098045, 17.752155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046579, 26.267448, 17.694237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342649, 0.855925, 0.387277,
		0.287949, -0.296707, 0.910522,
		0.894247, 0.423506, -0.144796,
		29.314854, 26.394501, 17.650797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712439, 26.522364, 18.284704>,  <28.688881, 26.098045, 17.752155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712439, 26.522364, 18.284704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.004038, 26.646061, 18.040432>,  <29.178997, 26.720280, 17.893867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.004038, 26.646061, 18.040432>,  <28.712439, 26.522364, 18.284704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004038, 26.646061, 18.040432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150009, 0.942623, 0.298259,
		0.667877, -0.125822, 0.733559,
		0.728998, 0.309241, -0.610682,
		29.222736, 26.738832, 17.857227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018394, 26.971403, 18.716825>,  <28.712439, 26.522364, 18.284704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018394, 26.971403, 18.716825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.132048, 27.037975, 18.339134>,  <29.200239, 27.077919, 18.112518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.132048, 27.037975, 18.339134>,  <29.018394, 26.971403, 18.716825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132048, 27.037975, 18.339134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242561, 0.965260, 0.097149,
		0.927595, 0.201430, 0.314631,
		0.284132, 0.166432, -0.944230,
		29.217287, 27.087906, 18.055866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330036, 27.553827, 18.643412>,  <29.018394, 26.971403, 18.716825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330036, 27.553827, 18.643412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.230602, 27.496120, 18.260288>,  <29.170942, 27.461496, 18.030415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.230602, 27.496120, 18.260288>,  <29.330036, 27.553827, 18.643412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230602, 27.496120, 18.260288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272854, 0.959231, -0.073669,
		0.929385, 0.243028, -0.277813,
		-0.248583, -0.144269, -0.957806,
		29.156027, 27.452839, 17.972946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552271, 28.150013, 18.382988>,  <29.330036, 27.553827, 18.643412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552271, 28.150013, 18.382988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.279079, 28.002125, 18.131004>,  <29.115164, 27.913393, 17.979815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.279079, 28.002125, 18.131004>,  <29.552271, 28.150013, 18.382988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279079, 28.002125, 18.131004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435375, 0.898547, -0.055332,
		0.586504, 0.236477, -0.774656,
		-0.682980, -0.369719, -0.629957,
		29.074186, 27.891209, 17.942017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522966, 28.566683, 17.756121>,  <29.552271, 28.150013, 18.382988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522966, 28.566683, 17.756121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.157681, 28.405972, 17.783295>,  <28.938509, 28.309544, 17.799599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.157681, 28.405972, 17.783295>,  <29.522966, 28.566683, 17.756121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157681, 28.405972, 17.783295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400163, 0.915716, 0.036522,
		-0.076885, 0.006167, -0.997021,
		-0.913213, -0.401779, 0.067937,
		28.883717, 28.285439, 17.803677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123484, 29.050835, 17.377373>,  <29.522966, 28.566683, 17.756121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123484, 29.050835, 17.377373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.839884, 28.823479, 17.544350>,  <28.669724, 28.687065, 17.644535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.839884, 28.823479, 17.544350>,  <29.123484, 29.050835, 17.377373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839884, 28.823479, 17.544350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526365, 0.820457, 0.223138,
		-0.469321, -0.061522, -0.880882,
		-0.708998, -0.568389, 0.417440,
		28.627184, 28.652962, 17.669582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529549, 29.114624, 17.001301>,  <29.123484, 29.050835, 17.377373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529549, 29.114624, 17.001301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.430649, 29.023529, 17.378025>,  <28.371309, 28.968872, 17.604059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.430649, 29.023529, 17.378025>,  <28.529549, 29.114624, 17.001301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430649, 29.023529, 17.378025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663120, 0.748481, 0.006903,
		-0.706498, -0.622826, -0.336079,
		-0.247249, -0.227738, 0.941809,
		28.356474, 28.955208, 17.660568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783587, 29.169231, 17.052134>,  <28.529549, 29.114624, 17.001301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783587, 29.169231, 17.052134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.906385, 29.198349, 17.431702>,  <27.980064, 29.215820, 17.659443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.906385, 29.198349, 17.431702>,  <27.783587, 29.169231, 17.052134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906385, 29.198349, 17.431702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614202, 0.776790, 0.139119,
		-0.726986, -0.625539, 0.283184,
		0.306999, 0.072794, 0.948922,
		27.998486, 29.220188, 17.716379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.694077, 42.397125, 23.810455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.036514, 42.220333, 23.703312>,  <43.241978, 42.114258, 23.639027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.036514, 42.220333, 23.703312>,  <42.694077, 42.397125, 23.810455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036514, 42.220333, 23.703312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514831, -0.774700, -0.367137,
		-0.045239, 0.452206, -0.890766,
		0.856097, -0.441985, -0.267856,
		43.293343, 42.087738, 23.622955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527798, 42.211674, 23.164164>,  <42.694077, 42.397125, 23.810455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527798, 42.211674, 23.164164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.821274, 41.971432, 23.291267>,  <42.997360, 41.827286, 23.367531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.821274, 41.971432, 23.291267>,  <42.527798, 42.211674, 23.164164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821274, 41.971432, 23.291267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396579, -0.758238, -0.517493,
		0.551749, 0.253661, -0.794499,
		0.733688, -0.600608, 0.317761,
		43.041382, 41.791248, 23.386595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690163, 41.886177, 22.536160>,  <42.527798, 42.211674, 23.164164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690163, 41.886177, 22.536160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.824474, 41.665565, 22.841595>,  <42.905060, 41.533199, 23.024857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.824474, 41.665565, 22.841595>,  <42.690163, 41.886177, 22.536160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824474, 41.665565, 22.841595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250983, -0.833732, -0.491832,
		0.907888, -0.026502, -0.418373,
		0.335777, -0.551533, 0.763587,
		42.925209, 41.500107, 23.070671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953308, 41.251133, 22.307259>,  <42.690163, 41.886177, 22.536160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953308, 41.251133, 22.307259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.900448, 41.145340, 22.689377>,  <42.868732, 41.081863, 22.918648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.900448, 41.145340, 22.689377>,  <42.953308, 41.251133, 22.307259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900448, 41.145340, 22.689377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248191, -0.924217, -0.290213,
		0.959655, -0.275446, 0.056490,
		-0.132147, -0.264484, 0.955293,
		42.860806, 41.065994, 22.975965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280548, 40.661045, 22.344555>,  <42.953308, 41.251133, 22.307259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280548, 40.661045, 22.344555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.037006, 40.652409, 22.661751>,  <42.890881, 40.647228, 22.852068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.037006, 40.652409, 22.661751>,  <43.280548, 40.661045, 22.344555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037006, 40.652409, 22.661751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234659, -0.949992, -0.206036,
		0.757784, -0.311528, 0.573335,
		-0.608850, -0.021593, 0.792992,
		42.854351, 40.645931, 22.899649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362473, 39.991951, 22.581551>,  <43.280548, 40.661045, 22.344555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362473, 39.991951, 22.581551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.024914, 40.136627, 22.740051>,  <42.822376, 40.223431, 22.835152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.024914, 40.136627, 22.740051>,  <43.362473, 39.991951, 22.581551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024914, 40.136627, 22.740051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431181, -0.896731, -0.099783,
		0.319241, -0.255063, 0.912704,
		-0.843900, 0.361686, 0.396251,
		42.771744, 40.245132, 22.858927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154205, 39.508476, 23.105053>,  <43.362473, 39.991951, 22.581551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154205, 39.508476, 23.105053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.832249, 39.717258, 22.992111>,  <42.639076, 39.842525, 22.924347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.832249, 39.717258, 22.992111>,  <43.154205, 39.508476, 23.105053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832249, 39.717258, 22.992111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556490, -0.829119, 0.053664,
		-0.206094, 0.200320, 0.957809,
		-0.804888, 0.521951, -0.282352,
		42.590782, 39.873844, 22.907406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578884, 39.214561, 23.418432>,  <43.154205, 39.508476, 23.105053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578884, 39.214561, 23.418432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.390114, 39.418556, 23.130764>,  <42.276852, 39.540951, 22.958164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.390114, 39.418556, 23.130764>,  <42.578884, 39.214561, 23.418432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390114, 39.418556, 23.130764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606947, -0.779573, -0.154537,
		-0.639457, 0.363568, 0.677432,
		-0.471923, 0.509984, -0.719170,
		42.248535, 39.571552, 22.915012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854374, 39.118809, 23.540779>,  <42.578884, 39.214561, 23.418432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854374, 39.118809, 23.540779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.887192, 39.210396, 23.152790>,  <41.906883, 39.265347, 22.919996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.887192, 39.210396, 23.152790>,  <41.854374, 39.118809, 23.540779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887192, 39.210396, 23.152790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673429, -0.704717, -0.223310,
		-0.734685, 0.671528, 0.096373,
		0.082043, 0.228963, -0.969972,
		41.911804, 39.279083, 22.861799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179230, 39.152618, 23.272070>,  <41.854374, 39.118809, 23.540779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179230, 39.152618, 23.272070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.408363, 39.095669, 22.949184>,  <41.545845, 39.061501, 22.755453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.408363, 39.095669, 22.949184>,  <41.179230, 39.152618, 23.272070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408363, 39.095669, 22.949184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445330, -0.880833, -0.160669,
		-0.688144, 0.451513, -0.567974,
		0.572834, -0.142373, -0.807212,
		41.580215, 39.052956, 22.707022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716492, 38.921116, 22.681604>,  <41.179230, 39.152618, 23.272070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716492, 38.921116, 22.681604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.079609, 38.786469, 22.581520>,  <41.297478, 38.705681, 22.521469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.079609, 38.786469, 22.581520>,  <40.716492, 38.921116, 22.681604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079609, 38.786469, 22.581520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397711, -0.880306, -0.258627,
		-0.133205, 0.334291, -0.933009,
		0.907790, -0.336618, -0.250212,
		41.351944, 38.685482, 22.506456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617294, 38.512432, 22.057919>,  <40.716492, 38.921116, 22.681604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617294, 38.512432, 22.057919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.978729, 38.390434, 22.178261>,  <41.195591, 38.317234, 22.250465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.978729, 38.390434, 22.178261>,  <40.617294, 38.512432, 22.057919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978729, 38.390434, 22.178261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234630, -0.939883, -0.248130,
		0.358445, 0.153617, -0.920825,
		0.903585, -0.304994, 0.300854,
		41.249805, 38.298935, 22.268517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635078, 37.917133, 21.570084>,  <40.617294, 38.512432, 22.057919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635078, 37.917133, 21.570084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.947720, 37.894573, 21.818573>,  <41.135303, 37.881035, 21.967667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.947720, 37.894573, 21.818573>,  <40.635078, 37.917133, 21.570084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947720, 37.894573, 21.818573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002236, -0.995644, -0.093213,
		0.623773, 0.074244, -0.778071,
		0.781602, -0.056404, 0.621222,
		41.182201, 37.877651, 22.004940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076790, 37.326378, 21.275557>,  <40.635078, 37.917133, 21.570084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076790, 37.326378, 21.275557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.173378, 37.384048, 21.659412>,  <41.231331, 37.418652, 21.889725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.173378, 37.384048, 21.659412>,  <41.076790, 37.326378, 21.275557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173378, 37.384048, 21.659412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154809, -0.981960, 0.108575,
		0.957980, 0.122343, -0.259436,
		0.241473, 0.144176, 0.959638,
		41.245819, 37.427299, 21.947304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589188, 36.844749, 21.500057>,  <41.076790, 37.326378, 21.275557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589188, 36.844749, 21.500057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.414703, 36.950230, 21.844193>,  <41.310013, 37.013519, 22.050674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.414703, 36.950230, 21.844193>,  <41.589188, 36.844749, 21.500057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414703, 36.950230, 21.844193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126896, -0.928515, 0.348936,
		0.890854, 0.261382, 0.371563,
		-0.436207, 0.263701, 0.860340,
		41.283840, 37.029339, 22.102295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931057, 36.430481, 21.939196>,  <41.589188, 36.844749, 21.500057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931057, 36.430481, 21.939196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.617908, 36.561947, 22.150513>,  <41.430019, 36.640827, 22.277304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.617908, 36.561947, 22.150513>,  <41.931057, 36.430481, 21.939196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617908, 36.561947, 22.150513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046067, -0.877379, 0.477581,
		0.620480, 0.349546, 0.702013,
		-0.782868, 0.328669, 0.528293,
		41.383049, 36.660549, 22.309000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081806, 35.993572, 22.541321>,  <41.931057, 36.430481, 21.939196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081806, 35.993572, 22.541321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.708237, 36.135464, 22.559021>,  <41.484097, 36.220596, 22.569641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.708237, 36.135464, 22.559021>,  <42.081806, 35.993572, 22.541321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708237, 36.135464, 22.559021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329313, -0.901891, 0.279546,
		0.139070, 0.246503, 0.959112,
		-0.933923, 0.354724, 0.044250,
		41.428059, 36.241882, 22.572296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687130, 35.837070, 23.190569>,  <42.081806, 35.993572, 22.541321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687130, 35.837070, 23.190569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.406185, 35.864162, 22.907131>,  <41.237617, 35.880417, 22.737068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.406185, 35.864162, 22.907131>,  <41.687130, 35.837070, 23.190569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406185, 35.864162, 22.907131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266840, -0.947923, 0.173891,
		-0.659915, 0.311215, 0.683854,
		-0.702359, 0.067726, -0.708593,
		41.195477, 35.884480, 22.694553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154140, 35.546974, 23.474363>,  <41.687130, 35.837070, 23.190569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154140, 35.546974, 23.474363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.060036, 35.535042, 23.085773>,  <41.003574, 35.527882, 22.852619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.060036, 35.535042, 23.085773>,  <41.154140, 35.546974, 23.474363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060036, 35.535042, 23.085773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351302, -0.929344, 0.113609,
		-0.906222, 0.368008, 0.208161,
		-0.235262, -0.029827, -0.971474,
		40.989456, 35.526093, 22.794331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708599, 35.152439, 23.519373>,  <41.154140, 35.546974, 23.474363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708599, 35.152439, 23.519373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.804802, 35.148491, 23.131134>,  <40.862522, 35.146122, 22.898191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.804802, 35.148491, 23.131134>,  <40.708599, 35.152439, 23.519373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804802, 35.148491, 23.131134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213245, -0.976056, -0.042918,
		-0.946933, 0.217297, -0.236852,
		0.240507, -0.009868, -0.970597,
		40.876953, 35.145531, 22.839954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176472, 34.662762, 23.230993>,  <40.708599, 35.152439, 23.519373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176472, 34.662762, 23.230993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.486706, 34.692421, 22.980244>,  <40.672848, 34.710217, 22.829794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.486706, 34.692421, 22.980244>,  <40.176472, 34.662762, 23.230993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486706, 34.692421, 22.980244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007737, -0.991886, -0.126898,
		-0.631194, 0.103271, -0.768719,
		0.775586, 0.074150, -0.626872,
		40.719383, 34.714664, 22.792183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604362, 34.786179, 22.786095>,  <40.176472, 34.662762, 23.230993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604362, 34.786179, 22.786095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.219494, 34.830994, 22.686752>,  <38.988575, 34.857883, 22.627148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.219494, 34.830994, 22.686752>,  <39.604362, 34.786179, 22.786095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219494, 34.830994, 22.686752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057658, 0.974623, 0.216298,
		0.266285, 0.193795, -0.944212,
		-0.962168, 0.112038, -0.248353,
		38.930843, 34.864605, 22.612246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538700, 35.398449, 22.445158>,  <39.604362, 34.786179, 22.786095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538700, 35.398449, 22.445158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.158028, 35.343739, 22.555141>,  <38.929626, 35.310913, 22.621132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.158028, 35.343739, 22.555141>,  <39.538700, 35.398449, 22.445158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158028, 35.343739, 22.555141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102252, 0.985382, 0.136262,
		-0.289577, 0.101562, -0.951751,
		-0.951677, -0.136777, 0.274959,
		38.872524, 35.302704, 22.637629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232838, 35.926517, 22.207073>,  <39.538700, 35.398449, 22.445158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232838, 35.926517, 22.207073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.961044, 35.805126, 22.474266>,  <38.797966, 35.732292, 22.634581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.961044, 35.805126, 22.474266>,  <39.232838, 35.926517, 22.207073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961044, 35.805126, 22.474266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093133, 0.938756, 0.331759,
		-0.727752, 0.163215, -0.666137,
		-0.679488, -0.303478, 0.667980,
		38.757198, 35.714085, 22.674660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504433, 36.283184, 22.050879>,  <39.232838, 35.926517, 22.207073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504433, 36.283184, 22.050879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.531536, 36.174061, 22.434750>,  <38.547798, 36.108585, 22.665073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.531536, 36.174061, 22.434750>,  <38.504433, 36.283184, 22.050879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531536, 36.174061, 22.434750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108304, 0.954195, 0.278895,
		-0.991806, -0.122834, 0.035106,
		0.067756, -0.272808, 0.959680,
		38.551865, 36.092220, 22.722654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939838, 36.676414, 22.268715>,  <38.504433, 36.283184, 22.050879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939838, 36.676414, 22.268715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.161377, 36.561546, 22.581326>,  <38.294300, 36.492626, 22.768892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.161377, 36.561546, 22.581326>,  <37.939838, 36.676414, 22.268715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161377, 36.561546, 22.581326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210756, 0.859717, 0.465261,
		-0.805504, -0.422394, 0.415627,
		0.553845, -0.287174, 0.781528,
		38.327530, 36.475395, 22.815784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525948, 36.695499, 22.909882>,  <37.939838, 36.676414, 22.268715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525948, 36.695499, 22.909882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.912109, 36.739796, 23.004314>,  <38.143806, 36.766373, 23.060974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.912109, 36.739796, 23.004314>,  <37.525948, 36.695499, 22.909882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912109, 36.739796, 23.004314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207042, 0.875916, 0.435782,
		-0.158532, -0.469584, 0.868538,
		0.965402, 0.110739, 0.236084,
		38.201729, 36.773018, 23.075140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527508, 36.980129, 23.602705>,  <37.525948, 36.695499, 22.909882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527508, 36.980129, 23.602705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.887062, 37.076225, 23.456120>,  <38.102795, 37.133881, 23.368168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.887062, 37.076225, 23.456120>,  <37.527508, 36.980129, 23.602705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887062, 37.076225, 23.456120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045556, 0.883015, 0.467128,
		0.435814, -0.403199, 0.804672,
		0.898883, 0.240238, -0.366462,
		38.156727, 37.148296, 23.346180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779003, 37.422146, 24.032276>,  <37.527508, 36.980129, 23.602705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779003, 37.422146, 24.032276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.066715, 37.502506, 23.766258>,  <38.239342, 37.550720, 23.606647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.066715, 37.502506, 23.766258>,  <37.779003, 37.422146, 24.032276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066715, 37.502506, 23.766258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178718, 0.871551, 0.456572,
		0.671343, -0.447257, 0.590982,
		0.719276, 0.200898, -0.665043,
		38.282497, 37.562775, 23.566746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393543, 37.553753, 24.453381>,  <37.779003, 37.422146, 24.032276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393543, 37.553753, 24.453381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.446472, 37.746254, 24.106766>,  <38.478230, 37.861755, 23.898798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.446472, 37.746254, 24.106766>,  <38.393543, 37.553753, 24.453381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446472, 37.746254, 24.106766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225911, 0.836572, 0.499110,
		0.965119, -0.261805, 0.001978,
		0.132325, 0.481254, -0.866536,
		38.486168, 37.890629, 23.846806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871960, 38.070728, 24.632584>,  <38.393543, 37.553753, 24.453381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871960, 38.070728, 24.632584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.742836, 38.204647, 24.278477>,  <38.665359, 38.285000, 24.066011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.742836, 38.204647, 24.278477>,  <38.871960, 38.070728, 24.632584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742836, 38.204647, 24.278477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247689, 0.932631, 0.262392,
		0.913478, -0.134567, -0.383992,
		-0.322814, 0.334800, -0.885268,
		38.645992, 38.305088, 24.012896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443848, 38.359375, 24.412491>,  <38.871960, 38.070728, 24.632584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443848, 38.359375, 24.412491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.145744, 38.536877, 24.213421>,  <38.966885, 38.643375, 24.093979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.145744, 38.536877, 24.213421>,  <39.443848, 38.359375, 24.412491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145744, 38.536877, 24.213421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472108, 0.878248, 0.076121,
		0.470860, -0.178226, -0.864018,
		-0.745256, 0.443752, -0.497673,
		38.922169, 38.670002, 24.064119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754402, 38.748878, 23.853962>,  <39.443848, 38.359375, 24.412491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754402, 38.748878, 23.853962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.415512, 38.950706, 23.920433>,  <39.212177, 39.071804, 23.960316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.415512, 38.950706, 23.920433>,  <39.754402, 38.748878, 23.853962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415512, 38.950706, 23.920433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514553, 0.857213, 0.020550,
		-0.132081, 0.102918, -0.985882,
		-0.847225, 0.504574, 0.166178,
		39.161346, 39.102077, 23.970287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847404, 39.383934, 23.549360>,  <39.754402, 38.748878, 23.853962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847404, 39.383934, 23.549360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.534439, 39.471394, 23.782604>,  <39.346661, 39.523869, 23.922550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.534439, 39.471394, 23.782604>,  <39.847404, 39.383934, 23.549360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534439, 39.471394, 23.782604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397042, 0.896500, 0.196583,
		-0.479774, 0.385329, -0.788250,
		-0.782416, 0.218653, 0.583109,
		39.299713, 39.536991, 23.957537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497044, 39.991577, 23.278540>,  <39.847404, 39.383934, 23.549360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497044, 39.991577, 23.278540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.398457, 39.964066, 23.665222>,  <39.339306, 39.947559, 23.897232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.398457, 39.964066, 23.665222>,  <39.497044, 39.991577, 23.278540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398457, 39.964066, 23.665222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503165, 0.843428, 0.188291,
		-0.828299, 0.532821, -0.173271,
		-0.246467, -0.068777, 0.966708,
		39.324516, 39.943432, 23.955235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344082, 40.673954, 23.496468>,  <39.497044, 39.991577, 23.278540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344082, 40.673954, 23.496468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.400013, 40.478355, 23.840870>,  <39.433571, 40.360996, 24.047510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.400013, 40.478355, 23.840870>,  <39.344082, 40.673954, 23.496468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400013, 40.478355, 23.840870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292016, 0.851239, 0.436026,
		-0.946136, 0.190457, 0.261826,
		0.139832, -0.488997, 0.861004,
		39.441963, 40.331657, 24.099171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082504, 41.167759, 24.020069>,  <39.344082, 40.673954, 23.496468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082504, 41.167759, 24.020069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.344818, 40.895226, 24.150135>,  <39.502205, 40.731705, 24.228174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.344818, 40.895226, 24.150135>,  <39.082504, 41.167759, 24.020069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344818, 40.895226, 24.150135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617369, 0.731884, 0.288449,
		-0.434513, 0.011587, 0.900591,
		0.655785, -0.681331, 0.325167,
		39.541553, 40.690826, 24.247684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368546, 41.477188, 24.566574>,  <39.082504, 41.167759, 24.020069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368546, 41.477188, 24.566574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.618965, 41.166569, 24.538177>,  <39.769218, 40.980198, 24.521139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.618965, 41.166569, 24.538177>,  <39.368546, 41.477188, 24.566574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618965, 41.166569, 24.538177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714753, 0.535061, 0.450376,
		-0.311751, -0.332701, 0.890012,
		0.626051, -0.776544, -0.070993,
		39.806782, 40.933605, 24.516880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670597, 41.480919, 25.269440>,  <39.368546, 41.477188, 24.566574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670597, 41.480919, 25.269440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.920303, 41.287231, 25.024220>,  <40.070126, 41.171021, 24.877087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.920303, 41.287231, 25.024220>,  <39.670597, 41.480919, 25.269440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920303, 41.287231, 25.024220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757118, 0.568400, 0.322016,
		0.192533, -0.665173, 0.721440,
		0.624263, -0.484216, -0.613050,
		40.107582, 41.141968, 24.840305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269917, 41.264721, 25.667143>,  <39.670597, 41.480919, 25.269440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269917, 41.264721, 25.667143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.369717, 41.285858, 25.280369>,  <40.429596, 41.298538, 25.048306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.369717, 41.285858, 25.280369>,  <40.269917, 41.264721, 25.667143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369717, 41.285858, 25.280369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667941, 0.713575, 0.211343,
		0.701147, -0.698583, 0.142739,
		0.249496, 0.052841, -0.966933,
		40.444565, 41.301712, 24.990290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935776, 41.054569, 25.583776>,  <40.269917, 41.264721, 25.667143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935776, 41.054569, 25.583776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.890049, 41.292343, 25.265385>,  <40.862614, 41.435005, 25.074350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.890049, 41.292343, 25.265385>,  <40.935776, 41.054569, 25.583776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890049, 41.292343, 25.265385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904412, 0.393799, 0.164198,
		0.411060, -0.701122, -0.582630,
		-0.114316, 0.594433, -0.795978,
		40.855755, 41.470673, 25.026590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642952, 41.078568, 25.228060>,  <40.935776, 41.054569, 25.583776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642952, 41.078568, 25.228060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.437317, 41.390301, 25.084751>,  <41.313934, 41.577339, 24.998766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.437317, 41.390301, 25.084751>,  <41.642952, 41.078568, 25.228060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437317, 41.390301, 25.084751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824844, 0.563745, 0.042699,
		0.235250, -0.273567, -0.932641,
		-0.514090, 0.779328, -0.358271,
		41.283089, 41.624100, 24.977270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.712233, 23.960207, 19.901577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.023256, 23.923233, 20.150368>,  <28.209871, 23.901049, 20.299643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.023256, 23.923233, 20.150368>,  <27.712233, 23.960207, 19.901577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023256, 23.923233, 20.150368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043508, -0.994675, -0.093431,
		0.627302, 0.045587, -0.777440,
		0.777559, -0.092435, 0.621978,
		28.256525, 23.895502, 20.336962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171675, 23.465998, 19.548117>,  <27.712233, 23.960207, 19.901577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171675, 23.465998, 19.548117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.274940, 23.441616, 19.933788>,  <28.336899, 23.426987, 20.165192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.274940, 23.441616, 19.933788>,  <28.171675, 23.465998, 19.548117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274940, 23.441616, 19.933788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022458, -0.997360, -0.069063,
		0.965841, 0.039483, -0.256112,
		0.258162, -0.060953, 0.964177,
		28.352388, 23.423330, 20.223042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516663, 22.855446, 19.564640>,  <28.171675, 23.465998, 19.548117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516663, 22.855446, 19.564640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.451900, 22.922031, 19.953705>,  <28.413042, 22.961983, 20.187145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.451900, 22.922031, 19.953705>,  <28.516663, 22.855446, 19.564640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451900, 22.922031, 19.953705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185068, -0.963058, 0.195626,
		0.969297, 0.211683, 0.125118,
		-0.161907, 0.166464, 0.972664,
		28.403328, 22.971972, 20.245504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066500, 22.539179, 19.859926>,  <28.516663, 22.855446, 19.564640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066500, 22.539179, 19.859926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.762161, 22.559017, 20.118740>,  <28.579557, 22.570921, 20.274029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.762161, 22.559017, 20.118740>,  <29.066500, 22.539179, 19.859926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762161, 22.559017, 20.118740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107750, -0.973579, 0.201332,
		0.639923, 0.222900, 0.735401,
		-0.760848, 0.049597, 0.647032,
		28.533907, 22.573896, 20.312849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325453, 22.293144, 20.452082>,  <29.066500, 22.539179, 19.859926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325453, 22.293144, 20.452082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.936630, 22.238480, 20.528427>,  <28.703337, 22.205681, 20.574234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.936630, 22.238480, 20.528427>,  <29.325453, 22.293144, 20.452082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936630, 22.238480, 20.528427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183625, -0.949199, 0.255543,
		0.146245, 0.283450, 0.947770,
		-0.972057, -0.136662, 0.190864,
		28.645014, 22.197481, 20.585686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292532, 21.930868, 21.136591>,  <29.325453, 22.293144, 20.452082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292532, 21.930868, 21.136591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.956221, 21.854237, 20.934052>,  <28.754435, 21.808258, 20.812529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.956221, 21.854237, 20.934052>,  <29.292532, 21.930868, 21.136591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956221, 21.854237, 20.934052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105312, -0.975303, 0.194146,
		-0.531037, 0.109909, 0.840190,
		-0.840779, -0.191581, -0.506347,
		28.703987, 21.796762, 20.782146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951975, 21.334787, 21.445978>,  <29.292532, 21.930868, 21.136591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951975, 21.334787, 21.445978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.734554, 21.339725, 21.110264>,  <28.604101, 21.342688, 20.908836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.734554, 21.339725, 21.110264>,  <28.951975, 21.334787, 21.445978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734554, 21.339725, 21.110264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051244, -0.998515, 0.018501,
		-0.837810, 0.053065, 0.543378,
		-0.543552, 0.012344, -0.839285,
		28.571489, 21.343430, 20.858479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332130, 20.911919, 21.619335>,  <28.951975, 21.334787, 21.445978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332130, 20.911919, 21.619335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.419682, 20.901829, 21.229164>,  <28.472212, 20.895775, 20.995062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.419682, 20.901829, 21.229164>,  <28.332130, 20.911919, 21.619335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419682, 20.901829, 21.229164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107573, -0.994196, 0.001570,
		-0.969805, 0.104585, -0.220319,
		0.218876, -0.025223, -0.975427,
		28.485344, 20.894262, 20.936537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819828, 20.452839, 21.334181>,  <28.332130, 20.911919, 21.619335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819828, 20.452839, 21.334181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.086849, 20.481297, 21.037720>,  <28.247063, 20.498371, 20.859842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.086849, 20.481297, 21.037720>,  <27.819828, 20.452839, 21.334181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086849, 20.481297, 21.037720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035539, -0.991245, -0.127159,
		-0.743713, 0.111226, -0.659181,
		0.667554, 0.071143, -0.741155,
		28.287115, 20.502640, 20.815372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607899, 19.973106, 20.815353>,  <27.819828, 20.452839, 21.334181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607899, 19.973106, 20.815353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.991764, 20.032516, 20.719864>,  <28.222082, 20.068163, 20.662571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.991764, 20.032516, 20.719864>,  <27.607899, 19.973106, 20.815353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991764, 20.032516, 20.719864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087875, -0.964991, -0.247124,
		-0.267071, 0.216178, -0.939117,
		0.959662, 0.148525, -0.238724,
		28.279663, 20.077074, 20.648247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697411, 19.810585, 20.064270>,  <27.607899, 19.973106, 20.815353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697411, 19.810585, 20.064270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.030670, 19.763683, 20.280460>,  <28.230625, 19.735542, 20.410175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.030670, 19.763683, 20.280460>,  <27.697411, 19.810585, 20.064270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030670, 19.763683, 20.280460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033003, -0.964984, -0.260223,
		0.552065, 0.234642, -0.800105,
		0.833148, -0.117254, 0.540478,
		28.280615, 19.728508, 20.442604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985388, 19.375584, 19.697405>,  <27.697411, 19.810585, 20.064270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985388, 19.375584, 19.697405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.203007, 19.365494, 20.032875>,  <28.333578, 19.359440, 20.234158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.203007, 19.365494, 20.032875>,  <27.985388, 19.375584, 19.697405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203007, 19.365494, 20.032875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167949, -0.976046, -0.138302,
		0.822076, 0.216097, -0.526777,
		0.544045, -0.025223, 0.838677,
		28.366220, 19.357927, 20.284477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431082, 18.970844, 19.517506>,  <27.985388, 19.375584, 19.697405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431082, 18.970844, 19.517506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.417383, 18.984913, 19.917023>,  <28.409164, 18.993355, 20.156733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.417383, 18.984913, 19.917023>,  <28.431082, 18.970844, 19.517506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417383, 18.984913, 19.917023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030448, -0.998953, 0.034133,
		0.998949, -0.029242, 0.035283,
		-0.034248, 0.035172, 0.998794,
		28.407108, 18.995464, 20.216661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547417, 19.165125, 18.869677>,  <28.431082, 18.970844, 19.517506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547417, 19.165125, 18.869677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.823593, 19.008514, 18.626366>,  <28.989298, 18.914549, 18.480379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.823593, 19.008514, 18.626366>,  <28.547417, 19.165125, 18.869677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823593, 19.008514, 18.626366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080170, 0.877104, -0.473562,
		0.718933, 0.278200, 0.636976,
		0.690440, -0.391526, -0.608276,
		29.030725, 18.891056, 18.443882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996664, 19.652308, 18.784817>,  <28.547417, 19.165125, 18.869677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996664, 19.652308, 18.784817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.083921, 19.454800, 18.448101>,  <29.136276, 19.336294, 18.246073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.083921, 19.454800, 18.448101>,  <28.996664, 19.652308, 18.784817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083921, 19.454800, 18.448101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353263, 0.844018, -0.403533,
		0.909736, -0.209345, 0.358547,
		0.218142, -0.493770, -0.841787,
		29.149364, 19.306669, 18.195564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696018, 19.676302, 18.733767>,  <28.996664, 19.652308, 18.784817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696018, 19.676302, 18.733767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.559690, 19.611935, 18.363266>,  <29.477894, 19.573315, 18.140965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.559690, 19.611935, 18.363266>,  <29.696018, 19.676302, 18.733767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559690, 19.611935, 18.363266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575114, 0.743696, -0.340821,
		0.743696, -0.648861, -0.160920,
		0.340821, 0.160920, 0.926254,
		29.457443, 19.563658, 18.085390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326895, 19.828077, 18.356182>,  <29.696018, 19.676302, 18.733767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326895, 19.828077, 18.356182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.018663, 19.841198, 18.101582>,  <29.833725, 19.849070, 17.948822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.018663, 19.841198, 18.101582>,  <30.326895, 19.828077, 18.356182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018663, 19.841198, 18.101582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294609, 0.903909, -0.310087,
		0.565169, -0.426466, -0.706195,
		-0.770577, 0.032800, -0.636502,
		29.787491, 19.851038, 17.910631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577145, 20.137831, 17.720530>,  <30.326895, 19.828077, 18.356182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577145, 20.137831, 17.720530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.180763, 20.189281, 17.705193>,  <29.942934, 20.220152, 17.695990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.180763, 20.189281, 17.705193>,  <30.577145, 20.137831, 17.720530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180763, 20.189281, 17.705193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133871, 0.926622, -0.351356,
		-0.009664, -0.353309, -0.935457,
		-0.990952, 0.128626, -0.038343,
		29.883478, 20.227869, 17.693689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392231, 20.487782, 17.034515>,  <30.577145, 20.137831, 17.720530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392231, 20.487782, 17.034515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.067509, 20.548805, 17.259975>,  <29.872675, 20.585419, 17.395252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.067509, 20.548805, 17.259975>,  <30.392231, 20.487782, 17.034515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067509, 20.548805, 17.259975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000657, 0.965507, -0.260378,
		-0.583930, -0.211005, -0.783902,
		-0.811803, 0.152557, 0.563650,
		29.823967, 20.594572, 17.429070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941229, 20.946859, 16.657312>,  <30.392231, 20.487782, 17.034515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941229, 20.946859, 16.657312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.803391, 20.991203, 17.030186>,  <29.720688, 21.017811, 17.253910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.803391, 20.991203, 17.030186>,  <29.941229, 20.946859, 16.657312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803391, 20.991203, 17.030186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132188, 0.977378, -0.165102,
		-0.929397, -0.180118, -0.322148,
		-0.344598, 0.110861, 0.932181,
		29.700010, 21.024462, 17.309839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292912, 21.312256, 16.620131>,  <29.941229, 20.946859, 16.657312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292912, 21.312256, 16.620131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.450672, 21.349953, 16.985767>,  <29.545328, 21.372570, 17.205149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.450672, 21.349953, 16.985767>,  <29.292912, 21.312256, 16.620131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450672, 21.349953, 16.985767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117954, 0.991691, -0.051349,
		-0.911336, -0.087568, 0.402241,
		0.394402, 0.094242, 0.914093,
		29.568993, 21.378225, 17.259995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804035, 21.765318, 16.948803>,  <29.292912, 21.312256, 16.620131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804035, 21.765318, 16.948803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.164085, 21.782925, 17.122162>,  <29.380116, 21.793489, 17.226177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.164085, 21.782925, 17.122162>,  <28.804035, 21.765318, 16.948803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164085, 21.782925, 17.122162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070958, 0.996410, 0.046171,
		-0.429811, -0.072313, 0.900019,
		0.900126, 0.044019, 0.433399,
		29.434124, 21.796131, 17.252182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626635, 22.275597, 17.371700>,  <28.804035, 21.765318, 16.948803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626635, 22.275597, 17.371700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.021654, 22.231709, 17.416794>,  <29.258665, 22.205376, 17.443850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.021654, 22.231709, 17.416794>,  <28.626635, 22.275597, 17.371700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021654, 22.231709, 17.416794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072787, 0.953991, 0.290866,
		-0.139462, -0.279039, 0.950099,
		0.987548, -0.109720, 0.112735,
		29.317919, 22.198793, 17.450615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844799, 22.500055, 18.036594>,  <28.626635, 22.275597, 17.371700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844799, 22.500055, 18.036594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.172323, 22.520176, 17.807854>,  <29.368837, 22.532248, 17.670609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.172323, 22.520176, 17.807854>,  <28.844799, 22.500055, 18.036594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172323, 22.520176, 17.807854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093289, 0.971253, 0.219011,
		0.566430, -0.232676, 0.790581,
		0.818812, 0.050301, -0.571853,
		29.417967, 22.535267, 17.636297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185715, 23.089720, 18.268389>,  <28.844799, 22.500055, 18.036594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185715, 23.089720, 18.268389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.415337, 23.019150, 17.948555>,  <29.553110, 22.976809, 17.756655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.415337, 23.019150, 17.948555>,  <29.185715, 23.089720, 18.268389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415337, 23.019150, 17.948555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234692, 0.970993, -0.045748,
		0.784462, -0.161394, 0.598808,
		0.574055, -0.176423, -0.799585,
		29.587553, 22.966223, 17.708679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754198, 23.391541, 18.377266>,  <29.185715, 23.089720, 18.268389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754198, 23.391541, 18.377266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.756094, 23.393723, 17.977276>,  <29.757231, 23.395031, 17.737282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.756094, 23.393723, 17.977276>,  <29.754198, 23.391541, 18.377266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756094, 23.393723, 17.977276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201017, 0.979568, 0.006296,
		0.979576, -0.201042, 0.003546,
		0.004739, 0.005454, -0.999974,
		29.757515, 23.395359, 17.677284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287037, 23.775820, 18.177607>,  <29.754198, 23.391541, 18.377266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287037, 23.775820, 18.177607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.072227, 23.760696, 17.840519>,  <29.943342, 23.751623, 17.638266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.072227, 23.760696, 17.840519>,  <30.287037, 23.775820, 18.177607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072227, 23.760696, 17.840519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112569, 0.986849, -0.116008,
		0.836024, -0.157163, -0.525704,
		-0.537022, -0.037808, -0.842721,
		29.911121, 23.749353, 17.587704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680058, 23.920349, 17.621611>,  <30.287037, 23.775820, 18.177607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680058, 23.920349, 17.621611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.305998, 24.011993, 17.513535>,  <30.081562, 24.066980, 17.448689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.305998, 24.011993, 17.513535>,  <30.680058, 23.920349, 17.621611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305998, 24.011993, 17.513535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237489, 0.971389, 0.001732,
		0.262856, -0.062547, -0.962806,
		-0.935150, 0.229111, -0.270190,
		30.025454, 24.080727, 17.432478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103350, 23.821198, 17.106365>,  <30.680058, 23.920349, 17.621611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103350, 23.821198, 17.106365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497581, 23.876892, 17.144836>,  <31.734119, 23.910309, 17.167919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497581, 23.876892, 17.144836>,  <31.103350, 23.821198, 17.106365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497581, 23.876892, 17.144836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150697, -0.980708, -0.124504,
		0.076988, 0.137202, -0.987547,
		0.985578, 0.139235, 0.096179,
		31.793255, 23.918663, 17.173691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385092, 23.450674, 16.627272>,  <31.103350, 23.821198, 17.106365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385092, 23.450674, 16.627272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.678598, 23.503078, 16.893932>,  <31.854702, 23.534521, 17.053928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.678598, 23.503078, 16.893932>,  <31.385092, 23.450674, 16.627272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678598, 23.503078, 16.893932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125800, -0.990463, 0.056181,
		0.667655, 0.042641, -0.743248,
		0.733765, 0.131010, 0.666653,
		31.898727, 23.542381, 17.093927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894800, 23.061750, 16.260969>,  <31.385092, 23.450674, 16.627272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894800, 23.061750, 16.260969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.974577, 23.085732, 16.652199>,  <32.022442, 23.100121, 16.886936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.974577, 23.085732, 16.652199>,  <31.894800, 23.061750, 16.260969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974577, 23.085732, 16.652199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210639, -0.977417, 0.016961,
		0.957003, 0.202638, -0.207564,
		0.199440, 0.059953, 0.978074,
		32.034409, 23.103718, 16.945621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419018, 22.670528, 16.285679>,  <31.894800, 23.061750, 16.260969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419018, 22.670528, 16.285679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324741, 22.711056, 16.672291>,  <32.268177, 22.735373, 16.904259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324741, 22.711056, 16.672291>,  <32.419018, 22.670528, 16.285679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324741, 22.711056, 16.672291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175903, -0.973675, 0.144963,
		0.955776, 0.204182, 0.211665,
		-0.235692, 0.101319, 0.966532,
		32.254032, 22.741451, 16.962250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978851, 22.452522, 16.661480>,  <32.419018, 22.670528, 16.285679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978851, 22.452522, 16.661480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.642590, 22.399529, 16.871529>,  <32.440834, 22.367731, 16.997559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.642590, 22.399529, 16.871529>,  <32.978851, 22.452522, 16.661480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642590, 22.399529, 16.871529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267390, -0.944730, 0.189704,
		0.470966, 0.299888, 0.829613,
		-0.840650, -0.132486, 0.525123,
		32.390396, 22.359783, 17.029066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163712, 22.039549, 17.204197>,  <32.978851, 22.452522, 16.661480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163712, 22.039549, 17.204197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765961, 22.003464, 17.226398>,  <32.527309, 21.981813, 17.239719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765961, 22.003464, 17.226398>,  <33.163712, 22.039549, 17.204197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765961, 22.003464, 17.226398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092721, -0.994701, 0.044408,
		0.051205, 0.049305, 0.997470,
		-0.994375, -0.090213, 0.055505,
		32.467648, 21.976400, 17.243050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071774, 21.554201, 17.878199>,  <33.163712, 22.039549, 17.204197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071774, 21.554201, 17.878199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.767757, 21.538338, 17.618732>,  <32.585346, 21.528820, 17.463053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.767757, 21.538338, 17.618732>,  <33.071774, 21.554201, 17.878199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767757, 21.538338, 17.618732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033743, -0.999198, 0.021551,
		-0.648998, -0.005508, 0.760770,
		-0.760042, -0.039658, -0.648663,
		32.539745, 21.526440, 17.424133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090530, 21.638201, 18.700710>,  <33.071774, 21.554201, 17.878199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090530, 21.638201, 18.700710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361313, 21.535877, 18.976765>,  <33.523785, 21.474483, 19.142397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361313, 21.535877, 18.976765>,  <33.090530, 21.638201, 18.700710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361313, 21.535877, 18.976765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231563, 0.964067, 0.130203,
		-0.698644, 0.071668, 0.711871,
		0.676960, -0.255809, 0.690136,
		33.564400, 21.459135, 19.183805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913025, 21.939734, 19.322317>,  <33.090530, 21.638201, 18.700710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913025, 21.939734, 19.322317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.303352, 21.855080, 19.344166>,  <33.537548, 21.804287, 19.357275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.303352, 21.855080, 19.344166>,  <32.913025, 21.939734, 19.322317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303352, 21.855080, 19.344166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204589, 0.972363, 0.112486,
		-0.076919, -0.098591, 0.992151,
		0.975821, -0.211636, 0.054623,
		33.596100, 21.791590, 19.360552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154778, 22.202991, 19.974916>,  <32.913025, 21.939734, 19.322317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154778, 22.202991, 19.974916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482567, 22.171600, 19.747829>,  <33.679241, 22.152765, 19.611578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482567, 22.171600, 19.747829>,  <33.154778, 22.202991, 19.974916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482567, 22.171600, 19.747829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147137, 0.986188, 0.076057,
		0.553907, -0.145858, 0.819702,
		0.819474, -0.078480, -0.567718,
		33.728409, 22.148056, 19.577515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613598, 22.767981, 20.219114>,  <33.154778, 22.202991, 19.974916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613598, 22.767981, 20.219114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.742142, 22.673161, 19.852390>,  <33.819267, 22.616268, 19.632357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.742142, 22.673161, 19.852390>,  <33.613598, 22.767981, 20.219114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742142, 22.673161, 19.852390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231376, 0.958472, -0.166723,
		0.918257, -0.158550, 0.362858,
		0.321356, -0.237052, -0.916808,
		33.838547, 22.602045, 19.577349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188618, 23.135326, 20.119539>,  <33.613598, 22.767981, 20.219114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188618, 23.135326, 20.119539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116100, 23.034534, 19.739300>,  <34.072590, 22.974060, 19.511156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116100, 23.034534, 19.739300>,  <34.188618, 23.135326, 20.119539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116100, 23.034534, 19.739300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253385, 0.922013, -0.292726,
		0.950226, -0.293936, -0.103305,
		-0.181291, -0.251980, -0.950600,
		34.061714, 22.958941, 19.454121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704418, 23.380007, 19.684700>,  <34.188618, 23.135326, 20.119539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704418, 23.380007, 19.684700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.387676, 23.339664, 19.443771>,  <34.197632, 23.315458, 19.299213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.387676, 23.339664, 19.443771>,  <34.704418, 23.380007, 19.684700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387676, 23.339664, 19.443771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147402, 0.925546, -0.348766,
		0.592651, -0.364956, -0.718034,
		-0.791857, -0.100857, -0.602321,
		34.150120, 23.309408, 19.263075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947945, 23.601057, 19.009998>,  <34.704418, 23.380007, 19.684700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947945, 23.601057, 19.009998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.549736, 23.636086, 18.995712>,  <34.310810, 23.657103, 18.987141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.549736, 23.636086, 18.995712>,  <34.947945, 23.601057, 19.009998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549736, 23.636086, 18.995712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094479, 0.937950, -0.333653,
		0.004282, -0.335532, -0.942019,
		-0.995518, 0.087572, -0.035717,
		34.251080, 23.662357, 18.984997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.518919, 19.228474, 22.841179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.180571, 19.204605, 22.629162>,  <29.977562, 19.190283, 22.501951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.180571, 19.204605, 22.629162>,  <30.518919, 19.228474, 22.841179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180571, 19.204605, 22.629162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027492, 0.987524, -0.155052,
		0.532680, -0.145726, -0.833676,
		-0.845870, -0.059673, -0.530041,
		29.926809, 19.186703, 22.470150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588068, 19.630898, 22.230938>,  <30.518919, 19.228474, 22.841179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588068, 19.630898, 22.230938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.199821, 19.626171, 22.327076>,  <29.966873, 19.623335, 22.384758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.199821, 19.626171, 22.327076>,  <30.588068, 19.630898, 22.230938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199821, 19.626171, 22.327076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053143, 0.963606, 0.261989,
		-0.234693, 0.267063, -0.934664,
		-0.970616, -0.011816, 0.240344,
		29.908636, 19.622627, 22.399179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117918, 20.105526, 21.735729>,  <30.588068, 19.630898, 22.230938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117918, 20.105526, 21.735729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.945477, 20.066910, 22.094578>,  <29.842012, 20.043739, 22.309887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.945477, 20.066910, 22.094578>,  <30.117918, 20.105526, 21.735729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945477, 20.066910, 22.094578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060259, 0.995121, 0.078129,
		-0.900288, -0.020378, -0.434818,
		-0.431104, -0.096540, 0.897123,
		29.816145, 20.037949, 22.363714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642326, 20.681965, 21.768538>,  <30.117918, 20.105526, 21.735729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642326, 20.681965, 21.768538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.649065, 20.571636, 22.152962>,  <29.653109, 20.505440, 22.383617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.649065, 20.571636, 22.152962>,  <29.642326, 20.681965, 21.768538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649065, 20.571636, 22.152962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009516, 0.961199, 0.275692,
		-0.999813, 0.004501, 0.018818,
		0.016847, -0.275820, 0.961062,
		29.654119, 20.488890, 22.441280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203199, 21.105076, 22.086899>,  <29.642326, 20.681965, 21.768538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203199, 21.105076, 22.086899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.451082, 20.991966, 22.379745>,  <29.599812, 20.924101, 22.555454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.451082, 20.991966, 22.379745>,  <29.203199, 21.105076, 22.086899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451082, 20.991966, 22.379745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020723, 0.926615, 0.375440,
		-0.784558, -0.247835, 0.568372,
		0.619709, -0.282776, 0.732119,
		29.636995, 20.907133, 22.599380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942135, 21.512468, 22.579830>,  <29.203199, 21.105076, 22.086899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942135, 21.512468, 22.579830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.273415, 21.373730, 22.755913>,  <29.472183, 21.290487, 22.861563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.273415, 21.373730, 22.755913>,  <28.942135, 21.512468, 22.579830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273415, 21.373730, 22.755913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057106, 0.833617, 0.549383,
		-0.557516, -0.429860, 0.710208,
		0.828200, -0.346846, 0.440207,
		29.521875, 21.269676, 22.887976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896492, 21.718105, 23.167412>,  <28.942135, 21.512468, 22.579830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896492, 21.718105, 23.167412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.293253, 21.668476, 23.156551>,  <29.531309, 21.638699, 23.150036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.293253, 21.668476, 23.156551>,  <28.896492, 21.718105, 23.167412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293253, 21.668476, 23.156551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123896, 0.898218, 0.421728,
		-0.027937, -0.421676, 0.906316,
		0.991902, -0.124071, -0.027150,
		29.590824, 21.631254, 23.148407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160994, 22.053150, 23.755632>,  <28.896492, 21.718105, 23.167412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160994, 22.053150, 23.755632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.449829, 22.030701, 23.479824>,  <29.623131, 22.017231, 23.314339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.449829, 22.030701, 23.479824>,  <29.160994, 22.053150, 23.755632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449829, 22.030701, 23.479824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106273, 0.993872, 0.030394,
		0.683591, -0.095225, 0.723627,
		0.722087, -0.056124, -0.689522,
		29.666454, 22.013863, 23.272968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666187, 22.350275, 24.108992>,  <29.160994, 22.053150, 23.755632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666187, 22.350275, 24.108992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.803715, 22.352879, 23.733387>,  <29.886230, 22.354441, 23.508024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.803715, 22.352879, 23.733387>,  <29.666187, 22.350275, 24.108992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803715, 22.352879, 23.733387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360895, 0.922260, 0.138535,
		0.866916, -0.386516, 0.314741,
		0.343819, 0.006510, -0.939014,
		29.906860, 22.354832, 23.451683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301243, 22.489950, 24.183052>,  <29.666187, 22.350275, 24.108992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301243, 22.489950, 24.183052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.230864, 22.592808, 23.802963>,  <30.188637, 22.654522, 23.574911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.230864, 22.592808, 23.802963>,  <30.301243, 22.489950, 24.183052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230864, 22.592808, 23.802963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415624, 0.894430, 0.165085,
		0.892356, -0.365888, -0.264247,
		-0.175948, 0.257142, -0.950221,
		30.178080, 22.669950, 23.517897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989546, 22.722067, 23.887251>,  <30.301243, 22.489950, 24.183052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989546, 22.722067, 23.887251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.682959, 22.878529, 23.683475>,  <30.499006, 22.972406, 23.561211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.682959, 22.878529, 23.683475>,  <30.989546, 22.722067, 23.887251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682959, 22.878529, 23.683475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344696, 0.919776, 0.187609,
		0.541954, -0.031806, -0.839806,
		-0.766466, 0.391154, -0.509439,
		30.453018, 22.995874, 23.530643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311684, 23.341364, 23.512026>,  <30.989546, 22.722067, 23.887251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311684, 23.341364, 23.512026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.920053, 23.422688, 23.515430>,  <30.685076, 23.471481, 23.517473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.920053, 23.422688, 23.515430>,  <31.311684, 23.341364, 23.512026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920053, 23.422688, 23.515430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203337, 0.975878, 0.079477,
		0.007852, 0.079545, -0.996800,
		-0.979077, 0.203311, 0.008512,
		30.626329, 23.483681, 23.517984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654467, 23.390158, 22.843882>,  <31.311684, 23.341364, 23.512026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654467, 23.390158, 22.843882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.043751, 23.443382, 22.768879>,  <32.277321, 23.475317, 22.723877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.043751, 23.443382, 22.768879>,  <31.654467, 23.390158, 22.843882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043751, 23.443382, 22.768879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083972, -0.964885, -0.248889,
		-0.214040, 0.226475, -0.950208,
		0.973209, 0.133063, -0.187507,
		32.335712, 23.483301, 22.712627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712252, 23.164436, 22.223610>,  <31.654467, 23.390158, 22.843882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712252, 23.164436, 22.223610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.068218, 23.122753, 22.401234>,  <32.281799, 23.097744, 22.507809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.068218, 23.122753, 22.401234>,  <31.712252, 23.164436, 22.223610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068218, 23.122753, 22.401234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032071, -0.985438, -0.166983,
		0.454994, 0.134360, -0.880300,
		0.889917, -0.104208, 0.444060,
		32.335194, 23.091490, 22.534452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074017, 22.741596, 21.822866>,  <31.712252, 23.164436, 22.223610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074017, 22.741596, 21.822866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.281830, 22.747189, 22.164600>,  <32.406517, 22.750544, 22.369640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.281830, 22.747189, 22.164600>,  <32.074017, 22.741596, 21.822866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281830, 22.747189, 22.164600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012082, -0.999886, 0.009016,
		0.854364, 0.005638, -0.519644,
		0.519534, 0.013981, 0.854335,
		32.437691, 22.751383, 22.420900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618027, 22.318222, 21.697144>,  <32.074017, 22.741596, 21.822866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618027, 22.318222, 21.697144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.606068, 22.327213, 22.096863>,  <32.598892, 22.332607, 22.336695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.606068, 22.327213, 22.096863>,  <32.618027, 22.318222, 21.697144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606068, 22.327213, 22.096863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103760, -0.994276, 0.025469,
		0.994153, 0.104449, 0.027398,
		-0.029901, 0.022478, 0.999300,
		32.597095, 22.333956, 22.396652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167198, 22.009495, 21.936668>,  <32.618027, 22.318222, 21.697144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167198, 22.009495, 21.936668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.915161, 21.980804, 22.245949>,  <32.763939, 21.963591, 22.431517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.915161, 21.980804, 22.245949>,  <33.167198, 22.009495, 21.936668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915161, 21.980804, 22.245949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271634, -0.953175, 0.132937,
		0.727462, 0.293790, 0.620070,
		-0.630090, -0.071725, 0.773202,
		32.726135, 21.959288, 22.477909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612888, 21.644049, 22.436800>,  <33.167198, 22.009495, 21.936668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612888, 21.644049, 22.436800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.218441, 21.634209, 22.502495>,  <32.981773, 21.628305, 22.541912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.218441, 21.634209, 22.502495>,  <33.612888, 21.644049, 22.436800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218441, 21.634209, 22.502495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062560, -0.971138, 0.230168,
		0.153834, 0.237247, 0.959192,
		-0.986114, -0.024600, 0.164236,
		32.922607, 21.626829, 22.551765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634274, 21.103672, 22.838453>,  <33.612888, 21.644049, 22.436800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634274, 21.103672, 22.838453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.264725, 21.118237, 22.686066>,  <33.042995, 21.126976, 22.594633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.264725, 21.118237, 22.686066>,  <33.634274, 21.103672, 22.838453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264725, 21.118237, 22.686066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068646, -0.995086, 0.071357,
		-0.376499, 0.092077, 0.921830,
		-0.923870, 0.036414, -0.380970,
		32.987564, 21.129160, 22.571775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343098, 20.532934, 23.207811>,  <33.634274, 21.103672, 22.838453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343098, 20.532934, 23.207811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.120052, 20.608551, 22.884495>,  <32.986225, 20.653921, 22.690504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.120052, 20.608551, 22.884495>,  <33.343098, 20.532934, 23.207811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120052, 20.608551, 22.884495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124150, -0.981764, -0.143969,
		-0.820767, 0.020072, 0.570910,
		-0.557609, 0.189043, -0.808292,
		32.952770, 20.665264, 22.642008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762856, 20.081589, 23.264484>,  <33.343098, 20.532934, 23.207811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762856, 20.081589, 23.264484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.797340, 20.204163, 22.885292>,  <32.818031, 20.277706, 22.657778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.797340, 20.204163, 22.885292>,  <32.762856, 20.081589, 23.264484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797340, 20.204163, 22.885292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183610, -0.930336, -0.317430,
		-0.979211, 0.201425, -0.023943,
		0.086214, 0.306435, -0.947979,
		32.823204, 20.296093, 22.600899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196426, 19.710194, 22.843084>,  <32.762856, 20.081589, 23.264484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196426, 19.710194, 22.843084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.463455, 19.837875, 22.574024>,  <32.623672, 19.914484, 22.412588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.463455, 19.837875, 22.574024>,  <32.196426, 19.710194, 22.843084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463455, 19.837875, 22.574024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129965, -0.839607, -0.527417,
		-0.733118, 0.439508, -0.519009,
		0.667568, 0.319206, -0.672652,
		32.663727, 19.933638, 22.372229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844851, 19.678146, 22.163099>,  <32.196426, 19.710194, 22.843084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844851, 19.678146, 22.163099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.242649, 19.656784, 22.127045>,  <32.481327, 19.643967, 22.105412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.242649, 19.656784, 22.127045>,  <31.844851, 19.678146, 22.163099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242649, 19.656784, 22.127045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093636, -0.839044, -0.535945,
		-0.047007, 0.541436, -0.839427,
		0.994496, -0.053408, -0.090139,
		32.540997, 19.640762, 22.100002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853056, 19.368853, 21.524940>,  <31.844851, 19.678146, 22.163099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853056, 19.368853, 21.524940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.210640, 19.308563, 21.693756>,  <32.425190, 19.272390, 21.795046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.210640, 19.308563, 21.693756>,  <31.853056, 19.368853, 21.524940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210640, 19.308563, 21.693756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051730, -0.900744, -0.431259,
		0.445148, 0.407361, -0.797433,
		0.893961, -0.150723, 0.422037,
		32.478828, 19.263346, 21.820368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208103, 19.120480, 20.972015>,  <31.853056, 19.368853, 21.524940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208103, 19.120480, 20.972015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.420689, 19.029366, 21.298367>,  <32.548241, 18.974697, 21.494177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.420689, 19.029366, 21.298367>,  <32.208103, 19.120480, 20.972015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420689, 19.029366, 21.298367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125847, -0.931246, -0.341971,
		0.837678, 0.284422, -0.466261,
		0.531468, -0.227783, 0.815878,
		32.580128, 18.961031, 21.543129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829067, 18.909409, 20.667978>,  <32.208103, 19.120480, 20.972015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829067, 18.909409, 20.667978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.766510, 18.749542, 21.029266>,  <32.728973, 18.653622, 21.246038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.766510, 18.749542, 21.029266>,  <32.829067, 18.909409, 20.667978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766510, 18.749542, 21.029266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134041, -0.914602, -0.381492,
		0.978557, 0.061405, 0.196612,
		-0.156396, -0.399665, 0.903221,
		32.719589, 18.629642, 21.300232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440174, 18.745764, 21.100712>,  <32.829067, 18.909409, 20.667978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440174, 18.745764, 21.100712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.398857, 18.697422, 20.705799>,  <33.374065, 18.668417, 20.468851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.398857, 18.697422, 20.705799>,  <33.440174, 18.745764, 21.100712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398857, 18.697422, 20.705799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237566, 0.960865, -0.142478,
		0.965864, -0.249262, -0.070537,
		-0.103291, -0.120857, -0.987282,
		33.367870, 18.661165, 20.409615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873623, 19.265099, 20.787630>,  <33.440174, 18.745764, 21.100712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873623, 19.265099, 20.787630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.659447, 19.134342, 20.476131>,  <33.530941, 19.055887, 20.289232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.659447, 19.134342, 20.476131>,  <33.873623, 19.265099, 20.787630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659447, 19.134342, 20.476131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236162, 0.827327, -0.509664,
		0.810880, -0.456806, -0.365789,
		-0.535445, -0.326891, -0.778743,
		33.498814, 19.036274, 20.242508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306618, 19.504416, 20.273302>,  <33.873623, 19.265099, 20.787630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306618, 19.504416, 20.273302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.947231, 19.433014, 20.112858>,  <33.731598, 19.390173, 20.016592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.947231, 19.433014, 20.112858>,  <34.306618, 19.504416, 20.273302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947231, 19.433014, 20.112858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025678, 0.890684, -0.453897,
		0.438285, -0.418112, -0.795669,
		-0.898469, -0.178505, -0.401110,
		33.677692, 19.379463, 19.992525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380119, 19.661276, 19.544100>,  <34.306618, 19.504416, 20.273302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380119, 19.661276, 19.544100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.994835, 19.730427, 19.626408>,  <33.763664, 19.771917, 19.675793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.994835, 19.730427, 19.626408>,  <34.380119, 19.661276, 19.544100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994835, 19.730427, 19.626408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093846, 0.933807, -0.345249,
		-0.251835, -0.313236, -0.915676,
		-0.963209, 0.172878, 0.205769,
		33.705872, 19.782290, 19.688139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178452, 19.982239, 18.914459>,  <34.380119, 19.661276, 19.544100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178452, 19.982239, 18.914459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.872681, 20.059158, 19.160603>,  <33.689217, 20.105310, 19.308289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.872681, 20.059158, 19.160603>,  <34.178452, 19.982239, 18.914459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872681, 20.059158, 19.160603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037407, 0.966102, -0.255437,
		-0.643620, -0.172244, -0.745711,
		-0.764431, 0.192299, 0.615359,
		33.643353, 20.116848, 19.345211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738411, 20.371834, 18.522276>,  <34.178452, 19.982239, 18.914459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738411, 20.371834, 18.522276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.625084, 20.453751, 18.897038>,  <33.557087, 20.502901, 19.121895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.625084, 20.453751, 18.897038>,  <33.738411, 20.371834, 18.522276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625084, 20.453751, 18.897038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040993, 0.978627, -0.201517,
		-0.958149, -0.018688, -0.285660,
		-0.283321, 0.204794, 0.936904,
		33.540089, 20.515188, 19.178108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320164, 20.903414, 18.447540>,  <33.738411, 20.371834, 18.522276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320164, 20.903414, 18.447540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.457256, 20.939247, 18.821602>,  <33.539513, 20.960747, 19.046040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.457256, 20.939247, 18.821602>,  <33.320164, 20.903414, 18.447540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457256, 20.939247, 18.821602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328182, 0.921309, -0.208533,
		-0.880246, 0.378371, 0.286360,
		0.342729, 0.089582, 0.935154,
		33.560074, 20.966122, 19.102148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656265, 21.059853, 18.160990>,  <33.320164, 20.903414, 18.447540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656265, 21.059853, 18.160990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.473236, 21.067608, 17.805405>,  <32.363419, 21.072262, 17.592054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.473236, 21.067608, 17.805405>,  <32.656265, 21.059853, 18.160990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473236, 21.067608, 17.805405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085267, -0.996112, 0.022163,
		-0.885076, 0.085940, 0.457443,
		-0.457569, 0.019388, -0.888963,
		32.335964, 21.073425, 17.538715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991220, 20.520823, 18.187826>,  <32.656265, 21.059853, 18.160990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991220, 20.520823, 18.187826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.103333, 20.592274, 17.810566>,  <32.170601, 20.635145, 17.584209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.103333, 20.592274, 17.810566>,  <31.991220, 20.520823, 18.187826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103333, 20.592274, 17.810566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073545, -0.975649, -0.206640,
		-0.957097, 0.127281, -0.260317,
		0.280279, 0.178630, -0.943152,
		32.187416, 20.645863, 17.527620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454998, 20.219950, 17.731472>,  <31.991220, 20.520823, 18.187826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454998, 20.219950, 17.731472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.791941, 20.241982, 17.517033>,  <31.994106, 20.255199, 17.388371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.791941, 20.241982, 17.517033>,  <31.454998, 20.219950, 17.731472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791941, 20.241982, 17.517033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179785, -0.909057, -0.375889,
		-0.508045, 0.413015, -0.755850,
		0.842358, 0.055078, -0.536096,
		32.044647, 20.258505, 17.356203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262634, 19.998203, 17.087864>,  <31.454998, 20.219950, 17.731472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262634, 19.998203, 17.087864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.659914, 19.963985, 17.119450>,  <31.898281, 19.943455, 17.138401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.659914, 19.963985, 17.119450>,  <31.262634, 19.998203, 17.087864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659914, 19.963985, 17.119450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043351, -0.901255, -0.431116,
		0.108049, 0.424761, -0.898834,
		0.993200, -0.085547, 0.078966,
		31.957874, 19.938322, 17.143139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469555, 19.693424, 16.492666>,  <31.262634, 19.998203, 17.087864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469555, 19.693424, 16.492666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.767416, 19.594978, 16.740833>,  <31.946133, 19.535910, 16.889732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.767416, 19.594978, 16.740833>,  <31.469555, 19.693424, 16.492666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767416, 19.594978, 16.740833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062086, -0.899960, -0.431528,
		0.664556, 0.359858, -0.654879,
		0.744654, -0.246116, 0.620417,
		31.990812, 19.521143, 16.926958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877510, 19.217413, 16.097172>,  <31.469555, 19.693424, 16.492666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877510, 19.217413, 16.097172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.015335, 19.146084, 16.465839>,  <32.098030, 19.103287, 16.687040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.015335, 19.146084, 16.465839>,  <31.877510, 19.217413, 16.097172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015335, 19.146084, 16.465839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167280, -0.977743, -0.126636,
		0.923739, -0.110543, -0.366724,
		0.344563, -0.178324, 0.921671,
		32.118706, 19.092587, 16.742340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148937, 18.587023, 15.986298>,  <31.877510, 19.217413, 16.097172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148937, 18.587023, 15.986298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.139606, 18.618343, 16.384960>,  <32.134007, 18.637136, 16.624157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.139606, 18.618343, 16.384960>,  <32.148937, 18.587023, 15.986298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139606, 18.618343, 16.384960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175481, -0.981771, 0.073026,
		0.984206, -0.173191, 0.036642,
		-0.023326, 0.078302, 0.996657,
		32.132610, 18.641834, 16.683958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599525, 18.116621, 16.249044>,  <32.148937, 18.587023, 15.986298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599525, 18.116621, 16.249044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.310143, 18.180641, 16.517670>,  <32.136513, 18.219053, 16.678844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.310143, 18.180641, 16.517670>,  <32.599525, 18.116621, 16.249044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310143, 18.180641, 16.517670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116382, -0.987108, 0.109877,
		0.680489, 0.001333, 0.732757,
		-0.723457, 0.160050, 0.671561,
		32.093105, 18.228657, 16.719137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561680, 17.535513, 16.846479>,  <32.599525, 18.116621, 16.249044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561680, 17.535513, 16.846479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.200981, 17.697002, 16.784683>,  <31.984562, 17.793896, 16.747604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.200981, 17.697002, 16.784683>,  <32.561680, 17.535513, 16.846479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200981, 17.697002, 16.784683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376713, -0.909223, -0.177203,
		-0.212008, -0.101592, 0.971973,
		-0.901743, 0.403723, -0.154491,
		31.930458, 17.818119, 16.738337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.490383, 34.063332, 19.192083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199560, 33.791195, 19.155159>,  <30.025066, 33.627914, 19.133003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199560, 33.791195, 19.155159>,  <30.490383, 34.063332, 19.192083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199560, 33.791195, 19.155159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683763, -0.705342, -0.186980,
		0.062098, -0.199065, 0.978017,
		-0.727058, -0.680342, -0.092313,
		29.981443, 33.587093, 19.127464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694155, 33.459873, 19.573278>,  <30.490383, 34.063332, 19.192083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694155, 33.459873, 19.573278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437559, 33.338120, 19.291615>,  <30.283602, 33.265068, 19.122616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437559, 33.338120, 19.291615>,  <30.694155, 33.459873, 19.573278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437559, 33.338120, 19.291615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574847, -0.798555, -0.178495,
		-0.507980, -0.519287, 0.687239,
		-0.641488, -0.304385, -0.704161,
		30.245113, 33.246803, 19.080366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621532, 32.754230, 19.832199>,  <30.694155, 33.459873, 19.573278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621532, 32.754230, 19.832199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507725, 32.744408, 19.448856>,  <30.439440, 32.738514, 19.218851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507725, 32.744408, 19.448856>,  <30.621532, 32.754230, 19.832199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507725, 32.744408, 19.448856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507486, -0.851974, -0.128833,
		-0.813330, -0.523008, 0.254867,
		-0.284520, -0.024558, -0.958356,
		30.422369, 32.737041, 19.161350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448961, 32.090019, 19.758652>,  <30.621532, 32.754230, 19.832199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448961, 32.090019, 19.758652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523258, 32.226704, 19.390144>,  <30.567837, 32.308712, 19.169041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523258, 32.226704, 19.390144>,  <30.448961, 32.090019, 19.758652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523258, 32.226704, 19.390144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652417, -0.743974, -0.144411,
		-0.734747, -0.574228, -0.361123,
		0.185741, 0.341708, -0.921269,
		30.578981, 32.329216, 19.113764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121206, 31.618103, 19.299049>,  <30.448961, 32.090019, 19.758652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121206, 31.618103, 19.299049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409409, 31.811306, 19.100021>,  <30.582331, 31.927227, 18.980604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409409, 31.811306, 19.100021>,  <30.121206, 31.618103, 19.299049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409409, 31.811306, 19.100021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418839, -0.874979, -0.242870,
		-0.552669, -0.033411, -0.832731,
		0.720508, 0.483006, -0.497568,
		30.625561, 31.956207, 18.950750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050531, 31.377531, 18.680254>,  <30.121206, 31.618103, 19.299049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050531, 31.377531, 18.680254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420488, 31.524822, 18.718166>,  <30.642462, 31.613197, 18.740913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420488, 31.524822, 18.718166>,  <30.050531, 31.377531, 18.680254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420488, 31.524822, 18.718166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378804, -0.870764, -0.313492,
		-0.032902, 0.325850, -0.944849,
		0.924892, 0.368227, 0.094783,
		30.697956, 31.635290, 18.746601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270626, 31.196981, 18.074757>,  <30.050531, 31.377531, 18.680254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270626, 31.196981, 18.074757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580450, 31.275753, 18.315182>,  <30.766344, 31.323015, 18.459436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580450, 31.275753, 18.315182>,  <30.270626, 31.196981, 18.074757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580450, 31.275753, 18.315182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440914, -0.849452, -0.289873,
		0.453490, 0.489541, -0.744779,
		0.774559, 0.196929, 0.601064,
		30.812819, 31.334831, 18.495501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950354, 31.338165, 17.667036>,  <30.270626, 31.196981, 18.074757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950354, 31.338165, 17.667036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052799, 31.222618, 18.036026>,  <31.114267, 31.153290, 18.257420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052799, 31.222618, 18.036026>,  <30.950354, 31.338165, 17.667036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052799, 31.222618, 18.036026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576108, -0.720688, -0.385628,
		0.776212, 0.630210, -0.018160,
		0.256114, -0.288867, 0.922476,
		31.129633, 31.135958, 18.312769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380917, 30.804289, 17.465034>,  <30.950354, 31.338165, 17.667036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380917, 30.804289, 17.465034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403934, 30.769688, 17.862869>,  <31.417746, 30.748928, 18.101570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403934, 30.769688, 17.862869>,  <31.380917, 30.804289, 17.465034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403934, 30.769688, 17.862869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620176, -0.777603, -0.103511,
		0.782349, 0.622777, 0.008901,
		0.057543, -0.086502, 0.994588,
		31.421198, 30.743736, 18.161245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056129, 30.692377, 17.667810>,  <31.380917, 30.804289, 17.465034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056129, 30.692377, 17.667810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831148, 30.532967, 17.957588>,  <31.696159, 30.437321, 18.131454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831148, 30.532967, 17.957588>,  <32.056129, 30.692377, 17.667810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831148, 30.532967, 17.957588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534859, -0.843532, -0.048772,
		0.630531, 0.360045, 0.687604,
		-0.562456, -0.398524, 0.724446,
		31.662411, 30.413410, 18.174923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506954, 30.339146, 18.199589>,  <32.056129, 30.692377, 17.667810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506954, 30.339146, 18.199589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142014, 30.175388, 18.197792>,  <31.923050, 30.077133, 18.196714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142014, 30.175388, 18.197792>,  <32.506954, 30.339146, 18.199589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142014, 30.175388, 18.197792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407365, -0.906620, -0.109972,
		0.040950, -0.102162, 0.993925,
		-0.912347, -0.409393, -0.004491,
		31.868309, 30.052570, 18.196445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687897, 29.670424, 18.314695>,  <32.506954, 30.339146, 18.199589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687897, 29.670424, 18.314695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296207, 29.632042, 18.243229>,  <32.061195, 29.609013, 18.200350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296207, 29.632042, 18.243229>,  <32.687897, 29.670424, 18.314695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296207, 29.632042, 18.243229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140988, -0.955359, -0.259639,
		-0.145775, -0.279433, 0.949035,
		-0.979220, -0.095953, -0.178664,
		32.002441, 29.603256, 18.189631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784817, 29.614283, 19.077211>,  <32.687897, 29.670424, 18.314695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784817, 29.614283, 19.077211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166779, 29.619495, 19.195858>,  <33.395958, 29.622623, 19.267046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166779, 29.619495, 19.195858>,  <32.784817, 29.614283, 19.077211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166779, 29.619495, 19.195858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144362, 0.893368, 0.425503,
		-0.259445, -0.449136, 0.854965,
		0.954907, 0.013030, 0.296618,
		33.453251, 29.623404, 19.284843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696697, 30.082331, 19.522341>,  <32.784817, 29.614283, 19.077211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696697, 30.082331, 19.522341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094841, 30.084194, 19.483910>,  <33.333729, 30.085312, 19.460850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094841, 30.084194, 19.483910>,  <32.696697, 30.082331, 19.522341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094841, 30.084194, 19.483910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011167, 0.986481, 0.163497,
		0.095542, -0.163812, 0.981854,
		0.995363, 0.004657, -0.096079,
		33.393452, 30.085590, 19.455086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988152, 30.263472, 20.226717>,  <32.696697, 30.082331, 19.522341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988152, 30.263472, 20.226717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274849, 30.340847, 19.958729>,  <33.446869, 30.387272, 19.797935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274849, 30.340847, 19.958729>,  <32.988152, 30.263472, 20.226717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274849, 30.340847, 19.958729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146692, 0.897434, 0.416046,
		0.681733, -0.396477, 0.614854,
		0.716744, 0.193438, -0.669970,
		33.489872, 30.398878, 19.757738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587559, 30.612528, 20.593678>,  <32.988152, 30.263472, 20.226717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587559, 30.612528, 20.593678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598328, 30.713287, 20.206726>,  <33.604790, 30.773743, 19.974556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598328, 30.713287, 20.206726>,  <33.587559, 30.612528, 20.593678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598328, 30.713287, 20.206726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255227, 0.933924, 0.250290,
		0.966506, -0.253638, -0.039151,
		0.026919, 0.251899, -0.967379,
		33.606403, 30.788857, 19.916512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279228, 30.987377, 20.448605>,  <33.587559, 30.612528, 20.593678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279228, 30.987377, 20.448605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025921, 31.113770, 20.166008>,  <33.873936, 31.189606, 19.996450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025921, 31.113770, 20.166008>,  <34.279228, 30.987377, 20.448605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025921, 31.113770, 20.166008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180724, 0.947995, 0.262001,
		0.752536, 0.038237, -0.657440,
		-0.633268, 0.315981, -0.706490,
		33.835941, 31.208563, 19.954062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583019, 31.574081, 20.154762>,  <34.279228, 30.987377, 20.448605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583019, 31.574081, 20.154762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211983, 31.629070, 20.015812>,  <33.989361, 31.662064, 19.932442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211983, 31.629070, 20.015812>,  <34.583019, 31.574081, 20.154762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211983, 31.629070, 20.015812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103226, 0.987949, 0.115335,
		0.359044, 0.071126, -0.930607,
		-0.927595, 0.137473, -0.347375,
		33.933704, 31.670313, 19.911600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683998, 32.153931, 19.624187>,  <34.583019, 31.574081, 20.154762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683998, 32.153931, 19.624187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299091, 32.133018, 19.730999>,  <34.068146, 32.120472, 19.795086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299091, 32.133018, 19.730999>,  <34.683998, 32.153931, 19.624187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299091, 32.133018, 19.730999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055104, 0.998476, -0.003075,
		-0.266461, -0.017673, -0.963684,
		-0.962269, -0.052283, 0.267029,
		34.010410, 32.117332, 19.811108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419846, 32.661419, 19.211817>,  <34.683998, 32.153931, 19.624187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419846, 32.661419, 19.211817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137928, 32.612968, 19.491413>,  <33.968777, 32.583897, 19.659170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137928, 32.612968, 19.491413>,  <34.419846, 32.661419, 19.211817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137928, 32.612968, 19.491413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066810, 0.992269, 0.104587,
		-0.706255, 0.027013, -0.707442,
		-0.704798, -0.121129, 0.698990,
		33.926487, 32.576630, 19.701111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884197, 33.182755, 19.065008>,  <34.419846, 32.661419, 19.211817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884197, 33.182755, 19.065008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858749, 33.092598, 19.453884>,  <33.843479, 33.038506, 19.687210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858749, 33.092598, 19.453884>,  <33.884197, 33.182755, 19.065008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858749, 33.092598, 19.453884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092431, 0.968645, 0.230616,
		-0.993684, 0.104533, -0.040795,
		-0.063623, -0.225389, 0.972189,
		33.839664, 33.024982, 19.745541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708462, 33.772270, 19.148361>,  <33.884197, 33.182755, 19.065008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708462, 33.772270, 19.148361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759510, 33.626999, 19.517536>,  <33.790138, 33.539837, 19.739040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759510, 33.626999, 19.517536>,  <33.708462, 33.772270, 19.148361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759510, 33.626999, 19.517536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098688, 0.921279, 0.376171,
		-0.986901, -0.139091, 0.081734,
		0.127622, -0.363178, 0.922938,
		33.797798, 33.518047, 19.794418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232841, 33.949738, 19.529150>,  <33.708462, 33.772270, 19.148361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232841, 33.949738, 19.529150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494904, 33.902466, 19.827625>,  <33.652142, 33.874104, 20.006710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494904, 33.902466, 19.827625>,  <33.232841, 33.949738, 19.529150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494904, 33.902466, 19.827625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021017, 0.984455, 0.174373,
		-0.755199, -0.129925, 0.642490,
		0.655159, -0.118183, 0.746190,
		33.691452, 33.867012, 20.051483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936615, 34.453453, 20.009010>,  <33.232841, 33.949738, 19.529150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936615, 34.453453, 20.009010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299660, 34.365955, 20.152336>,  <33.517487, 34.313457, 20.238331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299660, 34.365955, 20.152336>,  <32.936615, 34.453453, 20.009010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299660, 34.365955, 20.152336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037663, 0.892503, 0.449466,
		-0.418117, -0.394445, 0.818285,
		0.907612, -0.218748, 0.358315,
		33.571945, 34.300331, 20.259830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965477, 34.667595, 20.737049>,  <32.936615, 34.453453, 20.009010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965477, 34.667595, 20.737049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350155, 34.631077, 20.633663>,  <33.580963, 34.609165, 20.571632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350155, 34.631077, 20.633663>,  <32.965477, 34.667595, 20.737049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350155, 34.631077, 20.633663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231274, 0.776368, 0.586315,
		0.147137, -0.623634, 0.767745,
		0.961698, -0.091291, -0.258463,
		33.638664, 34.603691, 20.556124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395763, 34.786972, 21.378878>,  <32.965477, 34.667595, 20.737049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395763, 34.786972, 21.378878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640408, 34.841370, 21.067123>,  <33.787193, 34.874008, 20.880072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640408, 34.841370, 21.067123>,  <33.395763, 34.786972, 21.378878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640408, 34.841370, 21.067123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383860, 0.810390, 0.442629,
		0.691799, -0.569890, 0.443440,
		0.611609, 0.135991, -0.779384,
		33.823891, 34.882168, 20.833307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995029, 34.770771, 21.804714>,  <33.395763, 34.786972, 21.378878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995029, 34.770771, 21.804714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930489, 34.720432, 21.413177>,  <33.891762, 34.690231, 21.178255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930489, 34.720432, 21.413177>,  <33.995029, 34.770771, 21.804714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930489, 34.720432, 21.413177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632792, 0.747922, -0.200465,
		0.757324, -0.651748, -0.041047,
		-0.161353, -0.125843, -0.978840,
		33.882084, 34.682678, 21.119526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388321, 34.490875, 22.280878>,  <33.995029, 34.770771, 21.804714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388321, 34.490875, 22.280878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205627, 34.396626, 22.624012>,  <33.096012, 34.340076, 22.829891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205627, 34.396626, 22.624012>,  <33.388321, 34.490875, 22.280878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205627, 34.396626, 22.624012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004633, -0.964902, -0.262570,
		0.889593, -0.115949, 0.441791,
		-0.456730, -0.235627, 0.857833,
		33.068607, 34.325939, 22.881361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705654, 33.882145, 22.706615>,  <33.388321, 34.490875, 22.280878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705654, 33.882145, 22.706615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308163, 33.898743, 22.748138>,  <33.069668, 33.908699, 22.773052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308163, 33.898743, 22.748138>,  <33.705654, 33.882145, 22.706615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308163, 33.898743, 22.748138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059706, -0.982026, -0.179057,
		0.094511, -0.184132, 0.978347,
		-0.993732, 0.041490, 0.103806,
		33.010044, 33.911190, 22.779280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511208, 33.343113, 23.228859>,  <33.705654, 33.882145, 22.706615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511208, 33.343113, 23.228859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157635, 33.391079, 23.048069>,  <32.945492, 33.419857, 22.939594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157635, 33.391079, 23.048069>,  <33.511208, 33.343113, 23.228859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157635, 33.391079, 23.048069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137291, -0.990514, 0.005710,
		-0.447002, 0.067099, 0.892013,
		-0.883935, 0.119913, -0.451974,
		32.892456, 33.427052, 22.912477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989758, 33.067478, 23.649004>,  <33.511208, 33.343113, 23.228859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989758, 33.067478, 23.649004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847923, 33.078953, 23.275169>,  <32.762825, 33.085838, 23.050869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847923, 33.078953, 23.275169>,  <32.989758, 33.067478, 23.649004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847923, 33.078953, 23.275169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197397, -0.979298, 0.044831,
		-0.913951, 0.200380, 0.352904,
		-0.354582, 0.028689, -0.934585,
		32.741550, 33.087559, 22.994795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405693, 32.648579, 23.634604>,  <32.989758, 33.067478, 23.649004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405693, 32.648579, 23.634604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521923, 32.670887, 23.252514>,  <32.591660, 32.684273, 23.023260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521923, 32.670887, 23.252514>,  <32.405693, 32.648579, 23.634604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521923, 32.670887, 23.252514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036209, -0.998226, -0.047270,
		-0.956168, -0.020852, -0.292076,
		0.290572, 0.055774, -0.955226,
		32.609097, 32.687618, 22.965946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962946, 32.133781, 23.366899>,  <32.405693, 32.648579, 23.634604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962946, 32.133781, 23.366899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241100, 32.175404, 23.082474>,  <32.407993, 32.200378, 22.911818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241100, 32.175404, 23.082474>,  <31.962946, 32.133781, 23.366899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241100, 32.175404, 23.082474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091943, -0.968448, -0.231635,
		-0.712731, 0.226452, -0.663877,
		0.695385, 0.104054, -0.711064,
		32.449715, 32.206619, 22.869154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696436, 31.767231, 22.779884>,  <31.962946, 32.133781, 23.366899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696436, 31.767231, 22.779884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093971, 31.801754, 22.752064>,  <32.332493, 31.822468, 22.735371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093971, 31.801754, 22.752064>,  <31.696436, 31.767231, 22.779884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093971, 31.801754, 22.752064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066475, -0.966194, -0.249101,
		-0.088701, 0.242942, -0.965977,
		0.993838, 0.086309, -0.069553,
		32.392124, 31.827646, 22.731197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933508, 31.286821, 22.196209>,  <31.696436, 31.767231, 22.779884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933508, 31.286821, 22.196209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261631, 31.346684, 22.417007>,  <32.458504, 31.382601, 22.549486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261631, 31.346684, 22.417007>,  <31.933508, 31.286821, 22.196209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261631, 31.346684, 22.417007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231405, -0.969476, -0.081046,
		0.523019, 0.194217, -0.829898,
		0.820307, 0.149654, 0.551997,
		32.507725, 31.391581, 22.582607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586742, 31.065371, 21.823620>,  <31.933508, 31.286821, 22.196209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586742, 31.065371, 21.823620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648861, 31.057659, 22.218693>,  <32.686131, 31.053032, 22.455736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648861, 31.057659, 22.218693>,  <32.586742, 31.065371, 21.823620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648861, 31.057659, 22.218693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349252, -0.934169, -0.073149,
		0.924071, 0.356309, -0.138338,
		0.155295, -0.019280, 0.987680,
		32.695450, 31.051876, 22.514997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131752, 30.583508, 21.892527>,  <32.586742, 31.065371, 21.823620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131752, 30.583508, 21.892527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978073, 30.622719, 22.259739>,  <32.885864, 30.646246, 22.480066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978073, 30.622719, 22.259739>,  <33.131752, 30.583508, 21.892527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978073, 30.622719, 22.259739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361287, -0.899089, 0.247204,
		0.849626, 0.426648, 0.310011,
		-0.384197, 0.098028, 0.918032,
		32.862816, 30.652126, 22.535149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554920, 30.203043, 22.253208>,  <33.131752, 30.583508, 21.892527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554920, 30.203043, 22.253208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241261, 30.223572, 22.500584>,  <33.053062, 30.235889, 22.649010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241261, 30.223572, 22.500584>,  <33.554920, 30.203043, 22.253208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241261, 30.223572, 22.500584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010838, -0.995290, 0.096339,
		0.620472, 0.082247, 0.779904,
		-0.784154, 0.051323, 0.618441,
		33.006016, 30.238968, 22.686115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675335, 29.791782, 22.745356>,  <33.554920, 30.203043, 22.253208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675335, 29.791782, 22.745356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280628, 29.793781, 22.810173>,  <33.043804, 29.794981, 22.849064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280628, 29.793781, 22.810173>,  <33.675335, 29.791782, 22.745356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280628, 29.793781, 22.810173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024615, -0.983317, 0.180229,
		0.160239, 0.181834, 0.970185,
		-0.986771, 0.004999, 0.162042,
		32.984596, 29.795280, 22.858786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571156, 29.533567, 23.386976>,  <33.675335, 29.791782, 22.745356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571156, 29.533567, 23.386976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216293, 29.490364, 23.207512>,  <33.003376, 29.464441, 23.099833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216293, 29.490364, 23.207512>,  <33.571156, 29.533567, 23.386976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216293, 29.490364, 23.207512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163107, -0.836084, 0.523793,
		-0.431693, 0.537863, 0.724117,
		-0.887152, -0.108009, -0.448660,
		32.950150, 29.457962, 23.072914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145321, 29.385427, 23.876219>,  <33.571156, 29.533567, 23.386976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145321, 29.385427, 23.876219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934113, 29.240269, 23.569103>,  <32.807388, 29.153173, 23.384834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934113, 29.240269, 23.569103>,  <33.145321, 29.385427, 23.876219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934113, 29.240269, 23.569103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222753, -0.813259, 0.537579,
		-0.819498, 0.454880, 0.348579,
		-0.528019, -0.362898, -0.767790,
		32.775707, 29.131399, 23.338766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722279, 28.951483, 24.194380>,  <33.145321, 29.385427, 23.876219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722279, 28.951483, 24.194380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700077, 28.838440, 23.811329>,  <32.686756, 28.770615, 23.581499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700077, 28.838440, 23.811329>,  <32.722279, 28.951483, 24.194380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700077, 28.838440, 23.811329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290104, -0.913165, 0.286303,
		-0.955384, 0.293704, -0.031299,
		-0.055507, -0.282609, -0.957628,
		32.683426, 28.753656, 23.524040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294983, 28.356495, 24.226637>,  <32.722279, 28.951483, 24.194380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294983, 28.356495, 24.226637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484447, 28.326466, 23.875637>,  <32.598125, 28.308449, 23.665037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484447, 28.326466, 23.875637>,  <32.294983, 28.356495, 24.226637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484447, 28.326466, 23.875637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092388, -0.995098, 0.035262,
		-0.875846, 0.064368, -0.478279,
		0.473665, -0.075071, -0.877500,
		32.626549, 28.303944, 23.612387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866369, 27.861473, 23.884569>,  <32.294983, 28.356495, 24.226637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866369, 27.861473, 23.884569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207855, 27.871082, 23.676495>,  <32.412746, 27.876848, 23.551649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207855, 27.871082, 23.676495>,  <31.866369, 27.861473, 23.884569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207855, 27.871082, 23.676495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001155, -0.999020, -0.044244,
		-0.520740, 0.037171, -0.852906,
		0.853714, 0.024025, -0.520187,
		32.463970, 27.878290, 23.520439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725660, 27.435896, 23.393236>,  <31.866369, 27.861473, 23.884569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725660, 27.435896, 23.393236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124493, 27.445766, 23.422142>,  <32.363792, 27.451689, 23.439486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124493, 27.445766, 23.422142>,  <31.725660, 27.435896, 23.393236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124493, 27.445766, 23.422142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040380, -0.973589, -0.224711,
		0.064813, 0.226973, -0.971742,
		0.997080, 0.024674, 0.072267,
		32.423618, 27.453169, 23.443823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949635, 26.984993, 22.711134>,  <31.725660, 27.435896, 23.393236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949635, 26.984993, 22.711134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272503, 27.033676, 22.942188>,  <32.466225, 27.062887, 23.080820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272503, 27.033676, 22.942188>,  <31.949635, 26.984993, 22.711134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272503, 27.033676, 22.942188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277106, -0.942126, -0.188710,
		0.521238, 0.312387, -0.794182,
		0.807170, 0.121710, 0.577636,
		32.514652, 27.070189, 23.115479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434921, 26.712839, 22.314600>,  <31.949635, 26.984993, 22.711134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434921, 26.712839, 22.314600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553905, 26.698895, 22.696239>,  <32.625298, 26.690527, 22.925222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553905, 26.698895, 22.696239>,  <32.434921, 26.712839, 22.314600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553905, 26.698895, 22.696239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129411, -0.988638, -0.076472,
		0.945923, 0.146218, -0.289569,
		0.297460, -0.034863, 0.954097,
		32.643143, 26.688437, 22.982470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138390, 26.497414, 22.256756>,  <32.434921, 26.712839, 22.314600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138390, 26.497414, 22.256756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020607, 26.407154, 22.628212>,  <32.949936, 26.352999, 22.851086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020607, 26.407154, 22.628212>,  <33.138390, 26.497414, 22.256756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020607, 26.407154, 22.628212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141940, -0.971273, -0.191002,
		0.945065, 0.075569, 0.318028,
		-0.294458, -0.225650, 0.928642,
		32.932270, 26.339458, 22.906805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660480, 26.093929, 22.509813>,  <33.138390, 26.497414, 22.256756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660480, 26.093929, 22.509813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312237, 26.039417, 22.698906>,  <33.103291, 26.006710, 22.812361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312237, 26.039417, 22.698906>,  <33.660480, 26.093929, 22.509813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312237, 26.039417, 22.698906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135220, -0.990146, -0.036416,
		0.473035, 0.032218, 0.880454,
		-0.870605, -0.136281, 0.472731,
		33.051056, 25.998533, 22.840725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786659, 25.557684, 23.015068>,  <33.660480, 26.093929, 22.509813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786659, 25.557684, 23.015068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386711, 25.562702, 23.019184>,  <33.146744, 25.565714, 23.021654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386711, 25.562702, 23.019184>,  <33.786659, 25.557684, 23.015068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386711, 25.562702, 23.019184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011961, -0.998407, 0.055137,
		0.010966, 0.055007, 0.998426,
		-0.999868, 0.012547, 0.010290,
		33.086750, 25.566465, 23.022270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601612, 25.048450, 23.522280>,  <33.786659, 25.557684, 23.015068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601612, 25.048450, 23.522280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275387, 25.098675, 23.296329>,  <33.079651, 25.128809, 23.160759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275387, 25.098675, 23.296329>,  <33.601612, 25.048450, 23.522280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275387, 25.098675, 23.296329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130904, -0.990902, -0.031257,
		-0.563662, 0.048452, 0.824583,
		-0.815567, 0.125560, -0.564876,
		33.030716, 25.136343, 23.126867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071880, 24.620138, 23.848267>,  <33.601612, 25.048450, 23.522280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071880, 24.620138, 23.848267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951618, 24.669308, 23.469955>,  <32.879463, 24.698809, 23.242970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951618, 24.669308, 23.469955>,  <33.071880, 24.620138, 23.848267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951618, 24.669308, 23.469955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260251, -0.964599, -0.042638,
		-0.917538, 0.233321, 0.322001,
		-0.300653, 0.122924, -0.945779,
		32.861423, 24.706184, 23.186222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565159, 24.091339, 23.748920>,  <33.071880, 24.620138, 23.848267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565159, 24.091339, 23.748920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651196, 24.193378, 23.371845>,  <32.702820, 24.254602, 23.145599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651196, 24.193378, 23.371845>,  <32.565159, 24.091339, 23.748920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651196, 24.193378, 23.371845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240398, -0.921749, -0.304283,
		-0.946543, 0.292070, -0.136939,
		0.215095, 0.255097, -0.942687,
		32.715725, 24.269907, 23.089039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946110, 23.876614, 23.362200>,  <32.565159, 24.091339, 23.748920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946110, 23.876614, 23.362200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248238, 23.902760, 23.101364>,  <32.429516, 23.918447, 22.944862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248238, 23.902760, 23.101364>,  <31.946110, 23.876614, 23.362200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248238, 23.902760, 23.101364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092306, -0.974484, -0.204598,
		-0.648824, 0.214729, -0.730013,
		0.755319, 0.065364, -0.652089,
		32.474834, 23.922369, 22.905737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241859, 24.154968, 23.135376>,  <31.946110, 23.876614, 23.362200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241859, 24.154968, 23.135376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904663, 24.056526, 23.326706>,  <30.702345, 23.997461, 23.441504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904663, 24.056526, 23.326706>,  <31.241859, 24.154968, 23.135376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904663, 24.056526, 23.326706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233182, 0.968502, 0.087353,
		-0.484758, -0.037899, -0.873827,
		-0.842992, -0.246106, 0.478326,
		30.651766, 23.982695, 23.470203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689499, 24.365860, 22.751352>,  <31.241859, 24.154968, 23.135376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689499, 24.365860, 22.751352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540665, 24.350677, 23.122322>,  <30.451365, 24.341568, 23.344904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540665, 24.350677, 23.122322>,  <30.689499, 24.365860, 22.751352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540665, 24.350677, 23.122322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251886, 0.965799, -0.061532,
		-0.893368, -0.256499, -0.368920,
		-0.372085, -0.037955, 0.927422,
		30.429039, 24.339291, 23.400549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942146, 24.811829, 22.743900>,  <30.689499, 24.365860, 22.751352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942146, 24.811829, 22.743900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111731, 24.807545, 23.106148>,  <30.213480, 24.804974, 23.323496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111731, 24.807545, 23.106148>,  <29.942146, 24.811829, 22.743900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111731, 24.807545, 23.106148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270031, 0.952956, 0.137684,
		-0.864489, -0.302917, 0.401122,
		0.423959, -0.010711, 0.905618,
		30.238918, 24.804331, 23.377832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467197, 25.176128, 23.105740>,  <29.942146, 24.811829, 22.743900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467197, 25.176128, 23.105740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771057, 25.183018, 23.365780>,  <29.953373, 25.187151, 23.521805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771057, 25.183018, 23.365780>,  <29.467197, 25.176128, 23.105740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771057, 25.183018, 23.365780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248249, 0.931630, 0.265401,
		-0.601084, -0.363000, 0.711989,
		0.759651, 0.017222, 0.650103,
		29.998953, 25.188185, 23.560810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148130, 25.517792, 23.654057>,  <29.467197, 25.176128, 23.105740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148130, 25.517792, 23.654057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543089, 25.565937, 23.695160>,  <29.780064, 25.594824, 23.719822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543089, 25.565937, 23.695160>,  <29.148130, 25.517792, 23.654057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543089, 25.565937, 23.695160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145477, 0.945950, 0.289854,
		-0.062314, -0.301150, 0.951539,
		0.987397, 0.120365, 0.102756,
		29.839308, 25.602047, 23.725986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
