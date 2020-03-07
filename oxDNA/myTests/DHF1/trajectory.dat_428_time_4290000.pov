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
	<2.272086, 0.083629, 3.816516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.891876, 0.159637, 3.914818>,  <1.663750, 0.205242, 3.973799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.891876, 0.159637, 3.914818>,  <2.272086, 0.083629, 3.816516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.891876, 0.159637, 3.914818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096873, 0.570341, -0.815676,
		-0.295159, -0.799127, -0.523715,
		-0.950524, 0.190020, 0.245756,
		1.606719, 0.216643, 3.988544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.697783, -0.133847, 3.241117>,  <2.272086, 0.083629, 3.816516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.697783, -0.133847, 3.241117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.648735, 0.184570, 3.478191>,  <1.619306, 0.375621, 3.620436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.648735, 0.184570, 3.478191>,  <1.697783, -0.133847, 3.241117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.648735, 0.184570, 3.478191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167324, 0.572063, -0.802961,
		-0.978247, -0.197630, 0.063051,
		-0.122620, 0.796044, 0.592687,
		1.611949, 0.423384, 3.655998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.062353, 0.110281, 3.152052>,  <1.697783, -0.133847, 3.241117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.062353, 0.110281, 3.152052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.273655, 0.424286, 3.281483>,  <1.400436, 0.612689, 3.359141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.273655, 0.424286, 3.281483>,  <1.062353, 0.110281, 3.152052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.273655, 0.424286, 3.281483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257392, 0.511209, -0.820009,
		-0.809132, 0.349888, 0.472105,
		0.528256, 0.785012, 0.323577,
		1.432132, 0.659789, 3.378556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.591792, 0.712293, 3.166240>,  <1.062353, 0.110281, 3.152052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.591792, 0.712293, 3.166240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.978485, 0.787632, 3.097012>,  <1.210501, 0.832836, 3.055474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.978485, 0.787632, 3.097012>,  <0.591792, 0.712293, 3.166240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.978485, 0.787632, 3.097012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246554, 0.505946, -0.826577,
		-0.068119, 0.841750, 0.535553,
		0.966732, 0.188348, -0.173072,
		1.268505, 0.844136, 3.045090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.606910, 1.476196, 3.051314>,  <0.591792, 0.712293, 3.166240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.606910, 1.476196, 3.051314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.926601, 1.311714, 2.875977>,  <1.118416, 1.213025, 2.770774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.926601, 1.311714, 2.875977>,  <0.606910, 1.476196, 3.051314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.926601, 1.311714, 2.875977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264332, 0.414516, -0.870807,
		0.539779, 0.811842, 0.222599,
		0.799229, -0.411204, -0.438343,
		1.166370, 1.188353, 2.744473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.994464, 2.059926, 2.812314>,  <0.606910, 1.476196, 3.051314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.994464, 2.059926, 2.812314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.093227, 1.736095, 2.599289>,  <1.152485, 1.541797, 2.471474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.093227, 1.736095, 2.599289>,  <0.994464, 2.059926, 2.812314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.093227, 1.736095, 2.599289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369532, 0.429388, -0.824059,
		0.895814, 0.400266, -0.193144,
		0.246909, -0.809576, -0.532563,
		1.167300, 1.493223, 2.439520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.343902, 2.314929, 2.226308>,  <0.994464, 2.059926, 2.812314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.343902, 2.314929, 2.226308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.223038, 1.947155, 2.125641>,  <1.150519, 1.726490, 2.065241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.223038, 1.947155, 2.125641>,  <1.343902, 2.314929, 2.226308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.223038, 1.947155, 2.125641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316708, 0.345839, -0.883228,
		0.899107, -0.187172, -0.395692,
		-0.302162, -0.919436, -0.251668,
		1.132389, 1.671324, 2.050141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.715219, 2.031420, 1.642197>,  <1.343902, 2.314929, 2.226308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.715219, 2.031420, 1.642197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.359886, 1.849655, 1.668655>,  <1.146686, 1.740597, 1.684530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.359886, 1.849655, 1.668655>,  <1.715219, 2.031420, 1.642197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.359886, 1.849655, 1.668655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198695, 0.250509, -0.947505,
		0.413987, -0.854842, -0.312825,
		-0.888332, -0.454412, 0.066145,
		1.093386, 1.713332, 1.688499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.005936, 2.461388, 1.056269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.093121, 2.079536, 0.975101>,  <-0.145432, 1.850425, 0.926401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.093121, 2.079536, 0.975101>,  <-0.005936, 2.461388, 1.056269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.093121, 2.079536, 0.975101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663478, -0.297419, 0.686541,
		-0.715744, 0.015009, 0.698201,
		-0.217962, -0.954629, -0.202918,
		-0.158510, 1.793148, 0.914226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.085679, 2.198748, 1.677278>,  <-0.005936, 2.461388, 1.056269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.085679, 2.198748, 1.677278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.007855, 1.893929, 1.435749>,  <0.063976, 1.711037, 1.290831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.007855, 1.893929, 1.435749>,  <-0.085679, 2.198748, 1.677278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.007855, 1.893929, 1.435749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709746, -0.290671, 0.641693,
		-0.664516, -0.578612, 0.472892,
		0.233836, -0.762049, -0.603823,
		0.078006, 1.665314, 1.254602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.091344, 1.533349, 1.982648>,  <-0.085679, 2.198748, 1.677278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.091344, 1.533349, 1.982648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.191640, 1.571899, 1.702587>,  <0.361430, 1.595030, 1.534551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.191640, 1.571899, 1.702587>,  <-0.091344, 1.533349, 1.982648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.191640, 1.571899, 1.702587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684281, -0.341230, 0.644454,
		-0.176803, -0.935026, -0.307355,
		0.707460, 0.096376, -0.700151,
		0.403878, 1.600812, 1.492542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.042592, 0.941544, 1.719081>,  <-0.091344, 1.533349, 1.982648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.042592, 0.941544, 1.719081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.386042, 1.146484, 1.712624>,  <0.592111, 1.269449, 1.708749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.386042, 1.146484, 1.712624>,  <0.042592, 0.941544, 1.719081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.386042, 1.146484, 1.712624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388475, -0.629831, 0.672606,
		0.334443, -0.583787, -0.739824,
		0.858624, 0.512352, -0.016144,
		0.643629, 1.300190, 1.707780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.653740, 0.492231, 1.781672>,  <0.042592, 0.941544, 1.719081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.653740, 0.492231, 1.781672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.823113, 0.848289, 1.849018>,  <0.924737, 1.061924, 1.889426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.823113, 0.848289, 1.849018>,  <0.653740, 0.492231, 1.781672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.823113, 0.848289, 1.849018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550902, -0.400542, 0.732170,
		0.719175, -0.217272, -0.659985,
		0.423432, 0.890145, 0.168364,
		0.950143, 1.115333, 1.899527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.369770, 0.407985, 1.763598>,  <0.653740, 0.492231, 1.781672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.369770, 0.407985, 1.763598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.305615, 0.747162, 1.965694>,  <1.267122, 0.950668, 2.086952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.305615, 0.747162, 1.965694>,  <1.369770, 0.407985, 1.763598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.305615, 0.747162, 1.965694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569219, -0.338722, 0.749171,
		0.806390, 0.407751, -0.428338,
		-0.160387, 0.847942, 0.505242,
		1.257499, 1.001545, 2.117267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.032042, 0.616972, 2.011408>,  <1.369770, 0.407985, 1.763598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.032042, 0.616972, 2.011408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.758447, 0.777321, 2.255199>,  <1.594291, 0.873530, 2.401474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.758447, 0.777321, 2.255199>,  <2.032042, 0.616972, 2.011408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.758447, 0.777321, 2.255199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447044, -0.429886, 0.784442,
		0.576467, 0.809012, 0.114829,
		-0.683987, 0.400871, 0.609479,
		1.553251, 0.897582, 2.438043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.407363, 0.827166, 2.473156>,  <2.032042, 0.616972, 2.011408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.407363, 0.827166, 2.473156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.047079, 0.817039, 2.646629>,  <1.830909, 0.810964, 2.750713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.047079, 0.817039, 2.646629>,  <2.407363, 0.827166, 2.473156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.047079, 0.817039, 2.646629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415087, -0.344668, 0.841966,
		0.128162, 0.938383, 0.320955,
		-0.900709, -0.025316, 0.433684,
		1.776866, 0.809445, 2.776735>
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
