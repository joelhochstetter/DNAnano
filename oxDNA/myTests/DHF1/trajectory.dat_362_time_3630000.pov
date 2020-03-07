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
	<1.684535, -0.286605, 2.640088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.835587, 0.018814, 2.849617>,  <1.926218, 0.202066, 2.975334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.835587, 0.018814, 2.849617>,  <1.684535, -0.286605, 2.640088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.835587, 0.018814, 2.849617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919148, 0.377585, 0.112238,
		-0.112089, -0.523854, 0.844401,
		0.377629, 0.763549, 0.523822,
		1.948875, 0.247879, 3.006764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.379953, -0.239857, 3.290625>,  <1.684535, -0.286605, 2.640088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.379953, -0.239857, 3.290625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.506020, 0.114410, 3.154236>,  <1.581660, 0.326971, 3.072402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.506020, 0.114410, 3.154236>,  <1.379953, -0.239857, 3.290625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.506020, 0.114410, 3.154236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941863, 0.335992, 0.002150,
		0.116468, 0.320473, 0.940070,
		0.315167, 0.885667, -0.340974,
		1.600570, 0.380111, 3.051944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.127974, 0.134505, 3.815237>,  <1.379953, -0.239857, 3.290625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.127974, 0.134505, 3.815237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.157768, 0.328743, 3.466835>,  <1.175645, 0.445286, 3.257794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.157768, 0.328743, 3.466835>,  <1.127974, 0.134505, 3.815237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.157768, 0.328743, 3.466835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935549, 0.336424, 0.107556,
		0.345255, 0.806856, 0.479356,
		0.074485, 0.485595, -0.871005,
		1.180114, 0.474421, 3.205533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.813297, 0.767259, 3.853894>,  <1.127974, 0.134505, 3.815237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.813297, 0.767259, 3.853894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.769306, 0.708656, 3.460663>,  <0.742912, 0.673495, 3.224724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.769306, 0.708656, 3.460663>,  <0.813297, 0.767259, 3.853894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.769306, 0.708656, 3.460663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981764, 0.170318, 0.084448,
		0.155064, 0.974437, -0.162566,
		-0.109978, -0.146507, -0.983077,
		0.736313, 0.664704, 3.165740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.416967, 1.318656, 3.599479>,  <0.813297, 0.767259, 3.853894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.416967, 1.318656, 3.599479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.384605, 1.029274, 3.325233>,  <0.365189, 0.855645, 3.160686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.384605, 1.029274, 3.325233>,  <0.416967, 1.318656, 3.599479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.384605, 1.029274, 3.325233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977454, 0.192186, -0.087452,
		0.195034, 0.663086, -0.722689,
		-0.080902, -0.723451, -0.685619,
		0.360334, 0.812237, 3.119549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.025159, 1.511024, 2.894967>,  <0.416967, 1.318656, 3.599479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.025159, 1.511024, 2.894967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.001331, 1.115135, 2.945663>,  <-0.017225, 0.877602, 2.976081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.001331, 1.115135, 2.945663>,  <0.025159, 1.511024, 2.894967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.001331, 1.115135, 2.945663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993336, 0.053386, -0.102143,
		0.094327, -0.132660, -0.986663,
		-0.066225, -0.989722, 0.126740,
		-0.021199, 0.818218, 2.983686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.419366, 1.252511, 2.384364>,  <0.025158, 1.511024, 2.894967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.419366, 1.252511, 2.384364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.420666, 0.971954, 2.669472>,  <-0.421445, 0.803621, 2.840536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.420666, 0.971954, 2.669472>,  <-0.419366, 1.252511, 2.384364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.420666, 0.971954, 2.669472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995340, -0.066424, -0.069900,
		0.096372, -0.709675, -0.697907,
		-0.003248, -0.701391, 0.712769,
		-0.421640, 0.761537, 2.883303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.773106, 0.579871, 2.179646>,  <-0.419366, 1.252511, 2.384364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.773106, 0.579871, 2.179646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.794312, 0.583939, 2.579063>,  <-0.807035, 0.586379, 2.818713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.794312, 0.583939, 2.579063>,  <-0.773106, 0.579871, 2.179646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.794312, 0.583939, 2.579063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958630, -0.280573, -0.048037,
		0.279676, -0.959779, 0.024623,
		-0.053014, 0.010169, 0.998542,
		-0.810216, 0.586989, 2.878626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.367821, 1.356760, 2.752979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.210667, 1.058594, 2.968384>,  <3.116374, 0.879694, 3.097626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.210667, 1.058594, 2.968384>,  <3.367821, 1.356760, 2.752979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.210667, 1.058594, 2.968384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836937, -0.532487, -0.126466,
		0.381020, 0.401014, 0.833074,
		-0.392887, -0.745416, 0.538512,
		3.092801, 0.834969, 3.129937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.724601, 1.197494, 3.379455>,  <3.367821, 1.356760, 2.752979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.724601, 1.197494, 3.379455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.550326, 0.861191, 3.250893>,  <3.445761, 0.659409, 3.173755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.550326, 0.861191, 3.250893>,  <3.724601, 1.197494, 3.379455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.550326, 0.861191, 3.250893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888710, -0.458436, -0.005491,
		-0.142727, -0.288029, 0.946926,
		-0.435687, -0.840759, -0.321406,
		3.419620, 0.608963, 3.154471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.658558, 0.694126, 3.925223>,  <3.724601, 1.197494, 3.379455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.658558, 0.694126, 3.925223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.705040, 0.541138, 3.558571>,  <3.732930, 0.449345, 3.338579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.705040, 0.541138, 3.558571>,  <3.658558, 0.694126, 3.925223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.705040, 0.541138, 3.558571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946680, -0.236556, 0.218719,
		-0.300489, -0.893173, 0.334588,
		0.116205, -0.382471, -0.916631,
		3.739902, 0.426396, 3.283581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.059033, 0.229980, 4.113897>,  <3.658558, 0.694126, 3.925223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.059033, 0.229980, 4.113897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.109815, 0.337280, 3.731918>,  <4.140284, 0.401660, 3.502731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.109815, 0.337280, 3.731918>,  <4.059033, 0.229980, 4.113897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.109815, 0.337280, 3.731918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980015, -0.182563, 0.079004,
		-0.153145, -0.945893, -0.286066,
		0.126954, 0.268250, -0.954947,
		4.147901, 0.417755, 3.445434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.468482, -0.339007, 3.563771>,  <4.059033, 0.229980, 4.113897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.468482, -0.339007, 3.563771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.516940, 0.015182, 3.384323>,  <4.546015, 0.227696, 3.276655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.516940, 0.015182, 3.384323>,  <4.468482, -0.339007, 3.563771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.516940, 0.015182, 3.384323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914107, -0.275698, -0.297320,
		-0.386953, -0.374066, -0.842818,
		0.121146, 0.885475, -0.448618,
		4.553284, 0.280825, 3.249738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.824203, -0.478047, 3.042471>,  <4.468482, -0.339007, 3.563771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.824203, -0.478047, 3.042471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.872880, -0.081787, 3.017807>,  <4.902086, 0.155969, 3.003009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.872880, -0.081787, 3.017807>,  <4.824203, -0.478047, 3.042471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.872880, -0.081787, 3.017807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941851, -0.134855, -0.307784,
		-0.313222, -0.020620, -0.949456,
		0.121693, 0.990651, -0.061660,
		4.909388, 0.215408, 2.999309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.158543, -0.284226, 2.371767>,  <4.824203, -0.478047, 3.042471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.158543, -0.284226, 2.371767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.254255, 0.019608, 2.613686>,  <5.311683, 0.201907, 2.758837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.254255, 0.019608, 2.613686>,  <5.158543, -0.284226, 2.371767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.254255, 0.019608, 2.613686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946458, -0.043449, -0.319889,
		-0.216705, 0.648958, -0.729310,
		0.239282, 0.759583, 0.604796,
		5.326040, 0.247482, 2.795124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.520554, 0.420481, 2.039160>,  <5.158543, -0.284226, 2.371767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.520554, 0.420481, 2.039160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.634052, 0.304733, 2.404839>,  <5.702151, 0.235285, 2.624246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.634052, 0.304733, 2.404839>,  <5.520554, 0.420481, 2.039160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.634052, 0.304733, 2.404839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917599, -0.194847, -0.346477,
		0.278388, 0.937177, 0.210237,
		0.283746, -0.289369, 0.914196,
		5.719176, 0.217923, 2.679097>
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
