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
	<2.797957, 2.434579, 4.541559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.711449, 2.087029, 4.363444>,  <2.659544, 1.878498, 4.256576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.711449, 2.087029, 4.363444>,  <2.797957, 2.434579, 4.541559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.711449, 2.087029, 4.363444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954917, 0.283248, -0.088901,
		0.203370, 0.405984, -0.890964,
		-0.216271, -0.868877, -0.445286,
		2.646567, 1.826365, 4.229858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.231425, 2.638186, 3.958993>,  <2.797957, 2.434579, 4.541559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.231425, 2.638186, 3.958993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.242287, 2.250671, 4.057556>,  <2.248804, 2.018163, 4.116693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.242287, 2.250671, 4.057556>,  <2.231425, 2.638186, 3.958993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.242287, 2.250671, 4.057556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999019, -0.034925, -0.027215,
		0.034972, -0.245426, -0.968784,
		0.027155, -0.968786, 0.246407,
		2.250433, 1.960036, 4.131478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.898096, 3.138849, 4.307918>,  <2.231425, 2.638186, 3.958993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.898096, 3.138849, 4.307918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.728790, 3.487938, 4.405244>,  <1.627207, 3.697392, 4.463640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.728790, 3.487938, 4.405244>,  <1.898096, 3.138849, 4.307918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.728790, 3.487938, 4.405244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621060, 0.475017, -0.623412,
		-0.659645, -0.112754, -0.743071,
		-0.423264, 0.872723, 0.243316,
		1.601811, 3.749755, 4.478239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.656142, 3.515906, 3.672618>,  <1.898096, 3.138849, 4.307918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.656142, 3.515906, 3.672618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.685211, 3.794289, 3.958376>,  <1.702653, 3.961318, 4.129832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.685211, 3.794289, 3.958376>,  <1.656142, 3.515906, 3.672618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.685211, 3.794289, 3.958376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682711, 0.487458, -0.544326,
		-0.727066, 0.527285, -0.439712,
		0.072674, 0.695957, 0.714397,
		1.707013, 4.003076, 4.172696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.592095, 4.165878, 3.360025>,  <1.656142, 3.515906, 3.672618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.592095, 4.165878, 3.360025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.755951, 4.294189, 3.701620>,  <1.854265, 4.371177, 3.906577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.755951, 4.294189, 3.701620>,  <1.592095, 4.165878, 3.360025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.755951, 4.294189, 3.701620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644095, 0.561229, -0.519772,
		-0.646015, 0.762969, 0.023290,
		0.409641, 0.320779, 0.853988,
		1.878843, 4.390423, 3.957816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.595350, 4.974073, 3.336936>,  <1.592095, 4.165878, 3.360025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.595350, 4.974073, 3.336936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.884705, 4.860939, 3.588877>,  <2.058318, 4.793059, 3.740041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.884705, 4.860939, 3.588877>,  <1.595350, 4.974073, 3.336936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.884705, 4.860939, 3.588877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617584, 0.672940, -0.407114,
		-0.308707, 0.683489, 0.661470,
		0.723388, -0.282834, 0.629853,
		2.101721, 4.776089, 3.777833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.836014, 5.571925, 3.570633>,  <1.595350, 4.974073, 3.336936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.836014, 5.571925, 3.570633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.133720, 5.319168, 3.657149>,  <2.312344, 5.167514, 3.709058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.133720, 5.319168, 3.657149>,  <1.836014, 5.571925, 3.570633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.133720, 5.319168, 3.657149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658442, 0.639944, -0.396138,
		0.111904, 0.437246, 0.892353,
		0.744266, -0.631892, 0.216289,
		2.357000, 5.129601, 3.722036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.358186, 5.972697, 3.884462>,  <1.836014, 5.571925, 3.570633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.358186, 5.972697, 3.884462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.528687, 5.633629, 3.758121>,  <2.630987, 5.430188, 3.682317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.528687, 5.633629, 3.758121>,  <2.358186, 5.972697, 3.884462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.528687, 5.633629, 3.758121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743763, 0.527150, -0.411011,
		0.514903, -0.059725, 0.855165,
		0.426253, -0.847671, -0.315852,
		2.656562, 5.379328, 3.663365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.834138, 4.976607, 2.092268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.073021, 5.297012, 2.108862>,  <2.216351, 5.489256, 2.118819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.073021, 5.297012, 2.108862>,  <1.834138, 4.976607, 2.092268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.073021, 5.297012, 2.108862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371262, -0.321907, 0.870942,
		0.710991, -0.504730, -0.489632,
		0.597206, 0.801014, 0.041486,
		2.252183, 5.537316, 2.121308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.683918, 4.853737, 2.132892>,  <1.834138, 4.976607, 2.092268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.683918, 4.853737, 2.132892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.551010, 5.189461, 2.305012>,  <2.471265, 5.390895, 2.408283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.551010, 5.189461, 2.305012>,  <2.683918, 4.853737, 2.132892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.551010, 5.189461, 2.305012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186610, -0.388701, 0.902269,
		0.924540, 0.380095, -0.027470,
		-0.332270, 0.839309, 0.430299,
		2.451329, 5.441254, 2.434101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.447258, 4.666719, 2.784872>,  <2.683918, 4.853737, 2.132892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.447258, 4.666719, 2.784872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.731270, 4.870262, 2.979571>,  <2.901677, 4.992388, 3.096390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.731270, 4.870262, 2.979571>,  <2.447258, 4.666719, 2.784872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.731270, 4.870262, 2.979571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361927, -0.329228, 0.872134,
		0.604043, -0.795407, -0.049592,
		0.710029, 0.508857, 0.486747,
		2.944278, 5.022920, 3.125595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.966064, 4.252690, 3.117178>,  <2.447258, 4.666719, 2.784872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.966064, 4.252690, 3.117178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.899338, 4.590317, 3.321030>,  <2.859302, 4.792893, 3.443341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.899338, 4.590317, 3.321030>,  <2.966064, 4.252690, 3.117178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.899338, 4.590317, 3.321030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409308, -0.529513, 0.743023,
		0.897017, -0.084647, 0.433815,
		-0.166816, 0.844068, 0.509629,
		2.849293, 4.843537, 3.473919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.117634, 4.148368, 3.941524>,  <2.966064, 4.252690, 3.117178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.117634, 4.148368, 3.941524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.880882, 4.463951, 3.875523>,  <2.738831, 4.653301, 3.835922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.880882, 4.463951, 3.875523>,  <3.117634, 4.148368, 3.941524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.880882, 4.463951, 3.875523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639337, -0.334871, 0.692177,
		0.490844, 0.515177, 0.702613,
		-0.591879, 0.788957, -0.165002,
		2.703319, 4.700638, 3.826022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.019984, 4.576712, 4.682315>,  <3.117634, 4.148368, 3.941524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.019984, 4.576712, 4.682315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.734070, 4.634468, 4.408604>,  <2.562521, 4.669122, 4.244378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.734070, 4.634468, 4.408604>,  <3.019984, 4.576712, 4.682315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.734070, 4.634468, 4.408604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668924, -0.426601, 0.608730,
		-0.204018, 0.892840, 0.401514,
		-0.714785, 0.144390, -0.684276,
		2.519634, 4.677785, 4.203321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.429753, 4.802088, 5.029253>,  <3.019984, 4.576712, 4.682315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.429753, 4.802088, 5.029253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.254791, 4.656570, 4.700296>,  <2.149815, 4.569260, 4.502922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.254791, 4.656570, 4.700296>,  <2.429753, 4.802088, 5.029253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.254791, 4.656570, 4.700296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756022, -0.346433, 0.555351,
		-0.486938, 0.864660, -0.123506,
		-0.437403, -0.363795, -0.822394,
		2.123570, 4.547432, 4.453578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.715369, 4.963192, 5.057270>,  <2.429753, 4.802088, 5.029253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.715369, 4.963192, 5.057270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.746864, 4.653114, 4.806552>,  <1.765761, 4.467067, 4.656121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.746864, 4.653114, 4.806552>,  <1.715369, 4.963192, 5.057270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.746864, 4.653114, 4.806552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752692, -0.458488, 0.472486,
		-0.653647, 0.434581, -0.619584,
		0.078738, -0.775195, -0.626795,
		1.770486, 4.420556, 4.618514>
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
