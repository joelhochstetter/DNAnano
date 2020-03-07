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
	<5.628317, -0.303545, 4.318739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.290298, -0.516903, 4.303839>,  <5.087487, -0.644917, 4.294899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.290298, -0.516903, 4.303839>,  <5.628317, -0.303545, 4.318739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.290298, -0.516903, 4.303839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533312, 0.845820, -0.012939,
		0.038409, 0.008932, -0.999222,
		-0.845046, -0.533394, -0.037250,
		5.036785, -0.676921, 4.292664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.167548, 0.114497, 4.011763>,  <5.628317, -0.303545, 4.318739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.167548, 0.114497, 4.011763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.926891, -0.156330, 4.181282>,  <4.782497, -0.318826, 4.282994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.926891, -0.156330, 4.181282>,  <5.167548, 0.114497, 4.011763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.926891, -0.156330, 4.181282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730029, 0.681415, 0.052261,
		-0.324168, -0.277943, -0.904247,
		-0.601642, -0.677068, 0.423799,
		4.746398, -0.359450, 4.308422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.716147, -0.195537, 3.575184>,  <5.167548, 0.114497, 4.011763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.716147, -0.195537, 3.575184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.544498, -0.205479, 3.936346>,  <4.441509, -0.211443, 4.153043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.544498, -0.205479, 3.936346>,  <4.716147, -0.195537, 3.575184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.544498, -0.205479, 3.936346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465616, 0.862657, -0.197547,
		-0.773988, -0.505179, -0.381756,
		-0.429121, -0.024853, 0.902905,
		4.415762, -0.212935, 4.207218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.970617, 0.030319, 3.535963>,  <4.716147, -0.195537, 3.575184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.970617, 0.030319, 3.535963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.128418, 0.120979, 3.892164>,  <4.223098, 0.175375, 4.105886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.128418, 0.120979, 3.892164>,  <3.970617, 0.030319, 3.535963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.128418, 0.120979, 3.892164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433410, 0.900430, -0.037172,
		-0.810262, -0.371289, 0.453453,
		0.394501, 0.226651, 0.890504,
		4.246768, 0.188974, 4.159316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.466309, 0.458582, 3.695068>,  <3.970617, 0.030319, 3.535963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.466309, 0.458582, 3.695068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.761490, 0.531197, 3.955059>,  <3.938598, 0.574765, 4.111053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.761490, 0.531197, 3.955059>,  <3.466309, 0.458582, 3.695068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.761490, 0.531197, 3.955059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277204, 0.959676, 0.046690,
		-0.615292, -0.214631, 0.758518,
		0.737953, 0.181536, 0.649978,
		3.982876, 0.585657, 4.150053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.170846, 0.860532, 4.193317>,  <3.466309, 0.458582, 3.695068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.170846, 0.860532, 4.193317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.562595, 0.929226, 4.235909>,  <3.797645, 0.970442, 4.261463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.562595, 0.929226, 4.235909>,  <3.170846, 0.860532, 4.193317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.562595, 0.929226, 4.235909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190054, 0.961855, 0.196759,
		-0.068626, -0.212937, 0.974653,
		0.979372, 0.171734, 0.106478,
		3.856407, 0.980746, 4.267852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.198863, 1.095512, 4.956463>,  <3.170846, 0.860532, 4.193317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.198863, 1.095512, 4.956463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.509907, 1.242580, 4.752447>,  <3.696533, 1.330822, 4.630038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.509907, 1.242580, 4.752447>,  <3.198863, 1.095512, 4.956463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.509907, 1.242580, 4.752447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360122, 0.925406, 0.118053,
		0.515397, 0.091877, 0.852012,
		0.777610, 0.367672, -0.510039,
		3.743190, 1.352882, 4.599435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.405657, 1.784714, 5.260274>,  <3.198863, 1.095512, 4.956463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.405657, 1.784714, 5.260274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.554825, 1.789719, 4.889162>,  <3.644326, 1.792721, 4.666495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.554825, 1.789719, 4.889162>,  <3.405657, 1.784714, 5.260274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.554825, 1.789719, 4.889162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245380, 0.965639, -0.085609,
		0.894829, 0.259584, 0.363176,
		0.372920, 0.012511, -0.927779,
		3.666701, 1.793472, 4.610828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.011496, 2.530805, 4.414952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.145370, 2.698566, 4.077412>,  <3.225695, 2.799223, 3.874887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.145370, 2.698566, 4.077412>,  <3.011496, 2.530805, 4.414952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.145370, 2.698566, 4.077412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637588, -0.760178, -0.124939,
		-0.693878, -0.496215, -0.521828,
		0.334686, 0.419404, -0.843852,
		3.245776, 2.824388, 3.824256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.896175, 2.058318, 3.828985>,  <3.011496, 2.530805, 4.414952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.896175, 2.058318, 3.828985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.213280, 2.301666, 3.844017>,  <3.403543, 2.447675, 3.853036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.213280, 2.301666, 3.844017>,  <2.896175, 2.058318, 3.828985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.213280, 2.301666, 3.844017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602723, -0.791606, 0.100420,
		0.090841, -0.056959, -0.994235,
		0.792763, 0.608371, 0.037580,
		3.451108, 2.484178, 3.855291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.374134, 1.824858, 3.348351>,  <2.896175, 2.058318, 3.828985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.374134, 1.824858, 3.348351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.558151, 2.015404, 3.648067>,  <3.668562, 2.129731, 3.827897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.558151, 2.015404, 3.648067>,  <3.374134, 1.824858, 3.348351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.558151, 2.015404, 3.648067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483170, -0.842316, 0.238854,
		0.744921, 0.252151, -0.617667,
		0.460044, 0.476365, 0.749290,
		3.696164, 2.158313, 3.872854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.138839, 1.762762, 3.347956>,  <3.374134, 1.824858, 3.348351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.138839, 1.762762, 3.347956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.052628, 1.785770, 3.737877>,  <4.000901, 1.799576, 3.971829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.052628, 1.785770, 3.737877>,  <4.138839, 1.762762, 3.347956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.052628, 1.785770, 3.737877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441219, -0.884814, 0.149765,
		0.871133, 0.462380, 0.165323,
		-0.215528, 0.057522, 0.974802,
		3.987969, 1.803027, 4.030317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.732123, 1.654005, 3.859406>,  <4.138839, 1.762762, 3.347956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.732123, 1.654005, 3.859406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.436142, 1.557446, 4.110546>,  <4.258554, 1.499510, 4.261230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.436142, 1.557446, 4.110546>,  <4.732123, 1.654005, 3.859406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.436142, 1.557446, 4.110546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451672, -0.869976, 0.197826,
		0.498460, 0.429965, 0.752773,
		-0.739953, -0.241398, 0.627851,
		4.214156, 1.485026, 4.298902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.085353, 1.315958, 4.475024>,  <4.732123, 1.654005, 3.859406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.085353, 1.315958, 4.475024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.696533, 1.222054, 4.474033>,  <4.463241, 1.165711, 4.473439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.696533, 1.222054, 4.474033>,  <5.085353, 1.315958, 4.475024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.696533, 1.222054, 4.474033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234708, -0.971465, -0.034171,
		0.005616, -0.033797, 0.999413,
		-0.972050, -0.234762, -0.002477,
		4.404918, 1.151625, 4.473290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.951632, 0.817955, 4.986779>,  <5.085353, 1.315958, 4.475024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.951632, 0.817955, 4.986779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.632637, 0.762173, 4.751980>,  <4.441240, 0.728704, 4.611100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.632637, 0.762173, 4.751980>,  <4.951632, 0.817955, 4.986779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.632637, 0.762173, 4.751980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071355, -0.987893, 0.137754,
		-0.599102, 0.067972, 0.797782,
		-0.797487, -0.139455, -0.586998,
		4.393391, 0.720336, 4.575881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.531312, 0.484632, 5.402751>,  <4.951632, 0.817955, 4.986779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.531312, 0.484632, 5.402751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.461617, 0.387680, 5.020988>,  <4.419799, 0.329509, 4.791931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.461617, 0.387680, 5.020988>,  <4.531312, 0.484632, 5.402751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.461617, 0.387680, 5.020988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155906, -0.963798, 0.216301,
		-0.972283, -0.111110, 0.205719,
		-0.174239, -0.242379, -0.954407,
		4.409345, 0.314966, 4.734666>
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
