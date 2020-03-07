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
	<0.753427, 4.180343, 3.385347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.803761, 3.993607, 3.035210>,  <0.833961, 3.881565, 2.825127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.803761, 3.993607, 3.035210>,  <0.753427, 4.180343, 3.385347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.803761, 3.993607, 3.035210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264855, 0.866139, -0.423858,
		0.956043, -0.178503, 0.232634,
		0.125834, -0.466840, -0.875343,
		0.841511, 3.853554, 2.772607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.486608, 4.282882, 3.114456>,  <0.753427, 4.180343, 3.385347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.486608, 4.282882, 3.114456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.253687, 4.201065, 2.799728>,  <1.113934, 4.151975, 2.610892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.253687, 4.201065, 2.799728>,  <1.486608, 4.282882, 3.114456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.253687, 4.201065, 2.799728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403264, 0.767697, -0.498015,
		0.705905, -0.607292, -0.364548,
		-0.582303, -0.204542, -0.786820,
		1.078996, 4.139702, 2.563683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.827721, 4.234046, 2.432379>,  <1.486608, 4.282882, 3.114456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.827721, 4.234046, 2.432379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.458111, 4.357178, 2.341675>,  <1.236345, 4.431057, 2.287252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.458111, 4.357178, 2.341675>,  <1.827721, 4.234046, 2.432379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.458111, 4.357178, 2.341675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381055, 0.693008, -0.611994,
		-0.031243, -0.651905, -0.757656,
		-0.924024, 0.307829, -0.226760,
		1.180904, 4.449527, 2.273647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.710217, 4.192725, 1.635909>,  <1.827721, 4.234046, 2.432379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.710217, 4.192725, 1.635909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.561684, 4.482361, 1.868393>,  <1.472564, 4.656142, 2.007884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.561684, 4.482361, 1.868393>,  <1.710217, 4.192725, 1.635909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.561684, 4.482361, 1.868393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548672, 0.676107, -0.491770,
		-0.749046, 0.136283, -0.648349,
		-0.371334, 0.724090, 0.581210,
		1.450284, 4.699588, 2.042756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.383440, 4.685391, 1.216407>,  <1.710217, 4.192725, 1.635909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.383440, 4.685391, 1.216407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.520590, 4.846512, 1.555862>,  <1.602880, 4.943184, 1.759536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.520590, 4.846512, 1.555862>,  <1.383440, 4.685391, 1.216407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.520590, 4.846512, 1.555862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543838, 0.651496, -0.528955,
		-0.765948, 0.642888, 0.004323,
		0.342875, 0.402801, 0.848639,
		1.623452, 4.967352, 1.810454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.419716, 5.382970, 1.039726>,  <1.383440, 4.685391, 1.216407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.419716, 5.382970, 1.039726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.626255, 5.344513, 1.380112>,  <1.750179, 5.321439, 1.584343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.626255, 5.344513, 1.380112>,  <1.419716, 5.382970, 1.039726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.626255, 5.344513, 1.380112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522589, 0.822590, -0.224159,
		-0.678444, 0.560449, 0.474985,
		0.516348, -0.096142, 0.850965,
		1.781159, 5.315670, 1.635401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.370754, 6.105819, 1.337894>,  <1.419716, 5.382970, 1.039726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.370754, 6.105819, 1.337894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.691807, 5.912163, 1.477257>,  <1.884439, 5.795969, 1.560874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.691807, 5.912163, 1.477257>,  <1.370754, 6.105819, 1.337894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.691807, 5.912163, 1.477257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572041, 0.790254, -0.219698,
		-0.168965, 0.375640, 0.911233,
		0.802633, -0.484142, 0.348407,
		1.932597, 5.766920, 1.581779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.681337, 6.537573, 1.756565>,  <1.370754, 6.105819, 1.337894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.681337, 6.537573, 1.756565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.967855, 6.284645, 1.638519>,  <2.139766, 6.132888, 1.567692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.967855, 6.284645, 1.638519>,  <1.681337, 6.537573, 1.756565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.967855, 6.284645, 1.638519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623314, 0.769920, -0.136755,
		0.313687, -0.085992, 0.945625,
		0.716296, -0.632320, -0.295114,
		2.182744, 6.094949, 1.549985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.171615, 1.528053, 0.287407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.531505, 1.527924, 0.461990>,  <2.747439, 1.527846, 0.566740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.531505, 1.527924, 0.461990>,  <2.171615, 1.528053, 0.287407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.531505, 1.527924, 0.461990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261806, -0.800517, 0.539101,
		0.349218, -0.599310, -0.720330,
		0.899725, -0.000323, 0.436458,
		2.801422, 1.527827, 0.592928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.459335, 0.836756, 0.433281>,  <2.171615, 1.528053, 0.287407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.459335, 0.836756, 0.433281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.677016, 1.044922, 0.696495>,  <2.807625, 1.169822, 0.854423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.677016, 1.044922, 0.696495>,  <2.459335, 0.836756, 0.433281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.677016, 1.044922, 0.696495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191542, -0.686563, 0.701386,
		0.816795, -0.507738, -0.273948,
		0.544203, 0.520416, 0.658035,
		2.840277, 1.201047, 0.893906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.885493, 0.421807, 0.857855>,  <2.459335, 0.836756, 0.433281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.885493, 0.421807, 0.857855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.827839, 0.736122, 1.098442>,  <2.793246, 0.924711, 1.242794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.827839, 0.736122, 1.098442>,  <2.885493, 0.421807, 0.857855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.827839, 0.736122, 1.098442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368210, -0.606758, 0.704461,
		0.918502, -0.119928, 0.376791,
		-0.144136, 0.785788, 0.601467,
		2.784598, 0.971858, 1.278882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.178613, 0.240866, 1.483609>,  <2.885493, 0.421807, 0.857855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.178613, 0.240866, 1.483609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.880261, 0.506783, 1.500183>,  <2.701250, 0.666332, 1.510127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.880261, 0.506783, 1.500183>,  <3.178613, 0.240866, 1.483609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.880261, 0.506783, 1.500183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479976, -0.579570, 0.658575,
		0.461829, 0.471331, 0.751373,
		-0.745880, 0.664790, 0.041434,
		2.656497, 0.706220, 1.512613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.033316, 0.357220, 2.149889>,  <3.178613, 0.240866, 1.483609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.033316, 0.357220, 2.149889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.699470, 0.460068, 1.955032>,  <2.499162, 0.521777, 1.838119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.699470, 0.460068, 1.955032>,  <3.033316, 0.357220, 2.149889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.699470, 0.460068, 1.955032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549220, -0.456068, 0.700256,
		-0.042119, 0.851992, 0.521857,
		-0.834615, 0.257120, -0.487141,
		2.449085, 0.537204, 1.808890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.589549, 0.344716, 2.688054>,  <3.033316, 0.357220, 2.149889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.589549, 0.344716, 2.688054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.331344, 0.336121, 2.382675>,  <2.176420, 0.330964, 2.199448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.331344, 0.336121, 2.382675>,  <2.589549, 0.344716, 2.688054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.331344, 0.336121, 2.382675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688201, -0.417110, 0.593632,
		-0.331197, 0.908602, 0.254463,
		-0.645514, -0.021487, -0.763446,
		2.137689, 0.329674, 2.153641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.946609, 0.565942, 2.880366>,  <2.589549, 0.344716, 2.688054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.946609, 0.565942, 2.880366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.829453, 0.401932, 2.534859>,  <1.759160, 0.303526, 2.327554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.829453, 0.401932, 2.534859>,  <1.946609, 0.565942, 2.880366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.829453, 0.401932, 2.534859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758283, -0.450682, 0.471056,
		-0.582429, 0.792948, -0.178915,
		-0.292889, -0.410024, -0.863769,
		1.741587, 0.278924, 2.275728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.143813, 0.591820, 2.889901>,  <1.946609, 0.565942, 2.880366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.143813, 0.591820, 2.889901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.250806, 0.312065, 2.624779>,  <1.315002, 0.144212, 2.465706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.250806, 0.312065, 2.624779>,  <1.143813, 0.591820, 2.889901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.250806, 0.312065, 2.624779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575713, -0.667589, 0.472101,
		-0.772663, 0.255306, -0.581215,
		0.267482, -0.699388, -0.662804,
		1.331051, 0.102249, 2.425937>
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
