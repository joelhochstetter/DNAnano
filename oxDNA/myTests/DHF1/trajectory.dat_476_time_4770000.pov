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
	<3.461129, 1.838819, 0.654494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.068709, 1.812607, 0.581558>,  <2.833257, 1.796879, 0.537797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.068709, 1.812607, 0.581558>,  <3.461129, 1.838819, 0.654494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.068709, 1.812607, 0.581558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049693, -0.824496, 0.563682,
		-0.187277, 0.562061, 0.805615,
		-0.981050, -0.065531, -0.182339,
		2.774394, 1.792947, 0.526857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.006317, 1.802747, 1.331943>,  <3.461129, 1.838819, 0.654494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.006317, 1.802747, 1.331943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.796556, 1.658310, 1.023499>,  <2.670698, 1.571648, 0.838432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.796556, 1.658310, 1.023499>,  <3.006317, 1.802747, 1.331943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.796556, 1.658310, 1.023499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353007, -0.731928, 0.582810,
		-0.774846, 0.577836, 0.256358,
		-0.524404, -0.361092, -0.771111,
		2.639234, 1.549982, 0.792165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.296504, 1.575044, 1.564701>,  <3.006317, 1.802747, 1.331943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.296504, 1.575044, 1.564701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.370550, 1.389996, 1.217896>,  <2.414978, 1.278967, 1.009812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.370550, 1.389996, 1.217896>,  <2.296504, 1.575044, 1.564701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.370550, 1.389996, 1.217896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381889, -0.846786, 0.370289,
		-0.905479, 0.262557, -0.333424,
		0.185117, -0.462620, -0.867015,
		2.426085, 1.251209, 0.957791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.687304, 1.157173, 1.409058>,  <2.296504, 1.575044, 1.564701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.687304, 1.157173, 1.409058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.996041, 1.003597, 1.206337>,  <2.181283, 0.911452, 1.084704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.996041, 1.003597, 1.206337>,  <1.687304, 1.157173, 1.409058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.996041, 1.003597, 1.206337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290079, -0.921944, 0.256657,
		-0.565784, -0.051086, -0.822969,
		0.771844, -0.383938, -0.506803,
		2.227594, 0.888416, 1.054296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.392848, 0.604364, 0.929091>,  <1.687304, 1.157173, 1.409058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.392848, 0.604364, 0.929091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.780847, 0.519466, 0.976517>,  <2.013646, 0.468528, 1.004972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.780847, 0.519466, 0.976517>,  <1.392848, 0.604364, 0.929091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.780847, 0.519466, 0.976517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223455, -0.970469, 0.090875,
		0.095776, -0.114643, -0.988779,
		0.969997, -0.212244, 0.118565,
		2.071846, 0.455793, 1.012086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.495505, 0.147230, 0.428214>,  <1.392848, 0.604364, 0.929091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.495505, 0.147230, 0.428214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.770605, 0.092682, 0.713425>,  <1.935664, 0.059953, 0.884551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.770605, 0.092682, 0.713425>,  <1.495505, 0.147230, 0.428214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.770605, 0.092682, 0.713425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166393, -0.985661, -0.028019,
		0.706623, -0.099372, -0.700578,
		0.687748, -0.136370, 0.713025,
		1.976929, 0.051771, 0.927332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.910875, -0.411587, 0.259816>,  <1.495505, 0.147230, 0.428214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.910875, -0.411587, 0.259816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.909567, -0.383537, 0.658829>,  <1.908783, -0.366707, 0.898237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.909567, -0.383537, 0.658829>,  <1.910875, -0.411587, 0.259816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.909567, -0.383537, 0.658829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205461, -0.976303, 0.067960,
		0.978660, -0.204732, 0.017601,
		-0.003270, 0.070126, 0.997533,
		1.908587, -0.362500, 0.958089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.201041, -1.019271, 0.416742>,  <1.910875, -0.411587, 0.259816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.201041, -1.019271, 0.416742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.060309, -0.890617, 0.768372>,  <1.975871, -0.813425, 0.979349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.060309, -0.890617, 0.768372>,  <2.201041, -1.019271, 0.416742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.060309, -0.890617, 0.768372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192039, -0.943941, 0.268508,
		0.916154, -0.074348, 0.393870,
		-0.351828, 0.321633, 0.879073,
		1.954761, -0.794127, 1.032094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.723250, 3.013721, 1.166817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.936352, 3.023602, 1.505180>,  <1.064213, 3.029530, 1.708199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.936352, 3.023602, 1.505180>,  <0.723250, 3.013721, 1.166817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.936352, 3.023602, 1.505180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150878, 0.986332, 0.066222,
		-0.832712, -0.162909, 0.529199,
		0.532754, 0.024701, 0.845910,
		1.096178, 3.031012, 1.758953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.976173, 3.764005, 1.024932>,  <0.723250, 3.013721, 1.166817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.976173, 3.764005, 1.024932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.291523, 3.681847, 1.256889>,  <1.480733, 3.632552, 1.396064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.291523, 3.681847, 1.256889>,  <0.976173, 3.764005, 1.024932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.291523, 3.681847, 1.256889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156119, 0.978558, 0.134354,
		-0.595056, -0.015389, 0.803537,
		0.788375, -0.205396, 0.579894,
		1.528036, 3.620228, 1.430858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.992317, 4.196862, 1.666911>,  <0.976173, 3.764005, 1.024932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.992317, 4.196862, 1.666911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.369530, 4.085369, 1.594246>,  <1.595857, 4.018473, 1.550647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.369530, 4.085369, 1.594246>,  <0.992317, 4.196862, 1.666911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.369530, 4.085369, 1.594246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297543, 0.950861, 0.085630,
		0.148868, -0.134804, 0.979626,
		0.943031, -0.278733, -0.181662,
		1.652439, 4.001749, 1.539747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.442709, 4.634761, 2.124869>,  <0.992317, 4.196862, 1.666911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.442709, 4.634761, 2.124869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.626713, 4.496315, 1.797798>,  <1.737115, 4.413247, 1.601556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.626713, 4.496315, 1.797798>,  <1.442709, 4.634761, 2.124869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.626713, 4.496315, 1.797798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420527, 0.895990, -0.142684,
		0.782015, -0.278219, 0.557715,
		0.460010, -0.346115, -0.817677,
		1.764716, 4.392480, 1.552495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.089899, 4.818677, 2.246603>,  <1.442709, 4.634761, 2.124869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.089899, 4.818677, 2.246603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.044056, 4.769493, 1.852295>,  <2.016550, 4.739983, 1.615710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.044056, 4.769493, 1.852295>,  <2.089899, 4.818677, 2.246603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.044056, 4.769493, 1.852295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603547, 0.779555, -0.167409,
		0.789048, -0.614146, -0.015130,
		-0.114608, -0.122961, -0.985771,
		2.009673, 4.732605, 1.556563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.812570, 4.959825, 1.945062>,  <2.089899, 4.818677, 2.246603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.812570, 4.959825, 1.945062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.558117, 4.982548, 1.637268>,  <2.405445, 4.996181, 1.452592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.558117, 4.982548, 1.637268>,  <2.812570, 4.959825, 1.945062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.558117, 4.982548, 1.637268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429494, 0.854568, -0.291974,
		0.640992, -0.516224, -0.568016,
		-0.636133, 0.056806, -0.769486,
		2.367277, 4.999590, 1.406422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.272010, 5.039046, 1.326564>,  <2.812570, 4.959825, 1.945062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.272010, 5.039046, 1.326564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.913906, 5.167622, 1.203156>,  <2.699044, 5.244767, 1.129110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.913906, 5.167622, 1.203156>,  <3.272010, 5.039046, 1.326564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.913906, 5.167622, 1.203156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427857, 0.813416, -0.394071,
		0.124286, -0.484800, -0.865750,
		-0.895261, 0.321439, -0.308522,
		2.645328, 5.264053, 1.110599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.340591, 5.265844, 0.559100>,  <3.272010, 5.039046, 1.326564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.340591, 5.265844, 0.559100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.025146, 5.448101, 0.724258>,  <2.835880, 5.557455, 0.823354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.025146, 5.448101, 0.724258>,  <3.340591, 5.265844, 0.559100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.025146, 5.448101, 0.724258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332844, 0.880931, -0.336416,
		-0.517019, -0.127871, -0.846369,
		-0.788610, 0.455642, 0.412897,
		2.788563, 5.584794, 0.848128>
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
