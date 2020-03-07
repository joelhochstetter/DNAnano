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
	<3.194396, 1.723920, -0.813446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.289042, 2.108812, -0.759590>,  <3.345829, 2.339747, -0.727277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.289042, 2.108812, -0.759590>,  <3.194396, 1.723920, -0.813446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.289042, 2.108812, -0.759590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210123, -0.084618, 0.974006,
		0.948611, -0.258754, 0.182165,
		0.236614, 0.962230, 0.134639,
		3.360026, 2.397481, -0.719198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.650908, 1.790718, -0.297977>,  <3.194396, 1.723920, -0.813446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.650908, 1.790718, -0.297977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.475710, 2.150267, -0.303469>,  <3.370591, 2.365996, -0.306763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.475710, 2.150267, -0.303469>,  <3.650908, 1.790718, -0.297977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.475710, 2.150267, -0.303469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015132, 0.007897, 0.999855,
		0.898850, 0.438140, 0.010143,
		-0.437996, 0.898872, -0.013728,
		3.344311, 2.419928, -0.307587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.830178, 2.137295, 0.292811>,  <3.650908, 1.790718, -0.297977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.830178, 2.137295, 0.292811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.488354, 2.321478, 0.196722>,  <3.283259, 2.431987, 0.139069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.488354, 2.321478, 0.196722>,  <3.830178, 2.137295, 0.292811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.488354, 2.321478, 0.196722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226853, 0.085142, 0.970200,
		0.467187, 0.883590, 0.031697,
		-0.854561, 0.460456, -0.240222,
		3.231986, 2.459615, 0.124655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.709429, 2.889860, 0.593421>,  <3.830178, 2.137295, 0.292811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.709429, 2.889860, 0.593421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.368761, 2.689131, 0.532976>,  <3.164361, 2.568693, 0.496709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.368761, 2.689131, 0.532976>,  <3.709429, 2.889860, 0.593421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.368761, 2.689131, 0.532976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200403, 0.045415, 0.978660,
		-0.484251, 0.863777, -0.139245,
		-0.851668, -0.501823, -0.151111,
		3.113261, 2.538584, 0.487643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.231332, 3.334721, 0.799882>,  <3.709429, 2.889860, 0.593421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.231332, 3.334721, 0.799882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.106674, 2.955702, 0.828251>,  <3.031879, 2.728290, 0.845272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.106674, 2.955702, 0.828251>,  <3.231332, 3.334721, 0.799882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.106674, 2.955702, 0.828251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066558, 0.052687, 0.996391,
		-0.947864, 0.315241, 0.046647,
		-0.311645, -0.947548, 0.070922,
		3.013180, 2.671438, 0.849527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.600151, 3.249251, 1.295176>,  <3.231332, 3.334721, 0.799882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.600151, 3.249251, 1.295176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.817392, 2.914934, 1.262955>,  <2.947737, 2.714344, 1.243622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.817392, 2.914934, 1.262955>,  <2.600151, 3.249251, 1.295176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.817392, 2.914934, 1.262955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161571, 0.009883, 0.986812,
		-0.823974, -0.548956, 0.140408,
		0.543104, -0.835793, -0.080553,
		2.980324, 2.664196, 1.238789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.649607, 3.088287, 2.036660>,  <2.600151, 3.249251, 1.295176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.649607, 3.088287, 2.036660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.896708, 2.831347, 1.855213>,  <3.044968, 2.677182, 1.746345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.896708, 2.831347, 1.855213>,  <2.649607, 3.088287, 2.036660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.896708, 2.831347, 1.855213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529232, -0.087052, 0.843999,
		-0.581633, -0.761450, 0.286177,
		0.617751, -0.642352, -0.453616,
		3.082033, 2.638641, 1.719128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.736274, 2.589815, 2.475213>,  <2.649607, 3.088287, 2.036660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.736274, 2.589815, 2.475213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.066555, 2.538359, 2.255516>,  <3.264724, 2.507485, 2.123698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.066555, 2.538359, 2.255516>,  <2.736274, 2.589815, 2.475213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.066555, 2.538359, 2.255516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560867, 0.083019, 0.823733,
		-0.060369, -0.988210, 0.140700,
		0.825702, -0.128641, -0.549243,
		3.314266, 2.499767, 2.090743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.838977, 3.079324, 3.018093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.140778, 2.861856, 2.871042>,  <4.321858, 2.731376, 2.782812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.140778, 2.861856, 2.871042>,  <3.838977, 3.079324, 3.018093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.140778, 2.861856, 2.871042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610742, -0.376581, -0.696550,
		0.240251, 0.750074, -0.616173,
		0.754502, -0.543669, -0.367628,
		4.367128, 2.698756, 2.760754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.802313, 3.243860, 2.319602>,  <3.838977, 3.079324, 3.018093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.802313, 3.243860, 2.319602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.986382, 2.892130, 2.368643>,  <4.096822, 2.681092, 2.398067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.986382, 2.892130, 2.368643>,  <3.802313, 3.243860, 2.319602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.986382, 2.892130, 2.368643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565211, -0.396639, -0.723335,
		0.684675, 0.263562, -0.679526,
		0.460170, -0.879325, 0.122601,
		4.124433, 2.628332, 2.405423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.269850, 2.948419, 1.702625>,  <3.802313, 3.243860, 2.319602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.269850, 2.948419, 1.702625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.052662, 2.682048, 1.907261>,  <3.922349, 2.522225, 2.030042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.052662, 2.682048, 1.907261>,  <4.269850, 2.948419, 1.702625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.052662, 2.682048, 1.907261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409779, -0.321645, -0.853596,
		0.732983, -0.673115, -0.098240,
		-0.542970, -0.665928, 0.511589,
		3.889771, 2.482269, 2.060738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.306705, 2.451957, 1.293123>,  <4.269850, 2.948419, 1.702625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.306705, 2.451957, 1.293123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.996872, 2.429543, 1.545116>,  <3.810972, 2.416095, 1.696313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.996872, 2.429543, 1.545116>,  <4.306705, 2.451957, 1.293123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.996872, 2.429543, 1.545116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607748, -0.209830, -0.765907,
		0.175107, -0.976131, 0.128475,
		-0.774583, -0.056035, 0.629985,
		3.764497, 2.412733, 1.734112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.950642, 1.759912, 1.320196>,  <4.306705, 2.451957, 1.293123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.950642, 1.759912, 1.320196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.655628, 2.009645, 1.423151>,  <3.478620, 2.159486, 1.484924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.655628, 2.009645, 1.423151>,  <3.950642, 1.759912, 1.320196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.655628, 2.009645, 1.423151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564241, -0.360298, -0.742845,
		-0.371063, -0.693089, 0.618013,
		-0.737527, 0.624350, 0.257376,
		3.434368, 2.196946, 1.500367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.443065, 1.479523, 0.927788>,  <3.950642, 1.759912, 1.320196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.443065, 1.479523, 0.927788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.296833, 1.835659, 1.036341>,  <3.209094, 2.049340, 1.101472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.296833, 1.835659, 1.036341>,  <3.443065, 1.479523, 0.927788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.296833, 1.835659, 1.036341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614087, -0.011608, -0.789153,
		-0.699463, -0.455150, 0.550989,
		-0.365579, 0.890339, 0.271382,
		3.187159, 2.102761, 1.117755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.668685, 1.418566, 0.899727>,  <3.443065, 1.479523, 0.927788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.668685, 1.418566, 0.899727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.759434, 1.807984, 0.888863>,  <2.813883, 2.041636, 0.882344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.759434, 1.807984, 0.888863>,  <2.668685, 1.418566, 0.899727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.759434, 1.807984, 0.888863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432678, 0.075767, -0.898359,
		-0.872536, 0.215563, 0.438422,
		0.226871, 0.973546, -0.027160,
		2.827495, 2.100048, 0.880715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.064368, 1.693633, 0.515550>,  <2.668685, 1.418566, 0.899727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.064368, 1.693633, 0.515550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.385590, 1.930764, 0.491362>,  <2.578323, 2.073043, 0.476849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.385590, 1.930764, 0.491362>,  <2.064368, 1.693633, 0.515550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.385590, 1.930764, 0.491362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056229, -0.025639, -0.998089,
		-0.593246, 0.804920, 0.012744,
		0.803055, 0.592828, -0.060470,
		2.626506, 2.108613, 0.473221>
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
