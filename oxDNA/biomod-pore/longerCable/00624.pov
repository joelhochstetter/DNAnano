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
	<24.394346, 35.566681, 35.354465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472223, 35.322380, 35.047459>,  <24.518950, 35.175800, 34.863255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472223, 35.322380, 35.047459>,  <24.394346, 35.566681, 35.354465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.472223, 35.322380, 35.047459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471335, 0.744480, -0.472856,
		0.860196, -0.269695, 0.432814,
		0.194694, -0.610749, -0.767515,
		24.530632, 35.139156, 34.817204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.478710, 36.189064, 34.862991>,  <24.394346, 35.566681, 35.354465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.478710, 36.189064, 34.862991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.100157, 36.310108, 34.817768>,  <23.873024, 36.382736, 34.790634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.100157, 36.310108, 34.817768>,  <24.478710, 36.189064, 34.862991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.100157, 36.310108, 34.817768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202863, -0.284345, 0.937014,
		0.251403, 0.909711, 0.330488,
		-0.946384, 0.302612, -0.113062,
		23.816242, 36.400890, 34.783848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719965, 36.592289, 34.205803>,  <24.478710, 36.189064, 34.862991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719965, 36.592289, 34.205803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863773, 36.484650, 33.848404>,  <24.950058, 36.420067, 33.633965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863773, 36.484650, 33.848404>,  <24.719965, 36.592289, 34.205803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.863773, 36.484650, 33.848404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916521, -0.078060, 0.392297,
		-0.175311, -0.959945, 0.218568,
		0.359522, -0.269096, -0.893494,
		24.971630, 36.403919, 33.580357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308641, 36.110497, 34.034885>,  <24.719965, 36.592289, 34.205803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308641, 36.110497, 34.034885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233681, 36.422386, 34.273857>,  <25.188704, 36.609520, 34.417240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233681, 36.422386, 34.273857>,  <25.308641, 36.110497, 34.034885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.233681, 36.422386, 34.273857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744495, 0.509503, -0.431433,
		-0.640787, 0.363929, -0.675979,
		-0.187402, 0.779719, 0.597426,
		25.177460, 36.656303, 34.453087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510603, 35.773071, 34.718227>,  <25.308641, 36.110497, 34.034885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510603, 35.773071, 34.718227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558426, 35.730843, 35.113106>,  <25.587120, 35.705505, 35.350033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558426, 35.730843, 35.113106>,  <25.510603, 35.773071, 34.718227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558426, 35.730843, 35.113106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229014, -0.964583, -0.130893,
		0.966053, 0.241731, -0.091145,
		0.119558, -0.105576, 0.987198,
		25.594294, 35.699169, 35.409264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322964, 35.976749, 34.802486>,  <25.510603, 35.773071, 34.718227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322964, 35.976749, 34.802486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549536, 36.294098, 34.713299>,  <26.685480, 36.484509, 34.659786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549536, 36.294098, 34.713299>,  <26.322964, 35.976749, 34.802486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549536, 36.294098, 34.713299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535640, 0.560045, 0.632012,
		0.626296, -0.238558, 0.742189,
		0.566431, 0.793372, -0.222972,
		26.719465, 36.532108, 34.646408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197365, 36.420052, 35.474918>,  <26.322964, 35.976749, 34.802486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197365, 36.420052, 35.474918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288782, 36.642200, 35.155087>,  <26.343632, 36.775490, 34.963188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288782, 36.642200, 35.155087>,  <26.197365, 36.420052, 35.474918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288782, 36.642200, 35.155087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525341, 0.761828, 0.378992,
		0.819625, 0.333438, 0.465868,
		0.228541, 0.555371, -0.799582,
		26.357344, 36.808811, 34.915211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358965, 37.074379, 35.675552>,  <26.197365, 36.420052, 35.474918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358965, 37.074379, 35.675552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233698, 37.120632, 35.298500>,  <26.158539, 37.148384, 35.072269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233698, 37.120632, 35.298500>,  <26.358965, 37.074379, 35.675552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233698, 37.120632, 35.298500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694653, 0.648937, 0.310384,
		0.647599, 0.752004, -0.122903,
		-0.313166, 0.115629, -0.942633,
		26.139748, 37.155319, 35.015709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381712, 37.777164, 35.566017>,  <26.358965, 37.074379, 35.675552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381712, 37.777164, 35.566017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104185, 37.606125, 35.334229>,  <25.937670, 37.503502, 35.195156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104185, 37.606125, 35.334229>,  <26.381712, 37.777164, 35.566017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104185, 37.606125, 35.334229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642539, 0.730928, 0.229975,
		0.325212, 0.531890, -0.781876,
		-0.693816, -0.427595, -0.579467,
		25.896040, 37.477848, 35.160389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081881, 38.246925, 35.028214>,  <26.381712, 37.777164, 35.566017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081881, 38.246925, 35.028214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800613, 37.971264, 35.098221>,  <25.631853, 37.805866, 35.140224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800613, 37.971264, 35.098221>,  <26.081881, 38.246925, 35.028214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.800613, 37.971264, 35.098221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685565, 0.722406, 0.090166,
		-0.188571, -0.056583, -0.980428,
		-0.703166, -0.689150, 0.175016,
		25.589664, 37.764519, 35.150726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507931, 38.300240, 34.725163>,  <26.081881, 38.246925, 35.028214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507931, 38.300240, 34.725163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353878, 38.132416, 35.053951>,  <25.261446, 38.031723, 35.251225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353878, 38.132416, 35.053951>,  <25.507931, 38.300240, 34.725163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.353878, 38.132416, 35.053951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759842, 0.649649, -0.024421,
		-0.523749, -0.633977, -0.569000,
		-0.385133, -0.419559, 0.821975,
		25.238338, 38.006550, 35.300545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.813301, 38.421562, 34.767895>,  <25.507931, 38.300240, 34.725163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.813301, 38.421562, 34.767895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688145, 38.114796, 34.543774>,  <24.613050, 37.930737, 34.409302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688145, 38.114796, 34.543774>,  <24.813301, 38.421562, 34.767895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.688145, 38.114796, 34.543774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687598, 0.589864, -0.423403,
		0.655216, 0.252784, -0.711893,
		-0.312891, -0.766917, -0.560302,
		24.594276, 37.884720, 34.375683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909784, 38.920666, 35.289242>,  <24.813301, 38.421562, 34.767895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909784, 38.920666, 35.289242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803299, 38.972515, 35.671307>,  <24.739408, 39.003624, 35.900543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803299, 38.972515, 35.671307>,  <24.909784, 38.920666, 35.289242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.803299, 38.972515, 35.671307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251703, 0.965885, -0.060922,
		-0.930471, 0.224199, -0.289755,
		-0.266211, 0.129619, 0.955160,
		24.723436, 39.011402, 35.957855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.575474, 39.611118, 35.380634>,  <24.909784, 38.920666, 35.289242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.575474, 39.611118, 35.380634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709986, 39.492500, 35.738174>,  <24.790693, 39.421329, 35.952698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709986, 39.492500, 35.738174>,  <24.575474, 39.611118, 35.380634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.709986, 39.492500, 35.738174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493896, 0.863668, 0.100721,
		-0.801862, 0.407601, 0.436897,
		0.336280, -0.296546, 0.893855,
		24.810869, 39.403538, 36.006332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.458513, 40.103745, 35.936707>,  <24.575474, 39.611118, 35.380634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.458513, 40.103745, 35.936707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795780, 39.895721, 35.991261>,  <24.998140, 39.770908, 36.023994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795780, 39.895721, 35.991261>,  <24.458513, 40.103745, 35.936707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.795780, 39.895721, 35.991261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522582, 0.852366, 0.019489,
		-0.126389, 0.054841, 0.990464,
		0.843169, -0.520061, 0.136388,
		25.048731, 39.739704, 36.032177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.885283, 40.384041, 36.538368>,  <24.458513, 40.103745, 35.936707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.885283, 40.384041, 36.538368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.974617, 40.772636, 36.570179>,  <25.028217, 41.005795, 36.589268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.974617, 40.772636, 36.570179>,  <24.885283, 40.384041, 36.538368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.974617, 40.772636, 36.570179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905413, -0.176539, -0.386085,
		-0.361038, 0.158236, -0.919028,
		0.223337, 0.971491, 0.079531,
		25.041618, 41.064083, 36.594040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.054928, 40.664658, 35.926155>,  <24.885283, 40.384041, 36.538368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.054928, 40.664658, 35.926155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252703, 40.879326, 36.199657>,  <25.371368, 41.008125, 36.363758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252703, 40.879326, 36.199657>,  <25.054928, 40.664658, 35.926155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.252703, 40.879326, 36.199657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868631, -0.333835, -0.366107,
		0.031782, 0.774946, -0.631228,
		0.494440, 0.536669, 0.683752,
		25.401035, 41.040325, 36.404781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553415, 41.069550, 35.587349>,  <25.054928, 40.664658, 35.926155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553415, 41.069550, 35.587349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707018, 41.029629, 35.954517>,  <25.799179, 41.005676, 36.174820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707018, 41.029629, 35.954517>,  <25.553415, 41.069550, 35.587349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707018, 41.029629, 35.954517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906609, -0.147584, -0.395321,
		0.174924, 0.984001, 0.033808,
		0.384007, -0.099802, 0.917920,
		25.822220, 40.999687, 36.229893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164455, 41.535122, 35.697193>,  <25.553415, 41.069550, 35.587349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164455, 41.535122, 35.697193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154818, 41.213196, 35.934410>,  <26.149035, 41.020042, 36.076740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154818, 41.213196, 35.934410>,  <26.164455, 41.535122, 35.697193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154818, 41.213196, 35.934410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921933, -0.247290, -0.298138,
		0.386598, 0.539560, 0.747941,
		-0.024095, -0.804812, 0.593041,
		26.147589, 40.971752, 36.112324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460676, 41.627655, 36.443954>,  <26.164455, 41.535122, 35.697193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460676, 41.627655, 36.443954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703758, 41.317539, 36.512802>,  <26.849607, 41.131470, 36.554111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703758, 41.317539, 36.512802>,  <26.460676, 41.627655, 36.443954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703758, 41.317539, 36.512802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759956, 0.630632, 0.157385,
		-0.230565, 0.035162, 0.972421,
		0.607706, -0.775285, 0.172123,
		26.886070, 41.084953, 36.564438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082699, 42.073044, 36.726910>,  <26.460676, 41.627655, 36.443954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082699, 42.073044, 36.726910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140297, 42.238434, 37.086533>,  <27.174856, 42.337666, 37.302307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140297, 42.238434, 37.086533>,  <27.082699, 42.073044, 36.726910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140297, 42.238434, 37.086533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186011, 0.881024, -0.434968,
		-0.971939, 0.229868, 0.049953,
		0.143994, 0.413471, 0.899059,
		27.183495, 42.362476, 37.356251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616268, 42.642456, 36.889999>,  <27.082699, 42.073044, 36.726910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616268, 42.642456, 36.889999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946844, 42.701832, 37.107243>,  <27.145189, 42.737457, 37.237587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946844, 42.701832, 37.107243>,  <26.616268, 42.642456, 36.889999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946844, 42.701832, 37.107243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192816, 0.831670, -0.520718,
		-0.528978, 0.535062, 0.658704,
		0.826441, 0.148439, 0.543104,
		27.194777, 42.746365, 37.270172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649817, 43.241726, 37.389771>,  <26.616268, 42.642456, 36.889999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649817, 43.241726, 37.389771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987387, 43.139332, 37.201191>,  <27.189928, 43.077896, 37.088043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987387, 43.139332, 37.201191>,  <26.649817, 43.241726, 37.389771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987387, 43.139332, 37.201191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018483, 0.892166, -0.451329,
		0.536144, 0.372174, 0.757652,
		0.843924, -0.255981, -0.471450,
		27.240564, 43.062538, 37.059757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946684, 43.950939, 37.389359>,  <26.649817, 43.241726, 37.389771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946684, 43.950939, 37.389359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162416, 43.696678, 37.168427>,  <27.291857, 43.544121, 37.035866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162416, 43.696678, 37.168427>,  <26.946684, 43.950939, 37.389359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162416, 43.696678, 37.168427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224482, 0.740694, -0.633230,
		0.811621, 0.217533, 0.542172,
		0.539332, -0.635651, -0.552330,
		27.324217, 43.505981, 37.002728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733192, 43.752823, 37.435444>,  <26.946684, 43.950939, 37.389359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.733192, 43.752823, 37.435444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029211, 44.013218, 37.503025>,  <28.206821, 44.169456, 37.543571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029211, 44.013218, 37.503025>,  <27.733192, 43.752823, 37.435444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029211, 44.013218, 37.503025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672517, 0.713584, 0.196264,
		0.007205, -0.258867, 0.965886,
		0.740047, 0.650989, 0.168951,
		28.251225, 44.208515, 37.553711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693041, 44.085876, 38.146736>,  <27.733192, 43.752823, 37.435444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693041, 44.085876, 38.146736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872541, 44.303585, 37.863216>,  <27.980242, 44.434208, 37.693104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872541, 44.303585, 37.863216>,  <27.693041, 44.085876, 38.146736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872541, 44.303585, 37.863216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593393, 0.774531, 0.219056,
		0.668213, 0.322296, 0.670535,
		0.448749, 0.544267, -0.708800,
		28.007166, 44.466866, 37.650578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188311, 44.619499, 38.286839>,  <27.693041, 44.085876, 38.146736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188311, 44.619499, 38.286839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960867, 44.713726, 37.971577>,  <27.824402, 44.770264, 37.782417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960867, 44.713726, 37.971577>,  <28.188311, 44.619499, 38.286839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960867, 44.713726, 37.971577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435675, 0.726468, 0.531442,
		0.697763, 0.645563, -0.310444,
		-0.568608, 0.235568, -0.788158,
		27.790285, 44.784397, 37.735130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251932, 45.321949, 37.952213>,  <28.188311, 44.619499, 38.286839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251932, 45.321949, 37.952213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882576, 45.169434, 37.969948>,  <27.660961, 45.077923, 37.980587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882576, 45.169434, 37.969948>,  <28.251932, 45.321949, 37.952213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882576, 45.169434, 37.969948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285058, 0.758481, 0.586044,
		-0.257079, 0.528511, -0.809065,
		-0.923392, -0.381290, 0.044333,
		27.605558, 45.055046, 37.983246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757761, 44.968979, 37.490906>,  <28.251932, 45.321949, 37.952213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757761, 44.968979, 37.490906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959280, 44.935154, 37.834774>,  <29.080191, 44.914860, 38.041096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959280, 44.935154, 37.834774>,  <28.757761, 44.968979, 37.490906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959280, 44.935154, 37.834774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833646, -0.308345, 0.458212,
		0.226329, -0.947509, -0.225837,
		0.503796, -0.084561, 0.859674,
		29.110418, 44.909786, 38.092674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822475, 45.788456, 37.330017>,  <28.757761, 44.968979, 37.490906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822475, 45.788456, 37.330017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512079, 45.958187, 37.516685>,  <28.325842, 46.060028, 37.628689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512079, 45.958187, 37.516685>,  <28.822475, 45.788456, 37.330017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512079, 45.958187, 37.516685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616504, -0.666590, -0.419023,
		0.133276, -0.612864, 0.778868,
		-0.775990, 0.424330, 0.466674,
		28.279282, 46.085487, 37.656689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025164, 46.400242, 37.019432>,  <28.822475, 45.788456, 37.330017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025164, 46.400242, 37.019432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944216, 46.088783, 36.781857>,  <28.895647, 45.901909, 36.639313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944216, 46.088783, 36.781857>,  <29.025164, 46.400242, 37.019432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944216, 46.088783, 36.781857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828122, -0.187674, 0.528198,
		-0.522744, 0.598743, -0.606833,
		-0.202368, -0.778643, -0.593937,
		28.883505, 45.855190, 36.603676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341475, 46.684925, 37.618958>,  <29.025164, 46.400242, 37.019432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341475, 46.684925, 37.618958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419405, 47.077244, 37.622440>,  <29.466164, 47.312637, 37.624531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419405, 47.077244, 37.622440>,  <29.341475, 46.684925, 37.618958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419405, 47.077244, 37.622440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979995, -0.195020, 0.039719,
		0.040654, 0.000791, -0.999173,
		0.194827, 0.980799, 0.008704,
		29.477854, 47.371483, 37.625050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794374, 46.784344, 37.007416>,  <29.341475, 46.684925, 37.618958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794374, 46.784344, 37.007416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804663, 46.961136, 37.366077>,  <29.810835, 47.067211, 37.581276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804663, 46.961136, 37.366077>,  <29.794374, 46.784344, 37.007416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804663, 46.961136, 37.366077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931960, -0.335090, 0.138440,
		0.361648, 0.832089, -0.420522,
		0.025719, 0.441976, 0.896658,
		29.812378, 47.093727, 37.635075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000607, 47.492821, 36.736904>,  <29.794374, 46.784344, 37.007416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000607, 47.492821, 36.736904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667566, 47.350655, 36.566986>,  <29.467741, 47.265354, 36.465034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667566, 47.350655, 36.566986>,  <30.000607, 47.492821, 36.736904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667566, 47.350655, 36.566986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473751, 0.059653, 0.878636,
		-0.286939, 0.932803, -0.218045,
		-0.832602, -0.355414, -0.424800,
		29.417786, 47.244030, 36.439545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532248, 47.288891, 36.181667>,  <30.000607, 47.492821, 36.736904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532248, 47.288891, 36.181667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403204, 47.052208, 35.886154>,  <30.325779, 46.910198, 35.708847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403204, 47.052208, 35.886154>,  <30.532248, 47.288891, 36.181667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403204, 47.052208, 35.886154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804600, -0.582533, 0.115215,
		-0.498541, -0.557258, 0.664018,
		-0.322608, -0.591708, -0.738787,
		30.306421, 46.874695, 35.664516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504162, 46.532677, 36.364098>,  <30.532248, 47.288891, 36.181667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504162, 46.532677, 36.364098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564751, 46.597225, 35.974018>,  <30.601103, 46.635956, 35.739971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564751, 46.597225, 35.974018>,  <30.504162, 46.532677, 36.364098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564751, 46.597225, 35.974018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884463, -0.462629, 0.060822,
		-0.441340, -0.871741, -0.212805,
		0.151471, 0.161376, -0.975200,
		30.610191, 46.645638, 35.681458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810204, 45.920376, 36.049362>,  <30.504162, 46.532677, 36.364098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810204, 45.920376, 36.049362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915913, 46.228184, 35.816811>,  <30.979338, 46.412868, 35.677280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915913, 46.228184, 35.816811>,  <30.810204, 45.920376, 36.049362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915913, 46.228184, 35.816811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912252, -0.395069, -0.108244,
		-0.312981, -0.501759, -0.806400,
		0.264271, 0.769519, -0.581379,
		30.995193, 46.459038, 35.642395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330334, 45.659237, 35.784851>,  <30.810204, 45.920376, 36.049362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330334, 45.659237, 35.784851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364187, 46.040768, 35.669579>,  <31.384499, 46.269688, 35.600414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364187, 46.040768, 35.669579>,  <31.330334, 45.659237, 35.784851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364187, 46.040768, 35.669579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988468, -0.116819, -0.096354,
		-0.125570, -0.276706, -0.952715,
		0.084633, 0.953828, -0.288184,
		31.389578, 46.326916, 35.583122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536371, 45.744270, 35.218555>,  <31.330334, 45.659237, 35.784851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536371, 45.744270, 35.218555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667631, 46.095329, 35.358299>,  <31.746387, 46.305965, 35.442146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667631, 46.095329, 35.358299>,  <31.536371, 45.744270, 35.218555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667631, 46.095329, 35.358299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927795, -0.229943, -0.293807,
		-0.177526, 0.420549, -0.889732,
		0.328148, 0.877647, 0.349362,
		31.766075, 46.358624, 35.463108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056774, 45.942867, 34.734943>,  <31.536371, 45.744270, 35.218555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056774, 45.942867, 34.734943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068974, 46.070946, 35.113689>,  <32.076294, 46.147793, 35.340935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068974, 46.070946, 35.113689>,  <32.056774, 45.942867, 34.734943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068974, 46.070946, 35.113689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966052, -0.252578, 0.054295,
		0.256541, 0.913062, -0.317025,
		0.030499, 0.320192, 0.946862,
		32.078125, 46.167004, 35.397747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085320, 45.571400, 34.049675>,  <32.056774, 45.942867, 34.734943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085320, 45.571400, 34.049675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871382, 45.660275, 33.723591>,  <31.743017, 45.713600, 33.527939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871382, 45.660275, 33.723591>,  <32.085320, 45.571400, 34.049675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871382, 45.660275, 33.723591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836034, -0.000613, -0.548677,
		-0.122410, -0.975004, -0.185429,
		-0.534849, 0.222188, -0.815212,
		31.710928, 45.726933, 33.479027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999691, 44.967072, 33.510666>,  <32.085320, 45.571400, 34.049675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999691, 44.967072, 33.510666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010872, 45.341778, 33.371124>,  <32.017582, 45.566601, 33.287399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010872, 45.341778, 33.371124>,  <31.999691, 44.967072, 33.510666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010872, 45.341778, 33.371124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929917, -0.152395, -0.334709,
		-0.366705, -0.315047, -0.875370,
		0.027952, 0.936761, -0.348852,
		32.019257, 45.622807, 33.266468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981884, 44.914589, 32.745148>,  <31.999691, 44.967072, 33.510666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981884, 44.914589, 32.745148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192589, 45.215435, 32.903557>,  <32.319012, 45.395943, 32.998604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192589, 45.215435, 32.903557>,  <31.981884, 44.914589, 32.745148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192589, 45.215435, 32.903557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791180, -0.263517, -0.551899,
		-0.310734, 0.604048, -0.733873,
		0.526762, 0.752120, 0.396027,
		32.350616, 45.441071, 33.022366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302906, 45.065060, 32.165051>,  <31.981884, 44.914589, 32.745148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302906, 45.065060, 32.165051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485348, 45.223091, 32.484020>,  <32.594814, 45.317909, 32.675404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485348, 45.223091, 32.484020>,  <32.302906, 45.065060, 32.165051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485348, 45.223091, 32.484020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889110, -0.240658, -0.389316,
		0.038097, 0.886566, -0.461031,
		0.456105, 0.395076, 0.797423,
		32.622181, 45.341614, 32.723248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930588, 45.201027, 31.854389>,  <32.302906, 45.065060, 32.165051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930588, 45.201027, 31.854389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992165, 45.230511, 32.248520>,  <33.029110, 45.248203, 32.484997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992165, 45.230511, 32.248520>,  <32.930588, 45.201027, 31.854389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992165, 45.230511, 32.248520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930408, -0.346519, -0.119437,
		0.332630, 0.935142, -0.121926,
		0.153940, 0.073712, 0.985327,
		33.038345, 45.252625, 32.544117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522507, 45.653500, 32.157951>,  <32.930588, 45.201027, 31.854389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522507, 45.653500, 32.157951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381054, 45.311184, 32.308987>,  <33.296181, 45.105797, 32.399609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381054, 45.311184, 32.308987>,  <33.522507, 45.653500, 32.157951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381054, 45.311184, 32.308987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852314, -0.461114, -0.246850,
		0.385364, 0.234533, 0.892462,
		-0.353632, -0.855785, 0.377592,
		33.274963, 45.054447, 32.422264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068787, 45.404808, 32.445705>,  <33.522507, 45.653500, 32.157951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068787, 45.404808, 32.445705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828941, 45.084743, 32.451405>,  <33.685032, 44.892704, 32.454823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828941, 45.084743, 32.451405>,  <34.068787, 45.404808, 32.445705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828941, 45.084743, 32.451405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798030, -0.599166, -0.064410,
		0.060073, -0.027254, 0.997822,
		-0.599616, -0.800161, 0.014244,
		33.649055, 44.844696, 32.455677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223301, 44.894314, 32.924461>,  <34.068787, 45.404808, 32.445705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223301, 44.894314, 32.924461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046165, 44.710392, 32.616570>,  <33.939884, 44.600040, 32.431835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046165, 44.710392, 32.616570>,  <34.223301, 44.894314, 32.924461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046165, 44.710392, 32.616570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872368, -0.419206, -0.251477,
		-0.207045, -0.782847, 0.586756,
		-0.442840, -0.459800, -0.769725,
		33.913315, 44.572453, 32.385651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553181, 44.175888, 32.898014>,  <34.223301, 44.894314, 32.924461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553181, 44.175888, 32.898014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414818, 44.253925, 32.530910>,  <34.331802, 44.300747, 32.310646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414818, 44.253925, 32.530910>,  <34.553181, 44.175888, 32.898014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414818, 44.253925, 32.530910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789641, -0.467779, -0.397053,
		-0.506772, -0.862045, 0.007754,
		-0.345905, 0.195093, -0.917763,
		34.311047, 44.312454, 32.255581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999348, 43.525936, 32.808449>,  <34.553181, 44.175888, 32.898014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999348, 43.525936, 32.808449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724171, 43.535427, 32.518299>,  <34.559063, 43.541122, 32.344208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724171, 43.535427, 32.518299>,  <34.999348, 43.525936, 32.808449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724171, 43.535427, 32.518299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393121, -0.827960, -0.399922,
		-0.610070, -0.560284, 0.560264,
		-0.687947, 0.023729, -0.725373,
		34.517788, 43.542545, 32.300686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635460, 42.823139, 32.639107>,  <34.999348, 43.525936, 32.808449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635460, 42.823139, 32.639107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631039, 43.040691, 32.303471>,  <34.628387, 43.171223, 32.102089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631039, 43.040691, 32.303471>,  <34.635460, 42.823139, 32.639107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631039, 43.040691, 32.303471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168752, -0.826091, -0.537678,
		-0.985597, -0.147540, -0.082651,
		-0.011051, 0.543881, -0.839090,
		34.627724, 43.203857, 32.051743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170143, 42.556091, 32.251614>,  <34.635460, 42.823139, 32.639107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170143, 42.556091, 32.251614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468765, 42.717545, 32.040051>,  <34.647938, 42.814415, 31.913113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468765, 42.717545, 32.040051>,  <34.170143, 42.556091, 32.251614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468765, 42.717545, 32.040051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218350, -0.899565, -0.378294,
		-0.628477, 0.166930, -0.759705,
		0.746552, 0.403631, -0.528907,
		34.692730, 42.838634, 31.881378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285324, 42.162670, 31.584881>,  <34.170143, 42.556091, 32.251614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285324, 42.162670, 31.584881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614826, 42.389141, 31.596762>,  <34.812527, 42.525024, 31.603889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614826, 42.389141, 31.596762>,  <34.285324, 42.162670, 31.584881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614826, 42.389141, 31.596762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526683, -0.744799, -0.409730,
		-0.209856, 0.353159, -0.911723,
		0.823751, 0.566174, 0.029702,
		34.861950, 42.558994, 31.605673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496555, 42.372540, 30.967094>,  <34.285324, 42.162670, 31.584881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496555, 42.372540, 30.967094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795021, 42.326511, 31.229391>,  <34.974102, 42.298893, 31.386768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795021, 42.326511, 31.229391>,  <34.496555, 42.372540, 30.967094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795021, 42.326511, 31.229391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371327, -0.745586, -0.553369,
		0.552589, 0.656399, -0.513600,
		0.746164, -0.115072, 0.655742,
		35.018871, 42.291988, 31.426113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282009, 43.107677, 30.911966>,  <34.496555, 42.372540, 30.967094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282009, 43.107677, 30.911966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530449, 43.291752, 30.658205>,  <34.679512, 43.402195, 30.505949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530449, 43.291752, 30.658205>,  <34.282009, 43.107677, 30.911966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530449, 43.291752, 30.658205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613736, -0.788995, 0.028540,
		-0.487406, -0.407081, -0.772477,
		0.621098, 0.460187, -0.634401,
		34.716778, 43.429810, 30.467884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263496, 42.747898, 30.267702>,  <34.282009, 43.107677, 30.911966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263496, 42.747898, 30.267702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593742, 42.928463, 30.403107>,  <34.791889, 43.036800, 30.484350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593742, 42.928463, 30.403107>,  <34.263496, 42.747898, 30.267702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593742, 42.928463, 30.403107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429123, -0.891894, 0.142753,
		0.366358, 0.027405, -0.930070,
		0.825612, 0.451414, 0.338512,
		34.841427, 43.063889, 30.504660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803192, 42.379780, 29.954315>,  <34.263496, 42.747898, 30.267702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803192, 42.379780, 29.954315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914009, 42.539536, 30.303883>,  <34.980499, 42.635387, 30.513622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914009, 42.539536, 30.303883>,  <34.803192, 42.379780, 29.954315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914009, 42.539536, 30.303883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384920, -0.879482, 0.279906,
		0.880388, 0.258843, -0.397388,
		0.277044, 0.399389, 0.873919,
		34.997124, 42.659351, 30.566059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573357, 42.327938, 29.995525>,  <34.803192, 42.379780, 29.954315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573357, 42.327938, 29.995525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412525, 42.328518, 30.361767>,  <35.316025, 42.328865, 30.581512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412525, 42.328518, 30.361767>,  <35.573357, 42.327938, 29.995525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412525, 42.328518, 30.361767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661637, -0.690783, 0.291643,
		0.632906, 0.723061, 0.276790,
		-0.402077, 0.001449, 0.915605,
		35.291901, 42.328953, 30.636448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164719, 42.489140, 30.422426>,  <35.573357, 42.327938, 29.995525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164719, 42.489140, 30.422426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874779, 42.282658, 30.604910>,  <35.700813, 42.158768, 30.714399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874779, 42.282658, 30.604910>,  <36.164719, 42.489140, 30.422426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874779, 42.282658, 30.604910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663586, -0.701059, 0.261093,
		0.185053, 0.491988, 0.850707,
		-0.724851, -0.516202, 0.456210,
		35.657322, 42.127796, 30.741774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209549, 42.461994, 31.206835>,  <36.164719, 42.489140, 30.422426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209549, 42.461994, 31.206835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064186, 42.128506, 31.040533>,  <35.976971, 41.928413, 30.940752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064186, 42.128506, 31.040533>,  <36.209549, 42.461994, 31.206835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064186, 42.128506, 31.040533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756899, -0.524405, 0.390003,
		-0.543176, -0.172956, 0.821612,
		-0.363405, -0.833718, -0.415755,
		35.955166, 41.878391, 30.915806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032337, 41.924095, 31.742529>,  <36.209549, 42.461994, 31.206835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032337, 41.924095, 31.742529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174690, 41.782490, 31.396576>,  <36.260101, 41.697525, 31.189003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174690, 41.782490, 31.396576>,  <36.032337, 41.924095, 31.742529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174690, 41.782490, 31.396576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602006, -0.621027, 0.501910,
		-0.714799, -0.699285, -0.007893,
		0.355880, -0.354013, -0.864884,
		36.281456, 41.676285, 31.137112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786011, 41.144760, 31.529701>,  <36.032337, 41.924095, 31.742529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786011, 41.144760, 31.529701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151997, 41.258293, 31.414965>,  <36.371590, 41.326412, 31.346123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151997, 41.258293, 31.414965>,  <35.786011, 41.144760, 31.529701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151997, 41.258293, 31.414965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393811, -0.783171, 0.481203,
		-0.088063, -0.553244, -0.828351,
		0.914963, 0.283837, -0.286842,
		36.426487, 41.343445, 31.328913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173389, 40.764717, 31.034679>,  <35.786011, 41.144760, 31.529701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173389, 40.764717, 31.034679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456291, 40.915138, 31.274139>,  <36.626030, 41.005390, 31.417816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456291, 40.915138, 31.274139>,  <36.173389, 40.764717, 31.034679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456291, 40.915138, 31.274139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175328, -0.913637, 0.366780,
		0.684876, -0.154446, -0.712104,
		0.707252, 0.376051, 0.598649,
		36.668468, 41.027954, 31.453733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871738, 40.345955, 30.942789>,  <36.173389, 40.764717, 31.034679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871738, 40.345955, 30.942789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851761, 40.523193, 31.300823>,  <36.839775, 40.629536, 31.515644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851761, 40.523193, 31.300823>,  <36.871738, 40.345955, 30.942789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851761, 40.523193, 31.300823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285851, -0.852370, 0.437899,
		0.956971, 0.277732, -0.084086,
		-0.049946, 0.443093, 0.895083,
		36.836777, 40.656120, 31.569347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418983, 39.930588, 30.503242>,  <36.871738, 40.345955, 30.942789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418983, 39.930588, 30.503242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447025, 39.711086, 30.170027>,  <37.463852, 39.579388, 29.970097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447025, 39.711086, 30.170027>,  <37.418983, 39.930588, 30.503242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447025, 39.711086, 30.170027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000777, 0.835125, -0.550059,
		0.997539, 0.037916, 0.058976,
		0.070108, -0.548751, -0.833041,
		37.468060, 39.546459, 29.920115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144135, 40.201576, 30.679609>,  <37.418983, 39.930588, 30.503242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144135, 40.201576, 30.679609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833214, 40.346184, 30.885563>,  <37.646660, 40.432949, 31.009134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833214, 40.346184, 30.885563>,  <38.144135, 40.201576, 30.679609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833214, 40.346184, 30.885563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070701, -0.763031, 0.642484,
		0.625142, 0.535807, 0.567546,
		-0.777302, 0.361518, 0.514885,
		37.600021, 40.454639, 31.040028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317081, 40.371994, 31.332458>,  <38.144135, 40.201576, 30.679609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317081, 40.371994, 31.332458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944553, 40.227669, 31.312649>,  <37.721035, 40.141071, 31.300762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944553, 40.227669, 31.312649>,  <38.317081, 40.371994, 31.332458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944553, 40.227669, 31.312649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272051, -0.779627, 0.564065,
		-0.242137, 0.511851, 0.824244,
		-0.931320, -0.360817, -0.049526,
		37.665157, 40.119423, 31.297791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665508, 39.780048, 31.669409>,  <38.317081, 40.371994, 31.332458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665508, 39.780048, 31.669409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274189, 39.794304, 31.587767>,  <38.039398, 39.802856, 31.538782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274189, 39.794304, 31.587767>,  <38.665508, 39.780048, 31.669409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274189, 39.794304, 31.587767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163178, -0.739569, 0.653001,
		-0.127679, 0.672136, 0.729336,
		-0.978300, 0.035637, -0.204105,
		37.980698, 39.804996, 31.526535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319141, 39.873966, 32.279209>,  <38.665508, 39.780048, 31.669409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319141, 39.873966, 32.279209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082031, 39.680191, 32.021854>,  <37.939766, 39.563927, 31.867441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082031, 39.680191, 32.021854>,  <38.319141, 39.873966, 32.279209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082031, 39.680191, 32.021854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044430, -0.777983, 0.626713,
		-0.804143, 0.400084, 0.439643,
		-0.592773, -0.484434, -0.643385,
		37.904198, 39.534863, 31.828838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821018, 39.501175, 32.737083>,  <38.319141, 39.873966, 32.279209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821018, 39.501175, 32.737083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751995, 39.332363, 32.381081>,  <37.710583, 39.231075, 32.167477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751995, 39.332363, 32.381081>,  <37.821018, 39.501175, 32.737083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751995, 39.332363, 32.381081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115277, -0.888700, 0.443760,
		-0.978231, 0.179170, 0.104699,
		-0.172554, -0.422030, -0.890009,
		37.700230, 39.205753, 32.114079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209465, 39.034611, 32.785831>,  <37.821018, 39.501175, 32.737083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209465, 39.034611, 32.785831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400112, 38.909576, 32.457169>,  <37.514500, 38.834557, 32.259972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400112, 38.909576, 32.457169>,  <37.209465, 39.034611, 32.785831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400112, 38.909576, 32.457169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168202, -0.949808, 0.263766,
		-0.862868, 0.012489, -0.505274,
		0.476619, -0.312584, -0.821660,
		37.543098, 38.815800, 32.210670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805511, 38.518269, 32.514343>,  <37.209465, 39.034611, 32.785831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805511, 38.518269, 32.514343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170067, 38.450333, 32.364395>,  <37.388798, 38.409569, 32.274426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170067, 38.450333, 32.364395>,  <36.805511, 38.518269, 32.514343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170067, 38.450333, 32.364395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025067, -0.932089, 0.361361,
		-0.410787, -0.319943, -0.853751,
		0.911386, -0.169843, -0.374870,
		37.443481, 38.399380, 32.251934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818520, 37.833366, 32.161030>,  <36.805511, 38.518269, 32.514343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818520, 37.833366, 32.161030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199585, 37.910690, 32.254887>,  <37.428226, 37.957085, 32.311199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199585, 37.910690, 32.254887>,  <36.818520, 37.833366, 32.161030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199585, 37.910690, 32.254887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059565, -0.875529, 0.479479,
		0.298120, -0.442809, -0.845603,
		0.952668, 0.193311, 0.234638,
		37.485386, 37.968685, 32.325279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196922, 37.407677, 31.859646>,  <36.818520, 37.833366, 32.161030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196922, 37.407677, 31.859646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439922, 37.504852, 32.162148>,  <37.585724, 37.563160, 32.343647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439922, 37.504852, 32.162148>,  <37.196922, 37.407677, 31.859646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439922, 37.504852, 32.162148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026677, -0.957783, 0.286252,
		0.793869, -0.153724, -0.588337,
		0.607503, 0.242942, 0.756253,
		37.622173, 37.577736, 32.389023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511002, 36.756329, 31.941408>,  <37.196922, 37.407677, 31.859646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511002, 36.756329, 31.941408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594349, 36.955681, 32.278027>,  <37.644360, 37.075291, 32.480000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594349, 36.955681, 32.278027>,  <37.511002, 36.756329, 31.941408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594349, 36.955681, 32.278027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004977, -0.859883, 0.510467,
		0.978037, -0.110554, -0.176694,
		0.208371, 0.498376, 0.841548,
		37.656860, 37.105194, 32.530491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884430, 36.253033, 32.362720>,  <37.511002, 36.756329, 31.941408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884430, 36.253033, 32.362720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765469, 36.539371, 32.615421>,  <37.694092, 36.711174, 32.767044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765469, 36.539371, 32.615421>,  <37.884430, 36.253033, 32.362720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765469, 36.539371, 32.615421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080329, -0.640589, 0.763670,
		0.951366, 0.277869, 0.133012,
		-0.297406, 0.715845, 0.631756,
		37.676247, 36.754124, 32.804947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279858, 36.184151, 32.900269>,  <37.884430, 36.253033, 32.362720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279858, 36.184151, 32.900269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971504, 36.387257, 33.054104>,  <37.786491, 36.509121, 33.146404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971504, 36.387257, 33.054104>,  <38.279858, 36.184151, 32.900269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971504, 36.387257, 33.054104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066034, -0.664234, 0.744602,
		0.633540, 0.548608, 0.545579,
		-0.770887, 0.507762, 0.384593,
		37.740238, 36.539585, 33.169483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410404, 36.031849, 33.544682>,  <38.279858, 36.184151, 32.900269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410404, 36.031849, 33.544682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042820, 36.188595, 33.562408>,  <37.822269, 36.282642, 33.573044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042820, 36.188595, 33.562408>,  <38.410404, 36.031849, 33.544682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042820, 36.188595, 33.562408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115340, -0.374528, 0.920014,
		0.377115, 0.840342, 0.389372,
		-0.918957, 0.391861, 0.044315,
		37.767132, 36.306152, 33.575703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328674, 36.372501, 34.262135>,  <38.410404, 36.031849, 33.544682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328674, 36.372501, 34.262135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968758, 36.298096, 34.104263>,  <37.752808, 36.253452, 34.009541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968758, 36.298096, 34.104263>,  <38.328674, 36.372501, 34.262135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968758, 36.298096, 34.104263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220406, -0.586885, 0.779094,
		-0.376552, 0.788013, 0.487077,
		-0.899794, -0.186015, -0.394676,
		37.698818, 36.242290, 33.985859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819180, 36.440334, 34.818089>,  <38.328674, 36.372501, 34.262135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819180, 36.440334, 34.818089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674183, 36.195629, 34.536850>,  <37.587185, 36.048805, 34.368107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674183, 36.195629, 34.536850>,  <37.819180, 36.440334, 34.818089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674183, 36.195629, 34.536850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328540, -0.622100, 0.710670,
		-0.872159, 0.488608, 0.024518,
		-0.362492, -0.611762, -0.703098,
		37.565434, 36.012100, 34.325920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107491, 36.411690, 35.071304>,  <37.819180, 36.440334, 34.818089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107491, 36.411690, 35.071304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180172, 36.088600, 34.846958>,  <37.223782, 35.894749, 34.712349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180172, 36.088600, 34.846958>,  <37.107491, 36.411690, 35.071304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180172, 36.088600, 34.846958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611080, -0.539610, 0.579139,
		-0.770432, 0.237504, -0.591631,
		0.181702, -0.807721, -0.560867,
		37.234684, 35.846283, 34.678699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447289, 36.189346, 34.892387>,  <37.107491, 36.411690, 35.071304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447289, 36.189346, 34.892387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665749, 35.857410, 34.846642>,  <36.796825, 35.658249, 34.819195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665749, 35.857410, 34.846642>,  <36.447289, 36.189346, 34.892387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665749, 35.857410, 34.846642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651468, -0.506590, 0.564762,
		-0.526606, -0.233930, -0.817290,
		0.546145, -0.829846, -0.114375,
		36.829594, 35.608459, 34.812332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979568, 35.622948, 34.735973>,  <36.447289, 36.189346, 34.892387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979568, 35.622948, 34.735973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314335, 35.463318, 34.885807>,  <36.515194, 35.367538, 34.975708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314335, 35.463318, 34.885807>,  <35.979568, 35.622948, 34.735973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314335, 35.463318, 34.885807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545478, -0.551792, 0.630856,
		-0.045067, -0.732300, -0.679489,
		0.836912, -0.399078, 0.374586,
		36.565407, 35.343594, 34.998184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693329, 35.103817, 35.013050>,  <35.979568, 35.622948, 34.735973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693329, 35.103817, 35.013050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065212, 35.089016, 35.159622>,  <36.288342, 35.080135, 35.247566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065212, 35.089016, 35.159622>,  <35.693329, 35.103817, 35.013050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065212, 35.089016, 35.159622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315648, -0.592682, 0.741009,
		0.189758, -0.804586, -0.562702,
		0.929709, -0.037004, 0.366432,
		36.344124, 35.077915, 35.269550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923519, 34.393711, 35.108639>,  <35.693329, 35.103817, 35.013050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923519, 34.393711, 35.108639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126938, 34.610920, 35.375923>,  <36.248989, 34.741245, 35.536293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126938, 34.610920, 35.375923>,  <35.923519, 34.393711, 35.108639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126938, 34.610920, 35.375923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309806, -0.608684, 0.730428,
		0.803368, -0.578473, -0.141313,
		0.508548, 0.543023, 0.668211,
		36.279503, 34.773827, 35.576385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143616, 33.898018, 35.501972>,  <35.923519, 34.393711, 35.108639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143616, 33.898018, 35.501972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212826, 34.223904, 35.723347>,  <36.254353, 34.419437, 35.856171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212826, 34.223904, 35.723347>,  <36.143616, 33.898018, 35.501972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212826, 34.223904, 35.723347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243880, -0.508974, 0.825511,
		0.954245, -0.277809, 0.110627,
		0.173028, 0.814719, 0.553438,
		36.264732, 34.468319, 35.889378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677456, 33.817055, 35.964344>,  <36.143616, 33.898018, 35.501972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677456, 33.817055, 35.964344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444664, 34.099083, 36.126415>,  <36.304989, 34.268299, 36.223660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444664, 34.099083, 36.126415>,  <36.677456, 33.817055, 35.964344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444664, 34.099083, 36.126415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196180, -0.605268, 0.771469,
		0.789186, 0.369490, 0.490575,
		-0.581979, 0.705073, 0.405182,
		36.270069, 34.310604, 36.247971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892056, 33.793404, 36.720837>,  <36.677456, 33.817055, 35.964344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892056, 33.793404, 36.720837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555416, 34.008663, 36.702450>,  <36.353432, 34.137817, 36.691418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555416, 34.008663, 36.702450>,  <36.892056, 33.793404, 36.720837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555416, 34.008663, 36.702450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253383, -0.318234, 0.913523,
		0.476986, 0.780462, 0.404183,
		-0.841595, 0.538150, -0.045963,
		36.302937, 34.170109, 36.688660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808037, 34.103104, 37.343643>,  <36.892056, 33.793404, 36.720837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808037, 34.103104, 37.343643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445129, 34.146530, 37.181122>,  <36.227386, 34.172585, 37.083611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445129, 34.146530, 37.181122>,  <36.808037, 34.103104, 37.343643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445129, 34.146530, 37.181122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419674, -0.171261, 0.891372,
		0.027190, 0.979226, 0.200942,
		-0.907268, 0.108566, -0.406299,
		36.172951, 34.179100, 37.059231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372986, 34.503147, 37.875847>,  <36.808037, 34.103104, 37.343643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372986, 34.503147, 37.875847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129326, 34.286263, 37.644348>,  <35.983131, 34.156132, 37.505447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129326, 34.286263, 37.644348>,  <36.372986, 34.503147, 37.875847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129326, 34.286263, 37.644348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430275, -0.387067, 0.815502,
		-0.666186, 0.745782, 0.002482,
		-0.609146, -0.542208, -0.578750,
		35.946583, 34.123600, 37.470722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729237, 34.523354, 38.262589>,  <36.372986, 34.503147, 37.875847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729237, 34.523354, 38.262589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694008, 34.225639, 37.997776>,  <35.672871, 34.047012, 37.838890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694008, 34.225639, 37.997776>,  <35.729237, 34.523354, 38.262589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694008, 34.225639, 37.997776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507503, -0.538361, 0.672761,
		-0.857137, 0.395233, -0.330313,
		-0.088070, -0.744284, -0.662031,
		35.667587, 34.002354, 37.799168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018948, 34.327526, 38.266190>,  <35.729237, 34.523354, 38.262589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018948, 34.327526, 38.266190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226810, 34.009731, 38.140495>,  <35.351528, 33.819054, 38.065079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226810, 34.009731, 38.140495>,  <35.018948, 34.327526, 38.266190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226810, 34.009731, 38.140495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573255, -0.596950, 0.561275,
		-0.633513, -0.111528, -0.765652,
		0.519654, -0.794489, -0.314241,
		35.382706, 33.771385, 38.046223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465530, 33.710667, 38.234184>,  <35.018948, 34.327526, 38.266190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465530, 33.710667, 38.234184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824471, 33.535000, 38.216785>,  <35.039837, 33.429600, 38.206345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824471, 33.535000, 38.216785>,  <34.465530, 33.710667, 38.234184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824471, 33.535000, 38.216785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350896, -0.769800, 0.533179,
		-0.267639, -0.463187, -0.844883,
		0.897352, -0.439166, -0.043498,
		35.093678, 33.403252, 38.203735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349735, 33.041725, 38.034878>,  <34.465530, 33.710667, 38.234184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349735, 33.041725, 38.034878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693138, 33.082005, 38.236008>,  <34.899178, 33.106171, 38.356686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693138, 33.082005, 38.236008>,  <34.349735, 33.041725, 38.034878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693138, 33.082005, 38.236008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377366, -0.539872, 0.752418,
		0.347226, -0.835702, -0.425483,
		0.858504, 0.100696, 0.502823,
		34.950691, 33.112213, 38.386856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535480, 32.381893, 38.160980>,  <34.349735, 33.041725, 38.034878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535480, 32.381893, 38.160980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740772, 32.603416, 38.423244>,  <34.863949, 32.736328, 38.580605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740772, 32.603416, 38.423244>,  <34.535480, 32.381893, 38.160980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740772, 32.603416, 38.423244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217546, -0.655057, 0.723584,
		0.830220, -0.514004, -0.215718,
		0.513233, 0.553805, 0.655661,
		34.894741, 32.769558, 38.619942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896324, 31.918837, 38.487148>,  <34.535480, 32.381893, 38.160980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896324, 31.918837, 38.487148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919247, 32.220055, 38.749336>,  <34.932999, 32.400787, 38.906647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919247, 32.220055, 38.749336>,  <34.896324, 31.918837, 38.487148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919247, 32.220055, 38.749336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148539, -0.642808, 0.751488,
		0.987245, -0.140425, 0.075022,
		0.057303, 0.753046, 0.655467,
		34.936436, 32.445969, 38.945976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187084, 31.587692, 39.076435>,  <34.896324, 31.918837, 38.487148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187084, 31.587692, 39.076435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052418, 31.935509, 39.220963>,  <34.971619, 32.144199, 39.307678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052418, 31.935509, 39.220963>,  <35.187084, 31.587692, 39.076435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052418, 31.935509, 39.220963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094148, -0.412883, 0.905905,
		0.936905, 0.270970, 0.220869,
		-0.336667, 0.869541, 0.361321,
		34.951416, 32.196373, 39.329357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541847, 31.711206, 39.695446>,  <35.187084, 31.587692, 39.076435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541847, 31.711206, 39.695446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204144, 31.922722, 39.730320>,  <35.001522, 32.049633, 39.751244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204144, 31.922722, 39.730320>,  <35.541847, 31.711206, 39.695446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204144, 31.922722, 39.730320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253241, -0.536999, 0.804675,
		0.472323, 0.657277, 0.587279,
		-0.844263, 0.528790, 0.087188,
		34.950863, 32.081360, 39.756477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541031, 31.829359, 40.379925>,  <35.541847, 31.711206, 39.695446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541031, 31.829359, 40.379925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165821, 31.884010, 40.252525>,  <34.940693, 31.916801, 40.176086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165821, 31.884010, 40.252525>,  <35.541031, 31.829359, 40.379925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165821, 31.884010, 40.252525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342147, -0.511353, 0.788323,
		-0.055158, 0.848440, 0.526409,
		-0.938026, 0.136627, -0.318496,
		34.884415, 31.924999, 40.156975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126862, 32.100994, 40.948517>,  <35.541031, 31.829359, 40.379925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126862, 32.100994, 40.948517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825432, 31.988482, 40.710861>,  <34.644573, 31.920975, 40.568268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825432, 31.988482, 40.710861>,  <35.126862, 32.100994, 40.948517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825432, 31.988482, 40.710861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517136, -0.304315, 0.799976,
		-0.405822, 0.910096, 0.083866,
		-0.753577, -0.281278, -0.594142,
		34.599358, 31.904099, 40.532619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421509, 32.272247, 41.278023>,  <35.126862, 32.100994, 40.948517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421509, 32.272247, 41.278023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332489, 31.988054, 41.010983>,  <34.279079, 31.817539, 40.850758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332489, 31.988054, 41.010983>,  <34.421509, 32.272247, 41.278023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332489, 31.988054, 41.010983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686018, -0.372433, 0.625039,
		-0.692715, 0.597085, -0.404519,
		-0.222546, -0.710481, -0.667601,
		34.265724, 31.774910, 40.810703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761932, 32.222477, 41.353905>,  <34.421509, 32.272247, 41.278023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761932, 32.222477, 41.353905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843712, 31.875593, 41.172291>,  <33.892780, 31.667463, 41.063320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843712, 31.875593, 41.172291>,  <33.761932, 32.222477, 41.353905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843712, 31.875593, 41.172291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769710, -0.428986, 0.472776,
		-0.604771, 0.252820, -0.755204,
		0.204445, -0.867210, -0.454037,
		33.905045, 31.615431, 41.036079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192295, 32.057487, 41.010017>,  <33.761932, 32.222477, 41.353905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192295, 32.057487, 41.010017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396809, 31.714218, 41.028481>,  <33.519516, 31.508257, 41.039558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396809, 31.714218, 41.028481>,  <33.192295, 32.057487, 41.010017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396809, 31.714218, 41.028481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840396, -0.488016, 0.235745,
		-0.179785, -0.159322, -0.970718,
		0.511285, -0.858171, 0.046156,
		33.550194, 31.456766, 41.042328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791443, 31.504322, 40.681133>,  <33.192295, 32.057487, 41.010017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791443, 31.504322, 40.681133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037361, 31.292894, 40.915276>,  <33.184914, 31.166039, 41.055759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037361, 31.292894, 40.915276>,  <32.791443, 31.504322, 40.681133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037361, 31.292894, 40.915276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783339, -0.495501, 0.375313,
		0.091664, -0.689270, -0.718682,
		0.614800, -0.528569, 0.585352,
		33.221802, 31.134323, 41.090881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594181, 30.767893, 40.554001>,  <32.791443, 31.504322, 40.681133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594181, 30.767893, 40.554001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807472, 30.726284, 40.889820>,  <32.935448, 30.701319, 41.091312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807472, 30.726284, 40.889820>,  <32.594181, 30.767893, 40.554001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807472, 30.726284, 40.889820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732770, -0.552716, 0.396929,
		0.422744, -0.826852, -0.370949,
		0.533231, -0.104021, 0.839550,
		32.967442, 30.695078, 41.141685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676392, 30.058714, 40.735268>,  <32.594181, 30.767893, 40.554001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676392, 30.058714, 40.735268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711933, 30.261377, 41.078289>,  <32.733257, 30.382975, 41.284103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711933, 30.261377, 41.078289>,  <32.676392, 30.058714, 40.735268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711933, 30.261377, 41.078289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727013, -0.555524, 0.403540,
		0.680850, -0.659311, 0.318987,
		0.088854, 0.506658, 0.857556,
		32.738590, 30.413374, 41.335556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482677, 29.584564, 41.264256>,  <32.676392, 30.058714, 40.735268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482677, 29.584564, 41.264256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435131, 29.928967, 41.462063>,  <32.406605, 30.135607, 41.580746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435131, 29.928967, 41.462063>,  <32.482677, 29.584564, 41.264256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435131, 29.928967, 41.462063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769271, -0.394747, 0.502392,
		0.627769, -0.320699, 0.709266,
		-0.118864, 0.861003, 0.494514,
		32.399471, 30.187267, 41.610416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337105, 29.354429, 41.972466>,  <32.482677, 29.584564, 41.264256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337105, 29.354429, 41.972466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205212, 29.729013, 41.924599>,  <32.126076, 29.953764, 41.895878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205212, 29.729013, 41.924599>,  <32.337105, 29.354429, 41.972466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205212, 29.729013, 41.924599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819079, -0.220739, 0.529513,
		0.469453, 0.272611, 0.839820,
		-0.329732, 0.936460, -0.119664,
		32.106293, 30.009951, 41.888699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166317, 29.627363, 42.677864>,  <32.337105, 29.354429, 41.972466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166317, 29.627363, 42.677864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959978, 29.835316, 42.405506>,  <31.836174, 29.960087, 42.242092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959978, 29.835316, 42.405506>,  <32.166317, 29.627363, 42.677864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959978, 29.835316, 42.405506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855455, -0.355054, 0.377005,
		-0.045757, 0.776955, 0.627891,
		-0.515851, 0.519882, -0.680896,
		31.805223, 29.991280, 42.201237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622889, 29.951004, 43.038826>,  <32.166317, 29.627363, 42.677864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622889, 29.951004, 43.038826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529257, 29.890512, 42.654671>,  <31.473078, 29.854218, 42.424179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529257, 29.890512, 42.654671>,  <31.622889, 29.951004, 43.038826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529257, 29.890512, 42.654671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712440, -0.645481, 0.275287,
		-0.661541, 0.748655, 0.043353,
		-0.234079, -0.151228, -0.960384,
		31.459034, 29.845144, 42.366554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826895, 29.892895, 43.050720>,  <31.622889, 29.951004, 43.038826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826895, 29.892895, 43.050720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971415, 29.720228, 42.720116>,  <31.058126, 29.616629, 42.521751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971415, 29.720228, 42.720116>,  <30.826895, 29.892895, 43.050720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971415, 29.720228, 42.720116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560546, -0.808893, 0.177429,
		-0.745152, 0.399195, -0.534221,
		0.361299, -0.431667, -0.826515,
		31.079803, 29.590729, 42.472160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271711, 30.399717, 43.034340>,  <30.826895, 29.892895, 43.050720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271711, 30.399717, 43.034340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477016, 30.292469, 43.360451>,  <30.600201, 30.228121, 43.556118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477016, 30.292469, 43.360451>,  <30.271711, 30.399717, 43.034340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477016, 30.292469, 43.360451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704282, 0.411282, 0.578647,
		-0.490455, -0.871182, 0.022264,
		0.513264, -0.268120, 0.815274,
		30.630997, 30.212032, 43.605034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799484, 29.903137, 43.346138>,  <30.271711, 30.399717, 43.034340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799484, 29.903137, 43.346138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041866, 30.141878, 43.556503>,  <30.187296, 30.285122, 43.682724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041866, 30.141878, 43.556503>,  <29.799484, 29.903137, 43.346138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041866, 30.141878, 43.556503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750865, 0.210795, 0.625913,
		0.262715, -0.774168, 0.575886,
		0.605956, 0.596850, 0.525916,
		30.223654, 30.320934, 43.714279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636648, 29.715208, 44.075375>,  <29.799484, 29.903137, 43.346138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636648, 29.715208, 44.075375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748751, 30.097622, 44.040840>,  <29.816013, 30.327070, 44.020119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748751, 30.097622, 44.040840>,  <29.636648, 29.715208, 44.075375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748751, 30.097622, 44.040840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745650, 0.273459, 0.607639,
		0.604534, -0.105916, 0.789506,
		0.280257, 0.956034, -0.086339,
		29.832829, 30.384432, 44.014938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984308, 29.497349, 43.680996>,  <29.636648, 29.715208, 44.075375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984308, 29.497349, 43.680996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782331, 29.555012, 43.340584>,  <28.661146, 29.589609, 43.136337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782331, 29.555012, 43.340584>,  <28.984308, 29.497349, 43.680996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782331, 29.555012, 43.340584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796938, 0.456582, -0.395503,
		0.331551, -0.877924, -0.345432,
		-0.504940, 0.144159, -0.851031,
		28.630850, 29.598259, 43.085274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388628, 29.230448, 43.184544>,  <28.984308, 29.497349, 43.680996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388628, 29.230448, 43.184544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147047, 29.510447, 43.032101>,  <29.002098, 29.678446, 42.940636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147047, 29.510447, 43.032101>,  <29.388628, 29.230448, 43.184544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147047, 29.510447, 43.032101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776028, 0.407445, -0.481424,
		-0.181716, -0.586507, -0.789296,
		-0.603953, 0.699999, -0.381107,
		28.965860, 29.720446, 42.917767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647467, 29.296112, 42.515358>,  <29.388628, 29.230448, 43.184544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647467, 29.296112, 42.515358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439499, 29.622961, 42.614956>,  <29.314718, 29.819071, 42.674717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439499, 29.622961, 42.614956>,  <29.647467, 29.296112, 42.515358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439499, 29.622961, 42.614956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668875, 0.570735, -0.476306,
		-0.531311, -0.081092, -0.843287,
		-0.519918, 0.817120, 0.248997,
		29.283524, 29.868097, 42.689655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406425, 29.842657, 42.002430>,  <29.647467, 29.296112, 42.515358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406425, 29.842657, 42.002430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467522, 30.067694, 42.327431>,  <29.504179, 30.202717, 42.522430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467522, 30.067694, 42.327431>,  <29.406425, 29.842657, 42.002430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467522, 30.067694, 42.327431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560709, 0.627678, -0.540023,
		-0.813803, 0.538061, -0.219578,
		0.152741, 0.562592, 0.812502,
		29.513344, 30.236471, 42.571182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079538, 30.534647, 42.019157>,  <29.406425, 29.842657, 42.002430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079538, 30.534647, 42.019157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412203, 30.538727, 42.241234>,  <29.611801, 30.541174, 42.374481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412203, 30.538727, 42.241234>,  <29.079538, 30.534647, 42.019157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412203, 30.538727, 42.241234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374685, 0.727604, -0.574633,
		-0.409818, 0.685921, 0.601299,
		0.831661, 0.010198, 0.555190,
		29.661701, 30.541786, 42.407791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211000, 31.146208, 42.238956>,  <29.079538, 30.534647, 42.019157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211000, 31.146208, 42.238956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565327, 30.971296, 42.176842>,  <29.777924, 30.866350, 42.139572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565327, 30.971296, 42.176842>,  <29.211000, 31.146208, 42.238956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565327, 30.971296, 42.176842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267943, 0.755226, -0.598197,
		0.378858, 0.488285, 0.786158,
		0.885818, -0.437278, -0.155291,
		29.831072, 30.840113, 42.130253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719341, 31.648930, 42.182579>,  <29.211000, 31.146208, 42.238956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719341, 31.648930, 42.182579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908913, 31.350346, 41.995735>,  <30.022655, 31.171194, 41.883629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908913, 31.350346, 41.995735>,  <29.719341, 31.648930, 42.182579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908913, 31.350346, 41.995735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365878, 0.649434, -0.666610,
		0.800952, 0.145022, 0.580899,
		0.473928, -0.746461, -0.467105,
		30.051090, 31.126408, 41.855602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340050, 31.830347, 42.002728>,  <29.719341, 31.648930, 42.182579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340050, 31.830347, 42.002728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286928, 31.523581, 41.751583>,  <30.255056, 31.339521, 41.600899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286928, 31.523581, 41.751583>,  <30.340050, 31.830347, 42.002728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286928, 31.523581, 41.751583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270638, 0.581337, -0.767335,
		0.953477, -0.271826, 0.130354,
		-0.132802, -0.766915, -0.627858,
		30.247087, 31.293507, 41.563225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002642, 31.810400, 41.565411>,  <30.340050, 31.830347, 42.002728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002642, 31.810400, 41.565411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729042, 31.615738, 41.348042>,  <30.564882, 31.498941, 41.217621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729042, 31.615738, 41.348042>,  <31.002642, 31.810400, 41.565411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729042, 31.615738, 41.348042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209903, 0.582140, -0.785527,
		0.698631, -0.651368, -0.296033,
		-0.684000, -0.486655, -0.543425,
		30.523842, 31.469742, 41.185013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304689, 31.838039, 41.010017>,  <31.002642, 31.810400, 41.565411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304689, 31.838039, 41.010017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939060, 31.728975, 40.889935>,  <30.719683, 31.663536, 40.817886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939060, 31.728975, 40.889935>,  <31.304689, 31.838039, 41.010017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939060, 31.728975, 40.889935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250171, 0.203518, -0.946570,
		0.319191, -0.940338, -0.117818,
		-0.914074, -0.272662, -0.300207,
		30.664837, 31.647177, 40.799873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363253, 31.410942, 40.297894>,  <31.304689, 31.838039, 41.010017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363253, 31.410942, 40.297894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995201, 31.561668, 40.340549>,  <30.774370, 31.652105, 40.366142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995201, 31.561668, 40.340549>,  <31.363253, 31.410942, 40.297894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995201, 31.561668, 40.340549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029383, 0.205114, -0.978297,
		-0.390513, -0.903292, -0.177659,
		-0.920129, 0.376818, 0.106641,
		30.719162, 31.674713, 40.372543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138531, 31.240166, 39.656555>,  <31.363253, 31.410942, 40.297894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138531, 31.240166, 39.656555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879097, 31.505850, 39.805237>,  <30.723436, 31.665260, 39.894447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879097, 31.505850, 39.805237>,  <31.138531, 31.240166, 39.656555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879097, 31.505850, 39.805237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007639, 0.494006, -0.869425,
		-0.761103, -0.561058, -0.325479,
		-0.648586, 0.664208, 0.371703,
		30.684521, 31.705112, 39.916748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684195, 31.516680, 39.052437>,  <31.138531, 31.240166, 39.656555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684195, 31.516680, 39.052437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689005, 31.773550, 39.359024>,  <30.691891, 31.927671, 39.542976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689005, 31.773550, 39.359024>,  <30.684195, 31.516680, 39.052437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689005, 31.773550, 39.359024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002376, 0.766536, -0.642197,
		-0.999925, 0.005902, 0.010745,
		0.012027, 0.642174, 0.766465,
		30.692614, 31.966202, 39.588963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085190, 31.901970, 39.008080>,  <30.684195, 31.516680, 39.052437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085190, 31.901970, 39.008080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327557, 32.125130, 39.234924>,  <30.472977, 32.259026, 39.371029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327557, 32.125130, 39.234924>,  <30.085190, 31.901970, 39.008080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327557, 32.125130, 39.234924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115015, 0.766816, -0.631478,
		-0.787171, 0.317396, 0.528793,
		0.605915, 0.557900, 0.567110,
		30.509331, 32.292500, 39.405056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788206, 32.544773, 38.986073>,  <30.085190, 31.901970, 39.008080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788206, 32.544773, 38.986073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158642, 32.624119, 39.114449>,  <30.380903, 32.671726, 39.191475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158642, 32.624119, 39.114449>,  <29.788206, 32.544773, 38.986073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158642, 32.624119, 39.114449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026181, 0.814801, -0.579150,
		-0.376390, 0.544748, 0.749387,
		0.926091, 0.198366, 0.320944,
		30.436470, 32.683628, 39.210732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777309, 33.213783, 39.090248>,  <29.788206, 32.544773, 38.986073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777309, 33.213783, 39.090248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165503, 33.126820, 39.048489>,  <30.398418, 33.074642, 39.023434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165503, 33.126820, 39.048489>,  <29.777309, 33.213783, 39.090248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165503, 33.126820, 39.048489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098241, 0.751697, -0.652151,
		0.220256, 0.622645, 0.750867,
		0.970482, -0.217406, -0.104396,
		30.456648, 33.061596, 39.017170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107765, 33.879967, 39.026943>,  <29.777309, 33.213783, 39.090248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107765, 33.879967, 39.026943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352171, 33.603420, 38.872707>,  <30.498814, 33.437492, 38.780167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352171, 33.603420, 38.872707>,  <30.107765, 33.879967, 39.026943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352171, 33.603420, 38.872707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342024, 0.669837, -0.659044,
		0.713919, 0.270805, 0.645743,
		0.611015, -0.691364, -0.385587,
		30.535475, 33.396011, 38.757030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725327, 34.270035, 38.959007>,  <30.107765, 33.879967, 39.026943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725327, 34.270035, 38.959007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762798, 33.942276, 38.732800>,  <30.785280, 33.745621, 38.597076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762798, 33.942276, 38.732800>,  <30.725327, 34.270035, 38.959007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762798, 33.942276, 38.732800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431626, 0.545283, -0.718586,
		0.897175, -0.176775, 0.404756,
		0.093678, -0.819400, -0.565515,
		30.790901, 33.696457, 38.563145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358227, 34.402481, 38.672813>,  <30.725327, 34.270035, 38.959007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358227, 34.402481, 38.672813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195015, 34.122818, 38.437969>,  <31.097088, 33.955021, 38.297062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195015, 34.122818, 38.437969>,  <31.358227, 34.402481, 38.672813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195015, 34.122818, 38.437969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626940, 0.252899, -0.736877,
		0.663670, -0.668749, 0.335137,
		-0.408030, -0.699154, -0.587107,
		31.072605, 33.913071, 38.261837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825846, 33.853039, 38.501106>,  <31.358227, 34.402481, 38.672813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825846, 33.853039, 38.501106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547915, 33.864468, 38.213661>,  <31.381155, 33.871323, 38.041195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547915, 33.864468, 38.213661>,  <31.825846, 33.853039, 38.501106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547915, 33.864468, 38.213661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702655, 0.239911, -0.669865,
		0.153263, -0.970374, -0.186772,
		-0.694828, 0.028571, -0.718608,
		31.339466, 33.873039, 37.998077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217651, 33.702888, 37.932964>,  <31.825846, 33.853039, 38.501106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217651, 33.702888, 37.932964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892797, 33.866001, 37.766041>,  <31.697884, 33.963867, 37.665886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892797, 33.866001, 37.766041>,  <32.217651, 33.702888, 37.932964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892797, 33.866001, 37.766041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477940, 0.054702, -0.876687,
		-0.334671, -0.911439, -0.239322,
		-0.812138, 0.407783, -0.417306,
		31.649157, 33.988335, 37.640850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120148, 33.351147, 37.339981>,  <32.217651, 33.702888, 37.932964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120148, 33.351147, 37.339981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921959, 33.693874, 37.282894>,  <31.803047, 33.899513, 37.248642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921959, 33.693874, 37.282894>,  <32.120148, 33.351147, 37.339981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921959, 33.693874, 37.282894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445632, 0.109708, -0.888469,
		-0.745603, -0.503806, -0.436184,
		-0.495468, 0.856822, -0.142713,
		31.773319, 33.950920, 37.240082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910208, 33.286953, 36.678837>,  <32.120148, 33.351147, 37.339981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910208, 33.286953, 36.678837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870117, 33.681980, 36.727280>,  <31.846064, 33.918995, 36.756348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870117, 33.681980, 36.727280>,  <31.910208, 33.286953, 36.678837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870117, 33.681980, 36.727280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407814, 0.151802, -0.900358,
		-0.907548, -0.040848, -0.417957,
		-0.100225, 0.987567, 0.121109,
		31.840050, 33.978249, 36.763611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715929, 33.482151, 36.066433>,  <31.910208, 33.286953, 36.678837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715929, 33.482151, 36.066433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867250, 33.806808, 36.244476>,  <31.958044, 34.001602, 36.351303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867250, 33.806808, 36.244476>,  <31.715929, 33.482151, 36.066433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867250, 33.806808, 36.244476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483909, 0.236510, -0.842553,
		-0.789125, 0.534134, -0.303288,
		0.378305, 0.811643, 0.445108,
		31.980742, 34.050301, 36.378010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668261, 34.044960, 35.493576>,  <31.715929, 33.482151, 36.066433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668261, 34.044960, 35.493576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926729, 34.174091, 35.770199>,  <32.081810, 34.251572, 35.936172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926729, 34.174091, 35.770199>,  <31.668261, 34.044960, 35.493576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926729, 34.174091, 35.770199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527993, 0.465195, -0.710504,
		-0.551077, 0.824243, 0.130145,
		0.646171, 0.322827, 0.691553,
		32.120579, 34.270939, 35.977665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725950, 34.774647, 35.371510>,  <31.668261, 34.044960, 35.493576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725950, 34.774647, 35.371510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050175, 34.643932, 35.565910>,  <32.244709, 34.565502, 35.682552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050175, 34.643932, 35.565910>,  <31.725950, 34.774647, 35.371510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050175, 34.643932, 35.565910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583789, 0.384705, -0.714977,
		0.046677, 0.863257, 0.502602,
		0.810563, -0.326786, 0.486003,
		32.293343, 34.545895, 35.711712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252838, 35.405346, 35.323101>,  <31.725950, 34.774647, 35.371510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252838, 35.405346, 35.323101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456703, 35.072983, 35.412392>,  <32.579021, 34.873566, 35.465965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456703, 35.072983, 35.412392>,  <32.252838, 35.405346, 35.323101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456703, 35.072983, 35.412392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717539, 0.267330, -0.643173,
		0.474743, 0.487978, 0.732459,
		0.509663, -0.830910, 0.223230,
		32.609604, 34.823711, 35.479362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043362, 35.594128, 35.455395>,  <32.252838, 35.405346, 35.323101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043362, 35.594128, 35.455395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150417, 35.208721, 35.454124>,  <33.214649, 34.977478, 35.453362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150417, 35.208721, 35.454124>,  <33.043362, 35.594128, 35.455395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150417, 35.208721, 35.454124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795410, 0.222799, -0.563635,
		0.543778, 0.148322, 0.826018,
		0.267635, -0.963515, -0.003176,
		33.230709, 34.919666, 35.453171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740292, 35.565250, 35.676426>,  <33.043362, 35.594128, 35.455395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740292, 35.565250, 35.676426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639053, 35.254410, 35.445930>,  <33.578312, 35.067905, 35.307632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639053, 35.254410, 35.445930>,  <33.740292, 35.565250, 35.676426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639053, 35.254410, 35.445930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813703, 0.151184, -0.561276,
		0.523289, -0.610942, 0.594069,
		-0.253094, -0.777105, -0.576238,
		33.563126, 35.021278, 35.273060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388878, 35.261768, 35.509331>,  <33.740292, 35.565250, 35.676426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388878, 35.261768, 35.509331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147354, 35.074841, 35.251022>,  <34.002438, 34.962685, 35.096039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147354, 35.074841, 35.251022>,  <34.388878, 35.261768, 35.509331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147354, 35.074841, 35.251022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737608, -0.020396, -0.674921,
		0.302235, -0.883852, 0.357016,
		-0.603812, -0.467323, -0.645772,
		33.966209, 34.934643, 35.057289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906422, 34.834885, 35.124954>,  <34.388878, 35.261768, 35.509331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906422, 34.834885, 35.124954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580021, 34.865788, 34.895809>,  <34.384182, 34.884331, 34.758324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580021, 34.865788, 34.895809>,  <34.906422, 34.834885, 35.124954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580021, 34.865788, 34.895809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576457, 0.182251, -0.796544,
		0.042863, -0.980212, -0.193255,
		-0.816002, 0.077261, -0.572862,
		34.335220, 34.888966, 34.723949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136951, 34.584785, 34.489532>,  <34.906422, 34.834885, 35.124954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136951, 34.584785, 34.489532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822636, 34.802666, 34.372337>,  <34.634045, 34.933392, 34.302021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822636, 34.802666, 34.372337>,  <35.136951, 34.584785, 34.489532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822636, 34.802666, 34.372337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479247, 0.236779, -0.845138,
		-0.390971, -0.804513, -0.447102,
		-0.785789, 0.544697, -0.292986,
		34.586899, 34.966076, 34.284443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022011, 34.425415, 33.822197>,  <35.136951, 34.584785, 34.489532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022011, 34.425415, 33.822197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844978, 34.782600, 33.855042>,  <34.738758, 34.996910, 33.874748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844978, 34.782600, 33.855042>,  <35.022011, 34.425415, 33.822197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844978, 34.782600, 33.855042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301731, 0.234525, -0.924098,
		-0.844440, -0.384214, -0.373231,
		-0.442583, 0.892960, 0.082113,
		34.712204, 35.050488, 33.879677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744995, 34.521282, 33.226929>,  <35.022011, 34.425415, 33.822197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744995, 34.521282, 33.226929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801105, 34.881222, 33.392139>,  <34.834770, 35.097187, 33.491264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801105, 34.881222, 33.392139>,  <34.744995, 34.521282, 33.226929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801105, 34.881222, 33.392139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290671, 0.361341, -0.885970,
		-0.946485, 0.244331, -0.210875,
		0.140272, 0.899853, 0.413024,
		34.843185, 35.151176, 33.516048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400665, 34.977386, 32.789814>,  <34.744995, 34.521282, 33.226929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400665, 34.977386, 32.789814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644314, 35.232723, 32.978062>,  <34.790504, 35.385925, 33.091011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644314, 35.232723, 32.978062>,  <34.400665, 34.977386, 32.789814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644314, 35.232723, 32.978062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071894, 0.546525, -0.834351,
		-0.789811, 0.542056, 0.287007,
		0.609121, 0.638346, 0.470623,
		34.827049, 35.424229, 33.119247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161804, 35.548248, 32.525936>,  <34.400665, 34.977386, 32.789814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161804, 35.548248, 32.525936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516285, 35.676907, 32.659321>,  <34.728973, 35.754101, 32.739353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516285, 35.676907, 32.659321>,  <34.161804, 35.548248, 32.525936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516285, 35.676907, 32.659321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012406, 0.703013, -0.711069,
		-0.463138, 0.634286, 0.619019,
		0.886200, 0.321643, 0.333460,
		34.782146, 35.773399, 32.759357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077126, 36.196236, 32.394466>,  <34.161804, 35.548248, 32.525936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077126, 36.196236, 32.394466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473694, 36.160728, 32.432854>,  <34.711636, 36.139423, 32.455887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473694, 36.160728, 32.432854>,  <34.077126, 36.196236, 32.394466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473694, 36.160728, 32.432854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130466, 0.718248, -0.683446,
		-0.008260, 0.690101, 0.723666,
		0.991418, -0.088769, 0.095967,
		34.771118, 36.134098, 32.461643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365837, 36.910915, 32.511574>,  <34.077126, 36.196236, 32.394466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365837, 36.910915, 32.511574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688377, 36.701637, 32.401260>,  <34.881901, 36.576069, 32.335072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688377, 36.701637, 32.401260>,  <34.365837, 36.910915, 32.511574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688377, 36.701637, 32.401260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199177, 0.679288, -0.706326,
		0.556885, 0.514619, 0.651956,
		0.806355, -0.523196, -0.275785,
		34.930283, 36.544678, 32.318523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014591, 37.384590, 32.457184>,  <34.365837, 36.910915, 32.511574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014591, 37.384590, 32.457184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116982, 37.061409, 32.244888>,  <35.178417, 36.867500, 32.117512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116982, 37.061409, 32.244888>,  <35.014591, 37.384590, 32.457184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116982, 37.061409, 32.244888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340426, 0.589200, -0.732771,
		0.904757, 0.006898, 0.425872,
		0.255979, -0.807958, -0.530735,
		35.193775, 36.819023, 32.085667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607525, 37.588104, 32.188160>,  <35.014591, 37.384590, 32.457184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607525, 37.588104, 32.188160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460350, 37.289448, 31.966475>,  <35.372047, 37.110252, 31.833464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460350, 37.289448, 31.966475>,  <35.607525, 37.588104, 32.188160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460350, 37.289448, 31.966475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305935, 0.465635, -0.830415,
		0.878082, -0.475091, 0.057101,
		-0.367934, -0.746642, -0.554212,
		35.349968, 37.065456, 31.800211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083286, 37.516758, 31.755577>,  <35.607525, 37.588104, 32.188160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083286, 37.516758, 31.755577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747074, 37.370766, 31.595425>,  <35.545345, 37.283173, 31.499334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747074, 37.370766, 31.595425>,  <36.083286, 37.516758, 31.755577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747074, 37.370766, 31.595425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274025, 0.351112, -0.895338,
		0.467356, -0.862271, -0.195107,
		-0.840529, -0.364977, -0.400379,
		35.494915, 37.261272, 31.475311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321095, 37.290688, 31.142603>,  <36.083286, 37.516758, 31.755577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321095, 37.290688, 31.142603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927090, 37.298031, 31.074005>,  <35.690685, 37.302437, 31.032846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927090, 37.298031, 31.074005>,  <36.321095, 37.290688, 31.142603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927090, 37.298031, 31.074005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152399, 0.558190, -0.815597,
		0.080754, -0.829510, -0.552623,
		-0.985014, 0.018357, -0.171492,
		35.631584, 37.303539, 31.022558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253662, 37.166233, 30.516077>,  <36.321095, 37.290688, 31.142603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253662, 37.166233, 30.516077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903881, 37.341824, 30.598669>,  <35.694012, 37.447178, 30.648224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903881, 37.341824, 30.598669>,  <36.253662, 37.166233, 30.516077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903881, 37.341824, 30.598669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020590, 0.458830, -0.888286,
		-0.484679, -0.772510, -0.410262,
		-0.874450, 0.438980, 0.206479,
		35.641544, 37.473518, 30.660612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030457, 37.164181, 29.912043>,  <36.253662, 37.166233, 30.516077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030457, 37.164181, 29.912043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819817, 37.439381, 30.111782>,  <35.693432, 37.604500, 30.231627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819817, 37.439381, 30.111782>,  <36.030457, 37.164181, 29.912043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819817, 37.439381, 30.111782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007676, 0.583519, -0.812063,
		-0.850080, -0.431464, -0.301999,
		-0.526598, 0.688001, 0.499350,
		35.661839, 37.645782, 30.261587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464157, 37.384666, 29.522963>,  <36.030457, 37.164181, 29.912043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464157, 37.384666, 29.522963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525124, 37.689148, 29.775105>,  <35.561703, 37.871838, 29.926390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525124, 37.689148, 29.775105>,  <35.464157, 37.384666, 29.522963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525124, 37.689148, 29.775105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073954, 0.644800, -0.760765,
		-0.985546, 0.069334, 0.154570,
		0.152413, 0.761200, 0.630353,
		35.570847, 37.917507, 29.964211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763008, 37.321957, 29.557297>,  <35.464157, 37.384666, 29.522963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763008, 37.321957, 29.557297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510353, 37.276394, 29.250557>,  <34.358761, 37.249058, 29.066513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510353, 37.276394, 29.250557>,  <34.763008, 37.321957, 29.557297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510353, 37.276394, 29.250557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659356, -0.441352, 0.608653,
		-0.407781, 0.890075, 0.203668,
		-0.631636, -0.113908, -0.766851,
		34.320862, 37.242222, 29.020502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132694, 37.688118, 29.755524>,  <34.763008, 37.321957, 29.557297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132694, 37.688118, 29.755524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044064, 37.410652, 29.481375>,  <33.990887, 37.244175, 29.316885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044064, 37.410652, 29.481375>,  <34.132694, 37.688118, 29.755524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044064, 37.410652, 29.481375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683142, -0.391128, 0.616714,
		-0.695859, 0.604856, -0.387206,
		-0.221576, -0.693663, -0.685373,
		33.977592, 37.202553, 29.275763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401382, 37.740501, 29.654757>,  <34.132694, 37.688118, 29.755524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401382, 37.740501, 29.654757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528145, 37.389362, 29.511114>,  <33.604202, 37.178680, 29.424929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528145, 37.389362, 29.511114>,  <33.401382, 37.740501, 29.654757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528145, 37.389362, 29.511114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623235, -0.478138, 0.618840,
		-0.714949, 0.027695, -0.698628,
		0.316902, -0.877848, -0.359104,
		33.623215, 37.126007, 29.403383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719379, 37.464367, 29.696451>,  <33.401382, 37.740501, 29.654757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719379, 37.464367, 29.696451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944157, 37.139122, 29.635700>,  <33.079021, 36.943974, 29.599251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944157, 37.139122, 29.635700>,  <32.719379, 37.464367, 29.696451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944157, 37.139122, 29.635700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402092, -0.428971, 0.808892,
		-0.722872, -0.393482, -0.568003,
		0.561941, -0.813115, -0.151876,
		33.112740, 36.895187, 29.590137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306488, 36.876228, 29.398605>,  <32.719379, 37.464367, 29.696451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306488, 36.876228, 29.398605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631420, 36.723366, 29.574821>,  <32.826378, 36.631649, 29.680552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631420, 36.723366, 29.574821>,  <32.306488, 36.876228, 29.398605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631420, 36.723366, 29.574821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583053, -0.515075, 0.628289,
		-0.013194, -0.767236, -0.641229,
		0.812327, -0.382160, 0.440543,
		32.875118, 36.608719, 29.706984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157284, 36.202606, 29.481878>,  <32.306488, 36.876228, 29.398605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157284, 36.202606, 29.481878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454842, 36.239243, 29.746677>,  <32.633377, 36.261223, 29.905556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454842, 36.239243, 29.746677>,  <32.157284, 36.202606, 29.481878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454842, 36.239243, 29.746677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538340, -0.504835, 0.674782,
		0.396002, -0.858343, -0.326236,
		0.743890, 0.091590, 0.661996,
		32.678009, 36.266720, 29.945276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211300, 35.529076, 29.827187>,  <32.157284, 36.202606, 29.481878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211300, 35.529076, 29.827187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382931, 35.796581, 30.070051>,  <32.485909, 35.957085, 30.215771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382931, 35.796581, 30.070051>,  <32.211300, 35.529076, 29.827187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382931, 35.796581, 30.070051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491352, -0.391221, 0.778151,
		0.757935, -0.632218, 0.160735,
		0.429078, 0.668766, 0.607161,
		32.511654, 35.997211, 30.252199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580467, 35.190811, 30.228304>,  <32.211300, 35.529076, 29.827187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580467, 35.190811, 30.228304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475609, 35.528072, 30.416082>,  <32.412693, 35.730427, 30.528749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475609, 35.528072, 30.416082>,  <32.580467, 35.190811, 30.228304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475609, 35.528072, 30.416082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431253, -0.537535, 0.724622,
		0.863308, -0.012495, 0.504523,
		-0.262144, 0.843149, 0.469447,
		32.396965, 35.781017, 30.556917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825207, 35.102356, 31.025232>,  <32.580467, 35.190811, 30.228304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825207, 35.102356, 31.025232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539394, 35.382080, 31.033344>,  <32.367908, 35.549915, 31.038212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539394, 35.382080, 31.033344>,  <32.825207, 35.102356, 31.025232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539394, 35.382080, 31.033344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345763, -0.378192, 0.858731,
		0.608189, 0.606577, 0.512026,
		-0.714531, 0.699310, 0.020281,
		32.325035, 35.591873, 31.039429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842678, 35.287693, 31.682816>,  <32.825207, 35.102356, 31.025232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842678, 35.287693, 31.682816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498825, 35.412251, 31.520796>,  <32.292511, 35.486984, 31.423584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498825, 35.412251, 31.520796>,  <32.842678, 35.287693, 31.682816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498825, 35.412251, 31.520796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497636, -0.330786, 0.801835,
		0.115698, 0.890852, 0.439313,
		-0.859635, 0.311389, -0.405049,
		32.240936, 35.505669, 31.399281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414871, 35.431408, 32.263180>,  <32.842678, 35.287693, 31.682816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414871, 35.431408, 32.263180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142338, 35.416813, 31.970755>,  <31.978819, 35.408058, 31.795300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142338, 35.416813, 31.970755>,  <32.414871, 35.431408, 32.263180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142338, 35.416813, 31.970755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711268, -0.202875, 0.673008,
		-0.172869, 0.978524, 0.112275,
		-0.681332, -0.036485, -0.731064,
		31.937939, 35.405869, 31.751436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786478, 35.800560, 32.533329>,  <32.414871, 35.431408, 32.263180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786478, 35.800560, 32.533329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653893, 35.585842, 32.222980>,  <31.574341, 35.457012, 32.036770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653893, 35.585842, 32.222980>,  <31.786478, 35.800560, 32.533329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653893, 35.585842, 32.222980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824152, -0.235556, 0.515060,
		-0.459244, 0.810162, -0.364325,
		-0.331463, -0.536798, -0.775874,
		31.554453, 35.424801, 31.990219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122873, 36.008011, 32.390762>,  <31.786478, 35.800560, 32.533329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122873, 36.008011, 32.390762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157915, 35.636265, 32.247311>,  <31.178940, 35.413219, 32.161240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157915, 35.636265, 32.247311>,  <31.122873, 36.008011, 32.390762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157915, 35.636265, 32.247311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613607, -0.333949, 0.715517,
		-0.784737, 0.157376, -0.599516,
		0.087602, -0.929361, -0.358629,
		31.184196, 35.357456, 32.139721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401995, 35.764481, 32.379177>,  <31.122873, 36.008011, 32.390762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401995, 35.764481, 32.379177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647892, 35.449001, 32.381832>,  <30.795431, 35.259712, 32.383423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647892, 35.449001, 32.381832>,  <30.401995, 35.764481, 32.379177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647892, 35.449001, 32.381832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627961, -0.484343, 0.609161,
		-0.477230, -0.378646, -0.793019,
		0.614749, -0.788695, 0.006632,
		30.832315, 35.212391, 32.383823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956509, 35.190292, 32.354786>,  <30.401995, 35.764481, 32.379177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956509, 35.190292, 32.354786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302395, 35.034901, 32.482128>,  <30.509926, 34.941666, 32.558533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302395, 35.034901, 32.482128>,  <29.956509, 35.190292, 32.354786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302395, 35.034901, 32.482128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497418, -0.574534, 0.649989,
		-0.069600, -0.720412, -0.690045,
		0.864715, -0.388480, 0.318359,
		30.561810, 34.918358, 32.577637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913458, 34.459625, 32.312393>,  <29.956509, 35.190292, 32.354786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913458, 34.459625, 32.312393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191793, 34.547615, 32.585865>,  <30.358795, 34.600410, 32.749947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191793, 34.547615, 32.585865>,  <29.913458, 34.459625, 32.312393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191793, 34.547615, 32.585865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494160, -0.544136, 0.678027,
		0.521164, -0.809646, -0.269929,
		0.695840, 0.219976, 0.683679,
		30.400545, 34.613609, 32.790970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976086, 33.845394, 32.771370>,  <29.913458, 34.459625, 32.312393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976086, 33.845394, 32.771370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180880, 34.118011, 32.980507>,  <30.303757, 34.281582, 33.105991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180880, 34.118011, 32.980507>,  <29.976086, 33.845394, 32.771370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180880, 34.118011, 32.980507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337275, -0.400291, 0.852064,
		0.790009, -0.612588, 0.024924,
		0.511987, 0.681544, 0.522844,
		30.334476, 34.322475, 33.137360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300537, 33.447857, 33.360584>,  <29.976086, 33.845394, 32.771370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300537, 33.447857, 33.360584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290207, 33.833820, 33.465103>,  <30.284008, 34.065399, 33.527817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290207, 33.833820, 33.465103>,  <30.300537, 33.447857, 33.360584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290207, 33.833820, 33.465103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231526, -0.260055, 0.937426,
		0.972486, -0.036287, 0.230118,
		-0.025827, 0.964912, 0.261302,
		30.282459, 34.123295, 33.543495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744118, 33.504028, 33.898872>,  <30.300537, 33.447857, 33.360584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744118, 33.504028, 33.898872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507944, 33.825695, 33.926292>,  <30.366240, 34.018696, 33.942745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507944, 33.825695, 33.926292>,  <30.744118, 33.504028, 33.898872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507944, 33.825695, 33.926292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209973, -0.235060, 0.949030,
		0.779295, 0.545945, 0.307641,
		-0.590433, 0.804171, 0.068548,
		30.330814, 34.066948, 33.946857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854837, 33.797958, 34.583172>,  <30.744118, 33.504028, 33.898872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854837, 33.797958, 34.583172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493525, 33.930836, 34.474560>,  <30.276737, 34.010563, 34.409393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493525, 33.930836, 34.474560>,  <30.854837, 33.797958, 34.583172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493525, 33.930836, 34.474560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350588, -0.206657, 0.913444,
		0.247323, 0.920295, 0.303132,
		-0.903282, 0.332190, -0.271533,
		30.222540, 34.030495, 34.393101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579950, 34.097469, 35.205166>,  <30.854837, 33.797958, 34.583172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579950, 34.097469, 35.205166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262983, 34.092438, 34.961227>,  <30.072803, 34.089420, 34.814865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262983, 34.092438, 34.961227>,  <30.579950, 34.097469, 35.205166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262983, 34.092438, 34.961227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609149, -0.035819, 0.792246,
		-0.031809, 0.999279, 0.020721,
		-0.792417, -0.012578, -0.609850,
		30.025259, 34.088665, 34.778271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141479, 34.623089, 35.434742>,  <30.579950, 34.097469, 35.205166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141479, 34.623089, 35.434742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907206, 34.358658, 35.247147>,  <29.766642, 34.200001, 35.134590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907206, 34.358658, 35.247147>,  <30.141479, 34.623089, 35.434742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907206, 34.358658, 35.247147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489807, -0.172354, 0.854625,
		-0.645802, 0.730258, -0.222853,
		-0.585687, -0.661073, -0.468992,
		29.731499, 34.160336, 35.106449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555893, 34.690369, 35.812645>,  <30.141479, 34.623089, 35.434742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555893, 34.690369, 35.812645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512766, 34.336945, 35.630352>,  <29.486891, 34.124889, 35.520977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512766, 34.336945, 35.630352>,  <29.555893, 34.690369, 35.812645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512766, 34.336945, 35.630352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591460, -0.311451, 0.743756,
		-0.799093, 0.349737, -0.489013,
		-0.107816, -0.883562, -0.455734,
		29.480421, 34.071877, 35.493633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917337, 34.554226, 35.799927>,  <29.555893, 34.690369, 35.812645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917337, 34.554226, 35.799927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055710, 34.183090, 35.744152>,  <29.138733, 33.960407, 35.710690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055710, 34.183090, 35.744152>,  <28.917337, 34.554226, 35.799927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055710, 34.183090, 35.744152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529422, -0.315719, 0.787422,
		-0.774625, -0.198574, -0.600437,
		0.345930, -0.927841, -0.139435,
		29.159489, 33.904739, 35.702320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368286, 34.123322, 36.080265>,  <28.917337, 34.554226, 35.799927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368286, 34.123322, 36.080265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673687, 33.865353, 36.066788>,  <28.856928, 33.710571, 36.058701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673687, 33.865353, 36.066788>,  <28.368286, 34.123322, 36.080265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673687, 33.865353, 36.066788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327145, -0.431226, 0.840845,
		-0.556813, -0.630964, -0.540226,
		0.763502, -0.644926, -0.033695,
		28.902739, 33.671875, 36.056679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102402, 33.477451, 36.096024>,  <28.368286, 34.123322, 36.080265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102402, 33.477451, 36.096024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479280, 33.400669, 36.205872>,  <28.705408, 33.354599, 36.271782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479280, 33.400669, 36.205872>,  <28.102402, 33.477451, 36.096024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479280, 33.400669, 36.205872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332073, -0.644193, 0.689016,
		0.044649, -0.740383, -0.670700,
		0.942196, -0.191958, 0.274624,
		28.761940, 33.343082, 36.288258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128271, 32.719059, 36.278812>,  <28.102402, 33.477451, 36.096024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128271, 32.719059, 36.278812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438908, 32.872318, 36.478855>,  <28.625290, 32.964275, 36.598881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438908, 32.872318, 36.478855>,  <28.128271, 32.719059, 36.278812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438908, 32.872318, 36.478855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159900, -0.647944, 0.744715,
		0.609377, -0.658305, -0.441921,
		0.776590, 0.383149, 0.500105,
		28.671885, 32.987263, 36.628887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636772, 32.150654, 36.303532>,  <28.128271, 32.719059, 36.278812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636772, 32.150654, 36.303532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731163, 32.393700, 36.606876>,  <28.787798, 32.539528, 36.788883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731163, 32.393700, 36.606876>,  <28.636772, 32.150654, 36.303532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731163, 32.393700, 36.606876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319511, -0.688502, 0.651059,
		0.917729, -0.395942, 0.031668,
		0.235979, 0.607614, 0.758366,
		28.801956, 32.575985, 36.834385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060057, 31.785872, 36.801960>,  <28.636772, 32.150654, 36.303532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060057, 31.785872, 36.801960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937605, 32.102642, 37.013294>,  <28.864134, 32.292706, 37.140095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937605, 32.102642, 37.013294>,  <29.060057, 31.785872, 36.801960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937605, 32.102642, 37.013294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239839, -0.601238, 0.762227,
		0.921283, 0.106622, 0.373990,
		-0.306127, 0.791925, 0.528338,
		28.845766, 32.340221, 37.171795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292952, 31.621828, 37.457840>,  <29.060057, 31.785872, 36.801960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292952, 31.621828, 37.457840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033522, 31.915670, 37.537544>,  <28.877865, 32.091976, 37.585365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033522, 31.915670, 37.537544>,  <29.292952, 31.621828, 37.457840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033522, 31.915670, 37.537544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240155, -0.445913, 0.862257,
		0.722272, 0.511385, 0.465627,
		-0.648574, 0.734607, 0.199259,
		28.838949, 32.136051, 37.597321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545822, 32.011711, 38.129406>,  <29.292952, 31.621828, 37.457840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545822, 32.011711, 38.129406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152456, 32.025799, 38.058235>,  <28.916437, 32.034252, 38.015533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152456, 32.025799, 38.058235>,  <29.545822, 32.011711, 38.129406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152456, 32.025799, 38.058235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155696, -0.667162, 0.728460,
		-0.093049, 0.744080, 0.661579,
		-0.983413, 0.035223, -0.177930,
		28.857433, 32.036366, 38.004856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321188, 31.974602, 38.883690>,  <29.545822, 32.011711, 38.129406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321188, 31.974602, 38.883690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972950, 31.921341, 38.694237>,  <28.764008, 31.889385, 38.580563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972950, 31.921341, 38.694237>,  <29.321188, 31.974602, 38.883690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972950, 31.921341, 38.694237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370131, -0.456976, 0.808811,
		-0.324134, 0.879456, 0.348559,
		-0.870597, -0.133151, -0.473636,
		28.711771, 31.881395, 38.552147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759020, 32.243282, 39.324219>,  <29.321188, 31.974602, 38.883690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759020, 32.243282, 39.324219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589844, 31.995728, 39.059464>,  <28.488338, 31.847195, 38.900612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589844, 31.995728, 39.059464>,  <28.759020, 32.243282, 39.324219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589844, 31.995728, 39.059464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228457, -0.634014, 0.738806,
		-0.876887, 0.463683, 0.126760,
		-0.422939, -0.618890, -0.661890,
		28.462961, 31.810061, 38.860897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099918, 32.064594, 39.610119>,  <28.759020, 32.243282, 39.324219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099918, 32.064594, 39.610119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171438, 31.777195, 39.341255>,  <28.214350, 31.604755, 39.179935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171438, 31.777195, 39.341255>,  <28.099918, 32.064594, 39.610119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171438, 31.777195, 39.341255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424370, -0.672670, 0.606156,
		-0.887660, 0.176864, -0.425180,
		0.178799, -0.718494, -0.672158,
		28.225079, 31.561647, 39.139606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449167, 31.682602, 39.429485>,  <28.099918, 32.064594, 39.610119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449167, 31.682602, 39.429485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741390, 31.424685, 39.339573>,  <27.916725, 31.269934, 39.285625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741390, 31.424685, 39.339573>,  <27.449167, 31.682602, 39.429485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741390, 31.424685, 39.339573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436244, -0.693961, 0.572808,
		-0.525334, -0.320409, -0.788265,
		0.730559, -0.644791, -0.224785,
		27.960558, 31.231247, 39.272137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096212, 31.102146, 39.004681>,  <27.449167, 31.682602, 39.429485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096212, 31.102146, 39.004681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444962, 30.953440, 39.132198>,  <27.654211, 30.864216, 39.208710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444962, 30.953440, 39.132198>,  <27.096212, 31.102146, 39.004681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444962, 30.953440, 39.132198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488474, -0.706778, 0.511721,
		0.035075, -0.601877, -0.797818,
		0.871873, -0.371765, 0.318791,
		27.706524, 30.841909, 39.227837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040152, 30.416969, 38.884109>,  <27.096212, 31.102146, 39.004681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040152, 30.416969, 38.884109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346186, 30.432335, 39.141224>,  <27.529806, 30.441553, 39.295490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346186, 30.432335, 39.141224>,  <27.040152, 30.416969, 38.884109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346186, 30.432335, 39.141224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319263, -0.844259, 0.430462,
		0.559210, -0.534557, -0.633667,
		0.765086, 0.038412, 0.642782,
		27.575712, 30.443859, 39.334057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311472, 29.729780, 38.918327>,  <27.040152, 30.416969, 38.884109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311472, 29.729780, 38.918327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436605, 29.912258, 39.251560>,  <27.511684, 30.021746, 39.451500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436605, 29.912258, 39.251560>,  <27.311472, 29.729780, 38.918327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436605, 29.912258, 39.251560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341537, -0.764405, 0.546843,
		0.886278, -0.455597, -0.083323,
		0.312833, 0.456197, 0.833079,
		27.530455, 30.049118, 39.501484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034950, 29.633793, 39.108597>,  <27.311472, 29.729780, 38.918327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034950, 29.633793, 39.108597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220945, 29.280401, 39.131413>,  <28.332542, 29.068367, 39.145100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220945, 29.280401, 39.131413>,  <28.034950, 29.633793, 39.108597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220945, 29.280401, 39.131413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413745, 0.159902, -0.896240,
		0.782689, 0.440339, 0.439887,
		0.464988, -0.883478, 0.057035,
		28.360441, 29.015358, 39.148521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756495, 29.696028, 39.045658>,  <28.034950, 29.633793, 39.108597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756495, 29.696028, 39.045658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678883, 29.322676, 38.924889>,  <28.632317, 29.098665, 38.852428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678883, 29.322676, 38.924889>,  <28.756495, 29.696028, 39.045658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678883, 29.322676, 38.924889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281246, 0.241923, -0.928641,
		0.939816, -0.265096, 0.215569,
		-0.194028, -0.933379, -0.301920,
		28.620674, 29.042662, 38.834312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274126, 29.578709, 38.681198>,  <28.756495, 29.696028, 39.045658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274126, 29.578709, 38.681198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012373, 29.297705, 38.569294>,  <28.855322, 29.129103, 38.502151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012373, 29.297705, 38.569294>,  <29.274126, 29.578709, 38.681198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012373, 29.297705, 38.569294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169226, 0.224533, -0.959660,
		0.736985, -0.675327, -0.028047,
		-0.654382, -0.702509, -0.279761,
		28.816059, 29.086952, 38.485367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662302, 29.219299, 38.169876>,  <29.274126, 29.578709, 38.681198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662302, 29.219299, 38.169876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271822, 29.147371, 38.121380>,  <29.037535, 29.104214, 38.092281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271822, 29.147371, 38.121380>,  <29.662302, 29.219299, 38.169876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271822, 29.147371, 38.121380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050659, 0.354503, -0.933682,
		0.210876, -0.917601, -0.336956,
		-0.976199, -0.179821, -0.121241,
		28.978962, 29.093424, 38.085007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674667, 28.822784, 37.632187>,  <29.662302, 29.219299, 38.169876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674667, 28.822784, 37.632187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319729, 29.006126, 37.652309>,  <29.106766, 29.116131, 37.664383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319729, 29.006126, 37.652309>,  <29.674667, 28.822784, 37.632187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319729, 29.006126, 37.652309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078093, 0.256900, -0.963278,
		-0.454446, -0.850831, -0.263753,
		-0.887345, 0.458355, 0.050304,
		29.053526, 29.143633, 37.667400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293295, 28.616394, 37.057724>,  <29.674667, 28.822784, 37.632187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293295, 28.616394, 37.057724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103510, 28.947737, 37.176857>,  <28.989639, 29.146544, 37.248337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103510, 28.947737, 37.176857>,  <29.293295, 28.616394, 37.057724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103510, 28.947737, 37.176857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043341, 0.315949, -0.947786,
		-0.879207, -0.462599, -0.114004,
		-0.474464, 0.828359, 0.297834,
		28.961170, 29.196245, 37.266209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749750, 28.665493, 36.616646>,  <29.293295, 28.616394, 37.057724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749750, 28.665493, 36.616646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802738, 29.021223, 36.791714>,  <28.834532, 29.234661, 36.896755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802738, 29.021223, 36.791714>,  <28.749750, 28.665493, 36.616646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802738, 29.021223, 36.791714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059054, 0.433691, -0.899125,
		-0.989426, 0.144955, 0.004933,
		0.132472, 0.889326, 0.437665,
		28.842480, 29.288021, 36.923012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429926, 29.122498, 36.031498>,  <28.749750, 28.665493, 36.616646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429926, 29.122498, 36.031498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641575, 29.367113, 36.266800>,  <28.768564, 29.513882, 36.407982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641575, 29.367113, 36.266800>,  <28.429926, 29.122498, 36.031498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641575, 29.367113, 36.266800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341353, 0.481283, -0.807369,
		-0.776857, 0.628002, 0.045907,
		0.529123, 0.611539, 0.588258,
		28.800312, 29.550575, 36.443279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296169, 29.823606, 35.692017>,  <28.429926, 29.122498, 36.031498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296169, 29.823606, 35.692017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623030, 29.856466, 35.920231>,  <28.819145, 29.876183, 36.057159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623030, 29.856466, 35.920231>,  <28.296169, 29.823606, 35.692017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623030, 29.856466, 35.920231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469422, 0.479581, -0.741380,
		-0.334523, 0.873644, 0.353327,
		0.817152, 0.082149, 0.570539,
		28.868176, 29.881111, 36.091393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472456, 30.614437, 35.805527>,  <28.296169, 29.823606, 35.692017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472456, 30.614437, 35.805527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810564, 30.409140, 35.864994>,  <29.013430, 30.285961, 35.900673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810564, 30.409140, 35.864994>,  <28.472456, 30.614437, 35.805527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810564, 30.409140, 35.864994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488461, 0.629395, -0.604374,
		0.216622, 0.583475, 0.782708,
		0.845270, -0.513243, 0.148664,
		29.064144, 30.255167, 35.909592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978462, 31.184937, 35.979401>,  <28.472456, 30.614437, 35.805527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978462, 31.184937, 35.979401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185755, 30.859392, 35.874275>,  <29.310129, 30.664066, 35.811199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185755, 30.859392, 35.874275>,  <28.978462, 31.184937, 35.979401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185755, 30.859392, 35.874275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648452, 0.574274, -0.499719,
		0.557628, 0.088548, 0.825355,
		0.518229, -0.813860, -0.262812,
		29.341223, 30.615234, 35.795433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706320, 31.412531, 36.033962>,  <28.978462, 31.184937, 35.979401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706320, 31.412531, 36.033962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684172, 31.098602, 35.787067>,  <29.670883, 30.910244, 35.638931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684172, 31.098602, 35.787067>,  <29.706320, 31.412531, 36.033962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684172, 31.098602, 35.787067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564623, 0.485242, -0.667638,
		0.823489, -0.385477, 0.416260,
		-0.055372, -0.784823, -0.617241,
		29.667561, 30.863155, 35.601894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355947, 31.375940, 35.737286>,  <29.706320, 31.412531, 36.033962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355947, 31.375940, 35.737286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164219, 31.144444, 35.473373>,  <30.049181, 31.005545, 35.315025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164219, 31.144444, 35.473373>,  <30.355947, 31.375940, 35.737286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164219, 31.144444, 35.473373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550721, 0.386993, -0.739556,
		0.683341, -0.717840, 0.133231,
		-0.479323, -0.578742, -0.659778,
		30.020422, 30.970821, 35.275440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937668, 31.101875, 35.277435>,  <30.355947, 31.375940, 35.737286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937668, 31.101875, 35.277435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608850, 31.026522, 35.062492>,  <30.411560, 30.981310, 34.933525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608850, 31.026522, 35.062492>,  <30.937668, 31.101875, 35.277435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608850, 31.026522, 35.062492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473517, 0.297989, -0.828845,
		0.316270, -0.935796, -0.155756,
		-0.822043, -0.188386, -0.537360,
		30.362238, 30.970005, 34.901283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204941, 30.829048, 34.782822>,  <30.937668, 31.101875, 35.277435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204941, 30.829048, 34.782822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843454, 30.953773, 34.665474>,  <30.626562, 31.028608, 34.595066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843454, 30.953773, 34.665474>,  <31.204941, 30.829048, 34.782822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843454, 30.953773, 34.665474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414005, 0.461906, -0.784374,
		-0.109067, -0.830310, -0.546525,
		-0.903717, 0.311813, -0.293374,
		30.572340, 31.047318, 34.577461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120840, 30.595608, 34.071934>,  <31.204941, 30.829048, 34.782822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120840, 30.595608, 34.071934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879498, 30.903608, 34.154942>,  <30.734692, 31.088408, 34.204746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879498, 30.903608, 34.154942>,  <31.120840, 30.595608, 34.071934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879498, 30.903608, 34.154942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241607, 0.424489, -0.872603,
		-0.759993, -0.476350, -0.442154,
		-0.603354, 0.770000, 0.207519,
		30.698492, 31.134607, 34.217197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989027, 30.756338, 33.489681>,  <31.120840, 30.595608, 34.071934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989027, 30.756338, 33.489681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814760, 31.061934, 33.680058>,  <30.710201, 31.245291, 33.794281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814760, 31.061934, 33.680058>,  <30.989027, 30.756338, 33.489681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814760, 31.061934, 33.680058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156082, 0.584865, -0.795972,
		-0.886473, -0.272492, -0.374050,
		-0.435665, 0.763990, 0.475936,
		30.684061, 31.291130, 33.822838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311407, 30.977045, 33.151829>,  <30.989027, 30.756338, 33.489681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311407, 30.977045, 33.151829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446550, 31.305681, 33.335499>,  <30.527637, 31.502863, 33.445702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446550, 31.305681, 33.335499>,  <30.311407, 30.977045, 33.151829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446550, 31.305681, 33.335499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052863, 0.470527, -0.880800,
		-0.939710, 0.321861, 0.115541,
		0.337860, 0.821590, 0.459174,
		30.547909, 31.552158, 33.473251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026884, 31.497740, 32.744579>,  <30.311407, 30.977045, 33.151829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026884, 31.497740, 32.744579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307047, 31.702959, 32.943058>,  <30.475143, 31.826092, 33.062145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307047, 31.702959, 32.943058>,  <30.026884, 31.497740, 32.744579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307047, 31.702959, 32.943058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147539, 0.576116, -0.803942,
		-0.698329, 0.636294, 0.327820,
		0.700406, 0.513049, 0.496197,
		30.517168, 31.856874, 33.091919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881485, 32.268757, 32.676556>,  <30.026884, 31.497740, 32.744579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881485, 32.268757, 32.676556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266359, 32.244137, 32.782696>,  <30.497284, 32.229366, 32.846378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266359, 32.244137, 32.782696>,  <29.881485, 32.268757, 32.676556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266359, 32.244137, 32.782696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232438, 0.693431, -0.682001,
		-0.142023, 0.717889, 0.681517,
		0.962186, -0.061550, 0.265348,
		30.555016, 32.225670, 32.862301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127813, 32.964607, 32.723629>,  <29.881485, 32.268757, 32.676556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127813, 32.964607, 32.723629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465994, 32.753212, 32.692871>,  <30.668901, 32.626373, 32.674416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465994, 32.753212, 32.692871>,  <30.127813, 32.964607, 32.723629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465994, 32.753212, 32.692871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235257, 0.497810, -0.834769,
		0.479447, 0.687664, 0.545205,
		0.845449, -0.528491, -0.076896,
		30.719629, 32.594666, 32.669804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726856, 33.375824, 32.699848>,  <30.127813, 32.964607, 32.723629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726856, 33.375824, 32.699848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881588, 33.036850, 32.554398>,  <30.974426, 32.833466, 32.467129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881588, 33.036850, 32.554398>,  <30.726856, 33.375824, 32.699848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881588, 33.036850, 32.554398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428723, 0.514386, -0.742701,
		0.816431, 0.131404, 0.562293,
		0.386829, -0.847432, -0.363624,
		30.997637, 32.782619, 32.445309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365917, 33.456684, 32.542030>,  <30.726856, 33.375824, 32.699848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365917, 33.456684, 32.542030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298372, 33.133381, 32.316391>,  <31.257845, 32.939400, 32.181007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298372, 33.133381, 32.316391>,  <31.365917, 33.456684, 32.542030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298372, 33.133381, 32.316391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531350, 0.407385, -0.742768,
		0.830152, -0.425161, 0.360675,
		-0.168862, -0.808255, -0.564101,
		31.247713, 32.890903, 32.147160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060940, 33.083019, 32.320583>,  <31.365917, 33.456684, 32.542030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060940, 33.083019, 32.320583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771261, 32.971004, 32.068516>,  <31.597454, 32.903797, 31.917274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771261, 32.971004, 32.068516>,  <32.060940, 33.083019, 32.320583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771261, 32.971004, 32.068516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584040, 0.236809, -0.776414,
		0.366653, -0.930324, -0.007945,
		-0.724198, -0.280034, -0.630173,
		31.554003, 32.886993, 31.879463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407059, 32.848591, 31.777529>,  <32.060940, 33.083019, 32.320583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407059, 32.848591, 31.777529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055447, 32.899635, 31.593784>,  <31.844479, 32.930264, 31.483538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055447, 32.899635, 31.593784>,  <32.407059, 32.848591, 31.777529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055447, 32.899635, 31.593784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474461, 0.139693, -0.869122,
		-0.046740, -0.981937, -0.183342,
		-0.879035, 0.127611, -0.459361,
		31.791737, 32.937920, 31.455976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394428, 32.479443, 31.113171>,  <32.407059, 32.848591, 31.777529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394428, 32.479443, 31.113171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108589, 32.758743, 31.096254>,  <31.937084, 32.926323, 31.086105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108589, 32.758743, 31.096254>,  <32.394428, 32.479443, 31.113171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108589, 32.758743, 31.096254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200972, 0.147022, -0.968501,
		-0.670042, -0.700590, -0.245391,
		-0.714600, 0.698254, -0.042289,
		31.894209, 32.968220, 31.083569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002289, 32.254787, 30.555250>,  <32.394428, 32.479443, 31.113171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002289, 32.254787, 30.555250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909193, 32.642334, 30.589024>,  <31.853336, 32.874863, 30.609287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909193, 32.642334, 30.589024>,  <32.002289, 32.254787, 30.555250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909193, 32.642334, 30.589024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159986, 0.123775, -0.979328,
		-0.959291, -0.214417, -0.183812,
		-0.232735, 0.968868, 0.084432,
		31.839373, 32.932995, 30.614353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586840, 32.341690, 30.022921>,  <32.002289, 32.254787, 30.555250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586840, 32.341690, 30.022921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694550, 32.713795, 30.122608>,  <31.759176, 32.937057, 30.182421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694550, 32.713795, 30.122608>,  <31.586840, 32.341690, 30.022921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694550, 32.713795, 30.122608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208807, 0.196226, -0.958068,
		-0.940154, 0.310022, -0.141406,
		0.269275, 0.930259, 0.249218,
		31.775331, 32.992874, 30.197374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366577, 32.591946, 29.490923>,  <31.586840, 32.341690, 30.022921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366577, 32.591946, 29.490923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643995, 32.820621, 29.666267>,  <31.810446, 32.957829, 29.771475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643995, 32.820621, 29.666267>,  <31.366577, 32.591946, 29.490923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643995, 32.820621, 29.666267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382212, 0.223788, -0.896567,
		-0.610662, 0.789358, -0.063301,
		0.693546, 0.571693, 0.438361,
		31.852058, 32.992130, 29.797775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420599, 32.959156, 29.003569>,  <31.366577, 32.591946, 29.490923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420599, 32.959156, 29.003569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754108, 33.002708, 29.220074>,  <31.954214, 33.028839, 29.349977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754108, 33.002708, 29.220074>,  <31.420599, 32.959156, 29.003569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754108, 33.002708, 29.220074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523622, 0.154873, -0.837755,
		-0.175042, 0.981916, 0.072118,
		0.833775, 0.108880, 0.541262,
		32.004242, 33.035374, 29.382452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683317, 33.572014, 28.758865>,  <31.420599, 32.959156, 29.003569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683317, 33.572014, 28.758865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987339, 33.380066, 28.934155>,  <32.169754, 33.264896, 29.039328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987339, 33.380066, 28.934155>,  <31.683317, 33.572014, 28.758865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987339, 33.380066, 28.934155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593360, 0.237439, -0.769121,
		0.265027, 0.844598, 0.465203,
		0.760056, -0.479871, 0.438223,
		32.215355, 33.236103, 29.065622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285984, 34.101925, 28.742868>,  <31.683317, 33.572014, 28.758865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285984, 34.101925, 28.742868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444397, 33.741833, 28.815247>,  <32.539444, 33.525776, 28.858673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444397, 33.741833, 28.815247>,  <32.285984, 34.101925, 28.742868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444397, 33.741833, 28.815247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811237, 0.250699, -0.528248,
		0.430183, 0.355991, 0.829586,
		0.396028, -0.900234, 0.180947,
		32.563206, 33.471764, 28.869530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952213, 34.261639, 29.029921>,  <32.285984, 34.101925, 28.742868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952213, 34.261639, 29.029921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955582, 33.884995, 28.895283>,  <32.957603, 33.659008, 28.814501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955582, 33.884995, 28.895283>,  <32.952213, 34.261639, 29.029921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955582, 33.884995, 28.895283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750567, 0.228369, -0.620078,
		0.660740, -0.247413, 0.708667,
		0.008423, -0.941613, -0.336593,
		32.958107, 33.602512, 28.794304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643974, 34.159161, 29.066055>,  <32.952213, 34.261639, 29.029921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643974, 34.159161, 29.066055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477150, 33.890755, 28.820847>,  <33.377052, 33.729710, 28.673721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477150, 33.890755, 28.820847>,  <33.643974, 34.159161, 29.066055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477150, 33.890755, 28.820847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785223, 0.073630, -0.614819,
		0.457691, -0.737778, 0.496189,
		-0.417066, -0.671016, -0.613020,
		33.352032, 33.689449, 28.636940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172440, 33.654499, 28.940664>,  <33.643974, 34.159161, 29.066055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172440, 33.654499, 28.940664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924446, 33.599678, 28.631643>,  <33.775650, 33.566784, 28.446230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924446, 33.599678, 28.631643>,  <34.172440, 33.654499, 28.940664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924446, 33.599678, 28.631643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774337, 0.051971, -0.630635,
		0.126582, -0.989199, 0.073906,
		-0.619983, -0.137055, -0.772552,
		33.738453, 33.558563, 28.399878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401936, 33.109257, 28.508703>,  <34.172440, 33.654499, 28.940664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401936, 33.109257, 28.508703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165962, 33.299526, 28.247717>,  <34.024376, 33.413689, 28.091125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165962, 33.299526, 28.247717>,  <34.401936, 33.109257, 28.508703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165962, 33.299526, 28.247717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720888, -0.053724, -0.690966,
		-0.363726, -0.877981, -0.311213,
		-0.589935, 0.475671, -0.652467,
		33.988983, 33.442226, 28.051977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244061, 32.718964, 27.919058>,  <34.401936, 33.109257, 28.508703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244061, 32.718964, 27.919058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214138, 33.097294, 27.792685>,  <34.196186, 33.324291, 27.716862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214138, 33.097294, 27.792685>,  <34.244061, 32.718964, 27.919058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214138, 33.097294, 27.792685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566154, -0.220525, -0.794253,
		-0.820898, -0.238278, -0.518989,
		-0.074803, 0.945829, -0.315931,
		34.191696, 33.381042, 27.697905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390629, 32.630959, 27.235567>,  <34.244061, 32.718964, 27.919058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390629, 32.630959, 27.235567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396881, 33.030804, 27.226322>,  <34.400631, 33.270710, 27.220776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396881, 33.030804, 27.226322>,  <34.390629, 32.630959, 27.235567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396881, 33.030804, 27.226322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644239, -0.027743, -0.764321,
		-0.764665, -0.002946, -0.644422,
		0.015627, 0.999611, -0.023111,
		34.401569, 33.330688, 27.219389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402222, 32.824650, 26.600510>,  <34.390629, 32.630959, 27.235567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402222, 32.824650, 26.600510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546192, 33.159813, 26.764635>,  <34.632576, 33.360912, 26.863110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546192, 33.159813, 26.764635>,  <34.402222, 32.824650, 26.600510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546192, 33.159813, 26.764635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725702, 0.024958, -0.687556,
		-0.586353, 0.545234, -0.599092,
		0.359927, 0.837913, 0.410312,
		34.654171, 33.411186, 26.887728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491451, 33.338425, 26.111839>,  <34.402222, 32.824650, 26.600510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491451, 33.338425, 26.111839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734562, 33.444153, 26.411371>,  <34.880428, 33.507587, 26.591091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734562, 33.444153, 26.411371>,  <34.491451, 33.338425, 26.111839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734562, 33.444153, 26.411371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768258, 0.042945, -0.638698,
		-0.200977, 0.963479, -0.176963,
		0.607772, 0.264317, 0.748832,
		34.916893, 33.523449, 26.636021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024937, 33.850311, 25.868923>,  <34.491451, 33.338425, 26.111839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024937, 33.850311, 25.868923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187897, 33.658634, 26.179895>,  <35.285671, 33.543629, 26.366480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187897, 33.658634, 26.179895>,  <35.024937, 33.850311, 25.868923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187897, 33.658634, 26.179895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811335, -0.200881, -0.548983,
		0.419241, 0.854411, 0.306950,
		0.407396, -0.479196, 0.777431,
		35.310116, 33.514874, 26.413124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570995, 34.294468, 25.837164>,  <35.024937, 33.850311, 25.868923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570995, 34.294468, 25.837164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414436, 34.550400, 25.572611>,  <35.320503, 34.703960, 25.413879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414436, 34.550400, 25.572611>,  <35.570995, 34.294468, 25.837164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414436, 34.550400, 25.572611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551240, 0.738518, 0.388235,
		0.736848, -0.212628, -0.641751,
		-0.391395, 0.639829, -0.661384,
		35.297016, 34.742348, 25.374195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078842, 34.819786, 25.604254>,  <35.570995, 34.294468, 25.837164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078842, 34.819786, 25.604254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787582, 35.004620, 25.401756>,  <35.612827, 35.115520, 25.280258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787582, 35.004620, 25.401756>,  <36.078842, 34.819786, 25.604254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787582, 35.004620, 25.401756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584898, 0.803959, -0.107451,
		0.357349, -0.374341, -0.855670,
		-0.728146, 0.462082, -0.506245,
		35.569138, 35.143246, 25.249884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380188, 35.113655, 24.931211>,  <36.078842, 34.819786, 25.604254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380188, 35.113655, 24.931211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067188, 35.344090, 25.025715>,  <35.879387, 35.482349, 25.082417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067188, 35.344090, 25.025715>,  <36.380188, 35.113655, 24.931211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067188, 35.344090, 25.025715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560337, 0.816982, -0.136247,
		-0.271511, 0.025773, -0.962090,
		-0.782499, 0.576087, 0.236261,
		35.832439, 35.516914, 25.096594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126804, 35.550667, 24.354622>,  <36.380188, 35.113655, 24.931211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126804, 35.550667, 24.354622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044106, 35.702118, 24.715487>,  <35.994484, 35.792988, 24.932005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044106, 35.702118, 24.715487>,  <36.126804, 35.550667, 24.354622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044106, 35.702118, 24.715487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674555, 0.723058, -0.148873,
		-0.708682, 0.577778, -0.404898,
		-0.206749, 0.378629, 0.902161,
		35.982082, 35.815708, 24.986135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644043, 36.188019, 24.318096>,  <36.126804, 35.550667, 24.354622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644043, 36.188019, 24.318096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931477, 36.164391, 24.595268>,  <36.103935, 36.150215, 24.761572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931477, 36.164391, 24.595268>,  <35.644043, 36.188019, 24.318096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931477, 36.164391, 24.595268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501804, 0.733891, -0.457816,
		-0.481492, 0.676694, 0.557002,
		0.718580, -0.059071, 0.692931,
		36.147049, 36.146667, 24.803148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630959, 36.773033, 24.737234>,  <35.644043, 36.188019, 24.318096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630959, 36.773033, 24.737234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992641, 36.608574, 24.690987>,  <36.209652, 36.509899, 24.663239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992641, 36.608574, 24.690987>,  <35.630959, 36.773033, 24.737234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992641, 36.608574, 24.690987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311308, 0.819800, -0.480640,
		0.292396, 0.398607, 0.869263,
		0.904208, -0.411145, -0.115616,
		36.263905, 36.485229, 24.656301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169304, 37.280056, 24.930292>,  <35.630959, 36.773033, 24.737234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169304, 37.280056, 24.930292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306301, 37.017746, 24.661171>,  <36.388500, 36.860359, 24.499699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306301, 37.017746, 24.661171>,  <36.169304, 37.280056, 24.930292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306301, 37.017746, 24.661171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339054, 0.754125, -0.562439,
		0.876209, -0.035486, 0.480623,
		0.342491, -0.655771, -0.672803,
		36.409050, 36.821014, 24.459330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873543, 37.143078, 24.883896>,  <36.169304, 37.280056, 24.930292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873543, 37.143078, 24.883896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655807, 37.141796, 24.548353>,  <36.525166, 37.141026, 24.347027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655807, 37.141796, 24.548353>,  <36.873543, 37.143078, 24.883896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655807, 37.141796, 24.548353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525773, 0.777897, -0.344150,
		0.653647, -0.628384, -0.421756,
		-0.544341, -0.003205, -0.838858,
		36.492504, 37.140835, 24.296696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259724, 37.036793, 24.243900>,  <36.873543, 37.143078, 24.883896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259724, 37.036793, 24.243900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947987, 37.286900, 24.227562>,  <36.760944, 37.436966, 24.217758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947987, 37.286900, 24.227562>,  <37.259724, 37.036793, 24.243900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947987, 37.286900, 24.227562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624994, 0.771016, -0.122130,
		-0.044871, -0.120710, -0.991673,
		-0.779339, 0.625270, -0.040846,
		36.714184, 37.474480, 24.215307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327885, 37.374783, 23.654247>,  <37.259724, 37.036793, 24.243900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327885, 37.374783, 23.654247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119644, 37.612263, 23.899685>,  <36.994701, 37.754753, 24.046947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119644, 37.612263, 23.899685>,  <37.327885, 37.374783, 23.654247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119644, 37.612263, 23.899685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504047, 0.793771, -0.340388,
		-0.689141, 0.132074, -0.712489,
		-0.520597, 0.593703, 0.613592,
		36.963467, 37.790375, 24.083763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369648, 37.986328, 23.325369>,  <37.327885, 37.374783, 23.654247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369648, 37.986328, 23.325369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262699, 38.098503, 23.694122>,  <37.198532, 38.165810, 23.915375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262699, 38.098503, 23.694122>,  <37.369648, 37.986328, 23.325369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262699, 38.098503, 23.694122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534160, 0.839397, -0.100428,
		-0.801989, 0.465582, -0.374228,
		-0.267369, 0.280440, 0.921883,
		37.182487, 38.182636, 23.970688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203751, 38.744774, 23.272881>,  <37.369648, 37.986328, 23.325369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203751, 38.744774, 23.272881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283733, 38.640999, 23.650814>,  <37.331722, 38.578735, 23.877575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283733, 38.640999, 23.650814>,  <37.203751, 38.744774, 23.272881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283733, 38.640999, 23.650814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497789, 0.857484, 0.130102,
		-0.843933, 0.444314, 0.300603,
		0.199956, -0.259434, 0.944834,
		37.343719, 38.563168, 23.934265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833290, 39.230541, 23.639584>,  <37.203751, 38.744774, 23.272881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833290, 39.230541, 23.639584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139637, 39.080772, 23.848677>,  <37.323444, 38.990910, 23.974133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139637, 39.080772, 23.848677>,  <36.833290, 39.230541, 23.639584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139637, 39.080772, 23.848677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423191, 0.905588, 0.028627,
		-0.484099, 0.199291, 0.852016,
		0.765871, -0.374423, 0.522732,
		37.369400, 38.968445, 24.005497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970196, 39.698174, 24.218824>,  <36.833290, 39.230541, 23.639584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970196, 39.698174, 24.218824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285610, 39.478985, 24.107161>,  <37.474861, 39.347473, 24.040163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285610, 39.478985, 24.107161>,  <36.970196, 39.698174, 24.218824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285610, 39.478985, 24.107161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527293, 0.836040, -0.151654,
		0.316490, -0.027613, 0.948194,
		0.788541, -0.547973, -0.279159,
		37.522171, 39.314594, 24.023413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545334, 39.476128, 24.581421>,  <36.970196, 39.698174, 24.218824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545334, 39.476128, 24.581421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751068, 39.432171, 24.921629>,  <37.874508, 39.405796, 25.125753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751068, 39.432171, 24.921629>,  <37.545334, 39.476128, 24.581421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751068, 39.432171, 24.921629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657708, 0.585900, 0.473435,
		-0.550344, -0.802898, 0.229076,
		0.514336, -0.109887, 0.850520,
		37.905369, 39.399204, 25.176785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099411, 39.517311, 25.217211>,  <37.545334, 39.476128, 24.581421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099411, 39.517311, 25.217211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424362, 39.638950, 25.416235>,  <37.619331, 39.711933, 25.535650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424362, 39.638950, 25.416235>,  <37.099411, 39.517311, 25.217211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424362, 39.638950, 25.416235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579865, 0.511446, 0.634177,
		-0.061625, -0.803710, 0.591822,
		0.812379, 0.304096, 0.497561,
		37.668076, 39.730179, 25.565502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756535, 39.813763, 25.715736>,  <37.099411, 39.517311, 25.217211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756535, 39.813763, 25.715736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138939, 39.927422, 25.744864>,  <37.368382, 39.995617, 25.762341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138939, 39.927422, 25.744864>,  <36.756535, 39.813763, 25.715736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138939, 39.927422, 25.744864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271213, 0.761708, 0.588425,
		0.111729, -0.582291, 0.805266,
		0.956013, 0.284143, 0.072820,
		37.425743, 40.012665, 25.766708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746948, 39.849125, 26.387985>,  <36.756535, 39.813763, 25.715736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746948, 39.849125, 26.387985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049091, 39.983154, 26.613253>,  <37.230377, 40.063572, 26.748413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049091, 39.983154, 26.613253>,  <36.746948, 39.849125, 26.387985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049091, 39.983154, 26.613253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102124, 0.909080, -0.403912,
		-0.647306, 0.247585, 0.720900,
		0.755358, 0.335075, 0.563169,
		37.275700, 40.083675, 26.782204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548325, 40.559612, 26.684618>,  <36.746948, 39.849125, 26.387985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548325, 40.559612, 26.684618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935707, 40.557259, 26.584980>,  <37.168137, 40.555847, 26.525196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935707, 40.557259, 26.584980>,  <36.548325, 40.559612, 26.684618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935707, 40.557259, 26.584980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090505, 0.923132, -0.373680,
		0.232148, 0.384439, 0.893484,
		0.968461, -0.005884, -0.249097,
		37.226246, 40.555492, 26.510250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150486, 41.043198, 26.989147>,  <36.548325, 40.559612, 26.684618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150486, 41.043198, 26.989147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257957, 40.977707, 26.609463>,  <37.322441, 40.938412, 26.381651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257957, 40.977707, 26.609463>,  <37.150486, 41.043198, 26.989147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257957, 40.977707, 26.609463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294420, 0.924325, -0.242774,
		0.917130, 0.344696, 0.200143,
		0.268680, -0.163729, -0.949212,
		37.338562, 40.928589, 26.324699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536896, 41.360390, 27.165804>,  <37.150486, 41.043198, 26.989147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536896, 41.360390, 27.165804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381985, 41.195347, 27.495598>,  <36.289036, 41.096321, 27.693474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381985, 41.195347, 27.495598>,  <36.536896, 41.360390, 27.165804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381985, 41.195347, 27.495598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598351, 0.567868, 0.565245,
		-0.701419, 0.712239, 0.026958,
		-0.387281, -0.412604, 0.824483,
		36.265800, 41.071568, 27.742943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062157, 41.760044, 27.549025>,  <36.536896, 41.360390, 27.165804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062157, 41.760044, 27.549025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290821, 41.521019, 27.773922>,  <36.428020, 41.377605, 27.908861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290821, 41.521019, 27.773922>,  <36.062157, 41.760044, 27.549025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290821, 41.521019, 27.773922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521952, 0.793578, 0.312730,
		-0.633060, 0.114687, 0.765560,
		0.571665, -0.597563, 0.562243,
		36.462322, 41.341751, 27.942595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060326, 41.825176, 28.325933>,  <36.062157, 41.760044, 27.549025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060326, 41.825176, 28.325933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424194, 41.735321, 28.186195>,  <36.642513, 41.681408, 28.102352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424194, 41.735321, 28.186195>,  <36.060326, 41.825176, 28.325933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424194, 41.735321, 28.186195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356973, 0.852824, 0.381131,
		0.212311, -0.471409, 0.855977,
		0.909667, -0.224642, -0.349345,
		36.697094, 41.667927, 28.081392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617367, 41.848881, 28.894442>,  <36.060326, 41.825176, 28.325933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617367, 41.848881, 28.894442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818943, 41.882465, 28.550583>,  <36.939888, 41.902618, 28.344269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818943, 41.882465, 28.550583>,  <36.617367, 41.848881, 28.894442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818943, 41.882465, 28.550583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286423, 0.922703, 0.258033,
		0.814863, -0.376257, 0.440941,
		0.503944, 0.083966, -0.859645,
		36.970127, 41.907654, 28.292688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419582, 41.664581, 29.700426>,  <36.617367, 41.848881, 28.894442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419582, 41.664581, 29.700426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201736, 41.512074, 29.401621>,  <36.071030, 41.420567, 29.222338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201736, 41.512074, 29.401621>,  <36.419582, 41.664581, 29.700426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201736, 41.512074, 29.401621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162925, -0.921821, 0.351712,
		-0.822710, 0.069839, 0.564154,
		-0.544613, -0.381272, -0.747013,
		36.038353, 41.397694, 29.177517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984837, 41.196533, 30.053137>,  <36.419582, 41.664581, 29.700426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984837, 41.196533, 30.053137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059959, 41.107689, 29.670431>,  <36.105034, 41.054382, 29.440807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059959, 41.107689, 29.670431>,  <35.984837, 41.196533, 30.053137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059959, 41.107689, 29.670431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287859, -0.918877, 0.269819,
		-0.939076, -0.326087, -0.108639,
		0.187811, -0.222108, -0.956763,
		36.116302, 41.041058, 29.383402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486866, 40.618446, 30.161674>,  <35.984837, 41.196533, 30.053137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486866, 40.618446, 30.161674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572666, 40.302814, 30.391924>,  <35.624146, 40.113434, 30.530073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572666, 40.302814, 30.391924>,  <35.486866, 40.618446, 30.161674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572666, 40.302814, 30.391924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287501, 0.512221, 0.809304,
		-0.933453, -0.339085, -0.116992,
		0.214497, -0.789082, 0.575622,
		35.637016, 40.066090, 30.564610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792652, 40.297131, 30.497772>,  <35.486866, 40.618446, 30.161674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792652, 40.297131, 30.497772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142517, 40.311951, 30.691101>,  <35.352436, 40.320843, 30.807098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142517, 40.311951, 30.691101>,  <34.792652, 40.297131, 30.497772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142517, 40.311951, 30.691101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457756, 0.391160, 0.798407,
		-0.159478, -0.919577, 0.359089,
		0.874658, 0.037047, 0.483323,
		35.404915, 40.323063, 30.836098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724503, 39.866718, 31.010536>,  <34.792652, 40.297131, 30.497772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724503, 39.866718, 31.010536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996586, 40.144924, 31.103117>,  <35.159836, 40.311848, 31.158665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996586, 40.144924, 31.103117>,  <34.724503, 39.866718, 31.010536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996586, 40.144924, 31.103117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510194, 0.222498, 0.830781,
		0.526326, -0.683190, 0.506194,
		0.680208, 0.695519, 0.231453,
		35.200649, 40.353580, 31.172552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019489, 39.723156, 31.729591>,  <34.724503, 39.866718, 31.010536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019489, 39.723156, 31.729591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057014, 40.110096, 31.635416>,  <35.079529, 40.342258, 31.578911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057014, 40.110096, 31.635416>,  <35.019489, 39.723156, 31.729591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057014, 40.110096, 31.635416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508836, 0.249849, 0.823809,
		0.855736, 0.042514, 0.515663,
		0.093815, 0.967351, -0.235438,
		35.085159, 40.400303, 31.564785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069115, 40.027000, 32.355267>,  <35.019489, 39.723156, 31.729591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069115, 40.027000, 32.355267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934891, 40.290226, 32.085644>,  <34.854355, 40.448162, 31.923870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934891, 40.290226, 32.085644>,  <35.069115, 40.027000, 32.355267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934891, 40.290226, 32.085644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637892, 0.367793, 0.676626,
		0.693174, 0.657026, 0.296353,
		-0.335564, 0.658061, -0.674056,
		34.834221, 40.487644, 31.883427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136990, 40.656921, 32.700272>,  <35.069115, 40.027000, 32.355267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136990, 40.656921, 32.700272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839520, 40.689346, 32.434830>,  <34.661037, 40.708801, 32.275562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839520, 40.689346, 32.434830>,  <35.136990, 40.656921, 32.700272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839520, 40.689346, 32.434830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641023, 0.195390, 0.742235,
		0.189827, 0.977370, -0.093346,
		-0.743677, 0.081059, -0.663607,
		34.616417, 40.713665, 32.235748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522438, 40.370667, 33.298473>,  <35.136990, 40.656921, 32.700272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522438, 40.370667, 33.298473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616135, 40.115437, 33.591866>,  <35.672352, 39.962299, 33.767899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616135, 40.115437, 33.591866>,  <35.522438, 40.370667, 33.298473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616135, 40.115437, 33.591866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022094, -0.757768, -0.652150,
		0.971928, 0.136553, -0.191596,
		0.234238, -0.638076, 0.733479,
		35.686405, 39.924015, 33.811909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191612, 40.005165, 33.173660>,  <35.522438, 40.370667, 33.298473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191612, 40.005165, 33.173660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923771, 39.810196, 33.397820>,  <35.763065, 39.693214, 33.532314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923771, 39.810196, 33.397820>,  <36.191612, 40.005165, 33.173660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923771, 39.810196, 33.397820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077606, -0.704475, -0.705473,
		0.738650, -0.515880, 0.433895,
		-0.669607, -0.487424, 0.560396,
		35.722889, 39.663967, 33.565937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383282, 40.114151, 33.834579>,  <36.191612, 40.005165, 33.173660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383282, 40.114151, 33.834579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198822, 40.366421, 33.584908>,  <36.088146, 40.517780, 33.435104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198822, 40.366421, 33.584908>,  <36.383282, 40.114151, 33.834579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198822, 40.366421, 33.584908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043683, 0.686450, 0.725864,
		0.886249, 0.361994, -0.289003,
		-0.461145, 0.630671, -0.624179,
		36.060478, 40.555622, 33.397655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112503, 39.831638, 33.898659>,  <36.383282, 40.114151, 33.834579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112503, 39.831638, 33.898659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443485, 39.639244, 33.782753>,  <37.642075, 39.523808, 33.713207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443485, 39.639244, 33.782753>,  <37.112503, 39.831638, 33.898659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443485, 39.639244, 33.782753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424636, 0.198336, 0.883372,
		-0.367419, -0.853999, 0.368359,
		0.827458, -0.480986, -0.289766,
		37.691723, 39.494949, 33.695824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358398, 39.320644, 34.365414>,  <37.112503, 39.831638, 33.898659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358398, 39.320644, 34.365414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689339, 39.420830, 34.164310>,  <37.887901, 39.480942, 34.043648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689339, 39.420830, 34.164310>,  <37.358398, 39.320644, 34.365414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689339, 39.420830, 34.164310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446730, 0.249153, 0.859276,
		0.340480, -0.935516, 0.094247,
		0.827348, 0.250464, -0.502755,
		37.937542, 39.495968, 34.013485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904858, 38.967316, 34.551380>,  <37.358398, 39.320644, 34.365414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904858, 38.967316, 34.551380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057877, 39.318886, 34.437439>,  <38.149689, 39.529827, 34.369072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057877, 39.318886, 34.437439>,  <37.904858, 38.967316, 34.551380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057877, 39.318886, 34.437439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335257, 0.155247, 0.929248,
		0.860964, -0.450983, -0.235277,
		0.382549, 0.878927, -0.284857,
		38.172642, 39.582565, 34.351982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735764, 39.111885, 34.573807>,  <37.904858, 38.967316, 34.551380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735764, 39.111885, 34.573807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514843, 39.433235, 34.662857>,  <38.382290, 39.626045, 34.716290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514843, 39.433235, 34.662857>,  <38.735764, 39.111885, 34.573807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514843, 39.433235, 34.662857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500497, 0.105970, 0.859228,
		0.666687, 0.585974, -0.460611,
		-0.552297, 0.803371, 0.222630,
		38.349155, 39.674248, 34.729645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753181, 39.886345, 34.323475>,  <38.735764, 39.111885, 34.573807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753181, 39.886345, 34.323475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853470, 40.262592, 34.415024>,  <38.913643, 40.488338, 34.469952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853470, 40.262592, 34.415024>,  <38.753181, 39.886345, 34.323475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853470, 40.262592, 34.415024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548959, -0.332879, 0.766705,
		0.797359, -0.066592, -0.599819,
		0.250723, 0.940615, 0.228868,
		38.928688, 40.544777, 34.483685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424412, 39.865406, 34.392204>,  <38.753181, 39.886345, 34.323475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424412, 39.865406, 34.392204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296032, 40.160789, 34.629410>,  <39.219002, 40.338020, 34.771732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296032, 40.160789, 34.629410>,  <39.424412, 39.865406, 34.392204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296032, 40.160789, 34.629410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680542, -0.255642, 0.686666,
		0.658674, 0.623959, -0.420504,
		-0.320953, 0.738459, 0.593015,
		39.199745, 40.382328, 34.807316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034962, 40.279850, 34.593243>,  <39.424412, 39.865406, 34.392204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034962, 40.279850, 34.593243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745064, 40.257015, 34.867901>,  <39.571125, 40.243313, 35.032696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745064, 40.257015, 34.867901>,  <40.034962, 40.279850, 34.593243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745064, 40.257015, 34.867901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653359, -0.373372, 0.658571,
		0.218779, 0.925924, 0.307898,
		-0.724747, -0.057086, 0.686647,
		39.527641, 40.239891, 35.073895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549335, 39.979534, 35.113636>,  <40.034962, 40.279850, 34.593243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549335, 39.979534, 35.113636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937939, 39.904671, 35.171803>,  <41.171101, 39.859753, 35.206703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937939, 39.904671, 35.171803>,  <40.549335, 39.979534, 35.113636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937939, 39.904671, 35.171803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224420, -0.923726, 0.310427,
		0.076222, -0.334215, -0.939409,
		0.971507, -0.187161, 0.145413,
		41.229389, 39.848522, 35.215427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737617, 39.390224, 34.694492>,  <40.549335, 39.979534, 35.113636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737617, 39.390224, 34.694492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955162, 39.430882, 35.027691>,  <41.085690, 39.455276, 35.227608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955162, 39.430882, 35.027691>,  <40.737617, 39.390224, 34.694492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955162, 39.430882, 35.027691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169529, -0.958862, 0.227693,
		0.821871, -0.265051, -0.504258,
		0.543864, 0.101647, 0.832994,
		41.118320, 39.461376, 35.277588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069645, 38.824127, 34.630569>,  <40.737617, 39.390224, 34.694492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069645, 38.824127, 34.630569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034325, 38.922298, 35.016724>,  <41.013130, 38.981201, 35.248417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034325, 38.922298, 35.016724>,  <41.069645, 38.824127, 34.630569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034325, 38.922298, 35.016724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177008, -0.957612, 0.227260,
		0.980240, -0.150813, 0.128003,
		-0.088303, 0.245427, 0.965385,
		41.007835, 38.995926, 35.306339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097210, 38.318806, 35.251011>,  <41.069645, 38.824127, 34.630569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097210, 38.318806, 35.251011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350227, 38.210838, 34.960621>,  <41.502037, 38.146057, 34.786388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350227, 38.210838, 34.960621>,  <41.097210, 38.318806, 35.251011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350227, 38.210838, 34.960621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023660, -0.943608, 0.330218,
		-0.774164, -0.191700, -0.603259,
		0.632543, -0.269916, -0.725971,
		41.539989, 38.129864, 34.742828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760777, 37.685326, 34.965462>,  <41.097210, 38.318806, 35.251011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760777, 37.685326, 34.965462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147369, 37.703899, 34.864468>,  <41.379326, 37.715042, 34.803871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147369, 37.703899, 34.864468>,  <40.760777, 37.685326, 34.965462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147369, 37.703899, 34.864468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137159, -0.924762, 0.354969,
		-0.217011, -0.377703, -0.900137,
		0.966485, 0.046430, -0.252489,
		41.437313, 37.717827, 34.788719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897255, 37.190414, 34.425793>,  <40.760777, 37.685326, 34.965462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897255, 37.190414, 34.425793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219494, 37.267517, 34.649887>,  <41.412838, 37.313778, 34.784344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219494, 37.267517, 34.649887>,  <40.897255, 37.190414, 34.425793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219494, 37.267517, 34.649887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009390, -0.949632, 0.313226,
		0.592396, -0.247072, -0.766827,
		0.805593, 0.192754, 0.560238,
		41.461170, 37.325344, 34.817959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356613, 36.569317, 34.438339>,  <40.897255, 37.190414, 34.425793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356613, 36.569317, 34.438339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379398, 36.755379, 34.791695>,  <41.393070, 36.867016, 35.003708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379398, 36.755379, 34.791695>,  <41.356613, 36.569317, 34.438339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379398, 36.755379, 34.791695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034950, -0.885216, 0.463865,
		0.997764, 0.004452, -0.066682,
		0.056963, 0.465159, 0.883393,
		41.396488, 36.894928, 35.056713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846397, 36.257877, 34.832848>,  <41.356613, 36.569317, 34.438339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846397, 36.257877, 34.832848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592838, 36.419792, 35.096458>,  <41.440704, 36.516941, 35.254627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592838, 36.419792, 35.096458>,  <41.846397, 36.257877, 34.832848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592838, 36.419792, 35.096458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116440, -0.792440, 0.598733,
		0.764604, 0.456271, 0.455190,
		-0.633895, 0.404791, 0.659031,
		41.402668, 36.541229, 35.294167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411423, 35.797737, 34.496410>,  <41.846397, 36.257877, 34.832848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411423, 35.797737, 34.496410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799252, 35.771648, 34.590797>,  <43.031948, 35.755997, 34.647430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799252, 35.771648, 34.590797>,  <42.411423, 35.797737, 34.496410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799252, 35.771648, 34.590797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242010, -0.400852, 0.883600,
		0.036964, -0.913819, -0.404437,
		0.969569, -0.065216, 0.235970,
		43.090122, 35.752083, 34.661587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573116, 35.117443, 34.857151>,  <42.411423, 35.797737, 34.496410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573116, 35.117443, 34.857151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765491, 35.434662, 35.006699>,  <42.880917, 35.624992, 35.096428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765491, 35.434662, 35.006699>,  <42.573116, 35.117443, 34.857151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765491, 35.434662, 35.006699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309918, -0.245125, 0.918621,
		0.820154, -0.557667, 0.127889,
		0.480936, 0.793045, 0.373871,
		42.909771, 35.672577, 35.118858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880531, 34.873371, 35.541370>,  <42.573116, 35.117443, 34.857151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880531, 34.873371, 35.541370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788952, 35.262058, 35.518234>,  <42.734005, 35.495270, 35.504353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788952, 35.262058, 35.518234>,  <42.880531, 34.873371, 35.541370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788952, 35.262058, 35.518234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399487, -0.039609, 0.915882,
		0.887690, 0.232793, 0.397258,
		-0.228947, 0.971719, -0.057837,
		42.720268, 35.553574, 35.500881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579174, 35.226948, 35.763016>,  <42.880531, 34.873371, 35.541370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579174, 35.226948, 35.763016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424656, 35.109997, 35.413094>,  <43.331944, 35.039825, 35.203140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424656, 35.109997, 35.413094>,  <43.579174, 35.226948, 35.763016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424656, 35.109997, 35.413094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919778, 0.193221, 0.341577,
		0.069163, 0.936580, -0.343561,
		-0.386297, -0.292375, -0.874809,
		43.308765, 35.022285, 35.150650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429401, 34.685215, 36.258923>,  <43.579174, 35.226948, 35.763016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429401, 34.685215, 36.258923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740639, 34.799515, 36.482677>,  <43.927380, 34.868095, 36.616932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740639, 34.799515, 36.482677>,  <43.429401, 34.685215, 36.258923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740639, 34.799515, 36.482677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373336, -0.505811, 0.777673,
		0.505164, -0.813944, -0.286888,
		0.778093, 0.285747, 0.559392,
		43.974068, 34.885239, 36.650494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747608, 34.167793, 36.790352>,  <43.429401, 34.685215, 36.258923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747608, 34.167793, 36.790352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933395, 33.813892, 36.805733>,  <44.044868, 33.601551, 36.814960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933395, 33.813892, 36.805733>,  <43.747608, 34.167793, 36.790352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933395, 33.813892, 36.805733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765084, 0.379024, -0.520565,
		0.445996, 0.271209, 0.852956,
		0.464473, -0.884752, 0.038454,
		44.072739, 33.548466, 36.817268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309593, 34.284668, 37.120922>,  <43.747608, 34.167793, 36.790352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309593, 34.284668, 37.120922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352928, 33.961670, 36.888985>,  <44.378929, 33.767872, 36.749825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352928, 33.961670, 36.888985>,  <44.309593, 34.284668, 37.120922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352928, 33.961670, 36.888985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644320, 0.501212, -0.577613,
		0.757043, -0.311026, 0.574586,
		0.108337, -0.807496, -0.579840,
		44.385429, 33.719421, 36.715034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.931107, 33.935719, 37.089600>,  <44.309593, 34.284668, 37.120922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.931107, 33.935719, 37.089600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766266, 33.875980, 36.730076>,  <44.667362, 33.840137, 36.514362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766266, 33.875980, 36.730076>,  <44.931107, 33.935719, 37.089600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766266, 33.875980, 36.730076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826308, 0.354391, -0.437747,
		0.383909, -0.923094, -0.022636,
		-0.412103, -0.149350, -0.898813,
		44.642635, 33.831177, 36.460430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.358906, 33.482643, 36.616566>,  <44.931107, 33.935719, 37.089600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.358906, 33.482643, 36.616566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136997, 33.785130, 36.477787>,  <45.003853, 33.966621, 36.394520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136997, 33.785130, 36.477787>,  <45.358906, 33.482643, 36.616566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136997, 33.785130, 36.477787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827181, 0.456472, -0.327729,
		-0.089460, -0.468803, -0.878761,
		-0.554770, 0.756212, -0.346949,
		44.970566, 34.011993, 36.373703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461300, 33.583374, 35.823841>,  <45.358906, 33.482643, 36.616566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461300, 33.583374, 35.823841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408363, 33.920464, 36.032574>,  <45.376602, 34.122715, 36.157814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408363, 33.920464, 36.032574>,  <45.461300, 33.583374, 35.823841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408363, 33.920464, 36.032574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854108, 0.364101, -0.371389,
		-0.502976, 0.396548, -0.767961,
		-0.132341, 0.842722, 0.521829,
		45.368660, 34.173279, 36.189121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.316658, 34.099247, 35.386486>,  <45.461300, 33.583374, 35.823841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.316658, 34.099247, 35.386486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510559, 34.233952, 35.709377>,  <45.626900, 34.314774, 35.903111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510559, 34.233952, 35.709377>,  <45.316658, 34.099247, 35.386486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510559, 34.233952, 35.709377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687774, 0.423406, -0.589656,
		-0.540356, 0.841024, -0.026368,
		0.484751, 0.336759, 0.807224,
		45.655983, 34.334980, 35.951546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599495, 34.741306, 35.243839>,  <45.316658, 34.099247, 35.386486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599495, 34.741306, 35.243839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.824406, 34.585392, 35.535568>,  <45.959354, 34.491844, 35.710606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.824406, 34.585392, 35.535568>,  <45.599495, 34.741306, 35.243839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824406, 34.585392, 35.535568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807241, 0.450105, -0.381796,
		-0.179449, 0.803412, 0.567739,
		0.562282, -0.389788, 0.729318,
		45.993092, 34.468456, 35.754364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.134724, 35.303978, 35.364441>,  <45.599495, 34.741306, 35.243839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.134724, 35.303978, 35.364441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225113, 34.937523, 35.496876>,  <46.279346, 34.717648, 35.576336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225113, 34.937523, 35.496876>,  <46.134724, 35.303978, 35.364441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.225113, 34.937523, 35.496876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856443, 0.024899, -0.515641,
		0.464156, 0.400081, 0.790250,
		0.225975, -0.916142, 0.331089,
		46.292904, 34.662682, 35.596203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.771084, 35.312492, 35.784740>,  <46.134724, 35.303978, 35.364441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.771084, 35.312492, 35.784740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687031, 34.996696, 35.554070>,  <46.636600, 34.807220, 35.415668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687031, 34.996696, 35.554070>,  <46.771084, 35.312492, 35.784740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.687031, 34.996696, 35.554070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794255, 0.206091, -0.571564,
		0.570090, -0.578130, 0.583749,
		-0.210133, -0.789488, -0.576674,
		46.623989, 34.759850, 35.381069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.362366, 34.703087, 35.707470>,  <46.771084, 35.312492, 35.784740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.362366, 34.703087, 35.707470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.133118, 34.790737, 35.391617>,  <46.995567, 34.843327, 35.202106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.133118, 34.790737, 35.391617>,  <47.362366, 34.703087, 35.707470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.133118, 34.790737, 35.391617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768357, 0.478675, -0.424849,
		0.284881, -0.850208, -0.442707,
		-0.573123, 0.219126, -0.789629,
		46.961182, 34.856476, 35.154728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.702248, 34.661877, 35.038967>,  <47.362366, 34.703087, 35.707470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.702248, 34.661877, 35.038967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.452114, 34.973438, 35.057987>,  <47.302032, 35.160378, 35.069401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.452114, 34.973438, 35.057987>,  <47.702248, 34.661877, 35.038967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.452114, 34.973438, 35.057987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651126, 0.554390, -0.518350,
		-0.430110, -0.293178, -0.853845,
		-0.625332, 0.778908, 0.047553,
		47.264515, 35.207111, 35.072254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.572117, 30.691813, 35.612625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808800, 30.876236, 35.877140>,  <35.950809, 30.986891, 36.035851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808800, 30.876236, 35.877140>,  <35.572117, 30.691813, 35.612625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808800, 30.876236, 35.877140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334688, 0.605767, -0.721824,
		-0.733391, 0.648436, 0.204127,
		0.591710, 0.461061, 0.661288,
		35.986313, 31.014555, 36.075527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424507, 31.428923, 35.534332>,  <35.572117, 30.691813, 35.612625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424507, 31.428923, 35.534332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.784527, 31.403852, 35.706833>,  <36.000538, 31.388811, 35.810333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.784527, 31.403852, 35.706833>,  <35.424507, 31.428923, 35.534332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784527, 31.403852, 35.706833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377603, 0.606156, -0.699994,
		-0.217531, 0.792873, 0.569239,
		0.900053, -0.062676, 0.431249,
		36.054543, 31.385050, 35.836208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604050, 32.071918, 35.782726>,  <35.424507, 31.428923, 35.534332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604050, 32.071918, 35.782726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948597, 31.873903, 35.737156>,  <36.155327, 31.755095, 35.709812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948597, 31.873903, 35.737156>,  <35.604050, 32.071918, 35.782726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948597, 31.873903, 35.737156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285125, 0.656781, -0.698099,
		0.420413, 0.568837, 0.706879,
		0.861369, -0.495039, -0.113930,
		36.207008, 31.725391, 35.702976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126686, 32.622128, 35.944283>,  <35.604050, 32.071918, 35.782726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126686, 32.622128, 35.944283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.283829, 32.333004, 35.716877>,  <36.378113, 32.159531, 35.580433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.283829, 32.333004, 35.716877>,  <36.126686, 32.622128, 35.944283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283829, 32.333004, 35.716877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436918, 0.690694, -0.576233,
		0.809176, -0.022015, 0.587154,
		0.392858, -0.722812, -0.568512,
		36.401688, 32.116161, 35.546322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785362, 32.887753, 35.844772>,  <36.126686, 32.622128, 35.944283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785362, 32.887753, 35.844772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.731960, 32.601803, 35.570217>,  <36.699921, 32.430233, 35.405483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.731960, 32.601803, 35.570217>,  <36.785362, 32.887753, 35.844772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731960, 32.601803, 35.570217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252123, 0.645301, -0.721125,
		0.958442, -0.269325, 0.094089,
		-0.133501, -0.714878, -0.686387,
		36.691910, 32.387341, 35.364300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351162, 32.919895, 35.394821>,  <36.785362, 32.887753, 35.844772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351162, 32.919895, 35.394821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.084229, 32.716736, 35.176937>,  <36.924068, 32.594841, 35.046207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.084229, 32.716736, 35.176937>,  <37.351162, 32.919895, 35.394821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084229, 32.716736, 35.176937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327009, 0.457296, -0.827010,
		0.669128, -0.730016, -0.139082,
		-0.667332, -0.507895, -0.544712,
		36.884029, 32.564369, 35.013523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704399, 32.693089, 34.791576>,  <37.351162, 32.919895, 35.394821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704399, 32.693089, 34.791576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.314411, 32.715885, 34.705616>,  <37.080418, 32.729561, 34.654037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.314411, 32.715885, 34.705616>,  <37.704399, 32.693089, 34.791576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314411, 32.715885, 34.705616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217271, 0.449275, -0.866571,
		0.047167, -0.891574, -0.450412,
		-0.974971, 0.056988, -0.214905,
		37.021919, 32.732983, 34.641144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615608, 32.510990, 34.050987>,  <37.704399, 32.693089, 34.791576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615608, 32.510990, 34.050987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.272182, 32.699886, 34.130840>,  <37.066128, 32.813225, 34.178753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.272182, 32.699886, 34.130840>,  <37.615608, 32.510990, 34.050987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272182, 32.699886, 34.130840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023040, 0.424511, -0.905129,
		-0.512188, -0.772513, -0.375351,
		-0.858565, 0.472244, 0.199631,
		37.014614, 32.841560, 34.190731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211632, 32.466351, 33.500362>,  <37.615608, 32.510990, 34.050987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211632, 32.466351, 33.500362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.026485, 32.775597, 33.673817>,  <36.915398, 32.961143, 33.777889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.026485, 32.775597, 33.673817>,  <37.211632, 32.466351, 33.500362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026485, 32.775597, 33.673817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170453, 0.557697, -0.812354,
		-0.869885, -0.302097, -0.389920,
		-0.462867, 0.773118, 0.433639,
		36.887627, 33.007530, 33.803909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691078, 32.684937, 33.007397>,  <37.211632, 32.466351, 33.500362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691078, 32.684937, 33.007397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749584, 32.989868, 33.259575>,  <36.784687, 33.172829, 33.410881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749584, 32.989868, 33.259575>,  <36.691078, 32.684937, 33.007397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749584, 32.989868, 33.259575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000001, 0.637298, -0.770617,
		-0.989245, 0.112717, 0.093216,
		0.146268, 0.762329, 0.630444,
		36.793465, 33.218567, 33.448708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338501, 33.201355, 32.732773>,  <36.691078, 32.684937, 33.007397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338501, 33.201355, 32.732773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.623138, 33.378334, 32.951080>,  <36.793922, 33.484524, 33.082066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.623138, 33.378334, 32.951080>,  <36.338501, 33.201355, 32.732773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623138, 33.378334, 32.951080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155657, 0.658218, -0.736560,
		-0.685130, 0.609086, 0.399515,
		0.711596, 0.442452, 0.545773,
		36.836617, 33.511070, 33.114811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176331, 33.879700, 32.696159>,  <36.338501, 33.201355, 32.732773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176331, 33.879700, 32.696159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.569412, 33.826191, 32.747372>,  <36.805264, 33.794086, 32.778099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.569412, 33.826191, 32.747372>,  <36.176331, 33.879700, 32.696159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569412, 33.826191, 32.747372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184354, 0.642131, -0.744098,
		0.017333, 0.754832, 0.655689,
		0.982707, -0.133776, 0.128026,
		36.864223, 33.786057, 32.785778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394794, 34.564705, 32.612953>,  <36.176331, 33.879700, 32.696159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394794, 34.564705, 32.612953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714111, 34.325283, 32.586235>,  <36.905701, 34.181629, 32.570206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714111, 34.325283, 32.586235>,  <36.394794, 34.564705, 32.612953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714111, 34.325283, 32.586235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349247, 0.550414, -0.758335,
		0.490672, 0.582043, 0.648434,
		0.798290, -0.598557, -0.066796,
		36.953598, 34.145718, 32.566196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942627, 34.941250, 32.764977>,  <36.394794, 34.564705, 32.612953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942627, 34.941250, 32.764977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.067211, 34.639908, 32.533306>,  <37.141960, 34.459103, 32.394302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.067211, 34.639908, 32.533306>,  <36.942627, 34.941250, 32.764977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067211, 34.639908, 32.533306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321082, 0.657080, -0.682020,
		0.894370, 0.026459, 0.446544,
		0.311461, -0.753356, -0.579177,
		37.160648, 34.413902, 32.359554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557755, 35.263374, 32.288486>,  <36.942627, 34.941250, 32.764977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557755, 35.263374, 32.288486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.499134, 34.903515, 32.123970>,  <37.463963, 34.687599, 32.025261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.499134, 34.903515, 32.123970>,  <37.557755, 35.263374, 32.288486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499134, 34.903515, 32.123970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304246, 0.354629, -0.884122,
		0.941253, -0.254702, 0.221743,
		-0.146552, -0.899647, -0.411288,
		37.455170, 34.633621, 32.000584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014828, 35.291801, 31.741112>,  <37.557755, 35.263374, 32.288486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014828, 35.291801, 31.741112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.762844, 35.002872, 31.626980>,  <37.611656, 34.829517, 31.558500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.762844, 35.002872, 31.626980>,  <38.014828, 35.291801, 31.741112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762844, 35.002872, 31.626980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052277, 0.327123, -0.943535,
		0.774871, -0.609300, -0.168312,
		-0.629955, -0.722319, -0.285331,
		37.573856, 34.786179, 31.541380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265282, 35.096031, 31.056089>,  <38.014828, 35.291801, 31.741112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265282, 35.096031, 31.056089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.891018, 34.958111, 31.086149>,  <37.666458, 34.875359, 31.104185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.891018, 34.958111, 31.086149>,  <38.265282, 35.096031, 31.056089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891018, 34.958111, 31.086149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145955, 0.184224, -0.971987,
		0.321301, -0.920419, -0.222698,
		-0.935662, -0.344804, 0.075148,
		37.610321, 34.854671, 31.108694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164810, 34.536671, 30.520365>,  <38.265282, 35.096031, 31.056089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164810, 34.536671, 30.520365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804367, 34.696690, 30.587263>,  <37.588100, 34.792702, 30.627403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804367, 34.696690, 30.587263>,  <38.164810, 34.536671, 30.520365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804367, 34.696690, 30.587263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050645, 0.285973, -0.956898,
		-0.430630, -0.870738, -0.237432,
		-0.901106, 0.400044, 0.167247,
		37.534035, 34.816704, 30.637438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837708, 34.300041, 29.948650>,  <38.164810, 34.536671, 30.520365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837708, 34.300041, 29.948650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611813, 34.602417, 30.081095>,  <37.476276, 34.783840, 30.160563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611813, 34.602417, 30.081095>,  <37.837708, 34.300041, 29.948650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611813, 34.602417, 30.081095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009056, 0.395516, -0.918415,
		-0.825222, -0.521660, -0.216516,
		-0.564736, 0.755935, 0.331112,
		37.442390, 34.829197, 30.180428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324966, 34.305550, 29.512852>,  <37.837708, 34.300041, 29.948650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324966, 34.305550, 29.512852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371014, 34.676624, 29.654922>,  <37.398643, 34.899269, 29.740166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371014, 34.676624, 29.654922>,  <37.324966, 34.305550, 29.512852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371014, 34.676624, 29.654922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083068, 0.347313, -0.934063,
		-0.989872, 0.137034, -0.037077,
		0.115121, 0.927683, 0.355178,
		37.405548, 34.954929, 29.761477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774300, 34.709072, 29.199417>,  <37.324966, 34.305550, 29.512852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774300, 34.709072, 29.199417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033916, 34.992340, 29.310577>,  <37.189686, 35.162300, 29.377274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033916, 34.992340, 29.310577>,  <36.774300, 34.709072, 29.199417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033916, 34.992340, 29.310577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019468, 0.380639, -0.924519,
		-0.760500, 0.594645, 0.260839,
		0.649046, 0.708174, 0.277899,
		37.228630, 35.204792, 29.393948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586815, 35.243008, 28.751669>,  <36.774300, 34.709072, 29.199417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586815, 35.243008, 28.751669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.962711, 35.312351, 28.869541>,  <37.188248, 35.353958, 28.940264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.962711, 35.312351, 28.869541>,  <36.586815, 35.243008, 28.751669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962711, 35.312351, 28.869541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117911, 0.644698, -0.755289,
		-0.320912, 0.744522, 0.585408,
		0.939741, 0.173355, 0.294679,
		37.244633, 35.364357, 28.957945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714710, 34.697426, 28.326799>,  <36.586815, 35.243008, 28.751669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714710, 34.697426, 28.326799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741898, 34.351006, 28.128675>,  <36.758209, 34.143154, 28.009802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741898, 34.351006, 28.128675>,  <36.714710, 34.697426, 28.326799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741898, 34.351006, 28.128675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605073, -0.430518, 0.669732,
		-0.793263, 0.254175, -0.553290,
		0.067972, -0.866054, -0.495308,
		36.762291, 34.091190, 27.980083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077766, 34.465847, 28.484682>,  <36.714710, 34.697426, 28.326799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077766, 34.465847, 28.484682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272209, 34.144562, 28.346956>,  <36.388874, 33.951790, 28.264320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272209, 34.144562, 28.346956>,  <36.077766, 34.465847, 28.484682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272209, 34.144562, 28.346956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544352, -0.586529, 0.599720,
		-0.683653, -0.104099, -0.722345,
		0.486107, -0.803210, -0.344316,
		36.418041, 33.903599, 28.243662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642025, 33.971130, 28.226183>,  <36.077766, 34.465847, 28.484682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642025, 33.971130, 28.226183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.964722, 33.764118, 28.340258>,  <36.158340, 33.639912, 28.408703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.964722, 33.764118, 28.340258>,  <35.642025, 33.971130, 28.226183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964722, 33.764118, 28.340258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576479, -0.583321, 0.572196,
		-0.129775, -0.626016, -0.768936,
		0.806741, -0.517532, 0.285185,
		36.206745, 33.608860, 28.425814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418312, 33.274391, 28.240475>,  <35.642025, 33.971130, 28.226183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418312, 33.274391, 28.240475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.752930, 33.289570, 28.459110>,  <35.953701, 33.298679, 28.590292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.752930, 33.289570, 28.459110>,  <35.418312, 33.274391, 28.240475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752930, 33.289570, 28.459110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369690, -0.697194, 0.614207,
		0.404388, -0.715878, -0.569201,
		0.836540, 0.037950, 0.546590,
		36.003891, 33.300953, 28.623087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607182, 32.617119, 28.368380>,  <35.418312, 33.274391, 28.240475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607182, 32.617119, 28.368380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772938, 32.830093, 28.663618>,  <35.872391, 32.957878, 28.840761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772938, 32.830093, 28.663618>,  <35.607182, 32.617119, 28.368380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772938, 32.830093, 28.663618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429151, -0.600864, 0.674383,
		0.802565, -0.596213, -0.020494,
		0.414390, 0.532441, 0.738098,
		35.897255, 32.989826, 28.885048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554409, 32.104992, 28.916990>,  <35.607182, 32.617119, 28.368380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554409, 32.104992, 28.916990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.683876, 32.434654, 29.102900>,  <35.761555, 32.632450, 29.214445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.683876, 32.434654, 29.102900>,  <35.554409, 32.104992, 28.916990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683876, 32.434654, 29.102900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390455, -0.331097, 0.859022,
		0.861851, -0.459507, 0.214631,
		0.323663, 0.824153, 0.464773,
		35.780975, 32.681900, 29.242331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068039, 31.998686, 29.425116>,  <35.554409, 32.104992, 28.916990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068039, 31.998686, 29.425116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.927990, 32.344265, 29.569897>,  <35.843960, 32.551613, 29.656765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.927990, 32.344265, 29.569897>,  <36.068039, 31.998686, 29.425116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927990, 32.344265, 29.569897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299063, -0.469290, 0.830860,
		0.887680, 0.182655, 0.422684,
		-0.350122, 0.863947, 0.361954,
		35.822952, 32.603451, 29.678482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221775, 31.957361, 30.242018>,  <36.068039, 31.998686, 29.425116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221775, 31.957361, 30.242018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961575, 32.253700, 30.175095>,  <35.805454, 32.431503, 30.134941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961575, 32.253700, 30.175095>,  <36.221775, 31.957361, 30.242018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961575, 32.253700, 30.175095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384749, -0.131504, 0.913606,
		0.654842, 0.658672, 0.370584,
		-0.650500, 0.740849, -0.167309,
		35.766426, 32.475956, 30.124903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169209, 32.444630, 30.806923>,  <36.221775, 31.957361, 30.242018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169209, 32.444630, 30.806923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808243, 32.492176, 30.641266>,  <35.591663, 32.520706, 30.541872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808243, 32.492176, 30.641266>,  <36.169209, 32.444630, 30.806923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808243, 32.492176, 30.641266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429197, -0.332508, 0.839779,
		-0.037884, 0.935580, 0.351078,
		-0.902416, 0.118868, -0.414145,
		35.537518, 32.527836, 30.517023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899685, 32.838810, 31.285814>,  <36.169209, 32.444630, 30.806923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899685, 32.838810, 31.285814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599072, 32.679783, 31.075239>,  <35.418705, 32.584366, 30.948895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599072, 32.679783, 31.075239>,  <35.899685, 32.838810, 31.285814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599072, 32.679783, 31.075239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484531, -0.208891, 0.849467,
		-0.447691, 0.893478, -0.035647,
		-0.751534, -0.397571, -0.526436,
		35.373611, 32.560513, 30.917309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214977, 33.219776, 31.354805>,  <35.899685, 32.838810, 31.285814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214977, 33.219776, 31.354805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.139580, 32.836227, 31.269911>,  <35.094341, 32.606098, 31.218973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.139580, 32.836227, 31.269911>,  <35.214977, 33.219776, 31.354805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139580, 32.836227, 31.269911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538444, -0.079832, 0.838871,
		-0.821309, 0.272398, -0.501249,
		-0.188491, -0.958867, -0.212238,
		35.083031, 32.548569, 31.206240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747921, 33.040398, 31.820858>,  <35.214977, 33.219776, 31.354805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747921, 33.040398, 31.820858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.812088, 32.672672, 31.677124>,  <34.850590, 32.452038, 31.590883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.812088, 32.672672, 31.677124>,  <34.747921, 33.040398, 31.820858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812088, 32.672672, 31.677124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391076, -0.393457, 0.832017,
		-0.906270, 0.007055, -0.422641,
		0.160421, -0.919316, -0.359337,
		34.860214, 32.396877, 31.569323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103146, 32.672798, 31.669048>,  <34.747921, 33.040398, 31.820858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103146, 32.672798, 31.669048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393215, 32.405941, 31.737223>,  <34.567257, 32.245827, 31.778128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393215, 32.405941, 31.737223>,  <34.103146, 32.672798, 31.669048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393215, 32.405941, 31.737223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553974, -0.418265, 0.719838,
		-0.408926, -0.616442, -0.672888,
		0.725184, -0.667124, 0.170454,
		34.610767, 32.205799, 31.788353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787357, 32.074276, 31.691473>,  <34.103146, 32.672798, 31.669048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787357, 32.074276, 31.691473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.123329, 31.989565, 31.891338>,  <34.324913, 31.938738, 32.011257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.123329, 31.989565, 31.891338>,  <33.787357, 32.074276, 31.691473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123329, 31.989565, 31.891338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540275, -0.413083, 0.733120,
		0.051145, -0.885727, -0.461380,
		0.839933, -0.211777, 0.499663,
		34.375309, 31.926031, 32.041237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656853, 31.395256, 32.003155>,  <33.787357, 32.074276, 31.691473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656853, 31.395256, 32.003155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.967968, 31.564299, 32.189251>,  <34.154636, 31.665724, 32.300911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.967968, 31.564299, 32.189251>,  <33.656853, 31.395256, 32.003155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967968, 31.564299, 32.189251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241307, -0.482705, 0.841883,
		0.580361, -0.767071, -0.273463,
		0.777786, 0.422607, 0.465243,
		34.201305, 31.691080, 32.328823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815807, 30.804749, 32.371639>,  <33.656853, 31.395256, 32.003155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815807, 30.804749, 32.371639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.006496, 31.113493, 32.539909>,  <34.120911, 31.298740, 32.640869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.006496, 31.113493, 32.539909>,  <33.815807, 30.804749, 32.371639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006496, 31.113493, 32.539909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084785, -0.516693, 0.851962,
		0.874954, -0.370485, -0.311762,
		0.476725, 0.771860, 0.420672,
		34.149513, 31.345051, 32.666111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223011, 30.482182, 32.699493>,  <33.815807, 30.804749, 32.371639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223011, 30.482182, 32.699493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.239841, 30.844271, 32.868633>,  <34.249939, 31.061523, 32.970119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.239841, 30.844271, 32.868633>,  <34.223011, 30.482182, 32.699493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239841, 30.844271, 32.868633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009386, -0.423568, 0.905816,
		0.999070, -0.034143, -0.026318,
		0.042075, 0.905221, 0.422854,
		34.252464, 31.115837, 32.995491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837273, 30.531879, 33.091396>,  <34.223011, 30.482182, 32.699493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837273, 30.531879, 33.091396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.574043, 30.788698, 33.248734>,  <34.416107, 30.942789, 33.343136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.574043, 30.788698, 33.248734>,  <34.837273, 30.531879, 33.091396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574043, 30.788698, 33.248734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071745, -0.573487, 0.816067,
		0.749531, 0.508809, 0.423458,
		-0.658070, 0.642048, 0.393341,
		34.376621, 30.981312, 33.366737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.185658, 30.798323, 33.764660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.799026, 30.888227, 33.813980>,  <34.567047, 30.942171, 33.843575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.799026, 30.888227, 33.813980>,  <35.185658, 30.798323, 33.764660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799026, 30.888227, 33.813980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032088, -0.371118, 0.928031,
		0.254346, 0.900974, 0.351503,
		-0.966581, 0.224762, 0.123303,
		34.509052, 30.955656, 33.850971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103161, 31.294086, 34.364620>,  <35.185658, 30.798323, 33.764660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103161, 31.294086, 34.364620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.764202, 31.091446, 34.301033>,  <34.560825, 30.969862, 34.262882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.764202, 31.091446, 34.301033>,  <35.103161, 31.294086, 34.364620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764202, 31.091446, 34.301033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017795, -0.272129, 0.962096,
		-0.530661, 0.818107, 0.221587,
		-0.847398, -0.506603, -0.158966,
		34.509983, 30.939465, 34.253342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644360, 31.353794, 34.986927>,  <35.103161, 31.294086, 34.364620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644360, 31.353794, 34.986927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502453, 31.036892, 34.788345>,  <34.417309, 30.846750, 34.669197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502453, 31.036892, 34.788345>,  <34.644360, 31.353794, 34.986927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502453, 31.036892, 34.788345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035330, -0.519255, 0.853889,
		-0.934287, 0.320472, 0.156224,
		-0.354768, -0.792257, -0.496456,
		34.396023, 30.799215, 34.639408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096104, 31.061764, 35.376526>,  <34.644360, 31.353794, 34.986927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096104, 31.061764, 35.376526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.186630, 30.747051, 35.146828>,  <34.240948, 30.558224, 35.009010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.186630, 30.747051, 35.146828>,  <34.096104, 31.061764, 35.376526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186630, 30.747051, 35.146828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085631, -0.603330, 0.792881,
		-0.970282, -0.130271, -0.203918,
		0.226319, -0.786780, -0.574245,
		34.254528, 30.511017, 34.974556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632633, 30.568417, 35.536751>,  <34.096104, 31.061764, 35.376526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632633, 30.568417, 35.536751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.920914, 30.355150, 35.359520>,  <34.093884, 30.227190, 35.253181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.920914, 30.355150, 35.359520>,  <33.632633, 30.568417, 35.536751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920914, 30.355150, 35.359520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168236, -0.754548, 0.634313,
		-0.672521, -0.382609, -0.633503,
		0.720703, -0.533167, -0.443081,
		34.137123, 30.195200, 35.226597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344006, 30.011480, 35.427654>,  <33.632633, 30.568417, 35.536751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344006, 30.011480, 35.427654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730961, 29.911467, 35.411404>,  <33.963135, 29.851458, 35.401653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730961, 29.911467, 35.411404>,  <33.344006, 30.011480, 35.427654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730961, 29.911467, 35.411404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179310, -0.789187, 0.587394,
		-0.178930, -0.560951, -0.808281,
		0.967384, -0.250035, -0.040626,
		34.021175, 29.836456, 35.399216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403160, 29.298260, 35.152435>,  <33.344006, 30.011480, 35.427654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403160, 29.298260, 35.152435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.736126, 29.368303, 35.362740>,  <33.935905, 29.410330, 35.488922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.736126, 29.368303, 35.362740>,  <33.403160, 29.298260, 35.152435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736126, 29.368303, 35.362740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252024, -0.725338, 0.640600,
		0.493526, -0.665750, -0.559651,
		0.832416, 0.175107, 0.525758,
		33.985851, 29.420835, 35.520466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628197, 28.562651, 35.326450>,  <33.403160, 29.298260, 35.152435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628197, 28.562651, 35.326450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816456, 28.811234, 35.576981>,  <33.929413, 28.960382, 35.727299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816456, 28.811234, 35.576981>,  <33.628197, 28.562651, 35.326450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816456, 28.811234, 35.576981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384859, -0.494173, 0.779536,
		0.793960, -0.607934, 0.006592,
		0.470649, 0.621458, 0.626323,
		33.957649, 28.997671, 35.764877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851799, 28.112169, 35.836807>,  <33.628197, 28.562651, 35.326450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851799, 28.112169, 35.836807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853348, 28.479418, 35.995316>,  <33.854279, 28.699768, 36.090420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853348, 28.479418, 35.995316>,  <33.851799, 28.112169, 35.836807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853348, 28.479418, 35.995316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511295, -0.338745, 0.789828,
		0.859396, -0.205671, 0.468121,
		0.003871, 0.918124, 0.396275,
		33.854507, 28.754854, 36.114197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971695, 28.027784, 36.458847>,  <33.851799, 28.112169, 35.836807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971695, 28.027784, 36.458847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814556, 28.392778, 36.504528>,  <33.720272, 28.611774, 36.531937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814556, 28.392778, 36.504528>,  <33.971695, 28.027784, 36.458847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814556, 28.392778, 36.504528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474043, -0.307351, 0.825117,
		0.788006, 0.270011, 0.553300,
		-0.392848, 0.912485, 0.114198,
		33.696701, 28.666523, 36.538788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053307, 28.084991, 37.182819>,  <33.971695, 28.027784, 36.458847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053307, 28.084991, 37.182819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789486, 28.371126, 37.090488>,  <33.631191, 28.542807, 37.035091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789486, 28.371126, 37.090488>,  <34.053307, 28.084991, 37.182819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789486, 28.371126, 37.090488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407039, -0.081738, 0.909746,
		0.631906, 0.693984, 0.345080,
		-0.659556, 0.715335, -0.230827,
		33.591618, 28.585728, 37.021240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004368, 28.451538, 37.746155>,  <34.053307, 28.084991, 37.182819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004368, 28.451538, 37.746155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.668781, 28.538349, 37.546539>,  <33.467430, 28.590435, 37.426769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.668781, 28.538349, 37.546539>,  <34.004368, 28.451538, 37.746155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668781, 28.538349, 37.546539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543927, -0.306084, 0.781317,
		0.016820, 0.926937, 0.374840,
		-0.838964, 0.217027, -0.499038,
		33.417091, 28.603456, 37.396828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616615, 28.679760, 38.245190>,  <34.004368, 28.451538, 37.746155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616615, 28.679760, 38.245190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.333069, 28.593321, 37.976620>,  <33.162941, 28.541458, 37.815479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.333069, 28.593321, 37.976620>,  <33.616615, 28.679760, 38.245190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333069, 28.593321, 37.976620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582348, -0.357773, 0.729979,
		-0.397962, 0.908461, 0.127770,
		-0.708870, -0.216097, -0.671420,
		33.120407, 28.528492, 37.775192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946175, 28.849291, 38.541435>,  <33.616615, 28.679760, 38.245190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946175, 28.849291, 38.541435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.894825, 28.573839, 38.255970>,  <32.864014, 28.408567, 38.084690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.894825, 28.573839, 38.255970>,  <32.946175, 28.849291, 38.541435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894825, 28.573839, 38.255970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582158, -0.530254, 0.616379,
		-0.802877, 0.494590, -0.332819,
		-0.128377, -0.688630, -0.713659,
		32.856312, 28.367250, 38.041874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264908, 28.574854, 38.606480>,  <32.946175, 28.849291, 38.541435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264908, 28.574854, 38.606480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.438580, 28.300386, 38.373016>,  <32.542782, 28.135706, 38.232937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.438580, 28.300386, 38.373016>,  <32.264908, 28.574854, 38.606480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438580, 28.300386, 38.373016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411296, -0.727442, 0.549239,
		-0.801448, 0.001586, -0.598062,
		0.434185, -0.686167, -0.583660,
		32.568836, 28.094536, 38.197918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726309, 28.288473, 38.242371>,  <32.264908, 28.574854, 38.606480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726309, 28.288473, 38.242371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.023228, 28.020544, 38.249702>,  <32.201378, 27.859787, 38.254101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.023228, 28.020544, 38.249702>,  <31.726309, 28.288473, 38.242371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023228, 28.020544, 38.249702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452795, -0.481246, 0.750585,
		-0.493934, -0.565459, -0.660519,
		0.742297, -0.669820, 0.018333,
		32.245914, 27.819597, 38.255203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381804, 27.606850, 38.143394>,  <31.726309, 28.288473, 38.242371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381804, 27.606850, 38.143394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.730722, 27.520084, 38.318687>,  <31.940073, 27.468025, 38.423862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.730722, 27.520084, 38.318687>,  <31.381804, 27.606850, 38.143394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730722, 27.520084, 38.318687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488947, -0.376985, 0.786647,
		-0.005426, -0.900462, -0.434901,
		0.872297, -0.216912, 0.438232,
		31.992411, 27.455009, 38.450157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267342, 26.971531, 38.356312>,  <31.381804, 27.606850, 38.143394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267342, 26.971531, 38.356312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.580660, 27.095972, 38.571594>,  <31.768650, 27.170637, 38.700764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.580660, 27.095972, 38.571594>,  <31.267342, 26.971531, 38.356312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580660, 27.095972, 38.571594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469983, -0.270321, 0.840263,
		0.406898, -0.911120, -0.065527,
		0.783294, 0.311105, 0.538204,
		31.815649, 27.189304, 38.733055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382339, 26.407923, 38.963375>,  <31.267342, 26.971531, 38.356312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382339, 26.407923, 38.963375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.568827, 26.743439, 39.075855>,  <31.680719, 26.944748, 39.143345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.568827, 26.743439, 39.075855>,  <31.382339, 26.407923, 38.963375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568827, 26.743439, 39.075855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290922, -0.154821, 0.944137,
		0.835469, -0.521980, 0.171842,
		0.466215, 0.838789, 0.281203,
		31.708691, 26.995075, 39.160217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650888, 26.209074, 39.590485>,  <31.382339, 26.407923, 38.963375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650888, 26.209074, 39.590485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.652479, 26.609070, 39.590210>,  <31.653433, 26.849068, 39.590046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.652479, 26.609070, 39.590210>,  <31.650888, 26.209074, 39.590485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652479, 26.609070, 39.590210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345010, 0.002019, 0.938597,
		0.938591, -0.003495, 0.345015,
		0.003977, 0.999992, -0.000689,
		31.653673, 26.909067, 39.590004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090832, 26.436499, 40.150749>,  <31.650888, 26.209074, 39.590485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090832, 26.436499, 40.150749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.812450, 26.709845, 40.062515>,  <31.645420, 26.873852, 40.009575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.812450, 26.709845, 40.062515>,  <32.090832, 26.436499, 40.150749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812450, 26.709845, 40.062515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336948, -0.039512, 0.940694,
		0.634122, 0.729006, 0.257757,
		-0.695957, 0.683365, -0.220581,
		31.603662, 26.914854, 39.996342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170658, 26.896528, 40.720570>,  <32.090832, 26.436499, 40.150749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170658, 26.896528, 40.720570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.816526, 27.003008, 40.568077>,  <31.604048, 27.066895, 40.476582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.816526, 27.003008, 40.568077>,  <32.170658, 26.896528, 40.720570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816526, 27.003008, 40.568077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388048, 0.028699, 0.921192,
		0.256161, 0.963491, 0.077889,
		-0.885325, 0.266198, -0.381232,
		31.550928, 27.082867, 40.453709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949392, 27.444742, 41.171139>,  <32.170658, 26.896528, 40.720570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949392, 27.444742, 41.171139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.639887, 27.283747, 40.975468>,  <31.454184, 27.187149, 40.858067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.639887, 27.283747, 40.975468>,  <31.949392, 27.444742, 41.171139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639887, 27.283747, 40.975468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480566, -0.130169, 0.867244,
		-0.412730, 0.906124, -0.092701,
		-0.773763, -0.402487, -0.489177,
		31.407759, 27.163000, 40.828716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322020, 27.754780, 41.495186>,  <31.949392, 27.444742, 41.171139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322020, 27.754780, 41.495186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.235456, 27.407246, 41.317066>,  <31.183517, 27.198725, 41.210194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.235456, 27.407246, 41.317066>,  <31.322020, 27.754780, 41.495186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235456, 27.407246, 41.317066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502003, -0.292163, 0.814023,
		-0.837353, 0.399703, -0.372932,
		-0.216410, -0.868837, -0.445296,
		31.170534, 27.146595, 41.183479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865082, 27.384710, 42.030334>,  <31.322020, 27.754780, 41.495186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865082, 27.384710, 42.030334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.166004, 27.375643, 42.293701>,  <32.346558, 27.370203, 42.451721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.166004, 27.375643, 42.293701>,  <31.865082, 27.384710, 42.030334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166004, 27.375643, 42.293701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586246, 0.479009, -0.653350,
		-0.300579, 0.877517, 0.373652,
		0.752308, -0.022669, 0.658421,
		32.391697, 27.368841, 42.491226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948713, 28.019958, 42.179188>,  <31.865082, 27.384710, 42.030334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948713, 28.019958, 42.179188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.288742, 27.822403, 42.252346>,  <32.492760, 27.703871, 42.296242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.288742, 27.822403, 42.252346>,  <31.948713, 28.019958, 42.179188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288742, 27.822403, 42.252346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476869, 0.574406, -0.665323,
		0.223541, 0.652789, 0.723807,
		0.850074, -0.493888, 0.182891,
		32.543766, 27.674236, 42.307213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448879, 28.590961, 41.996410>,  <31.948713, 28.019958, 42.179188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448879, 28.590961, 41.996410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.667160, 28.260746, 42.053959>,  <32.798126, 28.062616, 42.088490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.667160, 28.260746, 42.053959>,  <32.448879, 28.590961, 41.996410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667160, 28.260746, 42.053959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724235, 0.378254, -0.576548,
		0.421542, 0.418818, 0.804297,
		0.545697, -0.825539, 0.143873,
		32.830868, 28.013084, 42.097122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129318, 28.802132, 42.017879>,  <32.448879, 28.590961, 41.996410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129318, 28.802132, 42.017879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.177898, 28.415668, 41.926853>,  <33.207047, 28.183790, 41.872238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.177898, 28.415668, 41.926853>,  <33.129318, 28.802132, 42.017879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177898, 28.415668, 41.926853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672104, 0.248752, -0.697423,
		0.730430, -0.068247, 0.679570,
		0.121447, -0.966160, -0.227565,
		33.214333, 28.125820, 41.858585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917358, 28.667759, 42.039387>,  <33.129318, 28.802132, 42.017879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917358, 28.667759, 42.039387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727005, 28.392389, 41.820442>,  <33.612793, 28.227167, 41.689075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727005, 28.392389, 41.820442>,  <33.917358, 28.667759, 42.039387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727005, 28.392389, 41.820442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688019, 0.096286, -0.719277,
		0.547871, -0.718889, 0.427827,
		-0.475887, -0.688424, -0.547362,
		33.584240, 28.185862, 41.656235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470196, 28.195349, 41.784977>,  <33.917358, 28.667759, 42.039387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470196, 28.195349, 41.784977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.159626, 28.184965, 41.533108>,  <33.973286, 28.178734, 41.381985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.159626, 28.184965, 41.533108>,  <34.470196, 28.195349, 41.784977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159626, 28.184965, 41.533108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605581, 0.245868, -0.756849,
		0.174466, -0.968956, -0.175176,
		-0.776424, -0.025961, -0.629677,
		33.926701, 28.177177, 41.344204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775005, 28.152903, 41.167877>,  <34.470196, 28.195349, 41.784977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775005, 28.152903, 41.167877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.417480, 28.258835, 41.023125>,  <34.202965, 28.322395, 40.936275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.417480, 28.258835, 41.023125>,  <34.775005, 28.152903, 41.167877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417480, 28.258835, 41.023125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418978, 0.205541, -0.884427,
		-0.159844, -0.942134, -0.294675,
		-0.893816, 0.264833, -0.361879,
		34.149334, 28.338285, 40.914562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785027, 27.913422, 40.464542>,  <34.775005, 28.152903, 41.167877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785027, 27.913422, 40.464542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.495949, 28.189112, 40.485249>,  <34.322502, 28.354527, 40.497673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.495949, 28.189112, 40.485249>,  <34.785027, 27.913422, 40.464542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495949, 28.189112, 40.485249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301501, 0.381766, -0.873700,
		-0.621940, -0.615811, -0.483702,
		-0.722695, 0.689225, 0.051768,
		34.279140, 28.395880, 40.500778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588684, 28.056078, 39.764397>,  <34.785027, 27.913422, 40.464542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588684, 28.056078, 39.764397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.411873, 28.361814, 39.952183>,  <34.305786, 28.545256, 40.064854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.411873, 28.361814, 39.952183>,  <34.588684, 28.056078, 39.764397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411873, 28.361814, 39.952183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049835, 0.543487, -0.837937,
		-0.895618, -0.346993, -0.278325,
		-0.442024, 0.764342, 0.469464,
		34.279266, 28.591118, 40.093021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877625, 28.343054, 39.441559>,  <34.588684, 28.056078, 39.764397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877625, 28.343054, 39.441559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069294, 28.629253, 39.644913>,  <34.184296, 28.800974, 39.766926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069294, 28.629253, 39.644913>,  <33.877625, 28.343054, 39.441559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069294, 28.629253, 39.644913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081435, 0.540472, -0.837412,
		-0.873935, 0.442665, 0.200713,
		0.479172, 0.715498, 0.508385,
		34.213047, 28.843903, 39.797428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586380, 29.001947, 39.195904>,  <33.877625, 28.343054, 39.441559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586380, 29.001947, 39.195904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.944202, 29.081490, 39.356018>,  <34.158894, 29.129215, 39.452087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.944202, 29.081490, 39.356018>,  <33.586380, 29.001947, 39.195904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944202, 29.081490, 39.356018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208138, 0.607209, -0.766796,
		-0.395540, 0.769255, 0.501791,
		0.894554, 0.198857, 0.400287,
		34.212570, 29.141146, 39.476105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691326, 29.708080, 39.084976>,  <33.586380, 29.001947, 39.195904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691326, 29.708080, 39.084976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059155, 29.558462, 39.133106>,  <34.279854, 29.468691, 39.161983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059155, 29.558462, 39.133106>,  <33.691326, 29.708080, 39.084976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059155, 29.558462, 39.133106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320927, 0.538317, -0.779244,
		0.226698, 0.755187, 0.615062,
		0.919573, -0.374043, 0.120325,
		34.335026, 29.446249, 39.169205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075291, 30.286655, 38.987968>,  <33.691326, 29.708080, 39.084976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075291, 30.286655, 38.987968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331512, 29.982296, 38.946548>,  <34.485245, 29.799681, 38.921696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331512, 29.982296, 38.946548>,  <34.075291, 30.286655, 38.987968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331512, 29.982296, 38.946548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513007, 0.524359, -0.679610,
		0.571412, 0.382206, 0.726228,
		0.640556, -0.760898, -0.103550,
		34.523678, 29.754026, 38.915482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685383, 30.655369, 38.842880>,  <34.075291, 30.286655, 38.987968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685383, 30.655369, 38.842880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757088, 30.285404, 38.708771>,  <34.800110, 30.063425, 38.628304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757088, 30.285404, 38.708771>,  <34.685383, 30.655369, 38.842880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757088, 30.285404, 38.708771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525819, 0.378108, -0.761938,
		0.831493, -0.039708, 0.554115,
		0.179260, -0.924910, -0.335273,
		34.810867, 30.007931, 38.608189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362289, 30.584305, 38.873909>,  <34.685383, 30.655369, 38.842880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362289, 30.584305, 38.873909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223457, 30.336510, 38.592266>,  <35.140160, 30.187832, 38.423279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223457, 30.336510, 38.592266>,  <35.362289, 30.584305, 38.873909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223457, 30.336510, 38.592266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662621, 0.369323, -0.651563,
		0.663680, -0.692701, 0.282302,
		-0.347077, -0.619488, -0.704110,
		35.119335, 30.150663, 38.381035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975735, 30.445999, 38.460957>,  <35.362289, 30.584305, 38.873909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975735, 30.445999, 38.460957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699890, 30.293482, 38.214687>,  <35.534382, 30.201971, 38.066925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699890, 30.293482, 38.214687>,  <35.975735, 30.445999, 38.460957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699890, 30.293482, 38.214687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577525, 0.223373, -0.785219,
		0.436925, -0.897061, 0.066167,
		-0.689610, -0.381295, -0.615673,
		35.493008, 30.179094, 38.029987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343933, 30.045160, 37.921387>,  <35.975735, 30.445999, 38.460957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343933, 30.045160, 37.921387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.986832, 30.121286, 37.758038>,  <35.772572, 30.166962, 37.660027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.986832, 30.121286, 37.758038>,  <36.343933, 30.045160, 37.921387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986832, 30.121286, 37.758038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430776, 0.095005, -0.897444,
		-0.132000, -0.977115, -0.166800,
		-0.892753, 0.190316, -0.408377,
		35.719006, 30.178381, 37.635525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390343, 29.839396, 37.216621>,  <36.343933, 30.045160, 37.921387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390343, 29.839396, 37.216621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093231, 30.107126, 37.209881>,  <35.914967, 30.267765, 37.205837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093231, 30.107126, 37.209881>,  <36.390343, 29.839396, 37.216621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093231, 30.107126, 37.209881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401676, 0.425333, -0.811017,
		-0.535668, -0.609174, -0.584780,
		-0.742776, 0.669328, -0.016854,
		35.870399, 30.307924, 37.204826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318588, 30.004021, 36.564220>,  <36.390343, 29.839396, 37.216621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318588, 30.004021, 36.564220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079849, 30.293325, 36.703167>,  <35.936604, 30.466909, 36.786533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079849, 30.293325, 36.703167>,  <36.318588, 30.004021, 36.564220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079849, 30.293325, 36.703167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264856, 0.586262, -0.765603,
		-0.757378, -0.364949, -0.541471,
		-0.596850, 0.723263, 0.347363,
		35.900795, 30.510303, 36.807377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890560, 30.169868, 36.086479>,  <36.318588, 30.004021, 36.564220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890560, 30.169868, 36.086479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.945709, 30.495079, 36.312744>,  <35.978798, 30.690207, 36.448505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.945709, 30.495079, 36.312744>,  <35.890560, 30.169868, 36.086479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945709, 30.495079, 36.312744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441595, 0.460755, -0.769869,
		-0.886558, 0.355936, -0.295506,
		0.137869, 0.813028, 0.565666,
		35.987068, 30.738987, 36.482445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.184811, 31.194046, 31.187725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.072456, 31.560589, 31.301844>,  <35.005043, 31.780514, 31.370316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.072456, 31.560589, 31.301844>,  <35.184811, 31.194046, 31.187725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072456, 31.560589, 31.301844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053775, 0.311823, -0.948617,
		-0.958234, -0.251108, -0.136863,
		-0.280883, 0.916357, 0.285296,
		34.988190, 31.835497, 31.387432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578468, 31.463873, 30.769472>,  <35.184811, 31.194046, 31.187725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578468, 31.463873, 30.769472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.763447, 31.789463, 30.910093>,  <34.874435, 31.984818, 30.994465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.763447, 31.789463, 30.910093>,  <34.578468, 31.463873, 30.769472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763447, 31.789463, 30.910093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131269, 0.329272, -0.935066,
		-0.876876, 0.478567, 0.045421,
		0.462447, 0.813974, 0.351552,
		34.902180, 32.033657, 31.015558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425518, 31.931725, 30.264238>,  <34.578468, 31.463873, 30.769472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425518, 31.931725, 30.264238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.719315, 32.133854, 30.445423>,  <34.895592, 32.255131, 30.554134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.719315, 32.133854, 30.445423>,  <34.425518, 31.931725, 30.264238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719315, 32.133854, 30.445423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217503, 0.456966, -0.862481,
		-0.642818, 0.732005, 0.225729,
		0.734491, 0.505322, 0.452960,
		34.939663, 32.285450, 30.581310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378807, 32.642063, 30.070698>,  <34.425518, 31.931725, 30.264238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378807, 32.642063, 30.070698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.756630, 32.599384, 30.194904>,  <34.983326, 32.573776, 30.269428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.756630, 32.599384, 30.194904>,  <34.378807, 32.642063, 30.070698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756630, 32.599384, 30.194904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315875, 0.553355, -0.770728,
		-0.089590, 0.826083, 0.556381,
		0.944561, -0.106698, 0.310514,
		35.039997, 32.567375, 30.288059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743019, 33.270329, 30.112480>,  <34.378807, 32.642063, 30.070698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743019, 33.270329, 30.112480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.074089, 33.045849, 30.112417>,  <35.272732, 32.911160, 30.112379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.074089, 33.045849, 30.112417>,  <34.743019, 33.270329, 30.112480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074089, 33.045849, 30.112417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425031, 0.627034, -0.652823,
		0.366465, 0.540260, 0.757511,
		0.827679, -0.561202, -0.000159,
		35.322392, 32.877487, 30.112370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311317, 33.785202, 30.029585>,  <34.743019, 33.270329, 30.112480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311317, 33.785202, 30.029585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.459026, 33.432251, 29.912931>,  <35.547649, 33.220482, 29.842939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.459026, 33.432251, 29.912931>,  <35.311317, 33.785202, 30.029585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459026, 33.432251, 29.912931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458127, 0.445873, -0.768971,
		0.808555, 0.150352, 0.568888,
		0.369268, -0.882378, -0.291632,
		35.569805, 33.167538, 29.825441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023582, 33.829216, 29.894669>,  <35.311317, 33.785202, 30.029585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023582, 33.829216, 29.894669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.951180, 33.483490, 29.706966>,  <35.907738, 33.276054, 29.594345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.951180, 33.483490, 29.706966>,  <36.023582, 33.829216, 29.894669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951180, 33.483490, 29.706966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635648, 0.261273, -0.726421,
		0.750458, -0.429771, 0.502105,
		-0.181009, -0.864311, -0.469257,
		35.896877, 33.224197, 29.566189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563885, 33.518005, 29.831858>,  <36.023582, 33.829216, 29.894669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563885, 33.518005, 29.831858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.356758, 33.341595, 29.538637>,  <36.232483, 33.235748, 29.362705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.356758, 33.341595, 29.538637>,  <36.563885, 33.518005, 29.831858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356758, 33.341595, 29.538637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675816, 0.314510, -0.666601,
		0.524539, -0.840584, 0.135193,
		-0.517815, -0.441024, -0.733052,
		36.201412, 33.209286, 29.318722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114456, 33.385212, 29.324400>,  <36.563885, 33.518005, 29.831858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114456, 33.385212, 29.324400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.775444, 33.380219, 29.112162>,  <36.572037, 33.377224, 28.984819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.775444, 33.380219, 29.112162>,  <37.114456, 33.385212, 29.324400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775444, 33.380219, 29.112162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522692, 0.153826, -0.838529,
		0.092083, -0.988019, -0.123851,
		-0.847534, -0.012478, -0.530594,
		36.521183, 33.376472, 28.952984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290714, 32.999058, 28.779215>,  <37.114456, 33.385212, 29.324400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290714, 32.999058, 28.779215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.960335, 33.198765, 28.674492>,  <36.762108, 33.318588, 28.611658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.960335, 33.198765, 28.674492>,  <37.290714, 32.999058, 28.779215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960335, 33.198765, 28.674492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444804, 0.291831, -0.846749,
		-0.346348, -0.815825, -0.463112,
		-0.825949, 0.499264, -0.261807,
		36.712551, 33.348545, 28.595949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233044, 32.846256, 28.073149>,  <37.290714, 32.999058, 28.779215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233044, 32.846256, 28.073149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.978058, 33.152252, 28.109879>,  <36.825066, 33.335850, 28.131916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.978058, 33.152252, 28.109879>,  <37.233044, 32.846256, 28.073149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978058, 33.152252, 28.109879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321940, 0.372741, -0.870298,
		-0.699993, -0.525225, -0.483890,
		-0.637468, 0.764986, 0.091825,
		36.786819, 33.381748, 28.137426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942795, 32.895184, 27.408964>,  <37.233044, 32.846256, 28.073149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942795, 32.895184, 27.408964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.894249, 33.255451, 27.575850>,  <36.865120, 33.471611, 27.675982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.894249, 33.255451, 27.575850>,  <36.942795, 32.895184, 27.408964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894249, 33.255451, 27.575850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459342, 0.423569, -0.780765,
		-0.879929, 0.096883, -0.465123,
		-0.121368, 0.900668, 0.417213,
		36.857838, 33.525650, 27.701014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719078, 33.386745, 26.893707>,  <36.942795, 32.895184, 27.408964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719078, 33.386745, 26.893707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.894310, 33.607479, 27.177555>,  <36.999451, 33.739922, 27.347862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.894310, 33.607479, 27.177555>,  <36.719078, 33.386745, 26.893707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894310, 33.607479, 27.177555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081210, 0.761875, -0.642613,
		-0.895258, 0.339146, 0.288951,
		0.438084, 0.551838, 0.709617,
		37.025734, 33.773029, 27.390440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317921, 34.028923, 27.031488>,  <36.719078, 33.386745, 26.893707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317921, 34.028923, 27.031488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.717663, 34.021736, 27.043879>,  <36.957508, 34.017426, 27.051313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.717663, 34.021736, 27.043879>,  <36.317921, 34.028923, 27.031488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717663, 34.021736, 27.043879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035237, 0.647250, -0.761463,
		-0.006368, 0.762066, 0.647468,
		0.999359, -0.017965, 0.030975,
		37.017471, 34.016346, 27.053171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705929, 34.052090, 27.514153>,  <36.317921, 34.028923, 27.031488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705929, 34.052090, 27.514153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.469448, 33.870964, 27.247189>,  <35.327560, 33.762291, 27.087009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.469448, 33.870964, 27.247189>,  <35.705929, 34.052090, 27.514153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469448, 33.870964, 27.247189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794327, 0.183548, 0.579098,
		-0.139721, 0.872509, -0.468195,
		-0.591204, -0.452812, -0.667412,
		35.292088, 33.735119, 27.046965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197933, 34.421925, 27.527468>,  <35.705929, 34.052090, 27.514153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197933, 34.421925, 27.527468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.042782, 34.112537, 27.326948>,  <34.949692, 33.926907, 27.206636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.042782, 34.112537, 27.326948>,  <35.197933, 34.421925, 27.527468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042782, 34.112537, 27.326948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871337, 0.130366, 0.473051,
		-0.300537, 0.620285, -0.724517,
		-0.387878, -0.773467, -0.501297,
		34.926418, 33.880497, 27.176559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523335, 34.580864, 27.649605>,  <35.197933, 34.421925, 27.527468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523335, 34.580864, 27.649605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.486652, 34.221703, 27.477394>,  <34.464645, 34.006207, 27.374067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.486652, 34.221703, 27.477394>,  <34.523335, 34.580864, 27.649605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486652, 34.221703, 27.477394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846985, -0.157024, 0.507898,
		-0.523648, 0.411225, -0.746115,
		-0.091703, -0.897907, -0.430526,
		34.459141, 33.952332, 27.348236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826630, 34.564690, 27.285633>,  <34.523335, 34.580864, 27.649605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826630, 34.564690, 27.285633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.956768, 34.213032, 27.424921>,  <34.034851, 34.002037, 27.508493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.956768, 34.213032, 27.424921>,  <33.826630, 34.564690, 27.285633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956768, 34.213032, 27.424921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791336, -0.051553, 0.609204,
		-0.517624, -0.473764, -0.712469,
		0.325349, -0.879141, 0.348222,
		34.054371, 33.949291, 27.529388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187687, 34.180450, 27.295549>,  <33.826630, 34.564690, 27.285633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187687, 34.180450, 27.295549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.428192, 33.955006, 27.522118>,  <33.572495, 33.819740, 27.658058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.428192, 33.955006, 27.522118>,  <33.187687, 34.180450, 27.295549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428192, 33.955006, 27.522118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743805, -0.135772, 0.654462,
		-0.291958, -0.814806, -0.500851,
		0.601261, -0.563611, 0.566417,
		33.608570, 33.785923, 27.692043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812237, 33.556984, 27.508081>,  <33.187687, 34.180450, 27.295549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812237, 33.556984, 27.508081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.107643, 33.552757, 27.777744>,  <33.284885, 33.550220, 27.939541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.107643, 33.552757, 27.777744>,  <32.812237, 33.556984, 27.508081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107643, 33.552757, 27.777744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631131, -0.362618, 0.685698,
		0.237213, -0.931878, -0.274469,
		0.738514, -0.010569, 0.674155,
		33.329197, 33.549587, 27.979990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874203, 32.839989, 27.850313>,  <32.812237, 33.556984, 27.508081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874203, 32.839989, 27.850313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.012661, 33.105732, 28.115286>,  <33.095734, 33.265179, 28.274269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.012661, 33.105732, 28.115286>,  <32.874203, 32.839989, 27.850313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012661, 33.105732, 28.115286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577845, -0.405284, 0.708407,
		0.739108, -0.627993, 0.243609,
		0.346143, 0.664357, 0.662431,
		33.116505, 33.305038, 28.314014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242558, 32.426239, 28.382645>,  <32.874203, 32.839989, 27.850313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242558, 32.426239, 28.382645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.126266, 32.787521, 28.508949>,  <33.056492, 33.004292, 28.584732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.126266, 32.787521, 28.508949>,  <33.242558, 32.426239, 28.382645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126266, 32.787521, 28.508949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508028, -0.425369, 0.748978,
		0.810794, 0.057331, 0.582518,
		-0.290725, 0.903202, 0.315761,
		33.039047, 33.058483, 28.603678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040382, 32.281322, 29.073114>,  <33.242558, 32.426239, 28.382645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040382, 32.281322, 29.073114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.922092, 32.658886, 29.014343>,  <32.851120, 32.885426, 28.979080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.922092, 32.658886, 29.014343>,  <33.040382, 32.281322, 29.073114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922092, 32.658886, 29.014343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686719, -0.103139, 0.719568,
		0.664052, 0.313690, 0.678700,
		-0.295722, 0.943907, -0.146927,
		32.833378, 32.942059, 28.970264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147469, 32.642078, 29.658730>,  <33.040382, 32.281322, 29.073114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147469, 32.642078, 29.658730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.861881, 32.853271, 29.474779>,  <32.690529, 32.979988, 29.364408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.861881, 32.853271, 29.474779>,  <33.147469, 32.642078, 29.658730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861881, 32.853271, 29.474779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513902, 0.050947, 0.856335,
		0.475558, 0.847727, 0.234955,
		-0.713968, 0.527981, -0.459877,
		32.647690, 33.011665, 29.336817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090885, 33.191185, 30.092573>,  <33.147469, 32.642078, 29.658730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090885, 33.191185, 30.092573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.756725, 33.157234, 29.875355>,  <32.556229, 33.136864, 29.745024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.756725, 33.157234, 29.875355>,  <33.090885, 33.191185, 30.092573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756725, 33.157234, 29.875355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543994, 0.268898, 0.794836,
		0.078563, 0.959422, -0.270809,
		-0.835403, -0.084873, -0.543045,
		32.506104, 33.131771, 29.712440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834034, 33.721893, 30.388535>,  <33.090885, 33.191185, 30.092573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834034, 33.721893, 30.388535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.529476, 33.537586, 30.206118>,  <32.346741, 33.427002, 30.096668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.529476, 33.537586, 30.206118>,  <32.834034, 33.721893, 30.388535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529476, 33.537586, 30.206118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574303, 0.153035, 0.804212,
		-0.300766, 0.874226, -0.381141,
		-0.761391, -0.460770, -0.456043,
		32.301060, 33.399357, 30.069305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191315, 34.174587, 30.474943>,  <32.834034, 33.721893, 30.388535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191315, 34.174587, 30.474943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.082462, 33.793945, 30.417809>,  <32.017151, 33.565559, 30.383528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.082462, 33.793945, 30.417809>,  <32.191315, 34.174587, 30.474943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082462, 33.793945, 30.417809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600342, 0.051891, 0.798059,
		-0.752021, 0.302924, -0.585407,
		-0.272128, -0.951601, -0.142834,
		32.000824, 33.508465, 30.374958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529484, 34.167343, 30.818230>,  <32.191315, 34.174587, 30.474943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529484, 34.167343, 30.818230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.629463, 33.784195, 30.761646>,  <31.689451, 33.554306, 30.727697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.629463, 33.784195, 30.761646>,  <31.529484, 34.167343, 30.818230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629463, 33.784195, 30.761646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421174, -0.239104, 0.874895,
		-0.871859, -0.159100, -0.463194,
		0.249947, -0.957871, -0.141456,
		31.704447, 33.496834, 30.719210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191671, 34.765339, 30.948133>,  <31.529484, 34.167343, 30.818230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191671, 34.765339, 30.948133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.270306, 34.978970, 31.277039>,  <31.317486, 35.107147, 31.474380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.270306, 34.978970, 31.277039>,  <31.191671, 34.765339, 30.948133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270306, 34.978970, 31.277039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547006, 0.636247, -0.544035,
		-0.813719, 0.556731, -0.167068,
		0.196584, 0.534079, 0.822262,
		31.329281, 35.139194, 31.523718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168842, 35.411991, 30.678659>,  <31.191671, 34.765339, 30.948133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168842, 35.411991, 30.678659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.379662, 35.425961, 31.018307>,  <31.506153, 35.434341, 31.222095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.379662, 35.425961, 31.018307>,  <31.168842, 35.411991, 30.678659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379662, 35.425961, 31.018307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711622, 0.528043, -0.463427,
		-0.464557, 0.848499, 0.253449,
		0.527049, 0.034928, 0.849117,
		31.537777, 35.436440, 31.273041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247105, 36.056065, 30.823711>,  <31.168842, 35.411991, 30.678659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247105, 36.056065, 30.823711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.547575, 35.875004, 31.015892>,  <31.727858, 35.766365, 31.131201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.547575, 35.875004, 31.015892>,  <31.247105, 36.056065, 30.823711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547575, 35.875004, 31.015892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652854, 0.617000, -0.439423,
		-0.097533, 0.643751, 0.758995,
		0.751178, -0.452655, 0.480453,
		31.772928, 35.739208, 31.160028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561319, 36.604164, 31.205153>,  <31.247105, 36.056065, 30.823711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561319, 36.604164, 31.205153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.815060, 36.299309, 31.153397>,  <31.967304, 36.116394, 31.122343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.815060, 36.299309, 31.153397>,  <31.561319, 36.604164, 31.205153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815060, 36.299309, 31.153397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578925, 0.579277, -0.573832,
		0.512291, 0.289106, 0.808688,
		0.634352, -0.762139, -0.129388,
		32.005367, 36.070667, 31.114580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292831, 36.889305, 31.196096>,  <31.561319, 36.604164, 31.205153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292831, 36.889305, 31.196096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.335854, 36.539848, 31.006281>,  <32.361668, 36.330173, 30.892391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.335854, 36.539848, 31.006281>,  <32.292831, 36.889305, 31.196096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335854, 36.539848, 31.006281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768467, 0.375891, -0.517846,
		0.630785, -0.308968, 0.711793,
		0.107559, -0.873639, -0.474538,
		32.368122, 36.277756, 30.863920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069508, 36.845333, 31.037039>,  <32.292831, 36.889305, 31.196096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069508, 36.845333, 31.037039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.907314, 36.572563, 30.793545>,  <32.809998, 36.408901, 30.647448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.907314, 36.572563, 30.793545>,  <33.069508, 36.845333, 31.037039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907314, 36.572563, 30.793545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726748, 0.163435, -0.667178,
		0.554456, -0.712926, 0.429320,
		-0.405482, -0.681928, -0.608735,
		32.785671, 36.367985, 30.610924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645561, 36.467106, 30.741640>,  <33.069508, 36.845333, 31.037039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645561, 36.467106, 30.741640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.344337, 36.395798, 30.488304>,  <33.163605, 36.353012, 30.336302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.344337, 36.395798, 30.488304>,  <33.645561, 36.467106, 30.741640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344337, 36.395798, 30.488304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604282, 0.193390, -0.772945,
		0.260277, -0.964790, -0.037907,
		-0.753060, -0.178273, -0.633340,
		33.118420, 36.342316, 30.298302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909687, 36.060986, 30.249054>,  <33.645561, 36.467106, 30.741640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909687, 36.060986, 30.249054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.598835, 36.248913, 30.081556>,  <33.412323, 36.361668, 29.981058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.598835, 36.248913, 30.081556>,  <33.909687, 36.060986, 30.249054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598835, 36.248913, 30.081556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547359, 0.176195, -0.818140,
		-0.310594, -0.865003, -0.394083,
		-0.777129, 0.469814, -0.418742,
		33.365696, 36.389858, 29.955935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863991, 35.788597, 29.504980>,  <33.909687, 36.060986, 30.249054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863991, 35.788597, 29.504980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.680550, 36.141293, 29.549185>,  <33.570484, 36.352909, 29.575708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.680550, 36.141293, 29.549185>,  <33.863991, 35.788597, 29.504980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680550, 36.141293, 29.549185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376922, 0.305631, -0.874368,
		-0.804742, -0.359337, -0.472512,
		-0.458607, 0.881741, 0.110512,
		33.542969, 36.405815, 29.582338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572735, 35.939529, 28.853039>,  <33.863991, 35.788597, 29.504980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572735, 35.939529, 28.853039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.619572, 36.298176, 29.023859>,  <33.647675, 36.513363, 29.126352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.619572, 36.298176, 29.023859>,  <33.572735, 35.939529, 28.853039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619572, 36.298176, 29.023859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418942, 0.345283, -0.839802,
		-0.900432, 0.277242, -0.335201,
		0.117089, 0.896614, 0.427052,
		33.654697, 36.567162, 29.151974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689781, 36.384197, 28.306137>,  <33.572735, 35.939529, 28.853039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689781, 36.384197, 28.306137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.761707, 36.643661, 28.601948>,  <33.804863, 36.799339, 28.779434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.761707, 36.643661, 28.601948>,  <33.689781, 36.384197, 28.306137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761707, 36.643661, 28.601948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389843, 0.643237, -0.658991,
		-0.903155, 0.406795, -0.137215,
		0.179813, 0.648663, 0.739529,
		33.815651, 36.838261, 28.823807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660103, 36.980488, 27.893913>,  <33.689781, 36.384197, 28.306137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660103, 36.980488, 27.893913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.821674, 37.070824, 28.248503>,  <33.918617, 37.125027, 28.461256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.821674, 37.070824, 28.248503>,  <33.660103, 36.980488, 27.893913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821674, 37.070824, 28.248503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581631, 0.684553, -0.439424,
		-0.706080, 0.693096, 0.145152,
		0.403927, 0.225843, 0.886475,
		33.942852, 37.138577, 28.514444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.962185, 33.932957, 34.081738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288448, 34.011272, 34.299496>,  <29.484207, 34.058262, 34.430149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288448, 34.011272, 34.299496>,  <28.962185, 33.932957, 34.081738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288448, 34.011272, 34.299496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424303, 0.437221, -0.792972,
		-0.393278, 0.877783, 0.273547,
		0.815658, 0.195792, 0.544396,
		29.533146, 34.070011, 34.462814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115416, 34.634579, 33.991581>,  <28.962185, 33.932957, 34.081738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115416, 34.634579, 33.991581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449457, 34.460407, 34.126045>,  <29.649881, 34.355904, 34.206726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449457, 34.460407, 34.126045>,  <29.115416, 34.634579, 33.991581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449457, 34.460407, 34.126045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535630, 0.504441, -0.677229,
		0.125307, 0.745617, 0.654487,
		0.835104, -0.435425, 0.336165,
		29.699987, 34.329781, 34.226894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620403, 35.146362, 34.098202>,  <29.115416, 34.634579, 33.991581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620403, 35.146362, 34.098202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834841, 34.812183, 34.049816>,  <29.963503, 34.611675, 34.020782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834841, 34.812183, 34.049816>,  <29.620403, 35.146362, 34.098202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834841, 34.812183, 34.049816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598504, 0.477219, -0.643471,
		0.595314, 0.272560, 0.755852,
		0.536092, -0.835448, -0.120967,
		29.995668, 34.561550, 34.013527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296074, 35.302696, 34.039337>,  <29.620403, 35.146362, 34.098202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296074, 35.302696, 34.039337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324522, 34.945206, 33.862164>,  <30.341591, 34.730709, 33.755859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324522, 34.945206, 33.862164>,  <30.296074, 35.302696, 34.039337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324522, 34.945206, 33.862164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664099, 0.373757, -0.647518,
		0.744255, -0.248100, 0.620106,
		0.071120, -0.893730, -0.442933,
		30.345858, 34.677086, 33.729282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977947, 35.206207, 33.807560>,  <30.296074, 35.302696, 34.039337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977947, 35.206207, 33.807560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786753, 34.920074, 33.603664>,  <30.672035, 34.748394, 33.481327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786753, 34.920074, 33.603664>,  <30.977947, 35.206207, 33.807560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786753, 34.920074, 33.603664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559877, 0.199034, -0.804316,
		0.676806, -0.669842, 0.305361,
		-0.477987, -0.715330, -0.509736,
		30.643356, 34.705475, 33.450745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485529, 34.694786, 33.509586>,  <30.977947, 35.206207, 33.807560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485529, 34.694786, 33.509586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153484, 34.653976, 33.290314>,  <30.954258, 34.629490, 33.158749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153484, 34.653976, 33.290314>,  <31.485529, 34.694786, 33.509586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153484, 34.653976, 33.290314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535264, 0.129632, -0.834678,
		0.156221, -0.986299, -0.052998,
		-0.830113, -0.102027, -0.548182,
		30.904449, 34.623371, 33.125858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600317, 34.239212, 33.051666>,  <31.485529, 34.694786, 33.509586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600317, 34.239212, 33.051666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308195, 34.456440, 32.885902>,  <31.132923, 34.586777, 32.786446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308195, 34.456440, 32.885902>,  <31.600317, 34.239212, 33.051666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308195, 34.456440, 32.885902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574222, 0.159422, -0.803028,
		-0.370035, -0.824415, -0.428270,
		-0.730303, 0.543070, -0.414406,
		31.089104, 34.619362, 32.761581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629461, 34.112110, 32.332973>,  <31.600317, 34.239212, 33.051666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629461, 34.112110, 32.332973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402153, 34.441193, 32.338943>,  <31.265768, 34.638641, 32.342525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402153, 34.441193, 32.338943>,  <31.629461, 34.112110, 32.332973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402153, 34.441193, 32.338943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380214, 0.278627, -0.881932,
		-0.729730, -0.495500, -0.471140,
		-0.568270, 0.822707, 0.014926,
		31.231672, 34.688004, 32.343422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469984, 34.219326, 31.638073>,  <31.629461, 34.112110, 32.332973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469984, 34.219326, 31.638073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379869, 34.570766, 31.806503>,  <31.325802, 34.781631, 31.907560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379869, 34.570766, 31.806503>,  <31.469984, 34.219326, 31.638073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379869, 34.570766, 31.806503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393521, 0.477420, -0.785628,
		-0.891285, -0.011288, -0.453304,
		-0.225284, 0.878603, 0.421075,
		31.312284, 34.834347, 31.932825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918545, 33.784451, 31.165077>,  <31.469984, 34.219326, 31.638073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918545, 33.784451, 31.165077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201958, 33.514248, 31.083416>,  <31.372005, 33.352127, 31.034418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201958, 33.514248, 31.083416>,  <30.918545, 33.784451, 31.165077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201958, 33.514248, 31.083416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409770, -0.629365, 0.660294,
		-0.574515, -0.384185, -0.722727,
		0.708534, -0.675501, -0.204152,
		31.414518, 33.311596, 31.022169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622400, 33.138844, 31.023888>,  <30.918545, 33.784451, 31.165077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622400, 33.138844, 31.023888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996252, 33.067352, 31.146868>,  <31.220562, 33.024456, 31.220655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996252, 33.067352, 31.146868>,  <30.622400, 33.138844, 31.023888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996252, 33.067352, 31.146868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347915, -0.638582, 0.686417,
		0.073651, -0.748512, -0.659019,
		0.934628, -0.178728, 0.307450,
		31.276640, 33.013733, 31.239103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721981, 32.427422, 30.980103>,  <30.622400, 33.138844, 31.023888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721981, 32.427422, 30.980103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958229, 32.584969, 31.261820>,  <31.099977, 32.679497, 31.430851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958229, 32.584969, 31.261820>,  <30.721981, 32.427422, 30.980103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958229, 32.584969, 31.261820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334811, -0.674506, 0.657984,
		0.734213, -0.624425, -0.266504,
		0.590620, 0.393872, 0.704296,
		31.135416, 32.703129, 31.473108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941774, 31.894884, 31.403736>,  <30.721981, 32.427422, 30.980103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941774, 31.894884, 31.403736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009209, 32.211140, 31.639181>,  <31.049669, 32.400894, 31.780449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009209, 32.211140, 31.639181>,  <30.941774, 31.894884, 31.403736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009209, 32.211140, 31.639181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231499, -0.548699, 0.803329,
		0.958117, -0.271692, 0.090531,
		0.168584, 0.790641, 0.588614,
		31.059784, 32.448334, 31.815765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267488, 31.626549, 31.900459>,  <30.941774, 31.894884, 31.403736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267488, 31.626549, 31.900459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169312, 31.987803, 32.041374>,  <31.110405, 32.204556, 32.125923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169312, 31.987803, 32.041374>,  <31.267488, 31.626549, 31.900459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169312, 31.987803, 32.041374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091463, -0.383355, 0.919061,
		0.965087, 0.193355, 0.176695,
		-0.245442, 0.903135, 0.352286,
		31.095678, 32.258743, 32.147060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705433, 31.710321, 32.438469>,  <31.267488, 31.626549, 31.900459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705433, 31.710321, 32.438469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406939, 31.972006, 32.487682>,  <31.227842, 32.129017, 32.517212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406939, 31.972006, 32.487682>,  <31.705433, 31.710321, 32.438469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406939, 31.972006, 32.487682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159935, -0.355617, 0.920846,
		0.646182, 0.667491, 0.370006,
		-0.746237, 0.654211, 0.123038,
		31.183067, 32.168270, 32.524593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822729, 32.164772, 33.079178>,  <31.705433, 31.710321, 32.438469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822729, 32.164772, 33.079178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426144, 32.179203, 33.029057>,  <31.188192, 32.187862, 32.998985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426144, 32.179203, 33.029057>,  <31.822729, 32.164772, 33.079178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426144, 32.179203, 33.029057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130314, -0.240957, 0.961747,
		0.004508, 0.969865, 0.243601,
		-0.991463, 0.036080, -0.125301,
		31.128704, 32.190025, 32.991467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564972, 32.429420, 33.737305>,  <31.822729, 32.164772, 33.079178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564972, 32.429420, 33.737305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224165, 32.292961, 33.578468>,  <31.019680, 32.211086, 33.483166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224165, 32.292961, 33.578468>,  <31.564972, 32.429420, 33.737305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224165, 32.292961, 33.578468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260126, -0.382374, 0.886637,
		-0.454314, 0.858724, 0.237048,
		-0.852017, -0.341149, -0.397094,
		30.968559, 32.190617, 33.459339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009388, 32.585201, 34.136711>,  <31.564972, 32.429420, 33.737305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009388, 32.585201, 34.136711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872721, 32.270435, 33.931175>,  <30.790720, 32.081577, 33.807854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872721, 32.270435, 33.931175>,  <31.009388, 32.585201, 34.136711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872721, 32.270435, 33.931175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434891, -0.352305, 0.828704,
		-0.833146, 0.506607, -0.221850,
		-0.341668, -0.786913, -0.513840,
		30.770220, 32.034363, 33.777023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325075, 32.497105, 34.282936>,  <31.009388, 32.585201, 34.136711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325075, 32.497105, 34.282936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443060, 32.129669, 34.177711>,  <30.513851, 31.909208, 34.114578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443060, 32.129669, 34.177711>,  <30.325075, 32.497105, 34.282936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443060, 32.129669, 34.177711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525074, -0.385840, 0.758568,
		-0.798308, -0.085623, -0.596132,
		0.294962, -0.918584, -0.263060,
		30.531549, 31.854094, 34.098793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796999, 32.041328, 34.477905>,  <30.325075, 32.497105, 34.282936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796999, 32.041328, 34.477905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067884, 31.762161, 34.384701>,  <30.230415, 31.594662, 34.328777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067884, 31.762161, 34.384701>,  <29.796999, 32.041328, 34.477905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067884, 31.762161, 34.384701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461626, -0.649613, 0.604073,
		-0.572959, -0.301523, -0.762104,
		0.677215, -0.697915, -0.233010,
		30.271049, 31.552786, 34.314796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383709, 31.561211, 34.310352>,  <29.796999, 32.041328, 34.477905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383709, 31.561211, 34.310352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743572, 31.398516, 34.373829>,  <29.959490, 31.300900, 34.411915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743572, 31.398516, 34.373829>,  <29.383709, 31.561211, 34.310352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743572, 31.398516, 34.373829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426612, -0.741675, 0.517610,
		-0.092834, -0.533371, -0.840772,
		0.899658, -0.406735, 0.158690,
		30.013470, 31.276495, 34.421436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215542, 30.887262, 34.273716>,  <29.383709, 31.561211, 34.310352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215542, 30.887262, 34.273716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559931, 30.928064, 34.473042>,  <29.766565, 30.952545, 34.592636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559931, 30.928064, 34.473042>,  <29.215542, 30.887262, 34.273716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559931, 30.928064, 34.473042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332044, -0.629429, 0.702542,
		0.385319, -0.770333, -0.508052,
		0.860974, 0.102007, 0.498316,
		29.818224, 30.958666, 34.622536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320904, 30.266600, 34.434494>,  <29.215542, 30.887262, 34.273716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320904, 30.266600, 34.434494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524744, 30.499489, 34.687893>,  <29.647047, 30.639223, 34.839931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524744, 30.499489, 34.687893>,  <29.320904, 30.266600, 34.434494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524744, 30.499489, 34.687893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320916, -0.554531, 0.767795,
		0.798324, -0.594568, -0.095744,
		0.509599, 0.582224, 0.633502,
		29.677624, 30.674156, 34.877945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.649822, 33.435829, 39.411930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.441505, 33.204739, 39.160530>,  <35.316517, 33.066082, 39.009689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.441505, 33.204739, 39.160530>,  <35.649822, 33.435829, 39.411930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441505, 33.204739, 39.160530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440354, 0.448912, -0.777539,
		0.731347, -0.681694, 0.020617,
		-0.520789, -0.577729, -0.628496,
		35.285271, 33.031422, 38.971981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126762, 33.065239, 38.926998>,  <35.649822, 33.435829, 39.411930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126762, 33.065239, 38.926998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.764534, 33.061813, 38.757359>,  <35.547195, 33.059757, 38.655575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.764534, 33.061813, 38.757359>,  <36.126762, 33.065239, 38.926998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764534, 33.061813, 38.757359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383241, 0.412045, -0.826647,
		0.181823, -0.911124, -0.369857,
		-0.905575, -0.008560, -0.424099,
		35.492863, 33.059246, 38.630127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326126, 33.036694, 38.245167>,  <36.126762, 33.065239, 38.926998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326126, 33.036694, 38.245167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.938789, 33.134014, 38.222820>,  <35.706387, 33.192406, 38.209412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.938789, 33.134014, 38.222820>,  <36.326126, 33.036694, 38.245167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938789, 33.134014, 38.222820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162487, 0.444425, -0.880957,
		-0.189512, -0.862143, -0.469888,
		-0.968340, 0.243303, -0.055863,
		35.648289, 33.207005, 38.206062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069881, 32.775360, 37.638641>,  <36.326126, 33.036694, 38.245167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069881, 32.775360, 37.638641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.820679, 33.077061, 37.721550>,  <35.671158, 33.258080, 37.771294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.820679, 33.077061, 37.721550>,  <36.069881, 32.775360, 37.638641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820679, 33.077061, 37.721550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204992, 0.413154, -0.887289,
		-0.754874, -0.510302, -0.412015,
		-0.623011, 0.754252, 0.207272,
		35.633774, 33.303337, 37.783733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646542, 32.961758, 37.044914>,  <36.069881, 32.775360, 37.638641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646542, 32.961758, 37.044914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.623890, 33.287891, 37.275398>,  <35.610298, 33.483574, 37.413689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.623890, 33.287891, 37.275398>,  <35.646542, 32.961758, 37.044914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623890, 33.287891, 37.275398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255610, 0.569741, -0.781062,
		-0.965120, 0.103052, -0.240673,
		-0.056631, 0.815337, 0.576210,
		35.606899, 33.532494, 37.448261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089535, 33.433678, 36.755375>,  <35.646542, 32.961758, 37.044914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089535, 33.433678, 36.755375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.366592, 33.634033, 36.962971>,  <35.532825, 33.754246, 37.087528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.366592, 33.634033, 36.962971>,  <35.089535, 33.433678, 36.755375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366592, 33.634033, 36.962971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169567, 0.586295, -0.792152,
		-0.701066, 0.636682, 0.321158,
		0.692643, 0.500892, 0.518992,
		35.574387, 33.784302, 37.118668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906010, 34.106964, 36.561241>,  <35.089535, 33.433678, 36.755375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906010, 34.106964, 36.561241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.274532, 34.143303, 36.712475>,  <35.495644, 34.165108, 36.803215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.274532, 34.143303, 36.712475>,  <34.906010, 34.106964, 36.561241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274532, 34.143303, 36.712475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205919, 0.710803, -0.672574,
		-0.329842, 0.697499, 0.636159,
		0.921304, 0.090846, 0.378081,
		35.550922, 34.170555, 36.825897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094612, 34.781528, 36.592030>,  <34.906010, 34.106964, 36.561241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094612, 34.781528, 36.592030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.449120, 34.599445, 36.626259>,  <35.661823, 34.490196, 36.646797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.449120, 34.599445, 36.626259>,  <35.094612, 34.781528, 36.592030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449120, 34.599445, 36.626259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432069, 0.745932, -0.506855,
		0.166889, 0.486182, 0.857773,
		0.886264, -0.455206, 0.085576,
		35.715000, 34.462883, 36.651932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635422, 35.371960, 36.675514>,  <35.094612, 34.781528, 36.592030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635422, 35.371960, 36.675514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.840313, 35.041904, 36.580212>,  <35.963249, 34.843872, 36.523029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.840313, 35.041904, 36.580212>,  <35.635422, 35.371960, 36.675514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840313, 35.041904, 36.580212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511568, 0.515964, -0.687080,
		0.689867, 0.230061, 0.686408,
		0.512232, -0.825138, -0.238255,
		35.993984, 34.794361, 36.508736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397778, 35.553452, 36.527939>,  <35.635422, 35.371960, 36.675514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397778, 35.553452, 36.527939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.350983, 35.204693, 36.337734>,  <36.322906, 34.995438, 36.223614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.350983, 35.204693, 36.337734>,  <36.397778, 35.553452, 36.527939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350983, 35.204693, 36.337734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502282, 0.361103, -0.785696,
		0.856754, -0.330753, 0.395696,
		-0.116984, -0.871899, -0.475507,
		36.315887, 34.943123, 36.195084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061142, 35.363766, 36.443668>,  <36.397778, 35.553452, 36.527939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061142, 35.363766, 36.443668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.818798, 35.181450, 36.182842>,  <36.673393, 35.072060, 36.026344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.818798, 35.181450, 36.182842>,  <37.061142, 35.363766, 36.443668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818798, 35.181450, 36.182842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535806, 0.372097, -0.757929,
		0.588091, -0.808576, 0.018780,
		-0.605856, -0.455794, -0.652067,
		36.637043, 35.044712, 35.987221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482273, 35.230892, 35.904682>,  <37.061142, 35.363766, 36.443668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482273, 35.230892, 35.904682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159233, 35.097878, 35.709869>,  <36.965408, 35.018070, 35.592983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159233, 35.097878, 35.709869>,  <37.482273, 35.230892, 35.904682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159233, 35.097878, 35.709869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420958, 0.253309, -0.870993,
		0.413005, -0.908436, -0.064590,
		-0.807602, -0.332534, -0.487031,
		36.916954, 34.998119, 35.563759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661079, 34.809231, 35.347424>,  <37.482273, 35.230892, 35.904682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661079, 34.809231, 35.347424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.306664, 34.974419, 35.263145>,  <37.094013, 35.073532, 35.212578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.306664, 34.974419, 35.263145>,  <37.661079, 34.809231, 35.347424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306664, 34.974419, 35.263145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361036, 0.329516, -0.872395,
		-0.290846, -0.849043, -0.441060,
		-0.886037, 0.412971, -0.210697,
		37.040852, 35.098309, 35.199936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528603, 34.510471, 34.681229>,  <37.661079, 34.809231, 35.347424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528603, 34.510471, 34.681229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.309608, 34.844532, 34.702328>,  <37.178211, 35.044968, 34.714989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.309608, 34.844532, 34.702328>,  <37.528603, 34.510471, 34.681229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309608, 34.844532, 34.702328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383899, 0.306677, -0.870960,
		-0.743562, -0.456584, -0.488515,
		-0.547483, 0.835152, 0.052751,
		37.145363, 35.095078, 34.718155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976486, 34.171017, 34.324184>,  <37.528603, 34.510471, 34.681229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976486, 34.171017, 34.324184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.921513, 33.880196, 34.055111>,  <36.888527, 33.705704, 33.893665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.921513, 33.880196, 34.055111>,  <36.976486, 34.171017, 34.324184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921513, 33.880196, 34.055111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518173, -0.526015, 0.674392,
		-0.844162, 0.441253, -0.304445,
		-0.137435, -0.727051, -0.672687,
		36.880283, 33.662079, 33.853306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247082, 33.905857, 34.404129>,  <36.976486, 34.171017, 34.324184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247082, 33.905857, 34.404129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.444061, 33.615871, 34.211498>,  <36.562248, 33.441879, 34.095921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.444061, 33.615871, 34.211498>,  <36.247082, 33.905857, 34.404129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444061, 33.615871, 34.211498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322973, -0.666030, 0.672378,
		-0.808197, -0.175575, -0.562131,
		0.492449, -0.724967, -0.481578,
		36.591797, 33.398380, 34.067024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827637, 33.313240, 34.361462>,  <36.247082, 33.905857, 34.404129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827637, 33.313240, 34.361462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.204723, 33.187275, 34.317421>,  <36.430973, 33.111698, 34.290997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.204723, 33.187275, 34.317421>,  <35.827637, 33.313240, 34.361462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204723, 33.187275, 34.317421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209669, -0.815997, 0.538691,
		-0.259479, -0.484748, -0.835279,
		0.942714, -0.314911, -0.110098,
		36.487537, 33.092800, 34.284393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841805, 32.663593, 34.119450>,  <35.827637, 33.313240, 34.361462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841805, 32.663593, 34.119450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199646, 32.702564, 34.293892>,  <36.414352, 32.725948, 34.398556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199646, 32.702564, 34.293892>,  <35.841805, 32.663593, 34.119450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199646, 32.702564, 34.293892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175872, -0.820405, 0.544063,
		0.410793, -0.563421, -0.716803,
		0.894605, 0.097432, 0.436106,
		36.468029, 32.731792, 34.424725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962845, 31.916174, 34.356827>,  <35.841805, 32.663593, 34.119450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962845, 31.916174, 34.356827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.240326, 32.132011, 34.547661>,  <36.406815, 32.261513, 34.662163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.240326, 32.132011, 34.547661>,  <35.962845, 31.916174, 34.356827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240326, 32.132011, 34.547661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133952, -0.554177, 0.821550,
		0.707694, -0.633821, -0.312156,
		0.693705, 0.539592, 0.477089,
		36.448437, 32.293888, 34.690788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486519, 31.451210, 34.495502>,  <35.962845, 31.916174, 34.356827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486519, 31.451210, 34.495502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.559505, 31.739443, 34.763077>,  <36.603298, 31.912382, 34.923622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.559505, 31.739443, 34.763077>,  <36.486519, 31.451210, 34.495502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559505, 31.739443, 34.763077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034353, -0.675265, 0.736775,
		0.982612, -0.157414, -0.098457,
		0.182463, 0.720582, 0.668932,
		36.614243, 31.955618, 34.963757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042282, 31.154295, 34.876118>,  <36.486519, 31.451210, 34.495502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042282, 31.154295, 34.876118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.854568, 31.440197, 35.083538>,  <36.741940, 31.611738, 35.207993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.854568, 31.440197, 35.083538>,  <37.042282, 31.154295, 34.876118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854568, 31.440197, 35.083538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102982, -0.627522, 0.771758,
		0.877024, 0.308769, 0.368091,
		-0.469280, 0.714757, 0.518554,
		36.713783, 31.654625, 35.239105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246410, 30.936506, 35.587975>,  <37.042282, 31.154295, 34.876118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246410, 30.936506, 35.587975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.940315, 31.192596, 35.614899>,  <36.756660, 31.346251, 35.631054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.940315, 31.192596, 35.614899>,  <37.246410, 30.936506, 35.587975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940315, 31.192596, 35.614899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286690, -0.432538, 0.854821,
		0.576391, 0.634841, 0.514539,
		-0.765233, 0.640225, 0.067308,
		36.710747, 31.384665, 35.635090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204609, 31.159958, 36.317337>,  <37.246410, 30.936506, 35.587975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204609, 31.159958, 36.317337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.849392, 31.256033, 36.160526>,  <36.636261, 31.313679, 36.066441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.849392, 31.256033, 36.160526>,  <37.204609, 31.159958, 36.317337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849392, 31.256033, 36.160526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438597, -0.186901, 0.879034,
		0.137865, 0.952563, 0.271323,
		-0.888046, 0.240190, -0.392024,
		36.582977, 31.328091, 36.042919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862862, 31.399221, 36.872581>,  <37.204609, 31.159958, 36.317337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862862, 31.399221, 36.872581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.552082, 31.312485, 36.636162>,  <36.365616, 31.260443, 36.494312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.552082, 31.312485, 36.636162>,  <36.862862, 31.399221, 36.872581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552082, 31.312485, 36.636162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539678, -0.254052, 0.802624,
		-0.324199, 0.942570, 0.080360,
		-0.776945, -0.216841, -0.591047,
		36.319000, 31.247433, 36.458847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257523, 31.669123, 37.229008>,  <36.862862, 31.399221, 36.872581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257523, 31.669123, 37.229008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.133598, 31.399147, 36.961136>,  <36.059246, 31.237162, 36.800411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.133598, 31.399147, 36.961136>,  <36.257523, 31.669123, 37.229008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133598, 31.399147, 36.961136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485656, -0.493191, 0.721734,
		-0.817409, 0.548835, -0.174993,
		-0.309808, -0.674939, -0.669684,
		36.040657, 31.196665, 36.760231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602192, 31.550846, 37.486141>,  <36.257523, 31.669123, 37.229008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602192, 31.550846, 37.486141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.670345, 31.226851, 37.261681>,  <35.711239, 31.032454, 37.127007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.670345, 31.226851, 37.261681>,  <35.602192, 31.550846, 37.486141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670345, 31.226851, 37.261681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471009, -0.567151, 0.675640,
		-0.865517, 0.149187, -0.478146,
		0.170384, -0.809989, -0.561148,
		35.721462, 30.983854, 37.093338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934151, 31.220390, 37.246075>,  <35.602192, 31.550846, 37.486141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934151, 31.220390, 37.246075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.213009, 30.934040, 37.230511>,  <35.380325, 30.762230, 37.221172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.213009, 30.934040, 37.230511>,  <34.934151, 31.220390, 37.246075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213009, 30.934040, 37.230511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531229, -0.552251, 0.642506,
		-0.481439, -0.427252, -0.765292,
		0.697146, -0.715873, -0.038906,
		35.422153, 30.719278, 37.218838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597904, 30.565418, 37.087669>,  <34.934151, 31.220390, 37.246075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597904, 30.565418, 37.087669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.944633, 30.450609, 37.250755>,  <35.152672, 30.381723, 37.348606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.944633, 30.450609, 37.250755>,  <34.597904, 30.565418, 37.087669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944633, 30.450609, 37.250755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488255, -0.654428, 0.577349,
		0.101110, -0.699530, -0.707414,
		0.866824, -0.287023, 0.407718,
		35.204681, 30.364502, 37.373070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515202, 29.916014, 36.544815>,  <34.597904, 30.565418, 37.087669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515202, 29.916014, 36.544815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.375172, 29.611837, 36.326027>,  <34.291153, 29.429333, 36.194752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.375172, 29.611837, 36.326027>,  <34.515202, 29.916014, 36.544815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375172, 29.611837, 36.326027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644107, 0.228553, -0.729993,
		0.680127, -0.607862, 0.409794,
		-0.350075, -0.760439, -0.546973,
		34.270149, 29.383705, 36.161934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108604, 29.581877, 36.121799>,  <34.515202, 29.916014, 36.544815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108604, 29.581877, 36.121799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.757633, 29.541843, 35.934135>,  <34.547050, 29.517824, 35.821537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.757633, 29.541843, 35.934135>,  <35.108604, 29.581877, 36.121799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757633, 29.541843, 35.934135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401485, 0.382063, -0.832368,
		0.262551, -0.918701, -0.295051,
		-0.877426, -0.100081, -0.469156,
		34.494404, 29.511820, 35.793388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307846, 29.572739, 35.346619>,  <35.108604, 29.581877, 36.121799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307846, 29.572739, 35.346619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.914032, 29.639601, 35.367580>,  <34.677742, 29.679718, 35.380157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.914032, 29.639601, 35.367580>,  <35.307846, 29.572739, 35.346619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914032, 29.639601, 35.367580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079950, 0.694937, -0.714612,
		-0.155872, -0.699372, -0.697555,
		-0.984536, 0.167158, 0.052406,
		34.618671, 29.689749, 35.383301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024906, 29.395285, 34.652046>,  <35.307846, 29.572739, 35.346619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024906, 29.395285, 34.652046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.762192, 29.643429, 34.823524>,  <34.604561, 29.792315, 34.926411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.762192, 29.643429, 34.823524>,  <35.024906, 29.395285, 34.652046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762192, 29.643429, 34.823524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024617, 0.585843, -0.810050,
		-0.753671, -0.521480, -0.400048,
		-0.656790, 0.620360, 0.428696,
		34.565155, 29.829536, 34.952133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504646, 29.508493, 34.223701>,  <35.024906, 29.395285, 34.652046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504646, 29.508493, 34.223701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.404888, 29.823629, 34.448952>,  <34.345032, 30.012711, 34.584103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.404888, 29.823629, 34.448952>,  <34.504646, 29.508493, 34.223701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404888, 29.823629, 34.448952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207557, 0.524498, -0.825725,
		-0.945898, -0.322812, 0.032715,
		-0.249395, 0.787842, 0.563123,
		34.330070, 30.059982, 34.617889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798641, 29.764286, 34.064346>,  <34.504646, 29.508493, 34.223701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798641, 29.764286, 34.064346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.993435, 30.080832, 34.212181>,  <34.110310, 30.270758, 34.300884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.993435, 30.080832, 34.212181>,  <33.798641, 29.764286, 34.064346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993435, 30.080832, 34.212181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227405, 0.523441, -0.821156,
		-0.843290, 0.315840, 0.434865,
		0.486980, 0.791362, 0.369589,
		34.139530, 30.318241, 34.323059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392059, 30.317417, 33.960381>,  <33.798641, 29.764286, 34.064346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392059, 30.317417, 33.960381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.724133, 30.506409, 34.078743>,  <33.923378, 30.619804, 34.149761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.724133, 30.506409, 34.078743>,  <33.392059, 30.317417, 33.960381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724133, 30.506409, 34.078743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064375, 0.608471, -0.790961,
		-0.553762, 0.637593, 0.535558,
		0.830183, 0.472481, 0.295903,
		33.973186, 30.648153, 34.167515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217308, 31.089130, 33.949856>,  <33.392059, 30.317417, 33.960381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217308, 31.089130, 33.949856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.609486, 31.026724, 33.901878>,  <33.844791, 30.989281, 33.873093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.609486, 31.026724, 33.901878>,  <33.217308, 31.089130, 33.949856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609486, 31.026724, 33.901878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022481, 0.694295, -0.719339,
		0.195505, 0.702576, 0.684225,
		0.980445, -0.156017, -0.119944,
		33.903618, 30.979919, 33.865894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486313, 31.736773, 33.877979>,  <33.217308, 31.089130, 33.949856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486313, 31.736773, 33.877979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.756973, 31.484528, 33.725945>,  <33.919369, 31.333179, 33.634724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.756973, 31.484528, 33.725945>,  <33.486313, 31.736773, 33.877979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756973, 31.484528, 33.725945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174633, 0.638934, -0.749177,
		0.715295, 0.440554, 0.542461,
		0.676650, -0.630615, -0.380091,
		33.959969, 31.295343, 33.611916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008492, 32.203079, 33.691280>,  <33.486313, 31.736773, 33.877979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008492, 32.203079, 33.691280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.076824, 31.870674, 33.479530>,  <34.117825, 31.671232, 33.352482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.076824, 31.870674, 33.479530>,  <34.008492, 32.203079, 33.691280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076824, 31.870674, 33.479530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346772, 0.553605, -0.757146,
		0.922262, -0.054230, 0.382743,
		0.170829, -0.831012, -0.529374,
		34.128075, 31.621370, 33.320717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624409, 32.384422, 33.289963>,  <34.008492, 32.203079, 33.691280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624409, 32.384422, 33.289963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.508453, 32.051731, 33.100567>,  <34.438881, 31.852116, 32.986931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.508453, 32.051731, 33.100567>,  <34.624409, 32.384422, 33.289963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508453, 32.051731, 33.100567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533863, 0.270086, -0.801276,
		0.794328, -0.485057, 0.365736,
		-0.289885, -0.831729, -0.473491,
		34.421490, 31.802212, 32.958519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231766, 32.137817, 33.033920>,  <34.624409, 32.384422, 33.289963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231766, 32.137817, 33.033920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.930099, 31.999233, 32.810780>,  <34.749100, 31.916082, 32.676895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.930099, 31.999233, 32.810780>,  <35.231766, 32.137817, 33.033920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930099, 31.999233, 32.810780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520288, 0.203060, -0.829498,
		0.400667, -0.915822, 0.027119,
		-0.754166, -0.346462, -0.557851,
		34.703850, 31.895294, 32.643425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566055, 31.718214, 32.526344>,  <35.231766, 32.137817, 33.033920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566055, 31.718214, 32.526344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.196171, 31.761850, 32.380459>,  <34.974239, 31.788033, 32.292927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.196171, 31.761850, 32.380459>,  <35.566055, 31.718214, 32.526344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196171, 31.761850, 32.380459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378933, 0.172214, -0.909259,
		-0.036383, -0.979000, -0.200585,
		-0.924709, 0.109090, -0.364710,
		34.918758, 31.794577, 32.271046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499039, 31.202768, 31.947767>,  <35.566055, 31.718214, 32.526344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499039, 31.202768, 31.947767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.257084, 31.520670, 31.927866>,  <35.111912, 31.711411, 31.915924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.257084, 31.520670, 31.927866>,  <35.499039, 31.202768, 31.947767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257084, 31.520670, 31.927866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447162, 0.287308, -0.847053,
		-0.658904, -0.534622, -0.529174,
		-0.604890, 0.794753, -0.049755,
		35.075619, 31.759096, 31.912939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.693607, 29.779512, 34.839905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.668133, 30.112383, 35.060242>,  <29.652849, 30.312105, 35.192444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.668133, 30.112383, 35.060242>,  <29.693607, 29.779512, 34.839905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668133, 30.112383, 35.060242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283910, -0.544265, 0.789411,
		0.956734, -0.106116, 0.270925,
		-0.063686, 0.832175, 0.550844,
		29.649027, 30.362036, 35.225494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058302, 29.581383, 35.439716>,  <29.693607, 29.779512, 34.839905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058302, 29.581383, 35.439716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.844961, 29.905010, 35.538460>,  <29.716957, 30.099188, 35.597706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.844961, 29.905010, 35.538460>,  <30.058302, 29.581383, 35.439716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844961, 29.905010, 35.538460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342854, -0.473555, 0.811293,
		0.773297, 0.348066, 0.529964,
		-0.533350, 0.809071, 0.246863,
		29.684956, 30.147732, 35.612518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136024, 29.515337, 36.059643>,  <30.058302, 29.581383, 35.439716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136024, 29.515337, 36.059643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.811535, 29.743088, 36.006382>,  <29.616842, 29.879738, 35.974426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.811535, 29.743088, 36.006382>,  <30.136024, 29.515337, 36.059643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811535, 29.743088, 36.006382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497133, -0.551680, 0.669708,
		0.307860, 0.609475, 0.730590,
		-0.811222, 0.569377, -0.133150,
		29.568169, 29.913900, 35.966438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014765, 29.784525, 36.773155>,  <30.136024, 29.515337, 36.059643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014765, 29.784525, 36.773155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.665936, 29.821926, 36.581013>,  <29.456638, 29.844366, 36.465729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.665936, 29.821926, 36.581013>,  <30.014765, 29.784525, 36.773155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665936, 29.821926, 36.581013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488581, -0.222133, 0.843768,
		-0.027810, 0.970523, 0.239400,
		-0.872075, 0.093501, -0.480357,
		29.404312, 29.849976, 36.436905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529535, 30.334976, 37.144512>,  <30.014765, 29.784525, 36.773155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529535, 30.334976, 37.144512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.283949, 30.095877, 36.938309>,  <29.136597, 29.952417, 36.814587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.283949, 30.095877, 36.938309>,  <29.529535, 30.334976, 37.144512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283949, 30.095877, 36.938309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401520, -0.325771, 0.855953,
		-0.679579, 0.732511, -0.039995,
		-0.613966, -0.597746, -0.515505,
		29.099760, 29.916553, 36.783657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862257, 30.484983, 37.411366>,  <29.529535, 30.334976, 37.144512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862257, 30.484983, 37.411366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.884027, 30.115726, 37.259132>,  <28.897089, 29.894173, 37.167793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.884027, 30.115726, 37.259132>,  <28.862257, 30.484983, 37.411366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884027, 30.115726, 37.259132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374507, -0.372199, 0.849242,
		-0.925625, 0.096312, -0.365981,
		0.054426, -0.923142, -0.380587,
		28.900354, 29.838783, 37.144955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309645, 30.200014, 37.682640>,  <28.862257, 30.484983, 37.411366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309645, 30.200014, 37.682640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.533228, 29.893129, 37.556812>,  <28.667377, 29.708998, 37.481316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.533228, 29.893129, 37.556812>,  <28.309645, 30.200014, 37.682640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533228, 29.893129, 37.556812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235913, -0.510824, 0.826682,
		-0.794929, -0.387870, -0.466524,
		0.558957, -0.767213, -0.314566,
		28.700914, 29.662966, 37.462444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819519, 29.606882, 37.787518>,  <28.309645, 30.200014, 37.682640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819519, 29.606882, 37.787518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.186703, 29.452385, 37.751373>,  <28.407013, 29.359688, 37.729687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.186703, 29.452385, 37.751373>,  <27.819519, 29.606882, 37.787518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186703, 29.452385, 37.751373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216351, -0.678442, 0.702074,
		-0.332476, -0.624927, -0.706347,
		0.917961, -0.386242, -0.090362,
		28.462091, 29.336512, 37.724266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721052, 28.964716, 37.905109>,  <27.819519, 29.606882, 37.787518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721052, 28.964716, 37.905109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.114614, 28.988575, 37.972481>,  <28.350752, 29.002892, 38.012901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.114614, 28.988575, 37.972481>,  <27.721052, 28.964716, 37.905109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114614, 28.988575, 37.972481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109664, -0.542600, 0.832802,
		0.141065, -0.837871, -0.527327,
		0.983908, 0.059650, 0.168426,
		28.409786, 29.006470, 38.023010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913872, 28.292763, 38.091927>,  <27.721052, 28.964716, 37.905109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913872, 28.292763, 38.091927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.206005, 28.540562, 38.207054>,  <28.381285, 28.689241, 38.276131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.206005, 28.540562, 38.207054>,  <27.913872, 28.292763, 38.091927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206005, 28.540562, 38.207054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035863, -0.455534, 0.889496,
		0.682149, -0.639307, -0.354908,
		0.730333, 0.619496, 0.287814,
		28.425106, 28.726410, 38.293400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446312, 27.855526, 38.428253>,  <27.913872, 28.292763, 38.091927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446312, 27.855526, 38.428253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.505381, 28.228418, 38.560394>,  <28.540821, 28.452154, 38.639679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.505381, 28.228418, 38.560394>,  <28.446312, 27.855526, 38.428253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505381, 28.228418, 38.560394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009865, -0.332613, 0.943012,
		0.988987, -0.142514, -0.039921,
		0.147671, 0.932233, 0.330355,
		28.549683, 28.508089, 38.659500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795284, 27.764830, 39.056515>,  <28.446312, 27.855526, 38.428253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795284, 27.764830, 39.056515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.624916, 28.125452, 39.086960>,  <28.522696, 28.341825, 39.105228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.624916, 28.125452, 39.086960>,  <28.795284, 27.764830, 39.056515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624916, 28.125452, 39.086960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262329, -0.203567, 0.943262,
		0.865897, 0.381786, 0.323207,
		-0.425918, 0.901554, 0.076115,
		28.497141, 28.395918, 39.109795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000898, 28.025082, 39.669121>,  <28.795284, 27.764830, 39.056515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000898, 28.025082, 39.669121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.663044, 28.211901, 39.564461>,  <28.460331, 28.323992, 39.501667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.663044, 28.211901, 39.564461>,  <29.000898, 28.025082, 39.669121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663044, 28.211901, 39.564461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395434, -0.214845, 0.893014,
		0.360866, 0.857734, 0.366152,
		-0.844635, 0.467048, -0.261647,
		28.409653, 28.352015, 39.485966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697283, 27.774677, 40.026844>,  <29.000898, 28.025082, 39.669121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697283, 27.774677, 40.026844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.839172, 27.852539, 40.392639>,  <29.924307, 27.899256, 40.612114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.839172, 27.852539, 40.392639>,  <29.697283, 27.774677, 40.026844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839172, 27.852539, 40.392639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933950, -0.028070, -0.356299,
		-0.043685, 0.980471, -0.191753,
		0.354723, 0.194652, 0.914485,
		29.945589, 27.910934, 40.666985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383472, 27.310963, 39.884041>,  <29.697283, 27.774677, 40.026844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383472, 27.310963, 39.884041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.733458, 27.255621, 40.069641>,  <30.943449, 27.222416, 40.181000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.733458, 27.255621, 40.069641>,  <30.383472, 27.310963, 39.884041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733458, 27.255621, 40.069641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483195, 0.188212, -0.855043,
		0.030969, 0.972334, 0.231531,
		0.874965, -0.138354, 0.463998,
		30.995947, 27.214115, 40.208839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848658, 27.871647, 39.722069>,  <30.383472, 27.310963, 39.884041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848658, 27.871647, 39.722069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.113663, 27.586464, 39.813953>,  <31.272665, 27.415354, 39.869083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.113663, 27.586464, 39.813953>,  <30.848658, 27.871647, 39.722069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113663, 27.586464, 39.813953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539730, 0.241725, -0.806388,
		0.519393, 0.658225, 0.544950,
		0.662512, -0.712958, 0.229713,
		31.312416, 27.372576, 39.882866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589609, 28.163982, 39.688240>,  <30.848658, 27.871647, 39.722069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589609, 28.163982, 39.688240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.608170, 27.765999, 39.652683>,  <31.619305, 27.527208, 39.631348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.608170, 27.765999, 39.652683>,  <31.589609, 28.163982, 39.688240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608170, 27.765999, 39.652683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670775, 0.096974, -0.735294,
		0.740208, -0.025509, 0.671894,
		0.046399, -0.994960, -0.088891,
		31.622089, 27.467510, 39.626015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288826, 28.061316, 39.630573>,  <31.589609, 28.163982, 39.688240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288826, 28.061316, 39.630573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.115486, 27.730976, 39.486248>,  <32.011482, 27.532772, 39.399651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.115486, 27.730976, 39.486248>,  <32.288826, 28.061316, 39.630573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115486, 27.730976, 39.486248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589236, 0.043305, -0.806800,
		0.681918, -0.562230, 0.467852,
		-0.433347, -0.825846, -0.360816,
		31.985481, 27.483223, 39.378002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865284, 27.492460, 39.431145>,  <32.288826, 28.061316, 39.630573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865284, 27.492460, 39.431145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.533882, 27.412430, 39.221935>,  <32.335041, 27.364412, 39.096409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.533882, 27.412430, 39.221935>,  <32.865284, 27.492460, 39.431145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533882, 27.412430, 39.221935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517356, 0.083959, -0.851642,
		0.214307, -0.976176, 0.033951,
		-0.828502, -0.200077, -0.523023,
		32.285332, 27.352407, 39.065029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064880, 27.063370, 38.957455>,  <32.865284, 27.492460, 39.431145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064880, 27.063370, 38.957455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.732899, 27.212242, 38.791248>,  <32.533710, 27.301567, 38.691525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.732899, 27.212242, 38.791248>,  <33.064880, 27.063370, 38.957455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732899, 27.212242, 38.791248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489551, 0.128867, -0.862400,
		-0.267424, -0.919169, -0.289157,
		-0.829955, 0.372184, -0.415518,
		32.483913, 27.323896, 38.666592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150867, 26.904045, 38.206982>,  <33.064880, 27.063370, 38.957455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150867, 26.904045, 38.206982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.864719, 27.183531, 38.209354>,  <32.693031, 27.351223, 38.210777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.864719, 27.183531, 38.209354>,  <33.150867, 26.904045, 38.206982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864719, 27.183531, 38.209354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480667, 0.498248, -0.721601,
		-0.507149, -0.513365, -0.692284,
		-0.715374, 0.698717, 0.005929,
		32.650108, 27.393147, 38.211132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165176, 27.177393, 37.500092>,  <33.150867, 26.904045, 38.206982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165176, 27.177393, 37.500092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974018, 27.448139, 37.724045>,  <32.859325, 27.610588, 37.858418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974018, 27.448139, 37.724045>,  <33.165176, 27.177393, 37.500092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974018, 27.448139, 37.724045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242622, 0.714292, -0.656446,
		-0.844248, -0.177870, -0.505578,
		-0.477892, 0.676867, 0.559885,
		32.830650, 27.651199, 37.892010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729881, 27.590742, 36.998531>,  <33.165176, 27.177393, 37.500092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729881, 27.590742, 36.998531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.745869, 27.809307, 37.333157>,  <32.755459, 27.940447, 37.533932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.745869, 27.809307, 37.333157>,  <32.729881, 27.590742, 36.998531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745869, 27.809307, 37.333157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112724, 0.829420, -0.547134,
		-0.992822, 0.116167, -0.028444,
		0.039967, 0.546413, 0.836562,
		32.757858, 27.973230, 37.584126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321362, 28.161207, 36.821964>,  <32.729881, 27.590742, 36.998531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321362, 28.161207, 36.821964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.568188, 28.277081, 37.114624>,  <32.716286, 28.346605, 37.290218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.568188, 28.277081, 37.114624>,  <32.321362, 28.161207, 36.821964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568188, 28.277081, 37.114624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396121, 0.689031, -0.606898,
		-0.679936, 0.664319, 0.310431,
		0.617070, 0.289684, 0.731647,
		32.753307, 28.363985, 37.334118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276863, 28.882442, 36.804409>,  <32.321362, 28.161207, 36.821964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276863, 28.882442, 36.804409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.633606, 28.811020, 36.970638>,  <32.847652, 28.768167, 37.070377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.633606, 28.811020, 36.970638>,  <32.276863, 28.882442, 36.804409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633606, 28.811020, 36.970638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443872, 0.522167, -0.728230,
		-0.086972, 0.833942, 0.544955,
		0.891859, -0.178555, 0.415578,
		32.901165, 28.757454, 37.095310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672131, 29.346443, 36.555984>,  <32.276863, 28.882442, 36.804409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672131, 29.346443, 36.555984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.964989, 29.137671, 36.731052>,  <33.140701, 29.012407, 36.836094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.964989, 29.137671, 36.731052>,  <32.672131, 29.346443, 36.555984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964989, 29.137671, 36.731052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629851, 0.274111, -0.726739,
		0.259336, 0.807745, 0.529427,
		0.732142, -0.521930, 0.437672,
		33.184631, 28.981091, 36.862354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192215, 29.842966, 36.704716>,  <32.672131, 29.346443, 36.555984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192215, 29.842966, 36.704716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.346272, 29.475761, 36.666931>,  <33.438705, 29.255438, 36.644260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.346272, 29.475761, 36.666931>,  <33.192215, 29.842966, 36.704716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346272, 29.475761, 36.666931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723099, 0.363782, -0.587189,
		0.573408, 0.157846, 0.803920,
		0.385137, -0.918012, -0.094457,
		33.461811, 29.200357, 36.638596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841393, 29.860331, 36.954426>,  <33.192215, 29.842966, 36.704716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841393, 29.860331, 36.954426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.888889, 29.564127, 36.689838>,  <33.917389, 29.386404, 36.531086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.888889, 29.564127, 36.689838>,  <33.841393, 29.860331, 36.954426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888889, 29.564127, 36.689838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634976, 0.568787, -0.522768,
		0.763352, -0.357944, 0.537745,
		0.118741, -0.740511, -0.661471,
		33.924511, 29.341974, 36.491398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507797, 29.747972, 37.249245>,  <33.841393, 29.860331, 36.954426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507797, 29.747972, 37.249245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.816082, 29.849642, 37.482960>,  <35.001053, 29.910643, 37.623188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.816082, 29.849642, 37.482960>,  <34.507797, 29.747972, 37.249245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816082, 29.849642, 37.482960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437196, -0.456131, 0.775116,
		0.463526, -0.852843, -0.240423,
		0.770716, 0.254174, 0.584288,
		35.047298, 29.925894, 37.658245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768517, 29.191154, 37.625454>,  <34.507797, 29.747972, 37.249245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768517, 29.191154, 37.625454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.893616, 29.491852, 37.857685>,  <34.968674, 29.672270, 37.997025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.893616, 29.491852, 37.857685>,  <34.768517, 29.191154, 37.625454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893616, 29.491852, 37.857685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405566, -0.447032, 0.797295,
		0.858899, -0.484813, 0.165074,
		0.312745, 0.751744, 0.580578,
		34.987438, 29.717375, 38.031860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077778, 28.808004, 38.251385>,  <34.768517, 29.191154, 37.625454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077778, 28.808004, 38.251385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.996731, 29.185535, 38.355797>,  <34.948101, 29.412054, 38.418446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.996731, 29.185535, 38.355797>,  <35.077778, 28.808004, 38.251385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996731, 29.185535, 38.355797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284301, -0.311776, 0.906625,
		0.937079, 0.109491, 0.331504,
		-0.202622, 0.943826, 0.261030,
		34.935944, 29.468683, 38.434105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352352, 28.811842, 38.907574>,  <35.077778, 28.808004, 38.251385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352352, 28.811842, 38.907574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120899, 29.138002, 38.900635>,  <34.982025, 29.333698, 38.896469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120899, 29.138002, 38.900635>,  <35.352352, 28.811842, 38.907574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120899, 29.138002, 38.900635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251501, -0.158157, 0.954847,
		0.775841, 0.556872, 0.296590,
		-0.578635, 0.815402, -0.017349,
		34.947308, 29.382624, 38.895432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505898, 29.011602, 39.494358>,  <35.352352, 28.811842, 38.907574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505898, 29.011602, 39.494358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.138901, 29.147377, 39.411423>,  <34.918701, 29.228842, 39.361664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.138901, 29.147377, 39.411423>,  <35.505898, 29.011602, 39.494358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138901, 29.147377, 39.411423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293312, -0.225315, 0.929086,
		0.268652, 0.913244, 0.306287,
		-0.917493, 0.339439, -0.207334,
		34.863651, 29.249208, 39.349224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281635, 29.536238, 40.026337>,  <35.505898, 29.011602, 39.494358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281635, 29.536238, 40.026337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.956688, 29.379776, 39.853340>,  <34.761719, 29.285900, 39.749542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.956688, 29.379776, 39.853340>,  <35.281635, 29.536238, 40.026337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956688, 29.379776, 39.853340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302562, -0.351296, 0.886029,
		-0.498506, 0.850641, 0.167035,
		-0.812371, -0.391153, -0.432495,
		34.712978, 29.262430, 39.723591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678608, 29.809975, 40.513435>,  <35.281635, 29.536238, 40.026337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678608, 29.809975, 40.513435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.579155, 29.505913, 40.273319>,  <34.519482, 29.323475, 40.129250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.579155, 29.505913, 40.273319>,  <34.678608, 29.809975, 40.513435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579155, 29.505913, 40.273319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432477, -0.467420, 0.771027,
		-0.866686, 0.451315, -0.212533,
		-0.248634, -0.760154, -0.600289,
		34.504566, 29.277866, 40.093231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386662, 30.514591, 40.425575>,  <34.678608, 29.809975, 40.513435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386662, 30.514591, 40.425575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.229168, 30.837692, 40.601078>,  <34.134670, 31.031553, 40.706379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.229168, 30.837692, 40.601078>,  <34.386662, 30.514591, 40.425575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229168, 30.837692, 40.601078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229107, 0.548487, -0.804159,
		-0.890214, -0.216103, -0.401021,
		-0.393736, 0.807750, 0.438761,
		34.111046, 31.080017, 40.732708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065781, 30.854380, 39.962692>,  <34.386662, 30.514591, 40.425575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065781, 30.854380, 39.962692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110622, 31.148705, 40.229828>,  <34.137527, 31.325300, 40.390110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110622, 31.148705, 40.229828>,  <34.065781, 30.854380, 39.962692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110622, 31.148705, 40.229828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320344, 0.609434, -0.725238,
		-0.940645, 0.295242, -0.167392,
		0.112106, 0.735814, 0.667839,
		34.144253, 31.369450, 40.430180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773098, 31.380545, 39.654308>,  <34.065781, 30.854380, 39.962692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773098, 31.380545, 39.654308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.016674, 31.541029, 39.928013>,  <34.162819, 31.637320, 40.092236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.016674, 31.541029, 39.928013>,  <33.773098, 31.380545, 39.654308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016674, 31.541029, 39.928013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272961, 0.703973, -0.655679,
		-0.744769, 0.586048, 0.319165,
		0.608943, 0.401210, 0.684266,
		34.199356, 31.661392, 40.133293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639519, 32.127888, 39.752899>,  <33.773098, 31.380545, 39.654308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639519, 32.127888, 39.752899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.016506, 32.066738, 39.871815>,  <34.242699, 32.030048, 39.943165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.016506, 32.066738, 39.871815>,  <33.639519, 32.127888, 39.752899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016506, 32.066738, 39.871815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309857, 0.733237, -0.605270,
		-0.125452, 0.662565, 0.738424,
		0.942470, -0.152874, 0.297286,
		34.299248, 32.020878, 39.961002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878510, 32.787189, 40.002468>,  <33.639519, 32.127888, 39.752899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878510, 32.787189, 40.002468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.199947, 32.574131, 39.896244>,  <34.392811, 32.446297, 39.832508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.199947, 32.574131, 39.896244>,  <33.878510, 32.787189, 40.002468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199947, 32.574131, 39.896244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276994, 0.729624, -0.625238,
		0.526792, 0.428879, 0.733862,
		0.803595, -0.532646, -0.265563,
		34.441025, 32.414337, 39.816574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202133, 33.206314, 39.720764>,  <33.878510, 32.787189, 40.002468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202133, 33.206314, 39.720764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.462860, 32.923038, 39.612236>,  <34.619297, 32.753075, 39.547119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.462860, 32.923038, 39.612236>,  <34.202133, 33.206314, 39.720764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462860, 32.923038, 39.612236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432824, 0.641156, -0.633705,
		0.622738, 0.295624, 0.724433,
		0.651813, -0.708184, -0.271319,
		34.658405, 32.710583, 39.530842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961792, 33.428463, 39.730106>,  <34.202133, 33.206314, 39.720764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961792, 33.428463, 39.730106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.959515, 33.118073, 39.477814>,  <34.958149, 32.931839, 39.326439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.959515, 33.118073, 39.477814>,  <34.961792, 33.428463, 39.730106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959515, 33.118073, 39.477814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499015, 0.544392, -0.674256,
		0.866575, -0.318586, 0.384125,
		-0.005694, -0.775977, -0.630736,
		34.957806, 32.885281, 39.288593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.007435, 30.693691, 40.534630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.865282, 30.486670, 40.223286>,  <27.779991, 30.362455, 40.036480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.865282, 30.486670, 40.223286>,  <28.007435, 30.693691, 40.534630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865282, 30.486670, 40.223286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491151, 0.605098, -0.626599,
		0.795283, -0.604973, 0.039157,
		-0.355382, -0.517556, -0.778357,
		27.758667, 30.331404, 39.989780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603912, 30.543890, 40.141602>,  <28.007435, 30.693691, 40.534630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603912, 30.543890, 40.141602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.279936, 30.527596, 39.907562>,  <28.085550, 30.517818, 39.767139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.279936, 30.527596, 39.907562>,  <28.603912, 30.543890, 40.141602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279936, 30.527596, 39.907562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433847, 0.629689, -0.644413,
		0.394679, -0.775778, -0.492338,
		-0.809942, -0.040738, -0.585094,
		28.036953, 30.515373, 39.732033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837238, 30.312380, 39.558693>,  <28.603912, 30.543890, 40.141602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837238, 30.312380, 39.558693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.495701, 30.499119, 39.466599>,  <28.290779, 30.611162, 39.411343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.495701, 30.499119, 39.466599>,  <28.837238, 30.312380, 39.558693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495701, 30.499119, 39.466599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475646, 0.520079, -0.709421,
		-0.211452, -0.715244, -0.666119,
		-0.853843, 0.466845, -0.230232,
		28.239548, 30.639172, 39.397530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921333, 30.423128, 38.895611>,  <28.837238, 30.312380, 39.558693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921333, 30.423128, 38.895611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617468, 30.655159, 39.013206>,  <28.435148, 30.794376, 39.083763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617468, 30.655159, 39.013206>,  <28.921333, 30.423128, 38.895611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617468, 30.655159, 39.013206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167118, 0.611013, -0.773780,
		-0.628479, -0.538680, -0.561104,
		-0.759661, 0.580075, 0.293986,
		28.389570, 30.829182, 39.101402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572838, 30.638224, 38.269169>,  <28.921333, 30.423128, 38.895611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572838, 30.638224, 38.269169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.443756, 30.913937, 38.528629>,  <28.366308, 31.079365, 38.684307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.443756, 30.913937, 38.528629>,  <28.572838, 30.638224, 38.269169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443756, 30.913937, 38.528629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014670, 0.681593, -0.731584,
		-0.946387, -0.245600, -0.209840,
		-0.322702, 0.689283, 0.648653,
		28.346945, 31.120722, 38.723225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917198, 30.911880, 38.090588>,  <28.572838, 30.638224, 38.269169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917198, 30.911880, 38.090588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096001, 31.191280, 38.314117>,  <28.203281, 31.358921, 38.448235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096001, 31.191280, 38.314117>,  <27.917198, 30.911880, 38.090588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096001, 31.191280, 38.314117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042769, 0.640682, -0.766614,
		-0.893507, 0.318781, 0.316264,
		0.447007, 0.698501, 0.558820,
		28.230103, 31.400831, 38.481762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579622, 31.597546, 37.946972>,  <27.917198, 30.911880, 38.090588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579622, 31.597546, 37.946972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.932415, 31.697960, 38.106518>,  <28.144091, 31.758209, 38.202244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.932415, 31.697960, 38.106518>,  <27.579622, 31.597546, 37.946972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932415, 31.697960, 38.106518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120973, 0.697380, -0.706419,
		-0.455495, 0.671299, 0.584707,
		0.881980, 0.251037, 0.398862,
		28.197010, 31.773272, 38.226177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539646, 32.278526, 38.036331>,  <27.579622, 31.597546, 37.946972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539646, 32.278526, 38.036331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.934536, 32.215569, 38.026436>,  <28.171471, 32.177795, 38.020500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.934536, 32.215569, 38.026436>,  <27.539646, 32.278526, 38.036331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934536, 32.215569, 38.026436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108578, 0.778240, -0.618509,
		0.116603, 0.607922, 0.785388,
		0.987226, -0.157396, -0.024738,
		28.230703, 32.168350, 38.019016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847960, 32.901836, 37.946617>,  <27.539646, 32.278526, 38.036331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847960, 32.901836, 37.946617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.161312, 32.681881, 37.830734>,  <28.349323, 32.549908, 37.761204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.161312, 32.681881, 37.830734>,  <27.847960, 32.901836, 37.946617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161312, 32.681881, 37.830734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309418, 0.749286, -0.585518,
		0.539046, 0.369043, 0.757124,
		0.783383, -0.549889, -0.289712,
		28.396328, 32.516914, 37.743820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359821, 33.362267, 37.784550>,  <27.847960, 32.901836, 37.946617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359821, 33.362267, 37.784550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.514744, 33.037579, 37.609692>,  <28.607698, 32.842766, 37.504776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.514744, 33.037579, 37.609692>,  <28.359821, 33.362267, 37.784550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514744, 33.037579, 37.609692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495724, 0.583132, -0.643595,
		0.777336, 0.032566, 0.628243,
		0.387308, -0.811724, -0.437146,
		28.630936, 32.794060, 37.478546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124210, 33.531364, 37.643330>,  <28.359821, 33.362267, 37.784550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124210, 33.531364, 37.643330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.034662, 33.212368, 37.419228>,  <28.980934, 33.020969, 37.284767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.034662, 33.212368, 37.419228>,  <29.124210, 33.531364, 37.643330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034662, 33.212368, 37.419228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452597, 0.424038, -0.784441,
		0.863156, -0.429184, 0.266013,
		-0.223870, -0.797492, -0.560258,
		28.967501, 32.973122, 37.251148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717302, 33.335171, 37.249504>,  <29.124210, 33.531364, 37.643330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717302, 33.335171, 37.249504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.381407, 33.241322, 37.053631>,  <29.179869, 33.185013, 36.936108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.381407, 33.241322, 37.053631>,  <29.717302, 33.335171, 37.249504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381407, 33.241322, 37.053631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352854, 0.449659, -0.820549,
		0.412702, -0.861836, -0.294814,
		-0.839745, -0.234616, -0.489678,
		29.129484, 33.170933, 36.906727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525761, 33.045013, 37.467575>,  <29.717302, 33.335171, 37.249504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525761, 33.045013, 37.467575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.697155, 33.313217, 37.709839>,  <30.799992, 33.474140, 37.855198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.697155, 33.313217, 37.709839>,  <30.525761, 33.045013, 37.467575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697155, 33.313217, 37.709839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171856, -0.597596, 0.783163,
		0.887055, -0.439660, -0.140831,
		0.428485, 0.670506, 0.605659,
		30.825701, 33.514370, 37.891537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970997, 32.676132, 37.767376>,  <30.525761, 33.045013, 37.467575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970997, 32.676132, 37.767376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910128, 32.989738, 38.008095>,  <30.873606, 33.177902, 38.152527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910128, 32.989738, 38.008095>,  <30.970997, 32.676132, 37.767376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910128, 32.989738, 38.008095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122827, -0.619166, 0.775595,
		0.980692, 0.044109, 0.190520,
		-0.152174, 0.784020, 0.601793,
		30.864475, 33.224945, 38.188633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497335, 32.578705, 38.335293>,  <30.970997, 32.676132, 37.767376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497335, 32.578705, 38.335293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.214148, 32.828243, 38.467716>,  <31.044235, 32.977966, 38.547169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.214148, 32.828243, 38.467716>,  <31.497335, 32.578705, 38.335293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214148, 32.828243, 38.467716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055600, -0.516538, 0.854457,
		0.704050, 0.586524, 0.400379,
		-0.707971, 0.623842, 0.331058,
		31.001757, 33.015396, 38.567032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676537, 32.693752, 39.044861>,  <31.497335, 32.578705, 38.335293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676537, 32.693752, 39.044861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.299906, 32.823700, 39.009319>,  <31.073927, 32.901669, 38.987995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.299906, 32.823700, 39.009319>,  <31.676537, 32.693752, 39.044861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299906, 32.823700, 39.009319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260629, -0.535702, 0.803179,
		0.213327, 0.779412, 0.589074,
		-0.941575, 0.324869, -0.088858,
		31.017433, 32.921162, 38.982662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599352, 33.089066, 39.660042>,  <31.676537, 32.693752, 39.044861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599352, 33.089066, 39.660042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.252884, 32.947979, 39.518429>,  <31.045004, 32.863327, 39.433460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.252884, 32.947979, 39.518429>,  <31.599352, 33.089066, 39.660042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252884, 32.947979, 39.518429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098636, -0.573823, 0.813018,
		-0.489920, 0.739132, 0.462237,
		-0.866170, -0.352720, -0.354032,
		30.993032, 32.842163, 39.412220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226025, 32.959427, 40.283039>,  <31.599352, 33.089066, 39.660042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226025, 32.959427, 40.283039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.995802, 32.777843, 40.010963>,  <30.857668, 32.668896, 39.847717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.995802, 32.777843, 40.010963>,  <31.226025, 32.959427, 40.283039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995802, 32.777843, 40.010963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396315, -0.572720, 0.717583,
		-0.715309, 0.682580, 0.149725,
		-0.575559, -0.453955, -0.680188,
		30.823133, 32.641655, 39.806908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562304, 32.853703, 40.582569>,  <31.226025, 32.959427, 40.283039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562304, 32.853703, 40.582569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.589497, 32.588627, 40.284248>,  <30.605812, 32.429581, 40.105255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.589497, 32.588627, 40.284248>,  <30.562304, 32.853703, 40.582569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589497, 32.588627, 40.284248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487322, -0.674347, 0.554774,
		-0.870572, 0.325731, -0.368787,
		0.067983, -0.662688, -0.745803,
		30.609892, 32.389820, 40.060509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882322, 32.643089, 40.263664>,  <30.562304, 32.853703, 40.582569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882322, 32.643089, 40.263664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.152441, 32.358078, 40.187469>,  <30.314512, 32.187073, 40.141754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.152441, 32.358078, 40.187469>,  <29.882322, 32.643089, 40.263664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152441, 32.358078, 40.187469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542704, -0.654932, 0.525867,
		-0.499447, -0.251741, -0.828963,
		0.675297, -0.712524, -0.190483,
		30.355030, 32.144321, 40.130325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540703, 32.132648, 40.595509>,  <29.882322, 32.643089, 40.263664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540703, 32.132648, 40.595509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.904964, 32.002693, 40.493408>,  <30.123522, 31.924719, 40.432148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.904964, 32.002693, 40.493408>,  <29.540703, 32.132648, 40.595509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904964, 32.002693, 40.493408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026538, -0.662513, 0.748580,
		-0.412313, -0.674924, -0.611944,
		0.910655, -0.324889, -0.255252,
		30.178162, 31.905226, 40.416832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454435, 31.519213, 40.455338>,  <29.540703, 32.132648, 40.595509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454435, 31.519213, 40.455338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.836695, 31.558376, 40.566441>,  <30.066051, 31.581875, 40.633102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.836695, 31.558376, 40.566441>,  <29.454435, 31.519213, 40.455338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836695, 31.558376, 40.566441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152394, -0.642635, 0.750864,
		0.252012, -0.759891, -0.599213,
		0.955649, 0.097910, 0.277755,
		30.123390, 31.587749, 40.649765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555292, 30.791994, 40.611843>,  <29.454435, 31.519213, 40.455338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555292, 30.791994, 40.611843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.848076, 31.009563, 40.775982>,  <30.023746, 31.140104, 40.874466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.848076, 31.009563, 40.775982>,  <29.555292, 30.791994, 40.611843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848076, 31.009563, 40.775982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084579, -0.525061, 0.846851,
		0.676076, -0.654569, -0.338320,
		0.731961, 0.543921, 0.410344,
		30.067665, 31.172739, 40.899086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995707, 30.229143, 40.837692>,  <29.555292, 30.791994, 40.611843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995707, 30.229143, 40.837692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.077703, 30.556616, 41.052258>,  <30.126902, 30.753099, 41.180996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.077703, 30.556616, 41.052258>,  <29.995707, 30.229143, 40.837692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077703, 30.556616, 41.052258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053832, -0.556652, 0.829000,
		0.977282, -0.141064, -0.158182,
		0.204994, 0.818682, 0.536412,
		30.139202, 30.802221, 41.213181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566429, 30.095274, 41.204243>,  <29.995707, 30.229143, 40.837692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566429, 30.095274, 41.204243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.402800, 30.395830, 41.411343>,  <30.304623, 30.576164, 41.535603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.402800, 30.395830, 41.411343>,  <30.566429, 30.095274, 41.204243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402800, 30.395830, 41.411343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180256, -0.489677, 0.853068,
		0.894520, 0.442296, 0.064871,
		-0.409074, 0.751393, 0.517752,
		30.280077, 30.621248, 41.566669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019848, 30.265816, 41.737244>,  <30.566429, 30.095274, 41.204243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019848, 30.265816, 41.737244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.670538, 30.408054, 41.870472>,  <30.460951, 30.493397, 41.950409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.670538, 30.408054, 41.870472>,  <31.019848, 30.265816, 41.737244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670538, 30.408054, 41.870472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183288, -0.393635, 0.900809,
		0.451434, 0.847705, 0.278575,
		-0.873277, 0.355597, 0.333074,
		30.408554, 30.514734, 41.970394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384197, 30.738993, 41.218708>,  <31.019848, 30.265816, 41.737244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384197, 30.738993, 41.218708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.474762, 30.572033, 41.570732>,  <31.529100, 30.471857, 41.781948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.474762, 30.572033, 41.570732>,  <31.384197, 30.738993, 41.218708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474762, 30.572033, 41.570732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903775, 0.426953, -0.030017,
		-0.363218, 0.802177, 0.473904,
		0.226414, -0.417400, 0.880065,
		31.542686, 30.446814, 41.834751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695818, 31.226271, 41.745895>,  <31.384197, 30.738993, 41.218708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695818, 31.226271, 41.745895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.826530, 30.863194, 41.851200>,  <31.904957, 30.645348, 41.914383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.826530, 30.863194, 41.851200>,  <31.695818, 31.226271, 41.745895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826530, 30.863194, 41.851200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935814, 0.271807, -0.224442,
		0.132169, 0.319706, 0.938253,
		0.326779, -0.907694, 0.263261,
		31.924564, 30.590885, 41.930180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258865, 31.312511, 42.258083>,  <31.695818, 31.226271, 41.745895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258865, 31.312511, 42.258083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.295807, 30.968025, 42.058174>,  <32.317970, 30.761333, 41.938229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.295807, 30.968025, 42.058174>,  <32.258865, 31.312511, 42.258083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295807, 30.968025, 42.058174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866706, 0.316624, -0.385447,
		0.490194, -0.397562, 0.775663,
		0.092355, -0.861216, -0.499777,
		32.323513, 30.709660, 41.908241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935928, 30.998323, 42.549995>,  <32.258865, 31.312511, 42.258083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935928, 30.998323, 42.549995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.886879, 30.817266, 42.196709>,  <32.857449, 30.708633, 41.984737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.886879, 30.817266, 42.196709>,  <32.935928, 30.998323, 42.549995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886879, 30.817266, 42.196709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899817, 0.324725, -0.291347,
		0.418680, -0.830463, 0.367475,
		-0.122625, -0.452641, -0.883221,
		32.850090, 30.681475, 41.931744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619083, 30.825483, 42.254074>,  <32.935928, 30.998323, 42.549995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619083, 30.825483, 42.254074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.425312, 30.770502, 41.908489>,  <33.309048, 30.737513, 41.701138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.425312, 30.770502, 41.908489>,  <33.619083, 30.825483, 42.254074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425312, 30.770502, 41.908489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846993, 0.173460, -0.502509,
		0.218936, -0.975202, 0.032395,
		-0.484428, -0.137455, -0.863965,
		33.279984, 30.729265, 41.649300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066982, 30.560654, 41.804562>,  <33.619083, 30.825483, 42.254074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066982, 30.560654, 41.804562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.793396, 30.731094, 41.567707>,  <33.629246, 30.833359, 41.425594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.793396, 30.731094, 41.567707>,  <34.066982, 30.560654, 41.804562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793396, 30.731094, 41.567707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728397, 0.443787, -0.522005,
		0.040354, -0.788345, -0.613908,
		-0.683965, 0.426104, -0.592138,
		33.588207, 30.858925, 41.390064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068691, 30.265095, 41.137531>,  <34.066982, 30.560654, 41.804562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068691, 30.265095, 41.137531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.929676, 30.639816, 41.121475>,  <33.846268, 30.864649, 41.111839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.929676, 30.639816, 41.121475>,  <34.068691, 30.265095, 41.137531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929676, 30.639816, 41.121475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812325, 0.279424, -0.511908,
		-0.468341, -0.210519, -0.858102,
		-0.347540, 0.936805, -0.040145,
		33.825413, 30.920858, 41.109432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932682, 29.734417, 40.527405>,  <34.068691, 30.265095, 41.137531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932682, 29.734417, 40.527405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.060265, 29.376158, 40.403419>,  <34.136814, 29.161201, 40.329029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.060265, 29.376158, 40.403419>,  <33.932682, 29.734417, 40.527405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060265, 29.376158, 40.403419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593665, -0.443742, 0.671309,
		-0.738803, -0.030102, -0.673249,
		0.318957, -0.895649, -0.309967,
		34.155952, 29.107464, 40.310429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337303, 29.309994, 40.504890>,  <33.932682, 29.734417, 40.527405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337303, 29.309994, 40.504890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.636383, 29.046181, 40.535782>,  <33.815830, 28.887894, 40.554317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.636383, 29.046181, 40.535782>,  <33.337303, 29.309994, 40.504890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636383, 29.046181, 40.535782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529111, -0.521455, 0.669422,
		-0.401234, -0.541388, -0.738857,
		0.747698, -0.659533, 0.077229,
		33.860691, 28.848320, 40.558952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039856, 28.753258, 40.432827>,  <33.337303, 29.309994, 40.504890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039856, 28.753258, 40.432827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.381760, 28.616522, 40.589043>,  <33.586903, 28.534479, 40.682774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.381760, 28.616522, 40.589043>,  <33.039856, 28.753258, 40.432827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381760, 28.616522, 40.589043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518998, -0.569460, 0.637461,
		0.004488, -0.747570, -0.664168,
		0.854764, -0.341841, 0.390543,
		33.638187, 28.513969, 40.706207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070126, 27.913967, 40.410435>,  <33.039856, 28.753258, 40.432827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070126, 27.913967, 40.410435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.333755, 27.991159, 40.701195>,  <33.491932, 28.037474, 40.875648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.333755, 27.991159, 40.701195>,  <33.070126, 27.913967, 40.410435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333755, 27.991159, 40.701195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530112, -0.566390, 0.631018,
		0.533482, -0.801225, -0.270992,
		0.659074, 0.192980, 0.726898,
		33.531479, 28.049053, 40.919266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032383, 27.327835, 40.817345>,  <33.070126, 27.913967, 40.410435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032383, 27.327835, 40.817345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.198021, 27.571699, 41.087704>,  <33.297405, 27.718018, 41.249920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.198021, 27.571699, 41.087704>,  <33.032383, 27.327835, 40.817345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198021, 27.571699, 41.087704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366379, -0.568109, 0.736898,
		0.833241, -0.552783, -0.011887,
		0.414098, 0.609658, 0.675899,
		33.322250, 27.754597, 41.290474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196941, 26.945078, 41.453026>,  <33.032383, 27.327835, 40.817345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196941, 26.945078, 41.453026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.198635, 27.323940, 41.581322>,  <33.199654, 27.551258, 41.658298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.198635, 27.323940, 41.581322>,  <33.196941, 26.945078, 41.453026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198635, 27.323940, 41.581322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426085, -0.288462, 0.857462,
		0.904673, -0.140296, 0.402347,
		0.004236, 0.947157, 0.320742,
		33.199905, 27.608088, 41.677544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647945, 26.966242, 42.062546>,  <33.196941, 26.945078, 41.453026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647945, 26.966242, 42.062546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.407501, 27.284563, 42.091820>,  <33.263233, 27.475555, 42.109383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.407501, 27.284563, 42.091820>,  <33.647945, 26.966242, 42.062546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407501, 27.284563, 42.091820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229023, -0.259274, 0.938257,
		0.765643, 0.547240, 0.338111,
		-0.601115, 0.795805, 0.073181,
		33.227165, 27.523304, 42.113773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646507, 27.194038, 42.697300>,  <33.647945, 26.966242, 42.062546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646507, 27.194038, 42.697300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.294704, 27.338757, 42.573643>,  <33.083622, 27.425587, 42.499447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.294704, 27.338757, 42.573643>,  <33.646507, 27.194038, 42.697300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294704, 27.338757, 42.573643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424909, -0.304522, 0.852478,
		0.214280, 0.881120, 0.421559,
		-0.879509, 0.361794, -0.309143,
		33.030853, 27.447294, 42.480900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396767, 27.514069, 43.316738>,  <33.646507, 27.194038, 42.697300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396767, 27.514069, 43.316738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.091228, 27.450354, 43.066566>,  <32.907906, 27.412125, 42.916462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.091228, 27.450354, 43.066566>,  <33.396767, 27.514069, 43.316738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091228, 27.450354, 43.066566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563998, -0.306353, 0.766846,
		-0.313752, 0.938496, 0.144170,
		-0.763849, -0.159288, -0.625429,
		32.862072, 27.402567, 42.878937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.418194, 35.867928, 29.404671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.036316, 35.778194, 29.326460>,  <37.807190, 35.724354, 29.279533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.036316, 35.778194, 29.326460>,  <38.418194, 35.867928, 29.404671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036316, 35.778194, 29.326460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146384, -0.218036, 0.964900,
		-0.259091, 0.949808, 0.175319,
		-0.954695, -0.224333, -0.195528,
		37.749908, 35.710896, 29.267801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935944, 36.148937, 29.959269>,  <38.418194, 35.867928, 29.404671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935944, 36.148937, 29.959269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.723885, 35.862034, 29.778385>,  <37.596649, 35.689892, 29.669855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.723885, 35.862034, 29.778385>,  <37.935944, 36.148937, 29.959269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723885, 35.862034, 29.778385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310316, -0.332195, 0.890702,
		-0.789082, 0.612528, -0.046464,
		-0.530145, -0.717256, -0.452207,
		37.564842, 35.646858, 29.642723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313148, 36.142513, 30.259005>,  <37.935944, 36.148937, 29.959269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313148, 36.142513, 30.259005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352978, 35.776058, 30.103685>,  <37.376873, 35.556187, 30.010494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352978, 35.776058, 30.103685>,  <37.313148, 36.142513, 30.259005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352978, 35.776058, 30.103685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285802, -0.400127, 0.870756,
		-0.953102, 0.024277, -0.301674,
		0.099568, -0.916138, -0.388300,
		37.382847, 35.501217, 29.987196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625702, 35.808285, 30.426237>,  <37.313148, 36.142513, 30.259005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625702, 35.808285, 30.426237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.925163, 35.544857, 30.395773>,  <37.104839, 35.386799, 30.377495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.925163, 35.544857, 30.395773>,  <36.625702, 35.808285, 30.426237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925163, 35.544857, 30.395773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252180, -0.389135, 0.885991,
		-0.613123, -0.644097, -0.457406,
		0.748656, -0.658569, -0.076159,
		37.149761, 35.347286, 30.372925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326138, 35.251774, 30.818037>,  <36.625702, 35.808285, 30.426237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326138, 35.251774, 30.818037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.697304, 35.112217, 30.765503>,  <36.920002, 35.028484, 30.733982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.697304, 35.112217, 30.765503>,  <36.326138, 35.251774, 30.818037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697304, 35.112217, 30.765503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079794, -0.530012, 0.844227,
		-0.364153, -0.772891, -0.519646,
		0.927915, -0.348893, -0.131333,
		36.975677, 35.007549, 30.726103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347294, 34.567463, 31.078026>,  <36.326138, 35.251774, 30.818037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347294, 34.567463, 31.078026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739040, 34.648174, 31.082460>,  <36.974091, 34.696602, 31.085121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739040, 34.648174, 31.082460>,  <36.347294, 34.567463, 31.078026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739040, 34.648174, 31.082460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120663, -0.627904, 0.768880,
		0.162106, -0.751679, -0.639296,
		0.979368, 0.201779, 0.011087,
		37.032852, 34.708710, 31.085787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661621, 33.893299, 31.188765>,  <36.347294, 34.567463, 31.078026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661621, 33.893299, 31.188765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.918335, 34.179405, 31.299412>,  <37.072361, 34.351067, 31.365801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.918335, 34.179405, 31.299412>,  <36.661621, 33.893299, 31.188765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918335, 34.179405, 31.299412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025021, -0.380041, 0.924631,
		0.766479, -0.586490, -0.261800,
		0.641781, 0.715261, 0.276619,
		37.110870, 34.393982, 31.382397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127998, 33.443264, 31.410297>,  <36.661621, 33.893299, 31.188765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127998, 33.443264, 31.410297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.201603, 33.790932, 31.593897>,  <37.245766, 33.999535, 31.704056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.201603, 33.790932, 31.593897>,  <37.127998, 33.443264, 31.410297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201603, 33.790932, 31.593897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183222, -0.489118, 0.852757,
		0.965697, -0.072818, -0.249255,
		0.184011, 0.869173, 0.458997,
		37.256805, 34.051685, 31.731596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625027, 33.302574, 31.901567>,  <37.127998, 33.443264, 31.410297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625027, 33.302574, 31.901567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.461369, 33.652557, 32.005138>,  <37.363174, 33.862549, 32.067280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.461369, 33.652557, 32.005138>,  <37.625027, 33.302574, 31.901567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461369, 33.652557, 32.005138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042217, -0.301614, 0.952495,
		0.911491, 0.378780, 0.160343,
		-0.409148, 0.874960, 0.258927,
		37.338623, 33.915047, 32.082817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065151, 33.495102, 32.395027>,  <37.625027, 33.302574, 31.901567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065151, 33.495102, 32.395027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.726734, 33.695389, 32.468227>,  <37.523682, 33.815559, 32.512150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.726734, 33.695389, 32.468227>,  <38.065151, 33.495102, 32.395027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726734, 33.695389, 32.468227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026950, -0.302668, 0.952715,
		0.532427, 0.810973, 0.242577,
		-0.846047, 0.500714, 0.183005,
		37.472919, 33.845604, 32.523129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124405, 33.903934, 33.052654>,  <38.065151, 33.495102, 32.395027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124405, 33.903934, 33.052654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.726799, 33.885769, 33.012894>,  <37.488235, 33.874870, 32.989037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.726799, 33.885769, 33.012894>,  <38.124405, 33.903934, 33.052654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726799, 33.885769, 33.012894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068999, -0.444597, 0.893069,
		-0.084750, 0.894579, 0.438801,
		-0.994010, -0.045410, -0.099405,
		37.428596, 33.872147, 32.983074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712498, 34.174953, 33.744678>,  <38.124405, 33.903934, 33.052654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712498, 34.174953, 33.744678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.462921, 33.944988, 33.532951>,  <37.313175, 33.807011, 33.405914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.462921, 33.944988, 33.532951>,  <37.712498, 34.174953, 33.744678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462921, 33.944988, 33.532951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347073, -0.403002, 0.846835,
		-0.700170, 0.712087, 0.051913,
		-0.623941, -0.574911, -0.529316,
		37.275738, 33.772514, 33.374157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428963, 34.809715, 33.841034>,  <37.712498, 34.174953, 33.744678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428963, 34.809715, 33.841034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.340042, 35.110035, 34.089836>,  <37.286690, 35.290226, 34.239117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.340042, 35.110035, 34.089836>,  <37.428963, 34.809715, 33.841034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340042, 35.110035, 34.089836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254591, 0.660534, -0.706313,
		-0.941152, 0.001346, -0.337980,
		-0.222297, 0.750795, 0.622006,
		37.273354, 35.335274, 34.276440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095585, 35.334949, 33.397324>,  <37.428963, 34.809715, 33.841034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095585, 35.334949, 33.397324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.208961, 35.538666, 33.722355>,  <37.276989, 35.660896, 33.917374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.208961, 35.538666, 33.722355>,  <37.095585, 35.334949, 33.397324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208961, 35.538666, 33.722355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035279, 0.852292, -0.521875,
		-0.958339, 0.119256, 0.259546,
		0.283445, 0.509290, 0.812577,
		37.293995, 35.691452, 33.966129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530380, 35.885502, 33.554005>,  <37.095585, 35.334949, 33.397324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530380, 35.885502, 33.554005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895966, 35.980343, 33.685734>,  <37.115318, 36.037247, 33.764771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895966, 35.980343, 33.685734>,  <36.530380, 35.885502, 33.554005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895966, 35.980343, 33.685734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037194, 0.857075, -0.513846,
		-0.404089, 0.457388, 0.792154,
		0.913963, 0.237103, 0.329323,
		37.170155, 36.051476, 33.784531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519688, 36.563442, 33.548820>,  <36.530380, 35.885502, 33.554005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519688, 36.563442, 33.548820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912533, 36.491367, 33.570652>,  <37.148239, 36.448120, 33.583752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912533, 36.491367, 33.570652>,  <36.519688, 36.563442, 33.548820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912533, 36.491367, 33.570652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181526, 0.829307, -0.528487,
		0.049964, 0.528943, 0.847185,
		0.982116, -0.180191, 0.054582,
		37.207169, 36.437309, 33.587025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698444, 37.213409, 33.654255>,  <36.519688, 36.563442, 33.548820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698444, 37.213409, 33.654255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019196, 37.021172, 33.512257>,  <37.211647, 36.905827, 33.427055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019196, 37.021172, 33.512257>,  <36.698444, 37.213409, 33.654255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019196, 37.021172, 33.512257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174522, 0.756633, -0.630117,
		0.571436, 0.443320, 0.690600,
		0.801874, -0.480597, -0.354999,
		37.259758, 36.876991, 33.405758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260010, 37.611401, 33.715656>,  <36.698444, 37.213409, 33.654255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260010, 37.611401, 33.715656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.382763, 37.349613, 33.439255>,  <37.456413, 37.192539, 33.273415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.382763, 37.349613, 33.439255>,  <37.260010, 37.611401, 33.715656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382763, 37.349613, 33.439255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213312, 0.754866, -0.620223,
		0.927536, 0.042934, 0.371260,
		0.306881, -0.654473, -0.691006,
		37.474827, 37.153271, 33.231953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890461, 37.894077, 33.602917>,  <37.260010, 37.611401, 33.715656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890461, 37.894077, 33.602917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.837612, 37.649551, 33.290802>,  <37.805904, 37.502838, 33.103535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.837612, 37.649551, 33.290802>,  <37.890461, 37.894077, 33.602917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837612, 37.649551, 33.290802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433423, 0.672314, -0.600115,
		0.891453, -0.417480, 0.176130,
		-0.132122, -0.611313, -0.780282,
		37.797977, 37.466156, 33.056717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478718, 38.028610, 33.253948>,  <37.890461, 37.894077, 33.602917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478718, 38.028610, 33.253948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.220005, 37.887367, 32.983547>,  <38.064777, 37.802620, 32.821304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.220005, 37.887367, 32.983547>,  <38.478718, 38.028610, 33.253948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220005, 37.887367, 32.983547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296350, 0.700355, -0.649369,
		0.702735, -0.620340, -0.348342,
		-0.646793, -0.353103, -0.676001,
		38.025970, 37.781433, 32.780746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699329, 38.191559, 32.673428>,  <38.478718, 38.028610, 33.253948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699329, 38.191559, 32.673428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.336601, 38.111595, 32.524982>,  <38.118965, 38.063618, 32.435917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.336601, 38.111595, 32.524982>,  <38.699329, 38.191559, 32.673428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336601, 38.111595, 32.524982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035807, 0.840680, -0.540348,
		0.420001, -0.503285, -0.755184,
		-0.906817, -0.199906, -0.371108,
		38.064556, 38.051624, 32.413651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679966, 38.176846, 31.953157>,  <38.699329, 38.191559, 32.673428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679966, 38.176846, 31.953157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.315544, 38.293808, 32.069424>,  <38.096893, 38.363983, 32.139183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.315544, 38.293808, 32.069424>,  <38.679966, 38.176846, 31.953157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315544, 38.293808, 32.069424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075944, 0.811949, -0.578768,
		-0.405237, -0.505213, -0.761934,
		-0.911052, 0.292403, 0.290663,
		38.042229, 38.381527, 32.156624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395321, 38.408932, 31.350391>,  <38.679966, 38.176846, 31.953157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395321, 38.408932, 31.350391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.130009, 38.550461, 31.614170>,  <37.970821, 38.635376, 31.772438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.130009, 38.550461, 31.614170>,  <38.395321, 38.408932, 31.350391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130009, 38.550461, 31.614170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219321, 0.750587, -0.623312,
		-0.715513, -0.558061, -0.420249,
		-0.663279, 0.353819, 0.659449,
		37.931026, 38.656605, 31.812004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769337, 38.656029, 30.943834>,  <38.395321, 38.408932, 31.350391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769337, 38.656029, 30.943834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.710560, 38.829025, 31.299667>,  <37.675293, 38.932823, 31.513166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.710560, 38.829025, 31.299667>,  <37.769337, 38.656029, 30.943834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710560, 38.829025, 31.299667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236594, 0.857872, -0.456156,
		-0.960432, -0.277501, -0.023736,
		-0.146947, 0.432491, 0.889583,
		37.666477, 38.958771, 31.566542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171852, 39.036667, 30.925468>,  <37.769337, 38.656029, 30.943834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171852, 39.036667, 30.925468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365192, 39.199409, 31.235525>,  <37.481197, 39.297054, 31.421558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365192, 39.199409, 31.235525>,  <37.171852, 39.036667, 30.925468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365192, 39.199409, 31.235525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110831, 0.906758, -0.406825,
		-0.868384, 0.110729, 0.483372,
		0.483349, 0.406853, 0.775141,
		37.510197, 39.321465, 31.468067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786457, 39.616486, 31.134876>,  <37.171852, 39.036667, 30.925468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786457, 39.616486, 31.134876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.163143, 39.666752, 31.259695>,  <37.389156, 39.696911, 31.334585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.163143, 39.666752, 31.259695>,  <36.786457, 39.616486, 31.134876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163143, 39.666752, 31.259695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029774, 0.955099, -0.294788,
		-0.335080, 0.268316, 0.903177,
		0.941719, 0.125668, 0.312045,
		37.445660, 39.704453, 31.353308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111580, 39.491581, 30.791300>,  <36.786457, 39.616486, 31.134876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111580, 39.491581, 30.791300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.272934, 39.402916, 30.436190>,  <36.369747, 39.349716, 30.223124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.272934, 39.402916, 30.436190>,  <36.111580, 39.491581, 30.791300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272934, 39.402916, 30.436190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866088, -0.405545, -0.292274,
		-0.295247, 0.886791, -0.355571,
		0.403386, -0.221662, -0.887775,
		36.393951, 39.336418, 30.169857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270260, 38.801285, 30.517752>,  <36.111580, 39.491581, 30.791300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270260, 38.801285, 30.517752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.966805, 38.674137, 30.290268>,  <35.784733, 38.597847, 30.153778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.966805, 38.674137, 30.290268>,  <36.270260, 38.801285, 30.517752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966805, 38.674137, 30.290268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289022, -0.618116, 0.731026,
		-0.583900, 0.718951, 0.377054,
		-0.758635, -0.317869, -0.568710,
		35.739212, 38.578777, 30.119656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579548, 38.878845, 30.857141>,  <36.270260, 38.801285, 30.517752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579548, 38.878845, 30.857141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.599926, 38.577721, 30.594637>,  <35.612152, 38.397045, 30.437134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.599926, 38.577721, 30.594637>,  <35.579548, 38.878845, 30.857141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599926, 38.577721, 30.594637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298175, -0.638606, 0.709418,
		-0.953151, 0.159542, -0.257001,
		0.050941, -0.752814, -0.656260,
		35.615208, 38.351875, 30.397758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952648, 38.601105, 30.869736>,  <35.579548, 38.878845, 30.857141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952648, 38.601105, 30.869736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170761, 38.310066, 30.703236>,  <35.301628, 38.135445, 30.603334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170761, 38.310066, 30.703236>,  <34.952648, 38.601105, 30.869736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170761, 38.310066, 30.703236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212238, -0.600229, 0.771155,
		-0.810936, -0.332156, -0.481721,
		0.545287, -0.727597, -0.416252,
		35.334347, 38.091785, 30.578360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516190, 38.085129, 30.826693>,  <34.952648, 38.601105, 30.869736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516190, 38.085129, 30.826693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870178, 37.899704, 30.809095>,  <35.082573, 37.788448, 30.798538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870178, 37.899704, 30.809095>,  <34.516190, 38.085129, 30.826693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870178, 37.899704, 30.809095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311661, -0.659865, 0.683700,
		-0.345966, -0.591345, -0.728436,
		0.884972, -0.463562, -0.043991,
		35.135670, 37.760635, 30.795898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309845, 37.334675, 30.798603>,  <34.516190, 38.085129, 30.826693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309845, 37.334675, 30.798603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700672, 37.335423, 30.883768>,  <34.935169, 37.335873, 30.934868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700672, 37.335423, 30.883768>,  <34.309845, 37.334675, 30.798603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700672, 37.335423, 30.883768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162249, -0.640999, 0.750197,
		0.137881, -0.767539, -0.625997,
		0.977069, 0.001871, 0.212914,
		34.993793, 37.335983, 30.947641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494171, 36.703522, 30.863256>,  <34.309845, 37.334675, 30.798603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494171, 36.703522, 30.863256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.802052, 36.868401, 31.058254>,  <34.986778, 36.967327, 31.175253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.802052, 36.868401, 31.058254>,  <34.494171, 36.703522, 30.863256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802052, 36.868401, 31.058254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100375, -0.675979, 0.730052,
		0.630464, -0.610854, -0.478927,
		0.769701, 0.412200, 0.487496,
		35.032963, 36.992062, 31.204502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886932, 36.131439, 31.032280>,  <34.494171, 36.703522, 30.863256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886932, 36.131439, 31.032280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.013302, 36.431545, 31.264587>,  <35.089123, 36.611610, 31.403973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.013302, 36.431545, 31.264587>,  <34.886932, 36.131439, 31.032280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013302, 36.431545, 31.264587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024713, -0.605404, 0.795535,
		0.948462, -0.265683, -0.172721,
		0.315926, 0.750266, 0.580768,
		35.108078, 36.656624, 31.438818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439167, 35.792854, 31.357056>,  <34.886932, 36.131439, 31.032280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439167, 35.792854, 31.357056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338741, 36.119663, 31.564690>,  <35.278484, 36.315746, 31.689270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338741, 36.119663, 31.564690>,  <35.439167, 35.792854, 31.357056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338741, 36.119663, 31.564690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060222, -0.522036, 0.850795,
		0.966096, 0.244863, 0.081862,
		-0.251063, 0.817019, 0.519083,
		35.263424, 36.364769, 31.720415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899994, 35.764061, 31.878750>,  <35.439167, 35.792854, 31.357056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899994, 35.764061, 31.878750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596214, 35.992813, 32.002808>,  <35.413944, 36.130062, 32.077240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596214, 35.992813, 32.002808>,  <35.899994, 35.764061, 31.878750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596214, 35.992813, 32.002808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036481, -0.513415, 0.857364,
		0.649539, 0.639814, 0.410778,
		-0.759453, 0.571877, 0.310142,
		35.368378, 36.164375, 32.095852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093849, 35.907207, 32.550129>,  <35.899994, 35.764061, 31.878750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093849, 35.907207, 32.550129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.706146, 36.003990, 32.532257>,  <35.473526, 36.062061, 32.521534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.706146, 36.003990, 32.532257>,  <36.093849, 35.907207, 32.550129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706146, 36.003990, 32.532257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129038, -0.345258, 0.929595,
		0.209500, 0.906781, 0.365865,
		-0.969257, 0.241960, -0.044677,
		35.415371, 36.076580, 32.518852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890129, 36.203091, 33.167664>,  <36.093849, 35.907207, 32.550129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890129, 36.203091, 33.167664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.533401, 36.073635, 33.041225>,  <35.319366, 35.995960, 32.965363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.533401, 36.073635, 33.041225>,  <35.890129, 36.203091, 33.167664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533401, 36.073635, 33.041225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186079, -0.374439, 0.908389,
		-0.412349, 0.868937, 0.273709,
		-0.891820, -0.323642, -0.316091,
		35.265854, 35.976543, 32.946400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619579, 36.154312, 33.809086>,  <35.890129, 36.203091, 33.167664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619579, 36.154312, 33.809086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348072, 35.962826, 33.586338>,  <35.185165, 35.847935, 33.452690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348072, 35.962826, 33.586338>,  <35.619579, 36.154312, 33.809086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348072, 35.962826, 33.586338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445206, -0.334798, 0.830483,
		-0.584002, 0.811629, 0.014124,
		-0.678773, -0.478716, -0.556865,
		35.144440, 35.819210, 33.419277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917873, 36.290203, 34.075844>,  <35.619579, 36.154312, 33.809086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917873, 36.290203, 34.075844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865925, 35.943863, 33.882580>,  <34.834755, 35.736061, 33.766621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865925, 35.943863, 33.882580>,  <34.917873, 36.290203, 34.075844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865925, 35.943863, 33.882580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666651, -0.284456, 0.688957,
		-0.733968, 0.411577, -0.540273,
		-0.129875, -0.865846, -0.483159,
		34.826962, 35.684109, 33.737633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187222, 36.224747, 34.002556>,  <34.917873, 36.290203, 34.075844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187222, 36.224747, 34.002556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.356636, 35.863464, 33.974743>,  <34.458286, 35.646694, 33.958057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.356636, 35.863464, 33.974743>,  <34.187222, 36.224747, 34.002556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356636, 35.863464, 33.974743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595205, -0.335326, 0.730265,
		-0.682895, -0.267910, -0.679616,
		0.423539, -0.903206, -0.069531,
		34.483696, 35.592503, 33.953884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646278, 35.809086, 34.132881>,  <34.187222, 36.224747, 34.002556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646278, 35.809086, 34.132881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.934235, 35.533958, 34.170097>,  <34.107010, 35.368881, 34.192425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.934235, 35.533958, 34.170097>,  <33.646278, 35.809086, 34.132881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934235, 35.533958, 34.170097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596138, -0.544068, 0.590432,
		-0.355493, -0.480511, -0.801707,
		0.719892, -0.687822, 0.093039,
		34.150204, 35.327610, 34.198009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287014, 35.145561, 33.963261>,  <33.646278, 35.809086, 34.132881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287014, 35.145561, 33.963261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612179, 35.068748, 34.183186>,  <33.807278, 35.022659, 34.315140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612179, 35.068748, 34.183186>,  <33.287014, 35.145561, 33.963261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612179, 35.068748, 34.183186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569599, -0.458904, 0.681883,
		0.121367, -0.867485, -0.482431,
		0.812912, -0.192034, 0.549814,
		33.856052, 35.011139, 34.348129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233730, 34.461407, 34.098770>,  <33.287014, 35.145561, 33.963261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233730, 34.461407, 34.098770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.462261, 34.616325, 34.388206>,  <33.599380, 34.709274, 34.561871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.462261, 34.616325, 34.388206>,  <33.233730, 34.461407, 34.098770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462261, 34.616325, 34.388206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533836, -0.494297, 0.686068,
		0.623379, -0.778251, -0.075656,
		0.571330, 0.387292, 0.723593,
		33.633659, 34.732513, 34.605286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369228, 33.893456, 34.597126>,  <33.233730, 34.461407, 34.098770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369228, 33.893456, 34.597126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386040, 34.243839, 34.789349>,  <33.396126, 34.454067, 34.904682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386040, 34.243839, 34.789349>,  <33.369228, 33.893456, 34.597126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386040, 34.243839, 34.789349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679745, -0.327439, 0.656301,
		0.732244, -0.354240, 0.581664,
		0.042028, 0.875955, 0.480558,
		33.398647, 34.506626, 34.933517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049065, 33.665668, 35.147667>,  <33.369228, 33.893456, 34.597126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049065, 33.665668, 35.147667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083523, 34.060005, 35.205204>,  <33.104198, 34.296608, 35.239727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083523, 34.060005, 35.205204>,  <33.049065, 33.665668, 35.147667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083523, 34.060005, 35.205204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588690, -0.066114, 0.805651,
		0.803756, -0.154079, 0.574661,
		0.086141, 0.985844, 0.143844,
		33.109364, 34.355759, 35.248356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396194, 33.870983, 35.788197>,  <33.049065, 33.665668, 35.147667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396194, 33.870983, 35.788197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156116, 34.181129, 35.709625>,  <33.012070, 34.367218, 35.662483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156116, 34.181129, 35.709625>,  <33.396194, 33.870983, 35.788197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156116, 34.181129, 35.709625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577781, -0.250458, 0.776814,
		0.553116, 0.579728, 0.598312,
		-0.600193, 0.775362, -0.196424,
		32.976059, 34.413738, 35.650700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354179, 34.241009, 36.351017>,  <33.396194, 33.870983, 35.788197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354179, 34.241009, 36.351017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.028980, 34.346195, 36.143219>,  <32.833858, 34.409309, 36.018539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.028980, 34.346195, 36.143219>,  <33.354179, 34.241009, 36.351017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028980, 34.346195, 36.143219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554361, -0.076711, 0.828733,
		0.178082, 0.961750, 0.208147,
		-0.813001, 0.262971, -0.519496,
		32.785080, 34.425087, 35.987370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954994, 34.629051, 36.892086>,  <33.354179, 34.241009, 36.351017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954994, 34.629051, 36.892086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.690952, 34.562450, 36.599091>,  <32.532528, 34.522491, 36.423294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.690952, 34.562450, 36.599091>,  <32.954994, 34.629051, 36.892086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690952, 34.562450, 36.599091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720412, -0.135870, 0.680107,
		-0.212760, 0.976636, -0.030259,
		-0.660105, -0.166499, -0.732488,
		32.492920, 34.512501, 36.379345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327175, 35.157669, 36.904568>,  <32.954994, 34.629051, 36.892086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327175, 35.157669, 36.904568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212841, 34.812721, 36.737415>,  <32.144241, 34.605755, 36.637123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212841, 34.812721, 36.737415>,  <32.327175, 35.157669, 36.904568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212841, 34.812721, 36.737415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750538, -0.069670, 0.657144,
		-0.595812, 0.501469, -0.627324,
		-0.285832, -0.862366, -0.417882,
		32.127090, 34.554012, 36.612049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621885, 35.222237, 37.013252>,  <32.327175, 35.157669, 36.904568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621885, 35.222237, 37.013252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.692261, 34.838562, 36.924706>,  <31.734486, 34.608356, 36.871578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.692261, 34.838562, 36.924706>,  <31.621885, 35.222237, 37.013252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692261, 34.838562, 36.924706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621380, -0.282624, 0.730760,
		-0.763500, 0.008982, -0.645746,
		0.175939, -0.959189, -0.221365,
		31.745043, 34.550804, 36.858295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956259, 34.944817, 37.037231>,  <31.621885, 35.222237, 37.013252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956259, 34.944817, 37.037231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.210083, 34.640305, 37.090572>,  <31.362377, 34.457596, 37.122578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.210083, 34.640305, 37.090572>,  <30.956259, 34.944817, 37.037231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210083, 34.640305, 37.090572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647270, -0.429178, 0.629959,
		-0.422346, -0.486060, -0.765094,
		0.634559, -0.761284, 0.133350,
		31.400452, 34.411919, 37.130577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554142, 34.380924, 37.066582>,  <30.956259, 34.944817, 37.037231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554142, 34.380924, 37.066582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.892403, 34.273415, 37.251030>,  <31.095360, 34.208908, 37.361698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.892403, 34.273415, 37.251030>,  <30.554142, 34.380924, 37.066582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892403, 34.273415, 37.251030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533225, -0.463209, 0.707890,
		0.023330, -0.844509, -0.535033,
		0.845652, -0.268778, 0.461120,
		31.146099, 34.192780, 37.389366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445578, 33.627762, 37.062523>,  <30.554142, 34.380924, 37.066582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445578, 33.627762, 37.062523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.710159, 33.738567, 37.341305>,  <30.868908, 33.805050, 37.508572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.710159, 33.738567, 37.341305>,  <30.445578, 33.627762, 37.062523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710159, 33.738567, 37.341305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591351, -0.378925, 0.711843,
		0.461285, -0.882993, -0.086827,
		0.661453, 0.277018, 0.696951,
		30.908596, 33.821674, 37.550388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021690, 33.011341, 36.652534>,  <30.445578, 33.627762, 37.062523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021690, 33.011341, 36.652534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.651354, 33.124092, 36.551849>,  <29.429152, 33.191742, 36.491436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.651354, 33.124092, 36.551849>,  <30.021690, 33.011341, 36.652534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651354, 33.124092, 36.551849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335718, 0.307645, -0.890308,
		-0.173520, -0.908790, -0.379462,
		-0.925842, 0.281879, -0.251714,
		29.373602, 33.208656, 36.476334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952765, 32.912865, 35.989033>,  <30.021690, 33.011341, 36.652534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952765, 32.912865, 35.989033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.610462, 33.118034, 36.016151>,  <29.405081, 33.241135, 36.032421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.610462, 33.118034, 36.016151>,  <29.952765, 32.912865, 35.989033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610462, 33.118034, 36.016151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112134, 0.311795, -0.943510,
		-0.505083, -0.799811, -0.324335,
		-0.855755, 0.512920, 0.067796,
		29.353735, 33.271912, 36.036491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383446, 32.674217, 35.468987>,  <29.952765, 32.912865, 35.989033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383446, 32.674217, 35.468987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.327827, 33.060707, 35.555775>,  <29.294456, 33.292603, 35.607849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.327827, 33.060707, 35.555775>,  <29.383446, 32.674217, 35.468987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327827, 33.060707, 35.555775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132011, 0.235232, -0.962932,
		-0.981448, -0.105248, -0.160260,
		-0.139045, 0.966224, 0.216974,
		29.286114, 33.350574, 35.620869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389578, 32.965599, 34.798138>,  <29.383446, 32.674217, 35.468987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389578, 32.965599, 34.798138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.395731, 33.302593, 35.013535>,  <29.399422, 33.504791, 35.142773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.395731, 33.302593, 35.013535>,  <29.389578, 32.965599, 34.798138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395731, 33.302593, 35.013535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002218, 0.538588, -0.842567,
		-0.999879, 0.011765, 0.010152,
		0.015381, 0.842487, 0.538496,
		29.400345, 33.555340, 35.175083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838291, 33.372974, 34.551296>,  <29.389578, 32.965599, 34.798138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838291, 33.372974, 34.551296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.117039, 33.608944, 34.714447>,  <29.284286, 33.750526, 34.812336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.117039, 33.608944, 34.714447>,  <28.838291, 33.372974, 34.551296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117039, 33.608944, 34.714447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114393, 0.470003, -0.875221,
		-0.708017, 0.656573, 0.260047,
		0.696869, 0.589924, 0.407877,
		29.326099, 33.785919, 34.836811>
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
