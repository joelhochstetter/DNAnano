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
	<24.563860, 34.592617, 35.005165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533445, 34.957417, 35.166397>,  <24.515198, 35.176296, 35.263134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533445, 34.957417, 35.166397>,  <24.563860, 34.592617, 35.005165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.533445, 34.957417, 35.166397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520590, -0.308464, 0.796138,
		0.850414, 0.270372, -0.451325,
		-0.076036, 0.912003, 0.403075,
		24.510635, 35.231018, 35.287319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.193386, 35.022560, 35.093693>,  <24.563860, 34.592617, 35.005165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.193386, 35.022560, 35.093693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.946249, 35.148952, 35.381699>,  <24.797968, 35.224789, 35.554504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.946249, 35.148952, 35.381699>,  <25.193386, 35.022560, 35.093693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.946249, 35.148952, 35.381699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724113, -0.128272, 0.677648,
		0.306484, 0.940053, -0.149557,
		-0.617841, 0.315985, 0.720018,
		24.760897, 35.243748, 35.597706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.511829, 35.534542, 35.482620>,  <25.193386, 35.022560, 35.093693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.511829, 35.534542, 35.482620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219145, 35.376297, 35.704643>,  <25.043533, 35.281349, 35.837856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219145, 35.376297, 35.704643>,  <25.511829, 35.534542, 35.482620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219145, 35.376297, 35.704643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655702, -0.186150, 0.731712,
		-0.186150, 0.899355, 0.395613,
		-0.731712, -0.395613, 0.555057,
		24.999632, 35.257614, 35.871159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545149, 35.809483, 36.112984>,  <25.511829, 35.534542, 35.482620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545149, 35.809483, 36.112984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379051, 35.454742, 36.194042>,  <25.279392, 35.241898, 36.242676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379051, 35.454742, 36.194042>,  <25.545149, 35.809483, 36.112984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379051, 35.454742, 36.194042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564985, -0.076822, 0.821517,
		-0.712997, 0.455620, 0.532959,
		-0.415243, -0.886853, 0.202645,
		25.254478, 35.188686, 36.254837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791000, 35.669788, 36.837078>,  <25.545149, 35.809483, 36.112984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791000, 35.669788, 36.837078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663364, 35.309677, 36.718636>,  <25.586782, 35.093609, 36.647572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663364, 35.309677, 36.718636>,  <25.791000, 35.669788, 36.837078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663364, 35.309677, 36.718636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323984, -0.397232, 0.858628,
		-0.890628, 0.178045, 0.418428,
		-0.319088, -0.900281, -0.296102,
		25.567638, 35.039593, 36.629807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270758, 35.426235, 37.283718>,  <25.791000, 35.669788, 36.837078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.270758, 35.426235, 37.283718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446232, 35.111477, 37.110119>,  <25.551517, 34.922623, 37.005959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446232, 35.111477, 37.110119>,  <25.270758, 35.426235, 37.283718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446232, 35.111477, 37.110119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305424, -0.323639, 0.895530,
		-0.845145, -0.525409, 0.098360,
		0.438687, -0.786895, -0.433994,
		25.577839, 34.875408, 36.979919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923288, 34.752995, 37.490620>,  <25.270758, 35.426235, 37.283718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.923288, 34.752995, 37.490620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302542, 34.683784, 37.383957>,  <25.530094, 34.642258, 37.319958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302542, 34.683784, 37.383957>,  <24.923288, 34.752995, 37.490620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302542, 34.683784, 37.383957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176558, -0.410934, 0.894405,
		-0.264330, -0.895096, -0.359072,
		0.948134, -0.173021, -0.266659,
		25.586981, 34.631878, 37.303959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066916, 34.199951, 37.785397>,  <24.923288, 34.752995, 37.490620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066916, 34.199951, 37.785397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443277, 34.327042, 37.738503>,  <25.669094, 34.403297, 37.710365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443277, 34.327042, 37.738503>,  <25.066916, 34.199951, 37.785397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443277, 34.327042, 37.738503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248453, -0.412350, 0.876492,
		0.230146, -0.853824, -0.466924,
		0.940906, 0.317730, -0.117234,
		25.725550, 34.422359, 37.703331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524536, 33.537388, 37.875481>,  <25.066916, 34.199951, 37.785397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524536, 33.537388, 37.875481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745440, 33.862976, 37.947544>,  <25.877981, 34.058331, 37.990784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745440, 33.862976, 37.947544>,  <25.524536, 33.537388, 37.875481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745440, 33.862976, 37.947544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351402, -0.423253, 0.835089,
		0.755994, -0.397875, -0.519777,
		0.552258, 0.813973, 0.180163,
		25.911118, 34.107166, 38.001595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201929, 33.293686, 38.061771>,  <25.524536, 33.537388, 37.875481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201929, 33.293686, 38.061771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216219, 33.672615, 38.189091>,  <26.224792, 33.899971, 38.265480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216219, 33.672615, 38.189091>,  <26.201929, 33.293686, 38.061771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216219, 33.672615, 38.189091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423427, -0.302845, 0.853812,
		0.905226, 0.104272, -0.411939,
		0.035725, 0.947318, 0.318295,
		26.226936, 33.956810, 38.284580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837065, 33.405556, 38.210842>,  <26.201929, 33.293686, 38.061771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837065, 33.405556, 38.210842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647697, 33.673882, 38.439190>,  <26.534077, 33.834877, 38.576199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647697, 33.673882, 38.439190>,  <26.837065, 33.405556, 38.210842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647697, 33.673882, 38.439190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516798, -0.313291, 0.796723,
		0.713297, 0.672207, -0.198355,
		-0.473420, 0.670810, 0.570865,
		26.505671, 33.875126, 38.610451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429529, 33.697102, 38.623882>,  <26.837065, 33.405556, 38.210842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429529, 33.697102, 38.623882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089390, 33.789639, 38.812935>,  <26.885305, 33.845161, 38.926369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089390, 33.789639, 38.812935>,  <27.429529, 33.697102, 38.623882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089390, 33.789639, 38.812935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471444, -0.064069, 0.879566,
		0.233762, 0.970760, -0.054584,
		-0.850350, 0.231343, 0.472636,
		26.834284, 33.859043, 38.954727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755066, 33.916584, 39.162132>,  <27.429529, 33.697102, 38.623882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755066, 33.916584, 39.162132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381229, 33.886024, 39.301102>,  <27.156927, 33.867687, 39.384483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381229, 33.886024, 39.301102>,  <27.755066, 33.916584, 39.162132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381229, 33.886024, 39.301102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328238, 0.191257, 0.925030,
		-0.137123, 0.978562, -0.153669,
		-0.934589, -0.076402, 0.347427,
		27.100853, 33.863102, 39.405331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640839, 34.440624, 39.607807>,  <27.755066, 33.916584, 39.162132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640839, 34.440624, 39.607807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393047, 34.141884, 39.704521>,  <27.244373, 33.962639, 39.762550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393047, 34.141884, 39.704521>,  <27.640839, 34.440624, 39.607807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393047, 34.141884, 39.704521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391869, -0.027324, 0.919615,
		-0.680210, 0.664429, 0.309595,
		-0.619478, -0.746852, 0.241783,
		27.207203, 33.917828, 39.777058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427784, 34.530750, 40.347820>,  <27.640839, 34.440624, 39.607807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427784, 34.530750, 40.347820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296711, 34.154724, 40.310085>,  <27.218067, 33.929108, 40.287445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296711, 34.154724, 40.310085>,  <27.427784, 34.530750, 40.347820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296711, 34.154724, 40.310085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372094, -0.220192, 0.901699,
		-0.868429, 0.260368, 0.421946,
		-0.327683, -0.940066, -0.094339,
		27.198406, 33.872704, 40.281784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808338, 34.363129, 40.733192>,  <27.427784, 34.530750, 40.347820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808338, 34.363129, 40.733192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023312, 34.028469, 40.690887>,  <27.152296, 33.827675, 40.665504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023312, 34.028469, 40.690887>,  <26.808338, 34.363129, 40.733192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023312, 34.028469, 40.690887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078699, -0.075108, 0.994065,
		-0.839626, -0.542567, 0.025478,
		0.537433, -0.836648, -0.105762,
		27.184542, 33.777473, 40.659161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607027, 33.898933, 41.314941>,  <26.808338, 34.363129, 40.733192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607027, 33.898933, 41.314941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945957, 33.737309, 41.177090>,  <27.149315, 33.640335, 41.094379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945957, 33.737309, 41.177090>,  <26.607027, 33.898933, 41.314941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945957, 33.737309, 41.177090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291653, -0.188279, 0.937811,
		-0.443822, -0.895145, -0.041688,
		0.847326, -0.404063, -0.344634,
		27.200155, 33.616089, 41.073700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815218, 33.252693, 41.767155>,  <26.607027, 33.898933, 41.314941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815218, 33.252693, 41.767155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157339, 33.337696, 41.578140>,  <27.362612, 33.388699, 41.464729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157339, 33.337696, 41.578140>,  <26.815218, 33.252693, 41.767155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157339, 33.337696, 41.578140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517314, -0.299228, 0.801779,
		0.028991, -0.930216, -0.365867,
		0.855305, 0.212512, -0.472538,
		27.413931, 33.401451, 41.436378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255278, 32.732979, 41.950741>,  <26.815218, 33.252693, 41.767155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255278, 32.732979, 41.950741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499161, 33.030922, 41.842342>,  <27.645491, 33.209690, 41.777302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499161, 33.030922, 41.842342>,  <27.255278, 32.732979, 41.950741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499161, 33.030922, 41.842342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555229, -0.157359, 0.816676,
		0.565667, -0.648397, -0.509512,
		0.609707, 0.744862, -0.270996,
		27.682074, 33.254379, 41.761044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860075, 32.635525, 42.238720>,  <27.255278, 32.732979, 41.950741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860075, 32.635525, 42.238720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878782, 33.030258, 42.176796>,  <27.890007, 33.267097, 42.139641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878782, 33.030258, 42.176796>,  <27.860075, 32.635525, 42.238720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878782, 33.030258, 42.176796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546733, 0.104416, 0.830771,
		0.836000, -0.123492, -0.534653,
		0.046767, 0.986837, -0.154809,
		27.892813, 33.326309, 42.130352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579826, 32.720924, 42.256443>,  <27.860075, 32.635525, 42.238720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579826, 32.720924, 42.256443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393421, 33.063099, 42.346825>,  <28.281578, 33.268406, 42.401054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393421, 33.063099, 42.346825>,  <28.579826, 32.720924, 42.256443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393421, 33.063099, 42.346825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618332, 0.132218, 0.774715,
		0.632847, 0.500742, -0.590561,
		-0.466015, 0.855439, 0.225951,
		28.253616, 33.319729, 42.414612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126638, 33.105198, 42.551456>,  <28.579826, 32.720924, 42.256443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126638, 33.105198, 42.551456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823578, 33.348892, 42.645092>,  <28.641743, 33.495110, 42.701271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823578, 33.348892, 42.645092>,  <29.126638, 33.105198, 42.551456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823578, 33.348892, 42.645092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463395, 0.249581, 0.850279,
		0.459598, 0.752688, -0.471413,
		-0.757650, 0.609237, 0.234085,
		28.596283, 33.531662, 42.715317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405163, 33.692413, 42.739670>,  <29.126638, 33.105198, 42.551456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405163, 33.692413, 42.739670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037502, 33.733864, 42.891685>,  <28.816906, 33.758732, 42.982895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037502, 33.733864, 42.891685>,  <29.405163, 33.692413, 42.739670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037502, 33.733864, 42.891685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380901, 0.479695, 0.790448,
		-0.100393, 0.871295, -0.480381,
		-0.919150, 0.103622, 0.380035,
		28.761757, 33.764950, 43.005695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253954, 34.387531, 43.037334>,  <29.405163, 33.692413, 42.739670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253954, 34.387531, 43.037334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991137, 34.156067, 43.230598>,  <28.833447, 34.017189, 43.346558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991137, 34.156067, 43.230598>,  <29.253954, 34.387531, 43.037334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991137, 34.156067, 43.230598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234197, 0.452529, 0.860447,
		-0.716549, 0.678509, -0.161812,
		-0.657045, -0.578656, 0.483165,
		28.794024, 33.982471, 43.375549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881317, 34.781651, 43.489216>,  <29.253954, 34.387531, 43.037334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881317, 34.781651, 43.489216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873133, 34.417534, 43.654598>,  <28.868223, 34.199062, 43.753830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873133, 34.417534, 43.654598>,  <28.881317, 34.781651, 43.489216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873133, 34.417534, 43.654598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346031, 0.381540, 0.857141,
		-0.938000, 0.160606, 0.307184,
		-0.020459, -0.910293, 0.413459,
		28.866995, 34.144447, 43.778637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747320, 35.031433, 44.129356>,  <28.881317, 34.781651, 43.489216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747320, 35.031433, 44.129356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881798, 34.654827, 44.138477>,  <28.962484, 34.428864, 44.143951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881798, 34.654827, 44.138477>,  <28.747320, 35.031433, 44.129356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881798, 34.654827, 44.138477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574802, 0.224307, 0.786949,
		-0.746040, -0.251462, 0.616596,
		0.336195, -0.941516, 0.022801,
		28.982656, 34.372372, 44.145317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220104, 35.015503, 44.747162>,  <28.747320, 35.031433, 44.129356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220104, 35.015503, 44.747162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271914, 34.658909, 44.573509>,  <29.302999, 34.444950, 44.469318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271914, 34.658909, 44.573509>,  <29.220104, 35.015503, 44.747162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271914, 34.658909, 44.573509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728188, -0.211655, 0.651878,
		-0.673028, -0.400565, 0.621756,
		0.129522, -0.891487, -0.434136,
		29.310770, 34.391464, 44.443268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323000, 34.579071, 45.302853>,  <29.220104, 35.015503, 44.747162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323000, 34.579071, 45.302853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486353, 34.384068, 44.994164>,  <29.584366, 34.267067, 44.808949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486353, 34.384068, 44.994164>,  <29.323000, 34.579071, 45.302853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486353, 34.384068, 44.994164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774569, -0.262252, 0.575557,
		-0.482976, -0.832802, 0.270510,
		0.408383, -0.487509, -0.771724,
		29.608868, 34.237816, 44.762646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022358, 35.002281, 45.272812>,  <29.323000, 34.579071, 45.302853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022358, 35.002281, 45.272812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419825, 35.013714, 45.229340>,  <30.658304, 35.020573, 45.203255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419825, 35.013714, 45.229340>,  <30.022358, 35.002281, 45.272812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419825, 35.013714, 45.229340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091776, 0.764530, -0.638021,
		0.064855, 0.643954, 0.762311,
		0.993666, 0.028583, -0.108683,
		30.717924, 35.022289, 45.196735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241089, 35.729088, 45.348904>,  <30.022358, 35.002281, 45.272812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241089, 35.729088, 45.348904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455942, 35.518246, 45.085495>,  <30.584854, 35.391739, 44.927452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455942, 35.518246, 45.085495>,  <30.241089, 35.729088, 45.348904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455942, 35.518246, 45.085495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174726, 0.694235, -0.698218,
		0.825203, 0.490095, 0.280796,
		0.537131, -0.527110, -0.658517,
		30.617081, 35.360111, 44.887939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692352, 36.242771, 45.117561>,  <30.241089, 35.729088, 45.348904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692352, 36.242771, 45.117561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605722, 35.927601, 44.886990>,  <30.553745, 35.738499, 44.748646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605722, 35.927601, 44.886990>,  <30.692352, 36.242771, 45.117561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605722, 35.927601, 44.886990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300767, 0.615577, -0.728425,
		0.928782, 0.015615, -0.370298,
		-0.216573, -0.787922, -0.576434,
		30.540751, 35.691223, 44.714058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853142, 36.366493, 44.405159>,  <30.692352, 36.242771, 45.117561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853142, 36.366493, 44.405159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592840, 36.063915, 44.378906>,  <30.436659, 35.882370, 44.363155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592840, 36.063915, 44.378906>,  <30.853142, 36.366493, 44.405159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592840, 36.063915, 44.378906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435281, 0.442491, -0.784048,
		0.622133, -0.481653, -0.617220,
		-0.650754, -0.756447, -0.065635,
		30.397614, 35.836983, 44.359215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424450, 36.278107, 44.790817>,  <30.853142, 36.366493, 44.405159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424450, 36.278107, 44.790817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753933, 36.462574, 44.658855>,  <31.951622, 36.573254, 44.579678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753933, 36.462574, 44.658855>,  <31.424450, 36.278107, 44.790817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753933, 36.462574, 44.658855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119777, -0.710209, -0.693726,
		-0.554222, 0.531912, -0.640240,
		0.823706, 0.461164, -0.329903,
		32.001045, 36.600922, 44.559883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465466, 36.343307, 44.040352>,  <31.424450, 36.278107, 44.790817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465466, 36.343307, 44.040352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813156, 36.310474, 44.235374>,  <32.021770, 36.290775, 44.352386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813156, 36.310474, 44.235374>,  <31.465466, 36.343307, 44.040352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813156, 36.310474, 44.235374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206952, -0.835171, -0.509569,
		0.449022, 0.543830, -0.708963,
		0.869224, -0.082087, 0.487556,
		32.073925, 36.285847, 44.381641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099461, 36.503952, 43.657726>,  <31.465466, 36.343307, 44.040352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099461, 36.503952, 43.657726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122059, 36.215027, 43.933430>,  <32.135620, 36.041672, 44.098850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122059, 36.215027, 43.933430>,  <32.099461, 36.503952, 43.657726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122059, 36.215027, 43.933430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065058, -0.686230, -0.724469,
		0.996281, 0.085774, 0.008220,
		0.056500, -0.722310, 0.689258,
		32.139008, 35.998333, 44.140205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787903, 36.226860, 43.642952>,  <32.099461, 36.503952, 43.657726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787903, 36.226860, 43.642952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459976, 36.003349, 43.693024>,  <32.263222, 35.869244, 43.723068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459976, 36.003349, 43.693024>,  <32.787903, 36.226860, 43.642952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459976, 36.003349, 43.693024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042231, -0.277010, -0.959939,
		0.571071, -0.781684, 0.250694,
		-0.819814, -0.558780, 0.125181,
		32.214031, 35.835716, 43.730579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938786, 35.633083, 43.267529>,  <32.787903, 36.226860, 43.642952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938786, 35.633083, 43.267529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541828, 35.623283, 43.315773>,  <32.303654, 35.617401, 43.344719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541828, 35.623283, 43.315773>,  <32.938786, 35.633083, 43.267529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541828, 35.623283, 43.315773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106489, -0.320357, -0.941293,
		0.061704, -0.946980, 0.315312,
		-0.992397, -0.024504, 0.120611,
		32.244110, 35.615932, 43.351955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655605, 34.980804, 43.071510>,  <32.938786, 35.633083, 43.267529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655605, 34.980804, 43.071510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349140, 35.233936, 43.026752>,  <32.165260, 35.385815, 42.999897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349140, 35.233936, 43.026752>,  <32.655605, 34.980804, 43.071510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349140, 35.233936, 43.026752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116789, -0.308328, -0.944084,
		-0.631945, -0.710254, 0.310137,
		-0.766163, 0.632830, -0.111896,
		32.119289, 35.423786, 42.993183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118126, 34.597858, 42.701229>,  <32.655605, 34.980804, 43.071510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118126, 34.597858, 42.701229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967276, 34.965862, 42.658600>,  <31.876764, 35.186665, 42.633022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967276, 34.965862, 42.658600>,  <32.118126, 34.597858, 42.701229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967276, 34.965862, 42.658600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366602, -0.253959, -0.895046,
		-0.850516, -0.298478, 0.433052,
		-0.377129, 0.920009, -0.106574,
		31.854137, 35.241863, 42.626629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425768, 34.510979, 42.288300>,  <32.118126, 34.597858, 42.701229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425768, 34.510979, 42.288300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516733, 34.898293, 42.246922>,  <31.571312, 35.130680, 42.222095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516733, 34.898293, 42.246922>,  <31.425768, 34.510979, 42.288300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516733, 34.898293, 42.246922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235605, -0.048361, -0.970645,
		-0.944867, 0.245107, 0.217136,
		0.227411, 0.968289, -0.103443,
		31.584957, 35.188778, 42.215889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844761, 34.775322, 42.085209>,  <31.425768, 34.510979, 42.288300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844761, 34.775322, 42.085209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127649, 35.037193, 41.978455>,  <31.297382, 35.194317, 41.914402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127649, 35.037193, 41.978455>,  <30.844761, 34.775322, 42.085209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127649, 35.037193, 41.978455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264271, -0.105330, -0.958680,
		-0.655742, 0.748530, 0.098522,
		0.707223, 0.654683, -0.266884,
		31.339815, 35.233597, 41.898388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496237, 35.155029, 41.651005>,  <30.844761, 34.775322, 42.085209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496237, 35.155029, 41.651005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881023, 35.217236, 41.561176>,  <31.111897, 35.254559, 41.507278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881023, 35.217236, 41.561176>,  <30.496237, 35.155029, 41.651005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881023, 35.217236, 41.561176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230311, 0.019682, -0.972918,
		-0.146886, 0.987637, 0.054751,
		0.961967, 0.155518, -0.224572,
		31.169613, 35.263889, 41.493805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592653, 35.751671, 41.334358>,  <30.496237, 35.155029, 41.651005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592653, 35.751671, 41.334358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868837, 35.483551, 41.225574>,  <31.034548, 35.322678, 41.160305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868837, 35.483551, 41.225574>,  <30.592653, 35.751671, 41.334358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868837, 35.483551, 41.225574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346101, 0.024019, -0.937890,
		0.635198, 0.741703, -0.215406,
		0.690462, -0.670298, -0.271961,
		31.075975, 35.282463, 41.143986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787447, 35.939075, 40.612244>,  <30.592653, 35.751671, 41.334358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787447, 35.939075, 40.612244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980246, 35.592754, 40.666012>,  <31.095924, 35.384964, 40.698273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980246, 35.592754, 40.666012>,  <30.787447, 35.939075, 40.612244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980246, 35.592754, 40.666012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272932, -0.294152, -0.915960,
		0.832578, 0.404803, -0.378085,
		0.481998, -0.865800, 0.134421,
		31.124846, 35.333015, 40.706337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973227, 35.733677, 39.934776>,  <30.787447, 35.939075, 40.612244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973227, 35.733677, 39.934776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987816, 35.391022, 40.140625>,  <30.996569, 35.185429, 40.264133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987816, 35.391022, 40.140625>,  <30.973227, 35.733677, 39.934776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987816, 35.391022, 40.140625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354049, -0.492642, -0.794955,
		0.934516, -0.153209, -0.321259,
		0.036471, -0.856640, 0.514625,
		30.998756, 35.134029, 40.295013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291803, 35.124611, 39.494724>,  <30.973227, 35.733677, 39.934776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291803, 35.124611, 39.494724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061148, 34.980503, 39.788036>,  <30.922754, 34.894039, 39.964024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061148, 34.980503, 39.788036>,  <31.291803, 35.124611, 39.494724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061148, 34.980503, 39.788036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563924, -0.473922, -0.676305,
		0.591165, -0.803497, 0.070121,
		-0.576640, -0.360265, 0.733277,
		30.888155, 34.872425, 40.008018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088129, 34.524132, 39.241779>,  <31.291803, 35.124611, 39.494724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088129, 34.524132, 39.241779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837234, 34.581772, 39.547932>,  <30.686697, 34.616356, 39.731625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837234, 34.581772, 39.547932>,  <31.088129, 34.524132, 39.241779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837234, 34.581772, 39.547932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742645, -0.406720, -0.532031,
		0.234633, -0.902117, 0.362122,
		-0.627237, 0.144096, 0.765382,
		30.649063, 34.625000, 39.777546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797098, 33.894844, 39.272957>,  <31.088129, 34.524132, 39.241779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797098, 33.894844, 39.272957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521130, 34.126842, 39.446213>,  <30.355549, 34.266041, 39.550167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521130, 34.126842, 39.446213>,  <30.797098, 33.894844, 39.272957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521130, 34.126842, 39.446213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704748, -0.401489, -0.584925,
		-0.165352, -0.708809, 0.685747,
		-0.689920, 0.579997, 0.433145,
		30.314154, 34.300842, 39.576157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230942, 33.560219, 39.357880>,  <30.797098, 33.894844, 39.272957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230942, 33.560219, 39.357880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100136, 33.937920, 39.373150>,  <30.021652, 34.164539, 39.382313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100136, 33.937920, 39.373150>,  <30.230942, 33.560219, 39.357880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100136, 33.937920, 39.373150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640495, -0.191754, -0.743637,
		-0.694858, -0.267631, 0.667493,
		-0.327015, 0.944248, 0.038174,
		30.002031, 34.221195, 39.384602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462368, 33.533939, 39.377960>,  <30.230942, 33.560219, 39.357880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462368, 33.533939, 39.377960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512728, 33.924881, 39.309925>,  <29.542944, 34.159447, 39.269104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512728, 33.924881, 39.309925>,  <29.462368, 33.533939, 39.377960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512728, 33.924881, 39.309925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719688, -0.028020, -0.693732,
		-0.682788, 0.209747, 0.699862,
		0.125898, 0.977354, -0.170084,
		29.550497, 34.218086, 39.258900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727125, 33.833836, 39.301056>,  <29.462368, 33.533939, 39.377960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727125, 33.833836, 39.301056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990036, 34.041611, 39.082638>,  <29.147783, 34.166275, 38.951588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990036, 34.041611, 39.082638>,  <28.727125, 33.833836, 39.301056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990036, 34.041611, 39.082638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590851, -0.094610, -0.801214,
		-0.467845, 0.849252, 0.244728,
		0.657279, 0.519442, -0.546044,
		29.187220, 34.197445, 38.918823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351376, 34.346165, 38.987606>,  <28.727125, 33.833836, 39.301056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351376, 34.346165, 38.987606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679968, 34.314816, 38.761677>,  <28.877123, 34.296005, 38.626122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679968, 34.314816, 38.761677>,  <28.351376, 34.346165, 38.987606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679968, 34.314816, 38.761677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529073, -0.474253, -0.703680,
		-0.212715, 0.876892, -0.431058,
		0.821483, -0.078378, -0.564821,
		28.926413, 34.291302, 38.592232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201902, 34.643520, 38.277073>,  <28.351376, 34.346165, 38.987606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201902, 34.643520, 38.277073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504982, 34.389820, 38.215603>,  <28.686829, 34.237598, 38.178722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504982, 34.389820, 38.215603>,  <28.201902, 34.643520, 38.277073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504982, 34.389820, 38.215603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367808, -0.220516, -0.903377,
		0.539084, 0.741008, -0.400368,
		0.757698, -0.634255, -0.153672,
		28.732292, 34.199543, 38.169502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444593, 34.912041, 37.675846>,  <28.201902, 34.643520, 38.277073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444593, 34.912041, 37.675846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625202, 34.556232, 37.703796>,  <28.733568, 34.342747, 37.720566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625202, 34.556232, 37.703796>,  <28.444593, 34.912041, 37.675846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625202, 34.556232, 37.703796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317751, -0.233485, -0.918977,
		0.833764, 0.392734, -0.388069,
		0.451522, -0.889520, 0.069880,
		28.760658, 34.289375, 37.724762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867710, 34.850056, 37.047390>,  <28.444593, 34.912041, 37.675846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867710, 34.850056, 37.047390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816128, 34.478588, 37.186497>,  <28.785177, 34.255707, 37.269962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816128, 34.478588, 37.186497>,  <28.867710, 34.850056, 37.047390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816128, 34.478588, 37.186497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125200, -0.332640, -0.934706,
		0.983715, -0.164077, -0.073373,
		-0.128957, -0.928671, 0.347766,
		28.777441, 34.199986, 37.290825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176819, 34.423717, 36.508774>,  <28.867710, 34.850056, 37.047390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176819, 34.423717, 36.508774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942316, 34.168205, 36.708076>,  <28.801615, 34.014896, 36.827660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942316, 34.168205, 36.708076>,  <29.176819, 34.423717, 36.508774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942316, 34.168205, 36.708076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218410, -0.467639, -0.856511,
		0.780127, -0.610961, 0.134641,
		-0.586258, -0.638780, 0.498258,
		28.766438, 33.976570, 36.857555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398008, 33.815739, 36.305283>,  <29.176819, 34.423717, 36.508774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398008, 33.815739, 36.305283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017008, 33.793526, 36.425056>,  <28.788408, 33.780197, 36.496922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017008, 33.793526, 36.425056>,  <29.398008, 33.815739, 36.305283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017008, 33.793526, 36.425056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258657, -0.371467, -0.891689,
		0.160747, -0.926784, 0.339458,
		-0.952500, -0.055533, 0.299431,
		28.731258, 33.776867, 36.514885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984287, 34.051243, 36.537144>,  <29.398008, 33.815739, 36.305283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984287, 34.051243, 36.537144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336712, 33.955887, 36.373730>,  <30.548166, 33.898674, 36.275681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336712, 33.955887, 36.373730>,  <29.984287, 34.051243, 36.537144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336712, 33.955887, 36.373730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279537, 0.434306, -0.856293,
		0.381560, 0.868647, 0.316012,
		0.881063, -0.238390, -0.408533,
		30.601030, 33.884369, 36.251171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126135, 34.680416, 36.129253>,  <29.984287, 34.051243, 36.537144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126135, 34.680416, 36.129253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370752, 34.399269, 35.983932>,  <30.517523, 34.230579, 35.896740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370752, 34.399269, 35.983932>,  <30.126135, 34.680416, 36.129253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370752, 34.399269, 35.983932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029510, 0.479116, -0.877256,
		0.790661, 0.525759, 0.313741,
		0.611543, -0.702870, -0.363303,
		30.554214, 34.188408, 35.874943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856400, 34.969696, 36.051773>,  <30.126135, 34.680416, 36.129253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856400, 34.969696, 36.051773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706459, 34.702866, 35.794250>,  <30.616495, 34.542767, 35.639736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706459, 34.702866, 35.794250>,  <30.856400, 34.969696, 36.051773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706459, 34.702866, 35.794250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107188, 0.658602, -0.744818,
		0.920867, -0.348206, -0.175377,
		-0.374853, -0.667080, -0.643808,
		30.594004, 34.502743, 35.601109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287767, 34.682182, 35.473728>,  <30.856400, 34.969696, 36.051773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287767, 34.682182, 35.473728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910713, 34.754971, 35.361778>,  <30.684481, 34.798641, 35.294609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910713, 34.754971, 35.361778>,  <31.287767, 34.682182, 35.473728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910713, 34.754971, 35.361778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310801, 0.784354, -0.536835,
		0.121833, -0.593024, -0.795914,
		-0.942634, 0.181967, -0.279873,
		30.627922, 34.809559, 35.277817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334459, 35.263290, 34.976418>,  <31.287767, 34.682182, 35.473728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334459, 35.263290, 34.976418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940174, 35.198315, 34.958591>,  <30.703604, 35.159328, 34.947895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940174, 35.198315, 34.958591>,  <31.334459, 35.263290, 34.976418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940174, 35.198315, 34.958591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089620, 0.729786, -0.677776,
		0.142621, -0.664098, -0.733916,
		-0.985712, -0.162439, -0.044566,
		30.644461, 35.149582, 34.945221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454782, 35.698845, 35.465870>,  <31.334459, 35.263290, 34.976418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454782, 35.698845, 35.465870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453802, 35.463829, 35.789547>,  <31.453215, 35.322819, 35.983753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453802, 35.463829, 35.789547>,  <31.454782, 35.698845, 35.465870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453802, 35.463829, 35.789547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564267, 0.667249, 0.486191,
		-0.825589, 0.457790, 0.329896,
		-0.002451, -0.587543, 0.809189,
		31.453068, 35.287567, 36.032303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327290, 36.087238, 35.969799>,  <31.454782, 35.698845, 35.465870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327290, 36.087238, 35.969799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537239, 35.803268, 36.157631>,  <31.663208, 35.632885, 36.270332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537239, 35.803268, 36.157631>,  <31.327290, 36.087238, 35.969799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537239, 35.803268, 36.157631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350755, 0.683063, 0.640621,
		-0.775551, -0.171536, 0.607533,
		0.524873, -0.709929, 0.469583,
		31.694700, 35.590290, 36.298508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271017, 36.184841, 36.654228>,  <31.327290, 36.087238, 35.969799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271017, 36.184841, 36.654228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608366, 35.969910, 36.653358>,  <31.810776, 35.840950, 36.652836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608366, 35.969910, 36.653358>,  <31.271017, 36.184841, 36.654228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608366, 35.969910, 36.653358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449839, 0.703830, 0.549790,
		-0.293886, -0.464656, 0.835300,
		0.843372, -0.537326, -0.002174,
		31.861378, 35.808712, 36.652706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403475, 36.165577, 37.295216>,  <31.271017, 36.184841, 36.654228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403475, 36.165577, 37.295216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762547, 36.054615, 37.158264>,  <31.977989, 35.988037, 37.076096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762547, 36.054615, 37.158264>,  <31.403475, 36.165577, 37.295216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762547, 36.054615, 37.158264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440144, 0.527089, 0.726946,
		-0.021198, -0.803257, 0.595255,
		0.897677, -0.277407, -0.342375,
		32.031849, 35.971394, 37.055550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820316, 35.887188, 37.822506>,  <31.403475, 36.165577, 37.295216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820316, 35.887188, 37.822506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098011, 35.967018, 37.545895>,  <32.264629, 36.014915, 37.379929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098011, 35.967018, 37.545895>,  <31.820316, 35.887188, 37.822506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098011, 35.967018, 37.545895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497502, 0.561251, 0.661429,
		0.520125, -0.803223, 0.290351,
		0.694234, 0.199576, -0.691526,
		32.306282, 36.026890, 37.338436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526058, 35.719986, 38.066776>,  <31.820316, 35.887188, 37.822506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526058, 35.719986, 38.066776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620041, 35.968658, 37.767899>,  <32.676430, 36.117863, 37.588570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620041, 35.968658, 37.767899>,  <32.526058, 35.719986, 38.066776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620041, 35.968658, 37.767899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703342, 0.421842, 0.572153,
		0.670897, -0.659968, -0.338140,
		0.234961, 0.621684, -0.747196,
		32.690529, 36.155163, 37.543739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327366, 35.839966, 38.074539>,  <32.526058, 35.719986, 38.066776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327366, 35.839966, 38.074539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178799, 36.123039, 37.834129>,  <33.089661, 36.292885, 37.689884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178799, 36.123039, 37.834129>,  <33.327366, 35.839966, 38.074539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178799, 36.123039, 37.834129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640111, 0.664073, 0.386348,
		0.672539, -0.241229, -0.699643,
		-0.371416, 0.707683, -0.601028,
		33.067375, 36.335342, 37.653820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900898, 36.259506, 37.604042>,  <33.327366, 35.839966, 38.074539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900898, 36.259506, 37.604042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572010, 36.473858, 37.680756>,  <33.374676, 36.602470, 37.726784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572010, 36.473858, 37.680756>,  <33.900898, 36.259506, 37.604042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572010, 36.473858, 37.680756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517753, 0.564263, 0.643070,
		0.236395, 0.628042, -0.741405,
		-0.822222, 0.535883, 0.191782,
		33.325344, 36.634624, 37.738289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294159, 36.917961, 37.704838>,  <33.900898, 36.259506, 37.604042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294159, 36.917961, 37.704838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926117, 36.948940, 37.858414>,  <33.705292, 36.967529, 37.950558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926117, 36.948940, 37.858414>,  <34.294159, 36.917961, 37.704838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926117, 36.948940, 37.858414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358281, 0.562494, 0.745141,
		-0.158251, 0.823165, -0.545303,
		-0.920104, 0.077452, 0.383940,
		33.650085, 36.972176, 37.973595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195953, 37.643173, 37.773930>,  <34.294159, 36.917961, 37.704838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195953, 37.643173, 37.773930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919312, 37.487129, 38.017075>,  <33.753326, 37.393501, 38.162960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919312, 37.487129, 38.017075>,  <34.195953, 37.643173, 37.773930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919312, 37.487129, 38.017075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443788, 0.434471, 0.783765,
		-0.569851, 0.811819, -0.127358,
		-0.691608, -0.390109, 0.607859,
		33.711830, 37.370098, 38.199432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962612, 38.308544, 38.153992>,  <34.195953, 37.643173, 37.773930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962612, 38.308544, 38.153992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855125, 37.989647, 38.370213>,  <33.790634, 37.798309, 38.499947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855125, 37.989647, 38.370213>,  <33.962612, 38.308544, 38.153992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855125, 37.989647, 38.370213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498932, 0.364836, 0.786105,
		-0.823929, 0.480939, 0.299732,
		-0.268716, -0.797241, 0.540554,
		33.774509, 37.750473, 38.532379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877838, 38.595009, 38.869221>,  <33.962612, 38.308544, 38.153992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877838, 38.595009, 38.869221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904514, 38.197964, 38.909752>,  <33.920521, 37.959736, 38.934071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904514, 38.197964, 38.909752>,  <33.877838, 38.595009, 38.869221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904514, 38.197964, 38.909752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340496, 0.118097, 0.932800,
		-0.937878, -0.027709, 0.345858,
		0.066692, -0.992615, 0.101325,
		33.924522, 37.900181, 38.940151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609043, 38.497849, 39.482159>,  <33.877838, 38.595009, 38.869221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609043, 38.497849, 39.482159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826954, 38.164333, 39.446339>,  <33.957703, 37.964226, 39.424847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826954, 38.164333, 39.446339>,  <33.609043, 38.497849, 39.482159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826954, 38.164333, 39.446339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273188, 0.075503, 0.958993,
		-0.792831, -0.546904, 0.268912,
		0.544781, -0.833784, -0.089547,
		33.990387, 37.914200, 39.419476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397884, 38.010147, 39.983341>,  <33.609043, 38.497849, 39.482159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397884, 38.010147, 39.983341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775009, 37.943295, 39.867981>,  <34.001286, 37.903183, 39.798767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775009, 37.943295, 39.867981>,  <33.397884, 38.010147, 39.983341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775009, 37.943295, 39.867981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286077, -0.038324, 0.957440,
		-0.171068, -0.985190, 0.011680,
		0.942812, -0.167128, -0.288396,
		34.057854, 37.893158, 39.781464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717987, 37.667210, 40.530437>,  <33.397884, 38.010147, 39.983341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717987, 37.667210, 40.530437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037163, 37.749783, 40.303925>,  <34.228668, 37.799328, 40.168015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037163, 37.749783, 40.303925>,  <33.717987, 37.667210, 40.530437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037163, 37.749783, 40.303925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587314, -0.055101, 0.807481,
		0.135490, -0.976908, -0.165210,
		0.797937, 0.206436, -0.566286,
		34.276543, 37.811714, 40.134037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184490, 36.993912, 40.592575>,  <33.717987, 37.667210, 40.530437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184490, 36.993912, 40.592575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373592, 37.335224, 40.504566>,  <34.487053, 37.540012, 40.451759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373592, 37.335224, 40.504566>,  <34.184490, 36.993912, 40.592575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373592, 37.335224, 40.504566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264732, 0.100621, 0.959058,
		0.840486, -0.511648, -0.178322,
		0.472757, 0.853283, -0.220021,
		34.515419, 37.591209, 40.438560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820351, 36.917595, 41.014980>,  <34.184490, 36.993912, 40.592575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820351, 36.917595, 41.014980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783760, 37.302330, 40.911831>,  <34.761806, 37.533173, 40.849941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783760, 37.302330, 40.911831>,  <34.820351, 36.917595, 41.014980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783760, 37.302330, 40.911831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395569, 0.272751, 0.877002,
		0.913870, -0.021787, -0.405423,
		-0.091472, 0.961838, -0.257877,
		34.756317, 37.590881, 40.834469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431797, 37.237698, 41.165520>,  <34.820351, 36.917595, 41.014980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431797, 37.237698, 41.165520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213120, 37.572578, 41.159599>,  <35.081913, 37.773506, 41.156048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213120, 37.572578, 41.159599>,  <35.431797, 37.237698, 41.165520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213120, 37.572578, 41.159599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452296, 0.310134, 0.836209,
		0.704667, 0.450454, -0.548211,
		-0.546693, 0.837202, -0.014803,
		35.049110, 37.823738, 41.155159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822273, 37.807884, 41.474915>,  <35.431797, 37.237698, 41.165520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822273, 37.807884, 41.474915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448917, 37.948372, 41.504379>,  <35.224903, 38.032665, 41.522060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448917, 37.948372, 41.504379>,  <35.822273, 37.807884, 41.474915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448917, 37.948372, 41.504379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252318, 0.496326, 0.830660,
		0.255183, 0.793917, -0.551885,
		-0.933390, 0.351221, 0.073666,
		35.168900, 38.053738, 41.526478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899868, 38.441883, 41.687801>,  <35.822273, 37.807884, 41.474915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899868, 38.441883, 41.687801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524395, 38.359856, 41.798668>,  <35.299110, 38.310638, 41.865189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524395, 38.359856, 41.798668>,  <35.899868, 38.441883, 41.687801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524395, 38.359856, 41.798668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133635, 0.524656, 0.840760,
		-0.317827, 0.826247, -0.465082,
		-0.938684, -0.205065, 0.277165,
		35.242790, 38.298336, 41.881817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784195, 39.134083, 42.072884>,  <35.899868, 38.441883, 41.687801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784195, 39.134083, 42.072884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496861, 38.875366, 42.175377>,  <35.324459, 38.720135, 42.236874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496861, 38.875366, 42.175377>,  <35.784195, 39.134083, 42.072884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496861, 38.875366, 42.175377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115119, 0.473739, 0.873109,
		-0.686106, 0.597688, -0.414761,
		-0.718336, -0.646792, 0.256230,
		35.281361, 38.681328, 42.252247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166767, 39.508694, 42.276760>,  <35.784195, 39.134083, 42.072884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166767, 39.508694, 42.276760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165466, 39.151264, 42.456318>,  <35.164688, 38.936806, 42.564053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165466, 39.151264, 42.456318>,  <35.166767, 39.508694, 42.276760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165466, 39.151264, 42.456318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136530, 0.445092, 0.885016,
		-0.990631, -0.058413, -0.123446,
		-0.003249, -0.893578, 0.448897,
		35.164494, 38.883190, 42.590988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723934, 39.691650, 42.761208>,  <35.166767, 39.508694, 42.276760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723934, 39.691650, 42.761208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891273, 39.344719, 42.869072>,  <34.991676, 39.136559, 42.933788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891273, 39.344719, 42.869072>,  <34.723934, 39.691650, 42.761208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891273, 39.344719, 42.869072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033148, 0.311269, 0.949744,
		-0.907680, -0.388388, 0.158970,
		0.418351, -0.867333, 0.269658,
		35.016777, 39.084518, 42.949970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333233, 39.472874, 43.304134>,  <34.723934, 39.691650, 42.761208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333233, 39.472874, 43.304134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671295, 39.267761, 43.364498>,  <34.874130, 39.144691, 43.400715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671295, 39.267761, 43.364498>,  <34.333233, 39.472874, 43.304134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671295, 39.267761, 43.364498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041261, 0.218891, 0.974876,
		-0.532933, -0.830145, 0.163838,
		0.845151, -0.512783, 0.150907,
		34.924839, 39.113926, 43.409771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219677, 39.121170, 43.902931>,  <34.333233, 39.472874, 43.304134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219677, 39.121170, 43.902931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616787, 39.114586, 43.855377>,  <34.855053, 39.110634, 43.826843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616787, 39.114586, 43.855377>,  <34.219677, 39.121170, 43.902931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616787, 39.114586, 43.855377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119764, 0.200275, 0.972392,
		0.007802, -0.979601, 0.200799,
		0.992772, -0.016462, -0.118884,
		34.914619, 39.109646, 43.819714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315720, 38.875530, 44.516850>,  <34.219677, 39.121170, 43.902931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315720, 38.875530, 44.516850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665291, 39.003601, 44.370567>,  <34.875034, 39.080444, 44.282799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665291, 39.003601, 44.370567>,  <34.315720, 38.875530, 44.516850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665291, 39.003601, 44.370567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276393, 0.291555, 0.915753,
		0.399826, -0.901378, 0.166302,
		0.873926, 0.320177, -0.365706,
		34.927467, 39.099655, 44.260857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880398, 38.549126, 44.945805>,  <34.315720, 38.875530, 44.516850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880398, 38.549126, 44.945805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066967, 38.869370, 44.795353>,  <35.178909, 39.061516, 44.705082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066967, 38.869370, 44.795353>,  <34.880398, 38.549126, 44.945805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066967, 38.869370, 44.795353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449035, 0.152052, 0.880482,
		0.762112, -0.579575, -0.288580,
		0.466426, 0.800608, -0.376130,
		35.206894, 39.109550, 44.682514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562469, 38.447739, 45.126141>,  <34.880398, 38.549126, 44.945805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562469, 38.447739, 45.126141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520954, 38.842361, 45.075653>,  <35.496044, 39.079136, 45.045361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520954, 38.842361, 45.075653>,  <35.562469, 38.447739, 45.126141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520954, 38.842361, 45.075653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406070, 0.157874, 0.900102,
		0.907929, 0.042169, -0.416997,
		-0.103790, 0.986558, -0.126215,
		35.489819, 39.138329, 45.037788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191788, 38.635235, 45.160412>,  <35.562469, 38.447739, 45.126141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191788, 38.635235, 45.160412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969257, 38.961887, 45.221878>,  <35.835739, 39.157879, 45.258759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969257, 38.961887, 45.221878>,  <36.191788, 38.635235, 45.160412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969257, 38.961887, 45.221878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479130, 0.164154, 0.862257,
		0.678923, 0.553321, -0.482597,
		-0.556325, 0.816633, 0.153665,
		35.802361, 39.206879, 45.267979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570114, 39.250240, 45.472084>,  <36.191788, 38.635235, 45.160412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570114, 39.250240, 45.472084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190739, 39.332714, 45.568375>,  <35.963112, 39.382198, 45.626148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190739, 39.332714, 45.568375>,  <36.570114, 39.250240, 45.472084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190739, 39.332714, 45.568375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211032, -0.155878, 0.964970,
		0.236482, 0.966018, 0.104331,
		-0.948442, 0.206181, 0.240723,
		35.906204, 39.394569, 45.640591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609966, 39.628479, 46.008358>,  <36.570114, 39.250240, 45.472084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609966, 39.628479, 46.008358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243816, 39.468273, 46.024734>,  <36.024124, 39.372150, 46.034561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243816, 39.468273, 46.024734>,  <36.609966, 39.628479, 46.008358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243816, 39.468273, 46.024734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094167, -0.114130, 0.988993,
		-0.391429, 0.909157, 0.142187,
		-0.915377, -0.400510, 0.040939,
		35.969204, 39.348122, 46.037018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444633, 39.768322, 46.673752>,  <36.609966, 39.628479, 46.008358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444633, 39.768322, 46.673752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152420, 39.512280, 46.578606>,  <35.977093, 39.358654, 46.521519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152420, 39.512280, 46.578606>,  <36.444633, 39.768322, 46.673752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152420, 39.512280, 46.578606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015431, -0.332761, 0.942885,
		-0.682702, 0.692480, 0.233216,
		-0.730534, -0.640111, -0.237863,
		35.933258, 39.320248, 46.507248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866123, 39.885471, 47.133598>,  <36.444633, 39.768322, 46.673752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866123, 39.885471, 47.133598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840111, 39.502487, 47.021149>,  <35.824505, 39.272697, 46.953678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840111, 39.502487, 47.021149>,  <35.866123, 39.885471, 47.133598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840111, 39.502487, 47.021149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364832, -0.285033, 0.886371,
		-0.928800, -0.044925, 0.367849,
		-0.065029, -0.957464, -0.281129,
		35.820602, 39.215248, 46.936810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496571, 39.552570, 47.629211>,  <35.866123, 39.885471, 47.133598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496571, 39.552570, 47.629211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707817, 39.261387, 47.454323>,  <35.834564, 39.086678, 47.349388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707817, 39.261387, 47.454323>,  <35.496571, 39.552570, 47.629211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707817, 39.261387, 47.454323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375922, -0.261260, 0.889059,
		-0.761428, -0.633891, 0.135680,
		0.528119, -0.727960, -0.437224,
		35.866253, 39.042999, 47.323154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534115, 39.055470, 48.109432>,  <35.496571, 39.552570, 47.629211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534115, 39.055470, 48.109432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809219, 38.923958, 47.850548>,  <35.974281, 38.845051, 47.695217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809219, 38.923958, 47.850548>,  <35.534115, 39.055470, 48.109432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809219, 38.923958, 47.850548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586188, -0.274381, 0.762298,
		-0.428211, -0.903670, 0.004017,
		0.687764, -0.328779, -0.647213,
		36.015549, 38.825325, 47.656384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606609, 38.301514, 48.245007>,  <35.534115, 39.055470, 48.109432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606609, 38.301514, 48.245007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932758, 38.415703, 48.043541>,  <36.128448, 38.484215, 47.922661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932758, 38.415703, 48.043541>,  <35.606609, 38.301514, 48.245007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932758, 38.415703, 48.043541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578902, -0.412425, 0.703405,
		-0.006923, -0.865108, -0.501538,
		0.815368, 0.285472, -0.503668,
		36.177368, 38.501343, 47.892441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136238, 37.650986, 48.216801>,  <35.606609, 38.301514, 48.245007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136238, 37.650986, 48.216801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342926, 37.991074, 48.176537>,  <36.466938, 38.195126, 48.152378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342926, 37.991074, 48.176537>,  <36.136238, 37.650986, 48.216801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342926, 37.991074, 48.176537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592759, -0.270437, 0.758617,
		0.617769, -0.451657, -0.643714,
		0.516719, 0.850218, -0.100656,
		36.497940, 38.246140, 48.146339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825638, 37.522652, 48.396782>,  <36.136238, 37.650986, 48.216801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825638, 37.522652, 48.396782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823536, 37.920708, 48.436104>,  <36.822273, 38.159542, 48.459698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823536, 37.920708, 48.436104>,  <36.825638, 37.522652, 48.396782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823536, 37.920708, 48.436104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540901, -0.079851, 0.837287,
		0.841070, 0.057574, -0.537854,
		-0.005257, 0.995143, 0.098302,
		36.821960, 38.219250, 48.465595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507175, 37.701828, 48.822945>,  <36.825638, 37.522652, 48.396782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507175, 37.701828, 48.822945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251869, 38.008369, 48.852112>,  <37.098686, 38.192295, 48.869614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251869, 38.008369, 48.852112>,  <37.507175, 37.701828, 48.822945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251869, 38.008369, 48.852112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360585, 0.213926, 0.907862,
		0.680148, 0.605748, -0.412878,
		-0.638262, 0.766358, 0.072922,
		37.060390, 38.238277, 48.873989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915356, 38.317123, 49.051163>,  <37.507175, 37.701828, 48.822945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915356, 38.317123, 49.051163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532898, 38.375118, 49.152958>,  <37.303425, 38.409916, 49.214035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532898, 38.375118, 49.152958>,  <37.915356, 38.317123, 49.051163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532898, 38.375118, 49.152958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290692, 0.363464, 0.885094,
		0.035828, 0.920257, -0.389670,
		-0.956146, 0.144985, 0.254489,
		37.246056, 38.418613, 49.229305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896412, 38.963913, 49.357449>,  <37.915356, 38.317123, 49.051163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896412, 38.963913, 49.357449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561348, 38.795582, 49.496719>,  <37.360310, 38.694584, 49.580280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561348, 38.795582, 49.496719>,  <37.896412, 38.963913, 49.357449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561348, 38.795582, 49.496719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221559, 0.320859, 0.920848,
		-0.499231, 0.848503, -0.175535,
		-0.837664, -0.420824, 0.348176,
		37.310047, 38.669334, 49.601173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478897, 39.459450, 49.774078>,  <37.896412, 38.963913, 49.357449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478897, 39.459450, 49.774078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391418, 39.083488, 49.878960>,  <37.338932, 38.857910, 49.941887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391418, 39.083488, 49.878960>,  <37.478897, 39.459450, 49.774078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391418, 39.083488, 49.878960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277284, 0.197767, 0.940214,
		-0.935566, 0.278328, 0.217369,
		-0.218700, -0.939905, 0.262200,
		37.325809, 38.801517, 49.957619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197975, 39.528252, 50.428978>,  <37.478897, 39.459450, 49.774078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197975, 39.528252, 50.428978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272118, 39.135201, 50.432610>,  <37.316605, 38.899368, 50.434788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272118, 39.135201, 50.432610>,  <37.197975, 39.528252, 50.428978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272118, 39.135201, 50.432610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250632, 0.056203, 0.966450,
		-0.950172, -0.176865, 0.256696,
		0.185358, -0.982629, 0.009075,
		37.327724, 38.840412, 50.435333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744438, 39.272087, 50.945030>,  <37.197975, 39.528252, 50.428978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744438, 39.272087, 50.945030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078335, 39.061646, 50.880013>,  <37.278671, 38.935379, 50.841003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078335, 39.061646, 50.880013>,  <36.744438, 39.272087, 50.945030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078335, 39.061646, 50.880013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202649, 0.019044, 0.979066,
		-0.511994, -0.850208, 0.122511,
		0.834742, -0.526103, -0.162543,
		37.328758, 38.903816, 50.831249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692524, 38.745617, 51.375660>,  <36.744438, 39.272087, 50.945030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692524, 38.745617, 51.375660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083134, 38.755180, 51.290031>,  <37.317501, 38.760918, 51.238655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083134, 38.755180, 51.290031>,  <36.692524, 38.745617, 51.375660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083134, 38.755180, 51.290031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212569, 0.053693, 0.975670,
		0.034810, -0.998272, 0.047352,
		0.976526, 0.023897, -0.214071,
		37.376091, 38.762352, 51.225811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046280, 38.289677, 51.870277>,  <36.692524, 38.745617, 51.375660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046280, 38.289677, 51.870277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291420, 38.585403, 51.758686>,  <37.438503, 38.762840, 51.691730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291420, 38.585403, 51.758686>,  <37.046280, 38.289677, 51.870277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291420, 38.585403, 51.758686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112520, 0.267799, 0.956882,
		0.782145, -0.617817, 0.080934,
		0.612852, 0.739314, -0.278974,
		37.475277, 38.807198, 51.674995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874954, 38.272087, 51.901817>,  <37.046280, 38.289677, 51.870277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874954, 38.272087, 51.901817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736614, 38.631687, 52.009285>,  <37.653610, 38.847446, 52.073765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736614, 38.631687, 52.009285>,  <37.874954, 38.272087, 51.901817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736614, 38.631687, 52.009285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274136, -0.177029, 0.945257,
		0.897350, 0.400569, -0.185223,
		-0.345851, 0.899002, 0.268668,
		37.632858, 38.901386, 52.089886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462288, 38.614254, 52.255836>,  <37.874954, 38.272087, 51.901817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462288, 38.614254, 52.255836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100079, 38.747135, 52.361420>,  <37.882751, 38.826862, 52.424770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100079, 38.747135, 52.361420>,  <38.462288, 38.614254, 52.255836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100079, 38.747135, 52.361420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287251, 0.022126, 0.957600,
		0.312273, 0.942950, -0.115460,
		-0.905523, 0.332199, 0.263954,
		37.828423, 38.846794, 52.440605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026730, 38.604877, 52.720299>,  <38.462288, 38.614254, 52.255836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026730, 38.604877, 52.720299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370567, 38.555580, 52.521942>,  <39.576870, 38.526001, 52.402927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370567, 38.555580, 52.521942>,  <39.026730, 38.604877, 52.720299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370567, 38.555580, 52.521942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083545, -0.991316, 0.101551,
		-0.504105, -0.045863, -0.862424,
		0.859592, -0.123243, -0.495896,
		39.628445, 38.518608, 52.373173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900951, 37.969955, 52.307770>,  <39.026730, 38.604877, 52.720299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900951, 37.969955, 52.307770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293056, 38.020515, 52.368565>,  <39.528320, 38.050850, 52.405041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293056, 38.020515, 52.368565>,  <38.900951, 37.969955, 52.307770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293056, 38.020515, 52.368565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125270, -0.991977, 0.017016,
		0.152919, 0.002359, -0.988236,
		0.980267, 0.126398, 0.151988,
		39.587135, 38.058434, 52.414162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199436, 37.443977, 51.796890>,  <38.900951, 37.969955, 52.307770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199436, 37.443977, 51.796890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444920, 37.551872, 52.093700>,  <39.592209, 37.616608, 52.271786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444920, 37.551872, 52.093700>,  <39.199436, 37.443977, 51.796890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444920, 37.551872, 52.093700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123707, -0.961074, 0.247052,
		0.779778, -0.059825, -0.623191,
		0.613712, 0.269738, 0.742024,
		39.629032, 37.632793, 52.316307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833069, 37.150982, 52.273109>,  <39.199436, 37.443977, 51.796890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833069, 37.150982, 52.273109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534603, 36.927055, 52.417248>,  <38.355522, 36.792698, 52.503731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534603, 36.927055, 52.417248>,  <38.833069, 37.150982, 52.273109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534603, 36.927055, 52.417248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412482, -0.036123, -0.910249,
		0.522588, -0.827829, -0.203960,
		-0.746164, -0.559816, 0.360342,
		38.310753, 36.759109, 52.525349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702534, 36.548325, 51.877483>,  <38.833069, 37.150982, 52.273109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702534, 36.548325, 51.877483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359451, 36.642441, 52.060345>,  <38.153603, 36.698910, 52.170063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359451, 36.642441, 52.060345>,  <38.702534, 36.548325, 51.877483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359451, 36.642441, 52.060345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501706, -0.188594, -0.844229,
		-0.112420, -0.953453, 0.279802,
		-0.857702, 0.235287, 0.457152,
		38.102142, 36.713028, 52.197491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227615, 36.061596, 51.984814>,  <38.702534, 36.548325, 51.877483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227615, 36.061596, 51.984814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004929, 36.389725, 51.932438>,  <37.871319, 36.586601, 51.901012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004929, 36.389725, 51.932438>,  <38.227615, 36.061596, 51.984814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004929, 36.389725, 51.932438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293216, -0.341524, -0.892964,
		-0.777234, -0.458733, 0.430663,
		-0.556714, 0.820320, -0.130936,
		37.837914, 36.635822, 51.893158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501446, 35.947891, 51.885021>,  <38.227615, 36.061596, 51.984814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501446, 35.947891, 51.885021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643547, 36.276161, 51.706005>,  <37.728806, 36.473122, 51.598595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643547, 36.276161, 51.706005>,  <37.501446, 35.947891, 51.885021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643547, 36.276161, 51.706005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121019, -0.434363, -0.892571,
		-0.926904, 0.371248, -0.054991,
		0.355252, 0.820673, -0.447541,
		37.750122, 36.522362, 51.571743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995823, 36.132111, 51.358643>,  <37.501446, 35.947891, 51.885021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995823, 36.132111, 51.358643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333794, 36.305912, 51.233864>,  <37.536575, 36.410191, 51.158997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333794, 36.305912, 51.233864>,  <36.995823, 36.132111, 51.358643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333794, 36.305912, 51.233864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186837, -0.306714, -0.933284,
		-0.501191, 0.846838, -0.177970,
		0.844926, 0.434502, -0.311943,
		37.587273, 36.436264, 51.140282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806557, 36.602036, 50.907722>,  <36.995823, 36.132111, 51.358643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806557, 36.602036, 50.907722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185120, 36.508942, 50.818146>,  <37.412258, 36.453087, 50.764400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185120, 36.508942, 50.818146>,  <36.806557, 36.602036, 50.907722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185120, 36.508942, 50.818146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267895, -0.178339, -0.946798,
		0.180413, 0.956049, -0.231130,
		0.946405, -0.232733, -0.223947,
		37.469040, 36.439121, 50.750961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802734, 36.924168, 50.309856>,  <36.806557, 36.602036, 50.907722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802734, 36.924168, 50.309856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113323, 36.672367, 50.298470>,  <37.299679, 36.521286, 50.291637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113323, 36.672367, 50.298470>,  <36.802734, 36.924168, 50.309856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113323, 36.672367, 50.298470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155739, -0.147928, -0.976659,
		0.610599, 0.762786, -0.212901,
		0.776476, -0.629504, -0.028471,
		37.346268, 36.483517, 50.289928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285419, 37.188046, 49.785477>,  <36.802734, 36.924168, 50.309856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285419, 37.188046, 49.785477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310459, 36.791359, 49.830326>,  <37.325481, 36.553345, 49.857235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310459, 36.791359, 49.830326>,  <37.285419, 37.188046, 49.785477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310459, 36.791359, 49.830326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064374, -0.116121, -0.991147,
		0.995961, 0.054824, -0.071109,
		0.062596, -0.991721, 0.112123,
		37.329239, 36.493843, 49.863964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555016, 37.017548, 49.128956>,  <37.285419, 37.188046, 49.785477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555016, 37.017548, 49.128956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471672, 36.651779, 49.267769>,  <37.421665, 36.432320, 49.351055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471672, 36.651779, 49.267769>,  <37.555016, 37.017548, 49.128956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471672, 36.651779, 49.267769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083314, -0.336932, -0.937835,
		0.974498, -0.224314, -0.005982,
		-0.208354, -0.914418, 0.347029,
		37.409164, 36.377453, 49.371876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954727, 36.584217, 48.754284>,  <37.555016, 37.017548, 49.128956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954727, 36.584217, 48.754284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687737, 36.324852, 48.900726>,  <37.527542, 36.169231, 48.988590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687737, 36.324852, 48.900726>,  <37.954727, 36.584217, 48.754284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687737, 36.324852, 48.900726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020470, -0.507454, -0.861436,
		0.744347, -0.567496, 0.351988,
		-0.667479, -0.648412, 0.366105,
		37.487492, 36.130329, 49.010559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256832, 35.888882, 48.664528>,  <37.954727, 36.584217, 48.754284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256832, 35.888882, 48.664528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862854, 35.836689, 48.709877>,  <37.626469, 35.805374, 48.737087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862854, 35.836689, 48.709877>,  <38.256832, 35.888882, 48.664528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862854, 35.836689, 48.709877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001952, -0.664248, -0.747509,
		0.172848, -0.736035, 0.654504,
		-0.984947, -0.130484, 0.113377,
		37.567371, 35.797543, 48.743889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179123, 35.133533, 48.546772>,  <38.256832, 35.888882, 48.664528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179123, 35.133533, 48.546772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813679, 35.284096, 48.485275>,  <37.594414, 35.374435, 48.448376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813679, 35.284096, 48.485275>,  <38.179123, 35.133533, 48.546772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813679, 35.284096, 48.485275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171950, -0.700324, -0.692805,
		-0.368445, -0.606518, 0.704546,
		-0.913609, 0.376407, -0.153741,
		37.539597, 35.397018, 48.439152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792145, 34.541008, 48.355728>,  <38.179123, 35.133533, 48.546772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792145, 34.541008, 48.355728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568810, 34.857231, 48.255116>,  <37.434807, 35.046967, 48.194748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568810, 34.857231, 48.255116>,  <37.792145, 34.541008, 48.355728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568810, 34.857231, 48.255116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413120, -0.527875, -0.742078,
		-0.719436, -0.310420, 0.621330,
		-0.558340, 0.790562, -0.251532,
		37.401306, 35.094398, 48.179657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096592, 34.277954, 48.191036>,  <37.792145, 34.541008, 48.355728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096592, 34.277954, 48.191036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153587, 34.627407, 48.004936>,  <37.187782, 34.837078, 47.893276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153587, 34.627407, 48.004936>,  <37.096592, 34.277954, 48.191036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153587, 34.627407, 48.004936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439613, -0.365285, -0.820553,
		-0.886813, 0.321449, 0.332013,
		0.142487, 0.873635, -0.465252,
		37.196335, 34.889496, 47.865360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392612, 34.422417, 47.803543>,  <37.096592, 34.277954, 48.191036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392612, 34.422417, 47.803543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679207, 34.645557, 47.635994>,  <36.851162, 34.779442, 47.535465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679207, 34.645557, 47.635994>,  <36.392612, 34.422417, 47.803543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679207, 34.645557, 47.635994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397946, -0.166324, -0.902206,
		-0.572967, 0.813102, 0.102827,
		0.716483, 0.557854, -0.418869,
		36.894150, 34.812912, 47.510334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043507, 35.015053, 47.458305>,  <36.392612, 34.422417, 47.803543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043507, 35.015053, 47.458305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390511, 34.892792, 47.301334>,  <36.598713, 34.819435, 47.207153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390511, 34.892792, 47.301334>,  <36.043507, 35.015053, 47.458305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390511, 34.892792, 47.301334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465123, -0.218829, -0.857773,
		0.176305, 0.926656, -0.332002,
		0.867512, -0.305651, -0.392429,
		36.650764, 34.801098, 47.183605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069836, 35.234875, 46.867813>,  <36.043507, 35.015053, 47.458305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069836, 35.234875, 46.867813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334084, 34.934723, 46.858768>,  <36.492630, 34.754631, 46.853340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334084, 34.934723, 46.858768>,  <36.069836, 35.234875, 46.867813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334084, 34.934723, 46.858768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228894, -0.172645, -0.958020,
		0.714978, 0.638059, -0.285810,
		0.660617, -0.750383, -0.022611,
		36.532269, 34.709606, 46.851986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400799, 35.261894, 46.218849>,  <36.069836, 35.234875, 46.867813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400799, 35.261894, 46.218849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398125, 34.882362, 46.345142>,  <36.396519, 34.654644, 46.420918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398125, 34.882362, 46.345142>,  <36.400799, 35.261894, 46.218849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398125, 34.882362, 46.345142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297902, -0.299509, -0.906393,
		0.954573, -0.100116, -0.280655,
		-0.006686, -0.948826, 0.315728,
		36.396118, 34.597713, 46.439861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564003, 34.948048, 45.682209>,  <36.400799, 35.261894, 46.218849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564003, 34.948048, 45.682209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389938, 34.656250, 45.893295>,  <36.285500, 34.481171, 46.019947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389938, 34.656250, 45.893295>,  <36.564003, 34.948048, 45.682209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389938, 34.656250, 45.893295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432262, -0.344875, -0.833193,
		0.789802, -0.590680, -0.165256,
		-0.435158, -0.729492, 0.527712,
		36.259392, 34.437401, 46.051609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683491, 34.357059, 45.335621>,  <36.564003, 34.948048, 45.682209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683491, 34.357059, 45.335621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359390, 34.282631, 45.557926>,  <36.164932, 34.237972, 45.691311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359390, 34.282631, 45.557926>,  <36.683491, 34.357059, 45.335621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359390, 34.282631, 45.557926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477212, -0.341050, -0.809910,
		0.340244, -0.921446, 0.187541,
		-0.810249, -0.186071, 0.555765,
		36.116314, 34.226810, 45.724655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507710, 33.760174, 45.030563>,  <36.683491, 34.357059, 45.335621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507710, 33.760174, 45.030563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178776, 33.864273, 45.232964>,  <35.981415, 33.926735, 45.354404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178776, 33.864273, 45.232964>,  <36.507710, 33.760174, 45.030563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178776, 33.864273, 45.232964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567346, -0.307167, -0.764046,
		-0.043417, -0.915378, 0.400246,
		-0.822334, 0.260251, 0.506000,
		35.932076, 33.942348, 45.384762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994751, 33.170696, 44.894020>,  <36.507710, 33.760174, 45.030563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994751, 33.170696, 44.894020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813313, 33.503654, 45.021370>,  <35.704449, 33.703430, 45.097782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813313, 33.503654, 45.021370>,  <35.994751, 33.170696, 44.894020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813313, 33.503654, 45.021370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712010, -0.123618, -0.691202,
		-0.535999, -0.540214, 0.648748,
		-0.453594, 0.832398, 0.318379,
		35.677235, 33.753372, 45.116882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344143, 33.010212, 44.975410>,  <35.994751, 33.170696, 44.894020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344143, 33.010212, 44.975410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336521, 33.408127, 44.935326>,  <35.331947, 33.646873, 44.911274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336521, 33.408127, 44.935326>,  <35.344143, 33.010212, 44.975410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336521, 33.408127, 44.935326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661667, -0.087687, -0.744652,
		-0.749555, 0.052121, 0.659886,
		-0.019052, 0.994784, -0.100213,
		35.330807, 33.706562, 44.905262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629482, 33.173550, 44.747356>,  <35.344143, 33.010212, 44.975410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629482, 33.173550, 44.747356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852455, 33.488979, 44.643497>,  <34.986237, 33.678238, 44.581181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852455, 33.488979, 44.643497>,  <34.629482, 33.173550, 44.747356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852455, 33.488979, 44.643497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497896, 0.067265, -0.864624,
		-0.664358, 0.611246, 0.430126,
		0.557430, 0.788577, -0.259649,
		35.019684, 33.725552, 44.565601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157101, 33.663841, 44.527111>,  <34.629482, 33.173550, 44.747356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157101, 33.663841, 44.527111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498226, 33.771713, 44.348232>,  <34.702900, 33.836437, 44.240906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498226, 33.771713, 44.348232>,  <34.157101, 33.663841, 44.527111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498226, 33.771713, 44.348232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504983, 0.207669, -0.837774,
		-0.133065, 0.940289, 0.313288,
		0.852810, 0.269684, -0.447197,
		34.754070, 33.852619, 44.214073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929062, 34.324062, 44.197735>,  <34.157101, 33.663841, 44.527111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929062, 34.324062, 44.197735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262318, 34.171055, 44.037956>,  <34.462269, 34.079250, 43.942089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262318, 34.171055, 44.037956>,  <33.929062, 34.324062, 44.197735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262318, 34.171055, 44.037956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404039, 0.072239, -0.911885,
		0.377669, 0.921119, -0.094368,
		0.833138, -0.382519, -0.399451,
		34.512260, 34.056297, 43.918121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162868, 34.747097, 43.634678>,  <33.929062, 34.324062, 44.197735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162868, 34.747097, 43.634678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369877, 34.415501, 43.549866>,  <34.494080, 34.216545, 43.498978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369877, 34.415501, 43.549866>,  <34.162868, 34.747097, 43.634678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369877, 34.415501, 43.549866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081103, 0.199153, -0.976607,
		0.851820, 0.522608, 0.035832,
		0.517518, -0.828987, -0.212028,
		34.525131, 34.166805, 43.486256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478157, 34.899895, 43.066589>,  <34.162868, 34.747097, 43.634678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478157, 34.899895, 43.066589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483452, 34.499985, 43.059933>,  <34.486629, 34.260040, 43.055939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483452, 34.499985, 43.059933>,  <34.478157, 34.899895, 43.066589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483452, 34.499985, 43.059933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197838, 0.013694, -0.980139,
		0.980145, 0.016267, -0.197612,
		0.013238, -0.999774, -0.016640,
		34.487423, 34.200054, 43.054939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930977, 34.706360, 42.475098>,  <34.478157, 34.899895, 43.066589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930977, 34.706360, 42.475098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713924, 34.378128, 42.546886>,  <34.583694, 34.181190, 42.589958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713924, 34.378128, 42.546886>,  <34.930977, 34.706360, 42.475098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713924, 34.378128, 42.546886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175271, -0.098344, -0.979596,
		0.821483, -0.563013, -0.090459,
		-0.542629, -0.820576, 0.179468,
		34.551136, 34.131954, 42.600727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151718, 34.252949, 42.015797>,  <34.930977, 34.706360, 42.475098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151718, 34.252949, 42.015797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802601, 34.101219, 42.138657>,  <34.593132, 34.010181, 42.212372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802601, 34.101219, 42.138657>,  <35.151718, 34.252949, 42.015797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802601, 34.101219, 42.138657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240871, -0.212587, -0.946989,
		0.424517, -0.900509, 0.094175,
		-0.872792, -0.379329, 0.307153,
		34.540764, 33.987419, 42.230801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962830, 33.677406, 41.585243>,  <35.151718, 34.252949, 42.015797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962830, 33.677406, 41.585243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601318, 33.752419, 41.739140>,  <34.384411, 33.797424, 41.831478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601318, 33.752419, 41.739140>,  <34.962830, 33.677406, 41.585243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601318, 33.752419, 41.739140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427152, -0.338272, -0.838519,
		-0.027099, -0.922174, 0.385825,
		-0.903774, 0.187529, 0.384741,
		34.330185, 33.808678, 41.854561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583736, 33.069351, 41.419651>,  <34.962830, 33.677406, 41.585243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583736, 33.069351, 41.419651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331367, 33.371716, 41.489555>,  <34.179947, 33.553135, 41.531498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331367, 33.371716, 41.489555>,  <34.583736, 33.069351, 41.419651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331367, 33.371716, 41.489555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556754, -0.284238, -0.780534,
		-0.540339, -0.589753, 0.600187,
		-0.630919, 0.755910, 0.174763,
		34.142094, 33.598488, 41.541985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833435, 32.845558, 41.318455>,  <34.583736, 33.069351, 41.419651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833435, 32.845558, 41.318455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810688, 33.243584, 41.285915>,  <33.797039, 33.482399, 41.266392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810688, 33.243584, 41.285915>,  <33.833435, 32.845558, 41.318455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810688, 33.243584, 41.285915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400249, -0.097370, -0.911219,
		-0.914640, -0.019259, 0.403810,
		-0.056868, 0.995062, -0.081350,
		33.793629, 33.542103, 41.261509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170776, 32.825531, 41.058086>,  <33.833435, 32.845558, 41.318455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170776, 32.825531, 41.058086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353249, 33.164581, 40.949696>,  <33.462730, 33.368011, 40.884663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353249, 33.164581, 40.949696>,  <33.170776, 32.825531, 41.058086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353249, 33.164581, 40.949696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335251, -0.118376, -0.934663,
		-0.824322, 0.517221, 0.230167,
		0.456181, 0.847626, -0.270978,
		33.490105, 33.418869, 40.868401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672131, 33.221428, 40.813343>,  <33.170776, 32.825531, 41.058086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672131, 33.221428, 40.813343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015064, 33.359528, 40.660618>,  <33.220825, 33.442387, 40.568985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015064, 33.359528, 40.660618>,  <32.672131, 33.221428, 40.813343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015064, 33.359528, 40.660618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439380, 0.104388, -0.892215,
		-0.268179, 0.932688, 0.241191,
		0.857336, 0.345248, -0.381810,
		33.272266, 33.463100, 40.546074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361359, 33.667580, 40.329063>,  <32.672131, 33.221428, 40.813343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361359, 33.667580, 40.329063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737564, 33.623470, 40.200516>,  <32.963287, 33.597004, 40.123386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737564, 33.623470, 40.200516>,  <32.361359, 33.667580, 40.329063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737564, 33.623470, 40.200516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324640, -0.012641, -0.945753,
		0.100232, 0.993820, -0.047689,
		0.940512, -0.110276, -0.321367,
		33.019718, 33.590389, 40.104107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462517, 34.078262, 39.760082>,  <32.361359, 33.667580, 40.329063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462517, 34.078262, 39.760082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758114, 33.812138, 39.717663>,  <32.935471, 33.652462, 39.692211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758114, 33.812138, 39.717663>,  <32.462517, 34.078262, 39.760082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758114, 33.812138, 39.717663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024435, 0.130836, -0.991103,
		0.673269, 0.735010, 0.080430,
		0.738994, -0.665314, -0.106048,
		32.979813, 33.612545, 39.685848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902836, 34.444187, 39.389004>,  <32.462517, 34.078262, 39.760082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902836, 34.444187, 39.389004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975681, 34.054600, 39.335003>,  <33.019386, 33.820847, 39.302605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975681, 34.054600, 39.335003>,  <32.902836, 34.444187, 39.389004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975681, 34.054600, 39.335003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138196, 0.161285, -0.977184,
		0.973518, 0.159299, 0.163970,
		0.182110, -0.973967, -0.134999,
		33.030315, 33.762409, 39.294502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362057, 34.462814, 38.945583>,  <32.902836, 34.444187, 39.389004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362057, 34.462814, 38.945583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263020, 34.077816, 38.901230>,  <33.203598, 33.846817, 38.874619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263020, 34.077816, 38.901230>,  <33.362057, 34.462814, 38.945583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263020, 34.077816, 38.901230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138481, 0.078121, -0.987279,
		0.958917, -0.259796, 0.113946,
		-0.247590, -0.962498, -0.110888,
		33.188744, 33.789066, 38.867962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851261, 34.208462, 38.592064>,  <33.362057, 34.462814, 38.945583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851261, 34.208462, 38.592064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567791, 33.930336, 38.544216>,  <33.397709, 33.763458, 38.515507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567791, 33.930336, 38.544216>,  <33.851261, 34.208462, 38.592064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567791, 33.930336, 38.544216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255845, -0.095262, -0.962013,
		0.657508, -0.712362, 0.245404,
		-0.708679, -0.695317, -0.119618,
		33.355186, 33.721741, 38.508331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163162, 33.695274, 38.148594>,  <33.851261, 34.208462, 38.592064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163162, 33.695274, 38.148594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768246, 33.643669, 38.111469>,  <33.531296, 33.612705, 38.089195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768246, 33.643669, 38.111469>,  <34.163162, 33.695274, 38.148594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768246, 33.643669, 38.111469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122445, -0.245184, -0.961713,
		0.101318, -0.960854, 0.257865,
		-0.987290, -0.129013, -0.092810,
		33.472057, 33.604965, 38.083626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969181, 32.992481, 37.805000>,  <34.163162, 33.695274, 38.148594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969181, 32.992481, 37.805000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725212, 33.296024, 37.713680>,  <33.578831, 33.478149, 37.658886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725212, 33.296024, 37.713680>,  <33.969181, 32.992481, 37.805000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725212, 33.296024, 37.713680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288197, -0.055959, -0.955935,
		-0.738197, -0.648844, -0.184571,
		-0.609924, 0.758861, -0.228304,
		33.542236, 33.523682, 37.645187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535683, 32.575294, 37.638882>,  <33.969181, 32.992481, 37.805000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535683, 32.575294, 37.638882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894569, 32.460155, 37.504925>,  <35.109901, 32.391071, 37.424553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894569, 32.460155, 37.504925>,  <34.535683, 32.575294, 37.638882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894569, 32.460155, 37.504925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159749, -0.495429, 0.853833,
		-0.411686, -0.819569, -0.398523,
		0.897215, -0.287847, -0.334887,
		35.163734, 32.373802, 37.404457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642399, 31.960003, 37.932262>,  <34.535683, 32.575294, 37.638882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642399, 31.960003, 37.932262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008354, 32.052250, 37.799725>,  <35.227928, 32.107597, 37.720203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008354, 32.052250, 37.799725>,  <34.642399, 31.960003, 37.932262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008354, 32.052250, 37.799725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392973, -0.320818, 0.861770,
		0.092441, -0.918635, -0.384141,
		0.914892, 0.230620, -0.331342,
		35.282822, 32.121437, 37.700321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080814, 31.363489, 38.164944>,  <34.642399, 31.960003, 37.932262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080814, 31.363489, 38.164944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334976, 31.663704, 38.092327>,  <35.487473, 31.843832, 38.048756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334976, 31.663704, 38.092327>,  <35.080814, 31.363489, 38.164944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334976, 31.663704, 38.092327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381043, -0.100277, 0.919103,
		0.671616, -0.653177, -0.349703,
		0.635404, 0.750536, -0.181541,
		35.525597, 31.888865, 38.037865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739208, 31.072399, 38.502605>,  <35.080814, 31.363489, 38.164944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739208, 31.072399, 38.502605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749065, 31.471689, 38.480907>,  <35.754978, 31.711264, 38.467888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749065, 31.471689, 38.480907>,  <35.739208, 31.072399, 38.502605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749065, 31.471689, 38.480907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318867, 0.043581, 0.946797,
		0.947479, -0.040631, -0.317226,
		0.024644, 0.998223, -0.054248,
		35.756458, 31.771156, 38.464634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439095, 31.300741, 38.678329>,  <35.739208, 31.072399, 38.502605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439095, 31.300741, 38.678329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184460, 31.603100, 38.739487>,  <36.031677, 31.784515, 38.776180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184460, 31.603100, 38.739487>,  <36.439095, 31.300741, 38.678329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184460, 31.603100, 38.739487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454967, 0.208017, 0.865871,
		0.622703, 0.620767, -0.476329,
		-0.636589, 0.755895, 0.152896,
		35.993484, 31.829868, 38.785355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807373, 31.875153, 38.936489>,  <36.439095, 31.300741, 38.678329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807373, 31.875153, 38.936489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435486, 31.944818, 39.066284>,  <36.212353, 31.986618, 39.144161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435486, 31.944818, 39.066284>,  <36.807373, 31.875153, 38.936489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435486, 31.944818, 39.066284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360551, 0.250989, 0.898336,
		0.075016, 0.952193, -0.296144,
		-0.929718, 0.174165, 0.324486,
		36.156570, 31.997068, 39.163631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820587, 32.589478, 39.196526>,  <36.807373, 31.875153, 38.936489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820587, 32.589478, 39.196526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494568, 32.421654, 39.356361>,  <36.298958, 32.320961, 39.452263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494568, 32.421654, 39.356361>,  <36.820587, 32.589478, 39.196526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494568, 32.421654, 39.356361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333997, 0.223311, 0.915739,
		-0.473437, 0.879832, -0.041878,
		-0.815048, -0.419558, 0.399585,
		36.250053, 32.295788, 39.476238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594814, 33.041840, 39.586468>,  <36.820587, 32.589478, 39.196526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594814, 33.041840, 39.586468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398285, 32.719913, 39.719654>,  <36.280365, 32.526756, 39.799564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398285, 32.719913, 39.719654>,  <36.594814, 33.041840, 39.586468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398285, 32.719913, 39.719654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299715, 0.202713, 0.932244,
		-0.817783, 0.557831, 0.141618,
		-0.491326, -0.804818, 0.332965,
		36.250889, 32.478470, 39.819542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220215, 33.252605, 40.241646>,  <36.594814, 33.041840, 39.586468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220215, 33.252605, 40.241646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234509, 32.852913, 40.248138>,  <36.243084, 32.613098, 40.252033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234509, 32.852913, 40.248138>,  <36.220215, 33.252605, 40.241646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234509, 32.852913, 40.248138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246079, 0.024541, 0.968939,
		-0.968591, -0.030633, 0.246766,
		0.035737, -0.999229, 0.016232,
		36.245228, 32.553143, 40.253010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757057, 33.041389, 40.799183>,  <36.220215, 33.252605, 40.241646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757057, 33.041389, 40.799183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034237, 32.760334, 40.734539>,  <36.200546, 32.591702, 40.695751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034237, 32.760334, 40.734539>,  <35.757057, 33.041389, 40.799183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034237, 32.760334, 40.734539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197942, -0.030136, 0.979750,
		-0.693281, -0.710909, 0.118199,
		0.692951, -0.702638, -0.161611,
		36.242123, 32.549541, 40.686054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724678, 32.580936, 41.383278>,  <35.757057, 33.041389, 40.799183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724678, 32.580936, 41.383278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072800, 32.468090, 41.221798>,  <36.281673, 32.400383, 41.124908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072800, 32.468090, 41.221798>,  <35.724678, 32.580936, 41.383278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072800, 32.468090, 41.221798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422459, 0.006270, 0.906361,
		-0.253167, -0.959360, 0.124638,
		0.870307, -0.282115, -0.403703,
		36.333893, 32.383457, 41.100689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921558, 32.071541, 41.723469>,  <35.724678, 32.580936, 41.383278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921558, 32.071541, 41.723469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267860, 32.178017, 41.553947>,  <36.475643, 32.241901, 41.452236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267860, 32.178017, 41.553947>,  <35.921558, 32.071541, 41.723469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267860, 32.178017, 41.553947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473518, -0.161562, 0.865840,
		0.162005, -0.950285, -0.265919,
		0.865757, 0.266188, -0.423804,
		36.527588, 32.257874, 41.426807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361847, 31.534201, 41.813404>,  <35.921558, 32.071541, 41.723469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361847, 31.534201, 41.813404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609348, 31.842417, 41.752193>,  <36.757847, 32.027348, 41.715469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609348, 31.842417, 41.752193>,  <36.361847, 31.534201, 41.813404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609348, 31.842417, 41.752193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427734, -0.167059, 0.888333,
		0.658932, -0.615109, -0.432953,
		0.618751, 0.770540, -0.153023,
		36.794975, 32.073578, 41.706287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828903, 31.293167, 42.221058>,  <36.361847, 31.534201, 41.813404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828903, 31.293167, 42.221058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965981, 31.655884, 42.122841>,  <37.048225, 31.873514, 42.063911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965981, 31.655884, 42.122841>,  <36.828903, 31.293167, 42.221058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965981, 31.655884, 42.122841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432898, 0.079545, 0.897926,
		0.833762, -0.414011, -0.365288,
		0.342694, 0.906790, -0.245546,
		37.068790, 31.927921, 42.049175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545792, 31.272396, 42.313568>,  <36.828903, 31.293167, 42.221058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545792, 31.272396, 42.313568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450272, 31.660803, 42.317482>,  <37.392960, 31.893847, 42.319832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450272, 31.660803, 42.317482>,  <37.545792, 31.272396, 42.313568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450272, 31.660803, 42.317482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544367, 0.125516, 0.829403,
		0.804137, 0.203394, -0.558564,
		-0.238804, 0.971018, 0.009788,
		37.378632, 31.952108, 42.320419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157318, 31.724188, 42.408997>,  <37.545792, 31.272396, 42.313568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157318, 31.724188, 42.408997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839672, 31.921934, 42.550407>,  <37.649082, 32.040581, 42.635254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839672, 31.921934, 42.550407>,  <38.157318, 31.724188, 42.408997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839672, 31.921934, 42.550407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461912, 0.112904, 0.879710,
		0.394983, 0.861891, -0.318012,
		-0.794119, 0.494364, 0.353523,
		37.601437, 32.070244, 42.656464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415909, 32.386436, 42.667778>,  <38.157318, 31.724188, 42.408997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415909, 32.386436, 42.667778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062263, 32.330387, 42.846085>,  <37.850075, 32.296757, 42.953068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062263, 32.330387, 42.846085>,  <38.415909, 32.386436, 42.667778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062263, 32.330387, 42.846085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410008, 0.224949, 0.883907,
		-0.224133, 0.964242, -0.141428,
		-0.884114, -0.140126, 0.445766,
		37.797028, 32.288349, 42.979813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304775, 32.926239, 43.009674>,  <38.415909, 32.386436, 42.667778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304775, 32.926239, 43.009674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042938, 32.704632, 43.215420>,  <37.885838, 32.571667, 43.338867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042938, 32.704632, 43.215420>,  <38.304775, 32.926239, 43.009674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042938, 32.704632, 43.215420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390787, 0.334457, 0.857569,
		-0.647144, 0.762364, -0.002429,
		-0.654592, -0.554021, 0.514364,
		37.846561, 32.538425, 43.369728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856720, 33.421158, 43.465443>,  <38.304775, 32.926239, 43.009674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856720, 33.421158, 43.465443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855347, 33.051666, 43.618656>,  <37.854523, 32.829971, 43.710583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855347, 33.051666, 43.618656>,  <37.856720, 33.421158, 43.465443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855347, 33.051666, 43.618656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181349, 0.376109, 0.908655,
		-0.983413, 0.072578, 0.166228,
		-0.003429, -0.923728, 0.383032,
		37.854317, 32.774548, 43.733566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493999, 33.443165, 44.066589>,  <37.856720, 33.421158, 43.465443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493999, 33.443165, 44.066589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697567, 33.101963, 44.112862>,  <37.819710, 32.897243, 44.140625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697567, 33.101963, 44.112862>,  <37.493999, 33.443165, 44.066589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697567, 33.101963, 44.112862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146075, 0.218017, 0.964951,
		-0.848328, -0.474186, 0.235556,
		0.508922, -0.853004, 0.115683,
		37.850243, 32.846062, 44.147568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271690, 33.263863, 44.770390>,  <37.493999, 33.443165, 44.066589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271690, 33.263863, 44.770390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610489, 33.069530, 44.684071>,  <37.813766, 32.952930, 44.632278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610489, 33.069530, 44.684071>,  <37.271690, 33.263863, 44.770390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610489, 33.069530, 44.684071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397500, 0.309269, 0.863913,
		-0.352976, -0.817510, 0.455067,
		0.846996, -0.485830, -0.215796,
		37.864586, 32.923782, 44.619331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467987, 32.880146, 45.409672>,  <37.271690, 33.263863, 44.770390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467987, 32.880146, 45.409672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795151, 32.884930, 45.179581>,  <37.991447, 32.887798, 45.041527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795151, 32.884930, 45.179581>,  <37.467987, 32.880146, 45.409672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795151, 32.884930, 45.179581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520909, 0.409137, 0.749173,
		0.244305, -0.912395, 0.328408,
		0.817905, 0.011956, -0.575229,
		38.040524, 32.888515, 45.007011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026237, 32.397411, 45.765350>,  <37.467987, 32.880146, 45.409672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026237, 32.397411, 45.765350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200821, 32.662510, 45.521950>,  <38.305569, 32.821571, 45.375912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200821, 32.662510, 45.521950>,  <38.026237, 32.397411, 45.765350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200821, 32.662510, 45.521950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394107, 0.467154, 0.791485,
		0.808817, -0.585262, -0.057302,
		0.436457, 0.662749, -0.608497,
		38.331757, 32.861336, 45.339401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714226, 32.517429, 46.059738>,  <38.026237, 32.397411, 45.765350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714226, 32.517429, 46.059738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645683, 32.846443, 45.842823>,  <38.604557, 33.043850, 45.712673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645683, 32.846443, 45.842823>,  <38.714226, 32.517429, 46.059738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645683, 32.846443, 45.842823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358127, 0.564782, 0.743482,
		0.917813, -0.066807, -0.391351,
		-0.171358, 0.822531, -0.542290,
		38.594276, 33.093204, 45.680138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286835, 32.889664, 46.006165>,  <38.714226, 32.517429, 46.059738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286835, 32.889664, 46.006165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976303, 33.137199, 45.958267>,  <38.789982, 33.285721, 45.929527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976303, 33.137199, 45.958267>,  <39.286835, 32.889664, 46.006165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976303, 33.137199, 45.958267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332180, 0.563130, 0.756664,
		0.535690, 0.547646, -0.642744,
		-0.776333, 0.618844, -0.119746,
		38.743404, 33.322853, 45.922344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531868, 33.555672, 45.819477>,  <39.286835, 32.889664, 46.006165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531868, 33.555672, 45.819477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169537, 33.597328, 45.983734>,  <38.952137, 33.622322, 46.082287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169537, 33.597328, 45.983734>,  <39.531868, 33.555672, 45.819477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169537, 33.597328, 45.983734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340027, 0.756900, 0.558108,
		-0.252688, 0.645179, -0.721036,
		-0.905831, 0.104144, 0.410638,
		38.897789, 33.628571, 46.106926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644428, 34.168041, 45.942612>,  <39.531868, 33.555672, 45.819477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644428, 34.168041, 45.942612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322731, 34.043037, 46.144814>,  <39.129715, 33.968037, 46.266136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322731, 34.043037, 46.144814>,  <39.644428, 34.168041, 45.942612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322731, 34.043037, 46.144814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201696, 0.656579, 0.726789,
		-0.559031, 0.686472, -0.465017,
		-0.804241, -0.312505, 0.505506,
		39.081459, 33.949287, 46.296467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383022, 34.802074, 46.185879>,  <39.644428, 34.168041, 45.942612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383022, 34.802074, 46.185879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192535, 34.536983, 46.417049>,  <39.078243, 34.377930, 46.555752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192535, 34.536983, 46.417049>,  <39.383022, 34.802074, 46.185879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192535, 34.536983, 46.417049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295935, 0.498110, 0.815051,
		-0.828033, 0.559172, -0.041083,
		-0.476217, -0.662732, 0.577930,
		39.049671, 34.338165, 46.590427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167999, 35.144680, 46.709846>,  <39.383022, 34.802074, 46.185879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167999, 35.144680, 46.709846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124718, 34.777596, 46.862736>,  <39.098747, 34.557343, 46.954468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124718, 34.777596, 46.862736>,  <39.167999, 35.144680, 46.709846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124718, 34.777596, 46.862736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126084, 0.368705, 0.920956,
		-0.986100, 0.147845, 0.075813,
		-0.108206, -0.917714, 0.382221,
		39.092255, 34.502281, 46.977402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861221, 35.238712, 47.273182>,  <39.167999, 35.144680, 46.709846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861221, 35.238712, 47.273182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999630, 34.870132, 47.343826>,  <39.082676, 34.648983, 47.386211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999630, 34.870132, 47.343826>,  <38.861221, 35.238712, 47.273182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999630, 34.870132, 47.343826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250453, 0.272124, 0.929097,
		-0.904180, -0.277257, 0.324942,
		0.346023, -0.921454, 0.176609,
		39.103436, 34.593697, 47.396809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594406, 35.050217, 47.933968>,  <38.861221, 35.238712, 47.273182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594406, 35.050217, 47.933968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931206, 34.842525, 47.875397>,  <39.133286, 34.717911, 47.840256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931206, 34.842525, 47.875397>,  <38.594406, 35.050217, 47.933968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931206, 34.842525, 47.875397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351236, 0.321609, 0.879319,
		-0.409472, -0.791817, 0.453165,
		0.842001, -0.519224, -0.146425,
		39.183807, 34.686760, 47.831470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847988, 34.846348, 48.587975>,  <38.594406, 35.050217, 47.933968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847988, 34.846348, 48.587975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165981, 34.793686, 48.351105>,  <39.356777, 34.762089, 48.208981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165981, 34.793686, 48.351105>,  <38.847988, 34.846348, 48.587975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165981, 34.793686, 48.351105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566224, 0.511360, 0.646453,
		0.217706, -0.849222, 0.481067,
		0.794981, -0.131655, -0.592176,
		39.404476, 34.754189, 48.173450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285900, 34.368088, 48.912281>,  <38.847988, 34.846348, 48.587975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285900, 34.368088, 48.912281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511391, 34.587738, 48.665485>,  <39.646687, 34.719528, 48.517406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511391, 34.587738, 48.665485>,  <39.285900, 34.368088, 48.912281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511391, 34.587738, 48.665485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581352, 0.266839, 0.768652,
		0.586722, -0.791998, -0.168810,
		0.563726, 0.549123, -0.616990,
		39.680508, 34.752476, 48.480389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946846, 34.251873, 49.140934>,  <39.285900, 34.368088, 48.912281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946846, 34.251873, 49.140934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981907, 34.583347, 48.919811>,  <40.002945, 34.782234, 48.787140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981907, 34.583347, 48.919811>,  <39.946846, 34.251873, 49.140934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981907, 34.583347, 48.919811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675520, 0.358401, 0.644377,
		0.732113, -0.429912, -0.528380,
		0.087653, 0.828688, -0.552804,
		40.008202, 34.831955, 48.753971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638882, 34.500153, 49.270790>,  <39.946846, 34.251873, 49.140934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638882, 34.500153, 49.270790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458176, 34.827976, 49.129803>,  <40.349751, 35.024670, 49.045212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458176, 34.827976, 49.129803>,  <40.638882, 34.500153, 49.270790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458176, 34.827976, 49.129803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606261, 0.571865, 0.552647,
		0.654488, 0.035982, -0.755215,
		-0.451766, 0.819559, -0.352464,
		40.322647, 35.073845, 49.024063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123779, 34.986034, 49.340115>,  <40.638882, 34.500153, 49.270790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123779, 34.986034, 49.340115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806847, 35.211552, 49.246853>,  <40.616688, 35.346863, 49.190895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806847, 35.211552, 49.246853>,  <41.123779, 34.986034, 49.340115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806847, 35.211552, 49.246853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306192, 0.698008, 0.647326,
		0.527697, 0.441505, -0.725678,
		-0.792327, 0.563789, -0.233151,
		40.569149, 35.380688, 49.176907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446251, 35.627243, 49.201981>,  <41.123779, 34.986034, 49.340115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446251, 35.627243, 49.201981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076443, 35.673561, 49.347225>,  <40.854557, 35.701351, 49.434372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076443, 35.673561, 49.347225>,  <41.446251, 35.627243, 49.201981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076443, 35.673561, 49.347225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284764, 0.843085, 0.456198,
		-0.253308, 0.525167, -0.812425,
		-0.924524, 0.115791, 0.363109,
		40.799084, 35.708298, 49.456158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376717, 36.354404, 49.169739>,  <41.446251, 35.627243, 49.201981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376717, 36.354404, 49.169739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107090, 36.216316, 49.430954>,  <40.945316, 36.133461, 49.587685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107090, 36.216316, 49.430954>,  <41.376717, 36.354404, 49.169739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107090, 36.216316, 49.430954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308130, 0.672071, 0.673332,
		-0.671339, 0.655089, -0.346644,
		-0.674062, -0.345223, 0.653040,
		40.904873, 36.112751, 49.626865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164619, 36.946972, 49.631256>,  <41.376717, 36.354404, 49.169739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164619, 36.946972, 49.631256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492348, 37.142319, 49.511112>,  <41.688984, 37.259525, 49.439026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492348, 37.142319, 49.511112>,  <41.164619, 36.946972, 49.631256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492348, 37.142319, 49.511112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294817, -0.090454, -0.951263,
		-0.491731, 0.867940, 0.069867,
		0.819319, 0.488363, -0.300362,
		41.738144, 37.288826, 49.421005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953224, 37.479256, 49.200603>,  <41.164619, 36.946972, 49.631256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953224, 37.479256, 49.200603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339367, 37.404640, 49.127617>,  <41.571053, 37.359871, 49.083824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339367, 37.404640, 49.127617>,  <40.953224, 37.479256, 49.200603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339367, 37.404640, 49.127617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178352, 0.038757, -0.983203,
		0.190480, 0.981682, 0.004145,
		0.965354, -0.186541, -0.182468,
		41.628975, 37.348679, 49.072876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113712, 37.863468, 48.643501>,  <40.953224, 37.479256, 49.200603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113712, 37.863468, 48.643501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410896, 37.595875, 48.634769>,  <41.589207, 37.435318, 48.629532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410896, 37.595875, 48.634769>,  <41.113712, 37.863468, 48.643501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410896, 37.595875, 48.634769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161037, -0.146999, -0.975940,
		0.649675, 0.728600, -0.216945,
		0.742960, -0.668980, -0.021830,
		41.633785, 37.395180, 48.628220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427319, 38.103966, 48.004787>,  <41.113712, 37.863468, 48.643501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427319, 38.103966, 48.004787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549969, 37.732544, 48.088463>,  <41.623558, 37.509689, 48.138668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549969, 37.732544, 48.088463>,  <41.427319, 38.103966, 48.004787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549969, 37.732544, 48.088463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110083, -0.252896, -0.961210,
		0.945441, 0.271708, -0.179764,
		0.306630, -0.928557, 0.209188,
		41.641956, 37.453976, 48.151218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044117, 37.841850, 47.646225>,  <41.427319, 38.103966, 48.004787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044117, 37.841850, 47.646225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825176, 37.519554, 47.736721>,  <41.693813, 37.326176, 47.791019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825176, 37.519554, 47.736721>,  <42.044117, 37.841850, 47.646225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825176, 37.519554, 47.736721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028451, -0.288087, -0.957181,
		0.836418, -0.517479, 0.180610,
		-0.547353, -0.805742, 0.226239,
		41.660969, 37.277832, 47.804592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224373, 37.435135, 47.061283>,  <42.044117, 37.841850, 47.646225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224373, 37.435135, 47.061283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908325, 37.238880, 47.208248>,  <41.718697, 37.121128, 47.296429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908325, 37.238880, 47.208248>,  <42.224373, 37.435135, 47.061283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908325, 37.238880, 47.208248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139542, -0.439699, -0.887239,
		0.596864, -0.752291, 0.278948,
		-0.790115, -0.490635, 0.367417,
		41.671291, 37.091690, 47.318474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101669, 37.035484, 46.582901>,  <42.224373, 37.435135, 47.061283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101669, 37.035484, 46.582901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766190, 36.944366, 46.780769>,  <41.564903, 36.889698, 46.899490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766190, 36.944366, 46.780769>,  <42.101669, 37.035484, 46.582901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766190, 36.944366, 46.780769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392911, -0.375863, -0.839254,
		0.377103, -0.898241, 0.225733,
		-0.838698, -0.227792, 0.494668,
		41.514580, 36.876030, 46.929169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988289, 36.315090, 46.447971>,  <42.101669, 37.035484, 46.582901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988289, 36.315090, 46.447971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633526, 36.451504, 46.572617>,  <41.420670, 36.533352, 46.647404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633526, 36.451504, 46.572617>,  <41.988289, 36.315090, 46.447971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633526, 36.451504, 46.572617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440120, -0.418857, -0.794263,
		-0.140347, -0.841581, 0.521579,
		-0.886903, 0.341030, 0.311611,
		41.367455, 36.553814, 46.666100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625950, 35.726799, 46.407509>,  <41.988289, 36.315090, 46.447971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625950, 35.726799, 46.407509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370991, 36.035000, 46.410187>,  <41.218014, 36.219921, 46.411793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370991, 36.035000, 46.410187>,  <41.625950, 35.726799, 46.407509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370991, 36.035000, 46.410187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555062, -0.453113, -0.697564,
		-0.534447, -0.448338, 0.716491,
		-0.637396, 0.770508, 0.006690,
		41.179771, 36.266151, 46.412193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968998, 35.400276, 46.518097>,  <41.625950, 35.726799, 46.407509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968998, 35.400276, 46.518097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903866, 35.760921, 46.357803>,  <40.864784, 35.977306, 46.261627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903866, 35.760921, 46.357803>,  <40.968998, 35.400276, 46.518097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903866, 35.760921, 46.357803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508120, -0.424779, -0.749251,
		-0.845754, 0.081617, 0.527293,
		-0.162832, 0.901610, -0.400730,
		40.855015, 36.031406, 46.237583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285889, 35.412910, 46.386070>,  <40.968998, 35.400276, 46.518097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285889, 35.412910, 46.386070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439705, 35.691929, 46.144226>,  <40.531994, 35.859341, 45.999119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439705, 35.691929, 46.144226>,  <40.285889, 35.412910, 46.386070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439705, 35.691929, 46.144226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539106, -0.361974, -0.760486,
		-0.749329, 0.618389, 0.236857,
		0.384541, 0.697545, -0.604615,
		40.555069, 35.901192, 45.962841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721424, 35.471039, 45.966606>,  <40.285889, 35.412910, 46.386070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721424, 35.471039, 45.966606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029999, 35.642586, 45.778580>,  <40.215145, 35.745514, 45.665764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029999, 35.642586, 45.778580>,  <39.721424, 35.471039, 45.966606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029999, 35.642586, 45.778580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335756, -0.353168, -0.873235,
		-0.540512, 0.831473, -0.128453,
		0.771437, 0.428865, -0.470064,
		40.261429, 35.771244, 45.637562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424889, 36.008389, 45.498718>,  <39.721424, 35.471039, 45.966606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424889, 36.008389, 45.498718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782722, 35.884285, 45.370060>,  <39.997421, 35.809822, 45.292866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782722, 35.884285, 45.370060>,  <39.424889, 36.008389, 45.498718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782722, 35.884285, 45.370060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394825, -0.211519, -0.894077,
		0.209362, 0.926822, -0.311720,
		0.894584, -0.310260, -0.321648,
		40.051098, 35.791206, 45.273567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394695, 36.260513, 44.867111>,  <39.424889, 36.008389, 45.498718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394695, 36.260513, 44.867111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700661, 36.003654, 44.846912>,  <39.884239, 35.849537, 44.834793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700661, 36.003654, 44.846912>,  <39.394695, 36.260513, 44.867111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700661, 36.003654, 44.846912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306808, -0.294283, -0.905133,
		0.566371, 0.707842, -0.422118,
		0.764913, -0.642151, -0.050498,
		39.930134, 35.811008, 44.831764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715961, 36.353413, 44.244480>,  <39.394695, 36.260513, 44.867111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715961, 36.353413, 44.244480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802643, 35.980225, 44.359451>,  <39.854652, 35.756313, 44.428432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802643, 35.980225, 44.359451>,  <39.715961, 36.353413, 44.244480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802643, 35.980225, 44.359451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268510, -0.340031, -0.901267,
		0.938585, 0.118130, -0.324196,
		0.216703, -0.932965, 0.287429,
		39.867653, 35.700336, 44.445679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087433, 36.037239, 43.686310>,  <39.715961, 36.353413, 44.244480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087433, 36.037239, 43.686310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970860, 35.718258, 43.897640>,  <39.900913, 35.526867, 44.024441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970860, 35.718258, 43.897640>,  <40.087433, 36.037239, 43.686310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970860, 35.718258, 43.897640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138581, -0.511280, -0.848167,
		0.946499, -0.320402, 0.038493,
		-0.291435, -0.797455, 0.528328,
		39.883430, 35.479023, 44.056137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411530, 35.428127, 43.459064>,  <40.087433, 36.037239, 43.686310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411530, 35.428127, 43.459064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075909, 35.282227, 43.620533>,  <39.874535, 35.194687, 43.717415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075909, 35.282227, 43.620533>,  <40.411530, 35.428127, 43.459064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075909, 35.282227, 43.620533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140632, -0.571343, -0.808573,
		0.525557, -0.735205, 0.428092,
		-0.839055, -0.364748, 0.403667,
		39.824192, 35.172802, 43.741634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370823, 34.687778, 43.200428>,  <40.411530, 35.428127, 43.459064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370823, 34.687778, 43.200428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003124, 34.766029, 43.337078>,  <39.782505, 34.812981, 43.419067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003124, 34.766029, 43.337078>,  <40.370823, 34.687778, 43.200428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003124, 34.766029, 43.337078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390758, -0.558833, -0.731446,
		0.047824, -0.805876, 0.590150,
		-0.919250, 0.195625, 0.341628,
		39.727348, 34.824718, 43.439568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991779, 34.082428, 43.221828>,  <40.370823, 34.687778, 43.200428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991779, 34.082428, 43.221828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690941, 34.345840, 43.211357>,  <39.510437, 34.503887, 43.205074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690941, 34.345840, 43.211357>,  <39.991779, 34.082428, 43.221828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690941, 34.345840, 43.211357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423964, -0.513844, -0.745800,
		-0.504564, -0.549834, 0.665656,
		-0.752110, 0.658518, -0.026157,
		39.465313, 34.543400, 43.203503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334454, 33.658443, 43.143284>,  <39.991779, 34.082428, 43.221828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334454, 33.658443, 43.143284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248074, 34.031010, 43.026093>,  <39.196247, 34.254547, 42.955780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248074, 34.031010, 43.026093>,  <39.334454, 33.658443, 43.143284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248074, 34.031010, 43.026093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525464, -0.363761, -0.769133,
		-0.822954, -0.012147, 0.567978,
		-0.215951, 0.931413, -0.292976,
		39.183289, 34.310432, 42.938198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645039, 33.644241, 43.017719>,  <39.334454, 33.658443, 43.143284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645039, 33.644241, 43.017719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773441, 33.967083, 42.819511>,  <38.850483, 34.160786, 42.700584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773441, 33.967083, 42.819511>,  <38.645039, 33.644241, 43.017719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773441, 33.967083, 42.819511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605682, -0.227278, -0.762557,
		-0.728082, 0.544916, 0.415889,
		0.321007, 0.807100, -0.495523,
		38.869743, 34.209213, 42.670853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039665, 34.067780, 42.758659>,  <38.645039, 33.644241, 43.017719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039665, 34.067780, 42.758659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342857, 34.182507, 42.524326>,  <38.524773, 34.251343, 42.383724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342857, 34.182507, 42.524326>,  <38.039665, 34.067780, 42.758659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342857, 34.182507, 42.524326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503577, -0.313536, -0.805050,
		-0.414587, 0.905223, -0.093216,
		0.757976, 0.286822, -0.585837,
		38.570251, 34.268555, 42.348576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643623, 34.423115, 42.156376>,  <38.039665, 34.067780, 42.758659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643623, 34.423115, 42.156376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015411, 34.338566, 42.035442>,  <38.238483, 34.287838, 41.962883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015411, 34.338566, 42.035442>,  <37.643623, 34.423115, 42.156376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015411, 34.338566, 42.035442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351537, -0.259082, -0.899610,
		0.111825, 0.942443, -0.315115,
		0.929471, -0.211373, -0.302332,
		38.294254, 34.275154, 41.944744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665211, 34.666264, 41.486301>,  <37.643623, 34.423115, 42.156376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665211, 34.666264, 41.486301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007885, 34.460686, 41.504009>,  <38.213490, 34.337341, 41.514633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007885, 34.460686, 41.504009>,  <37.665211, 34.666264, 41.486301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007885, 34.460686, 41.504009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192175, -0.397623, -0.897198,
		0.478712, 0.760105, -0.439404,
		0.856682, -0.513942, 0.044273,
		38.264889, 34.306503, 41.517292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208435, 34.853203, 40.985668>,  <37.665211, 34.666264, 41.486301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208435, 34.853203, 40.985668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334980, 34.483387, 41.070656>,  <38.410908, 34.261497, 41.121651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334980, 34.483387, 41.070656>,  <38.208435, 34.853203, 40.985668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334980, 34.483387, 41.070656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009056, -0.221022, -0.975227,
		0.948596, 0.310448, -0.061550,
		0.316361, -0.924538, 0.212472,
		38.429890, 34.206024, 41.134396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814014, 34.735756, 40.655540>,  <38.208435, 34.853203, 40.985668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814014, 34.735756, 40.655540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732098, 34.352509, 40.735611>,  <38.682949, 34.122559, 40.783653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732098, 34.352509, 40.735611>,  <38.814014, 34.735756, 40.655540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732098, 34.352509, 40.735611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347120, -0.262312, -0.900389,
		0.915187, -0.114908, 0.386302,
		-0.204793, -0.958117, 0.200178,
		38.670658, 34.065075, 40.795666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455025, 34.331188, 40.531857>,  <38.814014, 34.735756, 40.655540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455025, 34.331188, 40.531857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133812, 34.093140, 40.519444>,  <38.941082, 33.950310, 40.511997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133812, 34.093140, 40.519444>,  <39.455025, 34.331188, 40.531857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133812, 34.093140, 40.519444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264701, -0.309556, -0.913295,
		0.533919, -0.741621, 0.406114,
		-0.803034, -0.595124, -0.031030,
		38.892902, 33.914604, 40.510136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717075, 33.737465, 40.185650>,  <39.455025, 34.331188, 40.531857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717075, 33.737465, 40.185650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322086, 33.688381, 40.145954>,  <39.085094, 33.658932, 40.122135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322086, 33.688381, 40.145954>,  <39.717075, 33.737465, 40.185650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322086, 33.688381, 40.145954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132592, -0.304065, -0.943379,
		0.085583, -0.944716, 0.316524,
		-0.987469, -0.122706, -0.099239,
		39.025845, 33.651569, 40.116184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583382, 33.012863, 39.832916>,  <39.717075, 33.737465, 40.185650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583382, 33.012863, 39.832916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242615, 33.216492, 39.783791>,  <39.038155, 33.338669, 39.754314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242615, 33.216492, 39.783791>,  <39.583382, 33.012863, 39.832916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242615, 33.216492, 39.783791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027693, -0.190409, -0.981314,
		-0.522944, -0.839400, 0.148115,
		-0.851917, 0.509070, -0.122819,
		38.987038, 33.369213, 39.746944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239044, 32.520153, 39.351948>,  <39.583382, 33.012863, 39.832916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239044, 32.520153, 39.351948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067577, 32.881474, 39.345211>,  <38.964695, 33.098267, 39.341167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067577, 32.881474, 39.345211>,  <39.239044, 32.520153, 39.351948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067577, 32.881474, 39.345211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016561, -0.010786, -0.999805,
		-0.903309, -0.428866, -0.010336,
		-0.428671, 0.903304, -0.016845,
		38.938976, 33.152466, 39.340157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854027, 32.529716, 38.785049>,  <39.239044, 32.520153, 39.351948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854027, 32.529716, 38.785049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912941, 32.917923, 38.861378>,  <38.948288, 33.150845, 38.907173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912941, 32.917923, 38.861378>,  <38.854027, 32.529716, 38.785049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912941, 32.917923, 38.861378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213346, 0.157206, -0.964246,
		-0.965811, 0.182730, -0.183900,
		0.147287, 0.970513, 0.190816,
		38.957127, 33.209076, 38.918621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528229, 32.890327, 38.233521>,  <38.854027, 32.529716, 38.785049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528229, 32.890327, 38.233521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743759, 33.183784, 38.399139>,  <38.873077, 33.359859, 38.498512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743759, 33.183784, 38.399139>,  <38.528229, 32.890327, 38.233521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743759, 33.183784, 38.399139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175801, 0.382749, -0.906971,
		-0.823872, 0.561486, 0.077258,
		0.538822, 0.733646, 0.414046,
		38.905407, 33.403877, 38.523354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443165, 33.377876, 37.805847>,  <38.528229, 32.890327, 38.233521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443165, 33.377876, 37.805847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776794, 33.501911, 37.988350>,  <38.976971, 33.576332, 38.097851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776794, 33.501911, 37.988350>,  <38.443165, 33.377876, 37.805847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776794, 33.501911, 37.988350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297005, 0.444558, -0.845078,
		-0.464880, 0.840366, 0.278696,
		0.834071, 0.310086, 0.456259,
		39.027016, 33.594936, 38.125229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544395, 34.057911, 37.629467>,  <38.443165, 33.377876, 37.805847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544395, 34.057911, 37.629467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909813, 33.946178, 37.747734>,  <39.129063, 33.879139, 37.818695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909813, 33.946178, 37.747734>,  <38.544395, 34.057911, 37.629467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909813, 33.946178, 37.747734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406471, 0.600192, -0.688876,
		0.014966, 0.749497, 0.661839,
		0.913541, -0.279328, 0.295666,
		39.183876, 33.862381, 37.836433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971325, 34.644558, 37.375565>,  <38.544395, 34.057911, 37.629467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971325, 34.644558, 37.375565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247726, 34.372513, 37.473518>,  <39.413567, 34.209286, 37.532291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247726, 34.372513, 37.473518>,  <38.971325, 34.644558, 37.375565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247726, 34.372513, 37.473518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561222, 0.291258, -0.774725,
		0.455572, 0.672772, 0.582951,
		0.691002, -0.680108, 0.244885,
		39.455029, 34.168480, 37.546986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685200, 35.003242, 37.316090>,  <38.971325, 34.644558, 37.375565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685200, 35.003242, 37.316090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727482, 34.608631, 37.266140>,  <39.752850, 34.371864, 37.236168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727482, 34.608631, 37.266140>,  <39.685200, 35.003242, 37.316090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727482, 34.608631, 37.266140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564738, 0.162919, -0.809029,
		0.818473, 0.014995, 0.574349,
		0.105704, -0.986525, -0.124877,
		39.759193, 34.312672, 37.228676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296841, 34.844181, 37.173500>,  <39.685200, 35.003242, 37.316090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296841, 34.844181, 37.173500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136387, 34.509518, 37.024319>,  <40.040115, 34.308720, 36.934811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136387, 34.509518, 37.024319>,  <40.296841, 34.844181, 37.173500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136387, 34.509518, 37.024319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399888, 0.206361, -0.893031,
		0.824124, -0.507368, 0.251790,
		-0.401136, -0.836656, -0.372957,
		40.016045, 34.258522, 36.912430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865238, 34.430767, 36.845371>,  <40.296841, 34.844181, 37.173500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865238, 34.430767, 36.845371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532925, 34.277462, 36.683926>,  <40.333534, 34.185478, 36.587059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532925, 34.277462, 36.683926>,  <40.865238, 34.430767, 36.845371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532925, 34.277462, 36.683926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424639, 0.032360, -0.904784,
		0.359828, -0.923074, 0.135863,
		-0.830786, -0.383260, -0.403617,
		40.283688, 34.162483, 36.562840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106339, 33.950878, 36.388256>,  <40.865238, 34.430767, 36.845371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106339, 33.950878, 36.388256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732136, 34.026787, 36.269054>,  <40.507614, 34.072334, 36.197533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732136, 34.026787, 36.269054>,  <41.106339, 33.950878, 36.388256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732136, 34.026787, 36.269054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328594, 0.157469, -0.931252,
		-0.129802, -0.969118, -0.209673,
		-0.935509, 0.189775, -0.298006,
		40.451485, 34.083717, 36.179653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093372, 33.590202, 35.859303>,  <41.106339, 33.950878, 36.388256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093372, 33.590202, 35.859303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807182, 33.866669, 35.818546>,  <40.635468, 34.032547, 35.794094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807182, 33.866669, 35.818546>,  <41.093372, 33.590202, 35.859303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807182, 33.866669, 35.818546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439139, 0.331492, -0.835027,
		-0.543368, -0.642185, -0.540694,
		-0.715477, 0.691167, -0.101887,
		40.592541, 34.074020, 35.787979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718655, 33.524681, 35.236778>,  <41.093372, 33.590202, 35.859303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718655, 33.524681, 35.236778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664986, 33.911846, 35.321758>,  <40.632782, 34.144146, 35.372746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664986, 33.911846, 35.321758>,  <40.718655, 33.524681, 35.236778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664986, 33.911846, 35.321758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389587, 0.248645, -0.886791,
		-0.911164, -0.036218, -0.410449,
		-0.134174, 0.967917, 0.212446,
		40.624733, 34.202221, 35.385490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414558, 33.265945, 35.184498>,  <40.718655, 33.524681, 35.236778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414558, 33.265945, 35.184498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604637, 33.544651, 34.969570>,  <41.718685, 33.711872, 34.840614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604637, 33.544651, 34.969570>,  <41.414558, 33.265945, 35.184498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604637, 33.544651, 34.969570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794557, -0.077472, 0.602227,
		0.377981, -0.713107, -0.590431,
		0.475194, 0.696762, -0.537321,
		41.747196, 33.753681, 34.808372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079586, 33.095661, 35.047935>,  <41.414558, 33.265945, 35.184498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079586, 33.095661, 35.047935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108212, 33.494003, 35.025455>,  <42.125385, 33.733009, 35.011967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108212, 33.494003, 35.025455>,  <42.079586, 33.095661, 35.047935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108212, 33.494003, 35.025455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819313, -0.026555, 0.572732,
		0.568864, -0.087026, -0.817814,
		0.071559, 0.995852, -0.056196,
		42.129681, 33.792759, 35.008598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560211, 33.571041, 34.540405>,  <42.079586, 33.095661, 35.047935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560211, 33.571041, 34.540405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509693, 33.704391, 34.914124>,  <42.479382, 33.784401, 35.138355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509693, 33.704391, 34.914124>,  <42.560211, 33.571041, 34.540405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509693, 33.704391, 34.914124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952203, -0.223331, 0.208405,
		0.278134, 0.915961, -0.289235,
		-0.126296, 0.333375, 0.934297,
		42.471806, 33.804405, 35.194412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028122, 34.039940, 34.714127>,  <42.560211, 33.571041, 34.540405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028122, 34.039940, 34.714127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926022, 33.883873, 35.067989>,  <42.864761, 33.790234, 35.280308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926022, 33.883873, 35.067989>,  <43.028122, 34.039940, 34.714127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926022, 33.883873, 35.067989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966848, -0.096256, 0.236515,
		-0.007126, 0.915701, 0.401798,
		-0.255252, -0.390163, 0.884658,
		42.849445, 33.766823, 35.333385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636215, 33.746029, 34.975151>,  <43.028122, 34.039940, 34.714127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636215, 33.746029, 34.975151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778675, 33.616306, 35.325691>,  <43.864151, 33.538475, 35.536015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778675, 33.616306, 35.325691>,  <43.636215, 33.746029, 34.975151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778675, 33.616306, 35.325691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706475, 0.707284, -0.025369,
		-0.611600, 0.628153, 0.481009,
		0.356145, -0.324305, 0.876349,
		43.885517, 33.519016, 35.588596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214554, 34.007961, 35.331982>,  <43.636215, 33.746029, 34.975151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214554, 34.007961, 35.331982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285515, 34.230629, 35.656609>,  <44.328091, 34.364231, 35.851387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285515, 34.230629, 35.656609>,  <44.214554, 34.007961, 35.331982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285515, 34.230629, 35.656609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538498, 0.745154, -0.393403,
		-0.823741, -0.367240, 0.431955,
		0.177400, 0.556669, 0.811572,
		44.338734, 34.397629, 35.900082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599205, 34.321434, 35.461777>,  <44.214554, 34.007961, 35.331982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599205, 34.321434, 35.461777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902802, 34.536610, 35.608505>,  <44.084961, 34.665714, 35.696541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902802, 34.536610, 35.608505>,  <43.599205, 34.321434, 35.461777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902802, 34.536610, 35.608505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514559, 0.840774, -0.168312,
		-0.398953, -0.061003, 0.914940,
		0.758990, 0.537939, 0.366819,
		44.130497, 34.697990, 35.718552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352673, 34.871571, 35.912811>,  <43.599205, 34.321434, 35.461777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352673, 34.871571, 35.912811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709492, 34.994614, 35.780373>,  <43.923584, 35.068439, 35.700909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709492, 34.994614, 35.780373>,  <43.352673, 34.871571, 35.912811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709492, 34.994614, 35.780373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389623, 0.894669, -0.218544,
		0.228998, 0.323956, 0.917939,
		0.892051, 0.307604, -0.331098,
		43.977108, 35.086895, 35.681042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473061, 35.499172, 36.392200>,  <43.352673, 34.871571, 35.912811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473061, 35.499172, 36.392200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693668, 35.475624, 36.059368>,  <43.826035, 35.461494, 35.859669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693668, 35.475624, 36.059368>,  <43.473061, 35.499172, 36.392200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693668, 35.475624, 36.059368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220599, 0.951700, -0.213548,
		0.804464, 0.301332, 0.511895,
		0.551519, -0.058868, -0.832082,
		43.859123, 35.457962, 35.809742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741711, 36.244488, 36.300877>,  <43.473061, 35.499172, 36.392200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741711, 36.244488, 36.300877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801682, 36.075718, 35.943218>,  <43.837662, 35.974457, 35.728622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801682, 36.075718, 35.943218>,  <43.741711, 36.244488, 36.300877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801682, 36.075718, 35.943218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323844, 0.833527, -0.447614,
		0.934157, 0.356673, -0.011671,
		0.149923, -0.421921, -0.894151,
		43.846657, 35.949142, 35.674973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064209, 36.768005, 35.917244>,  <43.741711, 36.244488, 36.300877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064209, 36.768005, 35.917244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924034, 36.518745, 35.637566>,  <43.839928, 36.369190, 35.469757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924034, 36.518745, 35.637566>,  <44.064209, 36.768005, 35.917244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924034, 36.518745, 35.637566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364156, 0.778457, -0.511267,
		0.862891, 0.075449, -0.499726,
		-0.350441, -0.623147, -0.699199,
		43.818901, 36.331802, 35.427807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082829, 37.188217, 35.192760>,  <44.064209, 36.768005, 35.917244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082829, 37.188217, 35.192760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826378, 36.883141, 35.158672>,  <43.672508, 36.700096, 35.138218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826378, 36.883141, 35.158672>,  <44.082829, 37.188217, 35.192760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826378, 36.883141, 35.158672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596173, 0.564894, -0.570503,
		0.483257, -0.314958, -0.816863,
		-0.641125, -0.762690, -0.085220,
		43.634041, 36.654331, 35.133106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842297, 37.250523, 34.500973>,  <44.082829, 37.188217, 35.192760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842297, 37.250523, 34.500973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570759, 37.021244, 34.684544>,  <43.407837, 36.883678, 34.794685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570759, 37.021244, 34.684544>,  <43.842297, 37.250523, 34.500973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570759, 37.021244, 34.684544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733168, 0.563511, -0.380684,
		-0.040403, -0.594896, -0.802787,
		-0.678847, -0.573196, 0.458926,
		43.367104, 36.849285, 34.822220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485668, 36.953609, 33.989075>,  <43.842297, 37.250523, 34.500973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485668, 36.953609, 33.989075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255840, 36.997818, 34.313457>,  <43.117943, 37.024342, 34.508087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255840, 36.997818, 34.313457>,  <43.485668, 36.953609, 33.989075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255840, 36.997818, 34.313457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691164, 0.465168, -0.553093,
		-0.438358, -0.878297, -0.190887,
		-0.574574, 0.110518, 0.810957,
		43.083469, 37.030975, 34.556744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790489, 36.847538, 33.711437>,  <43.485668, 36.953609, 33.989075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790489, 36.847538, 33.711437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730400, 37.022793, 34.065945>,  <42.694347, 37.127945, 34.278648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730400, 37.022793, 34.065945>,  <42.790489, 36.847538, 33.711437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730400, 37.022793, 34.065945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594429, 0.676281, -0.435084,
		-0.789992, -0.592183, 0.158846,
		-0.150225, 0.438135, 0.886267,
		42.685333, 37.154232, 34.331825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059158, 36.857903, 33.808044>,  <42.790489, 36.847538, 33.711437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059158, 36.857903, 33.808044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244072, 37.138268, 34.025303>,  <42.355022, 37.306488, 34.155659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244072, 37.138268, 34.025303>,  <42.059158, 36.857903, 33.808044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244072, 37.138268, 34.025303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643393, 0.686642, -0.338480,
		-0.610194, -0.192984, 0.768388,
		0.462287, 0.700913, 0.543149,
		42.382759, 37.348541, 34.188248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526848, 37.331833, 33.758831>,  <42.059158, 36.857903, 33.808044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526848, 37.331833, 33.758831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820522, 37.538059, 33.935539>,  <41.996727, 37.661793, 34.041565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820522, 37.538059, 33.935539>,  <41.526848, 37.331833, 33.758831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820522, 37.538059, 33.935539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545771, 0.835197, -0.067678,
		-0.403861, -0.191420, 0.894569,
		0.734186, 0.515563, 0.441775,
		42.040779, 37.692726, 34.068073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146481, 37.819874, 34.217480>,  <41.526848, 37.331833, 33.758831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146481, 37.819874, 34.217480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519600, 37.958580, 34.178219>,  <41.743473, 38.041805, 34.154663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519600, 37.958580, 34.178219>,  <41.146481, 37.819874, 34.217480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519600, 37.958580, 34.178219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335955, 0.935260, 0.111460,
		0.130452, -0.070993, 0.988910,
		0.932801, 0.346769, -0.098156,
		41.799438, 38.062611, 34.148773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217670, 38.318348, 34.718239>,  <41.146481, 37.819874, 34.217480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217670, 38.318348, 34.718239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497246, 38.398102, 34.443508>,  <41.664989, 38.445953, 34.278671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497246, 38.398102, 34.443508>,  <41.217670, 38.318348, 34.718239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497246, 38.398102, 34.443508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225856, 0.972743, 0.052543,
		0.678582, 0.118400, 0.724920,
		0.698939, 0.199382, -0.686827,
		41.706928, 38.457916, 34.237461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631718, 38.833958, 35.008293>,  <41.217670, 38.318348, 34.718239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631718, 38.833958, 35.008293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692955, 38.852966, 34.613464>,  <41.729698, 38.864372, 34.376568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692955, 38.852966, 34.613464>,  <41.631718, 38.833958, 35.008293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692955, 38.852966, 34.613464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355141, 0.934758, -0.010076,
		0.922192, 0.352091, 0.159980,
		0.153090, 0.047524, -0.987069,
		41.738880, 38.867222, 34.317345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794346, 39.538105, 34.946877>,  <41.631718, 38.833958, 35.008293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794346, 39.538105, 34.946877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708332, 39.416813, 34.575542>,  <41.656723, 39.344036, 34.352741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708332, 39.416813, 34.575542>,  <41.794346, 39.538105, 34.946877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708332, 39.416813, 34.575542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279621, 0.929895, -0.238971,
		0.935719, 0.208194, -0.284753,
		-0.215038, -0.303233, -0.928336,
		41.643822, 39.325844, 34.297043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253117, 39.987682, 34.378864>,  <41.794346, 39.538105, 34.946877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253117, 39.987682, 34.378864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942616, 39.837772, 34.176094>,  <41.756313, 39.747826, 34.054432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942616, 39.837772, 34.176094>,  <42.253117, 39.987682, 34.378864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942616, 39.837772, 34.176094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250682, 0.921302, -0.297257,
		0.578436, -0.103669, -0.809113,
		-0.776253, -0.374775, -0.506927,
		41.709740, 39.725342, 34.024017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334206, 40.332439, 33.785667>,  <42.253117, 39.987682, 34.378864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334206, 40.332439, 33.785667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953098, 40.219200, 33.829647>,  <41.724434, 40.151257, 33.856033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953098, 40.219200, 33.829647>,  <42.334206, 40.332439, 33.785667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953098, 40.219200, 33.829647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303698, 0.888404, -0.344247,
		-0.000225, -0.361379, -0.932419,
		-0.952768, -0.283097, 0.109950,
		41.667267, 40.134270, 33.862633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062038, 40.677010, 33.268574>,  <42.334206, 40.332439, 33.785667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062038, 40.677010, 33.268574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726730, 40.590839, 33.468933>,  <41.525547, 40.539139, 33.589149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726730, 40.590839, 33.468933>,  <42.062038, 40.677010, 33.268574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726730, 40.590839, 33.468933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306812, 0.945770, -0.106705,
		-0.450750, -0.243129, -0.858902,
		-0.838266, -0.215424, 0.500901,
		41.475250, 40.526211, 33.619202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430672, 40.955578, 32.794678>,  <42.062038, 40.677010, 33.268574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430672, 40.955578, 32.794678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334423, 40.914627, 33.180759>,  <41.276672, 40.890057, 33.412407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334423, 40.914627, 33.180759>,  <41.430672, 40.955578, 32.794678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334423, 40.914627, 33.180759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384696, 0.923041, 0.001996,
		-0.891127, -0.370830, -0.261490,
		-0.240626, -0.102373, 0.965204,
		41.262234, 40.883915, 33.470322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767025, 41.412655, 32.889229>,  <41.430672, 40.955578, 32.794678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767025, 41.412655, 32.889229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902294, 41.355633, 33.261318>,  <40.983456, 41.321419, 33.484573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902294, 41.355633, 33.261318>,  <40.767025, 41.412655, 32.889229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902294, 41.355633, 33.261318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471529, 0.829765, 0.298581,
		-0.814434, -0.539598, 0.213379,
		0.338168, -0.142560, 0.930225,
		41.003746, 41.312866, 33.540386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189892, 41.572281, 33.326904>,  <40.767025, 41.412655, 32.889229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189892, 41.572281, 33.326904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520863, 41.617695, 33.546898>,  <40.719444, 41.644943, 33.678894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520863, 41.617695, 33.546898>,  <40.189892, 41.572281, 33.326904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520863, 41.617695, 33.546898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376957, 0.838218, 0.394074,
		-0.416262, -0.533386, 0.736360,
		0.827423, 0.113538, 0.549982,
		40.769089, 41.651756, 33.711891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051136, 41.728607, 34.037434>,  <40.189892, 41.572281, 33.326904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051136, 41.728607, 34.037434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395313, 41.903320, 33.932476>,  <40.601822, 42.008148, 33.869503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395313, 41.903320, 33.932476>,  <40.051136, 41.728607, 34.037434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395313, 41.903320, 33.932476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307288, 0.855592, 0.416578,
		0.406457, -0.277812, 0.870410,
		0.860446, 0.436787, -0.262393,
		40.653446, 42.034355, 33.853760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370243, 41.967278, 34.672390>,  <40.051136, 41.728607, 34.037434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370243, 41.967278, 34.672390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504162, 42.192429, 34.370110>,  <40.584511, 42.327518, 34.188740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504162, 42.192429, 34.370110>,  <40.370243, 41.967278, 34.672390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504162, 42.192429, 34.370110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378584, 0.814758, 0.439140,
		0.862895, 0.139076, 0.485870,
		0.334793, 0.562875, -0.755702,
		40.604599, 42.361290, 34.143398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791126, 41.515114, 35.162270>,  <40.370243, 41.967278, 34.672390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791126, 41.515114, 35.162270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585716, 41.840687, 35.270939>,  <40.462471, 42.036030, 35.336140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585716, 41.840687, 35.270939>,  <40.791126, 41.515114, 35.162270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585716, 41.840687, 35.270939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811612, 0.357967, 0.461677,
		0.278521, 0.457581, -0.844421,
		-0.513529, 0.813929, 0.271677,
		40.431656, 42.084866, 35.352444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226685, 42.038185, 35.016167>,  <40.791126, 41.515114, 35.162270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226685, 42.038185, 35.016167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983761, 42.201565, 35.288738>,  <40.838005, 42.299591, 35.452282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983761, 42.201565, 35.288738>,  <41.226685, 42.038185, 35.016167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983761, 42.201565, 35.288738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794230, 0.291341, 0.533216,
		0.019262, 0.865039, -0.501335,
		-0.607312, 0.408446, 0.681428,
		40.801567, 42.324100, 35.493168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478855, 42.739677, 35.242241>,  <41.226685, 42.038185, 35.016167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478855, 42.739677, 35.242241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209816, 42.636303, 35.519608>,  <41.048393, 42.574276, 35.686028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209816, 42.636303, 35.519608>,  <41.478855, 42.739677, 35.242241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209816, 42.636303, 35.519608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664544, 0.201309, 0.719622,
		-0.325569, 0.944820, 0.036344,
		-0.672597, -0.258439, 0.693414,
		41.008038, 42.558773, 35.727631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633694, 43.121063, 35.800022>,  <41.478855, 42.739677, 35.242241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633694, 43.121063, 35.800022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412342, 42.826458, 35.955616>,  <41.279530, 42.649693, 36.048973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412342, 42.826458, 35.955616>,  <41.633694, 43.121063, 35.800022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412342, 42.826458, 35.955616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539361, 0.039013, 0.841171,
		-0.634711, 0.675294, 0.375659,
		-0.553382, -0.736516, 0.388989,
		41.246326, 42.605503, 36.072311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207081, 43.438801, 36.327370>,  <41.633694, 43.121063, 35.800022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207081, 43.438801, 36.327370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289459, 43.049313, 36.366276>,  <41.338886, 42.815620, 36.389622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289459, 43.049313, 36.366276>,  <41.207081, 43.438801, 36.327370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289459, 43.049313, 36.366276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314862, 0.160052, 0.935546,
		-0.926525, -0.162046, 0.339548,
		0.205947, -0.973717, 0.097270,
		41.351242, 42.757198, 36.395458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835644, 43.221184, 36.906155>,  <41.207081, 43.438801, 36.327370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835644, 43.221184, 36.906155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189930, 43.058788, 36.816105>,  <41.402504, 42.961353, 36.762077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189930, 43.058788, 36.816105>,  <40.835644, 43.221184, 36.906155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189930, 43.058788, 36.816105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352609, 0.272940, 0.895081,
		-0.301947, -0.872169, 0.384902,
		0.885717, -0.405987, -0.225121,
		41.455647, 42.936993, 36.748569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558174, 43.170036, 37.641403>,  <40.835644, 43.221184, 36.906155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558174, 43.170036, 37.641403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590748, 42.809971, 37.812553>,  <40.610294, 42.593933, 37.915245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590748, 42.809971, 37.812553>,  <40.558174, 43.170036, 37.641403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590748, 42.809971, 37.812553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908153, -0.109859, -0.403968,
		0.410642, 0.421475, 0.808537,
		0.081437, -0.900161, 0.427876,
		40.615177, 42.539921, 37.940918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239033, 43.179031, 37.859230>,  <40.558174, 43.170036, 37.641403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239033, 43.179031, 37.859230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114044, 42.799274, 37.871994>,  <41.039051, 42.571419, 37.879654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114044, 42.799274, 37.871994>,  <41.239033, 43.179031, 37.859230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114044, 42.799274, 37.871994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905051, -0.307743, -0.293558,
		0.288522, -0.062846, 0.955408,
		-0.312469, -0.949392, 0.031912,
		41.020302, 42.514458, 37.881569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842644, 42.883095, 38.179790>,  <41.239033, 43.179031, 37.859230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842644, 42.883095, 38.179790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650421, 42.570057, 38.021492>,  <41.535088, 42.382236, 37.926514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650421, 42.570057, 38.021492>,  <41.842644, 42.883095, 38.179790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650421, 42.570057, 38.021492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876900, -0.434206, -0.206186,
		-0.010475, -0.446111, 0.894916,
		-0.480559, -0.782592, -0.395743,
		41.506252, 42.335278, 37.902767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041859, 42.401562, 38.600502>,  <41.842644, 42.883095, 38.179790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041859, 42.401562, 38.600502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935944, 42.241234, 38.249680>,  <41.872395, 42.145039, 38.039185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935944, 42.241234, 38.249680>,  <42.041859, 42.401562, 38.600502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935944, 42.241234, 38.249680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816927, -0.576496, 0.016827,
		-0.512364, -0.712036, 0.480091,
		-0.264789, -0.400821, -0.877057,
		41.856506, 42.120987, 37.986561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168610, 41.684425, 38.678295>,  <42.041859, 42.401562, 38.600502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168610, 41.684425, 38.678295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151924, 41.715069, 38.279819>,  <42.141911, 41.733456, 38.040733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151924, 41.715069, 38.279819>,  <42.168610, 41.684425, 38.678295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151924, 41.715069, 38.279819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813757, -0.575897, -0.078364,
		-0.579706, -0.813925, -0.038315,
		-0.041717, 0.076607, -0.996188,
		42.139408, 41.738052, 37.980965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433334, 40.992535, 38.428089>,  <42.168610, 41.684425, 38.678295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433334, 40.992535, 38.428089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439400, 41.195202, 38.083286>,  <42.443039, 41.316803, 37.876404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439400, 41.195202, 38.083286>,  <42.433334, 40.992535, 38.428089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439400, 41.195202, 38.083286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725926, -0.598436, -0.338978,
		-0.687606, -0.620616, -0.376874,
		0.015160, 0.506666, -0.862009,
		42.443947, 41.347202, 37.824684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477409, 40.421253, 37.936550>,  <42.433334, 40.992535, 38.428089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477409, 40.421253, 37.936550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586857, 40.751469, 37.739117>,  <42.652527, 40.949596, 37.620659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586857, 40.751469, 37.739117>,  <42.477409, 40.421253, 37.936550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586857, 40.751469, 37.739117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764220, -0.498194, -0.409596,
		-0.584036, -0.265130, -0.767208,
		0.273623, 0.825535, -0.493581,
		42.668945, 40.999130, 37.591042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557526, 40.221378, 37.194592>,  <42.477409, 40.421253, 37.936550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557526, 40.221378, 37.194592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754871, 40.566410, 37.239403>,  <42.873280, 40.773430, 37.266289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754871, 40.566410, 37.239403>,  <42.557526, 40.221378, 37.194592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754871, 40.566410, 37.239403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771897, -0.374803, -0.513515,
		-0.400960, 0.339822, -0.850736,
		0.493362, 0.862580, 0.112026,
		42.902882, 40.825184, 37.273010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569031, 40.415577, 36.556946>,  <42.557526, 40.221378, 37.194592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569031, 40.415577, 36.556946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867405, 40.611610, 36.737343>,  <43.046429, 40.729229, 36.845581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867405, 40.611610, 36.737343>,  <42.569031, 40.415577, 36.556946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867405, 40.611610, 36.737343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661666, -0.468068, -0.585756,
		-0.075974, 0.735344, -0.673422,
		0.745939, 0.490083, 0.450991,
		43.091187, 40.758636, 36.872639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073475, 40.551640, 36.130344>,  <42.569031, 40.415577, 36.556946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073475, 40.551640, 36.130344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299736, 40.596191, 36.457180>,  <43.435493, 40.622925, 36.653282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299736, 40.596191, 36.457180>,  <43.073475, 40.551640, 36.130344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299736, 40.596191, 36.457180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744425, -0.495247, -0.447841,
		0.354777, 0.861582, -0.363056,
		0.565654, 0.111384, 0.817086,
		43.469433, 40.629608, 36.702305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782093, 40.620766, 35.930073>,  <43.073475, 40.551640, 36.130344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782093, 40.620766, 35.930073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803684, 40.493717, 36.308746>,  <43.816639, 40.417488, 36.535950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803684, 40.493717, 36.308746>,  <43.782093, 40.620766, 35.930073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803684, 40.493717, 36.308746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713441, -0.651048, -0.259112,
		0.698633, 0.689387, 0.191462,
		0.053978, -0.317621, 0.946680,
		43.819878, 40.398430, 36.592751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446152, 40.485405, 35.946426>,  <43.782093, 40.620766, 35.930073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446152, 40.485405, 35.946426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349426, 40.304367, 36.289749>,  <44.291389, 40.195744, 36.495743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349426, 40.304367, 36.289749>,  <44.446152, 40.485405, 35.946426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349426, 40.304367, 36.289749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596870, -0.766790, -0.236176,
		0.765032, 0.455186, 0.455558,
		-0.241813, -0.452591, 0.858305,
		44.276882, 40.168591, 36.547241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041306, 40.322765, 36.250534>,  <44.446152, 40.485405, 35.946426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041306, 40.322765, 36.250534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766613, 40.065407, 36.385853>,  <44.601799, 39.910992, 36.467045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766613, 40.065407, 36.385853>,  <45.041306, 40.322765, 36.250534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766613, 40.065407, 36.385853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631384, -0.758571, -0.161010,
		0.360219, 0.103028, 0.927161,
		-0.686729, -0.643394, 0.338302,
		44.560593, 39.872387, 36.487343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437485, 39.786854, 36.640057>,  <45.041306, 40.322765, 36.250534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437485, 39.786854, 36.640057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083260, 39.618328, 36.561802>,  <44.870724, 39.517212, 36.514847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083260, 39.618328, 36.561802>,  <45.437485, 39.786854, 36.640057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083260, 39.618328, 36.561802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455210, -0.870985, -0.184846,
		-0.092521, -0.252750, 0.963098,
		-0.885564, -0.421310, -0.195639,
		44.817589, 39.491936, 36.503109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.359634, 39.120289, 37.080620>,  <45.437485, 39.786854, 36.640057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.359634, 39.120289, 37.080620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108932, 39.098034, 36.769730>,  <44.958511, 39.084682, 36.583195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108932, 39.098034, 36.769730>,  <45.359634, 39.120289, 37.080620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108932, 39.098034, 36.769730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374240, -0.896371, -0.237618,
		-0.683463, -0.439798, 0.582628,
		-0.626755, -0.055639, -0.777227,
		44.920906, 39.081341, 36.536560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.035553, 38.459484, 37.206768>,  <45.359634, 39.120289, 37.080620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.035553, 38.459484, 37.206768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.013535, 38.550415, 36.817863>,  <45.000324, 38.604973, 36.584522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.013535, 38.550415, 36.817863>,  <45.035553, 38.459484, 37.206768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.013535, 38.550415, 36.817863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310614, -0.921524, -0.233052,
		-0.948941, -0.314826, -0.019884,
		-0.055047, 0.227329, -0.972261,
		44.997021, 38.618614, 36.526184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789459, 37.855629, 36.826347>,  <45.035553, 38.459484, 37.206768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789459, 37.855629, 36.826347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.947704, 38.061829, 36.522305>,  <45.042652, 38.185547, 36.339878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.947704, 38.061829, 36.522305>,  <44.789459, 37.855629, 36.826347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947704, 38.061829, 36.522305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383708, -0.844701, -0.373159,
		-0.834421, -0.144031, -0.531974,
		0.395613, 0.515495, -0.760102,
		45.066387, 38.216476, 36.294273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.598015, 37.310966, 36.257996>,  <44.789459, 37.855629, 36.826347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.598015, 37.310966, 36.257996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907021, 37.540401, 36.149025>,  <45.092422, 37.678062, 36.083641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907021, 37.540401, 36.149025>,  <44.598015, 37.310966, 36.257996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907021, 37.540401, 36.149025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439400, -0.792584, -0.422775,
		-0.458419, 0.206897, -0.864318,
		0.772516, 0.573589, -0.272425,
		45.138775, 37.712479, 36.067299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.729263, 37.176273, 35.517971>,  <44.598015, 37.310966, 36.257996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.729263, 37.176273, 35.517971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058617, 37.325668, 35.688873>,  <45.256229, 37.415306, 35.791416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058617, 37.325668, 35.688873>,  <44.729263, 37.176273, 35.517971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058617, 37.325668, 35.688873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538810, -0.750817, -0.382044,
		0.178105, 0.544780, -0.819447,
		0.823384, 0.373483, 0.427257,
		45.305634, 37.437714, 35.817051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220699, 37.055027, 35.024925>,  <44.729263, 37.176273, 35.517971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220699, 37.055027, 35.024925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450821, 37.124393, 35.344666>,  <45.588894, 37.166012, 35.536510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450821, 37.124393, 35.344666>,  <45.220699, 37.055027, 35.024925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450821, 37.124393, 35.344666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592728, -0.761831, -0.261318,
		0.563650, 0.624132, -0.541071,
		0.575302, 0.173416, 0.799346,
		45.623413, 37.176418, 35.584469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.895016, 37.179165, 34.760567>,  <45.220699, 37.055027, 35.024925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.895016, 37.179165, 34.760567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943310, 37.092178, 35.147995>,  <45.972286, 37.039986, 35.380451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943310, 37.092178, 35.147995>,  <45.895016, 37.179165, 34.760567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943310, 37.092178, 35.147995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655001, -0.715713, -0.242338,
		0.745920, 0.663674, 0.056031,
		0.120731, -0.217465, 0.968573,
		45.979530, 37.026939, 35.438568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.644691, 37.176456, 34.892612>,  <45.895016, 37.179165, 34.760567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.644691, 37.176456, 34.892612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472271, 36.965851, 35.185726>,  <46.368816, 36.839489, 35.361595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472271, 36.965851, 35.185726>,  <46.644691, 37.176456, 34.892612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.472271, 36.965851, 35.185726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572988, -0.787077, -0.228463,
		0.697049, 0.321398, 0.640958,
		-0.431055, -0.526511, 0.732788,
		46.342953, 36.807896, 35.405563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.218754, 36.940533, 35.312939>,  <46.644691, 37.176456, 34.892612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.218754, 36.940533, 35.312939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.898888, 36.703037, 35.348732>,  <46.706966, 36.560539, 35.370209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.898888, 36.703037, 35.348732>,  <47.218754, 36.940533, 35.312939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.898888, 36.703037, 35.348732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582264, -0.803190, -0.125911,
		0.146628, -0.048586, 0.987998,
		-0.799668, -0.593738, 0.089480,
		46.658989, 36.524918, 35.375576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.394859, 36.530231, 35.756531>,  <47.218754, 36.940533, 35.312939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.394859, 36.530231, 35.756531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.119045, 36.344509, 35.534195>,  <46.953556, 36.233074, 35.400791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.119045, 36.344509, 35.534195>,  <47.394859, 36.530231, 35.756531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.119045, 36.344509, 35.534195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622681, -0.772008, -0.127567,
		-0.369884, -0.434074, 0.821441,
		-0.689532, -0.464311, -0.555843,
		46.912186, 36.205215, 35.367443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.352200, 35.864864, 36.025856>,  <47.394859, 36.530231, 35.756531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.352200, 35.864864, 36.025856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226933, 35.867348, 35.645985>,  <47.151772, 35.868839, 35.418060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226933, 35.867348, 35.645985>,  <47.352200, 35.864864, 36.025856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.226933, 35.867348, 35.645985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594303, -0.778701, -0.201068,
		-0.740765, -0.627364, 0.240171,
		-0.313165, 0.006210, -0.949678,
		47.132984, 35.869209, 35.361080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203754, 35.228809, 35.695446>,  <47.352200, 35.864864, 36.025856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203754, 35.228809, 35.695446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.311844, 35.457508, 35.385586>,  <47.376698, 35.594727, 35.199669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.311844, 35.457508, 35.385586>,  <47.203754, 35.228809, 35.695446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.311844, 35.457508, 35.385586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589703, -0.734292, -0.336252,
		-0.761070, -0.365947, -0.535589,
		0.270228, 0.571750, -0.774648,
		47.392914, 35.629032, 35.153191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.378616, 34.682777, 35.276855>,  <47.203754, 35.228809, 35.695446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.378616, 34.682777, 35.276855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538242, 35.005444, 35.102478>,  <47.634018, 35.199043, 34.997852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538242, 35.005444, 35.102478>,  <47.378616, 34.682777, 35.276855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.538242, 35.005444, 35.102478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709669, -0.572782, -0.410233,
		-0.580620, -0.145668, -0.801037,
		0.399062, 0.806661, -0.435945,
		47.657959, 35.247440, 34.971695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.874462, 39.827000, 42.681442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.497654, 39.762798, 42.799313>,  <38.271568, 39.724277, 42.870037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.497654, 39.762798, 42.799313>,  <38.874462, 39.827000, 42.681442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497654, 39.762798, 42.799313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292853, -0.035456, -0.955500,
		0.163809, -0.986398, -0.013604,
		-0.942021, -0.160504, 0.294678,
		38.215046, 39.714645, 42.887714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640991, 39.374443, 42.150814>,  <38.874462, 39.827000, 42.681442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640991, 39.374443, 42.150814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.305096, 39.509541, 42.320885>,  <38.103558, 39.590599, 42.422928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.305096, 39.509541, 42.320885>,  <38.640991, 39.374443, 42.150814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305096, 39.509541, 42.320885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472001, -0.066939, -0.879053,
		-0.268432, -0.938856, 0.215625,
		-0.839738, 0.337741, 0.425172,
		38.053173, 39.610863, 42.448437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036430, 38.916809, 41.939785>,  <38.640991, 39.374443, 42.150814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036430, 38.916809, 41.939785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.856842, 39.259403, 42.041660>,  <37.749088, 39.464958, 42.102787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.856842, 39.259403, 42.041660>,  <38.036430, 38.916809, 41.939785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856842, 39.259403, 42.041660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636172, -0.106235, -0.764199,
		-0.627465, -0.505128, 0.592565,
		-0.448969, 0.856481, 0.254689,
		37.722153, 39.516346, 42.118069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432461, 38.691784, 42.005161>,  <38.036430, 38.916809, 41.939785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432461, 38.691784, 42.005161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441200, 39.081928, 41.917355>,  <37.446445, 39.316017, 41.864670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441200, 39.081928, 41.917355>,  <37.432461, 38.691784, 42.005161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441200, 39.081928, 41.917355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524950, -0.175673, -0.832807,
		-0.850853, 0.133435, 0.508178,
		0.021853, 0.975363, -0.219519,
		37.447758, 39.374538, 41.851498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790314, 38.804138, 41.758957>,  <37.432461, 38.691784, 42.005161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790314, 38.804138, 41.758957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004387, 39.109535, 41.614368>,  <37.132832, 39.292774, 41.527615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004387, 39.109535, 41.614368>,  <36.790314, 38.804138, 41.758957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004387, 39.109535, 41.614368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413182, -0.136628, -0.900341,
		-0.736789, 0.631199, 0.242340,
		0.535184, 0.763492, -0.361467,
		37.164944, 39.338581, 41.505928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245441, 39.268818, 41.550541>,  <36.790314, 38.804138, 41.758957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245441, 39.268818, 41.550541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590908, 39.343403, 41.363220>,  <36.798187, 39.388153, 41.250828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590908, 39.343403, 41.363220>,  <36.245441, 39.268818, 41.550541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590908, 39.343403, 41.363220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459965, -0.088468, -0.883519,
		-0.206169, 0.978471, 0.009357,
		0.863670, 0.186458, -0.468302,
		36.850010, 39.399342, 41.222729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990108, 39.760674, 41.016579>,  <36.245441, 39.268818, 41.550541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990108, 39.760674, 41.016579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363335, 39.663765, 40.910229>,  <36.587273, 39.605621, 40.846420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363335, 39.663765, 40.910229>,  <35.990108, 39.760674, 41.016579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363335, 39.663765, 40.910229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291738, -0.077350, -0.953366,
		0.210408, 0.967120, -0.142853,
		0.933069, -0.242271, -0.265871,
		36.643257, 39.591084, 40.830467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094536, 40.155632, 40.318886>,  <35.990108, 39.760674, 41.016579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094536, 40.155632, 40.318886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329731, 39.835049, 40.362591>,  <36.470848, 39.642700, 40.388813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329731, 39.835049, 40.362591>,  <36.094536, 40.155632, 40.318886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329731, 39.835049, 40.362591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114945, -0.216494, -0.969494,
		0.800664, 0.557488, -0.219419,
		0.587984, -0.801460, 0.109259,
		36.506126, 39.594612, 40.395367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633778, 40.162766, 39.781155>,  <36.094536, 40.155632, 40.318886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633778, 40.162766, 39.781155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.615864, 39.773903, 39.873161>,  <36.605118, 39.540585, 39.928364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.615864, 39.773903, 39.873161>,  <36.633778, 40.162766, 39.781155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615864, 39.773903, 39.873161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035081, -0.231637, -0.972170,
		0.998381, -0.035466, 0.044478,
		-0.044782, -0.972156, 0.230018,
		36.602428, 39.482258, 39.942165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109440, 39.838104, 39.301453>,  <36.633778, 40.162766, 39.781155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109440, 39.838104, 39.301453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899910, 39.517483, 39.416771>,  <36.774193, 39.325111, 39.485962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899910, 39.517483, 39.416771>,  <37.109440, 39.838104, 39.301453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899910, 39.517483, 39.416771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162014, -0.426020, -0.890089,
		0.836274, -0.419546, 0.353024,
		-0.523829, -0.801553, 0.288298,
		36.742760, 39.277016, 39.503262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475590, 39.112549, 39.161018>,  <37.109440, 39.838104, 39.301453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475590, 39.112549, 39.161018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.091072, 39.012531, 39.207317>,  <36.860363, 38.952518, 39.235096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.091072, 39.012531, 39.207317>,  <37.475590, 39.112549, 39.161018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091072, 39.012531, 39.207317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025502, -0.499029, -0.866210,
		0.274357, -0.829727, 0.486088,
		-0.961290, -0.250047, 0.115752,
		36.802685, 38.937519, 39.242043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505951, 38.507240, 39.003384>,  <37.475590, 39.112549, 39.161018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505951, 38.507240, 39.003384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.114101, 38.584591, 38.981712>,  <36.878990, 38.631001, 38.968708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.114101, 38.584591, 38.981712>,  <37.505951, 38.507240, 39.003384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114101, 38.584591, 38.981712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077226, -0.611804, -0.787231,
		-0.185376, -0.767010, 0.614274,
		-0.979628, 0.193372, -0.054180,
		36.820213, 38.642601, 38.965458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145123, 37.897129, 38.885635>,  <37.505951, 38.507240, 39.003384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145123, 37.897129, 38.885635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909348, 38.191711, 38.752853>,  <36.767883, 38.368462, 38.673183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909348, 38.191711, 38.752853>,  <37.145123, 37.897129, 38.885635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909348, 38.191711, 38.752853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231543, -0.547710, -0.803991,
		-0.773919, -0.397043, 0.493363,
		-0.589438, 0.736458, -0.331950,
		36.732517, 38.412647, 38.653267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640659, 37.542717, 38.628571>,  <37.145123, 37.897129, 38.885635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640659, 37.542717, 38.628571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590855, 37.900219, 38.456203>,  <36.560970, 38.114719, 38.352783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590855, 37.900219, 38.456203>,  <36.640659, 37.542717, 38.628571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590855, 37.900219, 38.456203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337323, -0.446563, -0.828731,
		-0.933118, 0.042172, 0.357087,
		-0.124513, 0.893758, -0.430922,
		36.553501, 38.168346, 38.326927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013897, 37.398224, 38.317516>,  <36.640659, 37.542717, 38.628571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013897, 37.398224, 38.317516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.201260, 37.706654, 38.144981>,  <36.313675, 37.891712, 38.041462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.201260, 37.706654, 38.144981>,  <36.013897, 37.398224, 38.317516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201260, 37.706654, 38.144981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236365, -0.361043, -0.902097,
		-0.851311, 0.524497, 0.013140,
		0.468403, 0.771071, -0.431333,
		36.341782, 37.937977, 38.015583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714287, 37.419701, 37.716534>,  <36.013897, 37.398224, 38.317516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714287, 37.419701, 37.716534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.001411, 37.679939, 37.617355>,  <36.173687, 37.836082, 37.557850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.001411, 37.679939, 37.617355>,  <35.714287, 37.419701, 37.716534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001411, 37.679939, 37.617355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073611, -0.425041, -0.902176,
		-0.692336, 0.629340, -0.352990,
		0.717811, 0.650593, -0.247945,
		36.216755, 37.875118, 37.542973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617561, 37.760872, 37.093899>,  <35.714287, 37.419701, 37.716534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617561, 37.760872, 37.093899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.015202, 37.779778, 37.132961>,  <36.253784, 37.791122, 37.156399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.015202, 37.779778, 37.132961>,  <35.617561, 37.760872, 37.093899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015202, 37.779778, 37.132961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107721, -0.537191, -0.836554,
		0.012918, 0.842135, -0.539111,
		0.994097, 0.047266, 0.097655,
		36.313431, 37.793957, 37.162258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893761, 38.066090, 36.458588>,  <35.617561, 37.760872, 37.093899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893761, 38.066090, 36.458588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203091, 37.869907, 36.619293>,  <36.388691, 37.752197, 36.715717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203091, 37.869907, 36.619293>,  <35.893761, 38.066090, 36.458588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203091, 37.869907, 36.619293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047774, -0.586821, -0.808306,
		0.632202, 0.644281, -0.430375,
		0.773330, -0.490452, 0.401769,
		36.435089, 37.722771, 36.739822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411304, 37.991829, 35.896538>,  <35.893761, 38.066090, 36.458588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411304, 37.991829, 35.896538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.508003, 37.710136, 36.163555>,  <36.566021, 37.541119, 36.323765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.508003, 37.710136, 36.163555>,  <36.411304, 37.991829, 35.896538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508003, 37.710136, 36.163555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184566, -0.642018, -0.744142,
		0.952626, 0.303097, -0.025226,
		0.241744, -0.704233, 0.667545,
		36.580524, 37.498867, 36.363819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874588, 37.665943, 35.525410>,  <36.411304, 37.991829, 35.896538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874588, 37.665943, 35.525410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791195, 37.417786, 35.827839>,  <36.741158, 37.268890, 36.009296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791195, 37.417786, 35.827839>,  <36.874588, 37.665943, 35.525410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791195, 37.417786, 35.827839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112807, -0.752650, -0.648685,
		0.971498, -0.220531, 0.086931,
		-0.208484, -0.620390, 0.756076,
		36.728649, 37.231670, 36.054661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435863, 37.146938, 35.526016>,  <36.874588, 37.665943, 35.525410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435863, 37.146938, 35.526016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.108257, 36.995861, 35.698784>,  <36.911694, 36.905216, 35.802444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.108257, 36.995861, 35.698784>,  <37.435863, 37.146938, 35.526016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108257, 36.995861, 35.698784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039292, -0.714099, -0.698941,
		0.572418, -0.589418, 0.570021,
		-0.819020, -0.377689, 0.431923,
		36.862553, 36.882553, 35.828362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524353, 36.400574, 35.583206>,  <37.435863, 37.146938, 35.526016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524353, 36.400574, 35.583206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.130718, 36.471615, 35.585426>,  <36.894539, 36.514240, 35.586758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.130718, 36.471615, 35.585426>,  <37.524353, 36.400574, 35.583206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130718, 36.471615, 35.585426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135622, -0.730576, -0.669227,
		-0.114799, -0.659331, 0.743037,
		-0.984087, 0.177599, 0.005550,
		36.835491, 36.524895, 35.587090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167290, 36.423077, 35.243782>,  <37.524353, 36.400574, 35.583206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167290, 36.423077, 35.243782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.551643, 36.326088, 35.190262>,  <38.782257, 36.267895, 35.158150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.551643, 36.326088, 35.190262>,  <38.167290, 36.423077, 35.243782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551643, 36.326088, 35.190262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093992, -0.168930, 0.981136,
		-0.260499, -0.955338, -0.139533,
		0.960888, -0.242470, -0.133800,
		38.839909, 36.253349, 35.150124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296284, 35.884762, 35.608589>,  <38.167290, 36.423077, 35.243782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296284, 35.884762, 35.608589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.658768, 36.045692, 35.556557>,  <38.876259, 36.142250, 35.525337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.658768, 36.045692, 35.556557>,  <38.296284, 35.884762, 35.608589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658768, 36.045692, 35.556557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194769, -0.124125, 0.972964,
		0.375307, -0.907041, -0.190845,
		0.906206, 0.402330, -0.130078,
		38.930630, 36.166393, 35.517532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778999, 35.378502, 35.953362>,  <38.296284, 35.884762, 35.608589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778999, 35.378502, 35.953362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.937000, 35.745785, 35.941605>,  <39.031803, 35.966156, 35.934551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.937000, 35.745785, 35.941605>,  <38.778999, 35.378502, 35.953362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937000, 35.745785, 35.941605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175494, -0.044014, 0.983496,
		0.901761, -0.393644, -0.178526,
		0.395005, 0.918209, -0.029392,
		39.055500, 36.021248, 35.932785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296185, 35.334774, 36.473785>,  <38.778999, 35.378502, 35.953362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296185, 35.334774, 36.473785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249870, 35.722614, 36.387558>,  <39.222084, 35.955318, 36.335823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249870, 35.722614, 36.387558>,  <39.296185, 35.334774, 36.473785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249870, 35.722614, 36.387558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161403, 0.232508, 0.959108,
		0.980073, 0.076255, -0.183417,
		-0.115783, 0.969600, -0.215567,
		39.215134, 36.013496, 36.322887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912487, 35.668556, 36.643028>,  <39.296185, 35.334774, 36.473785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912487, 35.668556, 36.643028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.635990, 35.957222, 36.657860>,  <39.470093, 36.130421, 36.666759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.635990, 35.957222, 36.657860>,  <39.912487, 35.668556, 36.643028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635990, 35.957222, 36.657860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302053, 0.241943, 0.922078,
		0.656463, 0.648581, -0.385224,
		-0.691245, 0.721669, 0.037080,
		39.428616, 36.173721, 36.668983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280128, 36.159477, 37.001827>,  <39.912487, 35.668556, 36.643028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280128, 36.159477, 37.001827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.895729, 36.264336, 37.037090>,  <39.665089, 36.327251, 37.058250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.895729, 36.264336, 37.037090>,  <40.280128, 36.159477, 37.001827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895729, 36.264336, 37.037090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203427, 0.454007, 0.867465,
		0.187373, 0.851563, -0.489625,
		-0.960994, 0.262142, 0.088162,
		39.607430, 36.342979, 37.063538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333527, 36.686913, 37.483372>,  <40.280128, 36.159477, 37.001827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333527, 36.686913, 37.483372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.941704, 36.611591, 37.455040>,  <39.706612, 36.566399, 37.438042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.941704, 36.611591, 37.455040>,  <40.333527, 36.686913, 37.483372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941704, 36.611591, 37.455040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128111, 0.312389, 0.941276,
		-0.155124, 0.931103, -0.330126,
		-0.979553, -0.188308, -0.070826,
		39.647839, 36.555099, 37.433792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879345, 37.362667, 37.612717>,  <40.333527, 36.686913, 37.483372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879345, 37.362667, 37.612717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.671417, 37.035645, 37.711830>,  <39.546661, 36.839432, 37.771297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.671417, 37.035645, 37.711830>,  <39.879345, 37.362667, 37.612717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671417, 37.035645, 37.711830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028199, 0.273472, 0.961467,
		-0.853813, 0.506773, -0.119101,
		-0.519816, -0.817554, 0.247784,
		39.515472, 36.790379, 37.786167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292427, 37.630260, 38.046547>,  <39.879345, 37.362667, 37.612717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292427, 37.630260, 38.046547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.296162, 37.238255, 38.126026>,  <39.298401, 37.003052, 38.173714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.296162, 37.238255, 38.126026>,  <39.292427, 37.630260, 38.046547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296162, 37.238255, 38.126026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151328, 0.195029, 0.969053,
		-0.988440, -0.039112, -0.146484,
		0.009333, -0.980017, 0.198694,
		39.298962, 36.944248, 38.185635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707317, 37.486847, 38.418568>,  <39.292427, 37.630260, 38.046547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707317, 37.486847, 38.418568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975986, 37.199356, 38.490444>,  <39.137188, 37.026863, 38.533569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975986, 37.199356, 38.490444>,  <38.707317, 37.486847, 38.418568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975986, 37.199356, 38.490444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097030, 0.155115, 0.983120,
		-0.734464, -0.677773, 0.034449,
		0.671676, -0.718723, 0.179691,
		39.177490, 36.983738, 38.544350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558853, 37.413074, 39.061638>,  <38.707317, 37.486847, 38.418568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558853, 37.413074, 39.061638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888443, 37.190815, 39.017246>,  <39.086197, 37.057461, 38.990612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888443, 37.190815, 39.017246>,  <38.558853, 37.413074, 39.061638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888443, 37.190815, 39.017246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115281, -0.027367, 0.992956,
		-0.554772, -0.830967, 0.041506,
		0.823977, -0.555649, -0.110977,
		39.135635, 37.024120, 38.983952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538948, 36.823971, 39.674706>,  <38.558853, 37.413074, 39.061638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538948, 36.823971, 39.674706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.921913, 36.857353, 39.564148>,  <39.151691, 36.877380, 39.497814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.921913, 36.857353, 39.564148>,  <38.538948, 36.823971, 39.674706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921913, 36.857353, 39.564148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281610, -0.058850, 0.957722,
		0.063659, -0.994773, -0.079845,
		0.957415, 0.083452, -0.276392,
		39.209137, 36.882389, 39.481232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925716, 36.317272, 40.072826>,  <38.538948, 36.823971, 39.674706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925716, 36.317272, 40.072826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.172874, 36.616322, 39.975441>,  <39.321167, 36.795750, 39.917011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.172874, 36.616322, 39.975441>,  <38.925716, 36.317272, 40.072826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172874, 36.616322, 39.975441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343704, 0.021664, 0.938828,
		0.707162, -0.663773, -0.243574,
		0.617892, 0.747621, -0.243461,
		39.358242, 36.840607, 39.902401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551079, 36.160324, 40.415890>,  <38.925716, 36.317272, 40.072826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551079, 36.160324, 40.415890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578659, 36.551632, 40.337669>,  <39.595207, 36.786415, 40.290737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578659, 36.551632, 40.337669>,  <39.551079, 36.160324, 40.415890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578659, 36.551632, 40.337669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240042, 0.173991, 0.955043,
		0.968311, -0.112794, -0.222828,
		0.068953, 0.978266, -0.195553,
		39.599346, 36.845112, 40.279003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223076, 36.351654, 40.645721>,  <39.551079, 36.160324, 40.415890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223076, 36.351654, 40.645721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.013374, 36.691936, 40.630466>,  <39.887554, 36.896107, 40.621315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.013374, 36.691936, 40.630466>,  <40.223076, 36.351654, 40.645721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013374, 36.691936, 40.630466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175782, 0.151926, 0.972635,
		0.833223, 0.503202, -0.229187,
		-0.524251, 0.850709, -0.038134,
		39.856098, 36.947151, 40.619026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620308, 36.736031, 41.149887>,  <40.223076, 36.351654, 40.645721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620308, 36.736031, 41.149887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.311096, 36.983063, 41.091892>,  <40.125568, 37.131283, 41.057095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.311096, 36.983063, 41.091892>,  <40.620308, 36.736031, 41.149887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311096, 36.983063, 41.091892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129595, 0.377472, 0.916908,
		0.620988, 0.690010, -0.371833,
		-0.773032, 0.617576, -0.144984,
		40.079185, 37.168335, 41.048397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878044, 37.405624, 41.185955>,  <40.620308, 36.736031, 41.149887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878044, 37.405624, 41.185955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.485584, 37.437557, 41.256351>,  <40.250107, 37.456715, 41.298588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.485584, 37.437557, 41.256351>,  <40.878044, 37.405624, 41.185955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485584, 37.437557, 41.256351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192277, 0.494462, 0.847666,
		-0.019350, 0.865526, -0.500490,
		-0.981150, 0.079830, 0.175989,
		40.191238, 37.461506, 41.309147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703091, 38.076569, 41.260979>,  <40.878044, 37.405624, 41.185955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703091, 38.076569, 41.260979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.403431, 37.894051, 41.453049>,  <40.223637, 37.784538, 41.568291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.403431, 37.894051, 41.453049>,  <40.703091, 38.076569, 41.260979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403431, 37.894051, 41.453049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173869, 0.564027, 0.807244,
		-0.639174, 0.688234, -0.343205,
		-0.749150, -0.456297, 0.480174,
		40.178684, 37.757160, 41.597099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.307552, 38.574627, 41.659565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.150047, 38.267799, 41.862167>,  <40.055542, 38.083702, 41.983730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.150047, 38.267799, 41.862167>,  <40.307552, 38.574627, 41.659565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150047, 38.267799, 41.862167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135464, 0.496586, 0.857352,
		-0.909174, 0.406211, -0.091629,
		-0.393767, -0.767069, 0.506510,
		40.031918, 38.037678, 42.014122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780289, 38.923969, 42.060940>,  <40.307552, 38.574627, 41.659565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780289, 38.923969, 42.060940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.849525, 38.562351, 42.217274>,  <39.891068, 38.345383, 42.311073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.849525, 38.562351, 42.217274>,  <39.780289, 38.923969, 42.060940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849525, 38.562351, 42.217274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271521, 0.425244, 0.863391,
		-0.946740, -0.043325, 0.319071,
		0.173089, -0.904041, 0.390832,
		39.901451, 38.291138, 42.334522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468006, 38.953712, 42.759190>,  <39.780289, 38.923969, 42.060940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468006, 38.953712, 42.759190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.729946, 38.651413, 42.760849>,  <39.887112, 38.470036, 42.761845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.729946, 38.651413, 42.760849>,  <39.468006, 38.953712, 42.759190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729946, 38.651413, 42.760849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244644, 0.217165, 0.944981,
		-0.715066, -0.617808, 0.327100,
		0.654851, -0.755747, 0.004144,
		39.926403, 38.424690, 42.762093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263069, 38.455254, 43.358208>,  <39.468006, 38.953712, 42.759190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263069, 38.455254, 43.358208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649204, 38.400124, 43.269558>,  <39.880886, 38.367046, 43.216366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649204, 38.400124, 43.269558>,  <39.263069, 38.455254, 43.358208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649204, 38.400124, 43.269558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246554, 0.203095, 0.947609,
		-0.085594, -0.969410, 0.230038,
		0.965342, -0.137826, -0.221628,
		39.938808, 38.358776, 43.203068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441158, 38.029602, 43.913616>,  <39.263069, 38.455254, 43.358208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441158, 38.029602, 43.913616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.774967, 38.173817, 43.746964>,  <39.975254, 38.260345, 43.646973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.774967, 38.173817, 43.746964>,  <39.441158, 38.029602, 43.913616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774967, 38.173817, 43.746964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265581, 0.399295, 0.877514,
		0.482735, -0.842956, 0.237469,
		0.834526, 0.360540, -0.416627,
		40.025326, 38.281979, 43.621975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889202, 37.981899, 44.456219>,  <39.441158, 38.029602, 43.913616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889202, 37.981899, 44.456219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069672, 38.235550, 44.205036>,  <40.177952, 38.387741, 44.054325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069672, 38.235550, 44.205036>,  <39.889202, 37.981899, 44.456219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069672, 38.235550, 44.205036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267718, 0.575065, 0.773064,
		0.851336, -0.516899, 0.089686,
		0.451171, 0.634126, -0.627956,
		40.205025, 38.425789, 44.016651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549641, 38.091396, 44.755287>,  <39.889202, 37.981899, 44.456219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549641, 38.091396, 44.755287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.462723, 38.403351, 44.520493>,  <40.410572, 38.590523, 44.379616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.462723, 38.403351, 44.520493>,  <40.549641, 38.091396, 44.755287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462723, 38.403351, 44.520493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285113, 0.625845, 0.725968,
		0.933539, -0.009613, -0.358347,
		-0.217291, 0.779889, -0.586991,
		40.397537, 38.637318, 44.344395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072651, 38.462227, 44.819954>,  <40.549641, 38.091396, 44.755287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072651, 38.462227, 44.819954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.786751, 38.712479, 44.694912>,  <40.615211, 38.862629, 44.619888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.786751, 38.712479, 44.694912>,  <41.072651, 38.462227, 44.819954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786751, 38.712479, 44.694912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205677, 0.615233, 0.761042,
		0.668457, 0.479657, -0.568414,
		-0.714747, 0.625634, -0.312602,
		40.572327, 38.900169, 44.601131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379345, 39.129986, 44.857498>,  <41.072651, 38.462227, 44.819954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379345, 39.129986, 44.857498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.981186, 39.148300, 44.891171>,  <40.742290, 39.159290, 44.911373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.981186, 39.148300, 44.891171>,  <41.379345, 39.129986, 44.857498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981186, 39.148300, 44.891171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095673, 0.425446, 0.899912,
		0.005393, 0.903825, -0.427869,
		-0.995398, 0.045789, 0.084177,
		40.682568, 39.162037, 44.916424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184448, 39.864918, 44.936386>,  <41.379345, 39.129986, 44.857498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184448, 39.864918, 44.936386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.902512, 39.643009, 45.113213>,  <40.733349, 39.509865, 45.219311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.902512, 39.643009, 45.113213>,  <41.184448, 39.864918, 44.936386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902512, 39.643009, 45.113213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190121, 0.452651, 0.871184,
		-0.683410, 0.698095, -0.213575,
		-0.704844, -0.554771, 0.442069,
		40.691059, 39.476578, 45.245834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856895, 40.347076, 45.372864>,  <41.184448, 39.864918, 44.936386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856895, 40.347076, 45.372864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.758934, 39.976784, 45.488129>,  <40.700157, 39.754608, 45.557289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.758934, 39.976784, 45.488129>,  <40.856895, 40.347076, 45.372864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758934, 39.976784, 45.488129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230883, 0.232979, 0.944677,
		-0.941655, 0.297890, 0.156678,
		-0.244907, -0.925733, 0.288164,
		40.685463, 39.699062, 45.574577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417477, 40.386452, 46.025791>,  <40.856895, 40.347076, 45.372864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417477, 40.386452, 46.025791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.565655, 40.015045, 46.035789>,  <40.654560, 39.792202, 46.041790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.565655, 40.015045, 46.035789>,  <40.417477, 40.386452, 46.025791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565655, 40.015045, 46.035789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336040, 0.159059, 0.928320,
		-0.865937, -0.335493, 0.370942,
		0.370446, -0.928518, 0.024996,
		40.676788, 39.736488, 46.043289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098965, 39.855927, 46.696297>,  <40.417477, 40.386452, 46.025791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098965, 39.855927, 46.696297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.439571, 39.670498, 46.598305>,  <40.643936, 39.559242, 46.539509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.439571, 39.670498, 46.598305>,  <40.098965, 39.855927, 46.696297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439571, 39.670498, 46.598305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237247, -0.076007, 0.968471,
		-0.467576, -0.882794, 0.045259,
		0.851520, -0.463571, -0.244979,
		40.695026, 39.531425, 46.524811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241245, 39.344357, 47.156326>,  <40.098965, 39.855927, 46.696297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241245, 39.344357, 47.156326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609692, 39.395603, 47.009285>,  <40.830757, 39.426353, 46.921059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609692, 39.395603, 47.009285>,  <40.241245, 39.344357, 47.156326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609692, 39.395603, 47.009285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360637, 0.074756, 0.929706,
		0.146599, -0.988936, 0.022653,
		0.921114, 0.128125, -0.367606,
		40.886024, 39.434040, 46.899002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674515, 39.064827, 47.580608>,  <40.241245, 39.344357, 47.156326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674515, 39.064827, 47.580608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.958778, 39.285770, 47.406315>,  <41.129337, 39.418339, 47.301739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.958778, 39.285770, 47.406315>,  <40.674515, 39.064827, 47.580608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958778, 39.285770, 47.406315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458285, 0.106472, 0.882405,
		0.533802, -0.826776, -0.177475,
		0.710655, 0.552363, -0.435734,
		41.171974, 39.451481, 47.275593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312511, 38.784698, 47.764771>,  <40.674515, 39.064827, 47.580608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312511, 38.784698, 47.764771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.414818, 39.158978, 47.667572>,  <41.476200, 39.383545, 47.609253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.414818, 39.158978, 47.667572>,  <41.312511, 38.784698, 47.764771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414818, 39.158978, 47.667572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391513, 0.129569, 0.911005,
		0.883913, -0.328140, -0.333200,
		0.255764, 0.935701, -0.242999,
		41.491547, 39.439690, 47.594673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847816, 38.914364, 48.266731>,  <41.312511, 38.784698, 47.764771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847816, 38.914364, 48.266731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.756241, 39.277374, 48.125885>,  <41.701294, 39.495182, 48.041378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.756241, 39.277374, 48.125885>,  <41.847816, 38.914364, 48.266731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756241, 39.277374, 48.125885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150276, 0.390337, 0.908325,
		0.961771, 0.155035, -0.225742,
		-0.228938, 0.907525, -0.352117,
		41.687561, 39.549633, 48.020248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406303, 39.337948, 48.397156>,  <41.847816, 38.914364, 48.266731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406303, 39.337948, 48.397156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.097816, 39.592033, 48.380531>,  <41.912724, 39.744484, 48.370556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.097816, 39.592033, 48.380531>,  <42.406303, 39.337948, 48.397156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097816, 39.592033, 48.380531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227406, 0.335899, 0.914034,
		0.594569, 0.695466, -0.403502,
		-0.771216, 0.635215, -0.041562,
		41.866451, 39.782597, 48.368061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629864, 39.978382, 48.753162>,  <42.406303, 39.337948, 48.397156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629864, 39.978382, 48.753162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.231812, 40.010273, 48.730003>,  <41.992981, 40.029408, 48.716106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.231812, 40.010273, 48.730003>,  <42.629864, 39.978382, 48.753162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231812, 40.010273, 48.730003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032375, 0.290381, 0.956363,
		0.093063, 0.953584, -0.286387,
		-0.995134, 0.079730, -0.057896,
		41.933273, 40.034191, 48.712635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422596, 40.670784, 48.925312>,  <42.629864, 39.978382, 48.753162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422596, 40.670784, 48.925312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.108749, 40.441055, 49.018719>,  <41.920441, 40.303219, 49.074764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.108749, 40.441055, 49.018719>,  <42.422596, 40.670784, 48.925312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108749, 40.441055, 49.018719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057846, 0.307198, 0.949886,
		-0.617281, 0.758802, -0.207809,
		-0.784614, -0.574325, 0.233521,
		41.873363, 40.268757, 49.088776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023415, 41.020081, 49.411022>,  <42.422596, 40.670784, 48.925312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023415, 41.020081, 49.411022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.854942, 40.659180, 49.447987>,  <41.753860, 40.442638, 49.470165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.854942, 40.659180, 49.447987>,  <42.023415, 41.020081, 49.411022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854942, 40.659180, 49.447987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096867, 0.146052, 0.984523,
		-0.901789, 0.405711, -0.148914,
		-0.421181, -0.902257, 0.092408,
		41.728588, 40.388504, 49.475708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608341, 41.107952, 49.965611>,  <42.023415, 41.020081, 49.411022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608341, 41.107952, 49.965611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.649082, 40.710041, 49.963123>,  <41.673527, 40.471294, 49.961632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.649082, 40.710041, 49.963123>,  <41.608341, 41.107952, 49.965611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649082, 40.710041, 49.963123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164549, 0.010682, 0.986311,
		-0.981096, -0.101485, 0.164778,
		0.101856, -0.994780, -0.006220,
		41.679638, 40.411606, 49.961258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265800, 40.830502, 50.621449>,  <41.608341, 41.107952, 49.965611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265800, 40.830502, 50.621449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.520409, 40.560226, 50.472702>,  <41.673172, 40.398060, 50.383453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.520409, 40.560226, 50.472702>,  <41.265800, 40.830502, 50.621449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520409, 40.560226, 50.472702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320615, -0.206709, 0.924380,
		-0.701463, -0.707612, 0.085062,
		0.636518, -0.675690, -0.371870,
		41.711365, 40.357521, 50.361141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133144, 40.356155, 50.943409>,  <41.265800, 40.830502, 50.621449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133144, 40.356155, 50.943409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.517559, 40.309589, 50.843128>,  <41.748207, 40.281651, 50.782959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.517559, 40.309589, 50.843128>,  <41.133144, 40.356155, 50.943409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517559, 40.309589, 50.843128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235216, -0.131932, 0.962947,
		-0.145193, -0.984397, -0.099405,
		0.961037, -0.116432, -0.250701,
		41.805870, 40.274666, 50.767918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326488, 40.192387, 51.068096>,  <41.133144, 40.356155, 50.943409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326488, 40.192387, 51.068096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953003, 40.334801, 51.053066>,  <39.728912, 40.420250, 51.044048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953003, 40.334801, 51.053066>,  <40.326488, 40.192387, 51.068096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953003, 40.334801, 51.053066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102811, -0.367193, -0.924445,
		-0.342928, -0.859308, 0.379459,
		-0.933718, 0.356031, -0.037575,
		39.672890, 40.441612, 51.041794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878960, 39.646832, 50.792728>,  <40.326488, 40.192387, 51.068096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878960, 39.646832, 50.792728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.703293, 39.999485, 50.723614>,  <39.597893, 40.211079, 50.682144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.703293, 39.999485, 50.723614>,  <39.878960, 39.646832, 50.792728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703293, 39.999485, 50.723614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232510, -0.297308, -0.926038,
		-0.867797, -0.366511, 0.335556,
		-0.439167, 0.881634, -0.172786,
		39.571541, 40.263973, 50.671780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260204, 39.394783, 50.418579>,  <39.878960, 39.646832, 50.792728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260204, 39.394783, 50.418579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.256687, 39.781780, 50.317486>,  <39.254578, 40.013981, 50.256828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.256687, 39.781780, 50.317486>,  <39.260204, 39.394783, 50.418579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256687, 39.781780, 50.317486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280071, -0.245011, -0.928186,
		-0.959939, 0.062622, 0.273122,
		-0.008794, 0.967496, -0.252734,
		39.254047, 40.072029, 50.241665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583218, 39.450340, 50.070393>,  <39.260204, 39.394783, 50.418579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583218, 39.450340, 50.070393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.803692, 39.766693, 49.964031>,  <38.935978, 39.956505, 49.900215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.803692, 39.766693, 49.964031>,  <38.583218, 39.450340, 50.070393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803692, 39.766693, 49.964031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208683, -0.177891, -0.961668,
		-0.807865, 0.585548, 0.066992,
		0.551185, 0.790878, -0.265906,
		38.969048, 40.003956, 49.884258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160236, 39.829281, 49.688004>,  <38.583218, 39.450340, 50.070393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160236, 39.829281, 49.688004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.538338, 39.910442, 49.585770>,  <38.765198, 39.959141, 49.524429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.538338, 39.910442, 49.585770>,  <38.160236, 39.829281, 49.688004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538338, 39.910442, 49.585770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285747, 0.136336, -0.948557,
		-0.157623, 0.969660, 0.186852,
		0.945253, 0.202907, -0.255588,
		38.821915, 39.971313, 49.509094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102501, 40.346264, 49.252174>,  <38.160236, 39.829281, 49.688004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102501, 40.346264, 49.252174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.466026, 40.196812, 49.177929>,  <38.684143, 40.107140, 49.133381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.466026, 40.196812, 49.177929>,  <38.102501, 40.346264, 49.252174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466026, 40.196812, 49.177929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141797, 0.141784, -0.979689,
		0.392361, 0.916677, 0.075876,
		0.908816, -0.373632, -0.185613,
		38.738670, 40.084721, 49.122246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390774, 40.743687, 48.752201>,  <38.102501, 40.346264, 49.252174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390774, 40.743687, 48.752201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.550995, 40.378311, 48.723381>,  <38.647125, 40.159084, 48.706089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.550995, 40.378311, 48.723381>,  <38.390774, 40.743687, 48.752201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550995, 40.378311, 48.723381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138732, 0.017265, -0.990179,
		0.905711, 0.406612, -0.119807,
		0.400551, -0.913438, -0.072047,
		38.671162, 40.104279, 48.701767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895359, 40.785698, 48.157257>,  <38.390774, 40.743687, 48.752201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895359, 40.785698, 48.157257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851704, 40.388577, 48.176933>,  <38.825508, 40.150303, 48.188740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851704, 40.388577, 48.176933>,  <38.895359, 40.785698, 48.157257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851704, 40.388577, 48.176933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020668, -0.051741, -0.998447,
		0.993811, -0.107956, 0.026166,
		-0.109142, -0.992808, 0.049189,
		38.818962, 40.090733, 48.191689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368511, 40.503521, 47.676044>,  <38.895359, 40.785698, 48.157257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368511, 40.503521, 47.676044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.113388, 40.198437, 47.718876>,  <38.960312, 40.015385, 47.744576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.113388, 40.198437, 47.718876>,  <39.368511, 40.503521, 47.676044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113388, 40.198437, 47.718876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066372, -0.084086, -0.994246,
		0.767328, -0.641248, 0.003009,
		-0.637811, -0.762713, 0.107083,
		38.922047, 39.969624, 47.750999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538513, 40.061695, 47.100773>,  <39.368511, 40.503521, 47.676044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538513, 40.061695, 47.100773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.183949, 39.912216, 47.210045>,  <38.971210, 39.822529, 47.275608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.183949, 39.912216, 47.210045>,  <39.538513, 40.061695, 47.100773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183949, 39.912216, 47.210045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217656, -0.184365, -0.958455,
		0.408536, -0.909043, 0.082086,
		-0.886411, -0.373697, 0.273179,
		38.918026, 39.800106, 47.292000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479431, 39.405407, 46.820877>,  <39.538513, 40.061695, 47.100773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479431, 39.405407, 46.820877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.110119, 39.538887, 46.896969>,  <38.888531, 39.618977, 46.942623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.110119, 39.538887, 46.896969>,  <39.479431, 39.405407, 46.820877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110119, 39.538887, 46.896969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298416, -0.311333, -0.902230,
		-0.241853, -0.889783, 0.387032,
		-0.923285, 0.333704, 0.190229,
		38.833134, 39.638996, 46.954037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107437, 38.888084, 46.511353>,  <39.479431, 39.405407, 46.820877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107437, 38.888084, 46.511353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830307, 39.171589, 46.564487>,  <38.664028, 39.341694, 46.596367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830307, 39.171589, 46.564487>,  <39.107437, 38.888084, 46.511353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830307, 39.171589, 46.564487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340258, -0.158908, -0.926808,
		-0.635778, -0.687316, 0.351258,
		-0.692828, 0.708763, 0.132834,
		38.622459, 39.384216, 46.604336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555973, 38.595200, 46.214191>,  <39.107437, 38.888084, 46.511353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555973, 38.595200, 46.214191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.497292, 38.990822, 46.220364>,  <38.462082, 39.228195, 46.224068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.497292, 38.990822, 46.220364>,  <38.555973, 38.595200, 46.214191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497292, 38.990822, 46.220364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309403, -0.031065, -0.950423,
		-0.939546, -0.144206, 0.310576,
		-0.146705, 0.989060, 0.015431,
		38.453281, 39.287540, 46.224995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920879, 38.768913, 45.914444>,  <38.555973, 38.595200, 46.214191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920879, 38.768913, 45.914444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.100441, 39.123257, 45.867554>,  <38.208179, 39.335861, 45.839420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.100441, 39.123257, 45.867554>,  <37.920879, 38.768913, 45.914444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100441, 39.123257, 45.867554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319514, 0.036611, -0.946874,
		-0.834502, 0.462514, 0.299478,
		0.448906, 0.885856, -0.117228,
		38.235111, 39.389015, 45.832386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518051, 39.140121, 45.563759>,  <37.920879, 38.768913, 45.914444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518051, 39.140121, 45.563759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.858982, 39.336975, 45.492939>,  <38.063541, 39.455086, 45.450447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.858982, 39.336975, 45.492939>,  <37.518051, 39.140121, 45.563759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858982, 39.336975, 45.492939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214242, 0.019706, -0.976582,
		-0.477118, 0.870298, 0.122231,
		0.852325, 0.492132, -0.177052,
		38.114681, 39.484615, 45.439823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279095, 39.621788, 45.084446>,  <37.518051, 39.140121, 45.563759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279095, 39.621788, 45.084446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678455, 39.635666, 45.066563>,  <37.918072, 39.643993, 45.055832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678455, 39.635666, 45.066563>,  <37.279095, 39.621788, 45.084446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678455, 39.635666, 45.066563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043614, -0.031723, -0.998545,
		-0.036061, 0.998894, -0.030159,
		0.998397, 0.034693, -0.044710,
		37.977974, 39.646072, 45.053150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471161, 40.188831, 44.649574>,  <37.279095, 39.621788, 45.084446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471161, 40.188831, 44.649574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779915, 39.937260, 44.612385>,  <37.965168, 39.786316, 44.590073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779915, 39.937260, 44.612385>,  <37.471161, 40.188831, 44.649574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779915, 39.937260, 44.612385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062794, 0.220941, -0.973264,
		0.632651, 0.745412, 0.210034,
		0.771887, -0.628925, -0.092971,
		38.011482, 39.748581, 44.584492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953171, 40.578053, 44.271294>,  <37.471161, 40.188831, 44.649574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953171, 40.578053, 44.271294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.076035, 40.200050, 44.226364>,  <38.149754, 39.973248, 44.199406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.076035, 40.200050, 44.226364>,  <37.953171, 40.578053, 44.271294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076035, 40.200050, 44.226364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060897, 0.137303, -0.988655,
		0.949707, 0.296838, 0.099722,
		0.307163, -0.945005, -0.112321,
		38.168182, 39.916550, 44.192669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426357, 40.618435, 43.755371>,  <37.953171, 40.578053, 44.271294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426357, 40.618435, 43.755371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324905, 40.231876, 43.772079>,  <38.264034, 39.999939, 43.782104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324905, 40.231876, 43.772079>,  <38.426357, 40.618435, 43.755371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324905, 40.231876, 43.772079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002967, -0.042402, -0.999096,
		0.967297, -0.253524, 0.007887,
		-0.253629, -0.966399, 0.041768,
		38.248817, 39.941956, 43.784611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792656, 40.334778, 43.213764>,  <38.426357, 40.618435, 43.755371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792656, 40.334778, 43.213764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.494804, 40.076229, 43.280369>,  <38.316093, 39.921101, 43.320332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.494804, 40.076229, 43.280369>,  <38.792656, 40.334778, 43.213764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494804, 40.076229, 43.280369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110211, -0.126977, -0.985764,
		0.658315, -0.752381, 0.023314,
		-0.744630, -0.646374, 0.166511,
		38.271416, 39.882317, 43.330322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.910007, 41.648796, 34.457588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.548397, 41.659195, 34.286919>,  <41.331429, 41.665432, 34.184517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.548397, 41.659195, 34.286919>,  <41.910007, 41.648796, 34.457588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548397, 41.659195, 34.286919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026446, -0.992837, -0.116516,
		-0.426649, -0.116618, 0.896867,
		-0.904030, 0.025993, -0.426677,
		41.277187, 41.666992, 34.158916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414677, 41.146843, 34.782104>,  <41.910007, 41.648796, 34.457588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414677, 41.146843, 34.782104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.275272, 41.193340, 34.410076>,  <41.191631, 41.221237, 34.186859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.275272, 41.193340, 34.410076>,  <41.414677, 41.146843, 34.782104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275272, 41.193340, 34.410076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051537, -0.988402, -0.142847,
		-0.935887, -0.097717, 0.338478,
		-0.348511, 0.116245, -0.930068,
		41.170719, 41.228214, 34.131054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017601, 40.604607, 34.744659>,  <41.414677, 41.146843, 34.782104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017601, 40.604607, 34.744659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.093258, 40.695881, 34.362633>,  <41.138653, 40.750645, 34.133415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.093258, 40.695881, 34.362633>,  <41.017601, 40.604607, 34.744659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093258, 40.695881, 34.362633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037136, -0.970268, -0.239168,
		-0.981247, 0.080704, -0.175045,
		0.189142, 0.228183, -0.955070,
		41.150002, 40.764336, 34.076111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477257, 40.294987, 34.424679>,  <41.017601, 40.604607, 34.744659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477257, 40.294987, 34.424679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.771244, 40.359753, 34.161282>,  <40.947636, 40.398613, 34.003242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.771244, 40.359753, 34.161282>,  <40.477257, 40.294987, 34.424679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771244, 40.359753, 34.161282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076383, -0.984663, -0.156860,
		-0.673789, 0.064989, -0.736060,
		0.734965, 0.161913, -0.658491,
		40.991734, 40.408325, 33.963734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420719, 39.741032, 33.932804>,  <40.477257, 40.294987, 34.424679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420719, 39.741032, 33.932804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.798630, 39.868927, 33.904030>,  <41.025375, 39.945663, 33.886765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.798630, 39.868927, 33.904030>,  <40.420719, 39.741032, 33.932804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798630, 39.868927, 33.904030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314309, -0.946158, -0.077434,
		-0.092824, 0.050546, -0.994399,
		0.944772, 0.319736, -0.071939,
		41.082062, 39.964848, 33.882446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737450, 39.256409, 33.392872>,  <40.420719, 39.741032, 33.932804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737450, 39.256409, 33.392872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.054722, 39.414196, 33.578453>,  <41.245087, 39.508869, 33.689800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.054722, 39.414196, 33.578453>,  <40.737450, 39.256409, 33.392872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054722, 39.414196, 33.578453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464902, -0.884321, -0.042927,
		0.393350, 0.249741, -0.884819,
		0.793185, 0.394469, 0.463953,
		41.292679, 39.532536, 33.717640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264126, 39.022614, 33.104824>,  <40.737450, 39.256409, 33.392872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264126, 39.022614, 33.104824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.414303, 39.112812, 33.464420>,  <41.504410, 39.166931, 33.680180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.414303, 39.112812, 33.464420>,  <41.264126, 39.022614, 33.104824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414303, 39.112812, 33.464420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433348, -0.900113, 0.044802,
		0.819298, 0.372756, -0.435664,
		0.375446, 0.225501, 0.898994,
		41.526936, 39.180462, 33.734119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919449, 38.931046, 33.044773>,  <41.264126, 39.022614, 33.104824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919449, 38.931046, 33.044773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.834217, 38.900326, 33.434376>,  <41.783077, 38.881893, 33.668137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.834217, 38.900326, 33.434376>,  <41.919449, 38.931046, 33.044773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834217, 38.900326, 33.434376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549589, -0.833656, 0.054496,
		0.807805, 0.546918, 0.219846,
		-0.213081, -0.076803, 0.974011,
		41.770294, 38.877285, 33.726578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514381, 38.586357, 33.240246>,  <41.919449, 38.931046, 33.044773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514381, 38.586357, 33.240246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.270252, 38.570389, 33.556702>,  <42.123775, 38.560810, 33.746574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.270252, 38.570389, 33.556702>,  <42.514381, 38.586357, 33.240246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270252, 38.570389, 33.556702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544790, -0.746190, 0.382628,
		0.575070, 0.664535, 0.477165,
		-0.610326, -0.039917, 0.791144,
		42.087154, 38.558414, 33.794044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972103, 38.457958, 33.784515>,  <42.514381, 38.586357, 33.240246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972103, 38.457958, 33.784515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.611046, 38.345791, 33.915115>,  <42.394413, 38.278492, 33.993477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.611046, 38.345791, 33.915115>,  <42.972103, 38.457958, 33.784515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611046, 38.345791, 33.915115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393304, -0.845505, 0.361156,
		0.174785, 0.454409, 0.873477,
		-0.902642, -0.280417, 0.326502,
		42.340252, 38.261665, 34.013065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030979, 38.391129, 34.427441>,  <42.972103, 38.457958, 33.784515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030979, 38.391129, 34.427441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.720833, 38.158302, 34.329449>,  <42.534744, 38.018608, 34.270653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.720833, 38.158302, 34.329449>,  <43.030979, 38.391129, 34.427441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720833, 38.158302, 34.329449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438053, -0.775138, 0.455270,
		-0.454888, 0.245687, 0.855988,
		-0.775362, -0.582065, -0.244977,
		42.488224, 37.983685, 34.255955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808826, 38.165802, 35.099754>,  <43.030979, 38.391129, 34.427441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808826, 38.165802, 35.099754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.672268, 37.931206, 34.805958>,  <42.590332, 37.790447, 34.629681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.672268, 37.931206, 34.805958>,  <42.808826, 38.165802, 35.099754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672268, 37.931206, 34.805958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217970, -0.809540, 0.545100,
		-0.914296, 0.025999, 0.404212,
		-0.341398, -0.586488, -0.734492,
		42.569847, 37.755260, 34.585609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412586, 37.693413, 35.478207>,  <42.808826, 38.165802, 35.099754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412586, 37.693413, 35.478207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.529751, 37.535061, 35.130074>,  <42.600048, 37.440048, 34.921192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.529751, 37.535061, 35.130074>,  <42.412586, 37.693413, 35.478207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529751, 37.535061, 35.130074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390124, -0.781557, 0.486798,
		-0.872931, -0.482126, -0.074480,
		0.292909, -0.395885, -0.870333,
		42.617622, 37.416294, 34.868973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204601, 36.937614, 35.459129>,  <42.412586, 37.693413, 35.478207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204601, 36.937614, 35.459129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.504292, 36.962650, 35.195389>,  <42.684105, 36.977673, 35.037144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.504292, 36.962650, 35.195389>,  <42.204601, 36.937614, 35.459129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504292, 36.962650, 35.195389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387757, -0.848527, 0.360065,
		-0.536942, -0.525438, -0.660007,
		0.749225, 0.062589, -0.659351,
		42.729057, 36.981426, 34.997581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458729, 36.212700, 35.438305>,  <42.204601, 36.937614, 35.459129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458729, 36.212700, 35.438305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.736595, 36.408863, 35.227802>,  <42.903313, 36.526562, 35.101501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.736595, 36.408863, 35.227802>,  <42.458729, 36.212700, 35.438305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736595, 36.408863, 35.227802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647019, -0.745671, 0.159189,
		-0.314344, -0.451078, -0.835294,
		0.694662, 0.490411, -0.526253,
		42.944992, 36.555984, 35.069927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732330, 35.764156, 34.903046>,  <42.458729, 36.212700, 35.438305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732330, 35.764156, 34.903046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.014656, 36.037701, 34.976971>,  <43.184052, 36.201828, 35.021324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.014656, 36.037701, 34.976971>,  <42.732330, 35.764156, 34.903046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014656, 36.037701, 34.976971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655293, -0.729403, 0.196372,
		0.269095, -0.017496, -0.962955,
		0.705818, 0.683861, 0.184814,
		43.226402, 36.242859, 35.032413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301716, 35.517574, 34.520561>,  <42.732330, 35.764156, 34.903046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301716, 35.517574, 34.520561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.463997, 35.752457, 34.800732>,  <43.561363, 35.893387, 34.968834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.463997, 35.752457, 34.800732>,  <43.301716, 35.517574, 34.520561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463997, 35.752457, 34.800732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709975, -0.685078, 0.163109,
		0.575625, 0.431112, -0.694837,
		0.405699, 0.587207, 0.700426,
		43.585705, 35.928619, 35.010860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018379, 35.436729, 34.479752>,  <43.301716, 35.517574, 34.520561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018379, 35.436729, 34.479752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.978886, 35.597839, 34.843735>,  <43.955189, 35.694504, 35.062126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.978886, 35.597839, 34.843735>,  <44.018379, 35.436729, 34.479752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978886, 35.597839, 34.843735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679034, -0.641185, 0.357484,
		0.727437, 0.653188, -0.210191,
		-0.098734, 0.402774, 0.909959,
		43.949265, 35.718670, 35.116722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698997, 35.677635, 34.708683>,  <44.018379, 35.436729, 34.479752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698997, 35.677635, 34.708683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.450138, 35.567879, 35.001980>,  <44.300823, 35.502026, 35.177956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.450138, 35.567879, 35.001980>,  <44.698997, 35.677635, 34.708683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450138, 35.567879, 35.001980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661474, -0.685221, 0.304833,
		0.418786, 0.674670, 0.607815,
		-0.622150, -0.274394, 0.733238,
		44.263493, 35.485561, 35.221951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142368, 35.498962, 35.283905>,  <44.698997, 35.677635, 34.708683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142368, 35.498962, 35.283905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.789986, 35.366096, 35.418713>,  <44.578556, 35.286377, 35.499599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.789986, 35.366096, 35.418713>,  <45.142368, 35.498962, 35.283905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789986, 35.366096, 35.418713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453376, -0.796473, 0.400101,
		0.135530, 0.505269, 0.852253,
		-0.880955, -0.332165, 0.337023,
		44.525700, 35.266445, 35.519821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231937, 35.332138, 36.001026>,  <45.142368, 35.498962, 35.283905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231937, 35.332138, 36.001026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.915199, 35.116169, 35.886856>,  <44.725155, 34.986588, 35.818356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.915199, 35.116169, 35.886856>,  <45.231937, 35.332138, 36.001026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915199, 35.116169, 35.886856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418085, -0.819910, 0.391092,
		-0.445182, 0.190352, 0.874974,
		-0.791845, -0.539920, -0.285426,
		44.677647, 34.954193, 35.801228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744953, 35.691940, 35.804794>,  <45.231937, 35.332138, 36.001026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744953, 35.691940, 35.804794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.027637, 35.947418, 35.683064>,  <46.197250, 36.100704, 35.610023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.027637, 35.947418, 35.683064>,  <45.744953, 35.691940, 35.804794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.027637, 35.947418, 35.683064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561395, 0.768023, 0.308183,
		0.430569, -0.046948, 0.901336,
		0.706715, 0.638699, -0.304330,
		46.239651, 36.139027, 35.591763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.823330, 36.162239, 36.374271>,  <45.744953, 35.691940, 35.804794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.823330, 36.162239, 36.374271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.001572, 36.369591, 36.082321>,  <46.108517, 36.493999, 35.907150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.001572, 36.369591, 36.082321>,  <45.823330, 36.162239, 36.374271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.001572, 36.369591, 36.082321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322629, 0.853500, 0.409205,
		0.835072, 0.053136, 0.547569,
		0.445606, 0.518377, -0.729877,
		46.135254, 36.525105, 35.863358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198383, 36.759064, 36.680321>,  <45.823330, 36.162239, 36.374271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198383, 36.759064, 36.680321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.134735, 36.847305, 36.295403>,  <46.096546, 36.900249, 36.064453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.134735, 36.847305, 36.295403>,  <46.198383, 36.759064, 36.680321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.134735, 36.847305, 36.295403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490403, 0.828298, 0.270977,
		0.856847, 0.515030, -0.023612,
		-0.159119, 0.220607, -0.962296,
		46.086998, 36.913486, 36.006714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.352940, 37.449532, 36.594627>,  <46.198383, 36.759064, 36.680321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.352940, 37.449532, 36.594627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.136097, 37.359776, 36.270710>,  <46.005993, 37.305923, 36.076359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.136097, 37.359776, 36.270710>,  <46.352940, 37.449532, 36.594627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136097, 37.359776, 36.270710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362444, 0.931875, -0.015584,
		0.758126, 0.285058, -0.586504,
		-0.542106, -0.224389, -0.809797,
		45.973465, 37.292458, 36.027771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.462181, 38.015724, 36.201035>,  <46.352940, 37.449532, 36.594627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.462181, 38.015724, 36.201035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.121300, 37.839268, 36.088512>,  <45.916771, 37.733395, 36.021000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.121300, 37.839268, 36.088512>,  <46.462181, 38.015724, 36.201035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.121300, 37.839268, 36.088512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471181, 0.880831, 0.046110,
		0.227443, 0.171842, -0.958509,
		-0.852208, -0.441144, -0.281307,
		45.865639, 37.706924, 36.004120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.150696, 38.438515, 35.714100>,  <46.462181, 38.015724, 36.201035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.150696, 38.438515, 35.714100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.831646, 38.224815, 35.826088>,  <45.640217, 38.096596, 35.893280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.831646, 38.224815, 35.826088>,  <46.150696, 38.438515, 35.714100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831646, 38.224815, 35.826088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574356, 0.814478, -0.082106,
		-0.184166, -0.226293, -0.956491,
		-0.797620, -0.534245, 0.279972,
		45.592361, 38.064541, 35.910080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653221, 38.926758, 35.394886>,  <46.150696, 38.438515, 35.714100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653221, 38.926758, 35.394886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.455242, 38.693630, 35.652676>,  <45.336452, 38.553753, 35.807350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.455242, 38.693630, 35.652676>,  <45.653221, 38.926758, 35.394886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.455242, 38.693630, 35.652676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651349, 0.739770, 0.168773,
		-0.575125, -0.336241, -0.745770,
		-0.494950, -0.582823, 0.644471,
		45.306759, 38.518784, 35.846016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899586, 38.905205, 35.221039>,  <45.653221, 38.926758, 35.394886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899586, 38.905205, 35.221039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.939919, 38.833549, 35.612495>,  <44.964119, 38.790554, 35.847370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.939919, 38.833549, 35.612495>,  <44.899586, 38.905205, 35.221039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939919, 38.833549, 35.612495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611503, 0.764760, 0.202991,
		-0.784792, -0.618911, -0.032437,
		0.100827, -0.179140, 0.978643,
		44.970165, 38.779808, 35.906090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151993, 39.005810, 35.512253>,  <44.899586, 38.905205, 35.221039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151993, 39.005810, 35.512253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.395275, 39.035164, 35.828403>,  <44.541245, 39.052776, 36.018093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.395275, 39.035164, 35.828403>,  <44.151993, 39.005810, 35.512253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395275, 39.035164, 35.828403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629858, 0.650590, 0.424277,
		-0.483076, -0.755875, 0.441917,
		0.608208, 0.073387, 0.790379,
		44.577736, 39.057178, 36.065517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666973, 39.066101, 36.102016>,  <44.151993, 39.005810, 35.512253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666973, 39.066101, 36.102016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.017544, 39.197720, 36.242649>,  <44.227886, 39.276691, 36.327026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.017544, 39.197720, 36.242649>,  <43.666973, 39.066101, 36.102016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017544, 39.197720, 36.242649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479735, 0.659741, 0.578443,
		-0.041617, -0.675627, 0.736068,
		0.876426, 0.329044, 0.351578,
		44.280472, 39.296432, 36.348122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653431, 39.070770, 36.912647>,  <43.666973, 39.066101, 36.102016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653431, 39.070770, 36.912647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.933357, 39.322723, 36.777885>,  <44.101315, 39.473896, 36.697029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.933357, 39.322723, 36.777885>,  <43.653431, 39.070770, 36.912647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933357, 39.322723, 36.777885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418540, 0.743775, 0.521174,
		0.578859, -0.223719, 0.784138,
		0.699819, 0.629880, -0.336906,
		44.143303, 39.511688, 36.676815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727329, 39.487564, 37.512772>,  <43.653431, 39.070770, 36.912647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727329, 39.487564, 37.512772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.910961, 39.715977, 37.240547>,  <44.021141, 39.853024, 37.077213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.910961, 39.715977, 37.240547>,  <43.727329, 39.487564, 37.512772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.910961, 39.715977, 37.240547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444884, 0.810856, 0.380250,
		0.768972, 0.128204, 0.626295,
		0.459086, 0.571030, -0.680562,
		44.048687, 39.887287, 37.036377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952732, 40.063885, 37.843990>,  <43.727329, 39.487564, 37.512772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952732, 40.063885, 37.843990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.942768, 40.174675, 37.459770>,  <43.936790, 40.241150, 37.229237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.942768, 40.174675, 37.459770>,  <43.952732, 40.063885, 37.843990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942768, 40.174675, 37.459770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427640, 0.865549, 0.260670,
		0.903605, 0.417267, 0.096880,
		-0.024915, 0.276973, -0.960555,
		43.935295, 40.257767, 37.171604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149849, 40.818710, 37.841778>,  <43.952732, 40.063885, 37.843990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149849, 40.818710, 37.841778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934536, 40.740009, 37.513988>,  <43.805347, 40.692787, 37.317314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934536, 40.740009, 37.513988>,  <44.149849, 40.818710, 37.841778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934536, 40.740009, 37.513988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596684, 0.775663, 0.205708,
		0.595162, 0.599697, -0.534926,
		-0.538285, -0.196751, -0.819475,
		43.773052, 40.680984, 37.268147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068607, 41.424065, 37.490440>,  <44.149849, 40.818710, 37.841778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068607, 41.424065, 37.490440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.777901, 41.201939, 37.328732>,  <43.603477, 41.068665, 37.231709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.777901, 41.201939, 37.328732>,  <44.068607, 41.424065, 37.490440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777901, 41.201939, 37.328732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654178, 0.739032, 0.160882,
		0.209428, 0.381388, -0.900380,
		-0.726768, -0.555315, -0.404269,
		43.559872, 41.035343, 37.207451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648495, 41.945637, 37.404968>,  <44.068607, 41.424065, 37.490440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648495, 41.945637, 37.404968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.436222, 41.610622, 37.352936>,  <43.308861, 41.409615, 37.321716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.436222, 41.610622, 37.352936>,  <43.648495, 41.945637, 37.404968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436222, 41.610622, 37.352936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843738, 0.507436, 0.174973,
		-0.080540, 0.202605, -0.975943,
		-0.530679, -0.837532, -0.130077,
		43.277020, 41.359364, 37.313911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134865, 42.174381, 37.057617>,  <43.648495, 41.945637, 37.404968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134865, 42.174381, 37.057617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.001377, 41.831161, 37.213760>,  <42.921284, 41.625229, 37.307446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.001377, 41.831161, 37.213760>,  <43.134865, 42.174381, 37.057617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001377, 41.831161, 37.213760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918908, 0.388499, 0.068389,
		-0.210334, -0.335878, -0.918121,
		-0.333719, -0.858053, 0.390356,
		42.901260, 41.573746, 37.330868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597603, 42.075638, 36.747482>,  <43.134865, 42.174381, 37.057617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597603, 42.075638, 36.747482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532387, 41.867474, 37.082764>,  <42.493256, 41.742573, 37.283932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532387, 41.867474, 37.082764>,  <42.597603, 42.075638, 36.747482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532387, 41.867474, 37.082764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938223, 0.344599, 0.031454,
		-0.305213, -0.781294, -0.544449,
		-0.163042, -0.520415, 0.838204,
		42.483475, 41.711349, 37.334225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856041, 41.869183, 36.707073>,  <42.597603, 42.075638, 36.747482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856041, 41.869183, 36.707073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.939781, 41.821583, 37.095303>,  <41.990025, 41.793022, 37.328239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.939781, 41.821583, 37.095303>,  <41.856041, 41.869183, 36.707073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939781, 41.821583, 37.095303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906978, 0.347335, 0.238222,
		-0.365462, -0.930160, -0.035214,
		0.209354, -0.119000, 0.970572,
		42.002586, 41.785885, 37.386475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329796, 41.606800, 36.913528>,  <41.856041, 41.869183, 36.707073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329796, 41.606800, 36.913528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.491852, 41.747902, 37.250912>,  <41.589085, 41.832561, 37.453342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.491852, 41.747902, 37.250912>,  <41.329796, 41.606800, 36.913528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491852, 41.747902, 37.250912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905987, 0.278700, 0.318613,
		-0.122680, -0.893247, 0.432503,
		0.405139, 0.352754, 0.843462,
		41.613392, 41.853729, 37.503952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864765, 41.374500, 37.382622>,  <41.329796, 41.606800, 36.913528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864765, 41.374500, 37.382622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.069130, 41.676571, 37.546902>,  <41.191750, 41.857815, 37.645470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.069130, 41.676571, 37.546902>,  <40.864765, 41.374500, 37.382622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069130, 41.676571, 37.546902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854615, 0.394645, 0.337474,
		0.092773, -0.523410, 0.847016,
		0.510907, 0.755180, 0.410701,
		41.222401, 41.903126, 37.670113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.495811, 36.899410, 39.297318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099159, 36.914497, 39.346695>,  <39.861168, 36.923550, 39.376324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099159, 36.914497, 39.346695>,  <40.495811, 36.899410, 39.297318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099159, 36.914497, 39.346695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129077, -0.286663, -0.949296,
		-0.000413, -0.957289, 0.289133,
		-0.991634, 0.037712, 0.123446,
		39.801670, 36.925812, 39.383728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250893, 36.395329, 38.996384>,  <40.495811, 36.899410, 39.297318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250893, 36.395329, 38.996384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908302, 36.599998, 38.969131>,  <39.702747, 36.722801, 38.952782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908302, 36.599998, 38.969131>,  <40.250893, 36.395329, 38.996384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908302, 36.599998, 38.969131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132061, -0.344791, -0.929343,
		-0.499014, -0.786960, 0.362876,
		-0.856472, 0.511678, -0.068129,
		39.651360, 36.753502, 38.948692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834545, 35.869858, 38.744678>,  <40.250893, 36.395329, 38.996384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834545, 35.869858, 38.744678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668320, 36.229637, 38.690571>,  <39.568584, 36.445507, 38.658108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668320, 36.229637, 38.690571>,  <39.834545, 35.869858, 38.744678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668320, 36.229637, 38.690571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116891, -0.200292, -0.972738,
		-0.902022, -0.388422, 0.188372,
		-0.415562, 0.899451, -0.135265,
		39.543652, 36.499474, 38.649990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271500, 35.649254, 38.409748>,  <39.834545, 35.869858, 38.744678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271500, 35.649254, 38.409748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276920, 36.043972, 38.345192>,  <39.280174, 36.280804, 38.306458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276920, 36.043972, 38.345192>,  <39.271500, 35.649254, 38.409748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276920, 36.043972, 38.345192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203543, -0.155305, -0.966670,
		-0.978972, 0.045954, 0.198750,
		0.013555, 0.986797, -0.161393,
		39.280987, 36.340012, 38.296776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763908, 35.752460, 37.938164>,  <39.271500, 35.649254, 38.409748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763908, 35.752460, 37.938164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004341, 36.068401, 37.889458>,  <39.148602, 36.257965, 37.860233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004341, 36.068401, 37.889458>,  <38.763908, 35.752460, 37.938164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004341, 36.068401, 37.889458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122716, -0.059338, -0.990666,
		-0.789707, 0.610418, 0.061261,
		0.601085, 0.789854, -0.121768,
		39.184666, 36.305359, 37.852928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426788, 36.208427, 37.551319>,  <38.763908, 35.752460, 37.938164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426788, 36.208427, 37.551319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807594, 36.322800, 37.507671>,  <39.036079, 36.391422, 37.481483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807594, 36.322800, 37.507671>,  <38.426788, 36.208427, 37.551319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807594, 36.322800, 37.507671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110506, -0.011337, -0.993811,
		-0.285400, 0.958183, 0.020804,
		0.952016, 0.285932, -0.109121,
		39.093201, 36.408581, 37.474934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352440, 36.686451, 37.062267>,  <38.426788, 36.208427, 37.551319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352440, 36.686451, 37.062267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738609, 36.582253, 37.066116>,  <38.970310, 36.519733, 37.068424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738609, 36.582253, 37.066116>,  <38.352440, 36.686451, 37.062267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738609, 36.582253, 37.066116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021603, 0.043170, -0.998834,
		0.259779, 0.964509, 0.047305,
		0.965426, -0.260498, 0.009622,
		39.028236, 36.504105, 37.069004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595085, 37.138538, 36.630280>,  <38.352440, 36.686451, 37.062267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595085, 37.138538, 36.630280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856804, 36.836319, 36.643143>,  <39.013836, 36.654987, 36.650860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856804, 36.836319, 36.643143>,  <38.595085, 37.138538, 36.630280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856804, 36.836319, 36.643143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008839, -0.050165, -0.998702,
		0.756183, 0.653167, -0.039501,
		0.654300, -0.755550, 0.032161,
		39.053093, 36.609653, 36.652790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086700, 37.289501, 36.120445>,  <38.595085, 37.138538, 36.630280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086700, 37.289501, 36.120445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128117, 36.897396, 36.187809>,  <39.152966, 36.662132, 36.228226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128117, 36.897396, 36.187809>,  <39.086700, 37.289501, 36.120445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128117, 36.897396, 36.187809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191386, -0.146521, -0.970517,
		0.976038, 0.132721, 0.172438,
		0.103542, -0.980264, 0.168411,
		39.159180, 36.603317, 36.238331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630901, 37.078278, 35.668793>,  <39.086700, 37.289501, 36.120445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630901, 37.078278, 35.668793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437908, 36.743137, 35.770943>,  <39.322113, 36.542053, 35.832233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437908, 36.743137, 35.770943>,  <39.630901, 37.078278, 35.668793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437908, 36.743137, 35.770943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067618, -0.326313, -0.942840,
		0.873294, -0.437632, 0.214093,
		-0.482479, -0.837853, 0.255375,
		39.293163, 36.491783, 35.847557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033386, 36.715626, 35.239063>,  <39.630901, 37.078278, 35.668793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033386, 36.715626, 35.239063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703682, 36.506947, 35.327080>,  <39.505859, 36.381737, 35.379890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703682, 36.506947, 35.327080>,  <40.033386, 36.715626, 35.239063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703682, 36.506947, 35.327080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109576, -0.234301, -0.965969,
		0.555503, -0.820324, 0.135959,
		-0.824263, -0.521701, 0.220043,
		39.456402, 36.350437, 35.393093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131016, 36.056519, 34.919586>,  <40.033386, 36.715626, 35.239063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131016, 36.056519, 34.919586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741982, 36.126339, 34.981037>,  <39.508560, 36.168232, 35.017910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741982, 36.126339, 34.981037>,  <40.131016, 36.056519, 34.919586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741982, 36.126339, 34.981037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204337, -0.326219, -0.922945,
		-0.110984, -0.929039, 0.352944,
		-0.972589, 0.174552, 0.153632,
		39.450207, 36.178703, 35.027126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654552, 35.420250, 34.840591>,  <40.131016, 36.056519, 34.919586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654552, 35.420250, 34.840591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459774, 35.754436, 34.738705>,  <39.342907, 35.954948, 34.677574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459774, 35.754436, 34.738705>,  <39.654552, 35.420250, 34.840591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459774, 35.754436, 34.738705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323932, -0.443571, -0.835651,
		-0.811143, -0.324406, 0.486629,
		-0.486945, 0.835467, -0.254714,
		39.313690, 36.005077, 34.662289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181297, 35.341644, 35.446709>,  <39.654552, 35.420250, 34.840591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181297, 35.341644, 35.446709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282352, 34.956676, 35.406845>,  <40.342987, 34.725697, 35.382927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282352, 34.956676, 35.406845>,  <40.181297, 35.341644, 35.446709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282352, 34.956676, 35.406845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512870, -0.220539, 0.829654,
		-0.820450, -0.158493, -0.549311,
		0.252639, -0.962415, -0.099655,
		40.358143, 34.667953, 35.376949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587833, 34.965939, 35.704578>,  <40.181297, 35.341644, 35.446709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587833, 34.965939, 35.704578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877747, 34.690590, 35.693001>,  <40.051693, 34.525379, 35.686054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877747, 34.690590, 35.693001>,  <39.587833, 34.965939, 35.704578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877747, 34.690590, 35.693001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431736, -0.486506, 0.759550,
		-0.536938, -0.538006, -0.649805,
		0.724776, -0.688376, -0.028946,
		40.095181, 34.484077, 35.684319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214565, 34.424530, 35.929646>,  <39.587833, 34.965939, 35.704578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214565, 34.424530, 35.929646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595982, 34.318886, 35.987606>,  <39.824833, 34.255497, 36.022385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595982, 34.318886, 35.987606>,  <39.214565, 34.424530, 35.929646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595982, 34.318886, 35.987606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270913, -0.541418, 0.795910,
		-0.131757, -0.798192, -0.587818,
		0.953544, -0.264115, 0.144905,
		39.882046, 34.239651, 36.031078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193157, 33.764431, 36.031670>,  <39.214565, 34.424530, 35.929646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193157, 33.764431, 36.031670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528637, 33.910629, 36.193165>,  <39.729923, 33.998348, 36.290062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528637, 33.910629, 36.193165>,  <39.193157, 33.764431, 36.031670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528637, 33.910629, 36.193165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256762, -0.388411, 0.884992,
		0.480274, -0.845904, -0.231914,
		0.838696, 0.365491, 0.403739,
		39.780247, 34.020275, 36.314285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563274, 33.205177, 36.390732>,  <39.193157, 33.764431, 36.031670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563274, 33.205177, 36.390732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694199, 33.549507, 36.546600>,  <39.772751, 33.756107, 36.640121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694199, 33.549507, 36.546600>,  <39.563274, 33.205177, 36.390732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694199, 33.549507, 36.546600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251920, -0.317968, 0.914020,
		0.910718, -0.397332, 0.112786,
		0.327307, 0.860828, 0.389675,
		39.792389, 33.807755, 36.663502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952419, 33.042393, 37.009098>,  <39.563274, 33.205177, 36.390732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952419, 33.042393, 37.009098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877388, 33.427475, 37.087078>,  <39.832371, 33.658524, 37.133865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877388, 33.427475, 37.087078>,  <39.952419, 33.042393, 37.009098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877388, 33.427475, 37.087078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232721, -0.236381, 0.943380,
		0.954283, 0.131584, 0.268382,
		-0.187574, 0.962710, 0.194952,
		39.821117, 33.716290, 37.145565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149544, 33.076530, 37.681477>,  <39.952419, 33.042393, 37.009098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149544, 33.076530, 37.681477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950550, 33.421066, 37.640274>,  <39.831154, 33.627789, 37.615555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950550, 33.421066, 37.640274>,  <40.149544, 33.076530, 37.681477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950550, 33.421066, 37.640274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417286, -0.133513, 0.898914,
		0.760518, 0.490173, 0.425844,
		-0.497479, 0.861339, -0.103003,
		39.801308, 33.679466, 37.609375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383492, 33.491646, 38.192070>,  <40.149544, 33.076530, 37.681477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383492, 33.491646, 38.192070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016960, 33.624912, 38.103214>,  <39.797043, 33.704872, 38.049900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016960, 33.624912, 38.103214>,  <40.383492, 33.491646, 38.192070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016960, 33.624912, 38.103214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244057, -0.024877, 0.969442,
		0.317457, 0.942540, 0.104107,
		-0.916328, 0.333164, -0.222136,
		39.742062, 33.724861, 38.036575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223503, 33.989803, 38.693428>,  <40.383492, 33.491646, 38.192070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223503, 33.989803, 38.693428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881580, 33.851070, 38.539021>,  <39.676426, 33.767830, 38.446377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881580, 33.851070, 38.539021>,  <40.223503, 33.989803, 38.693428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881580, 33.851070, 38.539021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326237, -0.219333, 0.919490,
		-0.403580, 0.911920, 0.074336,
		-0.854805, -0.346837, -0.386021,
		39.625137, 33.747021, 38.423214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801682, 34.174049, 39.101963>,  <40.223503, 33.989803, 38.693428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801682, 34.174049, 39.101963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538097, 33.949291, 38.901947>,  <39.379948, 33.814438, 38.781937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538097, 33.949291, 38.901947>,  <39.801682, 34.174049, 39.101963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538097, 33.949291, 38.901947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487687, -0.186958, 0.852765,
		-0.572651, 0.805805, -0.150830,
		-0.658963, -0.561894, -0.500042,
		39.340408, 33.780724, 38.751934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189754, 34.403938, 39.295429>,  <39.801682, 34.174049, 39.101963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189754, 34.403938, 39.295429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139637, 34.027637, 39.169388>,  <39.109566, 33.801857, 39.093765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139637, 34.027637, 39.169388>,  <39.189754, 34.403938, 39.295429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139637, 34.027637, 39.169388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494206, -0.216212, 0.842029,
		-0.860269, 0.261226, -0.437834,
		-0.125295, -0.940752, -0.315100,
		39.102047, 33.745411, 39.074860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485687, 34.386543, 39.252399>,  <39.189754, 34.403938, 39.295429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485687, 34.386543, 39.252399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621746, 34.012753, 39.294437>,  <38.703381, 33.788479, 39.319660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621746, 34.012753, 39.294437>,  <38.485687, 34.386543, 39.252399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621746, 34.012753, 39.294437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454853, -0.065679, 0.888142,
		-0.823048, -0.349903, -0.447392,
		0.340147, -0.934481, 0.105098,
		38.723789, 33.732407, 39.325966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890411, 33.935234, 39.485519>,  <38.485687, 34.386543, 39.252399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890411, 33.935234, 39.485519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244656, 33.778442, 39.585152>,  <38.457203, 33.684368, 39.644932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244656, 33.778442, 39.585152>,  <37.890411, 33.935234, 39.485519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244656, 33.778442, 39.585152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271527, -0.001913, 0.962429,
		-0.376775, -0.919972, -0.108127,
		0.885615, -0.391978, 0.249077,
		38.510342, 33.660851, 39.659874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741161, 33.505646, 40.034199>,  <37.890411, 33.935234, 39.485519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741161, 33.505646, 40.034199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136639, 33.556904, 40.065369>,  <38.373924, 33.587658, 40.084072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136639, 33.556904, 40.065369>,  <37.741161, 33.505646, 40.034199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136639, 33.556904, 40.065369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080086, 0.011789, 0.996718,
		0.126808, -0.991685, 0.021918,
		0.988689, 0.128147, 0.077925,
		38.433247, 33.595348, 40.088745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929047, 33.026932, 40.474346>,  <37.741161, 33.505646, 40.034199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929047, 33.026932, 40.474346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211239, 33.309757, 40.493790>,  <38.380554, 33.479450, 40.505455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211239, 33.309757, 40.493790>,  <37.929047, 33.026932, 40.474346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211239, 33.309757, 40.493790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039746, -0.029012, 0.998788,
		0.707614, -0.706558, 0.007636,
		0.705480, 0.707060, 0.048612,
		38.422882, 33.521877, 40.508373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644585, 32.544624, 40.864700>,  <37.929047, 33.026932, 40.474346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644585, 32.544624, 40.864700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301792, 32.433826, 41.038528>,  <37.096115, 32.367348, 41.142826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301792, 32.433826, 41.038528>,  <37.644585, 32.544624, 40.864700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301792, 32.433826, 41.038528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364064, -0.271430, -0.890945,
		0.364743, -0.921738, 0.131768,
		-0.856983, -0.276994, 0.434573,
		37.044697, 32.350727, 41.168900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465675, 31.946568, 40.571781>,  <37.644585, 32.544624, 40.864700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465675, 31.946568, 40.571781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112339, 32.064533, 40.717510>,  <36.900337, 32.135311, 40.804947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112339, 32.064533, 40.717510>,  <37.465675, 31.946568, 40.571781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112339, 32.064533, 40.717510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440043, -0.254034, -0.861295,
		-0.161453, -0.921137, 0.354173,
		-0.883343, 0.294910, 0.364325,
		36.847336, 32.153008, 40.826809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996494, 31.436762, 40.494125>,  <37.465675, 31.946568, 40.571781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996494, 31.436762, 40.494125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783588, 31.773413, 40.530682>,  <36.655846, 31.975403, 40.552616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783588, 31.773413, 40.530682>,  <36.996494, 31.436762, 40.494125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783588, 31.773413, 40.530682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529407, -0.246664, -0.811718,
		-0.660622, -0.480434, 0.576855,
		-0.532266, 0.841629, 0.091394,
		36.623909, 32.025902, 40.558102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337410, 31.277420, 40.281269>,  <36.996494, 31.436762, 40.494125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337410, 31.277420, 40.281269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293842, 31.675039, 40.282497>,  <36.267704, 31.913610, 40.283234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293842, 31.675039, 40.282497>,  <36.337410, 31.277420, 40.281269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293842, 31.675039, 40.282497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581677, -0.061225, -0.811113,
		-0.806096, -0.090130, 0.584882,
		-0.108915, 0.994046, 0.003074,
		36.261169, 31.973253, 40.283421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622002, 31.337271, 40.167652>,  <36.337410, 31.277420, 40.281269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622002, 31.337271, 40.167652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805344, 31.681356, 40.078259>,  <35.915348, 31.887808, 40.024624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805344, 31.681356, 40.078259>,  <35.622002, 31.337271, 40.167652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805344, 31.681356, 40.078259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491208, 0.035627, -0.870313,
		-0.740692, 0.508689, 0.438873,
		0.458354, 0.860213, -0.223484,
		35.942848, 31.939421, 40.011215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112240, 31.876040, 40.015907>,  <35.622002, 31.337271, 40.167652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112240, 31.876040, 40.015907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455814, 31.973665, 39.835835>,  <35.661961, 32.032242, 39.727791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455814, 31.973665, 39.835835>,  <35.112240, 31.876040, 40.015907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455814, 31.973665, 39.835835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471419, 0.033544, -0.881271,
		-0.199986, 0.969179, 0.143869,
		0.858935, 0.244064, -0.450181,
		35.713493, 32.046883, 39.700779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976547, 32.422466, 39.444523>,  <35.112240, 31.876040, 40.015907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976547, 32.422466, 39.444523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343399, 32.286289, 39.361595>,  <35.563511, 32.204582, 39.311840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343399, 32.286289, 39.361595>,  <34.976547, 32.422466, 39.444523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343399, 32.286289, 39.361595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212499, 0.022437, -0.976904,
		0.337228, 0.939999, -0.051766,
		0.917127, -0.340439, -0.207315,
		35.618538, 32.184158, 39.299400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257191, 32.867817, 38.897964>,  <34.976547, 32.422466, 39.444523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257191, 32.867817, 38.897964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469780, 32.530277, 38.868450>,  <35.597336, 32.327751, 38.850742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469780, 32.530277, 38.868450>,  <35.257191, 32.867817, 38.897964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469780, 32.530277, 38.868450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100470, 0.023698, -0.994658,
		0.841093, 0.536052, -0.072187,
		0.531478, -0.843852, -0.073789,
		35.629223, 32.277122, 38.846313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696857, 33.039391, 38.414967>,  <35.257191, 32.867817, 38.897964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696857, 33.039391, 38.414967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721004, 32.640213, 38.423504>,  <35.735493, 32.400707, 38.428627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721004, 32.640213, 38.423504>,  <35.696857, 33.039391, 38.414967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721004, 32.640213, 38.423504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223366, -0.034345, -0.974129,
		0.972863, 0.054041, -0.224981,
		0.060370, -0.997948, 0.021342,
		35.739117, 32.340828, 38.429905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350990, 32.838688, 38.028358>,  <35.696857, 33.039391, 38.414967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350990, 32.838688, 38.028358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074543, 32.549728, 38.019485>,  <35.908672, 32.376354, 38.014164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074543, 32.549728, 38.019485>,  <36.350990, 32.838688, 38.028358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074543, 32.549728, 38.019485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044005, 0.072693, -0.996383,
		0.721396, -0.687647, -0.082029,
		-0.691123, -0.722397, -0.022180,
		35.867207, 32.333008, 38.012833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565342, 32.365612, 37.444145>,  <36.350990, 32.838688, 38.028358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565342, 32.365612, 37.444145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178455, 32.292477, 37.514633>,  <35.946323, 32.248596, 37.556927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178455, 32.292477, 37.514633>,  <36.565342, 32.365612, 37.444145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178455, 32.292477, 37.514633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180786, 0.008496, -0.983486,
		0.178325, -0.983106, -0.041273,
		-0.967221, -0.182842, 0.176217,
		35.888290, 32.237625, 37.567497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285309, 31.832500, 36.924255>,  <36.565342, 32.365612, 37.444145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285309, 31.832500, 36.924255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967293, 32.031857, 37.062546>,  <35.776485, 32.151470, 37.145519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967293, 32.031857, 37.062546>,  <36.285309, 31.832500, 36.924255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967293, 32.031857, 37.062546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379254, 0.036373, -0.924578,
		-0.473375, -0.866190, 0.160098,
		-0.795036, 0.498390, 0.345724,
		35.728783, 32.181374, 37.166264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.004276, 32.354416, 44.326340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.641972, 32.492420, 44.424770>,  <38.424587, 32.575222, 44.483829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.641972, 32.492420, 44.424770>,  <39.004276, 32.354416, 44.326340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641972, 32.492420, 44.424770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398625, -0.496577, -0.771045,
		-0.143826, -0.796478, 0.587314,
		-0.905766, 0.345014, 0.246075,
		38.370243, 32.595924, 44.498592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540581, 31.765276, 44.218731>,  <39.004276, 32.354416, 44.326340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540581, 31.765276, 44.218731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317154, 32.096985, 44.211601>,  <38.183098, 32.296009, 44.207321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317154, 32.096985, 44.211601>,  <38.540581, 31.765276, 44.218731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317154, 32.096985, 44.211601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562820, -0.394707, -0.726251,
		-0.609295, -0.395622, 0.687199,
		-0.558563, 0.829271, -0.017829,
		38.149586, 32.345764, 44.206253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751709, 31.582258, 44.241138>,  <38.540581, 31.765276, 44.218731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751709, 31.582258, 44.241138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.814140, 31.932510, 44.058311>,  <37.851597, 32.142662, 43.948616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.814140, 31.932510, 44.058311>,  <37.751709, 31.582258, 44.241138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814140, 31.932510, 44.058311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592582, -0.287211, -0.752567,
		-0.790245, 0.388309, 0.474055,
		0.156075, 0.875629, -0.457072,
		37.860962, 32.195198, 43.921188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155670, 31.642418, 43.917049>,  <37.751709, 31.582258, 44.241138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155670, 31.642418, 43.917049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.364624, 31.940023, 43.750404>,  <37.489994, 32.118587, 43.650417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.364624, 31.940023, 43.750404>,  <37.155670, 31.642418, 43.917049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364624, 31.940023, 43.750404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549474, -0.079908, -0.831681,
		-0.652071, 0.663371, 0.367072,
		0.522381, 0.744012, -0.416611,
		37.521339, 32.163227, 43.625420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578915, 32.087311, 43.480839>,  <37.155670, 31.642418, 43.917049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578915, 32.087311, 43.480839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.947033, 32.166374, 43.345791>,  <37.167904, 32.213810, 43.264763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.947033, 32.166374, 43.345791>,  <36.578915, 32.087311, 43.480839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947033, 32.166374, 43.345791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352169, 0.042689, -0.934962,
		-0.170389, 0.979341, 0.108895,
		0.920296, 0.197656, -0.337620,
		37.223122, 32.225670, 43.244503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605606, 32.798607, 43.057999>,  <36.578915, 32.087311, 43.480839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605606, 32.798607, 43.057999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.905045, 32.559273, 42.943733>,  <37.084709, 32.415672, 42.875175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.905045, 32.559273, 42.943733>,  <36.605606, 32.798607, 43.057999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905045, 32.559273, 42.943733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212670, 0.191396, -0.958196,
		0.627993, 0.778054, 0.016032,
		0.748596, -0.598330, -0.285664,
		37.129623, 32.379772, 42.858032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859631, 33.159275, 42.470764>,  <36.605606, 32.798607, 43.057999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859631, 33.159275, 42.470764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026596, 32.796925, 42.442024>,  <37.126774, 32.579514, 42.424782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026596, 32.796925, 42.442024>,  <36.859631, 33.159275, 42.470764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026596, 32.796925, 42.442024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036610, 0.062240, -0.997390,
		0.907981, 0.418950, -0.007184,
		0.417409, -0.905874, -0.071851,
		37.151817, 32.525162, 42.420467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422588, 33.243973, 42.026428>,  <36.859631, 33.159275, 42.470764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422588, 33.243973, 42.026428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312931, 32.859310, 42.029510>,  <37.247135, 32.628513, 42.031361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312931, 32.859310, 42.029510>,  <37.422588, 33.243973, 42.026428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312931, 32.859310, 42.029510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025530, -0.000733, -0.999674,
		0.961349, -0.274254, -0.024350,
		-0.274146, -0.961657, 0.007707,
		37.230686, 32.570812, 42.031822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709839, 32.930874, 41.475060>,  <37.422588, 33.243973, 42.026428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709839, 32.930874, 41.475060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.435562, 32.656551, 41.572628>,  <37.270996, 32.491959, 41.631168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.435562, 32.656551, 41.572628>,  <37.709839, 32.930874, 41.475060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435562, 32.656551, 41.572628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085778, -0.256637, -0.962694,
		0.722821, -0.681033, 0.117147,
		-0.685691, -0.685807, 0.243920,
		37.229855, 32.450809, 41.645805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377956, 32.834648, 41.061665>,  <37.709839, 32.930874, 41.475060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377956, 32.834648, 41.061665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.460243, 33.220284, 40.994469>,  <38.509617, 33.451664, 40.954151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.460243, 33.220284, 40.994469>,  <38.377956, 32.834648, 41.061665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460243, 33.220284, 40.994469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155156, 0.137354, 0.978295,
		0.966233, -0.227320, -0.121326,
		0.205721, 0.964085, -0.167986,
		38.521961, 33.509510, 40.944073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758137, 33.069469, 41.585163>,  <38.377956, 32.834648, 41.061665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758137, 33.069469, 41.585163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.694519, 33.420967, 41.405155>,  <38.656349, 33.631866, 41.297150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.694519, 33.420967, 41.405155>,  <38.758137, 33.069469, 41.585163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694519, 33.420967, 41.405155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193214, 0.474713, 0.858671,
		0.968180, 0.049616, -0.245286,
		-0.159044, 0.878741, -0.450021,
		38.646805, 33.684589, 41.270149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316051, 33.486530, 41.688881>,  <38.758137, 33.069469, 41.585163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316051, 33.486530, 41.688881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.009533, 33.730064, 41.606796>,  <38.825623, 33.876183, 41.557545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.009533, 33.730064, 41.606796>,  <39.316051, 33.486530, 41.688881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009533, 33.730064, 41.606796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230148, 0.558326, 0.797059,
		0.599851, 0.563554, -0.567966,
		-0.766297, 0.608833, -0.205212,
		38.779644, 33.912716, 41.545235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616901, 34.074532, 41.609890>,  <39.316051, 33.486530, 41.688881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616901, 34.074532, 41.609890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.235470, 34.132721, 41.715359>,  <39.006611, 34.167633, 41.778641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.235470, 34.132721, 41.715359>,  <39.616901, 34.074532, 41.609890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235470, 34.132721, 41.715359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292454, 0.656141, 0.695664,
		-0.071808, 0.740484, -0.668227,
		-0.953580, 0.145471, 0.263674,
		38.949394, 34.176361, 41.794460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457188, 34.815941, 41.553768>,  <39.616901, 34.074532, 41.609890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457188, 34.815941, 41.553768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.188774, 34.652939, 41.801525>,  <39.027725, 34.555138, 41.950180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.188774, 34.652939, 41.801525>,  <39.457188, 34.815941, 41.553768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188774, 34.652939, 41.801525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365782, 0.544711, 0.754648,
		-0.644914, 0.732959, -0.216463,
		-0.671036, -0.407505, 0.619395,
		38.987465, 34.530685, 41.987343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288727, 35.316101, 41.990410>,  <39.457188, 34.815941, 41.553768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288727, 35.316101, 41.990410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.162533, 34.995277, 42.193260>,  <39.086819, 34.802784, 42.314968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.162533, 34.995277, 42.193260>,  <39.288727, 35.316101, 41.990410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162533, 34.995277, 42.193260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371998, 0.387105, 0.843663,
		-0.872977, 0.454809, 0.176240,
		-0.315482, -0.802059, 0.507121,
		39.067890, 34.754658, 42.345398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911980, 35.552959, 42.544178>,  <39.288727, 35.316101, 41.990410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911980, 35.552959, 42.544178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.008694, 35.181786, 42.657650>,  <39.066723, 34.959080, 42.725735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.008694, 35.181786, 42.657650>,  <38.911980, 35.552959, 42.544178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008694, 35.181786, 42.657650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138698, 0.322403, 0.936386,
		-0.960365, -0.187060, 0.206656,
		0.241787, -0.927936, 0.283680,
		39.081230, 34.903404, 42.742752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581070, 35.474384, 43.140633>,  <38.911980, 35.552959, 42.544178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581070, 35.474384, 43.140633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.857731, 35.186924, 43.169361>,  <39.023727, 35.014446, 43.186596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.857731, 35.186924, 43.169361>,  <38.581070, 35.474384, 43.140633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857731, 35.186924, 43.169361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194502, 0.281109, 0.939759,
		-0.695549, -0.636016, 0.334209,
		0.691650, -0.718653, 0.071819,
		39.065228, 34.971329, 43.190907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502499, 35.145771, 43.798176>,  <38.581070, 35.474384, 43.140633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502499, 35.145771, 43.798176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.878777, 35.056900, 43.695629>,  <39.104546, 35.003578, 43.634102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.878777, 35.056900, 43.695629>,  <38.502499, 35.145771, 43.798176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878777, 35.056900, 43.695629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311109, 0.263688, 0.913060,
		-0.135265, -0.938671, 0.317174,
		0.940699, -0.222181, -0.256362,
		39.160988, 34.990246, 43.618721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803059, 34.849812, 44.461670>,  <38.502499, 35.145771, 43.798176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803059, 34.849812, 44.461670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125553, 34.927254, 44.238060>,  <39.319050, 34.973721, 44.103893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125553, 34.927254, 44.238060>,  <38.803059, 34.849812, 44.461670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125553, 34.927254, 44.238060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514691, 0.236350, 0.824156,
		0.291688, -0.952185, 0.090905,
		0.806233, 0.193608, -0.559020,
		39.367424, 34.985336, 44.070354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339928, 34.527424, 44.734825>,  <38.803059, 34.849812, 44.461670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339928, 34.527424, 44.734825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.526093, 34.796906, 44.505211>,  <39.637791, 34.958595, 44.367443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.526093, 34.796906, 44.505211>,  <39.339928, 34.527424, 44.734825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526093, 34.796906, 44.505211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560862, 0.277242, 0.780110,
		0.684711, -0.685024, -0.248825,
		0.465409, 0.673706, -0.574034,
		39.665714, 34.999016, 44.333000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099037, 34.483170, 44.828426>,  <39.339928, 34.527424, 44.734825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099037, 34.483170, 44.828426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.014111, 34.854507, 44.706375>,  <39.963154, 35.077309, 44.633144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.014111, 34.854507, 44.706375>,  <40.099037, 34.483170, 44.828426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014111, 34.854507, 44.706375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538170, 0.371709, 0.756443,
		0.815657, -0.003610, -0.578524,
		-0.212312, 0.928342, -0.305130,
		39.950417, 35.133011, 44.614838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780750, 34.845997, 44.785706>,  <40.099037, 34.483170, 44.828426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780750, 34.845997, 44.785706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.528904, 35.156261, 44.803284>,  <40.377796, 35.342422, 44.813831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.528904, 35.156261, 44.803284>,  <40.780750, 34.845997, 44.785706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528904, 35.156261, 44.803284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605460, 0.454438, 0.653379,
		0.486834, 0.437982, -0.755754,
		-0.629612, 0.775666, 0.043944,
		40.340019, 35.388962, 44.816467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229534, 35.489826, 44.748756>,  <40.780750, 34.845997, 44.785706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229534, 35.489826, 44.748756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.870331, 35.566322, 44.907253>,  <40.654808, 35.612221, 45.002350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.870331, 35.566322, 44.907253>,  <41.229534, 35.489826, 44.748756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870331, 35.566322, 44.907253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439918, 0.375455, 0.815785,
		0.007242, 0.906896, -0.421293,
		-0.898009, 0.191242, 0.396241,
		40.600929, 35.623695, 45.026127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.064983, 40.201012, 45.376587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.309341, 39.885105, 45.354427>,  <35.455956, 39.695560, 45.341133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.309341, 39.885105, 45.354427>,  <35.064983, 40.201012, 45.376587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309341, 39.885105, 45.354427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059640, 0.115679, -0.991495,
		0.789460, 0.602398, 0.117770,
		0.610898, -0.789769, -0.055397,
		35.492611, 39.648174, 45.337807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369194, 40.392868, 44.781281>,  <35.064983, 40.201012, 45.376587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369194, 40.392868, 44.781281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.430023, 40.005009, 44.857857>,  <35.466518, 39.772293, 44.903801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.430023, 40.005009, 44.857857>,  <35.369194, 40.392868, 44.781281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430023, 40.005009, 44.857857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058189, -0.202138, -0.977627,
		0.986656, 0.137526, -0.087162,
		0.152068, -0.969653, 0.191438,
		35.475643, 39.714111, 44.915287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769672, 40.212765, 44.236530>,  <35.369194, 40.392868, 44.781281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769672, 40.212765, 44.236530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.611485, 39.870338, 44.369652>,  <35.516571, 39.664883, 44.449524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.611485, 39.870338, 44.369652>,  <35.769672, 40.212765, 44.236530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611485, 39.870338, 44.369652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020755, -0.353918, -0.935046,
		0.918244, -0.376690, 0.122196,
		-0.395470, -0.856064, 0.332802,
		35.492844, 39.613518, 44.469494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951427, 39.757679, 43.812401>,  <35.769672, 40.212765, 44.236530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951427, 39.757679, 43.812401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.672825, 39.530773, 43.988171>,  <35.505665, 39.394630, 44.093632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.672825, 39.530773, 43.988171>,  <35.951427, 39.757679, 43.812401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672825, 39.530773, 43.988171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022133, -0.595123, -0.803330,
		0.717212, -0.569248, 0.401951,
		-0.696504, -0.567261, 0.439428,
		35.463875, 39.360596, 44.119999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237469, 39.077946, 43.736454>,  <35.951427, 39.757679, 43.812401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237469, 39.077946, 43.736454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.837704, 39.089825, 43.743271>,  <35.597843, 39.096951, 43.747360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.837704, 39.089825, 43.743271>,  <36.237469, 39.077946, 43.736454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837704, 39.089825, 43.743271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031379, -0.595481, -0.802757,
		-0.013690, -0.802821, 0.596063,
		-0.999414, 0.029693, 0.017040,
		35.537880, 39.098732, 43.748383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962776, 38.370258, 43.560417>,  <36.237469, 39.077946, 43.736454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962776, 38.370258, 43.560417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.638054, 38.599277, 43.514526>,  <35.443222, 38.736687, 43.486992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.638054, 38.599277, 43.514526>,  <35.962776, 38.370258, 43.560417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638054, 38.599277, 43.514526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215325, -0.476146, -0.852596,
		-0.542778, -0.667439, 0.509821,
		-0.811805, 0.572548, -0.114725,
		35.394512, 38.771042, 43.480110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498859, 37.936226, 43.384090>,  <35.962776, 38.370258, 43.560417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498859, 37.936226, 43.384090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336418, 38.279572, 43.258682>,  <35.238953, 38.485577, 43.183437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336418, 38.279572, 43.258682>,  <35.498859, 37.936226, 43.384090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336418, 38.279572, 43.258682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255164, -0.435953, -0.863039,
		-0.877480, -0.270485, 0.396065,
		-0.406105, 0.858361, -0.313522,
		35.214588, 38.537079, 43.164627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911354, 37.712898, 43.111012>,  <35.498859, 37.936226, 43.384090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911354, 37.712898, 43.111012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.009094, 38.067387, 42.953583>,  <35.067738, 38.280079, 42.859127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.009094, 38.067387, 42.953583>,  <34.911354, 37.712898, 43.111012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009094, 38.067387, 42.953583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276768, -0.325253, -0.904218,
		-0.929350, 0.329875, 0.165802,
		0.244351, 0.886224, -0.393572,
		35.082401, 38.333256, 42.835510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298717, 37.961124, 42.796387>,  <34.911354, 37.712898, 43.111012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298717, 37.961124, 42.796387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.598358, 38.173038, 42.637299>,  <34.778141, 38.300186, 42.541847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.598358, 38.173038, 42.637299>,  <34.298717, 37.961124, 42.796387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598358, 38.173038, 42.637299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241336, -0.340865, -0.908607,
		-0.616936, 0.776620, -0.127485,
		0.749098, 0.529786, -0.397719,
		34.823086, 38.331974, 42.517982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950695, 38.004272, 42.032391>,  <34.298717, 37.961124, 42.796387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950695, 38.004272, 42.032391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.327724, 38.127735, 41.981342>,  <34.553944, 38.201813, 41.950714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.327724, 38.127735, 41.981342>,  <33.950695, 38.004272, 42.032391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327724, 38.127735, 41.981342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041812, -0.270060, -0.961935,
		-0.331372, 0.912031, -0.241646,
		0.942573, 0.308654, -0.127624,
		34.610497, 38.220333, 41.943054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990555, 38.545898, 41.536842>,  <33.950695, 38.004272, 42.032391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990555, 38.545898, 41.536842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.354595, 38.380314, 41.544346>,  <34.573021, 38.280964, 41.548847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.354595, 38.380314, 41.544346>,  <33.990555, 38.545898, 41.536842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354595, 38.380314, 41.544346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041187, -0.135412, -0.989933,
		0.412335, 0.900166, -0.140288,
		0.910101, -0.413962, 0.018759,
		34.627625, 38.256126, 41.549973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236427, 38.833313, 40.919445>,  <33.990555, 38.545898, 41.536842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236427, 38.833313, 40.919445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479416, 38.529335, 41.011940>,  <34.625210, 38.346951, 41.067436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479416, 38.529335, 41.011940>,  <34.236427, 38.833313, 40.919445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479416, 38.529335, 41.011940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014301, -0.280594, -0.959720,
		0.794214, 0.586308, -0.159585,
		0.607470, -0.759941, 0.231236,
		34.661655, 38.301353, 41.081310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821945, 38.807392, 40.491119>,  <34.236427, 38.833313, 40.919445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821945, 38.807392, 40.491119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.818279, 38.427162, 40.615261>,  <34.816078, 38.199024, 40.689747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.818279, 38.427162, 40.615261>,  <34.821945, 38.807392, 40.491119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818279, 38.427162, 40.615261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112052, -0.309387, -0.944311,
		0.993660, 0.026123, 0.109349,
		-0.009163, -0.950577, 0.310353,
		34.815529, 38.141991, 40.708366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310566, 38.524853, 40.095448>,  <34.821945, 38.807392, 40.491119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310566, 38.524853, 40.095448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.065369, 38.235565, 40.222694>,  <34.918251, 38.061993, 40.299042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.065369, 38.235565, 40.222694>,  <35.310566, 38.524853, 40.095448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065369, 38.235565, 40.222694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169594, -0.272802, -0.947004,
		0.771671, -0.634458, 0.044572,
		-0.612994, -0.723217, 0.318114,
		34.881470, 38.018600, 40.318127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039822, 38.290199, 39.950607>,  <35.310566, 38.524853, 40.095448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039822, 38.290199, 39.950607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.256618, 38.594433, 39.807636>,  <36.386696, 38.776974, 39.721855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.256618, 38.594433, 39.807636>,  <36.039822, 38.290199, 39.950607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256618, 38.594433, 39.807636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244066, 0.264522, 0.932984,
		0.804163, -0.592904, -0.042265,
		0.541990, 0.760587, -0.357426,
		36.419216, 38.822609, 39.700409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700279, 38.288406, 40.343086>,  <36.039822, 38.290199, 39.950607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700279, 38.288406, 40.343086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.677017, 38.660851, 40.199059>,  <36.663059, 38.884315, 40.112640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.677017, 38.660851, 40.199059>,  <36.700279, 38.288406, 40.343086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677017, 38.660851, 40.199059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462705, 0.344737, 0.816738,
		0.884603, -0.119111, -0.450877,
		-0.058152, 0.931112, -0.360069,
		36.659573, 38.940186, 40.091038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349876, 38.611900, 40.309441>,  <36.700279, 38.288406, 40.343086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349876, 38.611900, 40.309441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.088097, 38.912128, 40.345982>,  <36.931030, 39.092266, 40.367908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.088097, 38.912128, 40.345982>,  <37.349876, 38.611900, 40.309441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088097, 38.912128, 40.345982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515126, 0.354156, 0.780524,
		0.553481, 0.557874, -0.618414,
		-0.654449, 0.750566, 0.091356,
		36.891762, 39.137299, 40.373390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786716, 39.237000, 40.253544>,  <37.349876, 38.611900, 40.309441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786716, 39.237000, 40.253544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.440254, 39.302860, 40.442295>,  <37.232376, 39.342377, 40.555546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.440254, 39.302860, 40.442295>,  <37.786716, 39.237000, 40.253544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440254, 39.302860, 40.442295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499576, 0.258466, 0.826813,
		0.014175, 0.951885, -0.306129,
		-0.866154, 0.164655, 0.471875,
		37.180408, 39.352257, 40.583858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964657, 39.751274, 40.672924>,  <37.786716, 39.237000, 40.253544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964657, 39.751274, 40.672924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.610638, 39.664959, 40.837914>,  <37.398228, 39.613171, 40.936905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.610638, 39.664959, 40.837914>,  <37.964657, 39.751274, 40.672924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610638, 39.664959, 40.837914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360698, 0.242235, 0.900677,
		-0.294267, 0.945917, -0.136556,
		-0.885045, -0.215785, 0.412472,
		37.345123, 39.600224, 40.961655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859581, 40.369457, 41.069000>,  <37.964657, 39.751274, 40.672924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859581, 40.369457, 41.069000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.669346, 40.043785, 41.202221>,  <37.555206, 39.848381, 41.282154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.669346, 40.043785, 41.202221>,  <37.859581, 40.369457, 41.069000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669346, 40.043785, 41.202221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172502, 0.284935, 0.942897,
		-0.862588, 0.505882, 0.004936,
		-0.475589, -0.814184, 0.333047,
		37.526669, 39.799530, 41.302135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520596, 40.647873, 41.610912>,  <37.859581, 40.369457, 41.069000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520596, 40.647873, 41.610912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532528, 40.251530, 41.663532>,  <37.539688, 40.013721, 41.695103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532528, 40.251530, 41.663532>,  <37.520596, 40.647873, 41.610912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532528, 40.251530, 41.663532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203732, 0.134868, 0.969693,
		-0.978572, -0.002126, 0.205893,
		0.029830, -0.990861, 0.131545,
		37.541477, 39.954269, 41.702995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279938, 40.652870, 42.316608>,  <37.520596, 40.647873, 41.610912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279938, 40.652870, 42.316608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.392345, 40.272327, 42.266102>,  <37.459789, 40.044003, 42.235798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.392345, 40.272327, 42.266102>,  <37.279938, 40.652870, 42.316608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392345, 40.272327, 42.266102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267182, -0.048812, 0.962409,
		-0.921761, -0.304188, 0.240469,
		0.281016, -0.951360, -0.126267,
		37.476650, 39.986919, 42.228222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978371, 40.226849, 42.886086>,  <37.279938, 40.652870, 42.316608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978371, 40.226849, 42.886086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.292168, 40.011852, 42.762363>,  <37.480446, 39.882854, 42.688129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.292168, 40.011852, 42.762363>,  <36.978371, 40.226849, 42.886086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292168, 40.011852, 42.762363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249075, -0.183673, 0.950908,
		-0.567917, -0.823022, -0.010214,
		0.784494, -0.537493, -0.309305,
		37.527515, 39.850605, 42.669571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990658, 39.614399, 43.262268>,  <36.978371, 40.226849, 42.886086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990658, 39.614399, 43.262268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371372, 39.640537, 43.142384>,  <37.599800, 39.656219, 43.070454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371372, 39.640537, 43.142384>,  <36.990658, 39.614399, 43.262268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371372, 39.640537, 43.142384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304943, -0.307520, 0.901355,
		-0.033266, -0.949295, -0.312622,
		0.951789, 0.065347, -0.299711,
		37.656910, 39.660141, 43.052471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247234, 39.054550, 43.569397>,  <36.990658, 39.614399, 43.262268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247234, 39.054550, 43.569397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.542507, 39.313923, 43.494972>,  <37.719669, 39.469547, 43.450317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.542507, 39.313923, 43.494972>,  <37.247234, 39.054550, 43.569397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542507, 39.313923, 43.494972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336244, -0.114556, 0.934782,
		0.584832, -0.752600, -0.302596,
		0.738181, 0.648437, -0.186061,
		37.763962, 39.508453, 43.439156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897491, 38.684547, 43.875843>,  <37.247234, 39.054550, 43.569397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897491, 38.684547, 43.875843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.008266, 39.067238, 43.840107>,  <38.074730, 39.296852, 43.818665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.008266, 39.067238, 43.840107>,  <37.897491, 38.684547, 43.875843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008266, 39.067238, 43.840107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327699, -0.006636, 0.944759,
		0.903283, -0.290912, -0.315356,
		0.276935, 0.956727, -0.089337,
		38.091347, 39.354256, 43.813305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544044, 38.648247, 44.136314>,  <37.897491, 38.684547, 43.875843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544044, 38.648247, 44.136314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.424114, 39.029839, 44.134216>,  <38.352158, 39.258793, 44.132957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.424114, 39.029839, 44.134216>,  <38.544044, 38.648247, 44.136314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424114, 39.029839, 44.134216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254387, 0.085247, 0.963338,
		0.919453, 0.287496, -0.268239,
		-0.299823, 0.953981, -0.005245,
		38.334167, 39.316032, 44.132641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032600, 39.026947, 44.501167>,  <38.544044, 38.648247, 44.136314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032600, 39.026947, 44.501167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.712002, 39.263935, 44.533615>,  <38.519642, 39.406128, 44.553082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.712002, 39.263935, 44.533615>,  <39.032600, 39.026947, 44.501167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712002, 39.263935, 44.533615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164486, 0.088008, 0.982445,
		0.574932, 0.800769, -0.167992,
		-0.801497, 0.592472, 0.081116,
		38.471554, 39.441677, 44.557949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526489, 39.531483, 44.220917>,  <39.032600, 39.026947, 44.501167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526489, 39.531483, 44.220917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.892334, 39.398762, 44.313347>,  <40.111839, 39.319130, 44.368805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.892334, 39.398762, 44.313347>,  <39.526489, 39.531483, 44.220917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892334, 39.398762, 44.313347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002983, -0.565940, -0.824441,
		0.404325, 0.754732, -0.516625,
		0.914611, -0.331800, 0.231075,
		40.166718, 39.299221, 44.382668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891888, 39.557713, 43.560173>,  <39.526489, 39.531483, 44.220917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891888, 39.557713, 43.560173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.080326, 39.292789, 43.793209>,  <40.193390, 39.133835, 43.933029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.080326, 39.292789, 43.793209>,  <39.891888, 39.557713, 43.560173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080326, 39.292789, 43.793209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129001, -0.601640, -0.788282,
		0.872598, 0.446511, -0.197991,
		0.471096, -0.662312, 0.582590,
		40.221657, 39.094097, 43.967987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678223, 39.413113, 43.320610>,  <39.891888, 39.557713, 43.560173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678223, 39.413113, 43.320610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.516605, 39.102852, 43.514565>,  <40.419636, 38.916695, 43.630936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.516605, 39.102852, 43.514565>,  <40.678223, 39.413113, 43.320610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516605, 39.102852, 43.514565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126477, -0.572360, -0.810190,
		0.905956, -0.266021, 0.329358,
		-0.404039, -0.775653, 0.484887,
		40.395393, 38.870155, 43.660030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078426, 38.807701, 43.118397>,  <40.678223, 39.413113, 43.320610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078426, 38.807701, 43.118397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.748615, 38.635662, 43.265457>,  <40.550728, 38.532436, 43.353695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.748615, 38.635662, 43.265457>,  <41.078426, 38.807701, 43.118397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748615, 38.635662, 43.265457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038915, -0.691336, -0.721485,
		0.564484, -0.580576, 0.586762,
		-0.824526, -0.430100, 0.367655,
		40.501259, 38.506634, 43.375755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189743, 38.180092, 42.815735>,  <41.078426, 38.807701, 43.118397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189743, 38.180092, 42.815735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.811699, 38.224087, 42.938805>,  <40.584873, 38.250484, 43.012646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.811699, 38.224087, 42.938805>,  <41.189743, 38.180092, 42.815735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811699, 38.224087, 42.938805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319614, -0.506779, -0.800638,
		0.067862, -0.855031, 0.514117,
		-0.945115, 0.109986, 0.307671,
		40.528164, 38.257084, 43.031105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780865, 37.503696, 42.679340>,  <41.189743, 38.180092, 42.815735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780865, 37.503696, 42.679340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.502941, 37.790543, 42.701206>,  <40.336185, 37.962650, 42.714325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.502941, 37.790543, 42.701206>,  <40.780865, 37.503696, 42.679340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502941, 37.790543, 42.701206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413798, -0.336448, -0.845916,
		-0.588229, -0.610368, 0.530507,
		-0.694808, 0.717115, 0.054661,
		40.294498, 38.005676, 42.717606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252205, 37.110294, 42.881767>,  <40.780865, 37.503696, 42.679340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252205, 37.110294, 42.881767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.150879, 37.455593, 42.707119>,  <40.090084, 37.662773, 42.602329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.150879, 37.455593, 42.707119>,  <40.252205, 37.110294, 42.881767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150879, 37.455593, 42.707119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516613, -0.502312, -0.693393,
		-0.817888, 0.049915, 0.573209,
		-0.253319, 0.863244, -0.436621,
		40.074883, 37.714565, 42.576134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676437, 36.882099, 42.485329>,  <40.252205, 37.110294, 42.881767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676437, 36.882099, 42.485329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.760448, 37.249020, 42.350010>,  <39.810856, 37.469173, 42.268818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.760448, 37.249020, 42.350010>,  <39.676437, 36.882099, 42.485329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760448, 37.249020, 42.350010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276733, -0.276090, -0.920431,
		-0.937715, 0.286929, 0.195863,
		0.210023, 0.917304, -0.338296,
		39.823456, 37.524212, 42.248520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149101, 37.043552, 42.136265>,  <39.676437, 36.882099, 42.485329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149101, 37.043552, 42.136265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.439163, 37.275940, 41.988415>,  <39.613201, 37.415371, 41.899704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.439163, 37.275940, 41.988415>,  <39.149101, 37.043552, 42.136265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439163, 37.275940, 41.988415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240290, -0.289544, -0.926512,
		-0.645297, 0.760685, -0.070364,
		0.725157, 0.580968, -0.369627,
		39.656712, 37.450230, 41.877525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937149, 37.512970, 41.594307>,  <39.149101, 37.043552, 42.136265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937149, 37.512970, 41.594307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.324448, 37.485813, 41.498062>,  <39.556828, 37.469521, 41.440315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.324448, 37.485813, 41.498062>,  <38.937149, 37.512970, 41.594307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324448, 37.485813, 41.498062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249964, -0.244176, -0.936961,
		0.004861, 0.967351, -0.253393,
		0.968243, -0.067894, -0.240616,
		39.614922, 37.465446, 41.425877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968254, 37.925983, 41.050434>,  <38.937149, 37.512970, 41.594307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968254, 37.925983, 41.050434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.291504, 37.691319, 41.029423>,  <39.485455, 37.550518, 41.016815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.291504, 37.691319, 41.029423>,  <38.968254, 37.925983, 41.050434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291504, 37.691319, 41.029423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154121, -0.124542, -0.980172,
		0.568491, 0.800196, -0.191063,
		0.808124, -0.586665, -0.052526,
		39.533939, 37.515320, 41.013664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192909, 38.052719, 40.465683>,  <38.968254, 37.925983, 41.050434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192909, 38.052719, 40.465683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.415646, 37.726219, 40.527229>,  <39.549286, 37.530319, 40.564156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.415646, 37.726219, 40.527229>,  <39.192909, 38.052719, 40.465683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415646, 37.726219, 40.527229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014068, -0.194483, -0.980805,
		0.830503, 0.543983, -0.119778,
		0.556836, -0.816247, 0.153866,
		39.582695, 37.481346, 40.573391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709595, 38.076229, 39.906746>,  <39.192909, 38.052719, 40.465683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709595, 38.076229, 39.906746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.687176, 37.700024, 40.040783>,  <39.673725, 37.474300, 40.121204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.687176, 37.700024, 40.040783>,  <39.709595, 38.076229, 39.906746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687176, 37.700024, 40.040783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057521, -0.332023, -0.941516,
		0.996770, -0.072042, -0.035492,
		-0.056044, -0.940516, 0.335095,
		39.670361, 37.417870, 40.141312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280788, 37.639084, 39.566437>,  <39.709595, 38.076229, 39.906746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280788, 37.639084, 39.566437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.966537, 37.416332, 39.674271>,  <39.777988, 37.282681, 39.738972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.966537, 37.416332, 39.674271>,  <40.280788, 37.639084, 39.566437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966537, 37.416332, 39.674271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049526, -0.490927, -0.869792,
		0.616715, -0.669980, 0.413266,
		-0.785627, -0.556882, 0.269580,
		39.730850, 37.249268, 39.755146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.491404, 33.101028, 44.513145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.601896, 33.400497, 44.272087>,  <28.668192, 33.580181, 44.127453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.601896, 33.400497, 44.272087>,  <28.491404, 33.101028, 44.513145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601896, 33.400497, 44.272087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679928, -0.290935, -0.673094,
		-0.679259, 0.595684, 0.428681,
		0.276233, 0.748677, -0.602643,
		28.684767, 33.625099, 44.091293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055956, 33.094223, 43.936527>,  <28.491404, 33.101028, 44.513145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055956, 33.094223, 43.936527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.284363, 33.381134, 43.776802>,  <28.421408, 33.553280, 43.680965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.284363, 33.381134, 43.776802>,  <28.055956, 33.094223, 43.936527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284363, 33.381134, 43.776802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573150, 0.000088, -0.819451,
		-0.587738, 0.696788, 0.411158,
		0.571020, 0.717277, -0.399312,
		28.455669, 33.596317, 43.657009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642952, 33.529049, 43.561451>,  <28.055956, 33.094223, 43.936527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642952, 33.529049, 43.561451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.003803, 33.588135, 43.399292>,  <28.220314, 33.623589, 43.301998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.003803, 33.588135, 43.399292>,  <27.642952, 33.529049, 43.561451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003803, 33.588135, 43.399292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417590, 0.062508, -0.906483,
		-0.108563, 0.987052, 0.118076,
		0.902127, 0.147718, -0.405397,
		28.274441, 33.632450, 43.277672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605398, 34.185246, 43.196018>,  <27.642952, 33.529049, 43.561451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605398, 34.185246, 43.196018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.900894, 33.961147, 43.046146>,  <28.078192, 33.826687, 42.956223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.900894, 33.961147, 43.046146>,  <27.605398, 34.185246, 43.196018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900894, 33.961147, 43.046146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306807, 0.215452, -0.927065,
		0.600111, 0.799815, -0.012725,
		0.738739, -0.560246, -0.374684,
		28.122517, 33.793072, 42.933743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742773, 34.509590, 42.600338>,  <27.605398, 34.185246, 43.196018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742773, 34.509590, 42.600338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.902861, 34.148609, 42.536587>,  <27.998913, 33.932018, 42.498337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.902861, 34.148609, 42.536587>,  <27.742773, 34.509590, 42.600338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902861, 34.148609, 42.536587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322350, 0.024167, -0.946312,
		0.857856, 0.430106, -0.281234,
		0.400217, -0.902455, -0.159377,
		28.022926, 33.877872, 42.488773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147375, 34.550209, 41.976700>,  <27.742773, 34.509590, 42.600338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147375, 34.550209, 41.976700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.065714, 34.161633, 42.025066>,  <28.016718, 33.928486, 42.054085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.065714, 34.161633, 42.025066>,  <28.147375, 34.550209, 41.976700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065714, 34.161633, 42.025066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093337, -0.103640, -0.990226,
		0.974479, -0.213442, -0.069514,
		-0.204152, -0.971443, 0.120917,
		28.004469, 33.870201, 42.061340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485277, 34.176399, 41.340240>,  <28.147375, 34.550209, 41.976700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485277, 34.176399, 41.340240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.234613, 33.887691, 41.457779>,  <28.084215, 33.714466, 41.528301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.234613, 33.887691, 41.457779>,  <28.485277, 34.176399, 41.340240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234613, 33.887691, 41.457779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291724, -0.132378, -0.947298,
		0.722632, -0.679353, -0.127602,
		-0.626658, -0.721772, 0.293844,
		28.046616, 33.671162, 41.545933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516735, 33.771923, 40.795563>,  <28.485277, 34.176399, 41.340240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516735, 33.771923, 40.795563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188951, 33.653973, 40.992149>,  <27.992281, 33.583202, 41.110100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188951, 33.653973, 40.992149>,  <28.516735, 33.771923, 40.795563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188951, 33.653973, 40.992149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490321, -0.083321, -0.867550,
		0.296767, -0.951896, -0.076306,
		-0.819460, -0.294875, 0.491462,
		27.943113, 33.565510, 41.139587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313900, 33.102039, 40.548668>,  <28.516735, 33.771923, 40.795563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313900, 33.102039, 40.548668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.987986, 33.274719, 40.703465>,  <27.792437, 33.378326, 40.796341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.987986, 33.274719, 40.703465>,  <28.313900, 33.102039, 40.548668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987986, 33.274719, 40.703465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462053, -0.080346, -0.883205,
		-0.350189, -0.898431, 0.264934,
		-0.814785, 0.431702, 0.386987,
		27.743549, 33.404228, 40.819561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700001, 32.624996, 40.316452>,  <28.313900, 33.102039, 40.548668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700001, 32.624996, 40.316452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.531977, 32.971714, 40.423950>,  <27.431162, 33.179745, 40.488449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.531977, 32.971714, 40.423950>,  <27.700001, 32.624996, 40.316452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531977, 32.971714, 40.423950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478946, 0.039786, -0.876942,
		-0.770819, -0.497080, 0.398434,
		-0.420059, 0.866792, 0.268743,
		27.405958, 33.231750, 40.504574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035864, 32.612225, 39.976505>,  <27.700001, 32.624996, 40.316452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035864, 32.612225, 39.976505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.067850, 32.996658, 40.082283>,  <27.087042, 33.227318, 40.145748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.067850, 32.996658, 40.082283>,  <27.035864, 32.612225, 39.976505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067850, 32.996658, 40.082283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580178, 0.260598, -0.771675,
		-0.810555, -0.091717, 0.578437,
		0.079964, 0.961081, 0.264441,
		27.091839, 33.284981, 40.161613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392374, 32.942120, 39.815914>,  <27.035864, 32.612225, 39.976505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392374, 32.942120, 39.815914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.639257, 33.256790, 39.821438>,  <26.787388, 33.445591, 39.824753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.639257, 33.256790, 39.821438>,  <26.392374, 32.942120, 39.815914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.639257, 33.256790, 39.821438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537381, 0.434306, -0.722911,
		-0.574695, 0.438767, 0.690804,
		0.617209, 0.786678, 0.013808,
		26.824421, 33.492794, 39.825581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.964918, 33.472118, 39.820728>,  <26.392374, 32.942120, 39.815914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.964918, 33.472118, 39.820728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.316912, 33.603844, 39.683804>,  <26.528109, 33.682880, 39.601646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.316912, 33.603844, 39.683804>,  <25.964918, 33.472118, 39.820728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316912, 33.603844, 39.683804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470790, 0.508888, -0.720687,
		-0.063134, 0.795352, 0.602852,
		0.879983, 0.329316, -0.342316,
		26.580906, 33.702637, 39.581108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880211, 34.201962, 39.778965>,  <25.964918, 33.472118, 39.820728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.880211, 34.201962, 39.778965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.161572, 34.081242, 39.521549>,  <26.330387, 34.008808, 39.367100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.161572, 34.081242, 39.521549>,  <25.880211, 34.201962, 39.778965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161572, 34.081242, 39.521549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499405, 0.434412, -0.749587,
		0.505786, 0.848648, 0.154846,
		0.703402, -0.301800, -0.643539,
		26.372593, 33.990704, 39.328487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910364, 34.784016, 39.264202>,  <25.880211, 34.201962, 39.778965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910364, 34.784016, 39.264202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.121138, 34.511509, 39.060944>,  <26.247602, 34.348003, 38.938988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.121138, 34.511509, 39.060944>,  <25.910364, 34.784016, 39.264202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121138, 34.511509, 39.060944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239548, 0.454599, -0.857879,
		0.815450, 0.573771, 0.076347,
		0.526933, -0.681269, -0.508148,
		26.279217, 34.307129, 38.908501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356840, 35.141232, 38.803257>,  <25.910364, 34.784016, 39.264202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356840, 35.141232, 38.803257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.314154, 34.780170, 38.636482>,  <26.288542, 34.563534, 38.536419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.314154, 34.780170, 38.636482>,  <26.356840, 35.141232, 38.803257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314154, 34.780170, 38.636482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176025, 0.429857, -0.885572,
		0.978584, -0.021112, -0.204761,
		-0.106714, -0.902650, -0.416935,
		26.282139, 34.509377, 38.511402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593561, 35.180637, 38.122829>,  <26.356840, 35.141232, 38.803257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593561, 35.180637, 38.122829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.385462, 34.841431, 38.082413>,  <26.260603, 34.637905, 38.058163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.385462, 34.841431, 38.082413>,  <26.593561, 35.180637, 38.122829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385462, 34.841431, 38.082413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035435, 0.139648, -0.989567,
		0.853281, -0.511238, -0.102701,
		-0.520247, -0.848017, -0.101043,
		26.229387, 34.587025, 38.052101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858503, 34.967640, 37.461197>,  <26.593561, 35.180637, 38.122829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858503, 34.967640, 37.461197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.512188, 34.781387, 37.534519>,  <26.304399, 34.669636, 37.578514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.512188, 34.781387, 37.534519>,  <26.858503, 34.967640, 37.461197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512188, 34.781387, 37.534519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221656, 0.028429, -0.974710,
		0.448645, -0.884521, -0.127823,
		-0.865786, -0.465632, 0.183305,
		26.252453, 34.641697, 37.589512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867641, 34.520042, 36.937923>,  <26.858503, 34.967640, 37.461197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867641, 34.520042, 36.937923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.487854, 34.554996, 37.058506>,  <26.259981, 34.575970, 37.130856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.487854, 34.554996, 37.058506>,  <26.867641, 34.520042, 36.937923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487854, 34.554996, 37.058506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272290, 0.248407, -0.929598,
		-0.156116, -0.964706, -0.212060,
		-0.949466, 0.087383, 0.301460,
		26.203014, 34.581211, 37.148945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476574, 34.096642, 36.544464>,  <26.867641, 34.520042, 36.937923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476574, 34.096642, 36.544464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.802803, 33.900436, 36.421669>,  <27.998541, 33.782715, 36.347992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.802803, 33.900436, 36.421669>,  <27.476574, 34.096642, 36.544464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802803, 33.900436, 36.421669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305022, -0.086401, 0.948418,
		-0.491732, -0.867142, 0.079150,
		0.815574, -0.490510, -0.306984,
		28.047476, 33.753284, 36.329575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557049, 33.609924, 37.017788>,  <27.476574, 34.096642, 36.544464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557049, 33.609924, 37.017788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917278, 33.628086, 36.844860>,  <28.133417, 33.638985, 36.741104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917278, 33.628086, 36.844860>,  <27.557049, 33.609924, 37.017788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917278, 33.628086, 36.844860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434631, -0.076079, 0.897390,
		0.007854, -0.996068, -0.088249,
		0.900574, 0.045404, -0.432324,
		28.187450, 33.641708, 36.715164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957029, 33.081818, 37.405560>,  <27.557049, 33.609924, 37.017788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957029, 33.081818, 37.405560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.190783, 33.359001, 37.236656>,  <28.331034, 33.525311, 37.135315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.190783, 33.359001, 37.236656>,  <27.957029, 33.081818, 37.405560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190783, 33.359001, 37.236656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487888, 0.115766, 0.865196,
		0.648430, -0.711620, -0.270436,
		0.584383, 0.692961, -0.422257,
		28.366096, 33.566891, 37.109978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612768, 32.966572, 37.702259>,  <27.957029, 33.081818, 37.405560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612768, 32.966572, 37.702259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.646080, 33.344955, 37.576900>,  <28.666067, 33.571987, 37.501686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.646080, 33.344955, 37.576900>,  <28.612768, 32.966572, 37.702259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646080, 33.344955, 37.576900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459508, 0.242609, 0.854396,
		0.884261, -0.215164, -0.414473,
		0.083280, 0.945963, -0.313399,
		28.671064, 33.628746, 37.482880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195082, 33.088169, 37.896301>,  <28.612768, 32.966572, 37.702259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195082, 33.088169, 37.896301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.036449, 33.451447, 37.842777>,  <28.941269, 33.669415, 37.810661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.036449, 33.451447, 37.842777>,  <29.195082, 33.088169, 37.896301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036449, 33.451447, 37.842777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469025, 0.325761, 0.820911,
		0.789137, 0.262798, -0.555157,
		-0.396583, 0.908194, -0.133811,
		28.917475, 33.723904, 37.802635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765490, 33.417412, 38.064556>,  <29.195082, 33.088169, 37.896301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765490, 33.417412, 38.064556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.459217, 33.673515, 38.089233>,  <29.275454, 33.827175, 38.104042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.459217, 33.673515, 38.089233>,  <29.765490, 33.417412, 38.064556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459217, 33.673515, 38.089233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410970, 0.413170, 0.812646,
		0.494810, 0.647583, -0.579482,
		-0.765680, 0.640256, 0.061697,
		29.229513, 33.865593, 38.107742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035429, 34.189411, 38.021072>,  <29.765490, 33.417412, 38.064556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035429, 34.189411, 38.021072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.678173, 34.214855, 38.199173>,  <29.463820, 34.230122, 38.306034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.678173, 34.214855, 38.199173>,  <30.035429, 34.189411, 38.021072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678173, 34.214855, 38.199173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411868, 0.513448, 0.752819,
		-0.180729, 0.855760, -0.484781,
		-0.893142, 0.063609, 0.445255,
		29.410231, 34.233936, 38.332748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038843, 34.930931, 38.289635>,  <30.035429, 34.189411, 38.021072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038843, 34.930931, 38.289635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770750, 34.711868, 38.489975>,  <29.609894, 34.580429, 38.610180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770750, 34.711868, 38.489975>,  <30.038843, 34.930931, 38.289635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770750, 34.711868, 38.489975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339381, 0.373997, 0.863103,
		-0.660005, 0.748461, -0.064800,
		-0.670234, -0.547661, 0.500853,
		29.569679, 34.547569, 38.640232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915363, 35.373726, 38.833454>,  <30.038843, 34.930931, 38.289635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915363, 35.373726, 38.833454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.780941, 35.011383, 38.936596>,  <29.700287, 34.793976, 38.998482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.780941, 35.011383, 38.936596>,  <29.915363, 35.373726, 38.833454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780941, 35.011383, 38.936596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356247, 0.131178, 0.925138,
		-0.871867, 0.402759, 0.278626,
		-0.336058, -0.905857, 0.257851,
		29.680124, 34.739624, 39.013950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768528, 35.464413, 39.469078>,  <29.915363, 35.373726, 38.833454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768528, 35.464413, 39.469078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.798477, 35.065788, 39.454899>,  <29.816446, 34.826614, 39.446392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.798477, 35.065788, 39.454899>,  <29.768528, 35.464413, 39.469078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798477, 35.065788, 39.454899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471068, 0.004016, 0.882088,
		-0.878914, -0.082741, 0.469750,
		0.074872, -0.996563, -0.035447,
		29.820938, 34.766819, 39.444263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492880, 35.119186, 40.155968>,  <29.768528, 35.464413, 39.469078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492880, 35.119186, 40.155968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752911, 34.872406, 39.978531>,  <29.908930, 34.724339, 39.872066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752911, 34.872406, 39.978531>,  <29.492880, 35.119186, 40.155968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752911, 34.872406, 39.978531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578018, 0.022548, 0.815712,
		-0.493249, -0.786682, 0.371265,
		0.650077, -0.616947, -0.443595,
		29.947933, 34.687321, 39.845451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718924, 34.629734, 40.637077>,  <29.492880, 35.119186, 40.155968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718924, 34.629734, 40.637077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.014610, 34.616695, 40.368004>,  <30.192022, 34.608871, 40.206562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.014610, 34.616695, 40.368004>,  <29.718924, 34.629734, 40.637077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014610, 34.616695, 40.368004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669347, 0.145901, 0.728483,
		0.074396, -0.988762, 0.129673,
		0.739216, -0.032600, -0.672679,
		30.236376, 34.606918, 40.166199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222691, 34.235794, 40.916557>,  <29.718924, 34.629734, 40.637077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222691, 34.235794, 40.916557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.411011, 34.455296, 40.640236>,  <30.524004, 34.586998, 40.474442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.411011, 34.455296, 40.640236>,  <30.222691, 34.235794, 40.916557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411011, 34.455296, 40.640236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728471, 0.199896, 0.655264,
		0.497669, -0.811732, -0.305641,
		0.470802, 0.548756, -0.690806,
		30.552252, 34.619923, 40.432995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793102, 34.201786, 41.173252>,  <30.222691, 34.235794, 40.916557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793102, 34.201786, 41.173252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.901798, 34.460308, 40.888031>,  <30.967016, 34.615421, 40.716900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.901798, 34.460308, 40.888031>,  <30.793102, 34.201786, 41.173252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901798, 34.460308, 40.888031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797770, 0.263125, 0.542520,
		0.538257, -0.716276, -0.444104,
		0.271739, 0.646308, -0.713052,
		30.983320, 34.654202, 40.674114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466423, 34.081505, 41.057571>,  <30.793102, 34.201786, 41.173252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466423, 34.081505, 41.057571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.397661, 34.455513, 40.933517>,  <31.356405, 34.679916, 40.859085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.397661, 34.455513, 40.933517>,  <31.466423, 34.081505, 41.057571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397661, 34.455513, 40.933517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653271, 0.343841, 0.674545,
		0.737351, -0.086645, -0.669930,
		-0.171903, 0.935022, -0.310134,
		31.346090, 34.736019, 40.840477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100803, 34.511864, 40.900269>,  <31.466423, 34.081505, 41.057571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100803, 34.511864, 40.900269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.816584, 34.786045, 40.963871>,  <31.646053, 34.950554, 41.002033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.816584, 34.786045, 40.963871>,  <32.100803, 34.511864, 40.900269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816584, 34.786045, 40.963871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592350, 0.460716, 0.660956,
		0.379798, 0.563824, -0.733387,
		-0.710546, 0.685451, 0.159002,
		31.603420, 34.991680, 41.011570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452492, 35.272747, 41.119354>,  <32.100803, 34.511864, 40.900269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452492, 35.272747, 41.119354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.068790, 35.272377, 41.232368>,  <31.838570, 35.272156, 41.300179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.068790, 35.272377, 41.232368>,  <32.452492, 35.272747, 41.119354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068790, 35.272377, 41.232368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272527, 0.260765, 0.926137,
		-0.074535, 0.965402, -0.249887,
		-0.959257, -0.000928, 0.282534,
		31.781013, 35.272099, 41.317127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382416, 35.862785, 41.524563>,  <32.452492, 35.272747, 41.119354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382416, 35.862785, 41.524563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.038528, 35.688801, 41.631672>,  <31.832197, 35.584412, 41.695938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.038528, 35.688801, 41.631672>,  <32.382416, 35.862785, 41.524563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038528, 35.688801, 41.631672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176430, 0.239102, 0.954831,
		-0.479336, 0.868126, -0.128820,
		-0.859715, -0.434957, 0.267773,
		31.780615, 35.558315, 41.712006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085911, 36.373005, 41.974743>,  <32.382416, 35.862785, 41.524563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085911, 36.373005, 41.974743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.915718, 36.016518, 42.037605>,  <31.813602, 35.802628, 42.075325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.915718, 36.016518, 42.037605>,  <32.085911, 36.373005, 41.974743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915718, 36.016518, 42.037605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116433, 0.118308, 0.986127,
		-0.897445, 0.437878, 0.053429,
		-0.425482, -0.891216, 0.157158,
		31.788073, 35.749153, 42.084751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516155, 36.457695, 42.333900>,  <32.085911, 36.373005, 41.974743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516155, 36.457695, 42.333900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.630064, 36.087425, 42.433525>,  <31.698410, 35.865265, 42.493301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.630064, 36.087425, 42.433525>,  <31.516155, 36.457695, 42.333900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630064, 36.087425, 42.433525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096297, 0.230885, 0.968204,
		-0.953746, -0.299703, -0.023390,
		0.284773, -0.925673, 0.249066,
		31.715496, 35.809723, 42.508244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072853, 36.161777, 42.935703>,  <31.516155, 36.457695, 42.333900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072853, 36.161777, 42.935703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.408255, 35.943832, 42.938110>,  <31.609497, 35.813065, 42.939552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.408255, 35.943832, 42.938110>,  <31.072853, 36.161777, 42.935703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408255, 35.943832, 42.938110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098510, 0.162439, 0.981789,
		-0.535914, -0.822643, 0.189881,
		0.838506, -0.544859, 0.006015,
		31.659807, 35.780376, 42.939915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971186, 35.671284, 43.489075>,  <31.072853, 36.161777, 42.935703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971186, 35.671284, 43.489075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.367165, 35.689381, 43.435467>,  <31.604752, 35.700237, 43.403301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.367165, 35.689381, 43.435467>,  <30.971186, 35.671284, 43.489075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367165, 35.689381, 43.435467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139561, -0.157968, 0.977532,
		0.023055, -0.986407, -0.162694,
		0.989945, 0.045242, -0.134023,
		31.664148, 35.702953, 43.395260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118925, 35.131931, 43.986607>,  <30.971186, 35.671284, 43.489075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118925, 35.131931, 43.986607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.430676, 35.368092, 43.902710>,  <31.617725, 35.509789, 43.852371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.430676, 35.368092, 43.902710>,  <31.118925, 35.131931, 43.986607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430676, 35.368092, 43.902710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252965, 0.009750, 0.967426,
		0.573218, -0.807048, -0.141753,
		0.779377, 0.590405, -0.209744,
		31.664490, 35.545212, 43.839787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.301102, 36.240623, 44.976894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.993237, 36.072472, 45.169102>,  <40.808517, 35.971581, 45.284428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.993237, 36.072472, 45.169102>,  <41.301102, 36.240623, 44.976894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993237, 36.072472, 45.169102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243689, 0.502225, 0.829690,
		-0.590113, 0.755680, -0.284104,
		-0.769664, -0.420378, 0.480520,
		40.762337, 35.946358, 45.313259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041710, 36.885441, 45.270905>,  <41.301102, 36.240623, 44.976894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041710, 36.885441, 45.270905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.907341, 36.568695, 45.474907>,  <40.826721, 36.378647, 45.597309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.907341, 36.568695, 45.474907>,  <41.041710, 36.885441, 45.270905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907341, 36.568695, 45.474907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203616, 0.467616, 0.860160,
		-0.919618, 0.392793, 0.004154,
		-0.335923, -0.791865, 0.510007,
		40.806564, 36.331135, 45.627911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625721, 37.214527, 45.707462>,  <41.041710, 36.885441, 45.270905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625721, 37.214527, 45.707462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.693939, 36.849770, 45.856789>,  <40.734871, 36.630913, 45.946384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.693939, 36.849770, 45.856789>,  <40.625721, 37.214527, 45.707462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693939, 36.849770, 45.856789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168204, 0.400243, 0.900840,
		-0.970887, -0.090841, 0.221644,
		0.170545, -0.911895, 0.373311,
		40.745102, 36.576202, 45.968781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303024, 37.215252, 46.312042>,  <40.625721, 37.214527, 45.707462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303024, 37.215252, 46.312042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.580944, 36.930954, 46.356037>,  <40.747696, 36.760376, 46.382435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.580944, 36.930954, 46.356037>,  <40.303024, 37.215252, 46.312042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580944, 36.930954, 46.356037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122808, 0.267929, 0.955580,
		-0.708643, -0.650426, 0.273442,
		0.694797, -0.710746, 0.109988,
		40.789383, 36.717731, 46.389034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164219, 37.001030, 46.971786>,  <40.303024, 37.215252, 46.312042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164219, 37.001030, 46.971786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.526287, 36.848629, 46.896408>,  <40.743526, 36.757191, 46.851181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.526287, 36.848629, 46.896408>,  <40.164219, 37.001030, 46.971786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526287, 36.848629, 46.896408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254921, 0.131827, 0.957934,
		-0.340129, -0.915129, 0.216450,
		0.905167, -0.380999, -0.188447,
		40.797836, 36.734329, 46.839874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403419, 36.630600, 47.594955>,  <40.164219, 37.001030, 46.971786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403419, 36.630600, 47.594955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.734848, 36.698612, 47.381580>,  <40.933704, 36.739418, 47.253555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.734848, 36.698612, 47.381580>,  <40.403419, 36.630600, 47.594955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734848, 36.698612, 47.381580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524219, 0.098984, 0.845811,
		0.196615, -0.980455, -0.007117,
		0.828575, 0.170030, -0.533435,
		40.983421, 36.749622, 47.221550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860329, 36.125294, 47.777096>,  <40.403419, 36.630600, 47.594955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860329, 36.125294, 47.777096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.094864, 36.418079, 47.638283>,  <41.235584, 36.593750, 47.554996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.094864, 36.418079, 47.638283>,  <40.860329, 36.125294, 47.777096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094864, 36.418079, 47.638283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341608, 0.165025, 0.925241,
		0.734515, -0.661053, -0.153286,
		0.586337, 0.731967, -0.347034,
		41.270763, 36.637669, 47.534172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607796, 36.025318, 47.947445>,  <40.860329, 36.125294, 47.777096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607796, 36.025318, 47.947445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.529175, 36.414627, 47.899925>,  <41.482002, 36.648212, 47.871414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.529175, 36.414627, 47.899925>,  <41.607796, 36.025318, 47.947445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529175, 36.414627, 47.899925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429680, 0.194412, 0.881805,
		0.881330, 0.122272, -0.456406,
		-0.196551, 0.973269, -0.118804,
		41.470211, 36.706608, 47.864285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238056, 36.305824, 48.361217>,  <41.607796, 36.025318, 47.947445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238056, 36.305824, 48.361217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.055744, 36.657898, 48.308235>,  <41.946358, 36.869141, 48.276447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.055744, 36.657898, 48.308235>,  <42.238056, 36.305824, 48.361217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055744, 36.657898, 48.308235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435909, 0.350467, 0.828949,
		0.776048, 0.320078, -0.543415,
		-0.455777, 0.880183, -0.132454,
		41.919010, 36.921951, 48.268497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715168, 36.719521, 48.552658>,  <42.238056, 36.305824, 48.361217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715168, 36.719521, 48.552658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.386089, 36.944626, 48.584805>,  <42.188641, 37.079689, 48.604092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.386089, 36.944626, 48.584805>,  <42.715168, 36.719521, 48.552658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386089, 36.944626, 48.584805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378133, 0.436169, 0.816562,
		0.424480, 0.702175, -0.571636,
		-0.822699, 0.562768, 0.080370,
		42.139278, 37.113457, 48.608917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925430, 37.351604, 48.764713>,  <42.715168, 36.719521, 48.552658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925430, 37.351604, 48.764713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.538002, 37.381390, 48.859646>,  <42.305546, 37.399261, 48.916607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.538002, 37.381390, 48.859646>,  <42.925430, 37.351604, 48.764713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538002, 37.381390, 48.859646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248737, 0.286722, 0.925160,
		0.000846, 0.955115, -0.296233,
		-0.968571, 0.074466, 0.237330,
		42.247429, 37.403728, 48.930843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783440, 38.032810, 48.981438>,  <42.925430, 37.351604, 48.764713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783440, 38.032810, 48.981438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.486477, 37.811707, 49.132854>,  <42.308300, 37.679043, 49.223705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.486477, 37.811707, 49.132854>,  <42.783440, 38.032810, 48.981438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486477, 37.811707, 49.132854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239299, 0.308961, 0.920478,
		-0.625758, 0.773950, -0.097099,
		-0.742403, -0.552761, 0.378540,
		42.263756, 37.645878, 49.246418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410069, 38.410126, 49.533577>,  <42.783440, 38.032810, 48.981438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410069, 38.410126, 49.533577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.333755, 38.019855, 49.576748>,  <42.287968, 37.785694, 49.602650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.333755, 38.019855, 49.576748>,  <42.410069, 38.410126, 49.533577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333755, 38.019855, 49.576748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126770, 0.084540, 0.988323,
		-0.973411, 0.202241, 0.107558,
		-0.190786, -0.975680, 0.107930,
		42.276520, 37.727150, 49.609127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958714, 38.396290, 50.083481>,  <42.410069, 38.410126, 49.533577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958714, 38.396290, 50.083481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.127453, 38.036907, 50.034775>,  <42.228695, 37.821278, 50.005550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.127453, 38.036907, 50.034775>,  <41.958714, 38.396290, 50.083481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127453, 38.036907, 50.034775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026024, -0.122242, 0.992159,
		-0.906292, -0.421711, -0.028186,
		0.421850, -0.898452, -0.121762,
		42.254009, 37.767372, 49.998245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804588, 39.126205, 49.825722>,  <41.958714, 38.396290, 50.083481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804588, 39.126205, 49.825722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.730057, 39.514503, 49.886292>,  <41.685337, 39.747482, 49.922634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.730057, 39.514503, 49.886292>,  <41.804588, 39.126205, 49.825722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730057, 39.514503, 49.886292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389411, 0.068528, -0.918511,
		-0.902020, -0.230110, 0.365252,
		-0.186328, 0.970749, 0.151421,
		41.674160, 39.805729, 49.931717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175827, 39.238735, 49.658756>,  <41.804588, 39.126205, 49.825722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175827, 39.238735, 49.658756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.368282, 39.584709, 49.601627>,  <41.483757, 39.792294, 49.567348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.368282, 39.584709, 49.601627>,  <41.175827, 39.238735, 49.658756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368282, 39.584709, 49.601627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389832, 0.065174, -0.918577,
		-0.785197, 0.497642, 0.368536,
		0.481141, 0.864931, -0.142822,
		41.512623, 39.844189, 49.558781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851768, 39.512249, 49.019154>,  <41.175827, 39.238735, 49.658756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851768, 39.512249, 49.019154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.145428, 39.780266, 49.063107>,  <41.321625, 39.941074, 49.089478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.145428, 39.780266, 49.063107>,  <40.851768, 39.512249, 49.019154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145428, 39.780266, 49.063107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042189, 0.116502, -0.992294,
		-0.677676, 0.733128, 0.057262,
		0.734150, 0.670038, 0.109880,
		41.365673, 39.981277, 49.096069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612152, 40.187954, 48.745472>,  <40.851768, 39.512249, 49.019154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612152, 40.187954, 48.745472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.006844, 40.125439, 48.727859>,  <41.243660, 40.087929, 48.717293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.006844, 40.125439, 48.727859>,  <40.612152, 40.187954, 48.745472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006844, 40.125439, 48.727859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037898, 0.041984, -0.998399,
		0.157882, 0.986820, 0.035504,
		0.986730, -0.156284, -0.044027,
		41.302864, 40.078552, 48.714653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785374, 40.469982, 48.166431>,  <40.612152, 40.187954, 48.745472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785374, 40.469982, 48.166431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.115791, 40.259678, 48.247650>,  <41.314041, 40.133495, 48.296379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.115791, 40.259678, 48.247650>,  <40.785374, 40.469982, 48.166431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115791, 40.259678, 48.247650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100715, -0.216760, -0.971016,
		0.554529, 0.822555, -0.126102,
		0.826047, -0.525756, 0.203043,
		41.363605, 40.101952, 48.308563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285667, 40.768166, 47.779293>,  <40.785374, 40.469982, 48.166431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285667, 40.768166, 47.779293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.391380, 40.386875, 47.837963>,  <41.454807, 40.158100, 47.873165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.391380, 40.386875, 47.837963>,  <41.285667, 40.768166, 47.779293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391380, 40.386875, 47.837963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033158, -0.160972, -0.986402,
		0.963876, 0.255823, -0.074149,
		0.264280, -0.953228, 0.146674,
		41.470665, 40.100906, 47.881966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811699, 40.607815, 47.247910>,  <41.285667, 40.768166, 47.779293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811699, 40.607815, 47.247910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.705883, 40.234413, 47.344730>,  <41.642395, 40.010372, 47.402821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.705883, 40.234413, 47.344730>,  <41.811699, 40.607815, 47.247910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705883, 40.234413, 47.344730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236120, -0.180655, -0.954783,
		0.935022, -0.309732, -0.172629,
		-0.264540, -0.933504, 0.242050,
		41.626522, 39.954361, 47.417347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008854, 40.185898, 46.644920>,  <41.811699, 40.607815, 47.247910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008854, 40.185898, 46.644920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.748291, 39.970921, 46.859146>,  <41.591953, 39.841934, 46.987682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.748291, 39.970921, 46.859146>,  <42.008854, 40.185898, 46.644920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748291, 39.970921, 46.859146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334579, -0.430059, -0.838514,
		0.680976, -0.725401, 0.100326,
		-0.651405, -0.537441, 0.535563,
		41.552868, 39.809689, 47.019814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094509, 39.505276, 46.399555>,  <42.008854, 40.185898, 46.644920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094509, 39.505276, 46.399555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.724422, 39.492039, 46.550751>,  <41.502369, 39.484097, 46.641468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.724422, 39.492039, 46.550751>,  <42.094509, 39.505276, 46.399555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724422, 39.492039, 46.550751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343433, -0.350498, -0.871324,
		0.161314, -0.935979, 0.312924,
		-0.925220, -0.033089, 0.377986,
		41.446857, 39.482113, 46.664146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813892, 39.091721, 45.953781>,  <42.094509, 39.505276, 46.399555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813892, 39.091721, 45.953781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.489079, 39.207844, 46.156296>,  <41.294189, 39.277519, 46.277805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.489079, 39.207844, 46.156296>,  <41.813892, 39.091721, 45.953781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489079, 39.207844, 46.156296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554916, -0.115401, -0.823863,
		-0.180756, -0.949947, 0.254811,
		-0.812031, 0.290317, 0.506281,
		41.245468, 39.294937, 46.308182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215393, 38.542027, 46.010460>,  <41.813892, 39.091721, 45.953781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215393, 38.542027, 46.010460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.041584, 38.902248, 46.015930>,  <40.937298, 39.118382, 46.019211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.041584, 38.902248, 46.015930>,  <41.215393, 38.542027, 46.010460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041584, 38.902248, 46.015930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514606, -0.235782, -0.824371,
		-0.739169, -0.365245, 0.565885,
		-0.434523, 0.900557, 0.013675,
		40.911228, 39.172417, 46.020031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527920, 38.438000, 45.950089>,  <41.215393, 38.542027, 46.010460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527920, 38.438000, 45.950089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.573948, 38.817337, 45.831829>,  <40.601566, 39.044937, 45.760872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.573948, 38.817337, 45.831829>,  <40.527920, 38.438000, 45.950089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573948, 38.817337, 45.831829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437096, -0.218929, -0.872363,
		-0.892024, 0.229611, 0.389324,
		0.115070, 0.948341, -0.295651,
		40.608467, 39.101841, 45.743134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858200, 38.648647, 45.713573>,  <40.527920, 38.438000, 45.950089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858200, 38.648647, 45.713573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.094463, 38.931606, 45.558285>,  <40.236221, 39.101379, 45.465111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.094463, 38.931606, 45.558285>,  <39.858200, 38.648647, 45.713573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094463, 38.931606, 45.558285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373821, -0.186491, -0.908558,
		-0.715110, 0.681772, 0.154287,
		0.590656, 0.707395, -0.388223,
		40.271660, 39.143826, 45.441818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436501, 39.128273, 45.337490>,  <39.858200, 38.648647, 45.713573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436501, 39.128273, 45.337490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.805557, 39.125214, 45.183258>,  <40.026993, 39.123379, 45.090721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.805557, 39.125214, 45.183258>,  <39.436501, 39.128273, 45.337490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805557, 39.125214, 45.183258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373933, -0.262349, -0.889577,
		-0.094353, 0.964943, -0.244914,
		0.922644, -0.007647, -0.385577,
		40.082352, 39.122921, 45.067585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299217, 39.716972, 44.861660>,  <39.436501, 39.128273, 45.337490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299217, 39.716972, 44.861660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.904644, 39.685486, 44.919296>,  <38.667900, 39.666595, 44.953880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.904644, 39.685486, 44.919296>,  <39.299217, 39.716972, 44.861660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904644, 39.685486, 44.919296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117374, 0.275619, 0.954074,
		-0.114812, 0.958039, -0.262640,
		-0.986429, -0.078712, 0.144094,
		38.608715, 39.661873, 44.962524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122437, 40.283325, 45.352962>,  <39.299217, 39.716972, 44.861660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122437, 40.283325, 45.352962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.812824, 40.030346, 45.364891>,  <38.627056, 39.878559, 45.372047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.812824, 40.030346, 45.364891>,  <39.122437, 40.283325, 45.352962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812824, 40.030346, 45.364891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034997, 0.089771, 0.995347,
		-0.632183, 0.769384, -0.091619,
		-0.774029, -0.632448, 0.029826,
		38.580616, 39.840611, 45.373840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672932, 40.579021, 45.835453>,  <39.122437, 40.283325, 45.352962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672932, 40.579021, 45.835453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571701, 40.192062, 45.831615>,  <38.510963, 39.959885, 45.829311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571701, 40.192062, 45.831615>,  <38.672932, 40.579021, 45.835453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571701, 40.192062, 45.831615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163261, 0.032930, 0.986033,
		-0.953572, 0.251105, -0.166272,
		-0.253074, -0.967399, -0.009594,
		38.495777, 39.901844, 45.828735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069450, 40.574318, 46.274334>,  <38.672932, 40.579021, 45.835453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069450, 40.574318, 46.274334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.185314, 40.192120, 46.251995>,  <38.254833, 39.962799, 46.238594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.185314, 40.192120, 46.251995>,  <38.069450, 40.574318, 46.274334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185314, 40.192120, 46.251995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102858, -0.089083, 0.990699,
		-0.951586, -0.281224, -0.124084,
		0.289662, -0.955498, -0.055844,
		38.272213, 39.905472, 46.235241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790207, 40.394062, 46.818176>,  <38.069450, 40.574318, 46.274334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790207, 40.394062, 46.818176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.032406, 40.082489, 46.752899>,  <38.177727, 39.895546, 46.713734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.032406, 40.082489, 46.752899>,  <37.790207, 40.394062, 46.818176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032406, 40.082489, 46.752899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093891, -0.133710, 0.986563,
		-0.790287, -0.612687, -0.007827,
		0.605501, -0.778932, -0.163195,
		38.214058, 39.848808, 46.703941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590553, 39.888542, 47.200306>,  <37.790207, 40.394062, 46.818176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590553, 39.888542, 47.200306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.978500, 39.814125, 47.137379>,  <38.211269, 39.769474, 47.099625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.978500, 39.814125, 47.137379>,  <37.590553, 39.888542, 47.200306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978500, 39.814125, 47.137379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133229, -0.135629, 0.981761,
		-0.203988, -0.973135, -0.106756,
		0.969866, -0.186045, -0.157317,
		38.269459, 39.758312, 47.090183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780987, 39.193630, 47.565029>,  <37.590553, 39.888542, 47.200306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780987, 39.193630, 47.565029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.117970, 39.403675, 47.516815>,  <38.320160, 39.529701, 47.487885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.117970, 39.403675, 47.516815>,  <37.780987, 39.193630, 47.565029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117970, 39.403675, 47.516815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309425, -0.288426, 0.906127,
		0.441049, -0.800669, -0.405468,
		0.842456, 0.525109, -0.120537,
		38.370705, 39.561207, 47.480656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271626, 38.889225, 47.345940>,  <37.780987, 39.193630, 47.565029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271626, 38.889225, 47.345940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947151, 38.740757, 47.526699>,  <36.752468, 38.651676, 47.635155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947151, 38.740757, 47.526699>,  <37.271626, 38.889225, 47.345940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947151, 38.740757, 47.526699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543928, 0.195090, -0.816139,
		0.214778, -0.907834, -0.360150,
		-0.811180, -0.371184, 0.451895,
		36.703796, 38.629406, 47.662270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998421, 38.404079, 46.883690>,  <37.271626, 38.889225, 47.345940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998421, 38.404079, 46.883690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.700443, 38.551304, 47.106251>,  <36.521656, 38.639641, 47.239788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.700443, 38.551304, 47.106251>,  <36.998421, 38.404079, 46.883690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700443, 38.551304, 47.106251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596589, 0.005716, -0.802527,
		-0.298562, -0.929783, 0.215325,
		-0.744945, 0.368065, 0.556404,
		36.476959, 38.661724, 47.273170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480537, 38.091282, 46.658623>,  <36.998421, 38.404079, 46.883690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480537, 38.091282, 46.658623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.308678, 38.391903, 46.858849>,  <36.205563, 38.572277, 46.978985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.308678, 38.391903, 46.858849>,  <36.480537, 38.091282, 46.658623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308678, 38.391903, 46.858849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678372, 0.097237, -0.728256,
		-0.595996, -0.652468, 0.468054,
		-0.429652, 0.751552, 0.500569,
		36.179783, 38.617367, 47.009018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723846, 38.011932, 46.489777>,  <36.480537, 38.091282, 46.658623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723846, 38.011932, 46.489777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784649, 38.389038, 46.608498>,  <35.821133, 38.615303, 46.679729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784649, 38.389038, 46.608498>,  <35.723846, 38.011932, 46.489777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784649, 38.389038, 46.608498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400675, 0.333286, -0.853452,
		-0.903523, 0.010812, 0.428404,
		0.152009, 0.942764, 0.296800,
		35.830250, 38.671867, 46.697536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168510, 38.356552, 46.145882>,  <35.723846, 38.011932, 46.489777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168510, 38.356552, 46.145882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.410633, 38.650208, 46.268932>,  <35.555908, 38.826401, 46.342762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.410633, 38.650208, 46.268932>,  <35.168510, 38.356552, 46.145882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410633, 38.650208, 46.268932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288738, 0.562660, -0.774625,
		-0.741776, 0.380063, 0.552558,
		0.605308, 0.734143, 0.307629,
		35.592224, 38.870449, 46.361221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785149, 38.967327, 46.260944>,  <35.168510, 38.356552, 46.145882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785149, 38.967327, 46.260944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157352, 39.087193, 46.176712>,  <35.380676, 39.159111, 46.126175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157352, 39.087193, 46.176712>,  <34.785149, 38.967327, 46.260944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157352, 39.087193, 46.176712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349296, 0.553154, -0.756315,
		-0.110160, 0.777317, 0.619390,
		0.930514, 0.299666, -0.210579,
		35.436508, 39.177094, 46.113537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777020, 39.703579, 46.117947>,  <34.785149, 38.967327, 46.260944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777020, 39.703579, 46.117947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.103073, 39.556786, 45.938671>,  <35.298706, 39.468708, 45.831108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.103073, 39.556786, 45.938671>,  <34.777020, 39.703579, 46.117947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103073, 39.556786, 45.938671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342633, 0.318393, -0.883871,
		0.467067, 0.874041, 0.133793,
		0.815138, -0.366986, -0.448186,
		35.347614, 39.446690, 45.804214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.914856, 35.783985, 50.385441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.209583, 35.882828, 50.133717>,  <40.386421, 35.942135, 49.982681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.209583, 35.882828, 50.133717>,  <39.914856, 35.783985, 50.385441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209583, 35.882828, 50.133717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428643, -0.549088, -0.717473,
		-0.522843, 0.798398, -0.298657,
		0.736818, 0.247108, -0.629314,
		40.430630, 35.956959, 49.944923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560860, 35.975597, 49.747349>,  <39.914856, 35.783985, 50.385441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560860, 35.975597, 49.747349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.945141, 35.923702, 49.649185>,  <40.175709, 35.892563, 49.590286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.945141, 35.923702, 49.649185>,  <39.560860, 35.975597, 49.747349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945141, 35.923702, 49.649185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277225, -0.403054, -0.872177,
		0.014245, 0.905933, -0.423181,
		0.960699, -0.129741, -0.245406,
		40.233349, 35.884781, 49.575562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518120, 36.123104, 49.076698>,  <39.560860, 35.975597, 49.747349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518120, 36.123104, 49.076698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.854187, 35.907101, 49.096706>,  <40.055828, 35.777496, 49.108711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.854187, 35.907101, 49.096706>,  <39.518120, 36.123104, 49.076698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854187, 35.907101, 49.096706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251053, -0.469033, -0.846747,
		0.480716, 0.698852, -0.529639,
		0.840169, -0.540012, 0.050023,
		40.106239, 35.745098, 49.111713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765488, 36.103420, 48.474396>,  <39.518120, 36.123104, 49.076698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765488, 36.103420, 48.474396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.940586, 35.778736, 48.629063>,  <40.045643, 35.583927, 48.721863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.940586, 35.778736, 48.629063>,  <39.765488, 36.103420, 48.474396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940586, 35.778736, 48.629063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224918, -0.515248, -0.827001,
		0.870513, 0.275046, -0.408114,
		0.437744, -0.811708, 0.386668,
		40.071911, 35.535225, 48.745064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153088, 35.846409, 47.942997>,  <39.765488, 36.103420, 48.474396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153088, 35.846409, 47.942997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.079792, 35.553009, 48.204807>,  <40.035816, 35.376968, 48.361893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.079792, 35.553009, 48.204807>,  <40.153088, 35.846409, 47.942997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079792, 35.553009, 48.204807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396161, -0.554246, -0.732030,
		0.899711, -0.393434, -0.189024,
		-0.183240, -0.733499, 0.654524,
		40.024818, 35.332958, 48.401165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495678, 35.306763, 47.636322>,  <40.153088, 35.846409, 47.942997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495678, 35.306763, 47.636322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.229622, 35.147667, 47.889114>,  <40.069988, 35.052212, 48.040791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.229622, 35.147667, 47.889114>,  <40.495678, 35.306763, 47.636322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229622, 35.147667, 47.889114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425247, -0.493935, -0.758415,
		0.613807, -0.773197, 0.159398,
		-0.665136, -0.397737, 0.631981,
		40.030083, 35.028347, 48.078709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489136, 34.693699, 47.367573>,  <40.495678, 35.306763, 47.636322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489136, 34.693699, 47.367573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.178967, 34.699039, 47.620090>,  <39.992863, 34.702244, 47.771603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.178967, 34.699039, 47.620090>,  <40.489136, 34.693699, 47.367573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178967, 34.699039, 47.620090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506517, -0.610122, -0.609255,
		0.377034, -0.792195, 0.479868,
		-0.775426, 0.013351, 0.631297,
		39.946339, 34.703045, 47.809479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280777, 33.924225, 47.612740>,  <40.489136, 34.693699, 47.367573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280777, 33.924225, 47.612740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.959431, 34.158951, 47.653244>,  <39.766624, 34.299786, 47.677547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.959431, 34.158951, 47.653244>,  <40.280777, 33.924225, 47.612740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959431, 34.158951, 47.653244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521993, -0.612111, -0.594007,
		-0.286590, -0.530060, 0.798061,
		-0.803361, 0.586819, 0.101263,
		39.718422, 34.334995, 47.683624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737019, 33.469078, 47.502926>,  <40.280777, 33.924225, 47.612740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737019, 33.469078, 47.502926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.537605, 33.815212, 47.482277>,  <39.417957, 34.022892, 47.469887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.537605, 33.815212, 47.482277>,  <39.737019, 33.469078, 47.502926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537605, 33.815212, 47.482277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713149, -0.443252, -0.543090,
		-0.492838, -0.233928, 0.838086,
		-0.498528, 0.865335, -0.051626,
		39.388046, 34.074814, 47.466789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085144, 33.315350, 47.447941>,  <39.737019, 33.469078, 47.502926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085144, 33.315350, 47.447941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.094276, 33.676739, 47.276726>,  <39.099758, 33.893574, 47.173996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.094276, 33.676739, 47.276726>,  <39.085144, 33.315350, 47.447941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094276, 33.676739, 47.276726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669498, -0.304150, -0.677691,
		-0.742462, 0.302045, 0.597929,
		0.022833, 0.903472, -0.428039,
		39.101128, 33.947781, 47.148315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394127, 33.486401, 47.347477>,  <39.085144, 33.315350, 47.447941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394127, 33.486401, 47.347477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.598591, 33.730701, 47.105583>,  <38.721268, 33.877281, 46.960445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.598591, 33.730701, 47.105583>,  <38.394127, 33.486401, 47.347477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598591, 33.730701, 47.105583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523526, -0.336765, -0.782630,
		-0.681645, 0.716640, 0.147604,
		0.511156, 0.610750, -0.604734,
		38.751938, 33.913925, 46.924164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949020, 33.805397, 46.940395>,  <38.394127, 33.486401, 47.347477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949020, 33.805397, 46.940395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.293350, 33.830555, 46.738392>,  <38.499947, 33.845650, 46.617191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.293350, 33.830555, 46.738392>,  <37.949020, 33.805397, 46.940395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293350, 33.830555, 46.738392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452003, -0.361474, -0.815494,
		-0.233836, 0.930259, -0.282736,
		0.860822, 0.062895, -0.505005,
		38.551598, 33.849422, 46.586891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772461, 34.597916, 46.861843>,  <37.949020, 33.805397, 46.940395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772461, 34.597916, 46.861843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.395931, 34.730247, 46.888554>,  <37.170013, 34.809647, 46.904579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.395931, 34.730247, 46.888554>,  <37.772461, 34.597916, 46.861843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395931, 34.730247, 46.888554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236673, 0.506009, 0.829422,
		0.240605, 0.796561, -0.554617,
		-0.941326, 0.330826, 0.066776,
		37.113533, 34.829494, 46.908585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795429, 35.441311, 46.864666>,  <37.772461, 34.597916, 46.861843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795429, 35.441311, 46.864666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.499573, 35.264755, 47.067886>,  <37.322060, 35.158821, 47.189819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.499573, 35.264755, 47.067886>,  <37.795429, 35.441311, 46.864666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499573, 35.264755, 47.067886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236306, 0.536506, 0.810136,
		-0.630153, 0.719263, -0.292519,
		-0.739639, -0.441386, 0.508047,
		37.277679, 35.132339, 47.220299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419304, 35.949501, 47.168377>,  <37.795429, 35.441311, 46.864666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419304, 35.949501, 47.168377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.355862, 35.620701, 47.387157>,  <37.317799, 35.423420, 47.518425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.355862, 35.620701, 47.387157>,  <37.419304, 35.949501, 47.168377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355862, 35.620701, 47.387157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035565, 0.558358, 0.828837,
		-0.986702, 0.112004, -0.117792,
		-0.158603, -0.822004, 0.546950,
		37.308281, 35.374100, 47.551243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783821, 36.056458, 47.582226>,  <37.419304, 35.949501, 47.168377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783821, 36.056458, 47.582226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.992363, 35.772259, 47.771278>,  <37.117489, 35.601738, 47.884708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.992363, 35.772259, 47.771278>,  <36.783821, 36.056458, 47.582226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992363, 35.772259, 47.771278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169383, 0.456676, 0.873359,
		-0.836361, -0.535384, 0.117743,
		0.521353, -0.710500, 0.472631,
		37.148769, 35.559109, 47.913067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345562, 35.818073, 48.128696>,  <36.783821, 36.056458, 47.582226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345562, 35.818073, 48.128696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.723095, 35.717625, 48.214607>,  <36.949615, 35.657356, 48.266151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.723095, 35.717625, 48.214607>,  <36.345562, 35.818073, 48.128696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723095, 35.717625, 48.214607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119395, 0.346892, 0.930274,
		-0.308113, -0.903662, 0.297424,
		0.943828, -0.251119, 0.214774,
		37.006245, 35.642288, 48.279041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296169, 35.763630, 48.842812>,  <36.345562, 35.818073, 48.128696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296169, 35.763630, 48.842812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.694992, 35.759602, 48.812412>,  <36.934284, 35.757187, 48.794174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.694992, 35.759602, 48.812412>,  <36.296169, 35.763630, 48.842812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694992, 35.759602, 48.812412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075608, 0.292732, 0.953201,
		0.012650, -0.956142, 0.292632,
		0.997057, -0.010068, -0.075995,
		36.994110, 35.756580, 48.789612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591568, 35.266750, 49.307407>,  <36.296169, 35.763630, 48.842812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591568, 35.266750, 49.307407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.880638, 35.537643, 49.252125>,  <37.054081, 35.700180, 49.218956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.880638, 35.537643, 49.252125>,  <36.591568, 35.266750, 49.307407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880638, 35.537643, 49.252125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026730, 0.172417, 0.984661,
		0.690673, -0.715283, 0.106499,
		0.722674, 0.677232, -0.138203,
		37.097439, 35.740814, 49.210663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088932, 35.216000, 49.892105>,  <36.591568, 35.266750, 49.307407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088932, 35.216000, 49.892105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.200611, 35.571056, 49.745602>,  <37.267620, 35.784088, 49.657700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.200611, 35.571056, 49.745602>,  <37.088932, 35.216000, 49.892105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200611, 35.571056, 49.745602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256400, 0.298661, 0.919272,
		0.925368, -0.350571, -0.144204,
		0.279202, 0.887639, -0.366257,
		37.284370, 35.837349, 49.635723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675377, 35.307121, 50.248871>,  <37.088932, 35.216000, 49.892105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675377, 35.307121, 50.248871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.565208, 35.666847, 50.113003>,  <37.499107, 35.882683, 50.031483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.565208, 35.666847, 50.113003>,  <37.675377, 35.307121, 50.248871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565208, 35.666847, 50.113003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280673, 0.413168, 0.866323,
		0.919437, 0.143268, -0.366209,
		-0.275422, 0.899314, -0.339671,
		37.482582, 35.936642, 50.011101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391602, 35.755749, 50.191036>,  <37.675377, 35.307121, 50.248871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391602, 35.755749, 50.191036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.065582, 35.982990, 50.236565>,  <37.869972, 36.119335, 50.263882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.065582, 35.982990, 50.236565>,  <38.391602, 35.755749, 50.191036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065582, 35.982990, 50.236565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332299, 0.297410, 0.895056,
		0.474633, 0.767336, -0.431183,
		-0.815047, 0.568105, 0.113825,
		37.821068, 36.153423, 50.270714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719048, 36.355492, 50.529564>,  <38.391602, 35.755749, 50.191036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719048, 36.355492, 50.529564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.325066, 36.363636, 50.598206>,  <38.088676, 36.368523, 50.639393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.325066, 36.363636, 50.598206>,  <38.719048, 36.355492, 50.529564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325066, 36.363636, 50.598206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155580, 0.536717, 0.829295,
		-0.075221, 0.843517, -0.531809,
		-0.984955, 0.020359, 0.171607,
		38.029579, 36.369743, 50.649689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681961, 37.024551, 50.742580>,  <38.719048, 36.355492, 50.529564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681961, 37.024551, 50.742580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.345089, 36.846340, 50.864063>,  <38.142967, 36.739414, 50.936954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.345089, 36.846340, 50.864063>,  <38.681961, 37.024551, 50.742580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345089, 36.846340, 50.864063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037677, 0.513262, 0.857404,
		-0.537876, 0.733533, -0.415474,
		-0.842182, -0.445524, 0.303709,
		38.092434, 36.712685, 50.955177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255802, 37.570129, 50.879383>,  <38.681961, 37.024551, 50.742580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255802, 37.570129, 50.879383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.112576, 37.256966, 51.082890>,  <38.026638, 37.069069, 51.204994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.112576, 37.256966, 51.082890>,  <38.255802, 37.570129, 50.879383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112576, 37.256966, 51.082890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010074, 0.541621, 0.840563,
		-0.933642, 0.306102, -0.186049,
		-0.358066, -0.782910, 0.508764,
		38.005157, 37.022091, 51.235519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560352, 37.678368, 51.216610>,  <38.255802, 37.570129, 50.879383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560352, 37.678368, 51.216610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.756172, 37.396042, 51.421425>,  <37.873665, 37.226646, 51.544312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.756172, 37.396042, 51.421425>,  <37.560352, 37.678368, 51.216610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756172, 37.396042, 51.421425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132212, 0.640501, 0.756491,
		-0.861897, -0.302639, 0.406871,
		0.489545, -0.705810, 0.512033,
		37.903034, 37.184299, 51.575035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328579, 37.577522, 50.459175>,  <37.560352, 37.678368, 51.216610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328579, 37.577522, 50.459175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.319111, 37.977345, 50.451996>,  <37.313431, 38.217239, 50.447689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.319111, 37.977345, 50.451996>,  <37.328579, 37.577522, 50.459175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319111, 37.977345, 50.451996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623757, -0.028796, -0.781087,
		-0.781260, -0.007290, 0.624164,
		-0.023667, 0.999559, -0.017951,
		37.312012, 38.277214, 50.446609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676731, 37.720490, 50.303558>,  <37.328579, 37.577522, 50.459175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676731, 37.720490, 50.303558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.865475, 38.060600, 50.210278>,  <36.978722, 38.264668, 50.154308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.865475, 38.060600, 50.210278>,  <36.676731, 37.720490, 50.303558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865475, 38.060600, 50.210278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502095, 0.041725, -0.863806,
		-0.724741, 0.524683, 0.446607,
		0.471859, 0.850274, -0.233201,
		37.007034, 38.315681, 50.140316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172878, 38.173218, 49.891197>,  <36.676731, 37.720490, 50.303558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172878, 38.173218, 49.891197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.528683, 38.337719, 49.811554>,  <36.742165, 38.436420, 49.763767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.528683, 38.337719, 49.811554>,  <36.172878, 38.173218, 49.891197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528683, 38.337719, 49.811554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254650, 0.084376, -0.963345,
		-0.379378, 0.907608, 0.179778,
		0.889509, 0.411253, -0.199112,
		36.795536, 38.461094, 49.751820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940128, 38.599148, 49.434864>,  <36.172878, 38.173218, 49.891197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940128, 38.599148, 49.434864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.334381, 38.572578, 49.372734>,  <36.570930, 38.556637, 49.335457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.334381, 38.572578, 49.372734>,  <35.940128, 38.599148, 49.434864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334381, 38.572578, 49.372734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134267, 0.249995, -0.958892,
		0.102523, 0.965966, 0.237484,
		0.985627, -0.066422, -0.155328,
		36.630070, 38.552650, 49.326138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170700, 39.165733, 48.991810>,  <35.940128, 38.599148, 49.434864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170700, 39.165733, 48.991810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.462654, 38.894642, 48.956146>,  <36.637825, 38.731987, 48.934750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.462654, 38.894642, 48.956146>,  <36.170700, 39.165733, 48.991810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462654, 38.894642, 48.956146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067408, 0.058436, -0.996013,
		0.680237, 0.732986, -0.003033,
		0.729886, -0.677729, -0.089160,
		36.681622, 38.691322, 48.929398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662918, 39.490604, 48.537292>,  <36.170700, 39.165733, 48.991810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662918, 39.490604, 48.537292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.716980, 39.094276, 48.537918>,  <36.749416, 38.856480, 48.538292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.716980, 39.094276, 48.537918>,  <36.662918, 39.490604, 48.537292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716980, 39.094276, 48.537918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025573, -0.005065, -0.999660,
		0.990495, 0.135067, -0.026023,
		0.135153, -0.990824, 0.001563,
		36.757526, 38.797028, 48.538387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260754, 39.253922, 48.116829>,  <36.662918, 39.490604, 48.537292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260754, 39.253922, 48.116829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.002621, 38.948441, 48.109859>,  <36.847740, 38.765152, 48.105679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.002621, 38.948441, 48.109859>,  <37.260754, 39.253922, 48.116829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002621, 38.948441, 48.109859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162764, 0.159755, -0.973646,
		0.746362, -0.625487, -0.227399,
		-0.645331, -0.763704, -0.017428,
		36.809021, 38.719330, 48.104630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029087, 39.176037, 48.247135>,  <37.260754, 39.253922, 48.116829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029087, 39.176037, 48.247135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.316910, 39.388767, 48.068516>,  <38.489601, 39.516403, 47.961342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.316910, 39.388767, 48.068516>,  <38.029087, 39.176037, 48.247135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316910, 39.388767, 48.068516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477339, 0.088259, 0.874276,
		0.504372, -0.842244, -0.190353,
		0.719553, 0.531823, -0.446551,
		38.532776, 39.548313, 47.934551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650967, 38.819115, 48.434368>,  <38.029087, 39.176037, 48.247135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650967, 38.819115, 48.434368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.685291, 39.209888, 48.356159>,  <38.705887, 39.444355, 48.309235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.685291, 39.209888, 48.356159>,  <38.650967, 38.819115, 48.434368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685291, 39.209888, 48.356159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228526, 0.171719, 0.958274,
		0.969749, -0.126911, -0.208521,
		0.085809, 0.976937, -0.195527,
		38.711033, 39.502968, 48.297501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309395, 38.992008, 48.671085>,  <38.650967, 38.819115, 48.434368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309395, 38.992008, 48.671085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.120609, 39.344421, 48.658287>,  <39.007336, 39.555870, 48.650608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.120609, 39.344421, 48.658287>,  <39.309395, 38.992008, 48.671085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120609, 39.344421, 48.658287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248009, 0.167511, 0.954166,
		0.846013, 0.442400, -0.297564,
		-0.471968, 0.881035, -0.031997,
		38.979019, 39.608730, 48.648689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848572, 39.625786, 48.804813>,  <39.309395, 38.992008, 48.671085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848572, 39.625786, 48.804813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.488129, 39.766888, 48.905666>,  <39.271862, 39.851547, 48.966179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.488129, 39.766888, 48.905666>,  <39.848572, 39.625786, 48.804813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488129, 39.766888, 48.905666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336830, 0.203308, 0.919354,
		0.273042, 0.913363, -0.302020,
		-0.901107, 0.352751, 0.252136,
		39.217796, 39.872715, 48.981308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995350, 40.275803, 49.181641>,  <39.848572, 39.625786, 48.804813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995350, 40.275803, 49.181641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.611427, 40.208504, 49.271492>,  <39.381073, 40.168125, 49.325401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.611427, 40.208504, 49.271492>,  <39.995350, 40.275803, 49.181641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611427, 40.208504, 49.271492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169736, 0.289402, 0.942038,
		-0.223504, 0.942305, -0.249213,
		-0.959810, -0.168249, 0.224626,
		39.323483, 40.158028, 49.338879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757996, 40.880291, 49.396622>,  <39.995350, 40.275803, 49.181641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757996, 40.880291, 49.396622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.502190, 40.613007, 49.548687>,  <39.348705, 40.452637, 49.639927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.502190, 40.613007, 49.548687>,  <39.757996, 40.880291, 49.396622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502190, 40.613007, 49.548687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137696, 0.386942, 0.911765,
		-0.756350, 0.635431, -0.155444,
		-0.639511, -0.668209, 0.380160,
		39.310337, 40.412544, 49.662735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447926, 41.279507, 49.884941>,  <39.757996, 40.880291, 49.396622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447926, 41.279507, 49.884941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.369095, 40.909000, 50.013439>,  <39.321796, 40.686699, 50.090538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.369095, 40.909000, 50.013439>,  <39.447926, 41.279507, 49.884941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369095, 40.909000, 50.013439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102518, 0.306404, 0.946365,
		-0.975013, 0.219442, 0.034573,
		-0.197079, -0.926262, 0.321245,
		39.309971, 40.631123, 50.109814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940292, 41.383991, 50.416805>,  <39.447926, 41.279507, 49.884941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940292, 41.383991, 50.416805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.110878, 41.030754, 50.495056>,  <39.213230, 40.818810, 50.542007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.110878, 41.030754, 50.495056>,  <38.940292, 41.383991, 50.416805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110878, 41.030754, 50.495056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074221, 0.249716, 0.965471,
		-0.901453, -0.397222, 0.172039,
		0.426467, -0.883095, 0.195625,
		39.238819, 40.765827, 50.553745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532272, 40.943546, 50.884769>,  <38.940292, 41.383991, 50.416805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532272, 40.943546, 50.884769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.916435, 40.837585, 50.919270>,  <39.146935, 40.774010, 50.939968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.916435, 40.837585, 50.919270>,  <38.532272, 40.943546, 50.884769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916435, 40.837585, 50.919270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038426, 0.180665, 0.982794,
		-0.275923, -0.947200, 0.163334,
		0.960411, -0.264900, 0.086246,
		39.204559, 40.758114, 50.945145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.554531, 36.842838, 35.780388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919312, 36.678810, 35.774761>,  <36.138180, 36.580395, 35.771385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919312, 36.678810, 35.774761>,  <35.554531, 36.842838, 35.780388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919312, 36.678810, 35.774761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231851, 0.486714, 0.842232,
		-0.338522, -0.771334, 0.538932,
		0.911947, -0.410066, -0.014071,
		36.192894, 36.555790, 35.770538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785549, 36.421581, 36.463486>,  <35.554531, 36.842838, 35.780388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785549, 36.421581, 36.463486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116707, 36.545120, 36.276207>,  <36.315399, 36.619244, 36.163841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116707, 36.545120, 36.276207>,  <35.785549, 36.421581, 36.463486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116707, 36.545120, 36.276207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223663, 0.583711, 0.780548,
		0.514364, -0.750927, 0.414171,
		0.827891, 0.308852, -0.468195,
		36.365074, 36.637775, 36.135750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412796, 36.305099, 36.921658>,  <35.785549, 36.421581, 36.463486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412796, 36.305099, 36.921658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508438, 36.597820, 36.666378>,  <36.565823, 36.773453, 36.513210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508438, 36.597820, 36.666378>,  <36.412796, 36.305099, 36.921658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508438, 36.597820, 36.666378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266983, 0.582380, 0.767824,
		0.933569, -0.353976, -0.056131,
		0.239102, 0.731802, -0.638198,
		36.580170, 36.817360, 36.474918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095043, 36.609406, 37.125767>,  <36.412796, 36.305099, 36.921658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095043, 36.609406, 37.125767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902302, 36.881557, 36.904896>,  <36.786655, 37.044849, 36.772373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902302, 36.881557, 36.904896>,  <37.095043, 36.609406, 37.125767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902302, 36.881557, 36.904896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080005, 0.661686, 0.745500,
		0.872592, 0.315045, -0.373270,
		-0.481853, 0.680381, -0.552177,
		36.757748, 37.085670, 36.739243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408581, 37.103004, 37.281498>,  <37.095043, 36.609406, 37.125767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408581, 37.103004, 37.281498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095936, 37.291374, 37.117882>,  <36.908348, 37.404396, 37.019711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095936, 37.291374, 37.117882>,  <37.408581, 37.103004, 37.281498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095936, 37.291374, 37.117882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042925, 0.694815, 0.717906,
		0.622290, 0.543564, -0.563288,
		-0.781609, 0.470925, -0.409044,
		36.861454, 37.432652, 36.995167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599533, 37.798729, 37.293221>,  <37.408581, 37.103004, 37.281498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599533, 37.798729, 37.293221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200798, 37.803799, 37.261852>,  <36.961555, 37.806839, 37.243031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200798, 37.803799, 37.261852>,  <37.599533, 37.798729, 37.293221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200798, 37.803799, 37.261852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042493, 0.749004, 0.661202,
		0.067112, 0.662444, -0.746099,
		-0.996840, 0.012671, -0.078416,
		36.901745, 37.807598, 37.238327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364479, 38.445633, 37.333622>,  <37.599533, 37.798729, 37.293221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364479, 38.445633, 37.333622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023216, 38.254749, 37.417900>,  <36.818459, 38.140217, 37.468468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023216, 38.254749, 37.417900>,  <37.364479, 38.445633, 37.333622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023216, 38.254749, 37.417900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259185, 0.738293, 0.622693,
		-0.452708, 0.476647, -0.753567,
		-0.853158, -0.477211, 0.210692,
		36.767269, 38.111588, 37.481106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914169, 38.945129, 37.433681>,  <37.364479, 38.445633, 37.333622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914169, 38.945129, 37.433681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739052, 38.644558, 37.631142>,  <36.633980, 38.464214, 37.749619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739052, 38.644558, 37.631142>,  <36.914169, 38.945129, 37.433681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739052, 38.644558, 37.631142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146442, 0.601331, 0.785465,
		-0.887069, 0.271581, -0.373299,
		-0.437794, -0.751429, 0.493651,
		36.607712, 38.419128, 37.779236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490425, 39.396400, 37.838772>,  <36.914169, 38.945129, 37.433681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490425, 39.396400, 37.838772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496941, 39.030651, 38.000591>,  <36.500851, 38.811203, 38.097683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496941, 39.030651, 38.000591>,  <36.490425, 39.396400, 37.838772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496941, 39.030651, 38.000591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070306, 0.402549, 0.912695,
		-0.997392, -0.043306, -0.057731,
		0.016286, -0.914374, 0.404544,
		36.501827, 38.756340, 38.121956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913361, 39.376957, 38.267323>,  <36.490425, 39.396400, 37.838772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913361, 39.376957, 38.267323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170712, 39.088902, 38.371220>,  <36.325123, 38.916069, 38.433559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170712, 39.088902, 38.371220>,  <35.913361, 39.376957, 38.267323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170712, 39.088902, 38.371220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106447, 0.251845, 0.961896,
		-0.758113, -0.646510, 0.085375,
		0.643377, -0.720138, 0.259746,
		36.363724, 38.872860, 38.449142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641594, 39.082325, 38.779266>,  <35.913361, 39.376957, 38.267323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641594, 39.082325, 38.779266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011112, 38.937294, 38.828495>,  <36.232822, 38.850277, 38.858032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011112, 38.937294, 38.828495>,  <35.641594, 39.082325, 38.779266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011112, 38.937294, 38.828495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070733, 0.154290, 0.985491,
		-0.376304, -0.919094, 0.116886,
		0.923792, -0.362576, 0.123071,
		36.288250, 38.828522, 38.865417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556850, 38.702789, 39.339443>,  <35.641594, 39.082325, 38.779266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556850, 38.702789, 39.339443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949089, 38.761902, 39.287910>,  <36.184433, 38.797371, 39.256989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949089, 38.761902, 39.287910>,  <35.556850, 38.702789, 39.339443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949089, 38.761902, 39.287910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108894, 0.135908, 0.984719,
		0.163035, -0.979638, 0.117177,
		0.980593, 0.147783, -0.128834,
		36.243267, 38.806236, 39.249260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377117, 38.052727, 39.565659>,  <35.556850, 38.702789, 39.339443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377117, 38.052727, 39.565659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019096, 37.975819, 39.726612>,  <34.804283, 37.929676, 39.823185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019096, 37.975819, 39.726612>,  <35.377117, 38.052727, 39.565659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019096, 37.975819, 39.726612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358280, -0.227262, -0.905532,
		0.265550, -0.954665, 0.134526,
		-0.895052, -0.192266, 0.402387,
		34.750580, 37.918140, 39.847328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127460, 37.577698, 39.130001>,  <35.377117, 38.052727, 39.565659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127460, 37.577698, 39.130001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814407, 37.635395, 39.372219>,  <34.626575, 37.670013, 39.517551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814407, 37.635395, 39.372219>,  <35.127460, 37.577698, 39.130001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814407, 37.635395, 39.372219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605966, -0.399177, -0.688087,
		0.142467, -0.905457, 0.399814,
		-0.782630, 0.144244, 0.605545,
		34.579620, 37.678669, 39.553883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754353, 36.871105, 39.185574>,  <35.127460, 37.577698, 39.130001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754353, 36.871105, 39.185574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524532, 37.190647, 39.256817>,  <34.386639, 37.382374, 39.299564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524532, 37.190647, 39.256817>,  <34.754353, 36.871105, 39.185574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524532, 37.190647, 39.256817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581703, -0.245479, -0.775475,
		-0.575770, -0.549156, 0.605736,
		-0.574552, 0.798854, 0.178106,
		34.352165, 37.430302, 39.310249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147598, 36.549889, 39.113808>,  <34.754353, 36.871105, 39.185574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147598, 36.549889, 39.113808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061066, 36.940056, 39.096992>,  <34.009148, 37.174156, 39.086903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061066, 36.940056, 39.096992>,  <34.147598, 36.549889, 39.113808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061066, 36.940056, 39.096992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668050, -0.179286, -0.722195,
		-0.711976, -0.128152, 0.690411,
		-0.216332, 0.975414, -0.042035,
		33.996166, 37.232681, 39.084381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355949, 36.680157, 39.181953>,  <34.147598, 36.549889, 39.113808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355949, 36.680157, 39.181953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499760, 36.998020, 38.986298>,  <33.586048, 37.188736, 38.868904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499760, 36.998020, 38.986298>,  <33.355949, 36.680157, 39.181953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499760, 36.998020, 38.986298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695964, -0.120826, -0.707838,
		-0.621589, 0.594915, 0.509612,
		0.359529, 0.794656, -0.489143,
		33.607620, 37.236416, 38.839554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779087, 36.920761, 38.913086>,  <33.355949, 36.680157, 39.181953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779087, 36.920761, 38.913086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081940, 37.062267, 38.693413>,  <33.263649, 37.147171, 38.561607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081940, 37.062267, 38.693413>,  <32.779087, 36.920761, 38.913086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081940, 37.062267, 38.693413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452528, -0.322285, -0.831475,
		-0.471140, 0.878056, -0.083923,
		0.757129, 0.353764, -0.549187,
		33.309078, 37.168396, 38.528656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430748, 37.220200, 38.405495>,  <32.779087, 36.920761, 38.913086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430748, 37.220200, 38.405495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802189, 37.143242, 38.278568>,  <33.025051, 37.097069, 38.202412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802189, 37.143242, 38.278568>,  <32.430748, 37.220200, 38.405495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802189, 37.143242, 38.278568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366075, -0.334886, -0.868240,
		0.060777, 0.922408, -0.381405,
		0.928598, -0.192391, -0.317318,
		33.080769, 37.085526, 38.183372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551197, 37.639519, 37.766968>,  <32.430748, 37.220200, 38.405495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551197, 37.639519, 37.766968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761673, 37.299393, 37.770813>,  <32.887959, 37.095318, 37.773121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761673, 37.299393, 37.770813>,  <32.551197, 37.639519, 37.766968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761673, 37.299393, 37.770813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554641, -0.351742, -0.754090,
		0.644595, 0.391460, -0.656701,
		0.526186, -0.850316, 0.009612,
		32.919529, 37.044296, 37.773697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541508, 37.335609, 37.067509>,  <32.551197, 37.639519, 37.766968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541508, 37.335609, 37.067509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697773, 37.009724, 37.238911>,  <32.791534, 36.814190, 37.341751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697773, 37.009724, 37.238911>,  <32.541508, 37.335609, 37.067509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697773, 37.009724, 37.238911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425441, -0.572597, -0.700809,
		0.816321, 0.091479, -0.570308,
		0.390666, -0.814717, 0.428504,
		32.814972, 36.765308, 37.367462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877800, 36.910408, 36.520966>,  <32.541508, 37.335609, 37.067509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877800, 36.910408, 36.520966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800690, 36.682045, 36.840191>,  <32.754421, 36.545029, 37.031727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800690, 36.682045, 36.840191>,  <32.877800, 36.910408, 36.520966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800690, 36.682045, 36.840191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292667, -0.742844, -0.602104,
		0.936580, -0.349639, -0.023882,
		-0.192778, -0.570908, 0.798061,
		32.742855, 36.510773, 37.079609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109795, 36.306499, 36.328438>,  <32.877800, 36.910408, 36.520966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109795, 36.306499, 36.328438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883774, 36.239830, 36.651657>,  <32.748161, 36.199829, 36.845589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883774, 36.239830, 36.651657>,  <33.109795, 36.306499, 36.328438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883774, 36.239830, 36.651657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338467, -0.846350, -0.411257,
		0.752434, -0.505878, 0.421818,
		-0.565052, -0.166672, 0.808045,
		32.714260, 36.189827, 36.894070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196571, 35.669823, 36.495392>,  <33.109795, 36.306499, 36.328438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196571, 35.669823, 36.495392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841595, 35.778141, 36.644581>,  <32.628609, 35.843132, 36.734093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841595, 35.778141, 36.644581>,  <33.196571, 35.669823, 36.495392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841595, 35.778141, 36.644581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386322, -0.878371, -0.281461,
		0.251389, -0.393868, 0.884122,
		-0.887445, 0.270799, 0.372973,
		32.575359, 35.859383, 36.756474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944252, 35.097412, 36.656422>,  <33.196571, 35.669823, 36.495392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944252, 35.097412, 36.656422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606514, 35.311466, 36.667099>,  <32.403870, 35.439899, 36.673504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606514, 35.311466, 36.667099>,  <32.944252, 35.097412, 36.656422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606514, 35.311466, 36.667099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497948, -0.765332, -0.407818,
		-0.197811, -0.357629, 0.912673,
		-0.844345, 0.535135, 0.026690,
		32.353210, 35.472008, 36.675106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343018, 34.667465, 37.076050>,  <32.944252, 35.097412, 36.656422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343018, 34.667465, 37.076050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179955, 34.913437, 36.806034>,  <32.082115, 35.061020, 36.644024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179955, 34.913437, 36.806034>,  <32.343018, 34.667465, 37.076050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179955, 34.913437, 36.806034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543649, -0.757403, -0.361644,
		-0.733661, 0.219555, 0.643069,
		-0.407662, 0.614927, -0.675038,
		32.057655, 35.097916, 36.603523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071964, 34.342583, 36.913570>,  <32.343018, 34.667465, 37.076050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071964, 34.342583, 36.913570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084389, 33.951908, 36.828602>,  <33.091843, 33.717503, 36.777618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084389, 33.951908, 36.828602>,  <33.071964, 34.342583, 36.913570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084389, 33.951908, 36.828602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197093, -0.214338, 0.956668,
		-0.979893, 0.012153, -0.199155,
		0.031060, -0.976684, -0.212424,
		33.093708, 33.658901, 36.764874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460724, 33.903679, 37.013783>,  <33.071964, 34.342583, 36.913570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460724, 33.903679, 37.013783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807480, 33.716076, 37.081341>,  <33.015533, 33.603512, 37.121876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807480, 33.716076, 37.081341>,  <32.460724, 33.903679, 37.013783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807480, 33.716076, 37.081341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292268, -0.203737, 0.934383,
		-0.403828, -0.859371, -0.313696,
		0.866892, -0.469013, 0.168892,
		33.067547, 33.575371, 37.132008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378471, 33.214233, 37.259533>,  <32.460724, 33.903679, 37.013783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378471, 33.214233, 37.259533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708347, 33.395947, 37.394295>,  <32.906273, 33.504974, 37.475151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708347, 33.395947, 37.394295>,  <32.378471, 33.214233, 37.259533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708347, 33.395947, 37.394295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363132, -0.031389, 0.931209,
		0.433607, -0.890304, 0.139079,
		0.824694, 0.454283, 0.336908,
		32.955757, 33.532230, 37.495369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202911, 33.367279, 37.882488>,  <32.378471, 33.214233, 37.259533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202911, 33.367279, 37.882488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593567, 33.429886, 37.941383>,  <32.827961, 33.467449, 37.976719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593567, 33.429886, 37.941383>,  <32.202911, 33.367279, 37.882488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593567, 33.429886, 37.941383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159637, 0.069788, 0.984706,
		0.143847, -0.985207, 0.093144,
		0.976639, 0.156516, 0.147236,
		32.886559, 33.476841, 37.985554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340160, 32.910366, 38.433163>,  <32.202911, 33.367279, 37.882488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340160, 32.910366, 38.433163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647976, 33.165806, 38.432323>,  <32.832664, 33.319069, 38.431820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647976, 33.165806, 38.432323>,  <32.340160, 32.910366, 38.433163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647976, 33.165806, 38.432323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023000, -0.024438, 0.999437,
		0.638190, -0.769150, -0.033493,
		0.769535, 0.638601, -0.002094,
		32.878838, 33.357388, 38.431694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772808, 32.565216, 38.788071>,  <32.340160, 32.910366, 38.433163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772808, 32.565216, 38.788071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892338, 32.946873, 38.795204>,  <32.964058, 33.175865, 38.799484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892338, 32.946873, 38.795204>,  <32.772808, 32.565216, 38.788071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892338, 32.946873, 38.795204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289882, -0.108565, 0.950885,
		0.909214, -0.278980, -0.309030,
		0.298828, 0.954140, 0.017838,
		32.981987, 33.233116, 38.800556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295914, 32.501350, 39.347424>,  <32.772808, 32.565216, 38.788071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295914, 32.501350, 39.347424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223885, 32.893200, 39.311867>,  <33.180668, 33.128311, 39.290531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223885, 32.893200, 39.311867>,  <33.295914, 32.501350, 39.347424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223885, 32.893200, 39.311867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440932, 0.161174, 0.882951,
		0.879291, 0.119799, -0.460972,
		-0.180073, 0.979628, -0.088896,
		33.169861, 33.187088, 39.285198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925220, 32.803249, 39.526634>,  <33.295914, 32.501350, 39.347424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925220, 32.803249, 39.526634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650330, 33.090542, 39.570210>,  <33.485397, 33.262917, 39.596355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650330, 33.090542, 39.570210>,  <33.925220, 32.803249, 39.526634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650330, 33.090542, 39.570210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362524, 0.209124, 0.908209,
		0.629524, 0.663634, -0.404091,
		-0.687224, 0.718232, 0.108935,
		33.444164, 33.306011, 39.602890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265347, 33.378899, 39.827667>,  <33.925220, 32.803249, 39.526634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265347, 33.378899, 39.827667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881100, 33.449780, 39.913288>,  <33.650551, 33.492310, 39.964661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881100, 33.449780, 39.913288>,  <34.265347, 33.378899, 39.827667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881100, 33.449780, 39.913288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271161, 0.429302, 0.861494,
		0.060768, 0.885606, -0.460444,
		-0.960614, 0.177206, 0.214054,
		33.592915, 33.502941, 39.977505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229424, 34.050426, 40.007545>,  <34.265347, 33.378899, 39.827667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229424, 34.050426, 40.007545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914341, 33.869587, 40.174934>,  <33.725292, 33.761082, 40.275368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914341, 33.869587, 40.174934>,  <34.229424, 34.050426, 40.007545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914341, 33.869587, 40.174934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330937, 0.262403, 0.906435,
		-0.519608, 0.852496, -0.057081,
		-0.787711, -0.452101, 0.418469,
		33.678028, 33.733955, 40.300476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008995, 34.559521, 40.451778>,  <34.229424, 34.050426, 40.007545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008995, 34.559521, 40.451778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876705, 34.205372, 40.582466>,  <33.797333, 33.992882, 40.660881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876705, 34.205372, 40.582466>,  <34.008995, 34.559521, 40.451778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876705, 34.205372, 40.582466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234466, 0.258264, 0.937190,
		-0.914139, 0.386554, 0.122176,
		-0.330721, -0.885368, 0.326723,
		33.777489, 33.939762, 40.680485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725525, 34.797203, 41.077618>,  <34.008995, 34.559521, 40.451778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725525, 34.797203, 41.077618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736347, 34.401340, 41.133976>,  <33.742840, 34.163822, 41.167793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736347, 34.401340, 41.133976>,  <33.725525, 34.797203, 41.077618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736347, 34.401340, 41.133976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130208, 0.143238, 0.981085,
		-0.991117, -0.008202, 0.132737,
		0.027060, -0.989654, 0.140898,
		33.744465, 34.104443, 41.176247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444729, 34.619770, 41.781738>,  <33.725525, 34.797203, 41.077618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444729, 34.619770, 41.781738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670959, 34.307220, 41.676231>,  <33.806698, 34.119690, 41.612926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670959, 34.307220, 41.676231>,  <33.444729, 34.619770, 41.781738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670959, 34.307220, 41.676231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270186, -0.126627, 0.954445,
		-0.779179, -0.611081, 0.139499,
		0.565579, -0.781375, -0.263770,
		33.840633, 34.072807, 41.597099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155228, 34.199024, 42.322285>,  <33.444729, 34.619770, 41.781738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155228, 34.199024, 42.322285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504738, 34.066116, 42.180241>,  <33.714443, 33.986370, 42.095013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504738, 34.066116, 42.180241>,  <33.155228, 34.199024, 42.322285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504738, 34.066116, 42.180241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321232, -0.153899, 0.934411,
		-0.365129, -0.930544, -0.027738,
		0.873779, -0.332270, -0.355114,
		33.766872, 33.966434, 42.073708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375946, 33.807056, 42.772434>,  <33.155228, 34.199024, 42.322285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375946, 33.807056, 42.772434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725964, 33.814487, 42.578957>,  <33.935974, 33.818947, 42.462872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725964, 33.814487, 42.578957>,  <33.375946, 33.807056, 42.772434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725964, 33.814487, 42.578957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465267, -0.307953, 0.829874,
		-0.133538, -0.951220, -0.278114,
		0.875039, 0.018578, -0.483695,
		33.988476, 33.820061, 42.433849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741291, 33.113056, 42.740391>,  <33.375946, 33.807056, 42.772434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741291, 33.113056, 42.740391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001183, 33.415844, 42.712521>,  <34.157116, 33.597515, 42.695797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001183, 33.415844, 42.712521>,  <33.741291, 33.113056, 42.740391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001183, 33.415844, 42.712521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342160, -0.209367, 0.916020,
		0.678807, -0.619005, -0.395035,
		0.649728, 0.756966, -0.069679,
		34.196102, 33.642933, 42.691616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406593, 32.890629, 43.041946>,  <33.741291, 33.113056, 42.740391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406593, 32.890629, 43.041946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440048, 33.289207, 43.038010>,  <34.460121, 33.528355, 43.035648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440048, 33.289207, 43.038010>,  <34.406593, 32.890629, 43.041946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440048, 33.289207, 43.038010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388457, -0.023510, 0.921167,
		0.917663, -0.080869, -0.389043,
		0.083641, 0.996447, -0.009840,
		34.465141, 33.588142, 43.035057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126396, 33.107040, 43.136959>,  <34.406593, 32.890629, 43.041946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126396, 33.107040, 43.136959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934433, 33.438919, 43.251011>,  <34.819256, 33.638046, 43.319443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934433, 33.438919, 43.251011>,  <35.126396, 33.107040, 43.136959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934433, 33.438919, 43.251011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528049, 0.013636, 0.849104,
		0.700608, 0.558053, -0.444663,
		-0.479908, 0.829693, 0.285126,
		34.790459, 33.687828, 43.336548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642933, 33.539295, 43.443970>,  <35.126396, 33.107040, 43.136959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642933, 33.539295, 43.443970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301651, 33.707954, 43.566769>,  <35.096882, 33.809151, 43.640450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301651, 33.707954, 43.566769>,  <35.642933, 33.539295, 43.443970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301651, 33.707954, 43.566769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415531, 0.193772, 0.888699,
		0.315229, 0.885814, -0.340535,
		-0.853208, 0.421647, 0.307001,
		35.045689, 33.834450, 43.658871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873108, 34.265331, 43.669250>,  <35.642933, 33.539295, 43.443970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873108, 34.265331, 43.669250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529366, 34.139633, 43.830624>,  <35.323120, 34.064213, 43.927448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529366, 34.139633, 43.830624>,  <35.873108, 34.265331, 43.669250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529366, 34.139633, 43.830624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394068, 0.095840, 0.914071,
		-0.325908, 0.944491, 0.041473,
		-0.859357, -0.314246, 0.403428,
		35.271557, 34.045361, 43.951653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802498, 34.699139, 44.194290>,  <35.873108, 34.265331, 43.669250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802498, 34.699139, 44.194290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535473, 34.426334, 44.313770>,  <35.375259, 34.262653, 44.385456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535473, 34.426334, 44.313770>,  <35.802498, 34.699139, 44.194290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535473, 34.426334, 44.313770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436186, -0.033104, 0.899247,
		-0.603409, 0.730592, 0.319583,
		-0.667562, -0.682012, 0.298699,
		35.335205, 34.221729, 44.403381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408482, 35.001778, 44.812031>,  <35.802498, 34.699139, 44.194290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408482, 35.001778, 44.812031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396626, 34.602001, 44.818256>,  <35.389511, 34.362137, 44.821991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396626, 34.602001, 44.818256>,  <35.408482, 35.001778, 44.812031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396626, 34.602001, 44.818256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355441, 0.004018, 0.934690,
		-0.934229, 0.033239, 0.355123,
		-0.029642, -0.999439, 0.015569,
		35.387733, 34.302170, 44.822926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147755, 34.921356, 45.550095>,  <35.408482, 35.001778, 44.812031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147755, 34.921356, 45.550095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268719, 34.561317, 45.424641>,  <35.341297, 34.345295, 45.349369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268719, 34.561317, 45.424641>,  <35.147755, 34.921356, 45.550095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268719, 34.561317, 45.424641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460745, -0.150006, 0.874764,
		-0.834423, -0.409045, 0.369353,
		0.302412, -0.900100, -0.313634,
		35.359444, 34.291286, 45.330551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876858, 34.336651, 46.072891>,  <35.147755, 34.921356, 45.550095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876858, 34.336651, 46.072891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199257, 34.235195, 45.858963>,  <35.392696, 34.174320, 45.730606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199257, 34.235195, 45.858963>,  <34.876858, 34.336651, 46.072891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199257, 34.235195, 45.858963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509041, -0.164058, 0.844963,
		-0.302057, -0.953285, -0.003118,
		0.806001, -0.253640, -0.534816,
		35.441059, 34.159103, 45.698517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146416, 33.786182, 46.472565>,  <34.876858, 34.336651, 46.072891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146416, 33.786182, 46.472565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457142, 33.912018, 46.254356>,  <35.643578, 33.987518, 46.123432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457142, 33.912018, 46.254356>,  <35.146416, 33.786182, 46.472565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457142, 33.912018, 46.254356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554346, 0.069369, 0.829390,
		0.298757, -0.946690, -0.120503,
		0.776817, 0.314587, -0.545518,
		35.690186, 34.006393, 46.090702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774128, 33.438313, 46.777092>,  <35.146416, 33.786182, 46.472565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774128, 33.438313, 46.777092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935951, 33.736912, 46.565781>,  <36.033047, 33.916073, 46.438995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935951, 33.736912, 46.565781>,  <35.774128, 33.438313, 46.777092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935951, 33.736912, 46.565781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633973, 0.187394, 0.750308,
		0.659099, -0.638455, -0.397447,
		0.404559, 0.746498, -0.528274,
		36.057320, 33.960861, 46.407299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486641, 33.308056, 46.730186>,  <35.774128, 33.438313, 46.777092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486641, 33.308056, 46.730186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451439, 33.701614, 46.667961>,  <36.430317, 33.937752, 46.630627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451439, 33.701614, 46.667961>,  <36.486641, 33.308056, 46.730186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451439, 33.701614, 46.667961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558029, 0.178060, 0.810493,
		0.825142, -0.015482, -0.564713,
		-0.088005, 0.983898, -0.155564,
		36.425037, 33.996784, 46.621292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171165, 33.588043, 46.735706>,  <36.486641, 33.308056, 46.730186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171165, 33.588043, 46.735706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943489, 33.907478, 46.813965>,  <36.806881, 34.099140, 46.860920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943489, 33.907478, 46.813965>,  <37.171165, 33.588043, 46.735706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943489, 33.907478, 46.813965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517644, 0.163188, 0.839890,
		0.638799, 0.579334, -0.506269,
		-0.569193, 0.798588, 0.195644,
		36.772732, 34.147053, 46.872658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705002, 34.003162, 46.237934>,  <37.171165, 33.588043, 46.735706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705002, 34.003162, 46.237934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085873, 33.880947, 46.236824>,  <38.314396, 33.807617, 46.236160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085873, 33.880947, 46.236824>,  <37.705002, 34.003162, 46.237934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085873, 33.880947, 46.236824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160738, -0.493163, -0.854959,
		0.259855, 0.814517, -0.518689,
		0.952176, -0.305538, -0.002773,
		38.371525, 33.789284, 46.235992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973934, 34.274120, 45.603489>,  <37.705002, 34.003162, 46.237934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973934, 34.274120, 45.603489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186760, 33.962383, 45.735874>,  <38.314457, 33.775341, 45.815308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186760, 33.962383, 45.735874>,  <37.973934, 34.274120, 45.603489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186760, 33.962383, 45.735874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061602, -0.425481, -0.902868,
		0.844460, 0.459996, -0.274392,
		0.532064, -0.779339, 0.330965,
		38.346378, 33.728580, 45.835163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416451, 34.151089, 44.982086>,  <37.973934, 34.274120, 45.603489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416451, 34.151089, 44.982086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474186, 33.812664, 45.187351>,  <38.508827, 33.609608, 45.310513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474186, 33.812664, 45.187351>,  <38.416451, 34.151089, 44.982086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474186, 33.812664, 45.187351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079009, -0.526793, -0.846314,
		0.986369, 0.081612, -0.142884,
		0.144340, -0.846067, 0.513164,
		38.517487, 33.558846, 45.341301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834202, 33.761818, 44.591522>,  <38.416451, 34.151089, 44.982086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834202, 33.761818, 44.591522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673912, 33.476532, 44.821564>,  <38.577740, 33.305359, 44.959587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673912, 33.476532, 44.821564>,  <38.834202, 33.761818, 44.591522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673912, 33.476532, 44.821564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211069, -0.538958, -0.815460,
		0.891554, -0.448161, 0.065436,
		-0.400725, -0.713215, 0.575103,
		38.553696, 33.262566, 44.994095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104851, 33.094112, 44.363758>,  <38.834202, 33.761818, 44.591522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104851, 33.094112, 44.363758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759380, 33.017509, 44.550255>,  <38.552097, 32.971546, 44.662151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759380, 33.017509, 44.550255>,  <39.104851, 33.094112, 44.363758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759380, 33.017509, 44.550255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270372, -0.604645, -0.749202,
		0.425391, -0.773129, 0.470440,
		-0.863679, -0.191510, 0.466243,
		38.500275, 32.960056, 44.690128>
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
