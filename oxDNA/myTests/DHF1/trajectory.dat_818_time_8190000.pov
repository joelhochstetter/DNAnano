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
	<2.262348, 2.000096, 3.064221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.115772, 2.344017, 2.921974>,  <2.027827, 2.550370, 2.836626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.115772, 2.344017, 2.921974>,  <2.262348, 2.000096, 3.064221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.115772, 2.344017, 2.921974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565919, -0.097421, -0.818685,
		-0.738551, -0.501248, -0.450880,
		-0.366439, 0.859802, -0.355616,
		2.005841, 2.601958, 2.815289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.916955, 1.948005, 2.375767>,  <2.262348, 2.000096, 3.064221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.916955, 1.948005, 2.375767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.117733, 2.291534, 2.416697>,  <2.238200, 2.497652, 2.441254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.117733, 2.291534, 2.416697>,  <1.916955, 1.948005, 2.375767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.117733, 2.291534, 2.416697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394748, -0.122217, -0.910625,
		-0.769561, 0.497477, -0.400365,
		0.501946, 0.858824, 0.102324,
		2.268317, 2.549182, 2.447394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.724472, 2.422304, 1.864242>,  <1.916955, 1.948005, 2.375767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.724472, 2.422304, 1.864242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.100418, 2.508904, 1.969906>,  <2.325986, 2.560863, 2.033304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.100418, 2.508904, 1.969906>,  <1.724472, 2.422304, 1.864242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.100418, 2.508904, 1.969906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295793, -0.129275, -0.946464,
		-0.170759, 0.967686, -0.185540,
		0.939866, 0.216499, 0.264160,
		2.382378, 2.573853, 2.049154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.973701, 2.999213, 1.590147>,  <1.724472, 2.422304, 1.864242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.973701, 2.999213, 1.590147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.286621, 2.752953, 1.628050>,  <2.474373, 2.605196, 1.650791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.286621, 2.752953, 1.628050>,  <1.973701, 2.999213, 1.590147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.286621, 2.752953, 1.628050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167204, 0.061009, -0.984033,
		0.600041, 0.785653, 0.150667,
		0.782300, -0.615652, 0.094756,
		2.521311, 2.568257, 1.656477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.649734, 3.370987, 1.272983>,  <1.973701, 2.999213, 1.590147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.649734, 3.370987, 1.272983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.734856, 2.980988, 1.298571>,  <2.785928, 2.746988, 1.313923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.734856, 2.980988, 1.298571>,  <2.649734, 3.370987, 1.272983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.734856, 2.980988, 1.298571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261017, -0.006363, -0.965313,
		0.941586, 0.222119, 0.253137,
		0.212804, -0.974999, 0.063968,
		2.798697, 2.688488, 1.317761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.277116, 3.326749, 1.031415>,  <2.649734, 3.370987, 1.272983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.277116, 3.326749, 1.031415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.125790, 2.957298, 1.006792>,  <3.034994, 2.735628, 0.992019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.125790, 2.957298, 1.006792>,  <3.277116, 3.326749, 1.031415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.125790, 2.957298, 1.006792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329514, -0.072228, -0.941384,
		0.865042, -0.376424, 0.331674,
		-0.378315, -0.923628, -0.061556,
		3.012295, 2.680210, 0.988325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.815272, 3.016665, 0.708410>,  <3.277116, 3.326749, 1.031415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.815272, 3.016665, 0.708410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.485088, 2.796211, 0.659636>,  <3.286978, 2.663939, 0.630371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.485088, 2.796211, 0.659636>,  <3.815272, 3.016665, 0.708410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.485088, 2.796211, 0.659636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252876, -0.167938, -0.952812,
		0.504650, -0.817342, 0.277995,
		-0.825459, -0.551135, -0.121937,
		3.237451, 2.630871, 0.623055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.975319, 2.373316, 0.401635>,  <3.815272, 3.016665, 0.708410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.975319, 2.373316, 0.401635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.588982, 2.426933, 0.312929>,  <3.357179, 2.459104, 0.259706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.588982, 2.426933, 0.312929>,  <3.975319, 2.373316, 0.401635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.588982, 2.426933, 0.312929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223518, -0.002013, -0.974698,
		-0.131097, -0.990974, -0.028016,
		-0.965843, 0.134042, -0.221765,
		3.299229, 2.467146, 0.246400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.506202, 3.117158, -0.774249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.334824, 2.766998, -0.863790>,  <3.231997, 2.556902, -0.917514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.334824, 2.766998, -0.863790>,  <3.506202, 3.117158, -0.774249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.334824, 2.766998, -0.863790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506213, 0.027336, 0.861975,
		-0.748453, 0.482627, -0.454850,
		-0.428446, -0.875399, -0.223852,
		3.206290, 2.504379, -0.930945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.783180, 3.140700, -0.861474>,  <3.506202, 3.117158, -0.774249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.783180, 3.140700, -0.861474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.897942, 2.782913, -0.724293>,  <2.966798, 2.568241, -0.641984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.897942, 2.782913, -0.724293>,  <2.783180, 3.140700, -0.861474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.897942, 2.782913, -0.724293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361611, 0.230396, 0.903413,
		-0.887088, -0.383207, -0.257347,
		0.286903, -0.894466, 0.342953,
		2.984013, 2.514573, -0.621407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.365407, 3.001404, -0.200305>,  <2.783180, 3.140700, -0.861474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.365407, 3.001404, -0.200305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.624702, 2.697205, -0.215416>,  <2.780280, 2.514685, -0.224483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.624702, 2.697205, -0.215416>,  <2.365407, 3.001404, -0.200305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.624702, 2.697205, -0.215416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138976, -0.166950, 0.976122,
		-0.748647, -0.627510, -0.213914,
		0.648239, -0.760499, -0.037778,
		2.819174, 2.469055, -0.226749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.990016, 2.426334, 0.047382>,  <2.365407, 3.001404, -0.200305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.990016, 2.426334, 0.047382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.382568, 2.416443, 0.123571>,  <2.618100, 2.410508, 0.169285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.382568, 2.416443, 0.123571>,  <1.990016, 2.426334, 0.047382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.382568, 2.416443, 0.123571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191215, -0.219293, 0.956738,
		0.018113, -0.975346, -0.219938,
		0.981381, -0.024726, 0.190473,
		2.676983, 2.409025, 0.180713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.120710, 1.890705, 0.444140>,  <1.990016, 2.426334, 0.047382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.120710, 1.890705, 0.444140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.452538, 2.105225, 0.506365>,  <2.651634, 2.233936, 0.543699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.452538, 2.105225, 0.506365>,  <2.120710, 1.890705, 0.444140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.452538, 2.105225, 0.506365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077161, -0.165816, 0.983133,
		0.553048, -0.827580, -0.096175,
		0.829569, 0.536299, 0.155561,
		2.701408, 2.266114, 0.553033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.582271, 1.447442, 0.807986>,  <2.120710, 1.890705, 0.444140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.582271, 1.447442, 0.807986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.700325, 1.826614, 0.855852>,  <2.771158, 2.054118, 0.884572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.700325, 1.826614, 0.855852>,  <2.582271, 1.447442, 0.807986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.700325, 1.826614, 0.855852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026852, -0.133425, 0.990695,
		0.955078, -0.289176, -0.064832,
		0.295136, 0.947932, 0.119666,
		2.788866, 2.110994, 0.891752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.218049, 1.442711, 1.254386>,  <2.582271, 1.447442, 0.807986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.218049, 1.442711, 1.254386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.061775, 1.808990, 1.292038>,  <2.968011, 2.028758, 1.314629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.061775, 1.808990, 1.292038>,  <3.218049, 1.442711, 1.254386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.061775, 1.808990, 1.292038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107207, -0.146822, 0.983336,
		0.914260, 0.374083, 0.155530,
		-0.390685, 0.915699, 0.094130,
		2.944570, 2.083700, 1.320277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.483454, 1.644695, 1.827918>,  <3.218049, 1.442711, 1.254386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.483454, 1.644695, 1.827918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.161873, 1.880310, 1.795187>,  <2.968924, 2.021679, 1.775548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.161873, 1.880310, 1.795187>,  <3.483454, 1.644695, 1.827918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.161873, 1.880310, 1.795187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066561, 0.047604, 0.996646,
		0.590957, 0.806703, 0.000936,
		-0.803953, 0.589037, -0.081827,
		2.920687, 2.057021, 1.770639>
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
