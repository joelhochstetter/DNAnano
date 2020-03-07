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
	<-0.524218, 3.656348, 1.734129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.295670, 3.980148, 1.788162>,  <-0.158541, 4.174428, 1.820582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.295670, 3.980148, 1.788162>,  <-0.524218, 3.656348, 1.734129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.295670, 3.980148, 1.788162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684351, -0.560801, 0.466011,
		0.452990, -0.173821, -0.874406,
		0.571370, 0.809499, 0.135082,
		-0.124258, 4.222998, 1.828687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.135633, 3.569688, 1.346079>,  <-0.524218, 3.656348, 1.734129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.135633, 3.569688, 1.346079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.172684, 3.826883, 1.650181>,  <0.194914, 3.981200, 1.832642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.172684, 3.826883, 1.650181>,  <0.135633, 3.569688, 1.346079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.172684, 3.826883, 1.650181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855600, -0.441935, 0.269522,
		0.509282, 0.625510, -0.591075,
		0.092628, 0.642986, 0.760256,
		0.200472, 4.019779, 1.878258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.771239, 4.022816, 1.313643>,  <0.135633, 3.569688, 1.346079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.771239, 4.022816, 1.313643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.643681, 3.935583, 1.682587>,  <0.567146, 3.883243, 1.903953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.643681, 3.935583, 1.682587>,  <0.771239, 4.022816, 1.313643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.643681, 3.935583, 1.682587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872839, -0.446867, 0.196117,
		0.369403, 0.867612, 0.332854,
		-0.318895, -0.218082, 0.922359,
		0.548012, 3.870158, 1.959294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.982189, 4.577566, 1.844417>,  <0.771239, 4.022816, 1.313643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.982189, 4.577566, 1.844417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.952286, 4.185691, 1.918850>,  <0.934344, 3.950567, 1.963510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.952286, 4.185691, 1.918850>,  <0.982189, 4.577566, 1.844417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.952286, 4.185691, 1.918850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991757, -0.092518, -0.088654,
		0.104069, 0.177922, 0.978526,
		-0.074758, -0.979686, 0.186083,
		0.929859, 3.891786, 1.974675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.542449, 4.457176, 2.334550>,  <0.982189, 4.577566, 1.844417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.542449, 4.457176, 2.334550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.438084, 4.098817, 2.190720>,  <1.375465, 3.883802, 2.104421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.438084, 4.098817, 2.190720>,  <1.542449, 4.457176, 2.334550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.438084, 4.098817, 2.190720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951370, -0.301816, 0.061658,
		-0.163765, -0.326004, 0.931076,
		-0.260913, -0.895895, -0.359577,
		1.359810, 3.830049, 2.082846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.756614, 4.040173, 2.858382>,  <1.542449, 4.457176, 2.334550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.756614, 4.040173, 2.858382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.729691, 3.855715, 2.504475>,  <1.713537, 3.745041, 2.292130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.729691, 3.855715, 2.504475>,  <1.756614, 4.040173, 2.858382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.729691, 3.855715, 2.504475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970486, -0.236083, 0.049218,
		-0.231576, -0.855343, 0.463424,
		-0.067308, -0.461144, -0.884769,
		1.709498, 3.717372, 2.239044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.081852, 3.295053, 2.908788>,  <1.756614, 4.040173, 2.858382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.081852, 3.295053, 2.908788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.066063, 3.388977, 2.520292>,  <2.056589, 3.445331, 2.287195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.066063, 3.388977, 2.520292>,  <2.081852, 3.295053, 2.908788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.066063, 3.388977, 2.520292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912014, -0.388666, -0.131031,
		-0.408255, -0.890957, -0.198807,
		-0.039473, 0.234808, -0.971240,
		2.054221, 3.459419, 2.228920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.236713, 2.684005, 2.659099>,  <2.081852, 3.295053, 2.908788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.236713, 2.684005, 2.659099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.322392, 2.948341, 2.371374>,  <2.373798, 3.106943, 2.198739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.322392, 2.948341, 2.371374>,  <2.236713, 2.684005, 2.659099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.322392, 2.948341, 2.371374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880251, -0.449801, -0.151119,
		-0.423412, -0.600806, -0.678051,
		0.214195, 0.660841, -0.719312,
		2.386650, 3.146594, 2.155581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.815284, 3.221068, 2.166838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.666389, 3.003260, 1.866188>,  <3.577053, 2.872575, 1.685798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.666389, 3.003260, 1.866188>,  <3.815284, 3.221068, 2.166838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.666389, 3.003260, 1.866188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872884, 0.480627, 0.084093,
		0.315460, 0.687383, -0.654210,
		-0.372235, -0.544521, -0.751624,
		3.554719, 2.839904, 1.640701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.711102, 3.744154, 1.527217>,  <3.815284, 3.221068, 2.166838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.711102, 3.744154, 1.527217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.491142, 3.414577, 1.581963>,  <3.359166, 3.216832, 1.614810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.491142, 3.414577, 1.581963>,  <3.711102, 3.744154, 1.527217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.491142, 3.414577, 1.581963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803563, 0.566593, 0.182369,
		-0.227808, -0.009695, -0.973658,
		-0.549900, -0.823941, 0.136865,
		3.326172, 3.167395, 1.623022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.001404, 4.018657, 1.522175>,  <3.711102, 3.744154, 1.527217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.001404, 4.018657, 1.522175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.912971, 3.634123, 1.587852>,  <2.859912, 3.403403, 1.627259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.912971, 3.634123, 1.587852>,  <3.001404, 4.018657, 1.522175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.912971, 3.634123, 1.587852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970802, 0.233001, 0.057041,
		-0.093093, -0.146788, -0.984778,
		-0.221081, -0.961334, 0.164193,
		2.846647, 3.345723, 1.637110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.541132, 3.763390, 1.026412>,  <3.001404, 4.018657, 1.522175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.541132, 3.763390, 1.026412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.477203, 3.557480, 1.363331>,  <2.438846, 3.433933, 1.565482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.477203, 3.557480, 1.363331>,  <2.541132, 3.763390, 1.026412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.477203, 3.557480, 1.363331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970429, 0.238296, -0.038498,
		-0.180898, -0.823542, -0.537638,
		-0.159822, -0.514776, 0.842296,
		2.429257, 3.403047, 1.616020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.854413, 3.517611, 0.972413>,  <2.541132, 3.763390, 1.026412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.854413, 3.517611, 0.972413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.935059, 3.483997, 1.362755>,  <1.983446, 3.463830, 1.596960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.935059, 3.483997, 1.362755>,  <1.854413, 3.517611, 0.972413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.935059, 3.483997, 1.362755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978776, 0.020068, 0.203946,
		-0.036722, -0.996261, -0.078206,
		0.201614, -0.084035, 0.975854,
		1.995543, 3.458787, 1.655511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.356890, 3.077240, 1.108675>,  <1.854413, 3.517611, 0.972413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.356890, 3.077240, 1.108675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.470123, 3.213919, 1.467140>,  <1.538064, 3.295926, 1.682219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.470123, 3.213919, 1.467140>,  <1.356890, 3.077240, 1.108675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.470123, 3.213919, 1.467140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935211, -0.108884, 0.336935,
		0.212707, -0.933482, 0.288735,
		0.283084, 0.341696, 0.896163,
		1.555049, 3.316427, 1.735989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.086847, 2.606668, 1.621750>,  <1.356890, 3.077240, 1.108675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.086847, 2.606668, 1.621750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.156967, 2.973665, 1.764565>,  <1.199039, 3.193864, 1.850253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.156967, 2.973665, 1.764565>,  <1.086847, 2.606668, 1.621750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.156967, 2.973665, 1.764565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943084, 0.052394, 0.328402,
		0.282600, -0.394284, 0.874458,
		0.175300, 0.917494, 0.357036,
		1.209557, 3.248913, 1.871675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.797906, 2.628540, 2.320964>,  <1.086847, 2.606668, 1.621750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.797906, 2.628540, 2.320964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.825592, 3.012081, 2.210831>,  <0.842204, 3.242206, 2.144751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.825592, 3.012081, 2.210831>,  <0.797906, 2.628540, 2.320964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.825592, 3.012081, 2.210831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949382, 0.148082, 0.277031,
		0.306404, 0.242222, 0.920568,
		0.069216, 0.958854, -0.275334,
		0.846357, 3.299737, 2.128231>
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
