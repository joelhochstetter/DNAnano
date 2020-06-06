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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<21.691473, 17.109098, -2.465276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.049385, 17.284878, -2.433639>,  <22.264132, 17.390345, -2.414657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.049385, 17.284878, -2.433639>,  <21.691473, 17.109098, -2.465276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.049385, 17.284878, -2.433639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407984, -0.732674, -0.544737,
		-0.181436, 0.519688, -0.834869,
		0.894779, 0.439448, 0.079091,
		22.317820, 17.416712, -2.409912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.039547, 17.429291, -3.063867>,  <21.691473, 17.109098, -2.465276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.039547, 17.429291, -3.063867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.876957, 17.711708, -2.831908>,  <21.779404, 17.881159, -2.692733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.876957, 17.711708, -2.831908>,  <22.039547, 17.429291, -3.063867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.876957, 17.711708, -2.831908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778604, -0.064427, 0.624200,
		0.478074, 0.705230, -0.523541,
		-0.406474, 0.706045, 0.579896,
		21.755014, 17.923521, -2.657939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.433741, 18.057341, -2.892518>,  <22.039547, 17.429291, -3.063867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.433741, 18.057341, -2.892518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.192337, 17.983601, -2.582217>,  <22.047495, 17.939356, -2.396036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.192337, 17.983601, -2.582217>,  <22.433741, 18.057341, -2.892518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.192337, 17.983601, -2.582217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789530, -0.002178, 0.613708,
		-0.111448, 0.982858, 0.146865,
		-0.603507, -0.184351, 0.775754,
		22.011284, 17.928295, -2.349490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.934076, 17.759777, -2.326473>,  <22.433741, 18.057341, -2.892518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.934076, 17.759777, -2.326473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.275700, 17.828423, -2.522894>,  <23.480673, 17.869610, -2.640746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.275700, 17.828423, -2.522894>,  <22.934076, 17.759777, -2.326473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.275700, 17.828423, -2.522894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121612, -0.851974, -0.509264,
		-0.505761, 0.494660, -0.706766,
		0.854059, 0.171615, -0.491051,
		23.531918, 17.879908, -2.670209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.781727, 17.473808, -1.713590>,  <22.934076, 17.759777, -2.326473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.781727, 17.473808, -1.713590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.550468, 17.628944, -1.426444>,  <22.411715, 17.722027, -1.254157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.550468, 17.628944, -1.426444>,  <22.781727, 17.473808, -1.713590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.550468, 17.628944, -1.426444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745451, -0.608783, -0.271453,
		0.331743, -0.692071, 0.641081,
		-0.578144, 0.387841, 0.717864,
		22.377026, 17.745296, -1.211085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.585878, 17.006418, -1.147848>,  <22.781727, 17.473808, -1.713590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.585878, 17.006418, -1.147848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.303623, 17.270485, -1.250807>,  <22.134270, 17.428925, -1.312582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.303623, 17.270485, -1.250807>,  <22.585878, 17.006418, -1.147848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.303623, 17.270485, -1.250807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588411, -0.748335, -0.306212,
		-0.394771, -0.064620, 0.916504,
		-0.705640, 0.660165, -0.257398,
		22.091930, 17.468534, -1.328026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.780682, 17.054113, -0.843980>,  <22.585878, 17.006418, -1.147848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.780682, 17.054113, -0.843980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.781799, 17.106468, -1.240538>,  <21.782471, 17.137880, -1.478472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.781799, 17.106468, -1.240538>,  <21.780682, 17.054113, -0.843980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.781799, 17.106468, -1.240538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488704, -0.864764, -0.115546,
		-0.872445, 0.484821, 0.061548,
		0.002794, 0.130886, -0.991393,
		21.782637, 17.145735, -1.537956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.057779, 17.100471, -1.140729>,  <21.780682, 17.054113, -0.843980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.057779, 17.100471, -1.140729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.338203, 16.956055, -1.386708>,  <21.506458, 16.869404, -1.534295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.338203, 16.956055, -1.386708>,  <21.057779, 17.100471, -1.140729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.338203, 16.956055, -1.386708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537480, -0.834267, -0.122937,
		-0.468645, 0.416708, -0.778927,
		0.701061, -0.361044, -0.614947,
		21.548521, 16.847742, -1.571192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.595469, 17.542515, -1.678770>,  <21.057779, 17.100471, -1.140729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.595469, 17.542515, -1.678770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585548, 17.465862, -2.071232>,  <20.579596, 17.419870, -2.306709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585548, 17.465862, -2.071232>,  <20.595469, 17.542515, -1.678770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.585548, 17.465862, -2.071232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112816, 0.975722, -0.187717,
		0.993306, 0.106034, -0.045817,
		-0.024800, -0.191629, -0.981154,
		20.578108, 17.408373, -2.365578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.995600, 18.195629, -2.009427>,  <20.595469, 17.542515, -1.678770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.995600, 18.195629, -2.009427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.112617, 18.571404, -1.938009>,  <21.182829, 18.796867, -1.895159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.112617, 18.571404, -1.938009>,  <20.995600, 18.195629, -2.009427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.112617, 18.571404, -1.938009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195650, -0.241564, 0.950457,
		0.936023, -0.243119, -0.254469,
		0.292545, 0.939436, 0.178543,
		21.200380, 18.853233, -1.884447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.301867, 18.147142, -1.364109>,  <20.995600, 18.195629, -2.009427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.301867, 18.147142, -1.364109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.255028, 18.544342, -1.357896>,  <21.226925, 18.782661, -1.354168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.255028, 18.544342, -1.357896>,  <21.301867, 18.147142, -1.364109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.255028, 18.544342, -1.357896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041775, -0.020553, 0.998916,
		0.992241, 0.116323, 0.043889,
		-0.117099, 0.992999, 0.015534,
		21.219898, 18.842241, -1.353236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.862846, 18.552361, -1.015295>,  <21.301867, 18.147142, -1.364109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.862846, 18.552361, -1.015295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.489632, 18.690731, -0.975732>,  <21.265703, 18.773752, -0.951994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.489632, 18.690731, -0.975732>,  <21.862846, 18.552361, -1.015295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.489632, 18.690731, -0.975732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079200, -0.070687, 0.994349,
		0.350961, 0.935596, 0.038557,
		-0.933035, 0.345924, 0.098907,
		21.209721, 18.794508, -0.946059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.752216, 19.231194, -0.531044>,  <21.862846, 18.552361, -1.015295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.752216, 19.231194, -0.531044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.407368, 19.029068, -0.516052>,  <21.200459, 18.907793, -0.507056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.407368, 19.029068, -0.516052>,  <21.752216, 19.231194, -0.531044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.407368, 19.029068, -0.516052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001990, 0.070594, 0.997503,
		-0.506696, 0.860044, -0.059855,
		-0.862122, -0.505312, 0.037481,
		21.148731, 18.877474, -0.504807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.206127, 19.602465, -0.243606>,  <21.752216, 19.231194, -0.531044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.206127, 19.602465, -0.243606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.170090, 19.215267, -0.149904>,  <21.148468, 18.982948, -0.093683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.170090, 19.215267, -0.149904>,  <21.206127, 19.602465, -0.243606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.170090, 19.215267, -0.149904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215180, 0.248574, 0.944409,
		-0.972410, 0.034677, -0.230687,
		-0.090092, -0.967992, 0.234255,
		21.143063, 18.924870, -0.079627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.496250, 19.474318, 0.169274>,  <21.206127, 19.602465, -0.243606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.496250, 19.474318, 0.169274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791763, 19.224148, 0.269709>,  <20.969072, 19.074047, 0.329970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791763, 19.224148, 0.269709>,  <20.496250, 19.474318, 0.169274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791763, 19.224148, 0.269709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092893, 0.274509, 0.957087,
		-0.667509, -0.730405, 0.144706,
		0.738784, -0.625422, 0.251087,
		21.013399, 19.036522, 0.345035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.346754, 19.124262, 0.806525>,  <20.496250, 19.474318, 0.169274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.346754, 19.124262, 0.806525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.745274, 19.094887, 0.788641>,  <20.984385, 19.077261, 0.777910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.745274, 19.094887, 0.788641>,  <20.346754, 19.124262, 0.806525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.745274, 19.094887, 0.788641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065422, 0.310117, 0.948445,
		-0.055787, -0.947858, 0.313773,
		0.996297, -0.073439, -0.044710,
		21.044163, 19.072855, 0.775228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.545036, 18.662140, 1.320208>,  <20.346754, 19.124262, 0.806525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.545036, 18.662140, 1.320208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.780273, 18.961979, 1.198719>,  <20.921415, 19.141882, 1.125826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.780273, 18.961979, 1.198719>,  <20.545036, 18.662140, 1.320208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.780273, 18.961979, 1.198719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040845, 0.402573, 0.914476,
		0.807761, -0.525392, 0.267368,
		0.588094, 0.749599, -0.303723,
		20.956701, 19.186859, 1.107602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.236975, 18.848957, 1.684293>,  <20.545036, 18.662140, 1.320208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.236975, 18.848957, 1.684293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.057156, 19.174160, 1.536278>,  <20.949265, 19.369282, 1.447469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.057156, 19.174160, 1.536278>,  <21.236975, 18.848957, 1.684293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.057156, 19.174160, 1.536278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141575, 0.473870, 0.869140,
		0.881966, 0.338331, -0.328128,
		-0.449546, 0.813007, -0.370038,
		20.922291, 19.418062, 1.425266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.524998, 19.412388, 2.047684>,  <21.236975, 18.848957, 1.684293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.524998, 19.412388, 2.047684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.190239, 19.555340, 1.881849>,  <20.989384, 19.641111, 1.782348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.190239, 19.555340, 1.881849>,  <21.524998, 19.412388, 2.047684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.190239, 19.555340, 1.881849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177904, 0.538708, 0.823495,
		0.517644, 0.762936, -0.387263,
		-0.836896, 0.357382, -0.414588,
		20.939171, 19.662554, 1.757472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.463223, 20.106977, 1.911027>,  <21.524998, 19.412388, 2.047684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.463223, 20.106977, 1.911027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.095459, 19.982712, 2.007505>,  <20.874802, 19.908152, 2.065392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.095459, 19.982712, 2.007505>,  <21.463223, 20.106977, 1.911027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.095459, 19.982712, 2.007505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026777, 0.562387, 0.826441,
		-0.392393, 0.766295, -0.508744,
		-0.919408, -0.310667, 0.241195,
		20.819637, 19.889511, 2.079864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.784807, 20.483534, 1.813671>,  <21.463223, 20.106977, 1.911027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.784807, 20.483534, 1.813671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.455231, 20.679852, 1.700360>,  <20.257484, 20.797642, 1.632374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.455231, 20.679852, 1.700360>,  <20.784807, 20.483534, 1.813671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.455231, 20.679852, 1.700360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008574, 0.489037, 0.872221,
		0.566612, 0.721087, -0.398729,
		-0.823940, 0.490792, -0.283277,
		20.208048, 20.827089, 1.615377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.098076, 21.018389, 2.232072>,  <20.784807, 20.483534, 1.813671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.098076, 21.018389, 2.232072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.703838, 21.052391, 2.173585>,  <20.467297, 21.072792, 2.138494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.703838, 21.052391, 2.173585>,  <21.098076, 21.018389, 2.232072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.703838, 21.052391, 2.173585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116473, 0.285716, 0.951210,
		0.122634, 0.954537, -0.271699,
		-0.985594, 0.085005, -0.146217,
		20.408161, 21.077892, 2.129720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.895903, 21.642181, 2.259783>,  <21.098076, 21.018389, 2.232072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.895903, 21.642181, 2.259783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.594196, 21.421825, 2.402668>,  <20.413172, 21.289612, 2.488400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.594196, 21.421825, 2.402668>,  <20.895903, 21.642181, 2.259783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.594196, 21.421825, 2.402668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141093, 0.395353, 0.907628,
		-0.641229, 0.734994, -0.220475,
		-0.754267, -0.550890, 0.357214,
		20.367916, 21.256557, 2.509833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.324135, 22.024775, 2.615050>,  <20.895903, 21.642181, 2.259783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.324135, 22.024775, 2.615050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.382046, 21.658520, 2.765063>,  <20.416792, 21.438766, 2.855071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.382046, 21.658520, 2.765063>,  <20.324135, 22.024775, 2.615050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.382046, 21.658520, 2.765063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130199, 0.393360, 0.910119,
		-0.980861, -0.082936, 0.176165,
		0.144778, -0.915636, 0.375033,
		20.425480, 21.383829, 2.877573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.823757, 21.754240, 3.126925>,  <20.324135, 22.024775, 2.615050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.823757, 21.754240, 3.126925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.199364, 21.628109, 3.181798>,  <20.424726, 21.552429, 3.214721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.199364, 21.628109, 3.181798>,  <19.823757, 21.754240, 3.126925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.199364, 21.628109, 3.181798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012612, 0.367077, 0.930105,
		-0.343646, -0.875112, 0.340714,
		0.939014, -0.315330, 0.137182,
		20.481068, 21.533510, 3.222952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.936762, 21.220272, 3.658566>,  <19.823757, 21.754240, 3.126925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.936762, 21.220272, 3.658566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.241192, 21.472126, 3.596177>,  <20.423849, 21.623238, 3.558743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.241192, 21.472126, 3.596177>,  <19.936762, 21.220272, 3.658566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.241192, 21.472126, 3.596177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032214, 0.276846, 0.960374,
		0.647864, -0.725892, 0.230983,
		0.761074, 0.629633, -0.155974,
		20.469515, 21.661016, 3.549384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.485773, 21.037926, 4.132937>,  <19.936762, 21.220272, 3.658566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.485773, 21.037926, 4.132937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.473156, 21.417278, 4.006713>,  <20.465586, 21.644890, 3.930979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.473156, 21.417278, 4.006713>,  <20.485773, 21.037926, 4.132937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.473156, 21.417278, 4.006713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207235, 0.302650, 0.930300,
		0.977783, 0.094739, 0.186992,
		-0.031543, 0.948382, -0.315559,
		20.463694, 21.701794, 3.912046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.045031, 21.312681, 4.411549>,  <20.485773, 21.037926, 4.132937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.045031, 21.312681, 4.411549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.797894, 21.627193, 4.409204>,  <20.649611, 21.815901, 4.407797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.797894, 21.627193, 4.409204>,  <21.045031, 21.312681, 4.411549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.797894, 21.627193, 4.409204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238116, 0.194202, 0.951623,
		0.749379, 0.586559, -0.307212,
		-0.617844, 0.786279, -0.005862,
		20.612539, 21.863077, 4.407445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.445965, 21.897133, 4.628292>,  <21.045031, 21.312681, 4.411549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.445965, 21.897133, 4.628292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.056259, 21.912682, 4.717103>,  <20.822435, 21.922010, 4.770389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.056259, 21.912682, 4.717103>,  <21.445965, 21.897133, 4.628292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.056259, 21.912682, 4.717103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224925, 0.231806, 0.946401,
		-0.014678, 0.971985, -0.234584,
		-0.974266, 0.038873, 0.222026,
		20.763979, 21.924343, 4.783710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.362844, 22.562981, 5.010311>,  <21.445965, 21.897133, 4.628292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.362844, 22.562981, 5.010311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.082294, 22.289215, 5.089966>,  <20.913965, 22.124956, 5.137759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.082294, 22.289215, 5.089966>,  <21.362844, 22.562981, 5.010311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.082294, 22.289215, 5.089966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256397, 0.018432, 0.966396,
		-0.665084, 0.728862, 0.162553,
		-0.701373, -0.684413, 0.199137,
		20.871883, 22.083891, 5.149707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.097198, 22.728943, 5.626951>,  <21.362844, 22.562981, 5.010311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.097198, 22.728943, 5.626951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.956596, 22.355545, 5.598569>,  <20.872234, 22.131506, 5.581540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.956596, 22.355545, 5.598569>,  <21.097198, 22.728943, 5.626951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.956596, 22.355545, 5.598569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083896, -0.106896, 0.990724,
		-0.932419, 0.342292, 0.115891,
		-0.351506, -0.933493, -0.070955,
		20.851145, 22.075497, 5.577282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.532707, 22.581490, 6.266954>,  <21.097198, 22.728943, 5.626951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.532707, 22.581490, 6.266954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.728035, 22.265907, 6.117772>,  <20.845232, 22.076559, 6.028263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.728035, 22.265907, 6.117772>,  <20.532707, 22.581490, 6.266954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.728035, 22.265907, 6.117772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304620, -0.246387, 0.920055,
		-0.817773, -0.562889, 0.120016,
		0.488318, -0.788955, -0.372956,
		20.874531, 22.029221, 6.005886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.245436, 21.966667, 6.540878>,  <20.532707, 22.581490, 6.266954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.245436, 21.966667, 6.540878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.638451, 21.917461, 6.485037>,  <20.874260, 21.887938, 6.451532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.638451, 21.917461, 6.485037>,  <20.245436, 21.966667, 6.540878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.638451, 21.917461, 6.485037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093637, -0.321454, 0.942284,
		-0.160788, -0.938901, -0.304322,
		0.982537, -0.123012, -0.139602,
		20.933212, 21.880558, 6.443156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.489143, 21.473513, 6.906754>,  <20.245436, 21.966667, 6.540878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.489143, 21.473513, 6.906754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.828968, 21.683773, 6.889153>,  <21.032864, 21.809929, 6.878592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.828968, 21.683773, 6.889153>,  <20.489143, 21.473513, 6.906754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.828968, 21.683773, 6.889153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302043, -0.416377, 0.857554,
		0.432451, -0.741837, -0.512507,
		0.849562, 0.525650, -0.044004,
		21.083838, 21.841469, 6.875951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.142683, 21.046694, 6.944097>,  <20.489143, 21.473513, 6.906754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.142683, 21.046694, 6.944097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.193600, 21.404240, 7.116054>,  <21.224150, 21.618767, 7.219228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.193600, 21.404240, 7.116054>,  <21.142683, 21.046694, 6.944097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.193600, 21.404240, 7.116054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170162, -0.446672, 0.878367,
		0.977160, -0.038657, -0.208959,
		0.127291, 0.893863, 0.429892,
		21.231787, 21.672398, 7.245021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.664680, 20.945574, 7.494400>,  <21.142683, 21.046694, 6.944097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.664680, 20.945574, 7.494400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.478806, 21.275955, 7.622066>,  <21.367281, 21.474184, 7.698665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.478806, 21.275955, 7.622066>,  <21.664680, 20.945574, 7.494400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.478806, 21.275955, 7.622066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220570, -0.241112, 0.945100,
		0.857564, 0.509573, -0.070140,
		-0.464686, 0.825954, 0.319165,
		21.339399, 21.523741, 7.717815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.010056, 21.294590, 8.020887>,  <21.664680, 20.945574, 7.494400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.010056, 21.294590, 8.020887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.650017, 21.438828, 8.118699>,  <21.433992, 21.525370, 8.177386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.650017, 21.438828, 8.118699>,  <22.010056, 21.294590, 8.020887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.650017, 21.438828, 8.118699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304417, 0.118988, 0.945078,
		0.311693, 0.925102, -0.216872,
		-0.900099, 0.360594, 0.244530,
		21.379988, 21.547005, 8.192058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.174011, 21.796656, 8.445212>,  <22.010056, 21.294590, 8.020887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.174011, 21.796656, 8.445212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.785358, 21.746197, 8.525228>,  <21.552166, 21.715921, 8.573236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.785358, 21.746197, 8.525228>,  <22.174011, 21.796656, 8.445212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.785358, 21.746197, 8.525228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186457, 0.111678, 0.976095,
		-0.145471, 0.985705, -0.084989,
		-0.971634, -0.126147, 0.200037,
		21.493868, 21.708353, 8.585238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.994923, 22.280008, 9.016587>,  <22.174011, 21.796656, 8.445212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.994923, 22.280008, 9.016587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.713940, 21.996643, 9.044025>,  <21.545349, 21.826624, 9.060489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.713940, 21.996643, 9.044025>,  <21.994923, 22.280008, 9.016587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.713940, 21.996643, 9.044025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089347, 0.007843, 0.995970,
		-0.706095, 0.705756, 0.057785,
		-0.702459, -0.708412, 0.068595,
		21.503202, 21.784119, 9.064604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.572399, 22.561945, 9.490336>,  <21.994923, 22.280008, 9.016587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.572399, 22.561945, 9.490336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.462532, 22.177330, 9.491467>,  <21.396612, 21.946562, 9.492146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.462532, 22.177330, 9.491467>,  <21.572399, 22.561945, 9.490336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.462532, 22.177330, 9.491467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133746, 0.041118, 0.990162,
		-0.952192, 0.271587, -0.139895,
		-0.274668, -0.961535, 0.002829,
		21.380131, 21.888870, 9.492316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.900902, 22.509554, 9.748885>,  <21.572399, 22.561945, 9.490336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.900902, 22.509554, 9.748885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.059208, 22.148968, 9.819009>,  <21.154192, 21.932617, 9.861083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.059208, 22.148968, 9.819009>,  <20.900902, 22.509554, 9.748885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.059208, 22.148968, 9.819009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430316, -0.013393, 0.902579,
		-0.811294, -0.432648, -0.393215,
		0.395766, -0.901463, 0.175310,
		21.177938, 21.878529, 9.871602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.410019, 22.149752, 10.120650>,  <20.900902, 22.509554, 9.748885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.410019, 22.149752, 10.120650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.757839, 21.960838, 10.178381>,  <20.966532, 21.847490, 10.213019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.757839, 21.960838, 10.178381>,  <20.410019, 22.149752, 10.120650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.757839, 21.960838, 10.178381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175700, -0.022733, 0.984181,
		-0.461534, -0.881152, -0.102748,
		0.869550, -0.472286, 0.144326,
		21.018703, 21.819153, 10.221679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.241432, 21.668537, 10.617618>,  <20.410019, 22.149752, 10.120650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.241432, 21.668537, 10.617618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.640099, 21.647854, 10.642859>,  <20.879299, 21.635445, 10.658003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.640099, 21.647854, 10.642859>,  <20.241432, 21.668537, 10.617618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.640099, 21.647854, 10.642859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070759, -0.162898, 0.984102,
		-0.040606, -0.985287, -0.166013,
		0.996666, -0.051707, 0.063103,
		20.939098, 21.632341, 10.661790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.419178, 20.907177, 10.875324>,  <20.241432, 21.668537, 10.617618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.419178, 20.907177, 10.875324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.716064, 21.169201, 10.931902>,  <20.894197, 21.326416, 10.965849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.716064, 21.169201, 10.931902>,  <20.419178, 20.907177, 10.875324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.716064, 21.169201, 10.931902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023489, -0.185502, 0.982363,
		0.669747, -0.732450, -0.122296,
		0.742218, 0.655062, 0.141444,
		20.938730, 21.365719, 10.974335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.935013, 20.621077, 11.230832>,  <20.419178, 20.907177, 10.875324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.935013, 20.621077, 11.230832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.002422, 21.008045, 11.306402>,  <21.042868, 21.240227, 11.351745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.002422, 21.008045, 11.306402>,  <20.935013, 20.621077, 11.230832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.002422, 21.008045, 11.306402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022540, -0.195398, 0.980465,
		0.985440, -0.160973, -0.054735,
		0.168523, 0.967423, 0.188925,
		21.052979, 21.298271, 11.363080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.315514, 20.544746, 11.774364>,  <20.935013, 20.621077, 11.230832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.315514, 20.544746, 11.774364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.230801, 20.935654, 11.778296>,  <21.179974, 21.170198, 11.780655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.230801, 20.935654, 11.778296>,  <21.315514, 20.544746, 11.774364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.230801, 20.935654, 11.778296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107186, 0.013229, 0.994151,
		0.971421, 0.211597, -0.107551,
		-0.211783, 0.977268, 0.009830,
		21.167267, 21.228834, 11.781244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.761507, 20.862244, 12.286413>,  <21.315514, 20.544746, 11.774364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.761507, 20.862244, 12.286413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.443447, 21.100533, 12.241059>,  <21.252611, 21.243505, 12.213847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.443447, 21.100533, 12.241059>,  <21.761507, 20.862244, 12.286413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.443447, 21.100533, 12.241059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167273, -0.035743, 0.985263,
		0.582888, 0.802397, 0.128069,
		-0.795149, 0.595720, -0.113385,
		21.204903, 21.279249, 12.207044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.749338, 21.194630, 12.878852>,  <21.761507, 20.862244, 12.286413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.749338, 21.194630, 12.878852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.374195, 21.258995, 12.755872>,  <21.149109, 21.297613, 12.682083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.374195, 21.258995, 12.755872>,  <21.749338, 21.194630, 12.878852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.374195, 21.258995, 12.755872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298660, 0.076841, 0.951261,
		0.176694, 0.983973, -0.024008,
		-0.937860, 0.160912, -0.307451,
		21.092836, 21.307268, 12.663636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.438423, 21.728352, 13.408497>,  <21.749338, 21.194630, 12.878852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.438423, 21.728352, 13.408497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137691, 21.550976, 13.213310>,  <20.957253, 21.444550, 13.096198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137691, 21.550976, 13.213310>,  <21.438423, 21.728352, 13.408497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.137691, 21.550976, 13.213310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565341, 0.052678, 0.823174,
		-0.339324, 0.894754, -0.290300,
		-0.751830, -0.443441, -0.487966,
		20.912142, 21.417944, 13.066920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.807478, 22.158747, 13.511200>,  <21.438423, 21.728352, 13.408497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.807478, 22.158747, 13.511200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.666916, 21.794365, 13.424782>,  <20.582579, 21.575735, 13.372931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.666916, 21.794365, 13.424782>,  <20.807478, 22.158747, 13.511200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.666916, 21.794365, 13.424782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537718, 0.007475, 0.843091,
		-0.766404, 0.412438, -0.492464,
		-0.351404, -0.910955, -0.216047,
		20.561495, 21.521078, 13.359968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.204945, 22.122049, 13.785982>,  <20.807478, 22.158747, 13.511200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.204945, 22.122049, 13.785982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.276485, 21.730659, 13.744793>,  <20.319410, 21.495827, 13.720079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.276485, 21.730659, 13.744793>,  <20.204945, 22.122049, 13.785982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.276485, 21.730659, 13.744793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539870, -0.185097, 0.821145,
		-0.822528, -0.091271, -0.561353,
		0.178852, -0.978473, -0.102973,
		20.330141, 21.437119, 13.713902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.561337, 21.896544, 13.781996>,  <20.204945, 22.122049, 13.785982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.561337, 21.896544, 13.781996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.795326, 21.590309, 13.889091>,  <19.935720, 21.406569, 13.953349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.795326, 21.590309, 13.889091>,  <19.561337, 21.896544, 13.781996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.795326, 21.590309, 13.889091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463093, -0.044272, 0.885203,
		-0.665846, -0.641809, -0.380435,
		0.584974, -0.765586, 0.267739,
		19.970818, 21.360634, 13.969413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.144239, 21.510092, 14.052759>,  <19.561337, 21.896544, 13.781996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.144239, 21.510092, 14.052759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.483749, 21.337109, 14.174454>,  <19.687456, 21.233318, 14.247471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.483749, 21.337109, 14.174454>,  <19.144239, 21.510092, 14.052759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.483749, 21.337109, 14.174454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432500, -0.236824, 0.869976,
		-0.304179, -0.869996, -0.388049,
		0.848775, -0.432460, 0.304236,
		19.738382, 21.207371, 14.265725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.911489, 21.086647, 14.551439>,  <19.144239, 21.510092, 14.052759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.911489, 21.086647, 14.551439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.300789, 21.082726, 14.643261>,  <19.534369, 21.080372, 14.698354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.300789, 21.082726, 14.643261>,  <18.911489, 21.086647, 14.551439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.300789, 21.082726, 14.643261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219489, -0.335112, 0.916256,
		0.067945, -0.942127, -0.328298,
		0.973246, -0.009802, 0.229556,
		19.592762, 21.079784, 14.712128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.050341, 20.494766, 15.020458>,  <18.911489, 21.086647, 14.551439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.050341, 20.494766, 15.020458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.355007, 20.750500, 15.062635>,  <19.537807, 20.903940, 15.087942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.355007, 20.750500, 15.062635>,  <19.050341, 20.494766, 15.020458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.355007, 20.750500, 15.062635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059939, -0.092514, 0.993906,
		0.645193, -0.763343, -0.032144,
		0.761665, 0.639334, 0.105443,
		19.583508, 20.942299, 15.094269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.556622, 20.122540, 15.402020>,  <19.050341, 20.494766, 15.020458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.556622, 20.122540, 15.402020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.624100, 20.514351, 15.445959>,  <19.664587, 20.749437, 15.472322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.624100, 20.514351, 15.445959>,  <19.556622, 20.122540, 15.402020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.624100, 20.514351, 15.445959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102805, -0.093350, 0.990312,
		0.980292, -0.178354, 0.084952,
		0.168696, 0.979528, 0.109846,
		19.674709, 20.808208, 15.478913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.114008, 20.165268, 15.960916>,  <19.556622, 20.122540, 15.402020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.114008, 20.165268, 15.960916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.947674, 20.528984, 15.954269>,  <19.847874, 20.747213, 15.950282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.947674, 20.528984, 15.954269>,  <20.114008, 20.165268, 15.960916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.947674, 20.528984, 15.954269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001434, 0.018926, 0.999820,
		0.909439, 0.415735, -0.009174,
		-0.415834, 0.909289, -0.016616,
		19.822924, 20.801771, 15.949285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.508501, 20.582544, 16.476746>,  <20.114008, 20.165268, 15.960916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.508501, 20.582544, 16.476746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.164997, 20.781166, 16.426207>,  <19.958895, 20.900339, 16.395884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.164997, 20.781166, 16.426207>,  <20.508501, 20.582544, 16.476746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.164997, 20.781166, 16.426207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089226, 0.097894, 0.991189,
		0.504548, 0.862468, -0.039762,
		-0.858761, 0.496554, -0.126347,
		19.907370, 20.930132, 16.388302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.428179, 21.170710, 17.014717>,  <20.508501, 20.582544, 16.476746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.428179, 21.170710, 17.014717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.054211, 21.132401, 16.878044>,  <19.829830, 21.109415, 16.796040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.054211, 21.132401, 16.878044>,  <20.428179, 21.170710, 17.014717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.054211, 21.132401, 16.878044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353544, 0.168795, 0.920063,
		-0.030444, 0.980987, -0.191671,
		-0.934923, -0.095775, -0.341683,
		19.773733, 21.103668, 16.775539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.120556, 21.844770, 17.260595>,  <20.428179, 21.170710, 17.014717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.120556, 21.844770, 17.260595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.829552, 21.581890, 17.181786>,  <19.654949, 21.424162, 17.134501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.829552, 21.581890, 17.181786>,  <20.120556, 21.844770, 17.260595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.829552, 21.581890, 17.181786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436947, 0.222409, 0.871557,
		-0.528968, 0.720154, -0.448967,
		-0.727510, -0.657200, -0.197022,
		19.611300, 21.384729, 17.122679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.470562, 22.152992, 17.195196>,  <20.120556, 21.844770, 17.260595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.470562, 22.152992, 17.195196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.468533, 21.782608, 17.346231>,  <19.467316, 21.560377, 17.436853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.468533, 21.782608, 17.346231>,  <19.470562, 22.152992, 17.195196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.468533, 21.782608, 17.346231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413829, 0.345686, 0.842168,
		-0.910341, -0.151985, -0.384942,
		-0.005072, -0.925960, 0.377588,
		19.467010, 21.504820, 17.459507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.862350, 22.132446, 17.546631>,  <19.470562, 22.152992, 17.195196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.862350, 22.132446, 17.546631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.046291, 21.794868, 17.657114>,  <19.156656, 21.592321, 17.723404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.046291, 21.794868, 17.657114>,  <18.862350, 22.132446, 17.546631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.046291, 21.794868, 17.657114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430154, 0.060410, 0.900732,
		-0.776856, -0.533015, -0.335247,
		0.459851, -0.843947, 0.276208,
		19.184246, 21.541685, 17.739977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.353994, 21.804106, 17.929335>,  <18.862350, 22.132446, 17.546631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.353994, 21.804106, 17.929335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.668850, 21.569847, 18.006723>,  <18.857763, 21.429293, 18.053158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.668850, 21.569847, 18.006723>,  <18.353994, 21.804106, 17.929335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.668850, 21.569847, 18.006723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377614, -0.209571, 0.901936,
		-0.487670, -0.783006, -0.386109,
		0.787138, -0.585647, 0.193473,
		18.904991, 21.394154, 18.064766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.098286, 21.182030, 18.101110>,  <18.353994, 21.804106, 17.929335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.098286, 21.182030, 18.101110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.460117, 21.213413, 18.268721>,  <18.677216, 21.232243, 18.369286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.460117, 21.213413, 18.268721>,  <18.098286, 21.182030, 18.101110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.460117, 21.213413, 18.268721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400473, -0.180570, 0.898341,
		0.146144, -0.980428, -0.131920,
		0.904579, 0.078457, 0.419024,
		18.731491, 21.236950, 18.394428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.177567, 20.592031, 18.544018>,  <18.098286, 21.182030, 18.101110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.177567, 20.592031, 18.544018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.451061, 20.850960, 18.678764>,  <18.615158, 21.006317, 18.759613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.451061, 20.850960, 18.678764>,  <18.177567, 20.592031, 18.544018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.451061, 20.850960, 18.678764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134532, -0.341904, 0.930055,
		0.717222, -0.681231, -0.146686,
		0.683735, 0.647323, 0.336868,
		18.656181, 21.045156, 18.779825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.710239, 20.259619, 18.830709>,  <18.177567, 20.592031, 18.544018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.710239, 20.259619, 18.830709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.740654, 20.621719, 18.997915>,  <18.758902, 20.838980, 19.098240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.740654, 20.621719, 18.997915>,  <18.710239, 20.259619, 18.830709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.740654, 20.621719, 18.997915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204273, -0.396195, 0.895155,
		0.975956, -0.153452, 0.154794,
		0.076035, 0.905252, 0.418016,
		18.763464, 20.893295, 19.123320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.041288, 20.121134, 19.468489>,  <18.710239, 20.259619, 18.830709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.041288, 20.121134, 19.468489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.882114, 20.487762, 19.484222>,  <18.786610, 20.707739, 19.493664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.882114, 20.487762, 19.484222>,  <19.041288, 20.121134, 19.468489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.882114, 20.487762, 19.484222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233236, -0.142542, 0.961916,
		0.887270, 0.373606, 0.270499,
		-0.397935, 0.916570, 0.039335,
		18.762733, 20.762733, 19.496023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.211103, 20.288307, 20.192204>,  <19.041288, 20.121134, 19.468489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.211103, 20.288307, 20.192204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.925514, 20.544788, 20.079700>,  <18.754162, 20.698677, 20.012199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.925514, 20.544788, 20.079700>,  <19.211103, 20.288307, 20.192204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.925514, 20.544788, 20.079700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392898, -0.034407, 0.918938,
		0.579547, 0.766601, 0.276492,
		-0.713972, 0.641201, -0.281256,
		18.711323, 20.737148, 19.995323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.147190, 20.777052, 20.753500>,  <19.211103, 20.288307, 20.192204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.147190, 20.777052, 20.753500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.806641, 20.798985, 20.544825>,  <18.602310, 20.812143, 20.419621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.806641, 20.798985, 20.544825>,  <19.147190, 20.777052, 20.753500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.806641, 20.798985, 20.544825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517757, 0.071807, 0.852509,
		0.084204, 0.995910, -0.032746,
		-0.851374, 0.054830, -0.521686,
		18.551228, 20.815434, 20.388319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.773956, 21.411634, 20.972336>,  <19.147190, 20.777052, 20.753500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.773956, 21.411634, 20.972336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.520283, 21.134151, 20.835760>,  <18.368078, 20.967663, 20.753815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.520283, 21.134151, 20.835760>,  <18.773956, 21.411634, 20.972336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.520283, 21.134151, 20.835760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545336, 0.088275, 0.833556,
		-0.548102, 0.714828, -0.434286,
		-0.634186, -0.693706, -0.341438,
		18.330027, 20.926039, 20.733328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078310, 21.699600, 21.162415>,  <18.773956, 21.411634, 20.972336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.078310, 21.699600, 21.162415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028687, 21.313854, 21.068941>,  <17.998913, 21.082407, 21.012857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028687, 21.313854, 21.068941>,  <18.078310, 21.699600, 21.162415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028687, 21.313854, 21.068941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556754, -0.127287, 0.820867,
		-0.821361, 0.231939, -0.521124,
		-0.124059, -0.964366, -0.233682,
		17.991468, 21.024544, 20.998837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413126, 21.574369, 21.237566>,  <18.078310, 21.699600, 21.162415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413126, 21.574369, 21.237566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.550961, 21.198956, 21.229454>,  <17.633661, 20.973707, 21.224586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.550961, 21.198956, 21.229454>,  <17.413126, 21.574369, 21.237566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.550961, 21.198956, 21.229454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622818, -0.244730, 0.743105,
		-0.702394, -0.243433, -0.668867,
		0.344589, -0.938535, -0.020282,
		17.654337, 20.917395, 21.223370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.819033, 21.216858, 21.236744>,  <17.413126, 21.574369, 21.237566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.819033, 21.216858, 21.236744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.077873, 20.945415, 21.375742>,  <17.233177, 20.782551, 21.459141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.077873, 20.945415, 21.375742>,  <16.819033, 21.216858, 21.236744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.077873, 20.945415, 21.375742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598341, -0.169561, 0.783095,
		-0.472491, -0.714662, -0.515761,
		0.647101, -0.678606, 0.347496,
		17.272003, 20.741835, 21.479990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.538534, 20.537344, 21.200146>,  <16.819033, 21.216858, 21.236744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.538534, 20.537344, 21.200146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.813488, 20.552032, 21.490292>,  <16.978460, 20.560846, 21.664379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.813488, 20.552032, 21.490292>,  <16.538534, 20.537344, 21.200146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.813488, 20.552032, 21.490292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670995, -0.350127, 0.653588,
		0.277970, -0.935982, -0.216032,
		0.687385, 0.036721, 0.725364,
		17.019703, 20.563049, 21.707901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381365, 19.900339, 21.588602>,  <16.538534, 20.537344, 21.200146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.381365, 19.900339, 21.588602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.585659, 20.105545, 21.864563>,  <16.708237, 20.228668, 22.030140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.585659, 20.105545, 21.864563>,  <16.381365, 19.900339, 21.588602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.585659, 20.105545, 21.864563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710137, -0.200598, 0.674882,
		0.484616, -0.834612, 0.261857,
		0.510737, 0.513013, 0.689903,
		16.738880, 20.259449, 22.071533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.438637, 19.434122, 22.222088>,  <16.381365, 19.900339, 21.588602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.438637, 19.434122, 22.222088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.501213, 19.814014, 22.330557>,  <16.538759, 20.041950, 22.395638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.501213, 19.814014, 22.330557>,  <16.438637, 19.434122, 22.222088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.501213, 19.814014, 22.330557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593768, -0.128967, 0.794234,
		0.789282, -0.285262, 0.543745,
		0.156440, 0.949733, 0.271171,
		16.548145, 20.098934, 22.411907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563171, 19.452370, 22.960020>,  <16.438637, 19.434122, 22.222088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.563171, 19.452370, 22.960020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.474087, 19.834221, 22.880945>,  <16.420635, 20.063332, 22.833500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.474087, 19.834221, 22.880945>,  <16.563171, 19.452370, 22.960020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474087, 19.834221, 22.880945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463770, 0.074620, 0.882808,
		0.857507, 0.288294, 0.426110,
		-0.222711, 0.954630, -0.197689,
		16.407274, 20.120609, 22.821638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.717274, 19.859926, 23.589205>,  <16.563171, 19.452370, 22.960020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.717274, 19.859926, 23.589205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.453606, 20.025410, 23.338018>,  <16.295404, 20.124699, 23.187307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.453606, 20.025410, 23.338018>,  <16.717274, 19.859926, 23.589205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453606, 20.025410, 23.338018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654839, 0.094753, 0.749806,
		0.369701, 0.905466, 0.208453,
		-0.659172, 0.413707, -0.627964,
		16.255854, 20.149523, 23.149630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.335552, 20.632914, 23.698019>,  <16.717274, 19.859926, 23.589205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.335552, 20.632914, 23.698019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.104465, 20.365700, 23.510414>,  <15.965814, 20.205372, 23.397852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.104465, 20.365700, 23.510414>,  <16.335552, 20.632914, 23.698019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104465, 20.365700, 23.510414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731587, 0.168974, 0.660475,
		-0.361971, 0.724690, -0.586346,
		-0.577717, -0.668036, -0.469010,
		15.931150, 20.165289, 23.369711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266068, 20.835312, 24.476463>,  <16.335552, 20.632914, 23.698019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.266068, 20.835312, 24.476463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.303654, 21.229279, 24.534584>,  <16.326206, 21.465658, 24.569456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.303654, 21.229279, 24.534584>,  <16.266068, 20.835312, 24.476463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.303654, 21.229279, 24.534584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863630, 0.153247, -0.480270,
		-0.495292, -0.080356, 0.865002,
		0.093966, 0.984915, 0.145300,
		16.331844, 21.524754, 24.578175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.788974, 20.998892, 24.885017>,  <16.266068, 20.835312, 24.476463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.788974, 20.998892, 24.885017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.905864, 21.292103, 24.639328>,  <15.975998, 21.468029, 24.491915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.905864, 21.292103, 24.639328>,  <15.788974, 20.998892, 24.885017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.905864, 21.292103, 24.639328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884378, -0.037307, -0.465277,
		-0.363977, 0.679173, 0.637373,
		0.292225, 0.733029, -0.614225,
		15.993531, 21.512012, 24.455061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.365151, 20.954693, 24.368683>,  <15.788974, 20.998892, 24.885017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.365151, 20.954693, 24.368683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.551877, 21.270069, 24.208460>,  <15.663913, 21.459295, 24.112326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.551877, 21.270069, 24.208460>,  <15.365151, 20.954693, 24.368683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.551877, 21.270069, 24.208460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506016, -0.133329, -0.852157,
		-0.725280, 0.600488, 0.336724,
		0.466815, 0.788440, -0.400557,
		15.691921, 21.506601, 24.088293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.979587, 21.505028, 24.193892>,  <15.365151, 20.954693, 24.368683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.979587, 21.505028, 24.193892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.268300, 21.444378, 23.923769>,  <15.441528, 21.407988, 23.761696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.268300, 21.444378, 23.923769>,  <14.979587, 21.505028, 24.193892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.268300, 21.444378, 23.923769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691238, -0.207105, -0.692313,
		-0.034889, 0.966498, -0.254293,
		0.721784, -0.151623, -0.675306,
		15.484836, 21.398891, 23.721178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.629318, 21.668188, 24.833511>,  <14.979587, 21.505028, 24.193892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.629318, 21.668188, 24.833511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.672284, 22.041000, 24.971947>,  <14.698064, 22.264688, 25.055008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.672284, 22.041000, 24.971947>,  <14.629318, 21.668188, 24.833511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.672284, 22.041000, 24.971947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060246, 0.353566, -0.933468,
		-0.992387, 0.079418, 0.094130,
		0.107415, 0.932032, 0.346090,
		14.704509, 22.320610, 25.075773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.072503, 22.018953, 24.603714>,  <14.629318, 21.668188, 24.833511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.072503, 22.018953, 24.603714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.407739, 22.237160, 24.601934>,  <14.608880, 22.368084, 24.600866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.407739, 22.237160, 24.601934>,  <14.072503, 22.018953, 24.603714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.407739, 22.237160, 24.601934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107557, 0.157239, -0.981686,
		-0.534826, 0.823218, 0.190454,
		0.838089, 0.545516, -0.004447,
		14.659165, 22.400814, 24.600599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.978131, 22.449129, 24.048254>,  <14.072503, 22.018953, 24.603714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.978131, 22.449129, 24.048254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371755, 22.465813, 24.117405>,  <14.607929, 22.475822, 24.158895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371755, 22.465813, 24.117405>,  <13.978131, 22.449129, 24.048254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.371755, 22.465813, 24.117405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163563, 0.169360, -0.971887,
		-0.069816, 0.984671, 0.159838,
		0.984059, 0.041710, 0.172880,
		14.666972, 22.478325, 24.169270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.183010, 22.620554, 23.436535>,  <13.978131, 22.449129, 24.048254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.183010, 22.620554, 23.436535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.535131, 22.546719, 23.611347>,  <14.746403, 22.502419, 23.716234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.535131, 22.546719, 23.611347>,  <14.183010, 22.620554, 23.436535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.535131, 22.546719, 23.611347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457283, 0.084820, -0.885267,
		0.126339, 0.979150, 0.159075,
		0.880301, -0.184586, 0.437033,
		14.799221, 22.491343, 23.742456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711900, 23.114971, 23.721630>,  <14.183010, 22.620554, 23.436535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.711900, 23.114971, 23.721630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.869180, 22.795082, 23.540154>,  <14.963548, 22.603149, 23.431267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.869180, 22.795082, 23.540154>,  <14.711900, 23.114971, 23.721630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.869180, 22.795082, 23.540154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316287, 0.580970, -0.749958,
		0.863341, 0.151386, 0.481379,
		0.393200, -0.799722, -0.453694,
		14.987140, 22.555166, 23.404045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.150670, 23.372898, 23.252005>,  <14.711900, 23.114971, 23.721630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.150670, 23.372898, 23.252005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.142568, 22.990154, 23.136068>,  <15.137707, 22.760508, 23.066505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.142568, 22.990154, 23.136068>,  <15.150670, 23.372898, 23.252005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.142568, 22.990154, 23.136068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196613, 0.280429, -0.939523,
		0.980272, -0.076017, 0.182451,
		-0.020255, -0.956860, -0.289843,
		15.136491, 22.703096, 23.049116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.791785, 23.405142, 22.885157>,  <15.150670, 23.372898, 23.252005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.791785, 23.405142, 22.885157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.556609, 23.107559, 22.758125>,  <15.415504, 22.929010, 22.681906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.556609, 23.107559, 22.758125>,  <15.791785, 23.405142, 22.885157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.556609, 23.107559, 22.758125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204334, 0.243280, -0.948189,
		0.782671, -0.622370, 0.008982,
		-0.587939, -0.743956, -0.317580,
		15.380227, 22.884373, 22.662851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.147764, 23.083031, 22.286194>,  <15.791785, 23.405142, 22.885157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.147764, 23.083031, 22.286194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.764863, 22.974377, 22.246431>,  <15.535122, 22.909184, 22.222574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.764863, 22.974377, 22.246431>,  <16.147764, 23.083031, 22.286194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.764863, 22.974377, 22.246431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106629, -0.011918, -0.994227,
		0.268883, -0.962326, 0.040373,
		-0.957252, -0.271636, -0.099407,
		15.477687, 22.892885, 22.216610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.169268, 22.551605, 21.853508>,  <16.147764, 23.083031, 22.286194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.169268, 22.551605, 21.853508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.781587, 22.642456, 21.815430>,  <15.548979, 22.696966, 21.792583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.781587, 22.642456, 21.815430>,  <16.169268, 22.551605, 21.853508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.781587, 22.642456, 21.815430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098281, 0.002285, -0.995156,
		-0.225812, -0.973862, -0.024537,
		-0.969200, 0.227130, -0.095196,
		15.490827, 22.710594, 21.786871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.856650, 21.935453, 21.471941>,  <16.169268, 22.551605, 21.853508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.856650, 21.935453, 21.471941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.620910, 22.255814, 21.429565>,  <15.479465, 22.448030, 21.404140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.620910, 22.255814, 21.429565>,  <15.856650, 21.935453, 21.471941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.620910, 22.255814, 21.429565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129576, -0.035722, -0.990926,
		-0.797418, -0.597730, -0.082725,
		-0.589351, 0.800901, -0.105937,
		15.444104, 22.496084, 21.397785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.540865, 21.806280, 20.859493>,  <15.856650, 21.935453, 21.471941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.540865, 21.806280, 20.859493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.516379, 22.202076, 20.911890>,  <15.501688, 22.439554, 20.943329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.516379, 22.202076, 20.911890>,  <15.540865, 21.806280, 20.859493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.516379, 22.202076, 20.911890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065449, 0.134937, -0.988690,
		-0.995977, -0.051949, -0.073021,
		-0.061215, 0.989491, 0.130994,
		15.498015, 22.498924, 20.951189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.008274, 22.096813, 20.386574>,  <15.540865, 21.806280, 20.859493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.008274, 22.096813, 20.386574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.254809, 22.399891, 20.472391>,  <15.402731, 22.581738, 20.523882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.254809, 22.399891, 20.472391>,  <15.008274, 22.096813, 20.386574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.254809, 22.399891, 20.472391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048929, 0.308764, -0.949879,
		-0.785960, 0.574950, 0.227376,
		0.616339, 0.757692, 0.214544,
		15.439711, 22.627199, 20.536755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.778288, 22.677464, 20.044912>,  <15.008274, 22.096813, 20.386574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.778288, 22.677464, 20.044912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.161948, 22.767033, 20.114065>,  <15.392144, 22.820774, 20.155558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.161948, 22.767033, 20.114065>,  <14.778288, 22.677464, 20.044912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.161948, 22.767033, 20.114065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024012, 0.544475, -0.838433,
		-0.281872, 0.808336, 0.516857,
		0.959151, 0.223920, 0.172882,
		15.449694, 22.834209, 20.165930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.804870, 23.209967, 19.678961>,  <14.778288, 22.677464, 20.044912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.804870, 23.209967, 19.678961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191165, 23.160606, 19.770283>,  <15.422942, 23.130991, 19.825075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191165, 23.160606, 19.770283>,  <14.804870, 23.209967, 19.678961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.191165, 23.160606, 19.770283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259501, 0.469075, -0.844173,
		-0.002921, 0.874495, 0.485026,
		0.965738, -0.123399, 0.228303,
		15.480886, 23.123587, 19.838774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.012431, 23.803137, 19.490017>,  <14.804870, 23.209967, 19.678961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.012431, 23.803137, 19.490017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.345494, 23.582733, 19.512182>,  <15.545332, 23.450491, 19.525480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.345494, 23.582733, 19.512182>,  <15.012431, 23.803137, 19.490017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.345494, 23.582733, 19.512182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337834, 0.426123, -0.839218,
		0.438804, 0.717502, 0.540964,
		0.832658, -0.551008, 0.055412,
		15.595292, 23.417431, 19.528807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.535942, 24.247475, 19.394123>,  <15.012431, 23.803137, 19.490017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.535942, 24.247475, 19.394123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690827, 23.888741, 19.308565>,  <15.783758, 23.673500, 19.257231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690827, 23.888741, 19.308565>,  <15.535942, 24.247475, 19.394123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690827, 23.888741, 19.308565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389898, 0.369507, -0.843472,
		0.835491, 0.243206, 0.492752,
		0.387213, -0.896836, -0.213894,
		15.806992, 23.619690, 19.244396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266920, 24.398108, 19.137926>,  <15.535942, 24.247475, 19.394123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.266920, 24.398108, 19.137926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165096, 24.033943, 19.007481>,  <16.104002, 23.815445, 18.929214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165096, 24.033943, 19.007481>,  <16.266920, 24.398108, 19.137926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.165096, 24.033943, 19.007481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498917, 0.165239, -0.850751,
		0.828421, -0.379271, 0.412157,
		-0.254561, -0.910412, -0.326112,
		16.088728, 23.760820, 18.909647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.830879, 24.147552, 18.780964>,  <16.266920, 24.398108, 19.137926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.830879, 24.147552, 18.780964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.532833, 23.920010, 18.641705>,  <16.354006, 23.783484, 18.558149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.532833, 23.920010, 18.641705>,  <16.830879, 24.147552, 18.780964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.532833, 23.920010, 18.641705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472960, -0.082646, -0.877199,
		0.470227, -0.818274, 0.330628,
		-0.745114, -0.568857, -0.348148,
		16.309299, 23.749353, 18.537260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.159653, 23.556940, 18.498125>,  <16.830879, 24.147552, 18.780964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.159653, 23.556940, 18.498125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802345, 23.582680, 18.320168>,  <16.587961, 23.598124, 18.213392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802345, 23.582680, 18.320168>,  <17.159653, 23.556940, 18.498125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.802345, 23.582680, 18.320168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433346, -0.139850, -0.890311,
		-0.119506, -0.988080, 0.097040,
		-0.893269, 0.064346, -0.444893,
		16.534365, 23.601984, 18.186699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059858, 23.022860, 18.176834>,  <17.159653, 23.556940, 18.498125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059858, 23.022860, 18.176834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.824986, 23.284786, 17.986496>,  <16.684061, 23.441942, 17.872293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.824986, 23.284786, 17.986496>,  <17.059858, 23.022860, 18.176834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.824986, 23.284786, 17.986496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403771, -0.272557, -0.873316,
		-0.701559, -0.704929, -0.104356,
		-0.587183, 0.654818, -0.475845,
		16.648830, 23.481232, 17.843742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.934368, 22.783148, 17.583775>,  <17.059858, 23.022860, 18.176834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.934368, 22.783148, 17.583775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807159, 23.146374, 17.474758>,  <16.730833, 23.364309, 17.409348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807159, 23.146374, 17.474758>,  <16.934368, 22.783148, 17.583775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.807159, 23.146374, 17.474758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388469, -0.137421, -0.911157,
		-0.864843, -0.395643, -0.309052,
		-0.318023, 0.908065, -0.272543,
		16.711752, 23.418793, 17.392996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.655485, 22.713030, 16.797768>,  <16.934368, 22.783148, 17.583775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.655485, 22.713030, 16.797768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.745552, 23.097332, 16.862577>,  <16.799593, 23.327913, 16.901463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.745552, 23.097332, 16.862577>,  <16.655485, 22.713030, 16.797768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.745552, 23.097332, 16.862577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405514, 0.058795, -0.912196,
		-0.885922, 0.271099, -0.376360,
		0.225168, 0.960754, 0.162022,
		16.813103, 23.385559, 16.911184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.237406, 23.076735, 16.306498>,  <16.655485, 22.713030, 16.797768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.237406, 23.076735, 16.306498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552166, 23.296955, 16.417984>,  <16.741022, 23.429087, 16.484877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552166, 23.296955, 16.417984>,  <16.237406, 23.076735, 16.306498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.552166, 23.296955, 16.417984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349610, -0.025569, -0.936546,
		-0.508491, 0.834409, -0.212598,
		0.786899, 0.550552, 0.278716,
		16.788237, 23.462120, 16.501598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223801, 23.615002, 15.800812>,  <16.237406, 23.076735, 16.306498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223801, 23.615002, 15.800812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.592270, 23.607395, 15.956287>,  <16.813351, 23.602831, 16.049572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.592270, 23.607395, 15.956287>,  <16.223801, 23.615002, 15.800812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.592270, 23.607395, 15.956287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386393, 0.163428, -0.907740,
		-0.046262, 0.986372, 0.157893,
		0.921173, -0.019015, 0.388688,
		16.868622, 23.601690, 16.072893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.389250, 24.050190, 15.422561>,  <16.223801, 23.615002, 15.800812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.389250, 24.050190, 15.422561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.706165, 23.860771, 15.576462>,  <16.896315, 23.747120, 15.668802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.706165, 23.860771, 15.576462>,  <16.389250, 24.050190, 15.422561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.706165, 23.860771, 15.576462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403647, -0.066082, -0.912525,
		0.457547, 0.878287, 0.138789,
		0.792288, -0.473545, 0.384754,
		16.943851, 23.718708, 15.691888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037764, 24.410416, 15.266351>,  <16.389250, 24.050190, 15.422561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.037764, 24.410416, 15.266351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157097, 24.034161, 15.331089>,  <17.228697, 23.808407, 15.369932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157097, 24.034161, 15.331089>,  <17.037764, 24.410416, 15.266351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.157097, 24.034161, 15.331089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530028, 0.022252, -0.847688,
		0.793768, 0.338676, 0.505204,
		0.298333, -0.940640, 0.161845,
		17.246597, 23.751968, 15.379642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750914, 24.418419, 15.177266>,  <17.037764, 24.410416, 15.266351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750914, 24.418419, 15.177266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.623436, 24.042557, 15.127497>,  <17.546949, 23.817039, 15.097635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.623436, 24.042557, 15.127497>,  <17.750914, 24.418419, 15.177266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623436, 24.042557, 15.127497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468663, -0.042113, -0.882372,
		0.823886, -0.339521, 0.453803,
		-0.318695, -0.939655, -0.124425,
		17.527828, 23.760660, 15.090169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388018, 23.993626, 15.048704>,  <17.750914, 24.418419, 15.177266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.388018, 23.993626, 15.048704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.100170, 23.752491, 14.910873>,  <17.927462, 23.607809, 14.828175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.100170, 23.752491, 14.910873>,  <18.388018, 23.993626, 15.048704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.100170, 23.752491, 14.910873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522465, -0.143228, -0.840545,
		0.457360, -0.784902, 0.418032,
		-0.719620, -0.602838, -0.344577,
		17.884285, 23.571640, 14.807500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.691570, 23.257816, 15.018965>,  <18.388018, 23.993626, 15.048704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.691570, 23.257816, 15.018965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.387444, 23.327007, 14.768526>,  <18.204967, 23.368521, 14.618263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.387444, 23.327007, 14.768526>,  <18.691570, 23.257816, 15.018965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.387444, 23.327007, 14.768526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538232, -0.371826, -0.756341,
		-0.363611, -0.912048, 0.189618,
		-0.760325, 0.172956, -0.626093,
		18.159348, 23.378901, 14.580697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.968184, 23.059366, 14.392875>,  <18.691570, 23.257816, 15.018965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.968184, 23.059366, 14.392875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.630867, 23.207035, 14.236631>,  <18.428478, 23.295637, 14.142885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.630867, 23.207035, 14.236631>,  <18.968184, 23.059366, 14.392875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.630867, 23.207035, 14.236631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367834, -0.133464, -0.920264,
		-0.391869, -0.919728, -0.023245,
		-0.843290, 0.369173, -0.390607,
		18.377880, 23.317787, 14.119450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.945047, 22.664373, 13.824634>,  <18.968184, 23.059366, 14.392875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.945047, 22.664373, 13.824634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.689529, 22.968876, 13.780039>,  <18.536219, 23.151577, 13.753282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.689529, 22.968876, 13.780039>,  <18.945047, 22.664373, 13.824634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.689529, 22.968876, 13.780039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280167, 0.095204, -0.955219,
		-0.716553, -0.641423, -0.274095,
		-0.638795, 0.761257, -0.111487,
		18.497890, 23.197252, 13.746593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.649944, 22.503252, 13.265127>,  <18.945047, 22.664373, 13.824634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.649944, 22.503252, 13.265127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.606503, 22.899895, 13.293180>,  <18.580437, 23.137880, 13.310013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.606503, 22.899895, 13.293180>,  <18.649944, 22.503252, 13.265127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.606503, 22.899895, 13.293180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447831, 0.111789, -0.887102,
		-0.887498, -0.064935, -0.456214,
		-0.108604, 0.991608, 0.070133,
		18.573921, 23.197376, 13.314220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.291077, 22.705805, 12.677764>,  <18.649944, 22.503252, 13.265127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.291077, 22.705805, 12.677764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.466286, 23.041626, 12.806318>,  <18.571411, 23.243118, 12.883451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.466286, 23.041626, 12.806318>,  <18.291077, 22.705805, 12.677764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.466286, 23.041626, 12.806318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171073, 0.273128, -0.946644,
		-0.882537, 0.469630, -0.023989,
		0.438020, 0.839553, 0.321387,
		18.597692, 23.293491, 12.902735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.029804, 23.244215, 12.271676>,  <18.291077, 22.705805, 12.677764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.029804, 23.244215, 12.271676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.373051, 23.379406, 12.426289>,  <18.578999, 23.460520, 12.519056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.373051, 23.379406, 12.426289>,  <18.029804, 23.244215, 12.271676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.373051, 23.379406, 12.426289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291031, 0.300036, -0.908449,
		-0.423008, 0.892048, 0.159104,
		0.858117, 0.337977, 0.386531,
		18.630486, 23.480799, 12.542248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.109940, 23.989380, 11.990726>,  <18.029804, 23.244215, 12.271676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.109940, 23.989380, 11.990726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.468384, 23.855301, 12.107089>,  <18.683451, 23.774853, 12.176908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.468384, 23.855301, 12.107089>,  <18.109940, 23.989380, 11.990726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.468384, 23.855301, 12.107089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386471, 0.267027, -0.882801,
		0.218231, 0.903515, 0.368830,
		0.896111, -0.335197, 0.290909,
		18.737217, 23.754742, 12.194362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.595171, 24.531506, 11.770661>,  <18.109940, 23.989380, 11.990726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.595171, 24.531506, 11.770661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.804958, 24.193108, 11.809078>,  <18.930832, 23.990068, 11.832129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.804958, 24.193108, 11.809078>,  <18.595171, 24.531506, 11.770661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.804958, 24.193108, 11.809078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356348, 0.115658, -0.927167,
		0.773270, 0.520496, 0.362128,
		0.524470, -0.845995, 0.096043,
		18.962299, 23.939310, 11.837891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.271923, 24.704153, 11.532337>,  <18.595171, 24.531506, 11.770661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.271923, 24.704153, 11.532337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.242695, 24.305519, 11.516944>,  <19.225159, 24.066339, 11.507708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.242695, 24.305519, 11.516944>,  <19.271923, 24.704153, 11.532337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.242695, 24.305519, 11.516944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393772, 0.006623, -0.919184,
		0.916299, -0.082317, 0.391943,
		-0.073068, -0.996584, -0.038483,
		19.220774, 24.006544, 11.505399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.889523, 24.511013, 11.283710>,  <19.271923, 24.704153, 11.532337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.889523, 24.511013, 11.283710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.661983, 24.188931, 11.216718>,  <19.525459, 23.995680, 11.176522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.661983, 24.188931, 11.216718>,  <19.889523, 24.511013, 11.283710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.661983, 24.188931, 11.216718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454956, -0.138436, -0.879688,
		0.685147, -0.576607, 0.445083,
		-0.568849, -0.805208, -0.167482,
		19.491329, 23.947369, 11.166473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.316759, 23.992388, 10.971395>,  <19.889523, 24.511013, 11.283710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.316759, 23.992388, 10.971395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.952950, 23.885231, 10.844274>,  <19.734663, 23.820936, 10.768001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.952950, 23.885231, 10.844274>,  <20.316759, 23.992388, 10.971395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.952950, 23.885231, 10.844274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367471, -0.160927, -0.916006,
		0.194248, -0.949914, 0.244810,
		-0.909523, -0.267893, -0.317806,
		19.680092, 23.804863, 10.748932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.469597, 23.647339, 10.469926>,  <20.316759, 23.992388, 10.971395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.469597, 23.647339, 10.469926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.078285, 23.701168, 10.406860>,  <19.843498, 23.733465, 10.369021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.078285, 23.701168, 10.406860>,  <20.469597, 23.647339, 10.469926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.078285, 23.701168, 10.406860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145690, -0.094667, -0.984791,
		-0.147453, -0.986371, 0.073005,
		-0.978280, 0.134575, -0.157664,
		19.784801, 23.741539, 10.359561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.237940, 23.071909, 9.899523>,  <20.469597, 23.647339, 10.469926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.237940, 23.071909, 9.899523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.970367, 23.368004, 9.926575>,  <19.809824, 23.545662, 9.942805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.970367, 23.368004, 9.926575>,  <20.237940, 23.071909, 9.899523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.970367, 23.368004, 9.926575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148087, -0.043556, -0.988015,
		-0.728422, -0.670931, 0.138756,
		-0.668933, 0.740240, 0.067629,
		19.769688, 23.590076, 9.946863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.580845, 22.795036, 9.708109>,  <20.237940, 23.071909, 9.899523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.580845, 22.795036, 9.708109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.584980, 23.189743, 9.643383>,  <19.587461, 23.426567, 9.604548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.584980, 23.189743, 9.643383>,  <19.580845, 22.795036, 9.708109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.584980, 23.189743, 9.643383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157619, -0.158192, -0.974746,
		-0.987446, 0.035582, 0.153898,
		0.010338, 0.986767, -0.161815,
		19.588081, 23.485773, 9.594838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.074444, 22.856680, 9.268171>,  <19.580845, 22.795036, 9.708109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.074444, 22.856680, 9.268171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.257362, 23.210403, 9.230481>,  <19.367113, 23.422638, 9.207868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.257362, 23.210403, 9.230481>,  <19.074444, 22.856680, 9.268171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.257362, 23.210403, 9.230481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134765, -0.035820, -0.990230,
		-0.879043, 0.465529, 0.102793,
		0.457298, 0.884308, -0.094224,
		19.394552, 23.475697, 9.202214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.637217, 23.280518, 8.833085>,  <19.074444, 22.856680, 9.268171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.637217, 23.280518, 8.833085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.006313, 23.431427, 8.801551>,  <19.227772, 23.521973, 8.782631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.006313, 23.431427, 8.801551>,  <18.637217, 23.280518, 8.833085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.006313, 23.431427, 8.801551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104924, 0.049073, -0.993269,
		-0.370864, 0.924801, 0.084866,
		0.922741, 0.377272, -0.078834,
		19.283136, 23.544609, 8.777901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.426472, 23.943241, 8.530502>,  <18.637217, 23.280518, 8.833085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.426472, 23.943241, 8.530502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.102547, 23.770096, 8.372092>,  <17.908192, 23.666208, 8.277046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.102547, 23.770096, 8.372092>,  <18.426472, 23.943241, 8.530502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.102547, 23.770096, 8.372092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446930, 0.017854, 0.894391,
		-0.380077, 0.901283, -0.207918,
		-0.809812, -0.432862, -0.396024,
		17.859604, 23.640238, 8.253285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.872513, 24.298939, 8.843072>,  <18.426472, 23.943241, 8.530502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.872513, 24.298939, 8.843072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.733006, 23.949459, 8.707419>,  <17.649302, 23.739771, 8.626028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.733006, 23.949459, 8.707419>,  <17.872513, 24.298939, 8.843072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.733006, 23.949459, 8.707419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737768, 0.032791, 0.674257,
		-0.577977, 0.485361, -0.656024,
		-0.348770, -0.873699, -0.339131,
		17.628374, 23.687349, 8.605680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.119734, 24.428862, 8.665143>,  <17.872513, 24.298939, 8.843072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.119734, 24.428862, 8.665143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.208118, 24.047462, 8.747134>,  <17.261148, 23.818623, 8.796329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.208118, 24.047462, 8.747134>,  <17.119734, 24.428862, 8.665143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.208118, 24.047462, 8.747134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648513, 0.013330, 0.761087,
		-0.728428, -0.301100, -0.615411,
		0.220960, -0.953499, 0.204978,
		17.274406, 23.761414, 8.808627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.526314, 24.071537, 8.528058>,  <17.119734, 24.428862, 8.665143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.526314, 24.071537, 8.528058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.729694, 23.809799, 8.751956>,  <16.851723, 23.652758, 8.886294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.729694, 23.809799, 8.751956>,  <16.526314, 24.071537, 8.528058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.729694, 23.809799, 8.751956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738339, 0.003202, 0.674422,
		-0.443096, -0.756191, -0.481499,
		0.508450, -0.654343, 0.559744,
		16.882229, 23.613497, 8.919879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.024424, 23.574135, 8.656338>,  <16.526314, 24.071537, 8.528058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.024424, 23.574135, 8.656338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.314930, 23.524487, 8.926785>,  <16.489233, 23.494698, 9.089052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.314930, 23.524487, 8.926785>,  <16.024424, 23.574135, 8.656338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.314930, 23.524487, 8.926785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684062, -0.227506, 0.693037,
		0.067801, -0.965834, -0.250135,
		0.726266, -0.124119, 0.676116,
		16.532810, 23.487251, 9.129620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.945931, 22.889532, 8.920089>,  <16.024424, 23.574135, 8.656338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.945931, 22.889532, 8.920089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.143337, 23.098309, 9.198375>,  <16.261780, 23.223576, 9.365347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.143337, 23.098309, 9.198375>,  <15.945931, 22.889532, 8.920089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143337, 23.098309, 9.198375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650328, -0.309695, 0.693658,
		0.577510, -0.794773, 0.186596,
		0.493513, 0.521943, 0.695715,
		16.291391, 23.254892, 9.407089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.958262, 22.423222, 9.539625>,  <15.945931, 22.889532, 8.920089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.958262, 22.423222, 9.539625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.057423, 22.787468, 9.671884>,  <16.116919, 23.006016, 9.751239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.057423, 22.787468, 9.671884>,  <15.958262, 22.423222, 9.539625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.057423, 22.787468, 9.671884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462597, -0.188612, 0.866273,
		0.851205, -0.367706, 0.374491,
		0.247900, 0.910614, 0.330647,
		16.131792, 23.060652, 9.771077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.197489, 22.307123, 10.188410>,  <15.958262, 22.423222, 9.539625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.197489, 22.307123, 10.188410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.134739, 22.702049, 10.198168>,  <16.097088, 22.939005, 10.204022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.134739, 22.702049, 10.198168>,  <16.197489, 22.307123, 10.188410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.134739, 22.702049, 10.198168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512153, -0.102447, 0.852762,
		0.844446, 0.121284, 0.521729,
		-0.156876, 0.987317, 0.024395,
		16.087677, 22.998245, 10.205486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.519833, 22.493034, 10.756500>,  <16.197489, 22.307123, 10.188410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.519833, 22.493034, 10.756500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.235847, 22.756264, 10.656185>,  <16.065456, 22.914202, 10.595996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.235847, 22.756264, 10.656185>,  <16.519833, 22.493034, 10.756500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.235847, 22.756264, 10.656185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440460, -0.137066, 0.887247,
		0.549499, 0.740373, 0.387166,
		-0.709962, 0.658073, -0.250787,
		16.022860, 22.953686, 10.580949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.578924, 22.824293, 11.290617>,  <16.519833, 22.493034, 10.756500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.578924, 22.824293, 11.290617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.221340, 22.938599, 11.152532>,  <16.006790, 23.007181, 11.069680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.221340, 22.938599, 11.152532>,  <16.578924, 22.824293, 11.290617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.221340, 22.938599, 11.152532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366285, -0.022094, 0.930240,
		0.258202, 0.958045, 0.124423,
		-0.893961, 0.285764, -0.345213,
		15.953152, 23.024328, 11.048967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.341185, 23.418072, 11.733830>,  <16.578924, 22.824293, 11.290617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.341185, 23.418072, 11.733830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.033684, 23.240314, 11.549859>,  <15.849183, 23.133659, 11.439476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.033684, 23.240314, 11.549859>,  <16.341185, 23.418072, 11.733830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.033684, 23.240314, 11.549859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531373, 0.043631, 0.846014,
		-0.355897, 0.894768, -0.269681,
		-0.768752, -0.444395, -0.459928,
		15.803058, 23.106997, 11.411880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.845906, 23.840963, 11.848477>,  <16.341185, 23.418072, 11.733830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.845906, 23.840963, 11.848477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.625583, 23.518524, 11.761930>,  <15.493388, 23.325060, 11.710001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.625583, 23.518524, 11.761930>,  <15.845906, 23.840963, 11.848477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.625583, 23.518524, 11.761930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564945, 0.169262, 0.807581,
		-0.614367, 0.567060, -0.548632,
		-0.550810, -0.806098, -0.216369,
		15.460340, 23.276695, 11.697019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.096644, 24.019157, 11.805488>,  <15.845906, 23.840963, 11.848477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.096644, 24.019157, 11.805488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.147468, 23.631607, 11.890470>,  <15.177961, 23.399076, 11.941459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.147468, 23.631607, 11.890470>,  <15.096644, 24.019157, 11.805488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.147468, 23.631607, 11.890470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567380, 0.104697, 0.816774,
		-0.813595, -0.224320, -0.536418,
		0.127057, -0.968876, 0.212455,
		15.185585, 23.340944, 11.954206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.528423, 23.893579, 12.146348>,  <15.096644, 24.019157, 11.805488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.528423, 23.893579, 12.146348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.753236, 23.574753, 12.234715>,  <14.888124, 23.383457, 12.287734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.753236, 23.574753, 12.234715>,  <14.528423, 23.893579, 12.146348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.753236, 23.574753, 12.234715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459544, -0.078845, 0.884648,
		-0.687706, -0.598722, -0.410601,
		0.562032, -0.797067, 0.220917,
		14.921845, 23.335632, 12.300989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.095374, 23.374344, 12.480319>,  <14.528423, 23.893579, 12.146348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.095374, 23.374344, 12.480319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.467546, 23.286110, 12.597381>,  <14.690848, 23.233170, 12.667618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.467546, 23.286110, 12.597381>,  <14.095374, 23.374344, 12.480319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.467546, 23.286110, 12.597381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321924, -0.110345, 0.940313,
		-0.175134, -0.969104, -0.173682,
		0.930426, -0.220594, 0.292653,
		14.746674, 23.219934, 12.685177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.886216, 22.993660, 12.959346>,  <14.095374, 23.374344, 12.480319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.886216, 22.993660, 12.959346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.267980, 23.065121, 13.055002>,  <14.497038, 23.107998, 13.112396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.267980, 23.065121, 13.055002>,  <13.886216, 22.993660, 12.959346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.267980, 23.065121, 13.055002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252700, 0.057115, 0.965858,
		0.158892, -0.982254, 0.099656,
		0.954409, 0.178650, 0.239140,
		14.554302, 23.118715, 13.126744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.125959, 22.540457, 13.470393>,  <13.886216, 22.993660, 12.959346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.125959, 22.540457, 13.470393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.399222, 22.831375, 13.496721>,  <14.563180, 23.005926, 13.512518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.399222, 22.831375, 13.496721>,  <14.125959, 22.540457, 13.470393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.399222, 22.831375, 13.496721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063859, -0.030290, 0.997499,
		0.727473, -0.685653, 0.025752,
		0.683158, 0.727298, 0.065820,
		14.604170, 23.049564, 13.516467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.624758, 22.208586, 13.841642>,  <14.125959, 22.540457, 13.470393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.624758, 22.208586, 13.841642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.647000, 22.605831, 13.882891>,  <14.660346, 22.844179, 13.907640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.647000, 22.605831, 13.882891>,  <14.624758, 22.208586, 13.841642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.647000, 22.605831, 13.882891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015847, -0.104146, 0.994436,
		0.998327, -0.053663, -0.021529,
		0.055606, 0.993113, 0.103122,
		14.663682, 22.903765, 13.913827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.054358, 22.407331, 14.392141>,  <14.624758, 22.208586, 13.841642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.054358, 22.407331, 14.392141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.867946, 22.758835, 14.350962>,  <14.756099, 22.969738, 14.326254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.867946, 22.758835, 14.350962>,  <15.054358, 22.407331, 14.392141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.867946, 22.758835, 14.350962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043338, 0.093545, 0.994671,
		0.883707, 0.468008, -0.005512,
		-0.466030, 0.878759, -0.102949,
		14.728137, 23.022463, 14.320077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.394838, 22.852663, 14.755711>,  <15.054358, 22.407331, 14.392141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.394838, 22.852663, 14.755711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.041892, 23.036633, 14.715904>,  <14.830124, 23.147015, 14.692020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.041892, 23.036633, 14.715904>,  <15.394838, 22.852663, 14.755711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.041892, 23.036633, 14.715904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157201, -0.088772, 0.983569,
		0.443530, 0.883511, 0.150629,
		-0.882365, 0.459921, -0.099516,
		14.777183, 23.174608, 14.686049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.464893, 23.549515, 15.166253>,  <15.394838, 22.852663, 14.755711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.464893, 23.549515, 15.166253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.079444, 23.449486, 15.128529>,  <14.848174, 23.389469, 15.105894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.079444, 23.449486, 15.128529>,  <15.464893, 23.549515, 15.166253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.079444, 23.449486, 15.128529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192036, 0.402418, 0.895087,
		-0.185883, 0.880638, -0.435802,
		-0.963623, -0.250071, -0.094311,
		14.790357, 23.374464, 15.100235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138644, 24.079601, 15.535762>,  <15.464893, 23.549515, 15.166253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.138644, 24.079601, 15.535762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875249, 23.778591, 15.531773>,  <14.717212, 23.597984, 15.529379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875249, 23.778591, 15.531773>,  <15.138644, 24.079601, 15.535762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.875249, 23.778591, 15.531773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180878, 0.145385, 0.972701,
		-0.730531, 0.642316, -0.231849,
		-0.658489, -0.752525, -0.009972,
		14.677702, 23.552834, 15.528781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.601875, 24.281628, 15.968093>,  <15.138644, 24.079601, 15.535762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.601875, 24.281628, 15.968093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547349, 23.886681, 15.935776>,  <14.514633, 23.649714, 15.916386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547349, 23.886681, 15.935776>,  <14.601875, 24.281628, 15.968093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.547349, 23.886681, 15.935776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276824, -0.040341, 0.960074,
		-0.951203, 0.153239, -0.267828,
		-0.136316, -0.987366, -0.080792,
		14.506454, 23.590471, 15.911538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.952402, 24.188795, 16.235716>,  <14.601875, 24.281628, 15.968093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.952402, 24.188795, 16.235716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.141828, 23.836853, 16.251692>,  <14.255483, 23.625689, 16.261278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.141828, 23.836853, 16.251692>,  <13.952402, 24.188795, 16.235716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.141828, 23.836853, 16.251692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273205, -0.103635, 0.956357,
		-0.837314, -0.463809, -0.289458,
		0.473565, -0.879853, 0.039940,
		14.283897, 23.572897, 16.263674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.463982, 23.782375, 16.659592>,  <13.952402, 24.188795, 16.235716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.463982, 23.782375, 16.659592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.790219, 23.550941, 16.662298>,  <13.985962, 23.412081, 16.663921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.790219, 23.550941, 16.662298>,  <13.463982, 23.782375, 16.659592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.790219, 23.550941, 16.662298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381082, -0.528313, 0.758724,
		-0.435411, -0.621389, -0.651377,
		0.815594, -0.578585, 0.006767,
		14.034897, 23.377365, 16.664328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.252262, 23.125673, 16.612986>,  <13.463982, 23.782375, 16.659592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.252262, 23.125673, 16.612986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.620908, 23.111401, 16.767570>,  <13.842095, 23.102837, 16.860321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.620908, 23.111401, 16.767570>,  <13.252262, 23.125673, 16.612986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.620908, 23.111401, 16.767570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347652, -0.518538, 0.781189,
		0.172522, -0.854310, -0.490297,
		0.921615, -0.035680, 0.386462,
		13.897392, 23.100697, 16.883509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.360538, 22.544731, 16.772982>,  <13.252262, 23.125673, 16.612986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.360538, 22.544731, 16.772982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.646239, 22.697933, 17.007298>,  <13.817660, 22.789854, 17.147886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.646239, 22.697933, 17.007298>,  <13.360538, 22.544731, 16.772982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.646239, 22.697933, 17.007298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280604, -0.610050, 0.741013,
		0.641173, -0.693646, -0.328258,
		0.714254, 0.383007, 0.585788,
		13.860516, 22.812836, 17.183033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.733371, 21.968876, 17.020861>,  <13.360538, 22.544731, 16.772982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.733371, 21.968876, 17.020861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.777411, 22.280582, 17.267637>,  <13.803836, 22.467607, 17.415703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.777411, 22.280582, 17.267637>,  <13.733371, 21.968876, 17.020861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.777411, 22.280582, 17.267637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216897, -0.586919, 0.780052,
		0.969966, -0.219699, 0.104400,
		0.110102, 0.779268, 0.616943,
		13.810442, 22.514362, 17.452721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.179491, 21.734608, 17.609793>,  <13.733371, 21.968876, 17.020861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.179491, 21.734608, 17.609793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.950767, 22.034504, 17.743013>,  <13.813532, 22.214441, 17.822947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.950767, 22.034504, 17.743013>,  <14.179491, 21.734608, 17.609793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.950767, 22.034504, 17.743013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225268, -0.533856, 0.815017,
		0.788852, 0.391009, 0.474157,
		-0.571810, 0.749740, 0.333051,
		13.779223, 22.259426, 17.842928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.269941, 21.706797, 18.225647>,  <14.179491, 21.734608, 17.609793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.269941, 21.706797, 18.225647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.964475, 21.961754, 18.266720>,  <13.781195, 22.114729, 18.291363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.964475, 21.961754, 18.266720>,  <14.269941, 21.706797, 18.225647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.964475, 21.961754, 18.266720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269201, -0.458933, 0.846706,
		0.586810, 0.618958, 0.522059,
		-0.763666, 0.637394, 0.102682,
		13.735375, 22.152971, 18.297523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.289576, 22.057388, 18.976856>,  <14.269941, 21.706797, 18.225647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.289576, 22.057388, 18.976856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.917226, 22.091026, 18.834644>,  <13.693816, 22.111210, 18.749317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.917226, 22.091026, 18.834644>,  <14.289576, 22.057388, 18.976856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.917226, 22.091026, 18.834644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364500, -0.147909, 0.919382,
		0.024730, 0.985419, 0.168337,
		-0.930875, 0.084095, -0.355528,
		13.637963, 22.116255, 18.727985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.930945, 22.510939, 19.494226>,  <14.289576, 22.057388, 18.976856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.930945, 22.510939, 19.494226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.661029, 22.324684, 19.265198>,  <13.499079, 22.212931, 19.127781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.661029, 22.324684, 19.265198>,  <13.930945, 22.510939, 19.494226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.661029, 22.324684, 19.265198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596229, -0.113270, 0.794784,
		-0.434935, 0.877698, -0.201193,
		-0.674791, -0.465636, -0.572573,
		13.458591, 22.184994, 19.093426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.255324, 22.709267, 19.715996>,  <13.930945, 22.510939, 19.494226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.255324, 22.709267, 19.715996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.216907, 22.345398, 19.554365>,  <13.193855, 22.127077, 19.457388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.216907, 22.345398, 19.554365>,  <13.255324, 22.709267, 19.715996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.216907, 22.345398, 19.554365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552823, -0.288836, 0.781639,
		-0.827745, 0.298455, -0.475145,
		-0.096045, -0.909669, -0.404075,
		13.188093, 22.072496, 19.433142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.530775, 22.596222, 19.789358>,  <13.255324, 22.709267, 19.715996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.530775, 22.596222, 19.789358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.678571, 22.230503, 19.722984>,  <12.767248, 22.011072, 19.683159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.678571, 22.230503, 19.722984>,  <12.530775, 22.596222, 19.789358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.678571, 22.230503, 19.722984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438898, -0.329111, 0.836095,
		-0.819052, -0.236099, -0.522887,
		0.369489, -0.914299, -0.165935,
		12.789417, 21.956213, 19.673204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.998089, 22.150461, 19.752731>,  <12.530775, 22.596222, 19.789358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.998089, 22.150461, 19.752731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306254, 21.914402, 19.849222>,  <12.491154, 21.772766, 19.907116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306254, 21.914402, 19.849222>,  <11.998089, 22.150461, 19.752731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.306254, 21.914402, 19.849222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530798, -0.384144, 0.755438,
		-0.353147, -0.710047, -0.609196,
		0.770416, -0.590141, 0.241232,
		12.537378, 21.737358, 19.921591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.703419, 21.434391, 19.869535>,  <11.998089, 22.150461, 19.752731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.703419, 21.434391, 19.869535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.056291, 21.427670, 20.057781>,  <12.268014, 21.423637, 20.170729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.056291, 21.427670, 20.057781>,  <11.703419, 21.434391, 19.869535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.056291, 21.427670, 20.057781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438196, -0.395283, 0.807302,
		0.172461, -0.918406, -0.356073,
		0.882180, -0.016801, 0.470612,
		12.320945, 21.422628, 20.198965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.735552, 20.765196, 20.292850>,  <11.703419, 21.434391, 19.869535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.735552, 20.765196, 20.292850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.040919, 20.968124, 20.452761>,  <12.224139, 21.089882, 20.548706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.040919, 20.968124, 20.452761>,  <11.735552, 20.765196, 20.292850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.040919, 20.968124, 20.452761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164769, -0.445496, 0.879991,
		0.624535, -0.737671, -0.256509,
		0.763418, 0.507321, 0.399773,
		12.269945, 21.120321, 20.572693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.120793, 20.167105, 20.705568>,  <11.735552, 20.765196, 20.292850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.120793, 20.167105, 20.705568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.252561, 20.514961, 20.852650>,  <12.331621, 20.723675, 20.940899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.252561, 20.514961, 20.852650>,  <12.120793, 20.167105, 20.705568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.252561, 20.514961, 20.852650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010145, -0.392680, 0.919619,
		0.944130, -0.299209, -0.138178,
		0.329418, 0.869642, 0.367705,
		12.351386, 20.775854, 20.962961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.550700, 19.800024, 21.244837>,  <12.120793, 20.167105, 20.705568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.550700, 19.800024, 21.244837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.709077, 19.434177, 21.212072>,  <12.804103, 19.214670, 21.192413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.709077, 19.434177, 21.212072>,  <12.550700, 19.800024, 21.244837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.709077, 19.434177, 21.212072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148283, 0.151711, -0.977239,
		0.906224, 0.374785, 0.195691,
		0.395943, -0.914615, -0.081910,
		12.827860, 19.159794, 21.187500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.203421, 19.874376, 20.852858>,  <12.550700, 19.800024, 21.244837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.203421, 19.874376, 20.852858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.122058, 19.486191, 20.800980>,  <13.073240, 19.253279, 20.769854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.122058, 19.486191, 20.800980>,  <13.203421, 19.874376, 20.852858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.122058, 19.486191, 20.800980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124436, 0.105766, -0.986575,
		0.971154, -0.216816, 0.099247,
		-0.203408, -0.970466, -0.129695,
		13.061035, 19.195051, 20.762072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.770435, 19.539932, 20.467054>,  <13.203421, 19.874376, 20.852858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.770435, 19.539932, 20.467054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.459371, 19.293259, 20.418152>,  <13.272732, 19.145254, 20.388809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.459371, 19.293259, 20.418152>,  <13.770435, 19.539932, 20.467054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.459371, 19.293259, 20.418152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172343, -0.022097, -0.984789,
		0.604600, -0.786902, 0.123464,
		-0.777661, -0.616682, -0.122257,
		13.226072, 19.108253, 20.381475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.024350, 19.153534, 19.856054>,  <13.770435, 19.539932, 20.467054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.024350, 19.153534, 19.856054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.631167, 19.084644, 19.881779>,  <13.395258, 19.043310, 19.897213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.631167, 19.084644, 19.881779>,  <14.024350, 19.153534, 19.856054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.631167, 19.084644, 19.881779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060140, -0.029346, -0.997758,
		0.173727, -0.984620, 0.018489,
		-0.982956, -0.172226, 0.064313,
		13.336281, 19.032976, 19.901073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.971467, 18.526896, 19.533676>,  <14.024350, 19.153534, 19.856054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.971467, 18.526896, 19.533676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.623174, 18.722828, 19.516287>,  <13.414198, 18.840387, 19.505854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.623174, 18.722828, 19.516287>,  <13.971467, 18.526896, 19.533676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.623174, 18.722828, 19.516287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032381, -0.031103, -0.998992,
		-0.490688, -0.871263, 0.011221,
		-0.870733, 0.489830, -0.043474,
		13.361954, 18.869778, 19.503244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.434751, 18.133059, 19.088875>,  <13.971467, 18.526896, 19.533676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.434751, 18.133059, 19.088875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.287194, 18.504803, 19.094660>,  <13.198661, 18.727850, 19.098131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.287194, 18.504803, 19.094660>,  <13.434751, 18.133059, 19.088875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.287194, 18.504803, 19.094660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167783, -0.051277, -0.984490,
		-0.914204, -0.365596, 0.174846,
		-0.368891, 0.929360, 0.014463,
		13.176527, 18.783611, 19.098999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.876637, 18.074944, 18.488470>,  <13.434751, 18.133059, 19.088875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.876637, 18.074944, 18.488470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.999612, 18.448643, 18.560759>,  <13.073398, 18.672863, 18.604132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.999612, 18.448643, 18.560759>,  <12.876637, 18.074944, 18.488470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.999612, 18.448643, 18.560759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074920, 0.165565, -0.983349,
		-0.948614, 0.315860, -0.019093,
		0.307439, 0.934249, 0.180721,
		13.091844, 18.728918, 18.614975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.455270, 18.554356, 18.047720>,  <12.876637, 18.074944, 18.488470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.455270, 18.554356, 18.047720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.765811, 18.773430, 18.172503>,  <12.952136, 18.904875, 18.247372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.765811, 18.773430, 18.172503>,  <12.455270, 18.554356, 18.047720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.765811, 18.773430, 18.172503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047407, 0.544273, -0.837567,
		-0.628514, 0.635459, 0.448512,
		0.776353, 0.547685, 0.311958,
		12.998716, 18.937735, 18.266090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.305839, 19.218651, 17.831566>,  <12.455270, 18.554356, 18.047720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.305839, 19.218651, 17.831566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.702991, 19.219231, 17.879210>,  <12.941282, 19.219578, 17.907795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.702991, 19.219231, 17.879210>,  <12.305839, 19.218651, 17.831566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.702991, 19.219231, 17.879210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111482, 0.340939, -0.933452,
		-0.041961, 0.940085, 0.338350,
		0.992880, 0.001449, 0.119108,
		13.000854, 19.219666, 17.914942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.531361, 19.867512, 17.598576>,  <12.305839, 19.218651, 17.831566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.531361, 19.867512, 17.598576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.850011, 19.625881, 17.589838>,  <13.041201, 19.480902, 17.584595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.850011, 19.625881, 17.589838>,  <12.531361, 19.867512, 17.598576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.850011, 19.625881, 17.589838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199349, 0.296666, -0.933943,
		0.570656, 0.739648, 0.356754,
		0.796625, -0.604078, -0.021846,
		13.088999, 19.444658, 17.583284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.004068, 20.268791, 17.270805>,  <12.531361, 19.867512, 17.598576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.004068, 20.268791, 17.270805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.146718, 19.896332, 17.240395>,  <13.232308, 19.672855, 17.222149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.146718, 19.896332, 17.240395>,  <13.004068, 20.268791, 17.270805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.146718, 19.896332, 17.240395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234269, 0.167905, -0.957563,
		0.904399, 0.323680, 0.278018,
		0.356625, -0.931149, -0.076025,
		13.253706, 19.616987, 17.217587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.602612, 20.417492, 16.928391>,  <13.004068, 20.268791, 17.270805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.602612, 20.417492, 16.928391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.519217, 20.027866, 16.893223>,  <13.469181, 19.794090, 16.872122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.519217, 20.027866, 16.893223>,  <13.602612, 20.417492, 16.928391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.519217, 20.027866, 16.893223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341581, 0.011715, -0.939779,
		0.916437, -0.225961, 0.330280,
		-0.208484, -0.974066, -0.087920,
		13.456673, 19.735647, 16.866846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.218378, 19.988447, 16.564329>,  <13.602612, 20.417492, 16.928391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.218378, 19.988447, 16.564329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.883843, 19.776939, 16.506443>,  <13.683123, 19.650034, 16.471712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.883843, 19.776939, 16.506443>,  <14.218378, 19.988447, 16.564329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.883843, 19.776939, 16.506443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233294, -0.104403, -0.966785,
		0.496100, -0.842319, 0.210675,
		-0.836337, -0.528771, -0.144714,
		13.632942, 19.618309, 16.463028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.390133, 19.326376, 16.155178>,  <14.218378, 19.988447, 16.564329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.390133, 19.326376, 16.155178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.004222, 19.424759, 16.117842>,  <13.772676, 19.483788, 16.095440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.004222, 19.424759, 16.117842>,  <14.390133, 19.326376, 16.155178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.004222, 19.424759, 16.117842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036677, -0.225582, -0.973534,
		-0.260507, -0.942664, 0.208615,
		-0.964775, 0.245961, -0.093340,
		13.714789, 19.498547, 16.089840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.059847, 18.813622, 15.727942>,  <14.390133, 19.326376, 16.155178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.059847, 18.813622, 15.727942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.872186, 19.165001, 15.691660>,  <13.759589, 19.375828, 15.669890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.872186, 19.165001, 15.691660>,  <14.059847, 18.813622, 15.727942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.872186, 19.165001, 15.691660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118812, -0.038994, -0.992151,
		-0.875088, -0.476247, -0.086076,
		-0.469153, 0.878446, -0.090707,
		13.731440, 19.428535, 15.664448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.575630, 18.755028, 15.247232>,  <14.059847, 18.813622, 15.727942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.575630, 18.755028, 15.247232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.622767, 19.152214, 15.242695>,  <13.651050, 19.390526, 15.239972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.622767, 19.152214, 15.242695>,  <13.575630, 18.755028, 15.247232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.622767, 19.152214, 15.242695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008602, -0.012444, -0.999885,
		-0.992995, 0.117732, -0.010008,
		0.117843, 0.992967, -0.011344,
		13.658120, 19.450104, 15.239292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.144171, 19.049667, 14.734700>,  <13.575630, 18.755028, 15.247232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.144171, 19.049667, 14.734700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.405175, 19.349842, 14.776794>,  <13.561778, 19.529947, 14.802051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.405175, 19.349842, 14.776794>,  <13.144171, 19.049667, 14.734700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.405175, 19.349842, 14.776794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060946, 0.086453, -0.994390,
		-0.755324, 0.655265, 0.010676,
		0.652512, 0.750436, 0.105236,
		13.600928, 19.574972, 14.808365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.904097, 19.553305, 14.343945>,  <13.144171, 19.049667, 14.734700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.904097, 19.553305, 14.343945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.280948, 19.668716, 14.412235>,  <13.507058, 19.737963, 14.453210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.280948, 19.668716, 14.412235>,  <12.904097, 19.553305, 14.343945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.280948, 19.668716, 14.412235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134602, 0.140863, -0.980836,
		-0.307049, 0.947053, 0.093874,
		0.942127, 0.288530, 0.170727,
		13.563585, 19.755276, 14.463453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.040788, 20.202007, 13.946202>,  <12.904097, 19.553305, 14.343945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.040788, 20.202007, 13.946202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.400538, 20.037006, 14.004122>,  <13.616388, 19.938005, 14.038874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.400538, 20.037006, 14.004122>,  <13.040788, 20.202007, 13.946202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.400538, 20.037006, 14.004122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272684, 0.270427, -0.923316,
		0.341711, 0.869893, 0.355698,
		0.899376, -0.412500, 0.144798,
		13.670351, 19.913256, 14.047562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.454965, 20.698677, 13.602190>,  <13.040788, 20.202007, 13.946202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.454965, 20.698677, 13.602190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.690042, 20.380863, 13.663286>,  <13.831087, 20.190174, 13.699944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.690042, 20.380863, 13.663286>,  <13.454965, 20.698677, 13.602190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.690042, 20.380863, 13.663286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439758, 0.155220, -0.884602,
		0.679140, 0.587041, 0.440625,
		0.587692, -0.794537, 0.152740,
		13.866349, 20.142502, 13.709108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.116582, 20.940805, 13.536104>,  <13.454965, 20.698677, 13.602190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.116582, 20.940805, 13.536104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.156150, 20.551426, 13.453529>,  <14.179891, 20.317799, 13.403984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.156150, 20.551426, 13.453529>,  <14.116582, 20.940805, 13.536104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.156150, 20.551426, 13.453529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404916, 0.228879, -0.885244,
		0.908987, 0.003978, 0.416805,
		0.098919, -0.973447, -0.206438,
		14.185825, 20.259392, 13.391598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.821334, 20.812103, 13.332125>,  <14.116582, 20.940805, 13.536104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.821334, 20.812103, 13.332125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.625516, 20.498947, 13.178539>,  <14.508025, 20.311054, 13.086388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.625516, 20.498947, 13.178539>,  <14.821334, 20.812103, 13.332125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.625516, 20.498947, 13.178539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465906, 0.137367, -0.874106,
		0.737074, -0.606805, 0.297506,
		-0.489544, -0.782891, -0.383964,
		14.478653, 20.264080, 13.063350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.306092, 20.509445, 12.910536>,  <14.821334, 20.812103, 13.332125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.306092, 20.509445, 12.910536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.966395, 20.344948, 12.778073>,  <14.762577, 20.246248, 12.698596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.966395, 20.344948, 12.778073>,  <15.306092, 20.509445, 12.910536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.966395, 20.344948, 12.778073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349982, 0.031180, -0.936238,
		0.395350, -0.910991, 0.117449,
		-0.849242, -0.411246, -0.331157,
		14.711623, 20.221575, 12.678726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.470844, 19.840967, 12.426890>,  <15.306092, 20.509445, 12.910536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.470844, 19.840967, 12.426890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.106656, 19.996807, 12.371387>,  <14.888143, 20.090311, 12.338084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.106656, 19.996807, 12.371387>,  <15.470844, 19.840967, 12.426890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.106656, 19.996807, 12.371387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201444, 0.124743, -0.971524,
		-0.361197, -0.912497, -0.192057,
		-0.910471, 0.389600, -0.138760,
		14.833515, 20.113688, 12.329759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.315407, 19.709339, 11.680437>,  <15.470844, 19.840967, 12.426890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.315407, 19.709339, 11.680437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.041917, 19.990810, 11.757752>,  <14.877823, 20.159693, 11.804142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.041917, 19.990810, 11.757752>,  <15.315407, 19.709339, 11.680437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.041917, 19.990810, 11.757752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036258, 0.297305, -0.954094,
		-0.728840, -0.645328, -0.228788,
		-0.683724, 0.703677, 0.193289,
		14.836800, 20.201914, 11.815740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.801989, 19.787966, 11.139284>,  <15.315407, 19.709339, 11.680437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.801989, 19.787966, 11.139284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787084, 20.151505, 11.305468>,  <14.778141, 20.369629, 11.405178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787084, 20.151505, 11.305468>,  <14.801989, 19.787966, 11.139284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.787084, 20.151505, 11.305468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099966, 0.410273, -0.906467,
		-0.994293, -0.075309, 0.075566,
		-0.037262, 0.908848, 0.415459,
		14.775905, 20.424158, 11.430105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.230599, 20.062582, 10.913977>,  <14.801989, 19.787966, 11.139284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.230599, 20.062582, 10.913977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.447820, 20.382389, 11.016634>,  <14.578152, 20.574274, 11.078228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.447820, 20.382389, 11.016634>,  <14.230599, 20.062582, 10.913977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.447820, 20.382389, 11.016634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021034, 0.318493, -0.947692,
		-0.839437, 0.509245, 0.189775,
		0.543050, 0.799519, 0.256643,
		14.610735, 20.622246, 11.093627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.883058, 20.532442, 10.483584>,  <14.230599, 20.062582, 10.913977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.883058, 20.532442, 10.483584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.244002, 20.666981, 10.591374>,  <14.460569, 20.747704, 10.656048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.244002, 20.666981, 10.591374>,  <13.883058, 20.532442, 10.483584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.244002, 20.666981, 10.591374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200576, 0.225679, -0.953330,
		-0.381462, 0.914298, 0.136182,
		0.902362, 0.336344, 0.269474,
		14.514710, 20.767883, 10.672216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.966057, 21.117229, 10.056105>,  <13.883058, 20.532442, 10.483584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.966057, 21.117229, 10.056105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.333119, 21.006592, 10.170231>,  <14.553357, 20.940210, 10.238707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.333119, 21.006592, 10.170231>,  <13.966057, 21.117229, 10.056105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.333119, 21.006592, 10.170231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304378, 0.027663, -0.952150,
		0.255465, 0.960589, 0.109574,
		0.917655, -0.276593, 0.285316,
		14.608416, 20.923615, 10.255826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.386271, 21.547255, 9.767814>,  <13.966057, 21.117229, 10.056105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.386271, 21.547255, 9.767814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.645123, 21.256123, 9.858577>,  <14.800435, 21.081444, 9.913034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.645123, 21.256123, 9.858577>,  <14.386271, 21.547255, 9.767814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.645123, 21.256123, 9.858577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399364, 0.070101, -0.914108,
		0.649408, 0.682166, 0.336034,
		0.647130, -0.727829, 0.226908,
		14.839262, 21.037773, 9.926649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970768, 21.700081, 9.267394>,  <14.386271, 21.547255, 9.767814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.970768, 21.700081, 9.267394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.058734, 21.334713, 9.404392>,  <15.111513, 21.115492, 9.486591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.058734, 21.334713, 9.404392>,  <14.970768, 21.700081, 9.267394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.058734, 21.334713, 9.404392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344108, -0.255888, -0.903389,
		0.912813, 0.316524, 0.258041,
		0.219914, -0.913419, 0.342496,
		15.124708, 21.060688, 9.507141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621026, 21.545664, 9.101909>,  <14.970768, 21.700081, 9.267394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.621026, 21.545664, 9.101909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.427554, 21.199326, 9.153075>,  <15.311471, 20.991522, 9.183775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.427554, 21.199326, 9.153075>,  <15.621026, 21.545664, 9.101909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.427554, 21.199326, 9.153075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201767, -0.252518, -0.946322,
		0.851671, -0.431907, 0.296837,
		-0.483680, -0.865847, 0.127917,
		15.282450, 20.939571, 9.191450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.028072, 20.991852, 8.769423>,  <15.621026, 21.545664, 9.101909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.028072, 20.991852, 8.769423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.655282, 20.848083, 8.788351>,  <15.431608, 20.761822, 8.799707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.655282, 20.848083, 8.788351>,  <16.028072, 20.991852, 8.769423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.655282, 20.848083, 8.788351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062863, -0.288773, -0.955331,
		0.357031, -0.887370, 0.291724,
		-0.931975, -0.359421, 0.047319,
		15.375690, 20.740257, 8.802547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064863, 20.319553, 8.291921>,  <16.028072, 20.991852, 8.769423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.064863, 20.319553, 8.291921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.671567, 20.380230, 8.332374>,  <15.435589, 20.416636, 8.356646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.671567, 20.380230, 8.332374>,  <16.064863, 20.319553, 8.291921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.671567, 20.380230, 8.332374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144903, -0.313596, -0.938435,
		-0.110637, -0.937362, 0.330321,
		-0.983241, 0.151691, 0.101131,
		15.376595, 20.425737, 8.362713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.752902, 19.751684, 7.962065>,  <16.064863, 20.319553, 8.291921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.752902, 19.751684, 7.962065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.452958, 20.016323, 7.962520>,  <15.272992, 20.175106, 7.962792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.452958, 20.016323, 7.962520>,  <15.752902, 19.751684, 7.962065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.452958, 20.016323, 7.962520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347701, -0.392623, -0.851441,
		-0.562865, -0.638855, 0.524450,
		-0.749858, 0.661598, 0.001136,
		15.228001, 20.214802, 7.962861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.232660, 19.397736, 7.815405>,  <15.752902, 19.751684, 7.962065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.232660, 19.397736, 7.815405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.123019, 19.767605, 7.709694>,  <15.057235, 19.989527, 7.646267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.123019, 19.767605, 7.709694>,  <15.232660, 19.397736, 7.815405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.123019, 19.767605, 7.709694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428378, -0.363431, -0.827291,
		-0.861023, -0.113551, 0.495727,
		-0.274103, 0.924675, -0.264279,
		15.040789, 20.045008, 7.630410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.594676, 19.318819, 7.457878>,  <15.232660, 19.397736, 7.815405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.594676, 19.318819, 7.457878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.741363, 19.678253, 7.361491>,  <14.829374, 19.893913, 7.303659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.741363, 19.678253, 7.361491>,  <14.594676, 19.318819, 7.457878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.741363, 19.678253, 7.361491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258742, -0.150283, -0.954184,
		-0.893629, 0.412263, 0.177390,
		0.366716, 0.898585, -0.240967,
		14.851377, 19.947828, 7.289201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.134935, 19.591187, 6.870056>,  <14.594676, 19.318819, 7.457878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.134935, 19.591187, 6.870056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484998, 19.782845, 6.843159>,  <14.695035, 19.897839, 6.827020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484998, 19.782845, 6.843159>,  <14.134935, 19.591187, 6.870056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484998, 19.782845, 6.843159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058295, -0.033547, -0.997736,
		-0.480316, 0.877094, -0.001427,
		0.875156, 0.479145, -0.067243,
		14.747544, 19.926588, 6.822986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.043489, 19.957088, 6.297012>,  <14.134935, 19.591187, 6.870056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.043489, 19.957088, 6.297012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.437497, 19.918102, 6.353915>,  <14.673902, 19.894711, 6.388057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.437497, 19.918102, 6.353915>,  <14.043489, 19.957088, 6.297012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.437497, 19.918102, 6.353915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091806, -0.401927, -0.911058,
		0.145974, 0.910470, -0.386958,
		0.985019, -0.097466, 0.142258,
		14.733003, 19.888863, 6.396593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.357137, 20.275743, 5.600965>,  <14.043489, 19.957088, 6.297012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.357137, 20.275743, 5.600965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.635682, 20.041451, 5.766854>,  <14.802809, 19.900875, 5.866388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.635682, 20.041451, 5.766854>,  <14.357137, 20.275743, 5.600965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.635682, 20.041451, 5.766854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275575, -0.315339, -0.908086,
		0.662675, 0.746644, -0.058177,
		0.696362, -0.585734, 0.414723,
		14.844591, 19.865730, 5.891271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.112956, 20.288460, 5.261024>,  <14.357137, 20.275743, 5.600965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.112956, 20.288460, 5.261024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.032029, 19.930309, 5.419704>,  <14.983473, 19.715420, 5.514913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.032029, 19.930309, 5.419704>,  <15.112956, 20.288460, 5.261024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.032029, 19.930309, 5.419704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368834, -0.444917, -0.816094,
		0.907209, -0.018794, 0.420260,
		-0.202318, -0.895375, 0.396701,
		14.971334, 19.661697, 5.538715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.664334, 19.817078, 5.048596>,  <15.112956, 20.288460, 5.261024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.664334, 19.817078, 5.048596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.305524, 19.652950, 5.114300>,  <15.090238, 19.554474, 5.153722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.305524, 19.652950, 5.114300>,  <15.664334, 19.817078, 5.048596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.305524, 19.652950, 5.114300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027841, -0.423367, -0.905530,
		0.441098, -0.807712, 0.391195,
		-0.897027, -0.410319, 0.164259,
		15.036416, 19.529854, 5.163578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.762549, 19.165264, 4.748457>,  <15.664334, 19.817078, 5.048596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.762549, 19.165264, 4.748457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.369784, 19.234745, 4.778588>,  <15.134125, 19.276434, 4.796667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.369784, 19.234745, 4.778588>,  <15.762549, 19.165264, 4.748457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.369784, 19.234745, 4.778588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113637, -0.222466, -0.968295,
		-0.151435, -0.959342, 0.238181,
		-0.981913, 0.173700, 0.075328,
		15.075211, 19.286856, 4.801187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.419398, 18.635588, 4.386426>,  <15.762549, 19.165264, 4.748457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.419398, 18.635588, 4.386426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.176948, 18.953506, 4.398495>,  <15.031477, 19.144257, 4.405736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.176948, 18.953506, 4.398495>,  <15.419398, 18.635588, 4.386426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.176948, 18.953506, 4.398495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054066, -0.003325, -0.998532,
		-0.793528, -0.606869, 0.044987,
		-0.606128, 0.794795, 0.030173,
		14.995110, 19.191944, 4.407547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.839361, 18.489496, 4.044354>,  <15.419398, 18.635588, 4.386426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.839361, 18.489496, 4.044354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.933818, 18.877438, 4.020288>,  <14.990492, 19.110203, 4.005849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.933818, 18.877438, 4.020288>,  <14.839361, 18.489496, 4.044354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.933818, 18.877438, 4.020288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038928, -0.052422, -0.997866,
		-0.970939, 0.237979, 0.025376,
		0.236141, 0.969854, -0.060163,
		15.004661, 19.168394, 4.002240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301042, 18.938711, 3.793069>,  <14.839361, 18.489496, 4.044354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301042, 18.938711, 3.793069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.671056, 19.050934, 3.690622>,  <14.893064, 19.118267, 3.629153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.671056, 19.050934, 3.690622>,  <14.301042, 18.938711, 3.793069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.671056, 19.050934, 3.690622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186340, -0.252410, -0.949509,
		-0.331039, 0.926054, -0.181208,
		0.925035, 0.280558, -0.256119,
		14.948566, 19.135101, 3.613786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.267519, 19.355131, 3.233625>,  <14.301042, 18.938711, 3.793069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.267519, 19.355131, 3.233625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642015, 19.214622, 3.230478>,  <14.866712, 19.130318, 3.228590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642015, 19.214622, 3.230478>,  <14.267519, 19.355131, 3.233625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.642015, 19.214622, 3.230478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043654, -0.094074, -0.994608,
		0.348640, 0.931535, -0.103411,
		0.936240, -0.351274, -0.007867,
		14.922887, 19.109240, 3.228118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.774820, 19.727144, 2.820915>,  <14.267519, 19.355131, 3.233625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.774820, 19.727144, 2.820915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.833003, 19.331554, 2.831999>,  <14.867912, 19.094200, 2.838650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.833003, 19.331554, 2.831999>,  <14.774820, 19.727144, 2.820915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.833003, 19.331554, 2.831999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058282, -0.019396, -0.998112,
		0.987647, 0.146797, 0.054818,
		0.145456, -0.988977, 0.027712,
		14.876640, 19.034861, 2.840313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.409800, 19.521585, 2.307935>,  <14.774820, 19.727144, 2.820915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.409800, 19.521585, 2.307935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.174249, 19.206779, 2.381510>,  <15.032918, 19.017897, 2.425655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.174249, 19.206779, 2.381510>,  <15.409800, 19.521585, 2.307935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.174249, 19.206779, 2.381510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235562, -0.050572, -0.970543,
		0.773132, -0.614859, -0.155610,
		-0.588877, -0.787014, 0.183936,
		14.997585, 18.970675, 2.436691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.670659, 18.845787, 2.015164>,  <15.409800, 19.521585, 2.307935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.670659, 18.845787, 2.015164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.274854, 18.896782, 2.042318>,  <15.037371, 18.927378, 2.058610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.274854, 18.896782, 2.042318>,  <15.670659, 18.845787, 2.015164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.274854, 18.896782, 2.042318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062150, 0.048449, -0.996890,
		-0.130379, -0.990656, -0.040017,
		-0.989514, 0.127486, 0.067886,
		14.978000, 18.935028, 2.062684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.327602, 18.304428, 1.693998>,  <15.670659, 18.845787, 2.015164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.327602, 18.304428, 1.693998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.140832, 18.658142, 1.692083>,  <15.028769, 18.870371, 1.690934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.140832, 18.658142, 1.692083>,  <15.327602, 18.304428, 1.693998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.140832, 18.658142, 1.692083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119575, -0.068501, -0.990460,
		-0.876174, -0.461899, 0.137723,
		-0.466927, 0.884283, -0.004787,
		15.000754, 18.923428, 1.690647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.448477, 18.873190, 1.155589>,  <15.327602, 18.304428, 1.693998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.448477, 18.873190, 1.155589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.349521, 18.690441, 0.813812>,  <15.290147, 18.580791, 0.608747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.349521, 18.690441, 0.813812>,  <15.448477, 18.873190, 1.155589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.349521, 18.690441, 0.813812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909147, 0.414386, 0.041656,
		0.335037, 0.787117, -0.517877,
		-0.247390, -0.456870, -0.854440,
		15.275304, 18.553381, 0.557480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.000400, 19.347233, 0.639731>,  <15.448477, 18.873190, 1.155589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.000400, 19.347233, 0.639731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.935512, 18.968594, 0.528277>,  <14.896579, 18.741409, 0.461404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.935512, 18.968594, 0.528277>,  <15.000400, 19.347233, 0.639731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.935512, 18.968594, 0.528277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926680, 0.243167, -0.286590,
		0.339040, 0.211715, -0.916640,
		-0.162221, -0.946598, -0.278635,
		14.886846, 18.684614, 0.444686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.591772, 19.318628, -0.056901>,  <15.000400, 19.347233, 0.639731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.591772, 19.318628, -0.056901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.519874, 19.001423, 0.175933>,  <14.476735, 18.811100, 0.315633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.519874, 19.001423, 0.175933>,  <14.591772, 19.318628, -0.056901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.519874, 19.001423, 0.175933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983694, 0.148570, -0.101353,
		-0.006106, -0.590811, -0.806787,
		-0.179745, -0.793012, 0.582085,
		14.465950, 18.763519, 0.350558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060374, 18.797510, -0.343490>,  <14.591772, 19.318628, -0.056901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060374, 18.797510, -0.343490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.069737, 18.822063, 0.055646>,  <14.075356, 18.836796, 0.295128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.069737, 18.822063, 0.055646>,  <14.060374, 18.797510, -0.343490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.069737, 18.822063, 0.055646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999601, 0.017192, 0.022391,
		-0.015781, -0.997967, 0.061752,
		0.023407, 0.061374, 0.997841,
		14.076759, 18.840479, 0.354998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.859583, 18.224585, 0.068202>,  <14.060374, 18.797510, -0.343490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.859583, 18.224585, 0.068202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.780110, 18.558140, 0.274175>,  <13.732427, 18.758272, 0.397760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.780110, 18.558140, 0.274175>,  <13.859583, 18.224585, 0.068202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.780110, 18.558140, 0.274175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967216, -0.082035, -0.240342,
		-0.158175, -0.545804, 0.822848,
		-0.198682, 0.833887, 0.514934,
		13.720506, 18.808306, 0.428656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.379873, 18.052149, 0.548852>,  <13.859583, 18.224585, 0.068202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.379873, 18.052149, 0.548852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.353940, 18.437672, 0.445411>,  <13.338380, 18.668985, 0.383346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.353940, 18.437672, 0.445411>,  <13.379873, 18.052149, 0.548852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.353940, 18.437672, 0.445411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995935, -0.078735, -0.043759,
		-0.062536, 0.254714, 0.964992,
		-0.064833, 0.963806, -0.258602,
		13.334490, 18.726814, 0.367830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850941, 18.438227, 1.055325>,  <13.379873, 18.052149, 0.548852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850941, 18.438227, 1.055325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.887563, 18.621830, 0.701844>,  <12.909536, 18.731991, 0.489755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.887563, 18.621830, 0.701844>,  <12.850941, 18.438227, 1.055325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.887563, 18.621830, 0.701844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979172, -0.119999, -0.163776,
		-0.181218, 0.880291, 0.438460,
		0.091556, 0.459007, -0.883702,
		12.915030, 18.759533, 0.436733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.263041, 18.883965, 1.032893>,  <12.850941, 18.438227, 1.055325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.263041, 18.883965, 1.032893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.396199, 18.777130, 0.671154>,  <12.476094, 18.713030, 0.454111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.396199, 18.777130, 0.671154>,  <12.263041, 18.883965, 1.032893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.396199, 18.777130, 0.671154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942892, -0.106049, -0.315766,
		-0.011568, 0.957820, -0.287136,
		0.332897, -0.267085, -0.904348,
		12.496069, 18.697004, 0.399850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.937379, 18.710516, 1.625494>,  <12.263041, 18.883965, 1.032893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.937379, 18.710516, 1.625494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.146546, 19.050785, 1.647089>,  <12.272047, 19.254946, 1.660046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.146546, 19.050785, 1.647089>,  <11.937379, 18.710516, 1.625494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.146546, 19.050785, 1.647089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073670, 0.108203, -0.991395,
		-0.849193, 0.514442, 0.119250,
		0.522918, 0.850671, 0.053987,
		12.303422, 19.305986, 1.663285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.616761, 19.300262, 1.311784>,  <11.937379, 18.710516, 1.625494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.616761, 19.300262, 1.311784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.999030, 19.416870, 1.295273>,  <12.228392, 19.486835, 1.285367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.999030, 19.416870, 1.295273>,  <11.616761, 19.300262, 1.311784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.999030, 19.416870, 1.295273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100971, 0.192812, -0.976027,
		-0.276574, 0.936931, 0.213701,
		0.955673, 0.291521, -0.041276,
		12.285732, 19.504326, 1.282890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.726250, 19.925550, 1.065889>,  <11.616761, 19.300262, 1.311784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.726250, 19.925550, 1.065889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.044669, 19.698051, 0.983102>,  <12.235721, 19.561552, 0.933430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.044669, 19.698051, 0.983102>,  <11.726250, 19.925550, 1.065889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.044669, 19.698051, 0.983102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001216, 0.343463, -0.939165,
		0.605232, 0.747370, 0.274105,
		0.796049, -0.568746, -0.206966,
		12.283484, 19.527428, 0.921013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.329675, 20.313154, 0.744756>,  <11.726250, 19.925550, 1.065889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.329675, 20.313154, 0.744756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.298518, 19.941433, 0.600351>,  <12.279824, 19.718401, 0.513708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.298518, 19.941433, 0.600351>,  <12.329675, 20.313154, 0.744756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.298518, 19.941433, 0.600351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071358, 0.366380, -0.927725,
		0.994405, -0.046500, -0.094851,
		-0.077890, -0.929302, -0.361012,
		12.275151, 19.662642, 0.492047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.910591, 20.223848, 0.277432>,  <12.329675, 20.313154, 0.744756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.910591, 20.223848, 0.277432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.580356, 20.009678, 0.206187>,  <12.382215, 19.881176, 0.163440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.580356, 20.009678, 0.206187>,  <12.910591, 20.223848, 0.277432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.580356, 20.009678, 0.206187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127387, 0.484353, -0.865549,
		0.549708, -0.691896, -0.468082,
		-0.825587, -0.535427, -0.178114,
		12.332679, 19.849051, 0.152753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.806858, 20.073906, -0.352824>,  <12.910591, 20.223848, 0.277432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.806858, 20.073906, -0.352824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.732450, 19.695488, -0.246697>,  <12.687804, 19.468437, -0.183020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.732450, 19.695488, -0.246697>,  <12.806858, 20.073906, -0.352824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.732450, 19.695488, -0.246697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570933, -0.323843, -0.754428,
		0.799645, 0.011139, 0.600370,
		-0.186022, -0.946045, 0.265319,
		12.676643, 19.411674, -0.167101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.388099, 19.672010, -0.515060>,  <12.806858, 20.073906, -0.352824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.388099, 19.672010, -0.515060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.122838, 19.379272, -0.452278>,  <12.963681, 19.203630, -0.414608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.122838, 19.379272, -0.452278>,  <13.388099, 19.672010, -0.515060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.122838, 19.379272, -0.452278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384531, -0.513027, -0.767424,
		0.642157, -0.448563, 0.621631,
		-0.663151, -0.731844, 0.156957,
		12.923893, 19.159719, -0.405191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.647606, 19.360434, -1.169327>,  <13.388099, 19.672010, -0.515060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.647606, 19.360434, -1.169327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.446750, 19.602055, -1.416868>,  <13.326236, 19.747026, -1.565393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.446750, 19.602055, -1.416868>,  <13.647606, 19.360434, -1.169327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.446750, 19.602055, -1.416868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862306, 0.295573, -0.411176,
		-0.065455, -0.740108, -0.669295,
		-0.502140, 0.604051, -0.618852,
		13.296107, 19.783270, -1.602524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.720905, 19.287058, -1.911286>,  <13.647606, 19.360434, -1.169327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.720905, 19.287058, -1.911286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.651975, 19.679962, -1.881714>,  <13.610616, 19.915705, -1.863971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.651975, 19.679962, -1.881714>,  <13.720905, 19.287058, -1.911286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.651975, 19.679962, -1.881714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897499, 0.187500, -0.399174,
		-0.405955, -0.002436, -0.913890,
		-0.172327, 0.982262, 0.073930,
		13.600277, 19.974640, -1.859535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.937918, 19.609047, -2.616464>,  <13.720905, 19.287058, -1.911286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.937918, 19.609047, -2.616464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210715, 19.493217, -2.885099>,  <14.374393, 19.423719, -3.046281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210715, 19.493217, -2.885099>,  <13.937918, 19.609047, -2.616464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.210715, 19.493217, -2.885099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109200, 0.867665, -0.485008,
		0.723159, 0.404110, 0.560121,
		0.681994, -0.289573, -0.671589,
		14.415314, 19.406345, -3.086576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.508173, 20.083174, -2.677504>,  <13.937918, 19.609047, -2.616464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.508173, 20.083174, -2.677504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.430291, 19.904018, -3.026557>,  <14.383562, 19.796526, -3.235989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.430291, 19.904018, -3.026557>,  <14.508173, 20.083174, -2.677504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.430291, 19.904018, -3.026557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178914, 0.890951, -0.417368,
		0.964406, 0.074863, -0.253605,
		-0.194704, -0.447886, -0.872633,
		14.371880, 19.769653, -3.288347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.875694, 20.380241, -3.155874>,  <14.508173, 20.083174, -2.677504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.875694, 20.380241, -3.155874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.523206, 20.223560, -3.261719>,  <14.311712, 20.129553, -3.325226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.523206, 20.223560, -3.261719>,  <14.875694, 20.380241, -3.155874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.523206, 20.223560, -3.261719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370552, 0.919977, -0.127798,
		0.293497, -0.014565, -0.955849,
		-0.881221, -0.391701, -0.264613,
		14.258840, 20.106050, -3.341103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.591774, 20.574686, -3.810546>,  <14.875694, 20.380241, -3.155874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.591774, 20.574686, -3.810546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.258889, 20.531525, -3.593003>,  <14.059158, 20.505629, -3.462477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.258889, 20.531525, -3.593003>,  <14.591774, 20.574686, -3.810546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.258889, 20.531525, -3.593003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388854, 0.812798, -0.433765,
		-0.395243, -0.572466, -0.718377,
		-0.832211, -0.107901, 0.543858,
		14.009226, 20.499155, -3.429846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.708536, 20.180851, -4.501566>,  <14.591774, 20.574686, -3.810546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.708536, 20.180851, -4.501566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.676192, 20.048203, -4.877542>,  <14.656786, 19.968613, -5.103127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.676192, 20.048203, -4.877542>,  <14.708536, 20.180851, -4.501566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.676192, 20.048203, -4.877542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966100, 0.258044, -0.007932,
		0.245177, 0.907435, -0.341247,
		-0.080859, -0.331624, -0.939940,
		14.651935, 19.948715, -5.159524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.098910, 19.576990, -4.484368>,  <14.708536, 20.180851, -4.501566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.098910, 19.576990, -4.484368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806947, 19.574623, -4.210960>,  <13.631769, 19.573202, -4.046916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806947, 19.574623, -4.210960>,  <14.098910, 19.576990, -4.484368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806947, 19.574623, -4.210960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486747, -0.697560, -0.525821,
		0.479908, -0.716502, 0.506273,
		-0.729908, -0.005918, 0.683520,
		13.587975, 19.572847, -4.005904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.405323, 19.910713, -4.422520>,  <14.098910, 19.576990, -4.484368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.405323, 19.910713, -4.422520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.646356, 19.948643, -4.739482>,  <13.790976, 19.971401, -4.929659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.646356, 19.948643, -4.739482>,  <13.405323, 19.910713, -4.422520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.646356, 19.948643, -4.739482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209871, -0.939139, -0.271979,
		-0.769967, 0.330192, -0.546007,
		0.602582, 0.094824, -0.792404,
		13.827130, 19.977091, -4.977203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.015764, 17.341791, 15.489126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.288979, 17.582237, 15.655077>,  <18.452908, 17.726505, 15.754647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.288979, 17.582237, 15.655077>,  <18.015764, 17.341791, 15.489126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.288979, 17.582237, 15.655077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319071, 0.265383, -0.909816,
		-0.657005, 0.753813, -0.010532,
		0.683036, 0.601114, 0.414878,
		18.493889, 17.762571, 15.779540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.942116, 17.988306, 15.126732>,  <18.015764, 17.341791, 15.489126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.942116, 17.988306, 15.126732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.314018, 17.962639, 15.271749>,  <18.537159, 17.947239, 15.358760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.314018, 17.962639, 15.271749>,  <17.942116, 17.988306, 15.126732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.314018, 17.962639, 15.271749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362497, 0.331872, -0.870894,
		-0.064435, 0.941140, 0.331820,
		0.929755, -0.064167, 0.362545,
		18.592945, 17.943388, 15.380513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.263155, 18.659540, 14.955007>,  <17.942116, 17.988306, 15.126732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.263155, 18.659540, 14.955007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.582027, 18.426094, 15.016846>,  <18.773350, 18.286026, 15.053949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.582027, 18.426094, 15.016846>,  <18.263155, 18.659540, 14.955007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.582027, 18.426094, 15.016846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465870, 0.431750, -0.772372,
		0.384019, 0.687741, 0.616070,
		0.797179, -0.583613, 0.154597,
		18.821180, 18.251011, 15.063225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.800406, 19.138931, 14.790701>,  <18.263155, 18.659540, 14.955007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.800406, 19.138931, 14.790701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.941101, 18.766273, 14.754211>,  <19.025518, 18.542679, 14.732318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.941101, 18.766273, 14.754211>,  <18.800406, 19.138931, 14.790701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.941101, 18.766273, 14.754211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651524, 0.313619, -0.690767,
		0.672157, 0.183535, 0.717300,
		0.351739, -0.931643, -0.091223,
		19.046623, 18.486780, 14.726845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.572727, 19.212172, 14.663654>,  <18.800406, 19.138931, 14.790701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.572727, 19.212172, 14.663654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.445938, 18.873592, 14.492516>,  <19.369865, 18.670444, 14.389832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.445938, 18.873592, 14.492516>,  <19.572727, 19.212172, 14.663654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.445938, 18.873592, 14.492516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431006, 0.273284, -0.859971,
		0.844846, -0.456990, 0.278201,
		-0.316970, -0.846449, -0.427848,
		19.350847, 18.619658, 14.364161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.103092, 19.112158, 14.227907>,  <19.572727, 19.212172, 14.663654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.103092, 19.112158, 14.227907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.808632, 18.875965, 14.095594>,  <19.631956, 18.734249, 14.016207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.808632, 18.875965, 14.095594>,  <20.103092, 19.112158, 14.227907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.808632, 18.875965, 14.095594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226884, 0.245158, -0.942561,
		0.637657, -0.768915, -0.046502,
		-0.736150, -0.590480, -0.330782,
		19.587788, 18.698822, 13.996360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.374113, 18.864557, 13.641515>,  <20.103092, 19.112158, 14.227907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.374113, 18.864557, 13.641515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.986366, 18.781254, 13.589422>,  <19.753719, 18.731272, 13.558167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.986366, 18.781254, 13.589422>,  <20.374113, 18.864557, 13.641515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.986366, 18.781254, 13.589422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074256, 0.256922, -0.963575,
		0.234123, -0.943728, -0.233588,
		-0.969367, -0.208250, -0.130229,
		19.695557, 18.718777, 13.550353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.321449, 18.558426, 12.999529>,  <20.374113, 18.864557, 13.641515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.321449, 18.558426, 12.999529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.958256, 18.706734, 13.077599>,  <19.740339, 18.795719, 13.124440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.958256, 18.706734, 13.077599>,  <20.321449, 18.558426, 12.999529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.958256, 18.706734, 13.077599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070809, 0.323327, -0.943634,
		-0.412976, -0.870626, -0.267322,
		-0.907985, 0.370769, 0.195175,
		19.685860, 18.817965, 13.136151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.879108, 18.291693, 12.466832>,  <20.321449, 18.558426, 12.999529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.879108, 18.291693, 12.466832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.705597, 18.622959, 12.608805>,  <19.601490, 18.821718, 12.693988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.705597, 18.622959, 12.608805>,  <19.879108, 18.291693, 12.466832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.705597, 18.622959, 12.608805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138770, 0.327815, -0.934495,
		-0.890268, -0.454619, -0.027275,
		-0.433781, 0.828166, 0.354931,
		19.575462, 18.871408, 12.715284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.436258, 18.378969, 11.982822>,  <19.879108, 18.291693, 12.466832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.436258, 18.378969, 11.982822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.394455, 18.738483, 12.153124>,  <19.369373, 18.954191, 12.255304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.394455, 18.738483, 12.153124>,  <19.436258, 18.378969, 11.982822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.394455, 18.738483, 12.153124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094707, 0.417159, -0.903886,
		-0.990005, -0.134783, 0.041526,
		-0.104506, 0.898784, 0.425754,
		19.363104, 19.008118, 12.280850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.765345, 18.676134, 11.768785>,  <19.436258, 18.378969, 11.982822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.765345, 18.676134, 11.768785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.035343, 18.956814, 11.859993>,  <19.197342, 19.125221, 11.914718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.035343, 18.956814, 11.859993>,  <18.765345, 18.676134, 11.768785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.035343, 18.956814, 11.859993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004808, 0.304856, -0.952386,
		-0.737804, 0.643955, 0.202404,
		0.674998, 0.701701, 0.228020,
		19.237843, 19.167324, 11.928399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.546877, 19.419500, 11.537753>,  <18.765345, 18.676134, 11.768785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.546877, 19.419500, 11.537753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.928009, 19.534946, 11.575306>,  <19.156689, 19.604214, 11.597837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.928009, 19.534946, 11.575306>,  <18.546877, 19.419500, 11.537753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.928009, 19.534946, 11.575306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014831, 0.353244, -0.935413,
		-0.303136, 0.889899, 0.340863,
		0.952832, 0.288613, 0.093883,
		19.213858, 19.621531, 11.603471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.567017, 20.235695, 11.472873>,  <18.546877, 19.419500, 11.537753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.567017, 20.235695, 11.472873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.912777, 20.054798, 11.384969>,  <19.120234, 19.946260, 11.332227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.912777, 20.054798, 11.384969>,  <18.567017, 20.235695, 11.472873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.912777, 20.054798, 11.384969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120613, 0.610802, -0.782543,
		0.488126, 0.649923, 0.582522,
		0.864399, -0.452240, -0.219759,
		19.172096, 19.919127, 11.319041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.000263, 20.762114, 11.236176>,  <18.567017, 20.235695, 11.472873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.000263, 20.762114, 11.236176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.182011, 20.428215, 11.111760>,  <19.291059, 20.227875, 11.037111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.182011, 20.428215, 11.111760>,  <19.000263, 20.762114, 11.236176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.182011, 20.428215, 11.111760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248651, 0.454130, -0.855534,
		0.855406, 0.311389, 0.413904,
		0.454370, -0.834747, -0.311038,
		19.318321, 20.177792, 11.018449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.525669, 21.047638, 10.861185>,  <19.000263, 20.762114, 11.236176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.525669, 21.047638, 10.861185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.466743, 20.665730, 10.757873>,  <19.431387, 20.436584, 10.695886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.466743, 20.665730, 10.757873>,  <19.525669, 21.047638, 10.861185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.466743, 20.665730, 10.757873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057156, 0.268911, -0.961468,
		0.987437, -0.126878, -0.094186,
		-0.147316, -0.954772, -0.258280,
		19.422548, 20.379297, 10.680388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.924665, 20.949011, 10.157640>,  <19.525669, 21.047638, 10.861185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.924665, 20.949011, 10.157640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.669872, 20.642792, 10.193834>,  <19.516996, 20.459061, 10.215550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.669872, 20.642792, 10.193834>,  <19.924665, 20.949011, 10.157640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.669872, 20.642792, 10.193834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280724, 0.121042, -0.952125,
		0.717946, -0.631889, -0.292009,
		-0.636983, -0.765548, 0.090484,
		19.478777, 20.413128, 10.220980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.073196, 20.543640, 9.648477>,  <19.924665, 20.949011, 10.157640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.073196, 20.543640, 9.648477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.700665, 20.433285, 9.743561>,  <19.477144, 20.367071, 9.800611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.700665, 20.433285, 9.743561>,  <20.073196, 20.543640, 9.648477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.700665, 20.433285, 9.743561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206217, -0.138473, -0.968659,
		0.300160, -0.951162, 0.072070,
		-0.931332, -0.275891, 0.237710,
		19.421265, 20.350517, 9.814874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.935129, 20.010984, 9.174819>,  <20.073196, 20.543640, 9.648477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.935129, 20.010984, 9.174819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.572540, 20.135502, 9.288941>,  <19.354986, 20.210213, 9.357415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.572540, 20.135502, 9.288941>,  <19.935129, 20.010984, 9.174819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.572540, 20.135502, 9.288941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327256, -0.090924, -0.940551,
		-0.266848, -0.945953, 0.184294,
		-0.906474, 0.311296, 0.285306,
		19.300598, 20.228889, 9.374534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.397684, 19.481045, 8.909560>,  <19.935129, 20.010984, 9.174819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.397684, 19.481045, 8.909560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.239925, 19.840103, 8.988234>,  <19.145269, 20.055538, 9.035438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.239925, 19.840103, 8.988234>,  <19.397684, 19.481045, 8.909560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.239925, 19.840103, 8.988234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459162, -0.007100, -0.888324,
		-0.796003, -0.440663, 0.414964,
		-0.394398, 0.897644, 0.196685,
		19.121607, 20.109396, 9.047239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.758444, 19.492960, 8.644867>,  <19.397684, 19.481045, 8.909560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.758444, 19.492960, 8.644867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.796062, 19.889412, 8.682429>,  <18.818634, 20.127283, 8.704967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.796062, 19.889412, 8.682429>,  <18.758444, 19.492960, 8.644867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.796062, 19.889412, 8.682429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366809, 0.122183, -0.922238,
		-0.925531, 0.052286, 0.375046,
		0.094045, 0.991129, 0.093905,
		18.824276, 20.186750, 8.710601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.199518, 19.725399, 8.345193>,  <18.758444, 19.492960, 8.644867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.199518, 19.725399, 8.345193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.431828, 20.050739, 8.358861>,  <18.571213, 20.245943, 8.367062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.431828, 20.050739, 8.358861>,  <18.199518, 19.725399, 8.345193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.431828, 20.050739, 8.358861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154743, 0.151509, -0.976268,
		-0.799224, 0.561702, 0.213852,
		0.580772, 0.813349, 0.034170,
		18.606060, 20.294744, 8.369112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.771723, 20.321363, 8.050678>,  <18.199518, 19.725399, 8.345193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.771723, 20.321363, 8.050678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.165802, 20.365715, 7.998392>,  <18.402250, 20.392326, 7.967020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.165802, 20.365715, 7.998392>,  <17.771723, 20.321363, 8.050678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.165802, 20.365715, 7.998392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146532, 0.149138, -0.977899,
		-0.088932, 0.982581, 0.163178,
		0.985200, 0.110877, -0.130716,
		18.461363, 20.398977, 7.959177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.554565, 19.597610, 7.729522>,  <17.771723, 20.321363, 8.050678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.554565, 19.597610, 7.729522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.360561, 19.275196, 7.593831>,  <17.244160, 19.081747, 7.512416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.360561, 19.275196, 7.593831>,  <17.554565, 19.597610, 7.729522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.360561, 19.275196, 7.593831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259320, -0.237901, 0.936032,
		-0.835177, 0.541952, -0.093637,
		-0.485008, -0.806035, -0.339228,
		17.215059, 19.033386, 7.492063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071917, 19.495070, 8.236961>,  <17.554565, 19.597610, 7.729522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.071917, 19.495070, 8.236961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.082062, 19.144989, 8.043725>,  <17.088148, 18.934940, 7.927783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.082062, 19.144989, 8.043725>,  <17.071917, 19.495070, 8.236961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.082062, 19.144989, 8.043725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137902, -0.481689, 0.865424,
		-0.990121, 0.044671, -0.132909,
		0.025361, -0.875203, -0.483091,
		17.089670, 18.882427, 7.898798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.553154, 19.149817, 8.526553>,  <17.071917, 19.495070, 8.236961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.553154, 19.149817, 8.526553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.786732, 18.867672, 8.365818>,  <16.926878, 18.698385, 8.269377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.786732, 18.867672, 8.365818>,  <16.553154, 19.149817, 8.526553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.786732, 18.867672, 8.365818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148112, -0.579264, 0.801571,
		-0.798169, -0.408554, -0.442730,
		0.583942, -0.705363, -0.401839,
		16.961914, 18.656063, 8.245267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217493, 18.507534, 8.726443>,  <16.553154, 19.149817, 8.526553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.217493, 18.507534, 8.726443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.592022, 18.416668, 8.619340>,  <16.816740, 18.362148, 8.555078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.592022, 18.416668, 8.619340>,  <16.217493, 18.507534, 8.726443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.592022, 18.416668, 8.619340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131298, -0.480727, 0.866985,
		-0.325666, -0.846934, -0.420290,
		0.936324, -0.227164, -0.267758,
		16.872919, 18.348518, 8.539013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.202356, 17.775904, 8.797292>,  <16.217493, 18.507534, 8.726443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.202356, 17.775904, 8.797292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.574547, 17.921738, 8.811666>,  <16.797861, 18.009237, 8.820290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.574547, 17.921738, 8.811666>,  <16.202356, 17.775904, 8.797292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.574547, 17.921738, 8.811666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145088, -0.456788, 0.877664,
		0.336398, -0.811432, -0.477928,
		0.930476, 0.364586, 0.035934,
		16.853689, 18.031113, 8.822446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.640692, 17.202971, 9.031343>,  <16.202356, 17.775904, 8.797292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.640692, 17.202971, 9.031343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.858746, 17.527996, 9.113872>,  <16.989578, 17.723011, 9.163389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.858746, 17.527996, 9.113872>,  <16.640692, 17.202971, 9.031343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.858746, 17.527996, 9.113872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205508, -0.368117, 0.906783,
		0.812771, -0.451917, -0.367661,
		0.545133, 0.812564, 0.206323,
		17.022285, 17.771765, 9.175768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.135906, 16.932775, 9.428937>,  <16.640692, 17.202971, 9.031343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.135906, 16.932775, 9.428937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.200363, 17.321392, 9.498380>,  <17.239037, 17.554562, 9.540046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.200363, 17.321392, 9.498380>,  <17.135906, 16.932775, 9.428937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.200363, 17.321392, 9.498380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214893, -0.206225, 0.954616,
		0.963252, -0.116521, -0.242009,
		0.161141, 0.971542, 0.173607,
		17.248705, 17.612854, 9.550462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.779697, 17.024282, 9.786004>,  <17.135906, 16.932775, 9.428937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.779697, 17.024282, 9.786004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.513775, 17.307991, 9.879782>,  <17.354221, 17.478216, 9.936049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.513775, 17.307991, 9.879782>,  <17.779697, 17.024282, 9.786004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.513775, 17.307991, 9.879782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090560, -0.235005, 0.967766,
		0.741504, 0.664611, 0.092002,
		-0.664808, 0.709271, 0.234444,
		17.314333, 17.520773, 9.950115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056005, 17.279802, 10.434514>,  <17.779697, 17.024282, 9.786004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.056005, 17.279802, 10.434514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.682613, 17.423252, 10.435600>,  <17.458578, 17.509321, 10.436253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.682613, 17.423252, 10.435600>,  <18.056005, 17.279802, 10.434514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.682613, 17.423252, 10.435600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006605, 0.009620, 0.999932,
		0.358573, 0.933433, -0.011348,
		-0.933478, 0.358624, 0.002716,
		17.402571, 17.530840, 10.436415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.081078, 17.607529, 11.085327>,  <18.056005, 17.279802, 10.434514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.081078, 17.607529, 11.085327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.697220, 17.588902, 10.974392>,  <17.466906, 17.577724, 10.907831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.697220, 17.588902, 10.974392>,  <18.081078, 17.607529, 11.085327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.697220, 17.588902, 10.974392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281041, 0.194056, 0.939871,
		0.010050, 0.979884, -0.199312,
		-0.959643, -0.046569, -0.277338,
		17.409327, 17.574930, 10.891191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.820129, 18.150633, 11.428707>,  <18.081078, 17.607529, 11.085327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.820129, 18.150633, 11.428707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.509453, 17.911705, 11.348745>,  <17.323048, 17.768349, 11.300768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.509453, 17.911705, 11.348745>,  <17.820129, 18.150633, 11.428707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.509453, 17.911705, 11.348745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361790, 0.163255, 0.917854,
		-0.515615, 0.785213, -0.342902,
		-0.776691, -0.597317, -0.199906,
		17.276445, 17.732510, 11.288774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.122631, 18.524136, 11.508671>,  <17.820129, 18.150633, 11.428707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.122631, 18.524136, 11.508671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.085880, 18.130905, 11.572064>,  <17.063829, 17.894966, 11.610101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.085880, 18.130905, 11.572064>,  <17.122631, 18.524136, 11.508671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.085880, 18.130905, 11.572064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380430, 0.181737, 0.906777,
		-0.920235, 0.023019, -0.390689,
		-0.091875, -0.983078, 0.158484,
		17.058317, 17.835981, 11.619610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.604116, 18.435905, 11.980536>,  <17.122631, 18.524136, 11.508671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.604116, 18.435905, 11.980536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.725727, 18.055061, 11.993511>,  <16.798695, 17.826555, 12.001296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.725727, 18.055061, 11.993511>,  <16.604116, 18.435905, 11.980536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.725727, 18.055061, 11.993511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371273, -0.087062, 0.924433,
		-0.877339, -0.293096, -0.379963,
		0.304028, -0.952111, 0.032436,
		16.816935, 17.769428, 12.003242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.079277, 18.156000, 12.257178>,  <16.604116, 18.435905, 11.980536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.079277, 18.156000, 12.257178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.394405, 17.919781, 12.327143>,  <16.583483, 17.778049, 12.369122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.394405, 17.919781, 12.327143>,  <16.079277, 18.156000, 12.257178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.394405, 17.919781, 12.327143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397677, -0.270879, 0.876628,
		-0.470311, -0.760183, -0.448251,
		0.787820, -0.590547, 0.174910,
		16.630751, 17.742617, 12.379616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.768284, 17.587351, 12.657939>,  <16.079277, 18.156000, 12.257178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.768284, 17.587351, 12.657939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.153591, 17.481747, 12.677596>,  <16.384775, 17.418385, 12.689390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.153591, 17.481747, 12.677596>,  <15.768284, 17.587351, 12.657939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.153591, 17.481747, 12.677596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174091, -0.474588, 0.862820,
		-0.204470, -0.839682, -0.503117,
		0.963268, -0.264009, 0.049142,
		16.442572, 17.402544, 12.692339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.832954, 16.835419, 12.677320>,  <15.768284, 17.587351, 12.657939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.832954, 16.835419, 12.677320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.130306, 17.030117, 12.860825>,  <16.308718, 17.146936, 12.970928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.130306, 17.030117, 12.860825>,  <15.832954, 16.835419, 12.677320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.130306, 17.030117, 12.860825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233372, -0.454031, 0.859880,
		0.626836, -0.746280, -0.223925,
		0.743380, 0.486746, 0.458764,
		16.353321, 17.176142, 12.998453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.011425, 16.384228, 13.207428>,  <15.832954, 16.835419, 12.677320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.011425, 16.384228, 13.207428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.185276, 16.724670, 13.325216>,  <16.289587, 16.928936, 13.395889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.185276, 16.724670, 13.325216>,  <16.011425, 16.384228, 13.207428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.185276, 16.724670, 13.325216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298501, -0.172351, 0.938719,
		0.849704, -0.495892, 0.179148,
		0.434627, 0.851109, 0.294472,
		16.315664, 16.980003, 13.413558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.518959, 16.237278, 13.737151>,  <16.011425, 16.384228, 13.207428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.518959, 16.237278, 13.737151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.443348, 16.626949, 13.786547>,  <16.397982, 16.860752, 13.816184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.443348, 16.626949, 13.786547>,  <16.518959, 16.237278, 13.737151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.443348, 16.626949, 13.786547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081056, -0.140805, 0.986713,
		0.978621, 0.176505, 0.105579,
		-0.189026, 0.974177, 0.123488,
		16.386641, 16.919203, 13.823593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.921558, 16.475235, 14.387348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.702423, 16.805340, 14.332489>,  <16.570942, 17.003403, 14.299573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.702423, 16.805340, 14.332489>,  <16.921558, 16.475235, 14.387348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.702423, 16.805340, 14.332489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002428, 0.162370, 0.986727,
		0.836580, 0.540902, -0.086949,
		-0.547840, 0.825264, -0.137149,
		16.538071, 17.052919, 14.291345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.185070, 16.978975, 14.776576>,  <16.921558, 16.475235, 14.387348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.185070, 16.978975, 14.776576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.801186, 17.078476, 14.724304>,  <16.570854, 17.138176, 14.692942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.801186, 17.078476, 14.724304>,  <17.185070, 16.978975, 14.776576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.801186, 17.078476, 14.724304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080857, 0.200914, 0.976266,
		0.269105, 0.947500, -0.172705,
		-0.959711, 0.248753, -0.130679,
		16.513273, 17.153103, 14.685101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.143200, 17.651728, 15.076179>,  <17.185070, 16.978975, 14.776576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.143200, 17.651728, 15.076179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.798214, 17.450779, 15.051607>,  <16.591223, 17.330210, 15.036864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.798214, 17.450779, 15.051607>,  <17.143200, 17.651728, 15.076179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798214, 17.450779, 15.051607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179519, 0.190176, 0.965197,
		-0.473207, 0.843478, -0.254206,
		-0.862466, -0.502373, -0.061428,
		16.539474, 17.300068, 15.033178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.741205, 17.959455, 15.530755>,  <17.143200, 17.651728, 15.076179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.741205, 17.959455, 15.530755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.517540, 17.631123, 15.484159>,  <16.383341, 17.434122, 15.456202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.517540, 17.631123, 15.484159>,  <16.741205, 17.959455, 15.530755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.517540, 17.631123, 15.484159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075455, -0.089540, 0.993121,
		-0.825616, 0.564107, -0.011868,
		-0.559164, -0.820832, -0.116490,
		16.349791, 17.384872, 15.449212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.054104, 18.051699, 15.931122>,  <16.741205, 17.959455, 15.530755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.054104, 18.051699, 15.931122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.084545, 17.658669, 15.863298>,  <16.102810, 17.422850, 15.822604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.084545, 17.658669, 15.863298>,  <16.054104, 18.051699, 15.931122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.084545, 17.658669, 15.863298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291842, -0.184556, 0.938492,
		-0.953434, -0.021939, -0.300803,
		0.076104, -0.982577, -0.169560,
		16.107376, 17.363895, 15.812430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.581404, 17.734156, 16.361309>,  <16.054104, 18.051699, 15.931122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.581404, 17.734156, 16.361309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.821469, 17.423248, 16.285778>,  <15.965508, 17.236704, 16.240459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.821469, 17.423248, 16.285778>,  <15.581404, 17.734156, 16.361309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.821469, 17.423248, 16.285778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160282, -0.348145, 0.923637,
		-0.783653, -0.524068, -0.333526,
		0.600164, -0.777269, -0.188826,
		16.001518, 17.190067, 16.229130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.105695, 17.136845, 16.475777>,  <15.581404, 17.734156, 16.361309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.105695, 17.136845, 16.475777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.496165, 17.063133, 16.521593>,  <15.730448, 17.018908, 16.549084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.496165, 17.063133, 16.521593>,  <15.105695, 17.136845, 16.475777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.496165, 17.063133, 16.521593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181476, -0.404075, 0.896543,
		-0.118929, -0.895972, -0.427891,
		0.976177, -0.184277, 0.114541,
		15.789019, 17.007851, 16.555956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228514, 16.324043, 16.618292>,  <15.105695, 17.136845, 16.475777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.228514, 16.324043, 16.618292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.541005, 16.529587, 16.760071>,  <15.728500, 16.652912, 16.845139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.541005, 16.529587, 16.760071>,  <15.228514, 16.324043, 16.618292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.541005, 16.529587, 16.760071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245535, -0.269092, 0.931291,
		0.573929, -0.814580, -0.084053,
		0.781229, 0.513857, 0.354447,
		15.775373, 16.683744, 16.866405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.541113, 15.844894, 17.076395>,  <15.228514, 16.324043, 16.618292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.541113, 15.844894, 17.076395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.699193, 16.195724, 17.185614>,  <15.794041, 16.406223, 17.251144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.699193, 16.195724, 17.185614>,  <15.541113, 15.844894, 17.076395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.699193, 16.195724, 17.185614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087888, -0.259776, 0.961661,
		0.914381, -0.404046, -0.025579,
		0.395200, 0.877076, 0.273045,
		15.817753, 16.458847, 17.267527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.086899, 15.783982, 17.665323>,  <15.541113, 15.844894, 17.076395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.086899, 15.783982, 17.665323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.951074, 16.159466, 17.689075>,  <15.869579, 16.384756, 17.703327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.951074, 16.159466, 17.689075>,  <16.086899, 15.783982, 17.665323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.951074, 16.159466, 17.689075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165916, -0.121918, 0.978574,
		0.925835, 0.322434, 0.197145,
		-0.339561, 0.938708, 0.059379,
		15.849205, 16.441078, 17.706888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.348787, 15.989257, 18.346634>,  <16.086899, 15.783982, 17.665323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.348787, 15.989257, 18.346634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.063354, 16.253933, 18.254576>,  <15.892095, 16.412739, 18.199341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.063354, 16.253933, 18.254576>,  <16.348787, 15.989257, 18.346634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.063354, 16.253933, 18.254576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256841, 0.058550, 0.964679,
		0.651794, 0.747488, 0.128169,
		-0.713581, 0.661691, -0.230147,
		15.849280, 16.452440, 18.185532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.380650, 16.530979, 18.712976>,  <16.348787, 15.989257, 18.346634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.380650, 16.530979, 18.712976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.004131, 16.584511, 18.589008>,  <15.778220, 16.616631, 18.514627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.004131, 16.584511, 18.589008>,  <16.380650, 16.530979, 18.712976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.004131, 16.584511, 18.589008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272229, 0.241986, 0.931308,
		0.199634, 0.961006, -0.191348,
		-0.941296, 0.133831, -0.309922,
		15.721743, 16.624660, 18.496031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.204447, 17.083696, 19.089453>,  <16.380650, 16.530979, 18.712976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.204447, 17.083696, 19.089453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.852601, 16.936726, 18.968607>,  <15.641494, 16.848543, 18.896099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.852601, 16.936726, 18.968607>,  <16.204447, 17.083696, 19.089453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.852601, 16.936726, 18.968607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352980, 0.078419, 0.932339,
		-0.318877, 0.926740, -0.198673,
		-0.879615, -0.367429, -0.302114,
		15.588717, 16.826496, 18.877974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.693686, 17.657726, 19.269873>,  <16.204447, 17.083696, 19.089453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.693686, 17.657726, 19.269873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.484744, 17.324932, 19.195101>,  <15.359379, 17.125256, 19.150238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.484744, 17.324932, 19.195101>,  <15.693686, 17.657726, 19.269873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.484744, 17.324932, 19.195101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402541, 0.047338, 0.914177,
		-0.751734, 0.552773, -0.359636,
		-0.522357, -0.831986, -0.186929,
		15.328037, 17.075336, 19.139023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.018158, 17.874430, 19.351870>,  <15.693686, 17.657726, 19.269873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.018158, 17.874430, 19.351870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.020854, 17.482201, 19.430286>,  <15.022471, 17.246862, 19.477337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.020854, 17.482201, 19.430286>,  <15.018158, 17.874430, 19.351870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.020854, 17.482201, 19.430286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272866, 0.186804, 0.943742,
		-0.962029, -0.059853, -0.266306,
		0.006739, -0.980572, 0.196043,
		15.022876, 17.188028, 19.489100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.433039, 17.806013, 19.725424>,  <15.018158, 17.874430, 19.351870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.433039, 17.806013, 19.725424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.673163, 17.495674, 19.803078>,  <14.817239, 17.309471, 19.849670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.673163, 17.495674, 19.803078>,  <14.433039, 17.806013, 19.725424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673163, 17.495674, 19.803078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284892, 0.019372, 0.958364,
		-0.747303, -0.630625, -0.209403,
		0.600312, -0.775846, 0.194137,
		14.853257, 17.262920, 19.861319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.089620, 17.456478, 20.222256>,  <14.433039, 17.806013, 19.725424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.089620, 17.456478, 20.222256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.454457, 17.302849, 20.279629>,  <14.673360, 17.210670, 20.314053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.454457, 17.302849, 20.279629>,  <14.089620, 17.456478, 20.222256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.454457, 17.302849, 20.279629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103420, 0.122994, 0.987004,
		-0.396722, -0.915075, 0.072461,
		0.912095, -0.384072, 0.143431,
		14.728086, 17.187628, 20.322659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.976788, 16.941820, 20.684662>,  <14.089620, 17.456478, 20.222256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.976788, 16.941820, 20.684662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.367419, 17.022430, 20.714813>,  <14.601798, 17.070797, 20.732904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.367419, 17.022430, 20.714813>,  <13.976788, 16.941820, 20.684662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.367419, 17.022430, 20.714813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109929, 0.166169, 0.979951,
		0.184967, -0.965283, 0.184431,
		0.976577, 0.201533, 0.075377,
		14.660393, 17.082888, 20.737427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.167198, 16.635754, 21.277504>,  <13.976788, 16.941820, 20.684662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.167198, 16.635754, 21.277504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.429690, 16.926445, 21.196285>,  <14.587186, 17.100859, 21.147554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.429690, 16.926445, 21.196285>,  <14.167198, 16.635754, 21.277504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.429690, 16.926445, 21.196285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018668, 0.284650, 0.958450,
		0.754330, -0.625173, 0.200363,
		0.656231, 0.726727, -0.203049,
		14.626559, 17.144463, 21.135370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.458508, 16.640738, 21.901947>,  <14.167198, 16.635754, 21.277504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.458508, 16.640738, 21.901947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.642219, 16.950779, 21.728382>,  <14.752444, 17.136805, 21.624243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.642219, 16.950779, 21.728382>,  <14.458508, 16.640738, 21.901947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.642219, 16.950779, 21.728382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099839, 0.440342, 0.892262,
		0.882666, -0.453114, 0.124851,
		0.459274, 0.775104, -0.433913,
		14.780001, 17.183310, 21.598207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.100384, 16.700958, 22.158621>,  <14.458508, 16.640738, 21.901947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.100384, 16.700958, 22.158621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.019967, 17.072147, 22.033117>,  <14.971717, 17.294861, 21.957815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.019967, 17.072147, 22.033117>,  <15.100384, 16.700958, 22.158621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.019967, 17.072147, 22.033117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357723, 0.367728, 0.858377,
		0.911930, 0.060330, -0.405887,
		-0.201041, 0.927974, -0.313760,
		14.959655, 17.350540, 21.938990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.771820, 17.087559, 22.214840>,  <15.100384, 16.700958, 22.158621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.771820, 17.087559, 22.214840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.476804, 17.357613, 22.208782>,  <15.299794, 17.519644, 22.205147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.476804, 17.357613, 22.208782>,  <15.771820, 17.087559, 22.214840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.476804, 17.357613, 22.208782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339396, 0.389969, 0.855999,
		0.583819, 0.626194, -0.516756,
		-0.737540, 0.675133, -0.015144,
		15.255542, 17.560152, 22.204239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.937183, 17.748640, 22.655443>,  <15.771820, 17.087559, 22.214840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.937183, 17.748640, 22.655443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.538421, 17.750355, 22.624058>,  <15.299163, 17.751383, 22.605227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.538421, 17.750355, 22.624058>,  <15.937183, 17.748640, 22.655443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.538421, 17.750355, 22.624058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071014, 0.378394, 0.922917,
		0.033645, 0.925635, -0.376919,
		-0.996908, 0.004285, -0.078464,
		15.239348, 17.751640, 22.600519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863165, 18.193718, 23.113405>,  <15.937183, 17.748640, 22.655443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863165, 18.193718, 23.113405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.502852, 18.020710, 23.097816>,  <15.286665, 17.916904, 23.088463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.502852, 18.020710, 23.097816>,  <15.863165, 18.193718, 23.113405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.502852, 18.020710, 23.097816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163199, 0.253980, 0.953342,
		-0.402443, 0.865112, -0.299367,
		-0.900781, -0.432522, -0.038973,
		15.232618, 17.890953, 23.086124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.442820, 17.881618, 23.553604>,  <15.863165, 18.193718, 23.113405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.442820, 17.881618, 23.553604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.840626, 17.858002, 23.588129>,  <17.079309, 17.843832, 23.608845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.840626, 17.858002, 23.588129>,  <16.442820, 17.881618, 23.553604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.840626, 17.858002, 23.588129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103407, 0.678312, -0.727461,
		-0.015595, 0.732398, 0.680698,
		0.994517, -0.059044, 0.086313,
		17.138981, 17.840288, 23.614023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734339, 18.569754, 23.629057>,  <16.442820, 17.881618, 23.553604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.734339, 18.569754, 23.629057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.020390, 18.330868, 23.483768>,  <17.192020, 18.187536, 23.396595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.020390, 18.330868, 23.483768>,  <16.734339, 18.569754, 23.629057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.020390, 18.330868, 23.483768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180202, 0.659582, -0.729711,
		0.675368, 0.456382, 0.579304,
		0.715126, -0.597216, -0.363220,
		17.234928, 18.151703, 23.374802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.010283, 18.933023, 23.130589>,  <16.734339, 18.569754, 23.629057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.010283, 18.933023, 23.130589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.198090, 18.587948, 23.055412>,  <17.310774, 18.380903, 23.010307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.198090, 18.587948, 23.055412>,  <17.010283, 18.933023, 23.130589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.198090, 18.587948, 23.055412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207446, 0.314689, -0.926249,
		0.858207, 0.395902, 0.326713,
		0.469517, -0.862689, -0.187940,
		17.338945, 18.329142, 22.999031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.653614, 19.110275, 22.846186>,  <17.010283, 18.933023, 23.130589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.653614, 19.110275, 22.846186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.553356, 18.745098, 22.717369>,  <17.493202, 18.525991, 22.640079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.553356, 18.745098, 22.717369>,  <17.653614, 19.110275, 22.846186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.553356, 18.745098, 22.717369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052869, 0.319258, -0.946192,
		0.966634, -0.254184, -0.031754,
		-0.250645, -0.912943, -0.322044,
		17.478163, 18.471214, 22.620756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.034460, 19.021942, 22.232693>,  <17.653614, 19.110275, 22.846186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.034460, 19.021942, 22.232693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.759644, 18.732967, 22.201551>,  <17.594753, 18.559582, 22.182867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.759644, 18.732967, 22.201551>,  <18.034460, 19.021942, 22.232693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.759644, 18.732967, 22.201551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037832, 0.142562, -0.989063,
		0.725634, -0.676581, -0.125277,
		-0.687040, -0.722437, -0.077851,
		17.553532, 18.516237, 22.178196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.236267, 18.572327, 21.754175>,  <18.034460, 19.021942, 22.232693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.236267, 18.572327, 21.754175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.847267, 18.482719, 21.779667>,  <17.613867, 18.428955, 21.794962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.847267, 18.482719, 21.779667>,  <18.236267, 18.572327, 21.754175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.847267, 18.482719, 21.779667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072004, 0.028953, -0.996984,
		0.221499, -0.974154, -0.044287,
		-0.972498, -0.224020, 0.063730,
		17.555517, 18.415514, 21.798786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.189957, 18.183914, 21.117725>,  <18.236267, 18.572327, 21.754175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.189957, 18.183914, 21.117725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.821995, 18.277832, 21.243357>,  <17.601217, 18.334183, 21.318735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.821995, 18.277832, 21.243357>,  <18.189957, 18.183914, 21.117725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.821995, 18.277832, 21.243357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360508, -0.191227, -0.912944,
		-0.154297, -0.953049, 0.260557,
		-0.919905, 0.234797, 0.314076,
		17.546022, 18.348270, 21.337580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680405, 17.661316, 20.921843>,  <18.189957, 18.183914, 21.117725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.680405, 17.661316, 20.921843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.503571, 18.019890, 20.934252>,  <17.397470, 18.235035, 20.941698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.503571, 18.019890, 20.934252>,  <17.680405, 17.661316, 20.921843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.503571, 18.019890, 20.934252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168391, -0.048971, -0.984503,
		-0.881026, -0.440457, 0.172601,
		-0.442083, 0.896437, 0.031024,
		17.370945, 18.288820, 20.943560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.211800, 17.591436, 20.483368>,  <17.680405, 17.661316, 20.921843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.211800, 17.591436, 20.483368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.203163, 17.990524, 20.508955>,  <17.197981, 18.229977, 20.524307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.203163, 17.990524, 20.508955>,  <17.211800, 17.591436, 20.483368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.203163, 17.990524, 20.508955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053835, 0.062728, -0.996577,
		-0.998316, -0.024960, 0.052358,
		-0.021590, 0.997718, 0.063966,
		17.196686, 18.289841, 20.528145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670483, 17.827400, 20.032143>,  <17.211800, 17.591436, 20.483368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670483, 17.827400, 20.032143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.907528, 18.148449, 20.059301>,  <17.049755, 18.341078, 20.075596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.907528, 18.148449, 20.059301>,  <16.670483, 17.827400, 20.032143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.907528, 18.148449, 20.059301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063761, 0.130772, -0.989360,
		-0.802959, 0.581979, 0.128674,
		0.592614, 0.802620, 0.067897,
		17.085312, 18.389235, 20.079670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.366100, 18.198591, 19.549500>,  <16.670483, 17.827400, 20.032143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.366100, 18.198591, 19.549500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.724957, 18.365376, 19.607847>,  <16.940271, 18.465446, 19.642857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.724957, 18.365376, 19.607847>,  <16.366100, 18.198591, 19.549500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.724957, 18.365376, 19.607847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105396, 0.118638, -0.987328,
		-0.428983, 0.901148, 0.062489,
		0.897143, 0.416961, 0.145871,
		16.994099, 18.490463, 19.651609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.487724, 18.804237, 19.036425>,  <16.366100, 18.198591, 19.549500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.487724, 18.804237, 19.036425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.846977, 18.666004, 19.145185>,  <17.062529, 18.583063, 19.210442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.846977, 18.666004, 19.145185>,  <16.487724, 18.804237, 19.036425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.846977, 18.666004, 19.145185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257398, -0.088161, -0.962275,
		0.356519, 0.934237, 0.009773,
		0.898132, -0.345585, 0.271902,
		17.116417, 18.562328, 19.226757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968067, 19.213116, 18.634962>,  <16.487724, 18.804237, 19.036425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.968067, 19.213116, 18.634962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.179890, 18.890499, 18.740078>,  <17.306984, 18.696930, 18.803148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.179890, 18.890499, 18.740078>,  <16.968067, 19.213116, 18.634962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.179890, 18.890499, 18.740078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381772, -0.050040, -0.922901,
		0.757509, 0.589055, 0.281416,
		0.529557, -0.806542, 0.262791,
		17.338757, 18.648537, 18.818914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.608507, 19.297455, 18.190584>,  <16.968067, 19.213116, 18.634962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.608507, 19.297455, 18.190584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.664795, 18.935318, 18.350861>,  <17.698568, 18.718035, 18.447025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.664795, 18.935318, 18.350861>,  <17.608507, 19.297455, 18.190584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.664795, 18.935318, 18.350861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427866, -0.309359, -0.849251,
		0.892821, 0.290947, 0.343833,
		0.140719, -0.905343, 0.400689,
		17.707010, 18.663715, 18.471067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.335648, 19.094967, 18.199747>,  <17.608507, 19.297455, 18.190584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.335648, 19.094967, 18.199747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.124847, 18.757984, 18.154961>,  <17.998367, 18.555794, 18.128090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.124847, 18.757984, 18.154961>,  <18.335648, 19.094967, 18.199747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.124847, 18.757984, 18.154961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644798, -0.310532, -0.698430,
		0.553629, -0.440268, 0.706866,
		-0.527001, -0.842457, -0.111964,
		17.966747, 18.505247, 18.121372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.799231, 18.577602, 17.937546>,  <18.335648, 19.094967, 18.199747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.799231, 18.577602, 17.937546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.464531, 18.367077, 17.877083>,  <18.263712, 18.240763, 17.840805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.464531, 18.367077, 17.877083>,  <18.799231, 18.577602, 17.937546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.464531, 18.367077, 17.877083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393562, -0.386088, -0.834293,
		0.380738, -0.757582, 0.530195,
		-0.836748, -0.526312, -0.151157,
		18.213507, 18.209183, 17.831736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.945625, 17.781439, 17.838205>,  <18.799231, 18.577602, 17.937546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.945625, 17.781439, 17.838205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.615345, 17.899548, 17.645941>,  <18.417177, 17.970413, 17.530582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.615345, 17.899548, 17.645941>,  <18.945625, 17.781439, 17.838205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.615345, 17.899548, 17.645941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423340, -0.238804, -0.873931,
		-0.372834, -0.925086, 0.072178,
		-0.825699, 0.295275, -0.480661,
		18.367636, 17.988129, 17.501743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.866592, 17.248278, 17.405449>,  <18.945625, 17.781439, 17.838205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.866592, 17.248278, 17.405449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.640003, 17.539551, 17.251118>,  <18.504051, 17.714314, 17.158520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.640003, 17.539551, 17.251118>,  <18.866592, 17.248278, 17.405449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.640003, 17.539551, 17.251118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332432, -0.226486, -0.915529,
		-0.754056, -0.646881, -0.113773,
		-0.566471, 0.728181, -0.385827,
		18.470062, 17.758005, 17.135370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.524433, 16.875626, 16.798431>,  <18.866592, 17.248278, 17.405449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.524433, 16.875626, 16.798431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.475395, 17.268578, 16.742002>,  <18.445972, 17.504349, 16.708145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.475395, 17.268578, 16.742002>,  <18.524433, 16.875626, 16.798431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.475395, 17.268578, 16.742002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153019, -0.121736, -0.980696,
		-0.980590, -0.141814, -0.135398,
		-0.122593, 0.982379, -0.141074,
		18.438618, 17.563292, 16.699680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.437460, 16.862597, 16.110535>,  <18.524433, 16.875626, 16.798431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.437460, 16.862597, 16.110535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.487732, 17.255859, 16.163609>,  <18.517895, 17.491817, 16.195452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.487732, 17.255859, 16.163609>,  <18.437460, 16.862597, 16.110535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487732, 17.255859, 16.163609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258633, 0.096649, -0.961129,
		-0.957765, 0.155109, -0.242131,
		0.125678, 0.983158, 0.132683,
		18.525434, 17.550806, 16.203413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.867928, 16.502031, 11.367948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.894997, 16.885918, 11.477029>,  <16.911238, 17.116249, 11.542478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.894997, 16.885918, 11.477029>,  <16.867928, 16.502031, 11.367948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.894997, 16.885918, 11.477029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201757, 0.280846, -0.938307,
		-0.977095, 0.008478, 0.212635,
		0.067672, 0.959716, 0.272702,
		16.915298, 17.173832, 11.558840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.183603, 17.024612, 11.222988>,  <16.867928, 16.502031, 11.367948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.183603, 17.024612, 11.222988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.523849, 17.234917, 11.225158>,  <16.727997, 17.361099, 11.226460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.523849, 17.234917, 11.225158>,  <16.183603, 17.024612, 11.222988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.523849, 17.234917, 11.225158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138396, 0.233836, -0.962376,
		-0.507246, 0.817862, 0.271668,
		0.850616, 0.525759, 0.005423,
		16.779034, 17.392645, 11.226785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.098606, 17.538357, 10.684419>,  <16.183603, 17.024612, 11.222988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.098606, 17.538357, 10.684419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.492661, 17.569504, 10.745660>,  <16.729094, 17.588192, 10.782405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.492661, 17.569504, 10.745660>,  <16.098606, 17.538357, 10.684419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.492661, 17.569504, 10.745660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119334, 0.330825, -0.936117,
		-0.123545, 0.940474, 0.316615,
		0.985138, 0.077869, 0.153103,
		16.788202, 17.592865, 10.791591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.277931, 18.141199, 10.447041>,  <16.098606, 17.538357, 10.684419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.277931, 18.141199, 10.447041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.621780, 17.937031, 10.437915>,  <16.828089, 17.814529, 10.432440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.621780, 17.937031, 10.437915>,  <16.277931, 18.141199, 10.447041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.621780, 17.937031, 10.437915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113777, 0.234765, -0.965370,
		0.498102, 0.827257, 0.259883,
		0.859621, -0.510422, -0.022814,
		16.879667, 17.783905, 10.431070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.735048, 18.631516, 10.279370>,  <16.277931, 18.141199, 10.447041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.735048, 18.631516, 10.279370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.918602, 18.291138, 10.177144>,  <17.028734, 18.086910, 10.115808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.918602, 18.291138, 10.177144>,  <16.735048, 18.631516, 10.279370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.918602, 18.291138, 10.177144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180778, 0.371042, -0.910849,
		0.869910, 0.371775, 0.324099,
		0.458886, -0.850947, -0.255565,
		17.056269, 18.035854, 10.100474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293245, 18.877319, 9.800136>,  <16.735048, 18.631516, 10.279370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.293245, 18.877319, 9.800136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.282139, 18.482456, 9.737215>,  <17.275475, 18.245537, 9.699463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.282139, 18.482456, 9.737215>,  <17.293245, 18.877319, 9.800136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.282139, 18.482456, 9.737215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093501, 0.154108, -0.983620,
		0.995232, -0.042020, 0.088021,
		-0.027767, -0.987160, -0.157302,
		17.273809, 18.186308, 9.690024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807472, 18.784748, 9.345431>,  <17.293245, 18.877319, 9.800136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.807472, 18.784748, 9.345431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.548607, 18.482929, 9.301909>,  <17.393288, 18.301838, 9.275797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.548607, 18.482929, 9.301909>,  <17.807472, 18.784748, 9.345431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.548607, 18.482929, 9.301909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020578, 0.159960, -0.986909,
		0.762072, -0.636454, -0.119048,
		-0.647165, -0.754546, -0.108804,
		17.354458, 18.256565, 9.269268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.073513, 18.335115, 8.862407>,  <17.807472, 18.784748, 9.345431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.073513, 18.335115, 8.862407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.683487, 18.249397, 8.839325>,  <17.449472, 18.197968, 8.825476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.683487, 18.249397, 8.839325>,  <18.073513, 18.335115, 8.862407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.683487, 18.249397, 8.839325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049621, 0.042917, -0.997846,
		0.216309, -0.975826, -0.031213,
		-0.975063, -0.214295, -0.057705,
		17.390968, 18.185108, 8.822014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.082737, 17.973709, 8.302616>,  <18.073513, 18.335115, 8.862407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.082737, 17.973709, 8.302616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.706917, 18.091099, 8.373172>,  <17.481424, 18.161533, 8.415505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.706917, 18.091099, 8.373172>,  <18.082737, 17.973709, 8.302616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.706917, 18.091099, 8.373172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126563, 0.181002, -0.975305,
		-0.318155, -0.938675, -0.132917,
		-0.939553, 0.293476, 0.176388,
		17.425051, 18.179142, 8.426088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.708971, 17.730150, 7.732954>,  <18.082737, 17.973709, 8.302616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.708971, 17.730150, 7.732954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.463993, 18.008614, 7.882767>,  <17.317007, 18.175692, 7.972654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.463993, 18.008614, 7.882767>,  <17.708971, 17.730150, 7.732954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.463993, 18.008614, 7.882767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176065, 0.341758, -0.923148,
		-0.770658, -0.631318, -0.086738,
		-0.612443, 0.696160, 0.374531,
		17.280260, 18.217463, 7.995126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.143572, 17.699425, 7.354048>,  <17.708971, 17.730150, 7.732954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.143572, 17.699425, 7.354048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.162830, 18.063686, 7.518192>,  <17.174385, 18.282244, 7.616679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.162830, 18.063686, 7.518192>,  <17.143572, 17.699425, 7.354048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.162830, 18.063686, 7.518192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287156, 0.406111, -0.867534,
		-0.956673, -0.076070, 0.281051,
		0.048144, 0.910652, 0.410360,
		17.177273, 18.336882, 7.641300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.619909, 18.042555, 6.869936>,  <17.143572, 17.699425, 7.354048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.619909, 18.042555, 6.869936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.814129, 18.330524, 7.068310>,  <16.930660, 18.503307, 7.187334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.814129, 18.330524, 7.068310>,  <16.619909, 18.042555, 6.869936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.814129, 18.330524, 7.068310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223325, 0.650617, -0.725826,
		-0.845204, 0.241669, 0.476683,
		0.485548, 0.719927, 0.495933,
		16.959793, 18.546503, 7.217090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243969, 18.691650, 6.832352>,  <16.619909, 18.042555, 6.869936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.243969, 18.691650, 6.832352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.635139, 18.756405, 6.885199>,  <16.869843, 18.795258, 6.916906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.635139, 18.756405, 6.885199>,  <16.243969, 18.691650, 6.832352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.635139, 18.756405, 6.885199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013552, 0.581807, -0.813214,
		-0.208514, 0.797053, 0.566770,
		0.977926, 0.161886, 0.132116,
		16.928516, 18.804970, 6.924833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.380939, 19.343447, 7.052885>,  <16.243969, 18.691650, 6.832352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.380939, 19.343447, 7.052885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.689987, 19.190075, 6.850483>,  <16.875416, 19.098051, 6.729042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.689987, 19.190075, 6.850483>,  <16.380939, 19.343447, 7.052885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689987, 19.190075, 6.850483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182359, 0.629400, -0.755381,
		0.608116, 0.675896, 0.416365,
		0.772619, -0.383431, -0.506004,
		16.921772, 19.075045, 6.698682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.820547, 19.243435, 6.549414>,  <16.380939, 19.343447, 7.052885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.820547, 19.243435, 6.549414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.536387, 19.439884, 6.347769>,  <15.365891, 19.557755, 6.226782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.536387, 19.439884, 6.347769>,  <15.820547, 19.243435, 6.549414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.536387, 19.439884, 6.347769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082845, 0.652941, 0.752864,
		0.698905, 0.576598, -0.423162,
		-0.710400, 0.491124, -0.504112,
		15.323267, 19.587221, 6.196535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.015274, 19.922081, 6.559368>,  <15.820547, 19.243435, 6.549414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.015274, 19.922081, 6.559368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.619487, 19.906952, 6.503482>,  <15.382014, 19.897875, 6.469950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.619487, 19.906952, 6.503482>,  <16.015274, 19.922081, 6.559368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.619487, 19.906952, 6.503482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129522, 0.662254, 0.738000,
		0.064615, 0.748324, -0.660179,
		-0.989469, -0.037822, -0.139716,
		15.322646, 19.895605, 6.461567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.865196, 20.574125, 6.851377>,  <16.015274, 19.922081, 6.559368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.865196, 20.574125, 6.851377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.508445, 20.394951, 6.826372>,  <15.294394, 20.287447, 6.811369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.508445, 20.394951, 6.826372>,  <15.865196, 20.574125, 6.851377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.508445, 20.394951, 6.826372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291610, 0.463874, 0.836531,
		-0.345714, 0.764313, -0.544342,
		-0.891878, -0.447936, -0.062513,
		15.240882, 20.260571, 6.807618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.223449, 21.081614, 6.911933>,  <15.865196, 20.574125, 6.851377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.223449, 21.081614, 6.911933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.129487, 20.708767, 7.022189>,  <15.073110, 20.485060, 7.088343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.129487, 20.708767, 7.022189>,  <15.223449, 21.081614, 6.911933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.129487, 20.708767, 7.022189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189513, 0.322052, 0.927560,
		-0.953365, 0.165651, -0.252300,
		-0.234905, -0.932117, 0.275640,
		15.059015, 20.429132, 7.104881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.693344, 21.222530, 7.378316>,  <15.223449, 21.081614, 6.911933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.693344, 21.222530, 7.378316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.799754, 20.845619, 7.459649>,  <14.863600, 20.619473, 7.508449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.799754, 20.845619, 7.459649>,  <14.693344, 21.222530, 7.378316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.799754, 20.845619, 7.459649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192779, 0.258676, 0.946532,
		-0.944493, -0.212603, 0.250466,
		0.266025, -0.942277, 0.203332,
		14.879561, 20.562937, 7.520649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.414724, 21.222095, 7.994601>,  <14.693344, 21.222530, 7.378316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.414724, 21.222095, 7.994601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.656964, 20.904888, 7.968162>,  <14.802308, 20.714563, 7.952298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.656964, 20.904888, 7.968162>,  <14.414724, 21.222095, 7.994601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.656964, 20.904888, 7.968162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253039, 0.113151, 0.960816,
		-0.754467, -0.598596, 0.269189,
		0.605600, -0.793020, -0.066099,
		14.838644, 20.666983, 7.948332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.125766, 20.827129, 8.538008>,  <14.414724, 21.222095, 7.994601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.125766, 20.827129, 8.538008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.502288, 20.713757, 8.464674>,  <14.728201, 20.645733, 8.420673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.502288, 20.713757, 8.464674>,  <14.125766, 20.827129, 8.538008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.502288, 20.713757, 8.464674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161064, -0.100186, 0.981846,
		-0.296655, -0.953744, -0.048654,
		0.941305, -0.283433, -0.183335,
		14.784679, 20.628727, 8.409674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.153352, 20.245918, 8.899829>,  <14.125766, 20.827129, 8.538008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.153352, 20.245918, 8.899829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.529115, 20.381496, 8.879318>,  <14.754573, 20.462843, 8.867012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.529115, 20.381496, 8.879318>,  <14.153352, 20.245918, 8.899829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.529115, 20.381496, 8.879318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093488, -0.109401, 0.989592,
		0.329806, -0.934424, -0.134460,
		0.939409, 0.338943, -0.051276,
		14.810937, 20.483179, 8.863935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.705546, 19.744806, 9.239702>,  <14.153352, 20.245918, 8.899829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.705546, 19.744806, 9.239702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.846705, 20.119064, 9.242064>,  <14.931401, 20.343618, 9.243481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.846705, 20.119064, 9.242064>,  <14.705546, 19.744806, 9.239702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.846705, 20.119064, 9.242064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116320, -0.050131, 0.991946,
		0.928403, -0.349369, -0.126525,
		0.352898, 0.935643, 0.005903,
		14.952575, 20.399757, 9.243834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.172347, 19.756712, 9.784390>,  <14.705546, 19.744806, 9.239702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.172347, 19.756712, 9.784390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.131923, 20.149399, 9.719868>,  <15.107668, 20.385010, 9.681154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.131923, 20.149399, 9.719868>,  <15.172347, 19.756712, 9.784390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.131923, 20.149399, 9.719868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091545, 0.170625, 0.981074,
		0.990659, 0.084382, -0.107115,
		-0.101062, 0.981716, -0.161307,
		15.101604, 20.443914, 9.671475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662749, 20.130999, 10.276379>,  <15.172347, 19.756712, 9.784390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.662749, 20.130999, 10.276379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.404321, 20.414173, 10.162243>,  <15.249264, 20.584078, 10.093761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.404321, 20.414173, 10.162243>,  <15.662749, 20.130999, 10.276379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.404321, 20.414173, 10.162243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047599, 0.410475, 0.910629,
		0.761790, 0.574750, -0.298894,
		-0.646072, 0.707935, -0.285339,
		15.210499, 20.626554, 10.076641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.877358, 20.741560, 10.594449>,  <15.662749, 20.130999, 10.276379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.877358, 20.741560, 10.594449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.488179, 20.784058, 10.512393>,  <15.254671, 20.809557, 10.463160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.488179, 20.784058, 10.512393>,  <15.877358, 20.741560, 10.594449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.488179, 20.784058, 10.512393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179997, 0.208002, 0.961424,
		0.144817, 0.972341, -0.183251,
		-0.972949, 0.106246, -0.205141,
		15.196295, 20.815931, 10.450850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.651062, 21.300764, 10.971850>,  <15.877358, 20.741560, 10.594449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.651062, 21.300764, 10.971850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.293271, 21.140285, 10.892906>,  <15.078596, 21.043999, 10.845540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.293271, 21.140285, 10.892906>,  <15.651062, 21.300764, 10.971850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.293271, 21.140285, 10.892906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240025, 0.058459, 0.969005,
		-0.377224, 0.914124, -0.148588,
		-0.894477, -0.401197, -0.197360,
		15.024928, 21.019926, 10.833698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.305224, 21.584949, 11.483784>,  <15.651062, 21.300764, 10.971850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.305224, 21.584949, 11.483784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.062669, 21.296452, 11.349860>,  <14.917135, 21.123352, 11.269506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.062669, 21.296452, 11.349860>,  <15.305224, 21.584949, 11.483784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.062669, 21.296452, 11.349860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333086, -0.151939, 0.930574,
		-0.722043, 0.675810, -0.148103,
		-0.606389, -0.721246, -0.334809,
		14.880753, 21.080078, 11.249417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.797522, 22.208641, 11.382463>,  <15.305224, 21.584949, 11.483784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.797522, 22.208641, 11.382463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.001966, 22.536667, 11.485429>,  <15.124632, 22.733482, 11.547209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.001966, 22.536667, 11.485429>,  <14.797522, 22.208641, 11.382463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.001966, 22.536667, 11.485429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272836, 0.129206, -0.953345,
		-0.815063, 0.557496, -0.157704,
		0.511109, 0.820063, 0.257416,
		15.155298, 22.782686, 11.562654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.808050, 22.573662, 10.786464>,  <14.797522, 22.208641, 11.382463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.808050, 22.573662, 10.786464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.097779, 22.765869, 10.984235>,  <15.271617, 22.881193, 11.102898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.097779, 22.765869, 10.984235>,  <14.808050, 22.573662, 10.786464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.097779, 22.765869, 10.984235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346898, 0.365744, -0.863651,
		-0.595833, 0.797079, 0.098226,
		0.724324, 0.480517, 0.494427,
		15.315077, 22.910025, 11.132563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.825786, 23.324404, 10.539055>,  <14.808050, 22.573662, 10.786464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.825786, 23.324404, 10.539055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.176841, 23.250961, 10.716160>,  <15.387474, 23.206896, 10.822423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.176841, 23.250961, 10.716160>,  <14.825786, 23.324404, 10.539055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.176841, 23.250961, 10.716160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478231, 0.273105, -0.834691,
		0.032333, 0.944300, 0.327493,
		0.877639, -0.183606, 0.442763,
		15.440132, 23.195879, 10.848989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.128343, 23.921871, 10.509946>,  <14.825786, 23.324404, 10.539055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.128343, 23.921871, 10.509946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.397834, 23.627472, 10.536485>,  <15.559528, 23.450832, 10.552408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.397834, 23.627472, 10.536485>,  <15.128343, 23.921871, 10.509946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.397834, 23.627472, 10.536485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537296, 0.426234, -0.727762,
		0.507351, 0.525961, 0.682613,
		0.673727, -0.735996, 0.066346,
		15.599952, 23.406673, 10.556389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.712970, 24.212042, 10.284115>,  <15.128343, 23.921871, 10.509946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.712970, 24.212042, 10.284115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.834552, 23.831970, 10.256482>,  <15.907501, 23.603928, 10.239902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.834552, 23.831970, 10.256482>,  <15.712970, 24.212042, 10.284115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.834552, 23.831970, 10.256482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614077, 0.250846, -0.748322,
		0.728368, 0.185035, 0.659729,
		0.303956, -0.950178, -0.069082,
		15.925738, 23.546917, 10.235758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.432734, 24.246826, 10.223721>,  <15.712970, 24.212042, 10.284115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.432734, 24.246826, 10.223721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.328770, 23.886677, 10.084135>,  <16.266392, 23.670588, 10.000383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.328770, 23.886677, 10.084135>,  <16.432734, 24.246826, 10.223721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.328770, 23.886677, 10.084135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793725, 0.006615, -0.608241,
		0.549952, -0.435069, 0.712929,
		-0.259911, -0.900373, -0.348964,
		16.250797, 23.616566, 9.979446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.104885, 23.893642, 10.258855>,  <16.432734, 24.246826, 10.223721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.104885, 23.893642, 10.258855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.833042, 23.714680, 10.026318>,  <16.669937, 23.607302, 9.886795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.833042, 23.714680, 10.026318>,  <17.104885, 23.893642, 10.258855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.833042, 23.714680, 10.026318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690243, -0.121668, -0.713276,
		0.248394, -0.886016, 0.391506,
		-0.679607, -0.447407, -0.581344,
		16.629160, 23.580458, 9.851914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.523596, 23.373802, 10.008284>,  <17.104885, 23.893642, 10.258855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.523596, 23.373802, 10.008284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.205830, 23.402370, 9.767018>,  <17.015171, 23.419512, 9.622259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.205830, 23.402370, 9.767018>,  <17.523596, 23.373802, 10.008284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.205830, 23.402370, 9.767018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554844, -0.318667, -0.768505,
		-0.247094, -0.945172, 0.213527,
		-0.794413, 0.071419, -0.603164,
		16.967506, 23.423796, 9.586069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.629314, 22.823286, 9.647688>,  <17.523596, 23.373802, 10.008284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.629314, 22.823286, 9.647688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.391159, 23.061886, 9.432393>,  <17.248266, 23.205046, 9.303216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.391159, 23.061886, 9.432393>,  <17.629314, 22.823286, 9.647688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.391159, 23.061886, 9.432393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536431, -0.203590, -0.819020,
		-0.598125, -0.776363, -0.198766,
		-0.595389, 0.596500, -0.538237,
		17.212542, 23.240835, 9.270922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.437441, 22.454489, 9.053705>,  <17.629314, 22.823286, 9.647688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.437441, 22.454489, 9.053705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.334438, 22.831524, 8.968648>,  <17.272636, 23.057745, 8.917614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.334438, 22.831524, 8.968648>,  <17.437441, 22.454489, 9.053705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.334438, 22.831524, 8.968648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356775, -0.111767, -0.927480,
		-0.897999, -0.314698, -0.307511,
		-0.257507, 0.942589, -0.212643,
		17.257187, 23.114300, 8.904855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978331, 22.581778, 8.455018>,  <17.437441, 22.454489, 9.053705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.978331, 22.581778, 8.455018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.210403, 22.905907, 8.487909>,  <17.349648, 23.100384, 8.507645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.210403, 22.905907, 8.487909>,  <16.978331, 22.581778, 8.455018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.210403, 22.905907, 8.487909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240511, -0.073993, -0.967822,
		-0.778165, 0.581292, -0.237822,
		0.580184, 0.810324, 0.082229,
		17.384459, 23.149004, 8.512578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.915154, 22.821167, 7.823580>,  <16.978331, 22.581778, 8.455018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.915154, 22.821167, 7.823580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.196110, 23.076817, 7.948907>,  <17.364685, 23.230206, 8.024103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.196110, 23.076817, 7.948907>,  <16.915154, 22.821167, 7.823580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.196110, 23.076817, 7.948907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408971, -0.002101, -0.912545,
		-0.582569, 0.769103, -0.262858,
		0.702393, 0.639122, 0.313316,
		17.406828, 23.268553, 8.042902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<13.529495, 23.493916, 15.076585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928826, 23.485481, 15.055059>,  <14.168426, 23.480421, 15.042144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928826, 23.485481, 15.055059>,  <13.529495, 23.493916, 15.076585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.928826, 23.485481, 15.055059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055042, -0.062737, -0.996511,
		0.017637, 0.997807, -0.063793,
		0.998328, -0.021087, -0.053815,
		14.228325, 23.479155, 15.038915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.633666, 23.734516, 14.471372>,  <13.529495, 23.493916, 15.076585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.633666, 23.734516, 14.471372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.986978, 23.557423, 14.533091>,  <14.198964, 23.451166, 14.570122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.986978, 23.557423, 14.533091>,  <13.633666, 23.734516, 14.471372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.986978, 23.557423, 14.533091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138941, -0.067143, -0.988022,
		0.447789, 0.894137, 0.002207,
		0.883278, -0.442732, 0.154298,
		14.251961, 23.424603, 14.579380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.213590, 24.203436, 14.119349>,  <13.633666, 23.734516, 14.471372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.213590, 24.203436, 14.119349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.352015, 23.832458, 14.176048>,  <14.435071, 23.609873, 14.210068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.352015, 23.832458, 14.176048>,  <14.213590, 24.203436, 14.119349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.352015, 23.832458, 14.176048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494714, 0.052013, -0.867498,
		0.797181, 0.370334, 0.476818,
		0.346065, -0.927441, 0.141746,
		14.455835, 23.554226, 14.218572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.895005, 24.180151, 13.974939>,  <14.213590, 24.203436, 14.119349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.895005, 24.180151, 13.974939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.818351, 23.787735, 13.963387>,  <14.772358, 23.552284, 13.956455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.818351, 23.787735, 13.963387>,  <14.895005, 24.180151, 13.974939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.818351, 23.787735, 13.963387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429619, -0.057391, -0.901184,
		0.882442, -0.185106, 0.432472,
		-0.191635, -0.981041, -0.028881,
		14.760860, 23.493423, 13.954722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.459173, 24.002031, 13.651331>,  <14.895005, 24.180151, 13.974939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.459173, 24.002031, 13.651331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203021, 23.699173, 13.599730>,  <15.049330, 23.517458, 13.568769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203021, 23.699173, 13.599730>,  <15.459173, 24.002031, 13.651331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.203021, 23.699173, 13.599730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453311, -0.236998, -0.859268,
		0.620019, -0.608736, 0.494992,
		-0.640379, -0.757147, -0.129004,
		15.010907, 23.472029, 13.561028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.801707, 23.450771, 13.408382>,  <15.459173, 24.002031, 13.651331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.801707, 23.450771, 13.408382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424907, 23.349957, 13.319738>,  <15.198826, 23.289469, 13.266552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424907, 23.349957, 13.319738>,  <15.801707, 23.450771, 13.408382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.424907, 23.349957, 13.319738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298671, -0.328408, -0.896071,
		0.153063, -0.910289, 0.384637,
		-0.942001, -0.252035, -0.221610,
		15.142306, 23.274345, 13.253255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901566, 22.842722, 13.101673>,  <15.801707, 23.450771, 13.408382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.901566, 22.842722, 13.101673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551064, 22.984196, 12.970774>,  <15.340764, 23.069080, 12.892234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551064, 22.984196, 12.970774>,  <15.901566, 22.842722, 13.101673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.551064, 22.984196, 12.970774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282981, -0.171970, -0.943582,
		-0.390006, -0.919421, 0.050604,
		-0.876251, 0.353683, -0.327248,
		15.288189, 23.090302, 12.872600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.682887, 22.341185, 12.568924>,  <15.901566, 22.842722, 13.101673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.682887, 22.341185, 12.568924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.442525, 22.651966, 12.493822>,  <15.298307, 22.838436, 12.448761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.442525, 22.651966, 12.493822>,  <15.682887, 22.341185, 12.568924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442525, 22.651966, 12.493822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207957, -0.074843, -0.975270,
		-0.771793, -0.625091, -0.116600,
		-0.600906, 0.776955, -0.187755,
		15.262253, 22.885052, 12.437495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.303393, 22.062954, 12.059452>,  <15.682887, 22.341185, 12.568924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.303393, 22.062954, 12.059452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.250739, 22.459297, 12.047642>,  <15.219147, 22.697104, 12.040556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.250739, 22.459297, 12.047642>,  <15.303393, 22.062954, 12.059452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.250739, 22.459297, 12.047642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259254, 0.005663, -0.965793,
		-0.956797, -0.134786, -0.257629,
		-0.131634, 0.990859, -0.029525,
		15.211248, 22.756556, 12.038784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.668381, 21.526239, 12.021068>,  <15.303393, 22.062954, 12.059452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.668381, 21.526239, 12.021068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691241, 21.175545, 11.830044>,  <14.704957, 20.965128, 11.715429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691241, 21.175545, 11.830044>,  <14.668381, 21.526239, 12.021068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.691241, 21.175545, 11.830044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322582, -0.468901, 0.822237,
		-0.944815, 0.107061, -0.309617,
		0.057150, -0.876738, -0.477560,
		14.708386, 20.912523, 11.686776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.100979, 21.130266, 12.162700>,  <14.668381, 21.526239, 12.021068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.100979, 21.130266, 12.162700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.303771, 20.805683, 12.046420>,  <14.425447, 20.610933, 11.976652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.303771, 20.805683, 12.046420>,  <14.100979, 21.130266, 12.162700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.303771, 20.805683, 12.046420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499972, -0.551565, 0.667686,
		-0.702139, -0.193161, -0.685339,
		0.506980, -0.811458, -0.290700,
		14.455865, 20.562246, 11.959210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.625724, 20.495951, 12.111005>,  <14.100979, 21.130266, 12.162700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.625724, 20.495951, 12.111005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.997426, 20.360176, 12.169339>,  <14.220448, 20.278711, 12.204340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.997426, 20.360176, 12.169339>,  <13.625724, 20.495951, 12.111005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.997426, 20.360176, 12.169339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322552, -0.552973, 0.768232,
		-0.180121, -0.760924, -0.623338,
		0.929256, -0.339434, 0.145836,
		14.276203, 20.258347, 12.213090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.503394, 19.822826, 12.264881>,  <13.625724, 20.495951, 12.111005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.503394, 19.822826, 12.264881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.858634, 19.948280, 12.399290>,  <14.071778, 20.023554, 12.479936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.858634, 19.948280, 12.399290>,  <13.503394, 19.822826, 12.264881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.858634, 19.948280, 12.399290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152737, -0.488138, 0.859298,
		0.433533, -0.814465, -0.385611,
		0.888099, 0.313637, 0.336024,
		14.125064, 20.042372, 12.500097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.904879, 19.263468, 12.552328>,  <13.503394, 19.822826, 12.264881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.904879, 19.263468, 12.552328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.069963, 19.586460, 12.720919>,  <14.169013, 19.780256, 12.822073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.069963, 19.586460, 12.720919>,  <13.904879, 19.263468, 12.552328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.069963, 19.586460, 12.720919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094216, -0.422396, 0.901501,
		0.905977, -0.411767, -0.098249,
		0.412709, 0.807483, 0.421476,
		14.193775, 19.828705, 12.847362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.258105, 18.973951, 13.202522>,  <13.904879, 19.263468, 12.552328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.258105, 18.973951, 13.202522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.226993, 19.367939, 13.264208>,  <14.208324, 19.604332, 13.301219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.226993, 19.367939, 13.264208>,  <14.258105, 18.973951, 13.202522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.226993, 19.367939, 13.264208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255668, -0.169216, 0.951840,
		0.963630, 0.034609, 0.264988,
		-0.077782, 0.984971, 0.154214,
		14.203658, 19.663431, 13.310472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.566790, 19.000729, 13.790070>,  <14.258105, 18.973951, 13.202522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.566790, 19.000729, 13.790070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.377536, 19.351776, 13.759275>,  <14.263984, 19.562405, 13.740799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.377536, 19.351776, 13.759275>,  <14.566790, 19.000729, 13.790070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.377536, 19.351776, 13.759275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225619, -0.036235, 0.973542,
		0.851610, 0.477985, 0.215151,
		-0.473135, 0.877620, -0.076984,
		14.235596, 19.615063, 13.736180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.839049, 19.504208, 14.328536>,  <14.566790, 19.000729, 13.790070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.839049, 19.504208, 14.328536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.469977, 19.618359, 14.224827>,  <14.248534, 19.686850, 14.162601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.469977, 19.618359, 14.224827>,  <14.839049, 19.504208, 14.328536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.469977, 19.618359, 14.224827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270390, 0.000461, 0.962751,
		0.274867, 0.958415, 0.076738,
		-0.922679, 0.285378, -0.259273,
		14.193173, 19.703972, 14.147045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.803134, 20.087257, 14.649717>,  <14.839049, 19.504208, 14.328536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.803134, 20.087257, 14.649717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.427058, 19.966114, 14.587339>,  <14.201412, 19.893427, 14.549912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.427058, 19.966114, 14.587339>,  <14.803134, 20.087257, 14.649717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.427058, 19.966114, 14.587339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206581, 0.142905, 0.967937,
		-0.270863, 0.942260, -0.196923,
		-0.940190, -0.302859, -0.155945,
		14.145001, 19.875256, 14.540556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.405717, 20.627827, 15.045407>,  <14.803134, 20.087257, 14.649717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.405717, 20.627827, 15.045407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.165761, 20.315399, 14.976055>,  <14.021788, 20.127943, 14.934443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.165761, 20.315399, 14.976055>,  <14.405717, 20.627827, 15.045407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.165761, 20.315399, 14.976055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409558, 0.113624, 0.905181,
		-0.687309, 0.614019, -0.388055,
		-0.599891, -0.781070, -0.173381,
		13.985794, 20.081078, 14.924041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.828867, 20.723520, 15.460691>,  <14.405717, 20.627827, 15.045407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.828867, 20.723520, 15.460691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.781486, 20.339333, 15.359922>,  <13.753057, 20.108820, 15.299461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.781486, 20.339333, 15.359922>,  <13.828867, 20.723520, 15.460691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.781486, 20.339333, 15.359922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438841, -0.176948, 0.880970,
		-0.890723, 0.214909, -0.400534,
		-0.118454, -0.960470, -0.251922,
		13.745949, 20.051191, 15.284346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.114528, 20.566608, 15.465235>,  <13.828867, 20.723520, 15.460691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.114528, 20.566608, 15.465235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.301885, 20.220554, 15.536951>,  <13.414299, 20.012922, 15.579981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.301885, 20.220554, 15.536951>,  <13.114528, 20.566608, 15.465235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.301885, 20.220554, 15.536951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555493, -0.130562, 0.821207,
		-0.687048, -0.484243, -0.541732,
		0.468393, -0.865137, 0.179291,
		13.442403, 19.961014, 15.590738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.600076, 19.969763, 15.703729>,  <13.114528, 20.566608, 15.465235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.600076, 19.969763, 15.703729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.957198, 19.853081, 15.841021>,  <13.171472, 19.783072, 15.923396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.957198, 19.853081, 15.841021>,  <12.600076, 19.969763, 15.703729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.957198, 19.853081, 15.841021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408554, -0.203526, 0.889753,
		-0.189684, -0.934606, -0.300884,
		0.892806, -0.291699, 0.343232,
		13.225039, 19.765570, 15.943990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.526052, 19.334467, 16.133535>,  <12.600076, 19.969763, 15.703729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.526052, 19.334467, 16.133535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847962, 19.549896, 16.233353>,  <13.041109, 19.679153, 16.293243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847962, 19.549896, 16.233353>,  <12.526052, 19.334467, 16.133535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.847962, 19.549896, 16.233353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319398, 0.038558, 0.946836,
		0.500320, -0.841695, 0.203051,
		0.804776, 0.538575, 0.249544,
		13.089396, 19.711468, 16.308216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.004087, 20.817263, 18.375275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.654934, 20.995811, 18.296459>,  <19.445442, 21.102940, 18.249170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.654934, 20.995811, 18.296459>,  <20.004087, 20.817263, 18.375275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.654934, 20.995811, 18.296459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138502, -0.160545, -0.977263,
		-0.467854, -0.880329, 0.078314,
		-0.872885, 0.446370, -0.197039,
		19.393068, 21.129723, 18.237347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.698097, 20.385996, 17.906242>,  <20.004087, 20.817263, 18.375275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.698097, 20.385996, 17.906242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.543381, 20.751881, 17.859432>,  <19.450550, 20.971411, 17.831347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.543381, 20.751881, 17.859432>,  <19.698097, 20.385996, 17.906242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.543381, 20.751881, 17.859432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131866, -0.070737, -0.988740,
		-0.912691, -0.397867, -0.093260,
		-0.386790, 0.914712, -0.117026,
		19.427343, 21.026295, 17.824324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.111113, 20.297043, 17.498123>,  <19.698097, 20.385996, 17.906242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.111113, 20.297043, 17.498123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.210827, 20.682331, 17.457994>,  <19.270655, 20.913504, 17.433918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.210827, 20.682331, 17.457994>,  <19.111113, 20.297043, 17.498123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.210827, 20.682331, 17.457994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063918, -0.119730, -0.990747,
		-0.966319, 0.240565, -0.091414,
		0.249284, 0.963220, -0.100321,
		19.285612, 20.971296, 17.427898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.659384, 20.490892, 16.979544>,  <19.111113, 20.297043, 17.498123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.659384, 20.490892, 16.979544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.939182, 20.772842, 17.026627>,  <19.107061, 20.942013, 17.054876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.939182, 20.772842, 17.026627>,  <18.659384, 20.490892, 16.979544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.939182, 20.772842, 17.026627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222076, -0.057850, -0.973312,
		-0.679254, 0.706969, -0.197002,
		0.699497, 0.704875, 0.117706,
		19.149031, 20.984304, 17.061939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.542210, 20.890530, 16.453730>,  <18.659384, 20.490892, 16.979544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.542210, 20.890530, 16.453730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.919231, 20.977737, 16.554974>,  <19.145445, 21.030062, 16.615719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.919231, 20.977737, 16.554974>,  <18.542210, 20.890530, 16.453730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.919231, 20.977737, 16.554974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261814, -0.011520, -0.965050,
		-0.207482, 0.975877, -0.067939,
		0.942552, 0.218018, 0.253108,
		19.201998, 21.043142, 16.630905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.743259, 21.464254, 16.113235>,  <18.542210, 20.890530, 16.453730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.743259, 21.464254, 16.113235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.101337, 21.308727, 16.200361>,  <19.316185, 21.215410, 16.252638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.101337, 21.308727, 16.200361>,  <18.743259, 21.464254, 16.113235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.101337, 21.308727, 16.200361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292575, 0.144034, -0.945333,
		0.336191, 0.909985, 0.242698,
		0.895196, -0.388820, 0.217816,
		19.369896, 21.192081, 16.265707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.190529, 21.931164, 15.904666>,  <18.743259, 21.464254, 16.113235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.190529, 21.931164, 15.904666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.388092, 21.583714, 15.920382>,  <19.506630, 21.375242, 15.929811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.388092, 21.583714, 15.920382>,  <19.190529, 21.931164, 15.904666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.388092, 21.583714, 15.920382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367266, 0.167447, -0.914919,
		0.788145, 0.466314, 0.401721,
		0.493906, -0.868627, 0.039289,
		19.536264, 21.323126, 15.932168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.835928, 22.103336, 15.673217>,  <19.190529, 21.931164, 15.904666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.835928, 22.103336, 15.673217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.803749, 21.708290, 15.619337>,  <19.784441, 21.471262, 15.587009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.803749, 21.708290, 15.619337>,  <19.835928, 22.103336, 15.673217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.803749, 21.708290, 15.619337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377404, 0.094896, -0.921174,
		0.922548, -0.124943, 0.365096,
		-0.080448, -0.987615, -0.134700,
		19.779615, 21.412006, 15.578927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.466112, 21.869627, 15.404612>,  <19.835928, 22.103336, 15.673217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.466112, 21.869627, 15.404612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.204807, 21.587330, 15.294937>,  <20.048025, 21.417952, 15.229133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.204807, 21.587330, 15.294937>,  <20.466112, 21.869627, 15.404612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.204807, 21.587330, 15.294937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495834, -0.125096, -0.859360,
		0.572188, -0.697336, 0.431652,
		-0.653261, -0.705743, -0.274185,
		20.008829, 21.375607, 15.212682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.810440, 21.486729, 14.990437>,  <20.466112, 21.869627, 15.404612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.810440, 21.486729, 14.990437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.445801, 21.346962, 14.903811>,  <20.227018, 21.263102, 14.851834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.445801, 21.346962, 14.903811>,  <20.810440, 21.486729, 14.990437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.445801, 21.346962, 14.903811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281516, -0.146718, -0.948273,
		0.299569, -0.925409, 0.232114,
		-0.911596, -0.349417, -0.216566,
		20.172321, 21.242138, 14.838840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.857475, 20.788645, 14.781474>,  <20.810440, 21.486729, 14.990437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.857475, 20.788645, 14.781474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.516079, 20.921803, 14.621107>,  <20.311241, 21.001698, 14.524887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.516079, 20.921803, 14.621107>,  <20.857475, 20.788645, 14.781474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.516079, 20.921803, 14.621107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372236, -0.148945, -0.916109,
		-0.364685, -0.931126, 0.003207,
		-0.853490, 0.332897, -0.400917,
		20.260033, 21.021671, 14.500832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.687418, 20.280775, 14.253760>,  <20.857475, 20.788645, 14.781474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.687418, 20.280775, 14.253760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.492046, 20.622364, 14.182016>,  <20.374823, 20.827316, 14.138970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.492046, 20.622364, 14.182016>,  <20.687418, 20.280775, 14.253760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.492046, 20.622364, 14.182016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348269, 0.002312, -0.937392,
		-0.800091, -0.520316, -0.298540,
		-0.488430, 0.853971, -0.179360,
		20.345518, 20.878555, 14.128208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.502705, 20.166773, 13.498077>,  <20.687418, 20.280775, 14.253760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.502705, 20.166773, 13.498077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.442486, 20.554222, 13.577175>,  <20.406355, 20.786692, 13.624634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.442486, 20.554222, 13.577175>,  <20.502705, 20.166773, 13.498077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.442486, 20.554222, 13.577175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291465, 0.234622, -0.927362,
		-0.944660, -0.081978, -0.317642,
		-0.150549, 0.968624, 0.197744,
		20.397322, 20.844809, 13.636498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.271475, 20.344469, 12.901546>,  <20.502705, 20.166773, 13.498077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.271475, 20.344469, 12.901546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.341518, 20.706802, 13.055847>,  <20.383545, 20.924202, 13.148428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.341518, 20.706802, 13.055847>,  <20.271475, 20.344469, 12.901546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.341518, 20.706802, 13.055847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239171, 0.340934, -0.909154,
		-0.955057, 0.251464, -0.156948,
		0.175110, 0.905831, 0.385755,
		20.394051, 20.978552, 13.171574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.582758, 20.170843, 12.723374>,  <20.271475, 20.344469, 12.901546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.582758, 20.170843, 12.723374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.512169, 19.802349, 12.584706>,  <19.469814, 19.581253, 12.501506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.512169, 19.802349, 12.584706>,  <19.582758, 20.170843, 12.723374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.512169, 19.802349, 12.584706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226258, -0.304800, 0.925151,
		-0.957948, 0.241703, -0.154647,
		-0.176475, -0.921236, -0.346670,
		19.459227, 19.525978, 12.480705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.942364, 19.910313, 13.153706>,  <19.582758, 20.170843, 12.723374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.942364, 19.910313, 13.153706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.112976, 19.577187, 13.012571>,  <19.215343, 19.377312, 12.927891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.112976, 19.577187, 13.012571>,  <18.942364, 19.910313, 13.153706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.112976, 19.577187, 13.012571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153442, -0.451072, 0.879199,
		-0.891363, -0.320864, -0.320184,
		0.426529, -0.832815, -0.352835,
		19.240934, 19.327343, 12.906721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.507658, 19.273405, 13.428567>,  <18.942364, 19.910313, 13.153706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.507658, 19.273405, 13.428567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.862762, 19.116463, 13.332285>,  <19.075825, 19.022297, 13.274515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.862762, 19.116463, 13.332285>,  <18.507658, 19.273405, 13.428567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.862762, 19.116463, 13.332285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066450, -0.626684, 0.776435,
		-0.455486, -0.673292, -0.582417,
		0.887759, -0.392357, -0.240706,
		19.129089, 18.998756, 13.260073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.398155, 18.550238, 13.394237>,  <18.507658, 19.273405, 13.428567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.398155, 18.550238, 13.394237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.793461, 18.590366, 13.440313>,  <19.030643, 18.614443, 13.467959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.793461, 18.590366, 13.440313>,  <18.398155, 18.550238, 13.394237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.793461, 18.590366, 13.440313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028890, -0.617742, 0.785850,
		0.149996, -0.779956, -0.607594,
		0.988265, 0.100321, 0.115192,
		19.089941, 18.620462, 13.474871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.824221, 17.793480, 13.498480>,  <18.398155, 18.550238, 13.394237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.824221, 17.793480, 13.498480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.040169, 18.084904, 13.667120>,  <19.169737, 18.259758, 13.768304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.040169, 18.084904, 13.667120>,  <18.824221, 17.793480, 13.498480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.040169, 18.084904, 13.667120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095207, -0.550498, 0.829390,
		0.836348, -0.407622, -0.366560,
		0.539868, 0.728558, 0.421600,
		19.202129, 18.303471, 13.793600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.291348, 17.410831, 13.936977>,  <18.824221, 17.793480, 13.498480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.291348, 17.410831, 13.936977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.314610, 17.778683, 14.092363>,  <19.328568, 17.999393, 14.185595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.314610, 17.778683, 14.092363>,  <19.291348, 17.410831, 13.936977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.314610, 17.778683, 14.092363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241515, -0.364603, 0.899297,
		0.968653, -0.146120, 0.200900,
		0.058156, 0.919627, 0.388464,
		19.332056, 18.054571, 14.208902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.709167, 17.422459, 14.581651>,  <19.291348, 17.410831, 13.936977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.709167, 17.422459, 14.581651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.477745, 17.746632, 14.618477>,  <19.338892, 17.941135, 14.640573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.477745, 17.746632, 14.618477>,  <19.709167, 17.422459, 14.581651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.477745, 17.746632, 14.618477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254845, -0.286838, 0.923460,
		0.774808, 0.510810, 0.372486,
		-0.578556, 0.810430, 0.092066,
		19.304178, 17.989761, 14.646097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704195, 17.237738, 15.272057>,  <19.709167, 17.422459, 14.581651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.704195, 17.237738, 15.272057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.457558, 17.546951, 15.212414>,  <19.309576, 17.732479, 15.176628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.457558, 17.546951, 15.212414>,  <19.704195, 17.237738, 15.272057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.457558, 17.546951, 15.212414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334063, -0.085401, 0.938674,
		0.712892, 0.628592, 0.310899,
		-0.616593, 0.773032, -0.149108,
		19.272579, 17.778862, 15.167682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.864260, 17.793316, 15.807817>,  <19.704195, 17.237738, 15.272057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.864260, 17.793316, 15.807817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.489658, 17.862381, 15.685738>,  <19.264896, 17.903820, 15.612491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.489658, 17.862381, 15.685738>,  <19.864260, 17.793316, 15.807817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.489658, 17.862381, 15.685738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321945, -0.078475, 0.943500,
		0.138957, 0.981850, 0.129081,
		-0.936505, 0.172663, -0.305197,
		19.208706, 17.914181, 15.594178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.552244, 18.233181, 16.376183>,  <19.864260, 17.793316, 15.807817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.552244, 18.233181, 16.376183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.232922, 18.123905, 16.161491>,  <19.041328, 18.058340, 16.032677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.232922, 18.123905, 16.161491>,  <19.552244, 18.233181, 16.376183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.232922, 18.123905, 16.161491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583359, 0.129271, 0.801861,
		-0.149676, 0.953235, -0.262564,
		-0.798304, -0.273188, -0.536729,
		18.993431, 18.041948, 16.000473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.006264, 18.744926, 16.534708>,  <19.552244, 18.233181, 16.376183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.006264, 18.744926, 16.534708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.840950, 18.395020, 16.433531>,  <18.741762, 18.185076, 16.372824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.840950, 18.395020, 16.433531>,  <19.006264, 18.744926, 16.534708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.840950, 18.395020, 16.433531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648923, 0.088058, 0.755741,
		-0.638823, 0.476477, -0.604049,
		-0.413284, -0.874766, -0.252943,
		18.716965, 18.132589, 16.357649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.279951, 18.820595, 16.476152>,  <19.006264, 18.744926, 16.534708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.279951, 18.820595, 16.476152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.361122, 18.442188, 16.577246>,  <18.409824, 18.215145, 16.637901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.361122, 18.442188, 16.577246>,  <18.279951, 18.820595, 16.476152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.361122, 18.442188, 16.577246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484802, 0.127184, 0.865327,
		-0.850757, -0.298125, -0.432821,
		0.202928, -0.946015, 0.252735,
		18.422001, 18.158384, 16.653067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.587639, 18.533503, 16.665245>,  <18.279951, 18.820595, 16.476152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.587639, 18.533503, 16.665245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.866398, 18.290173, 16.817177>,  <18.033653, 18.144175, 16.908337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.866398, 18.290173, 16.817177>,  <17.587639, 18.533503, 16.665245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.866398, 18.290173, 16.817177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489230, -0.015995, 0.872008,
		-0.524391, -0.793525, -0.308759,
		0.696899, -0.608327, 0.379829,
		18.075468, 18.107676, 16.931126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.215830, 17.881197, 17.004101>,  <17.587639, 18.533503, 16.665245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.215830, 17.881197, 17.004101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.572502, 17.980728, 17.155359>,  <17.786505, 18.040447, 17.246115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.572502, 17.980728, 17.155359>,  <17.215830, 17.881197, 17.004101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.572502, 17.980728, 17.155359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409245, 0.086111, 0.908352,
		0.193461, -0.964712, 0.178615,
		0.891679, 0.248828, 0.378145,
		17.840006, 18.055376, 17.268803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.891380, 17.281687, 17.160046>,  <17.215830, 17.881197, 17.004101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.891380, 17.281687, 17.160046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.547695, 17.086098, 17.099833>,  <16.341484, 16.968744, 17.063704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.547695, 17.086098, 17.099833>,  <16.891380, 17.281687, 17.160046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.547695, 17.086098, 17.099833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193786, -0.038731, -0.980279,
		0.473499, -0.871439, 0.128034,
		-0.859212, -0.488972, -0.150534,
		16.289932, 16.939405, 17.054672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019472, 16.631502, 16.764252>,  <16.891380, 17.281687, 17.160046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.019472, 16.631502, 16.764252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.637703, 16.724510, 16.689409>,  <16.408642, 16.780315, 16.644503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.637703, 16.724510, 16.689409>,  <17.019472, 16.631502, 16.764252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.637703, 16.724510, 16.689409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173609, -0.077410, -0.981767,
		-0.242764, -0.969506, 0.033515,
		-0.954424, 0.232519, -0.187108,
		16.351376, 16.794266, 16.633276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876234, 16.236746, 16.125837>,  <17.019472, 16.631502, 16.764252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876234, 16.236746, 16.125837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.590683, 16.515625, 16.152060>,  <16.419353, 16.682953, 16.167793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.590683, 16.515625, 16.152060>,  <16.876234, 16.236746, 16.125837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.590683, 16.515625, 16.152060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126506, -0.036320, -0.991301,
		-0.688750, -0.715960, 0.114127,
		-0.713876, 0.697196, 0.065558,
		16.376520, 16.724783, 16.171726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318680, 16.114241, 15.642251>,  <16.876234, 16.236746, 16.125837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318680, 16.114241, 15.642251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.233566, 16.500610, 15.701195>,  <16.182499, 16.732431, 15.736561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.233566, 16.500610, 15.701195>,  <16.318680, 16.114241, 15.642251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.233566, 16.500610, 15.701195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042834, 0.141446, -0.989019,
		-0.976160, -0.216758, 0.011277,
		-0.212783, 0.965924, 0.147359,
		16.169731, 16.790388, 15.745402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.657069, 16.324085, 15.287183>,  <16.318680, 16.114241, 15.642251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.657069, 16.324085, 15.287183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.856072, 16.666859, 15.341068>,  <15.975474, 16.872522, 15.373400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.856072, 16.666859, 15.341068>,  <15.657069, 16.324085, 15.287183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.856072, 16.666859, 15.341068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077004, 0.198313, -0.977109,
		-0.864035, 0.475747, 0.164650,
		0.497509, 0.856935, 0.134715,
		16.005325, 16.923939, 15.381483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.292391, 16.815632, 14.980762>,  <15.657069, 16.324085, 15.287183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.292391, 16.815632, 14.980762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.650079, 16.994682, 14.981573>,  <15.864692, 17.102112, 14.982059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.650079, 16.994682, 14.981573>,  <15.292391, 16.815632, 14.980762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.650079, 16.994682, 14.981573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069368, 0.143044, -0.987282,
		-0.442221, 0.882707, 0.158964,
		0.894220, 0.447624, 0.002026,
		15.918344, 17.128969, 14.982181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.259410, 17.431276, 14.527891>,  <15.292391, 16.815632, 14.980762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.259410, 17.431276, 14.527891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.649684, 17.351788, 14.564877>,  <15.883848, 17.304094, 14.587068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.649684, 17.351788, 14.564877>,  <15.259410, 17.431276, 14.527891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.649684, 17.351788, 14.564877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156425, 0.335844, -0.928838,
		0.153526, 0.920717, 0.358763,
		0.975685, -0.198720, 0.092462,
		15.942389, 17.292171, 14.592615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.594234, 17.950445, 14.228689>,  <15.259410, 17.431276, 14.527891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.594234, 17.950445, 14.228689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.857146, 17.648991, 14.227116>,  <16.014894, 17.468119, 14.226171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.857146, 17.648991, 14.227116>,  <15.594234, 17.950445, 14.228689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.857146, 17.648991, 14.227116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230416, 0.205923, -0.951054,
		0.717558, 0.624204, 0.308999,
		0.657282, -0.753635, -0.003935,
		16.054331, 17.422901, 14.225935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.190916, 18.206800, 13.884028>,  <15.594234, 17.950445, 14.228689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.190916, 18.206800, 13.884028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.232239, 17.808979, 13.889568>,  <16.257032, 17.570286, 13.892892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.232239, 17.808979, 13.889568>,  <16.190916, 18.206800, 13.884028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.232239, 17.808979, 13.889568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318378, 0.019874, -0.947756,
		0.942318, 0.102321, 0.318697,
		0.103309, -0.994553, 0.013849,
		16.263231, 17.510612, 13.893723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.960373, 18.078815, 13.704694>,  <16.190916, 18.206800, 13.884028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.960373, 18.078815, 13.704694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.759136, 17.742275, 13.625671>,  <16.638395, 17.540350, 13.578259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.759136, 17.742275, 13.625671>,  <16.960373, 18.078815, 13.704694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.759136, 17.742275, 13.625671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433070, -0.047606, -0.900102,
		0.747898, -0.538387, 0.388315,
		-0.503090, -0.841352, -0.197555,
		16.608210, 17.489870, 13.566404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.470856, 17.587032, 13.576278>,  <16.960373, 18.078815, 13.704694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.470856, 17.587032, 13.576278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.135777, 17.462566, 13.396751>,  <16.934729, 17.387886, 13.289036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.135777, 17.462566, 13.396751>,  <17.470856, 17.587032, 13.576278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.135777, 17.462566, 13.396751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481244, -0.032056, -0.876000,
		0.258193, -0.949815, 0.176600,
		-0.837700, -0.311165, -0.448816,
		16.884466, 17.369217, 13.262107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680515, 17.218140, 13.049670>,  <17.470856, 17.587032, 13.576278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.680515, 17.218140, 13.049670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.306469, 17.290764, 12.927952>,  <17.082041, 17.334339, 12.854921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.306469, 17.290764, 12.927952>,  <17.680515, 17.218140, 13.049670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.306469, 17.290764, 12.927952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320477, 0.066969, -0.944886,
		-0.151177, -0.981097, -0.120810,
		-0.935115, 0.181562, -0.304295,
		17.025934, 17.345232, 12.836663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.633724, 16.881607, 12.477858>,  <17.680515, 17.218140, 13.049670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.633724, 16.881607, 12.477858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.313488, 17.118656, 12.442402>,  <17.121347, 17.260885, 12.421128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.313488, 17.118656, 12.442402>,  <17.633724, 16.881607, 12.477858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.313488, 17.118656, 12.442402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188750, 0.109012, -0.975956,
		-0.568710, -0.798070, -0.199131,
		-0.800589, 0.592622, -0.088639,
		17.073311, 17.296442, 12.415810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.172304, 16.529921, 12.024628>,  <17.633724, 16.881607, 12.477858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.172304, 16.529921, 12.024628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.070801, 16.916687, 12.014198>,  <17.009899, 17.148746, 12.007940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.070801, 16.916687, 12.014198>,  <17.172304, 16.529921, 12.024628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.070801, 16.916687, 12.014198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230784, 0.034346, -0.972399,
		-0.939332, -0.252772, -0.231864,
		-0.253759, 0.966916, -0.026074,
		16.994673, 17.206762, 12.006376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<13.137974, 18.404367, 16.744167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.258084, 18.785435, 16.763172>,  <13.330151, 19.014074, 16.774574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.258084, 18.785435, 16.763172>,  <13.137974, 18.404367, 16.744167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.258084, 18.785435, 16.763172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138706, -0.092893, 0.985967,
		0.943713, -0.289473, -0.160035,
		0.300277, 0.952668, 0.047512,
		13.348167, 19.071236, 16.777426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.618642, 18.333401, 17.176886>,  <13.137974, 18.404367, 16.744167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.618642, 18.333401, 17.176886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.558850, 18.728561, 17.193394>,  <13.522975, 18.965658, 17.203299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.558850, 18.728561, 17.193394>,  <13.618642, 18.333401, 17.176886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.558850, 18.728561, 17.193394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095200, -0.027164, 0.995088,
		0.984171, 0.152674, -0.089988,
		-0.149480, 0.987903, 0.041269,
		13.514007, 19.024933, 17.205774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.120564, 18.686464, 17.579130>,  <13.618642, 18.333401, 17.176886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.120564, 18.686464, 17.579130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.798779, 18.924026, 17.574739>,  <13.605709, 19.066563, 17.572105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.798779, 18.924026, 17.574739>,  <14.120564, 18.686464, 17.579130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.798779, 18.924026, 17.574739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022219, 0.048556, 0.998573,
		0.593589, 0.803070, -0.052257,
		-0.804461, 0.593904, -0.010979,
		13.557441, 19.102198, 17.571445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.280169, 19.214258, 18.094439>,  <14.120564, 18.686464, 17.579130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.280169, 19.214258, 18.094439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.886310, 19.209835, 18.024763>,  <13.649994, 19.207182, 17.982958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.886310, 19.209835, 18.024763>,  <14.280169, 19.214258, 18.094439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.886310, 19.209835, 18.024763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174396, 0.103005, 0.979273,
		0.007115, 0.994619, -0.103352,
		-0.984650, -0.011057, -0.174190,
		13.590915, 19.206518, 17.972506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.012529, 19.689295, 18.534967>,  <14.280169, 19.214258, 18.094439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.012529, 19.689295, 18.534967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.715981, 19.440002, 18.435406>,  <13.538053, 19.290426, 18.375669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.715981, 19.440002, 18.435406>,  <14.012529, 19.689295, 18.534967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.715981, 19.440002, 18.435406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364506, 0.062541, 0.929099,
		-0.563478, 0.779531, -0.273539,
		-0.741369, -0.623233, -0.248903,
		13.493571, 19.253033, 18.360735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.371733, 20.032217, 18.814848>,  <14.012529, 19.689295, 18.534967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.371733, 20.032217, 18.814848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.287175, 19.645832, 18.755211>,  <13.236441, 19.414001, 18.719429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.287175, 19.645832, 18.755211>,  <13.371733, 20.032217, 18.814848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.287175, 19.645832, 18.755211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284330, -0.085166, 0.954936,
		-0.935131, 0.244258, -0.256649,
		-0.211393, -0.965963, -0.149092,
		13.223758, 19.356043, 18.710484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.633518, 19.913149, 19.051500>,  <13.371733, 20.032217, 18.814848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.633518, 19.913149, 19.051500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.840959, 19.573372, 19.090490>,  <12.965424, 19.369507, 19.113884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.840959, 19.573372, 19.090490>,  <12.633518, 19.913149, 19.051500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.840959, 19.573372, 19.090490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321251, -0.087928, 0.942903,
		-0.792370, -0.520306, -0.318483,
		0.518602, -0.849441, 0.097477,
		12.996539, 19.318539, 19.119734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.160702, 19.477222, 19.447020>,  <12.633518, 19.913149, 19.051500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.160702, 19.477222, 19.447020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.511254, 19.285908, 19.469648>,  <12.721586, 19.171120, 19.483225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.511254, 19.285908, 19.469648>,  <12.160702, 19.477222, 19.447020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.511254, 19.285908, 19.469648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223078, -0.299017, 0.927807,
		-0.426841, -0.825731, -0.368748,
		0.876381, -0.478286, 0.056569,
		12.774169, 19.142422, 19.486620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.043923, 18.820055, 19.809834>,  <12.160702, 19.477222, 19.447020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.043923, 18.820055, 19.809834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.439950, 18.848061, 19.858601>,  <12.677567, 18.864864, 19.887861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.439950, 18.848061, 19.858601>,  <12.043923, 18.820055, 19.809834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.439950, 18.848061, 19.858601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103340, -0.225573, 0.968730,
		0.095326, -0.971707, -0.216097,
		0.990068, 0.070014, 0.121919,
		12.736970, 18.869064, 19.895176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.299623, 18.254650, 20.064123>,  <12.043923, 18.820055, 19.809834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.299623, 18.254650, 20.064123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.574193, 18.519222, 20.185005>,  <12.738935, 18.677965, 20.257534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.574193, 18.519222, 20.185005>,  <12.299623, 18.254650, 20.064123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.574193, 18.519222, 20.185005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171974, -0.256132, 0.951221,
		0.706572, -0.704914, -0.062067,
		0.686426, 0.661432, 0.302203,
		12.780121, 18.717651, 20.275665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.651378, 17.968927, 20.624006>,  <12.299623, 18.254650, 20.064123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.651378, 17.968927, 20.624006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.775062, 18.346115, 20.673319>,  <12.849272, 18.572428, 20.702906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.775062, 18.346115, 20.673319>,  <12.651378, 17.968927, 20.624006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.775062, 18.346115, 20.673319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130670, -0.170531, 0.976650,
		0.941974, -0.285881, -0.175947,
		0.309210, 0.942969, 0.123279,
		12.867825, 18.629005, 20.710302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.234200, 17.918537, 20.997404>,  <12.651378, 17.968927, 20.624006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.234200, 17.918537, 20.997404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.110614, 18.291992, 21.069912>,  <13.036463, 18.516066, 21.113417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.110614, 18.291992, 21.069912>,  <13.234200, 17.918537, 20.997404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.110614, 18.291992, 21.069912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104898, -0.155978, 0.982175,
		0.945271, 0.322472, -0.049745,
		-0.308964, 0.933639, 0.181268,
		13.017924, 18.572084, 21.124292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.670019, 18.235283, 21.440020>,  <13.234200, 17.918537, 20.997404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.670019, 18.235283, 21.440020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.316678, 18.417145, 21.485586>,  <13.104673, 18.526262, 21.512926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.316678, 18.417145, 21.485586>,  <13.670019, 18.235283, 21.440020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.316678, 18.417145, 21.485586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076647, -0.099651, 0.992066,
		0.462400, 0.885075, 0.053179,
		-0.883352, 0.454655, 0.113917,
		13.051672, 18.553541, 21.519762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.624251, 18.855034, 21.905993>,  <13.670019, 18.235283, 21.440020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.624251, 18.855034, 21.905993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.247922, 18.719563, 21.901102>,  <13.022124, 18.638279, 21.898167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.247922, 18.719563, 21.901102>,  <13.624251, 18.855034, 21.905993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.247922, 18.719563, 21.901102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024742, 0.032655, 0.999160,
		-0.337995, 0.940335, -0.039102,
		-0.940823, -0.338678, -0.012228,
		12.965675, 18.617960, 21.897434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.178900, 18.382936, 22.063875>,  <13.624251, 18.855034, 21.905993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.178900, 18.382936, 22.063875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.492381, 18.139473, 22.113422>,  <14.680470, 17.993395, 22.143150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.492381, 18.139473, 22.113422>,  <14.178900, 18.382936, 22.063875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.492381, 18.139473, 22.113422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042948, -0.145843, -0.988375,
		0.619650, 0.779912, -0.088156,
		0.783702, -0.608661, 0.123867,
		14.727491, 17.956875, 22.150583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.678393, 18.552446, 21.572321>,  <14.178900, 18.382936, 22.063875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.678393, 18.552446, 21.572321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.750981, 18.172611, 21.674578>,  <14.794534, 17.944710, 21.735931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.750981, 18.172611, 21.674578>,  <14.678393, 18.552446, 21.572321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.750981, 18.172611, 21.674578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176372, -0.224315, -0.958424,
		0.967451, 0.219012, 0.126775,
		0.181469, -0.949588, 0.255641,
		14.805422, 17.887735, 21.751270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.000703, 18.329496, 21.004827>,  <14.678393, 18.552446, 21.572321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.000703, 18.329496, 21.004827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.958287, 17.983700, 21.201361>,  <14.932837, 17.776222, 21.319281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.958287, 17.983700, 21.201361>,  <15.000703, 18.329496, 21.004827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.958287, 17.983700, 21.201361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223189, -0.502204, -0.835451,
		0.968991, 0.021069, 0.246198,
		-0.106040, -0.864492, 0.491334,
		14.926476, 17.724352, 21.348761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.569322, 17.952475, 20.845234>,  <15.000703, 18.329496, 21.004827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.569322, 17.952475, 20.845234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.258859, 17.716980, 20.935541>,  <15.072581, 17.575684, 20.989725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.258859, 17.716980, 20.935541>,  <15.569322, 17.952475, 20.845234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.258859, 17.716980, 20.935541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153684, -0.523890, -0.837807,
		0.611524, -0.615573, 0.497100,
		-0.776157, -0.588735, 0.225768,
		15.026011, 17.540359, 21.003271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.937750, 17.407171, 20.746763>,  <15.569322, 17.952475, 20.845234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.937750, 17.407171, 20.746763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.549447, 17.311165, 20.744804>,  <15.316465, 17.253561, 20.743629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.549447, 17.311165, 20.744804>,  <15.937750, 17.407171, 20.746763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.549447, 17.311165, 20.744804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102580, -0.396283, -0.912380,
		0.217046, -0.886201, 0.409316,
		-0.970757, -0.240016, -0.004895,
		15.258220, 17.239161, 20.743336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.955539, 16.776197, 20.530291>,  <15.937750, 17.407171, 20.746763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.955539, 16.776197, 20.530291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.578364, 16.893753, 20.467680>,  <15.352059, 16.964287, 20.430113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.578364, 16.893753, 20.467680>,  <15.955539, 16.776197, 20.530291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.578364, 16.893753, 20.467680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018111, -0.424123, -0.905423,
		-0.332477, -0.856592, 0.394599,
		-0.942937, 0.293886, -0.156525,
		15.295484, 16.981920, 20.420723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.533214, 16.208614, 20.198647>,  <15.955539, 16.776197, 20.530291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.533214, 16.208614, 20.198647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.335774, 16.538696, 20.088814>,  <15.217311, 16.736746, 20.022913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.335774, 16.538696, 20.088814>,  <15.533214, 16.208614, 20.198647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.335774, 16.538696, 20.088814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127682, -0.243544, -0.961449,
		-0.860266, -0.509629, 0.014849,
		-0.493599, 0.825206, -0.274584,
		15.187695, 16.786259, 20.006439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203364, 15.826689, 19.591526>,  <15.533214, 16.208614, 20.198647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.203364, 15.826689, 19.591526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.108687, 16.213902, 19.558327>,  <15.051881, 16.446230, 19.538406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.108687, 16.213902, 19.558327>,  <15.203364, 15.826689, 19.591526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.108687, 16.213902, 19.558327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103542, -0.110074, -0.988515,
		-0.966052, -0.225380, 0.126286,
		-0.236692, 0.968033, -0.083001,
		15.037680, 16.504311, 19.533426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.682293, 15.924949, 19.051844>,  <15.203364, 15.826689, 19.591526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.682293, 15.924949, 19.051844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.862073, 16.281639, 19.073093>,  <14.969941, 16.495653, 19.085844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.862073, 16.281639, 19.073093>,  <14.682293, 15.924949, 19.051844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.862073, 16.281639, 19.073093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114965, 0.001235, -0.993369,
		-0.885877, 0.452576, -0.101962,
		0.449449, 0.891725, 0.053124,
		14.996907, 16.549156, 19.089031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.455419, 16.355152, 18.524622>,  <14.682293, 15.924949, 19.051844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.455419, 16.355152, 18.524622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.815103, 16.503475, 18.617510>,  <15.030912, 16.592468, 18.673243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.815103, 16.503475, 18.617510>,  <14.455419, 16.355152, 18.524622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.815103, 16.503475, 18.617510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181788, 0.166131, -0.969203,
		-0.397965, 0.913730, 0.081978,
		0.899209, 0.370806, 0.232219,
		15.084866, 16.614717, 18.687176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.528000, 16.920448, 18.161047>,  <14.455419, 16.355152, 18.524622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.528000, 16.920448, 18.161047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.902091, 16.814293, 18.254786>,  <15.126546, 16.750601, 18.311029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.902091, 16.814293, 18.254786>,  <14.528000, 16.920448, 18.161047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.902091, 16.814293, 18.254786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264117, 0.082167, -0.960984,
		0.235777, 0.960634, 0.146938,
		0.935228, -0.265387, 0.234347,
		15.182659, 16.734676, 18.325090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.010307, 17.333303, 17.767281>,  <14.528000, 16.920448, 18.161047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.010307, 17.333303, 17.767281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.262725, 17.057770, 17.909990>,  <15.414175, 16.892448, 17.995617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.262725, 17.057770, 17.909990>,  <15.010307, 17.333303, 17.767281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.262725, 17.057770, 17.909990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596021, 0.136146, -0.791343,
		0.496532, 0.712018, 0.496475,
		0.631043, -0.688836, 0.356776,
		15.452038, 16.851118, 18.017023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.611938, 17.695004, 17.637413>,  <15.010307, 17.333303, 17.767281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.611938, 17.695004, 17.637413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.682113, 17.304443, 17.687788>,  <15.724218, 17.070107, 17.718014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.682113, 17.304443, 17.687788>,  <15.611938, 17.695004, 17.637413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.682113, 17.304443, 17.687788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688600, 0.030277, -0.724509,
		0.703598, 0.213829, 0.677662,
		0.175439, -0.976402, 0.125940,
		15.734744, 17.011522, 17.725571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293701, 17.625237, 17.655136>,  <15.611938, 17.695004, 17.637413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.293701, 17.625237, 17.655136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.149784, 17.269440, 17.542456>,  <16.063435, 17.055962, 17.474848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.149784, 17.269440, 17.542456>,  <16.293701, 17.625237, 17.655136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.149784, 17.269440, 17.542456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637416, -0.013849, -0.770395,
		0.681359, -0.456742, 0.571959,
		-0.359792, -0.889491, -0.281699,
		16.041847, 17.002592, 17.457947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971352, 17.903959, 17.709902>,  <16.293701, 17.625237, 17.655136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971352, 17.903959, 17.709902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.363583, 17.981133, 17.724039>,  <17.598921, 18.027435, 17.732521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.363583, 17.981133, 17.724039>,  <16.971352, 17.903959, 17.709902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.363583, 17.981133, 17.724039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029295, -0.034112, 0.998988,
		0.193943, -0.980619, -0.027798,
		0.980575, 0.192933, 0.035343,
		17.657755, 18.039013, 17.734642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.262079, 17.442368, 18.160957>,  <16.971352, 17.903959, 17.709902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.262079, 17.442368, 18.160957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.501759, 17.762600, 18.158710>,  <17.645567, 17.954739, 18.157362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.501759, 17.762600, 18.158710>,  <17.262079, 17.442368, 18.160957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.501759, 17.762600, 18.158710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110270, 0.089480, 0.989866,
		0.792969, -0.592508, 0.141896,
		0.599200, 0.800580, -0.005619,
		17.681519, 18.002773, 18.157024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.688208, 17.353771, 18.774340>,  <17.262079, 17.442368, 18.160957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.688208, 17.353771, 18.774340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.689903, 17.744263, 18.687660>,  <17.690922, 17.978558, 18.635653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.689903, 17.744263, 18.687660>,  <17.688208, 17.353771, 18.774340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.689903, 17.744263, 18.687660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181050, 0.213867, 0.959938,
		0.983465, 0.035162, 0.177653,
		0.004240, 0.976230, -0.216697,
		17.691175, 18.037132, 18.622652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075071, 17.685163, 19.304516>,  <17.688208, 17.353771, 18.774340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075071, 17.685163, 19.304516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.842159, 17.969635, 19.146946>,  <17.702412, 18.140318, 19.052404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.842159, 17.969635, 19.146946>,  <18.075071, 17.685163, 19.304516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.842159, 17.969635, 19.146946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168285, 0.368612, 0.914224,
		0.795381, 0.598626, -0.094954,
		-0.582279, 0.711177, -0.393926,
		17.667475, 18.182987, 19.028769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.359514, 18.337193, 19.568460>,  <18.075071, 17.685163, 19.304516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.359514, 18.337193, 19.568460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.979977, 18.404705, 19.461723>,  <17.752254, 18.445211, 19.397682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.979977, 18.404705, 19.461723>,  <18.359514, 18.337193, 19.568460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.979977, 18.404705, 19.461723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198585, 0.338032, 0.919945,
		0.245470, 0.925877, -0.287223,
		-0.948846, 0.168780, -0.266841,
		17.695322, 18.455339, 19.381670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.119633, 19.090914, 19.641047>,  <18.359514, 18.337193, 19.568460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.119633, 19.090914, 19.641047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.782696, 18.877110, 19.668648>,  <17.580534, 18.748827, 19.685207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.782696, 18.877110, 19.668648>,  <18.119633, 19.090914, 19.641047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.782696, 18.877110, 19.668648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159443, 0.369448, 0.915470,
		-0.514820, 0.760137, -0.396425,
		-0.842341, -0.534509, 0.069001,
		17.529993, 18.716757, 19.689348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777386, 19.440374, 20.062574>,  <18.119633, 19.090914, 19.641047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777386, 19.440374, 20.062574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.596069, 19.085621, 20.098261>,  <17.487280, 18.872768, 20.119673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.596069, 19.085621, 20.098261>,  <17.777386, 19.440374, 20.062574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.596069, 19.085621, 20.098261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234617, 0.215275, 0.947951,
		-0.859930, 0.408767, -0.305661,
		-0.453293, -0.886885, 0.089218,
		17.460081, 18.819555, 20.125027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.536373, 20.135185, 20.096712>,  <17.777386, 19.440374, 20.062574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.536373, 20.135185, 20.096712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.784668, 20.374756, 20.299086>,  <17.933645, 20.518499, 20.420509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.784668, 20.374756, 20.299086>,  <17.536373, 20.135185, 20.096712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.784668, 20.374756, 20.299086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298458, 0.416209, -0.858890,
		-0.724989, 0.684145, 0.079601,
		0.620736, 0.598929, 0.505936,
		17.970888, 20.554434, 20.450867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.385241, 20.833538, 19.861532>,  <17.536373, 20.135185, 20.096712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.385241, 20.833538, 19.861532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.754173, 20.844315, 20.015718>,  <17.975533, 20.850780, 20.108231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.754173, 20.844315, 20.015718>,  <17.385241, 20.833538, 19.861532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.754173, 20.844315, 20.015718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356397, 0.326111, -0.875575,
		-0.149295, 0.944947, 0.291180,
		0.922329, 0.026944, 0.385464,
		18.030872, 20.852398, 20.131357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.596802, 21.411894, 19.656124>,  <17.385241, 20.833538, 19.861532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.596802, 21.411894, 19.656124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.927681, 21.216637, 19.767448>,  <18.126209, 21.099482, 19.834242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.927681, 21.216637, 19.767448>,  <17.596802, 21.411894, 19.656124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.927681, 21.216637, 19.767448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470168, 0.330061, -0.818537,
		0.307705, 0.807945, 0.502536,
		0.827200, -0.488144, 0.278309,
		18.175840, 21.070194, 19.850941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.199123, 21.846094, 19.619360>,  <17.596802, 21.411894, 19.656124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.199123, 21.846094, 19.619360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.364281, 21.482407, 19.598051>,  <18.463375, 21.264194, 19.585266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.364281, 21.482407, 19.598051>,  <18.199123, 21.846094, 19.619360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.364281, 21.482407, 19.598051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658477, 0.338412, -0.672224,
		0.629228, 0.242476, 0.738429,
		0.412891, -0.909221, -0.053273,
		18.488148, 21.209641, 19.582069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.962231, 22.066631, 19.652624>,  <18.199123, 21.846094, 19.619360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.962231, 22.066631, 19.652624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.872112, 21.718029, 19.478397>,  <18.818041, 21.508867, 19.373861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.872112, 21.718029, 19.478397>,  <18.962231, 22.066631, 19.652624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.872112, 21.718029, 19.478397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572217, 0.243473, -0.783127,
		0.788549, -0.425674, 0.443837,
		-0.225295, -0.871505, -0.435569,
		18.804523, 21.456577, 19.347727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.471893, 21.854296, 19.317627>,  <18.962231, 22.066631, 19.652624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.471893, 21.854296, 19.317627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.223412, 21.591122, 19.147345>,  <19.074322, 21.433218, 19.045176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.223412, 21.591122, 19.147345>,  <19.471893, 21.854296, 19.317627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.223412, 21.591122, 19.147345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445347, 0.150588, -0.882603,
		0.644801, -0.737866, 0.199463,
		-0.621206, -0.657934, -0.425706,
		19.037050, 21.393742, 19.019632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.906351, 21.584538, 18.840376>,  <19.471893, 21.854296, 19.317627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.906351, 21.584538, 18.840376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.543457, 21.467377, 18.719624>,  <19.325720, 21.397079, 18.647173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.543457, 21.467377, 18.719624>,  <19.906351, 21.584538, 18.840376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.543457, 21.467377, 18.719624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332626, -0.060299, -0.941129,
		0.257457, -0.954239, 0.152132,
		-0.907235, -0.292904, -0.301881,
		19.271286, 21.379505, 18.629059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<12.838847, 21.933741, 21.506416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.713578, 21.585571, 21.354479>,  <12.638416, 21.376669, 21.263315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.713578, 21.585571, 21.354479>,  <12.838847, 21.933741, 21.506416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.713578, 21.585571, 21.354479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356456, 0.262989, -0.896535,
		0.880262, -0.416169, 0.227907,
		-0.313173, -0.870425, -0.379846,
		12.619626, 21.324444, 21.240524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.295373, 21.726965, 21.074625>,  <12.838847, 21.933741, 21.506416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.295373, 21.726965, 21.074625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.970834, 21.553905, 20.917385>,  <12.776110, 21.450069, 20.823042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.970834, 21.553905, 20.917385>,  <13.295373, 21.726965, 21.074625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.970834, 21.553905, 20.917385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342849, 0.192467, -0.919462,
		0.473464, -0.880778, -0.007825,
		-0.811348, -0.432650, -0.393100,
		12.727429, 21.424110, 20.799456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.446917, 21.174879, 20.725410>,  <13.295373, 21.726965, 21.074625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.446917, 21.174879, 20.725410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.102887, 21.274212, 20.547150>,  <12.896470, 21.333811, 20.440193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.102887, 21.274212, 20.547150>,  <13.446917, 21.174879, 20.725410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.102887, 21.274212, 20.547150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466801, 0.030604, -0.883833,
		-0.205845, -0.968192, -0.142244,
		-0.860072, 0.248332, -0.445653,
		12.844866, 21.348711, 20.413454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.484815, 20.853022, 20.157808>,  <13.446917, 21.174879, 20.725410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.484815, 20.853022, 20.157808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.195655, 21.119823, 20.085674>,  <13.022159, 21.279905, 20.042393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.195655, 21.119823, 20.085674>,  <13.484815, 20.853022, 20.157808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.195655, 21.119823, 20.085674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363237, 0.144836, -0.920370,
		-0.587771, -0.730840, -0.346983,
		-0.722900, 0.667004, -0.180337,
		12.978785, 21.319925, 20.031572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.262655, 20.742891, 19.437664>,  <13.484815, 20.853022, 20.157808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.262655, 20.742891, 19.437664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.137710, 21.116642, 19.506216>,  <13.062742, 21.340893, 19.547346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.137710, 21.116642, 19.506216>,  <13.262655, 20.742891, 19.437664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.137710, 21.116642, 19.506216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268636, 0.259925, -0.927509,
		-0.911188, -0.243683, -0.332199,
		-0.312365, 0.934375, 0.171379,
		13.044000, 21.396955, 19.557631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.111042, 20.966398, 18.796783>,  <13.262655, 20.742891, 19.437664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.111042, 20.966398, 18.796783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.105876, 21.316544, 18.990101>,  <13.102777, 21.526630, 19.106091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.105876, 21.316544, 18.990101>,  <13.111042, 20.966398, 18.796783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.105876, 21.316544, 18.990101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263968, 0.469170, -0.842734,
		-0.964445, 0.116691, -0.237127,
		-0.012914, 0.875364, 0.483292,
		13.102002, 21.579153, 19.135088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.611180, 21.502796, 18.393051>,  <13.111042, 20.966398, 18.796783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.611180, 21.502796, 18.393051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.892062, 21.680645, 18.615482>,  <13.060591, 21.787354, 18.748941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.892062, 21.680645, 18.615482>,  <12.611180, 21.502796, 18.393051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.892062, 21.680645, 18.615482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222385, 0.604987, -0.764549,
		-0.676354, 0.660532, 0.325948,
		0.702204, 0.444620, 0.556078,
		13.102723, 21.814032, 18.782307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.503603, 22.234028, 18.073099>,  <12.611180, 21.502796, 18.393051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.503603, 22.234028, 18.073099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.832553, 22.191212, 18.296614>,  <13.029923, 22.165522, 18.430721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.832553, 22.191212, 18.296614>,  <12.503603, 22.234028, 18.073099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.832553, 22.191212, 18.296614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503580, 0.594014, -0.627339,
		-0.264774, 0.797301, 0.542407,
		0.822376, -0.107042, 0.558785,
		13.079266, 22.159100, 18.464249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.692931, 22.912329, 18.391205>,  <12.503603, 22.234028, 18.073099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.692931, 22.912329, 18.391205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.012254, 22.676022, 18.344389>,  <13.203847, 22.534237, 18.316299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.012254, 22.676022, 18.344389>,  <12.692931, 22.912329, 18.391205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.012254, 22.676022, 18.344389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364121, 0.628248, -0.687546,
		0.479712, 0.506256, 0.716646,
		0.798306, -0.590770, -0.117040,
		13.251745, 22.498791, 18.309277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.287259, 23.384859, 18.303158>,  <12.692931, 22.912329, 18.391205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.287259, 23.384859, 18.303158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.456580, 23.041790, 18.186394>,  <13.558173, 22.835949, 18.116335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.456580, 23.041790, 18.186394>,  <13.287259, 23.384859, 18.303158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.456580, 23.041790, 18.186394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581181, 0.504235, -0.638730,
		0.695013, 0.100723, 0.711907,
		0.423303, -0.857672, -0.291911,
		13.583571, 22.784489, 18.098820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.987674, 23.541506, 18.270203>,  <13.287259, 23.384859, 18.303158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.987674, 23.541506, 18.270203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.912242, 23.243309, 18.014492>,  <13.866983, 23.064390, 17.861065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.912242, 23.243309, 18.014492>,  <13.987674, 23.541506, 18.270203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.912242, 23.243309, 18.014492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703804, 0.351399, -0.617396,
		0.684907, -0.566355, 0.458415,
		-0.188579, -0.745494, -0.639279,
		13.855668, 23.019661, 17.822708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.597038, 23.368029, 18.040192>,  <13.987674, 23.541506, 18.270203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.597038, 23.368029, 18.040192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.342504, 23.219318, 17.769825>,  <14.189783, 23.130093, 17.607605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.342504, 23.219318, 17.769825>,  <14.597038, 23.368029, 18.040192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.342504, 23.219318, 17.769825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685039, 0.130524, -0.716718,
		0.354681, -0.919101, 0.171623,
		-0.636336, -0.371775, -0.675915,
		14.151603, 23.107786, 17.567051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.406089, 22.947104, 18.050798>,  <14.597038, 23.368029, 18.040192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.406089, 22.947104, 18.050798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.678632, 23.195309, 18.206087>,  <15.842157, 23.344233, 18.299259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.678632, 23.195309, 18.206087>,  <15.406089, 22.947104, 18.050798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.678632, 23.195309, 18.206087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258244, -0.292488, 0.920739,
		0.684882, -0.727607, -0.039045,
		0.681357, 0.620515, 0.388220,
		15.883039, 23.381464, 18.322554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.712415, 22.610035, 18.491058>,  <15.406089, 22.947104, 18.050798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.712415, 22.610035, 18.491058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.836177, 22.967854, 18.620087>,  <15.910434, 23.182545, 18.697504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.836177, 22.967854, 18.620087>,  <15.712415, 22.610035, 18.491058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.836177, 22.967854, 18.620087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019448, -0.333195, 0.942657,
		0.950731, -0.297936, -0.085695,
		0.309405, 0.894547, 0.322573,
		15.928998, 23.236217, 18.716858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223324, 22.419937, 18.941971>,  <15.712415, 22.610035, 18.491058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223324, 22.419937, 18.941971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.074593, 22.780846, 19.029287>,  <15.985353, 22.997391, 19.081678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.074593, 22.780846, 19.029287>,  <16.223324, 22.419937, 18.941971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.074593, 22.780846, 19.029287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181943, -0.301426, 0.935969,
		0.910296, 0.308304, 0.276241,
		-0.371830, 0.902270, 0.218293,
		15.963043, 23.051527, 19.094774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.629061, 22.570311, 19.538025>,  <16.223324, 22.419937, 18.941971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.629061, 22.570311, 19.538025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.315243, 22.818336, 19.536518>,  <16.126953, 22.967152, 19.535614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.315243, 22.818336, 19.536518>,  <16.629061, 22.570311, 19.538025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.315243, 22.818336, 19.536518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142465, -0.174339, 0.974325,
		0.603487, 0.764936, 0.225113,
		-0.784543, 0.620063, -0.003765,
		16.079880, 23.004356, 19.535389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743774, 22.975374, 20.115923>,  <16.629061, 22.570311, 19.538025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.743774, 22.975374, 20.115923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.358326, 23.013111, 20.015898>,  <16.127056, 23.035753, 19.955883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.358326, 23.013111, 20.015898>,  <16.743774, 22.975374, 20.115923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.358326, 23.013111, 20.015898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260967, -0.130164, 0.956532,
		0.057692, 0.986994, 0.150049,
		-0.963622, 0.094342, -0.250064,
		16.069239, 23.041414, 19.940878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.581812, 23.261810, 20.667458>,  <16.743774, 22.975374, 20.115923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.581812, 23.261810, 20.667458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.243271, 23.166454, 20.476940>,  <16.040146, 23.109241, 20.362629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.243271, 23.166454, 20.476940>,  <16.581812, 23.261810, 20.667458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.243271, 23.166454, 20.476940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439737, -0.191827, 0.877402,
		-0.300530, 0.952036, 0.057525,
		-0.846353, -0.238390, -0.476295,
		15.989365, 23.094938, 20.334051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.062328, 23.673792, 20.994562>,  <16.581812, 23.261810, 20.667458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.062328, 23.673792, 20.994562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.881938, 23.350697, 20.842680>,  <15.773704, 23.156839, 20.751551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.881938, 23.350697, 20.842680>,  <16.062328, 23.673792, 20.994562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.881938, 23.350697, 20.842680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604047, -0.036980, 0.796090,
		-0.657075, 0.588378, -0.471236,
		-0.450976, -0.807740, -0.379707,
		15.746645, 23.108376, 20.728767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.429474, 23.782263, 21.261154>,  <16.062328, 23.673792, 20.994562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.429474, 23.782263, 21.261154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.442895, 23.398460, 21.149282>,  <15.450948, 23.168179, 21.082159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.442895, 23.398460, 21.149282>,  <15.429474, 23.782263, 21.261154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442895, 23.398460, 21.149282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543703, -0.252331, 0.800448,
		-0.838607, 0.125206, -0.530153,
		0.033553, -0.959506, -0.279681,
		15.452961, 23.110609, 21.065378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.695266, 23.552481, 21.375572>,  <15.429474, 23.782263, 21.261154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.695266, 23.552481, 21.375572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.920995, 23.222275, 21.378906>,  <15.056432, 23.024151, 21.380907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.920995, 23.222275, 21.378906>,  <14.695266, 23.552481, 21.375572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.920995, 23.222275, 21.378906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307935, -0.201115, 0.929908,
		-0.765975, -0.527334, -0.367698,
		0.564322, -0.825513, 0.008336,
		15.090291, 22.974621, 21.381407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.294183, 23.067589, 21.642399>,  <14.695266, 23.552481, 21.375572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.294183, 23.067589, 21.642399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.674132, 22.953220, 21.692972>,  <14.902102, 22.884600, 21.723316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.674132, 22.953220, 21.692972>,  <14.294183, 23.067589, 21.642399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.674132, 22.953220, 21.692972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196977, -0.233308, 0.952244,
		-0.242791, -0.929411, -0.277936,
		0.949870, -0.285942, 0.126427,
		14.959095, 22.867443, 21.730902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.285643, 22.435369, 21.952774>,  <14.294183, 23.067589, 21.642399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.285643, 22.435369, 21.952774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.647645, 22.575172, 22.049776>,  <14.864846, 22.659054, 22.107977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.647645, 22.575172, 22.049776>,  <14.285643, 22.435369, 21.952774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.647645, 22.575172, 22.049776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078903, -0.422261, 0.903034,
		0.418016, -0.836386, -0.354572,
		0.905007, 0.349506, 0.242505,
		14.919147, 22.680023, 22.122528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.609975, 21.888155, 22.320786>,  <14.285643, 22.435369, 21.952774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.609975, 21.888155, 22.320786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.835420, 22.201305, 22.426199>,  <14.970687, 22.389194, 22.489447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.835420, 22.201305, 22.426199>,  <14.609975, 21.888155, 22.320786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.835420, 22.201305, 22.426199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058405, -0.280464, 0.958086,
		0.823972, -0.555381, -0.112350,
		0.563613, 0.782874, 0.263532,
		15.004503, 22.436167, 22.505259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.170912, 21.564875, 22.532242>,  <14.609975, 21.888155, 22.320786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.170912, 21.564875, 22.532242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.152139, 21.928677, 22.697456>,  <15.140875, 22.146957, 22.796585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.152139, 21.928677, 22.697456>,  <15.170912, 21.564875, 22.532242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.152139, 21.928677, 22.697456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022491, -0.414352, 0.909839,
		0.998645, 0.033412, 0.039903,
		-0.046933, 0.909503, 0.413039,
		15.138059, 22.201529, 22.821367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.747820, 21.714268, 22.981199>,  <15.170912, 21.564875, 22.532242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.747820, 21.714268, 22.981199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.388539, 21.872536, 23.057806>,  <15.172971, 21.967497, 23.103769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.388539, 21.872536, 23.057806>,  <15.747820, 21.714268, 22.981199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.388539, 21.872536, 23.057806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091968, -0.595180, 0.798312,
		0.429854, 0.699433, 0.570981,
		-0.898202, 0.395669, 0.191515,
		15.119079, 21.991236, 23.115261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.205404, 21.340611, 22.550257>,  <15.747820, 21.714268, 22.981199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.205404, 21.340611, 22.550257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.283810, 20.962215, 22.653553>,  <16.330853, 20.735178, 22.715530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.283810, 20.962215, 22.653553>,  <16.205404, 21.340611, 22.550257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.283810, 20.962215, 22.653553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776057, -0.011331, -0.630561,
		0.599429, 0.324005, 0.731919,
		0.196012, -0.945987, 0.258239,
		16.342613, 20.678419, 22.731024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.948193, 21.292442, 22.806095>,  <16.205404, 21.340611, 22.550257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.948193, 21.292442, 22.806095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.823940, 20.928226, 22.696972>,  <16.749388, 20.709698, 22.631498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.823940, 20.928226, 22.696972>,  <16.948193, 21.292442, 22.806095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.823940, 20.928226, 22.696972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805442, -0.099740, -0.584222,
		0.504748, -0.401208, 0.764370,
		-0.310633, -0.910540, -0.272806,
		16.730751, 20.655064, 22.615129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.529749, 20.945219, 22.872618>,  <16.948193, 21.292442, 22.806095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.529749, 20.945219, 22.872618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.303146, 20.723782, 22.628452>,  <17.167185, 20.590919, 22.481953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.303146, 20.723782, 22.628452>,  <17.529749, 20.945219, 22.872618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.303146, 20.723782, 22.628452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727622, 0.011685, -0.685878,
		0.386831, -0.832704, 0.396188,
		-0.566504, -0.553595, -0.610415,
		17.133196, 20.557703, 22.445328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.982153, 20.521513, 22.567642>,  <17.529749, 20.945219, 22.872618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.982153, 20.521513, 22.567642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.674061, 20.500957, 22.313366>,  <17.489204, 20.488625, 22.160801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.674061, 20.500957, 22.313366>,  <17.982153, 20.521513, 22.567642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.674061, 20.500957, 22.313366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636711, -0.004685, -0.771089,
		0.036649, -0.998668, 0.036330,
		-0.770231, -0.051391, -0.635691,
		17.442991, 20.485540, 22.122660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.103762, 20.002674, 22.118052>,  <17.982153, 20.521513, 22.567642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.103762, 20.002674, 22.118052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.876804, 20.264313, 21.917961>,  <17.740631, 20.421295, 21.797907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.876804, 20.264313, 21.917961>,  <18.103762, 20.002674, 22.118052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.876804, 20.264313, 21.917961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608892, -0.075698, -0.789633,
		-0.554362, -0.752614, -0.355324,
		-0.567392, 0.654096, -0.500225,
		17.706587, 20.460541, 21.767893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.212063, 19.721308, 21.446127>,  <18.103762, 20.002674, 22.118052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.212063, 19.721308, 21.446127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.022148, 20.066536, 21.377209>,  <17.908199, 20.273672, 21.335857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.022148, 20.066536, 21.377209>,  <18.212063, 19.721308, 21.446127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.022148, 20.066536, 21.377209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405549, 0.040802, -0.913162,
		-0.781094, -0.503431, -0.369390,
		-0.474786, 0.863071, -0.172296,
		17.879713, 20.325457, 21.325520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.896400, 19.747715, 20.806778>,  <18.212063, 19.721308, 21.446127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.896400, 19.747715, 20.806778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.938240, 20.140156, 20.871891>,  <17.963345, 20.375620, 20.910959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.938240, 20.140156, 20.871891>,  <17.896400, 19.747715, 20.806778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.938240, 20.140156, 20.871891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238922, 0.134099, -0.961735,
		-0.965389, 0.139490, -0.220380,
		0.104600, 0.981101, 0.162785,
		17.969620, 20.434486, 20.920727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.163536, 19.592140, 20.501595>,  <17.896400, 19.747715, 20.806778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.163536, 19.592140, 20.501595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.180382, 19.192650, 20.512733>,  <17.190489, 18.952955, 20.519417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.180382, 19.192650, 20.512733>,  <17.163536, 19.592140, 20.501595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.180382, 19.192650, 20.512733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130171, 0.022150, 0.991244,
		-0.990597, -0.045368, -0.129072,
		0.042112, -0.998725, 0.027847,
		17.193016, 18.893032, 20.521088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.818554, 19.437977, 21.028536>,  <17.163536, 19.592140, 20.501595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.818554, 19.437977, 21.028536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.991924, 19.079510, 20.990536>,  <17.095947, 18.864429, 20.967735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.991924, 19.079510, 20.990536>,  <16.818554, 19.437977, 21.028536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.991924, 19.079510, 20.990536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131529, -0.167194, 0.977111,
		-0.891538, -0.411011, -0.190339,
		0.433427, -0.896167, -0.095000,
		17.121952, 18.810659, 20.962036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.485806, 19.010521, 21.508530>,  <16.818554, 19.437977, 21.028536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.485806, 19.010521, 21.508530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.822662, 18.799896, 21.462004>,  <17.024776, 18.673521, 21.434088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.822662, 18.799896, 21.462004>,  <16.485806, 19.010521, 21.508530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.822662, 18.799896, 21.462004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006283, -0.206102, 0.978510,
		-0.539219, -0.824776, -0.170258,
		0.842143, -0.526561, -0.116316,
		17.075306, 18.641928, 21.427109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.279633, 18.338211, 21.693478>,  <16.485806, 19.010521, 21.508530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.279633, 18.338211, 21.693478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.676857, 18.336803, 21.740490>,  <16.915192, 18.335958, 21.768698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.676857, 18.336803, 21.740490>,  <16.279633, 18.338211, 21.693478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.676857, 18.336803, 21.740490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113154, -0.300334, 0.947099,
		0.031966, -0.953828, -0.298648,
		0.993063, -0.003518, 0.117530,
		16.974775, 18.335749, 21.775749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.528856, 17.699902, 22.019585>,  <16.279633, 18.338211, 21.693478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.528856, 17.699902, 22.019585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.832066, 17.953537, 22.080685>,  <17.013992, 18.105719, 22.117344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.832066, 17.953537, 22.080685>,  <16.528856, 17.699902, 22.019585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.832066, 17.953537, 22.080685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082192, -0.325200, 0.942066,
		0.647027, -0.701554, -0.298627,
		0.758024, 0.634087, 0.152751,
		17.059473, 18.143763, 22.126511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955343, 17.346390, 22.306461>,  <16.528856, 17.699902, 22.019585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.955343, 17.346390, 22.306461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.139374, 17.690273, 22.395218>,  <17.249792, 17.896603, 22.448471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.139374, 17.690273, 22.395218>,  <16.955343, 17.346390, 22.306461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.139374, 17.690273, 22.395218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208265, -0.347431, 0.914285,
		0.863109, -0.374428, -0.338891,
		0.460075, 0.859706, 0.221891,
		17.277397, 17.948185, 22.461784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773924, 17.235052, 22.511335>,  <16.955343, 17.346390, 22.306461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773924, 17.235052, 22.511335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.625637, 17.567650, 22.676832>,  <17.536665, 17.767208, 22.776131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.625637, 17.567650, 22.676832>,  <17.773924, 17.235052, 22.511335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.625637, 17.567650, 22.676832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227046, -0.350832, 0.908497,
		0.900566, 0.430734, -0.058728,
		-0.370717, 0.831495, 0.413744,
		17.514421, 17.817099, 22.800955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143309, 17.332838, 23.017389>,  <17.773924, 17.235052, 22.511335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143309, 17.332838, 23.017389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.875591, 17.611328, 23.121168>,  <17.714960, 17.778423, 23.183435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.875591, 17.611328, 23.121168>,  <18.143309, 17.332838, 23.017389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.875591, 17.611328, 23.121168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145694, -0.219432, 0.964688,
		0.728573, 0.683460, 0.045428,
		-0.669294, 0.696227, 0.259448,
		17.674803, 17.820196, 23.199003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.412962, 17.643269, 23.660955>,  <18.143309, 17.332838, 23.017389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.412962, 17.643269, 23.660955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.015999, 17.690369, 23.646730>,  <17.777821, 17.718630, 23.638195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.015999, 17.690369, 23.646730>,  <18.412962, 17.643269, 23.660955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.015999, 17.690369, 23.646730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070763, -0.310071, 0.948076,
		0.100612, 0.943393, 0.316049,
		-0.992406, 0.117752, -0.035561,
		17.718277, 17.725695, 23.636063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.777052, 20.582188, 7.918774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.378479, 20.550598, 7.930696>,  <19.139336, 20.531645, 7.937850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.378479, 20.550598, 7.930696>,  <19.777052, 20.582188, 7.918774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.378479, 20.550598, 7.930696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014558, 0.187034, 0.982246,
		-0.083148, 0.979174, -0.185217,
		-0.996431, -0.078975, 0.029806,
		19.079550, 20.526905, 7.939638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.456827, 21.258530, 8.256497>,  <19.777052, 20.582188, 7.918774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.456827, 21.258530, 8.256497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.210026, 20.947857, 8.307208>,  <19.061945, 20.761454, 8.337635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.210026, 20.947857, 8.307208>,  <19.456827, 21.258530, 8.256497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.210026, 20.947857, 8.307208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053193, 0.201889, 0.977963,
		-0.785161, 0.596662, -0.165880,
		-0.617003, -0.776682, 0.126777,
		19.024925, 20.714851, 8.345242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.069248, 21.450655, 8.818305>,  <19.456827, 21.258530, 8.256497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.069248, 21.450655, 8.818305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.981777, 21.061268, 8.791351>,  <18.929295, 20.827635, 8.775179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.981777, 21.061268, 8.791351>,  <19.069248, 21.450655, 8.818305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.981777, 21.061268, 8.791351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075948, -0.051866, 0.995762,
		-0.972837, 0.222868, -0.062591,
		-0.218677, -0.973468, -0.067384,
		18.916174, 20.769228, 8.771136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.482826, 21.220493, 9.224210>,  <19.069248, 21.450655, 8.818305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.482826, 21.220493, 9.224210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.683300, 20.877773, 9.175693>,  <18.803583, 20.672142, 9.146583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.683300, 20.877773, 9.175693>,  <18.482826, 21.220493, 9.224210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.683300, 20.877773, 9.175693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010600, -0.134078, 0.990914,
		-0.865277, -0.497914, -0.058115,
		0.501182, -0.856799, -0.121292,
		18.833654, 20.620733, 9.139305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.187996, 20.795279, 9.671950>,  <18.482826, 21.220493, 9.224210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.187996, 20.795279, 9.671950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.540272, 20.626205, 9.586417>,  <18.751637, 20.524761, 9.535097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.540272, 20.626205, 9.586417>,  <18.187996, 20.795279, 9.671950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.540272, 20.626205, 9.586417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163193, -0.153046, 0.974651,
		-0.444694, -0.893262, -0.065807,
		0.880690, -0.422683, -0.213833,
		18.804480, 20.499401, 9.522267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.176447, 20.179052, 10.107272>,  <18.187996, 20.795279, 9.671950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.176447, 20.179052, 10.107272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.560715, 20.215248, 10.002254>,  <18.791275, 20.236965, 9.939244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.560715, 20.215248, 10.002254>,  <18.176447, 20.179052, 10.107272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.560715, 20.215248, 10.002254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277373, -0.266722, 0.922997,
		0.013498, -0.959516, -0.281331,
		0.960667, 0.090492, -0.262543,
		18.848915, 20.242395, 9.923491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.470158, 19.600676, 10.253950>,  <18.176447, 20.179052, 10.107272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.470158, 19.600676, 10.253950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.787014, 19.844128, 10.235700>,  <18.977127, 19.990198, 10.224750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.787014, 19.844128, 10.235700>,  <18.470158, 19.600676, 10.253950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.787014, 19.844128, 10.235700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339033, -0.376629, 0.862095,
		0.507512, -0.698370, -0.504689,
		0.792141, 0.608630, -0.045627,
		19.024656, 20.026716, 10.222012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.196226, 19.172083, 10.338695>,  <18.470158, 19.600676, 10.253950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.196226, 19.172083, 10.338695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.261192, 19.549370, 10.454600>,  <19.300173, 19.775742, 10.524143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.261192, 19.549370, 10.454600>,  <19.196226, 19.172083, 10.338695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261192, 19.549370, 10.454600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306018, -0.327333, 0.893983,
		0.938069, -0.056523, -0.341806,
		0.162415, 0.943217, 0.289764,
		19.309917, 19.832335, 10.541530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.861906, 19.076334, 10.718774>,  <19.196226, 19.172083, 10.338695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.861906, 19.076334, 10.718774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.702995, 19.433399, 10.803932>,  <19.607649, 19.647638, 10.855027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.702995, 19.433399, 10.803932>,  <19.861906, 19.076334, 10.718774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.702995, 19.433399, 10.803932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193298, -0.145387, 0.970309,
		0.897111, 0.426632, -0.114791,
		-0.397276, 0.892663, 0.212895,
		19.583813, 19.701199, 10.867801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.378428, 19.434654, 11.208376>,  <19.861906, 19.076334, 10.718774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.378428, 19.434654, 11.208376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.011967, 19.592350, 11.237335>,  <19.792089, 19.686968, 11.254711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.011967, 19.592350, 11.237335>,  <20.378428, 19.434654, 11.208376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.011967, 19.592350, 11.237335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098733, 0.046897, 0.994008,
		0.388482, 0.917811, -0.081889,
		-0.916152, 0.394239, 0.072399,
		19.737122, 19.710621, 11.259055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.456457, 19.736050, 11.787325>,  <20.378428, 19.434654, 11.208376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.456457, 19.736050, 11.787325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.061405, 19.716526, 11.727719>,  <19.824373, 19.704813, 11.691957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.061405, 19.716526, 11.727719>,  <20.456457, 19.736050, 11.787325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.061405, 19.716526, 11.727719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131207, -0.263129, 0.955797,
		-0.085859, 0.963525, 0.253470,
		-0.987630, -0.048807, -0.149013,
		19.765116, 19.701883, 11.683016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.115456, 20.157595, 12.207632>,  <20.456457, 19.736050, 11.787325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.115456, 20.157595, 12.207632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.860035, 19.859459, 12.130987>,  <19.706781, 19.680576, 12.085000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.860035, 19.859459, 12.130987>,  <20.115456, 20.157595, 12.207632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860035, 19.859459, 12.130987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035210, -0.220428, 0.974768,
		-0.768771, 0.629188, 0.114512,
		-0.638554, -0.745341, -0.191612,
		19.668468, 19.635857, 12.073503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954376, 20.854088, 12.345317>,  <20.115456, 20.157595, 12.207632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954376, 20.854088, 12.345317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.223263, 21.042919, 12.573444>,  <20.384596, 21.156218, 12.710320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.223263, 21.042919, 12.573444>,  <19.954376, 20.854088, 12.345317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.223263, 21.042919, 12.573444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268734, 0.562209, -0.782115,
		-0.689858, 0.679016, 0.251064,
		0.672219, 0.472079, 0.570319,
		20.424929, 21.184544, 12.744540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.851833, 21.538176, 12.209654>,  <19.954376, 20.854088, 12.345317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.851833, 21.538176, 12.209654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.220509, 21.476959, 12.352242>,  <20.441713, 21.440229, 12.437795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.220509, 21.476959, 12.352242>,  <19.851833, 21.538176, 12.209654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.220509, 21.476959, 12.352242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387914, 0.354278, -0.850887,
		0.003932, 0.922532, 0.385901,
		0.921687, -0.153042, 0.356470,
		20.497015, 21.431047, 12.459183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.237860, 22.109077, 12.239549>,  <19.851833, 21.538176, 12.209654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.237860, 22.109077, 12.239549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.513096, 21.821911, 12.197345>,  <20.678238, 21.649611, 12.172023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.513096, 21.821911, 12.197345>,  <20.237860, 22.109077, 12.239549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.513096, 21.821911, 12.197345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378077, 0.478816, -0.792334,
		0.619348, 0.505306, 0.600895,
		0.688089, -0.717915, -0.105509,
		20.719522, 21.606537, 12.165692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.853458, 22.424589, 12.039651>,  <20.237860, 22.109077, 12.239549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.853458, 22.424589, 12.039651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.928642, 22.043953, 11.942371>,  <20.973753, 21.815571, 11.884004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.928642, 22.043953, 11.942371>,  <20.853458, 22.424589, 12.039651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.928642, 22.043953, 11.942371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370635, 0.298023, -0.879666,
		0.909561, 0.075202, 0.408709,
		0.187958, -0.951592, -0.243198,
		20.985029, 21.758476, 11.869412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.537025, 22.458696, 11.670320>,  <20.853458, 22.424589, 12.039651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.537025, 22.458696, 11.670320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.346844, 22.123638, 11.562772>,  <21.232735, 21.922604, 11.498243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.346844, 22.123638, 11.562772>,  <21.537025, 22.458696, 11.670320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.346844, 22.123638, 11.562772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388603, 0.074218, -0.918411,
		0.789259, -0.541147, 0.290224,
		-0.475456, -0.837646, -0.268869,
		21.204206, 21.872345, 11.482111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.968613, 22.200436, 11.140522>,  <21.537025, 22.458696, 11.670320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.968613, 22.200436, 11.140522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.642033, 21.974499, 11.092588>,  <21.446085, 21.838936, 11.063828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.642033, 21.974499, 11.092588>,  <21.968613, 22.200436, 11.140522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.642033, 21.974499, 11.092588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273017, -0.194764, -0.942087,
		0.508793, -0.801884, 0.313227,
		-0.816450, -0.564844, -0.119833,
		21.397097, 21.805046, 11.056639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.192739, 21.689039, 10.772343>,  <21.968613, 22.200436, 11.140522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.192739, 21.689039, 10.772343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.795753, 21.684834, 10.723508>,  <21.557562, 21.682310, 10.694207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.795753, 21.684834, 10.723508>,  <22.192739, 21.689039, 10.772343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.795753, 21.684834, 10.723508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122449, -0.122993, -0.984824,
		-0.004660, -0.992352, 0.123353,
		-0.992464, -0.010515, -0.122086,
		21.498014, 21.681679, 10.686882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.071451, 21.063229, 10.435956>,  <22.192739, 21.689039, 10.772343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.071451, 21.063229, 10.435956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.756866, 21.300144, 10.365900>,  <21.568115, 21.442293, 10.323867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.756866, 21.300144, 10.365900>,  <22.071451, 21.063229, 10.435956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.756866, 21.300144, 10.365900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088843, -0.172132, -0.981059,
		-0.611218, -0.787124, 0.082754,
		-0.786460, 0.592289, -0.175140,
		21.520927, 21.477831, 10.313358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.844452, 20.788551, 9.844082>,  <22.071451, 21.063229, 10.435956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.844452, 20.788551, 9.844082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.625301, 21.122581, 9.864000>,  <21.493811, 21.323000, 9.875952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.625301, 21.122581, 9.864000>,  <21.844452, 20.788551, 9.844082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.625301, 21.122581, 9.864000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233566, -0.095536, -0.967636,
		-0.803293, -0.541775, 0.247387,
		-0.547875, 0.835076, 0.049797,
		21.460939, 21.373104, 9.878940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.207867, 20.570595, 9.498041>,  <21.844452, 20.788551, 9.844082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.207867, 20.570595, 9.498041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.247250, 20.968651, 9.497012>,  <21.270880, 21.207483, 9.496394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.247250, 20.968651, 9.497012>,  <21.207867, 20.570595, 9.498041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.247250, 20.968651, 9.497012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273945, 0.024618, -0.961430,
		-0.956693, 0.095364, 0.275037,
		0.098456, 0.995138, -0.002573,
		21.276787, 21.267193, 9.496241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.596159, 20.854004, 9.236022>,  <21.207867, 20.570595, 9.498041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.596159, 20.854004, 9.236022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.858498, 21.150986, 9.181437>,  <21.015902, 21.329176, 9.148685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.858498, 21.150986, 9.181437>,  <20.596159, 20.854004, 9.236022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.858498, 21.150986, 9.181437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411447, 0.200014, -0.889216,
		-0.632909, 0.639339, 0.436660,
		0.655849, 0.742456, -0.136463,
		21.055252, 21.373722, 9.140497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.263979, 21.445938, 8.818834>,  <20.596159, 20.854004, 9.236022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.263979, 21.445938, 8.818834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.657047, 21.485600, 8.756186>,  <20.892887, 21.509396, 8.718597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.657047, 21.485600, 8.756186>,  <20.263979, 21.445938, 8.818834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.657047, 21.485600, 8.756186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172923, 0.185990, -0.967215,
		-0.066771, 0.977536, 0.199912,
		0.982669, 0.099152, -0.156619,
		20.951849, 21.515345, 8.709201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233963, 22.104288, 8.553673>,  <20.263979, 21.445938, 8.818834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233963, 22.104288, 8.553673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.553253, 21.893398, 8.437144>,  <20.744827, 21.766865, 8.367228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.553253, 21.893398, 8.437144>,  <20.233963, 22.104288, 8.553673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.553253, 21.893398, 8.437144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080825, 0.385514, -0.919155,
		0.596910, 0.757240, 0.265115,
		0.798227, -0.527225, -0.291321,
		20.792721, 21.735231, 8.349748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.595257, 22.504034, 8.045955>,  <20.233963, 22.104288, 8.553673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.595257, 22.504034, 8.045955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.816505, 22.187340, 7.942259>,  <20.949255, 21.997322, 7.880041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.816505, 22.187340, 7.942259>,  <20.595257, 22.504034, 8.045955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.816505, 22.187340, 7.942259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136909, 0.393330, -0.909147,
		0.821773, 0.467378, 0.325956,
		0.553123, -0.791738, -0.259240,
		20.982443, 21.949818, 7.864487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.050014, 23.090494, 8.031144>,  <20.595257, 22.504034, 8.045955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.050014, 23.090494, 8.031144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.888252, 23.455090, 8.001101>,  <19.791195, 23.673847, 7.983074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.888252, 23.455090, 8.001101>,  <20.050014, 23.090494, 8.031144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.888252, 23.455090, 8.001101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078114, 0.047401, 0.995817,
		0.911237, 0.408582, 0.052030,
		-0.404407, 0.911490, -0.075109,
		19.766930, 23.728537, 7.978568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.442923, 23.530878, 8.386045>,  <20.050014, 23.090494, 8.031144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.442923, 23.530878, 8.386045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.081371, 23.701923, 8.381049>,  <19.864441, 23.804550, 8.378052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.081371, 23.701923, 8.381049>,  <20.442923, 23.530878, 8.386045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.081371, 23.701923, 8.381049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051091, 0.136891, 0.989268,
		0.424732, 0.893537, -0.145580,
		-0.903876, 0.427612, -0.012490,
		19.810209, 23.830208, 8.377302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.400127, 24.278490, 8.712604>,  <20.442923, 23.530878, 8.386045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.400127, 24.278490, 8.712604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.066559, 24.059910, 8.743506>,  <19.866417, 23.928762, 8.762049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.066559, 24.059910, 8.743506>,  <20.400127, 24.278490, 8.712604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.066559, 24.059910, 8.743506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134033, -0.064737, 0.988860,
		-0.535360, 0.834987, 0.127227,
		-0.833921, -0.546449, 0.077258,
		19.816383, 23.895975, 8.766684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.945906, 24.618687, 9.004406>,  <20.400127, 24.278490, 8.712604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.945906, 24.618687, 9.004406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.781189, 24.259510, 9.066543>,  <19.682358, 24.044004, 9.103825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.781189, 24.259510, 9.066543>,  <19.945906, 24.618687, 9.004406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781189, 24.259510, 9.066543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015798, 0.177474, 0.983999,
		-0.911140, 0.402750, -0.087268,
		-0.411794, -0.897939, 0.155341,
		19.657650, 23.990128, 9.113145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.380310, 24.761555, 9.480915>,  <19.945906, 24.618687, 9.004406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.380310, 24.761555, 9.480915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.439888, 24.366634, 9.503020>,  <19.475636, 24.129683, 9.516284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.439888, 24.366634, 9.503020>,  <19.380310, 24.761555, 9.480915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.439888, 24.366634, 9.503020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087051, 0.042578, 0.995293,
		-0.985006, -0.153054, -0.079603,
		0.148944, -0.987300, 0.055264,
		19.484571, 24.070444, 9.519599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.863098, 24.542742, 9.962414>,  <19.380310, 24.761555, 9.480915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.863098, 24.542742, 9.962414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.138039, 24.252407, 9.951774>,  <19.303003, 24.078207, 9.945390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.138039, 24.252407, 9.951774>,  <18.863098, 24.542742, 9.962414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.138039, 24.252407, 9.951774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197503, -0.222025, 0.954829,
		-0.698956, -0.651050, -0.295964,
		0.687353, -0.725837, -0.026601,
		19.344244, 24.034657, 9.943793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.533070, 23.948353, 10.177472>,  <18.863098, 24.542742, 9.962414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.533070, 23.948353, 10.177472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.923477, 23.890751, 10.242766>,  <19.157722, 23.856190, 10.281943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.923477, 23.890751, 10.242766>,  <18.533070, 23.948353, 10.177472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.923477, 23.890751, 10.242766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198969, -0.286039, 0.937333,
		-0.088288, -0.947335, -0.307832,
		0.976021, -0.144004, 0.163237,
		19.216284, 23.847549, 10.291738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.524305, 23.303267, 10.447765>,  <18.533070, 23.948353, 10.177472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.524305, 23.303267, 10.447765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.862518, 23.482872, 10.563324>,  <19.065447, 23.590635, 10.632659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.862518, 23.482872, 10.563324>,  <18.524305, 23.303267, 10.447765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.862518, 23.482872, 10.563324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155619, -0.310339, 0.937802,
		0.510742, -0.837900, -0.192527,
		0.845532, 0.449014, 0.288896,
		19.116179, 23.617577, 10.649993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.921289, 22.809353, 10.916473>,  <18.524305, 23.303267, 10.447765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.921289, 22.809353, 10.916473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.107937, 23.152420, 11.002888>,  <19.219925, 23.358261, 11.054736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.107937, 23.152420, 11.002888>,  <18.921289, 22.809353, 10.916473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.107937, 23.152420, 11.002888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139963, -0.169574, 0.975528,
		0.873314, -0.485436, 0.040915,
		0.466618, 0.857669, 0.216035,
		19.247923, 23.409721, 11.067698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.249268, 22.679274, 11.494853>,  <18.921289, 22.809353, 10.916473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.249268, 22.679274, 11.494853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.234951, 23.079002, 11.491463>,  <19.226360, 23.318840, 11.489429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.234951, 23.079002, 11.491463>,  <19.249268, 22.679274, 11.494853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.234951, 23.079002, 11.491463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118673, 0.004171, 0.992925,
		0.992288, 0.036545, 0.118444,
		-0.035792, 0.999323, -0.008476,
		19.224213, 23.378799, 11.488920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.715731, 22.833784, 12.006805>,  <19.249268, 22.679274, 11.494853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.715731, 22.833784, 12.006805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.480427, 23.152935, 11.954128>,  <19.339245, 23.344425, 11.922522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.480427, 23.152935, 11.954128>,  <19.715731, 22.833784, 12.006805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.480427, 23.152935, 11.954128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134910, 0.063741, 0.988806,
		0.797340, 0.599441, 0.070145,
		-0.588259, 0.797877, -0.131694,
		19.303949, 23.392298, 11.914620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.940037, 23.322670, 12.540811>,  <19.715731, 22.833784, 12.006805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.940037, 23.322670, 12.540811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.579781, 23.460167, 12.434460>,  <19.363626, 23.542665, 12.370649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.579781, 23.460167, 12.434460>,  <19.940037, 23.322670, 12.540811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.579781, 23.460167, 12.434460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302894, -0.057827, 0.951268,
		0.311616, 0.937282, 0.156198,
		-0.900639, 0.343742, -0.265877,
		19.309589, 23.563290, 12.354696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.786154, 23.926640, 12.925763>,  <19.940037, 23.322670, 12.540811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.786154, 23.926640, 12.925763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.430290, 23.775768, 12.822815>,  <19.216772, 23.685246, 12.761046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.430290, 23.775768, 12.822815>,  <19.786154, 23.926640, 12.925763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.430290, 23.775768, 12.822815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311124, 0.088159, 0.946272,
		-0.334226, 0.921935, -0.195781,
		-0.889660, -0.377180, -0.257371,
		19.163393, 23.662615, 12.745604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.288500, 24.265688, 13.345295>,  <19.786154, 23.926640, 12.925763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.288500, 24.265688, 13.345295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.055843, 23.973911, 13.201290>,  <18.916248, 23.798845, 13.114887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.055843, 23.973911, 13.201290>,  <19.288500, 24.265688, 13.345295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.055843, 23.973911, 13.201290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591361, 0.075280, 0.802886,
		-0.558555, 0.679890, -0.475148,
		-0.581643, -0.729440, -0.360013,
		18.881350, 23.755079, 13.093287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.580383, 24.455854, 13.512401>,  <19.288500, 24.265688, 13.345295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.580383, 24.455854, 13.512401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.563095, 24.060757, 13.452404>,  <18.552723, 23.823698, 13.416406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.563095, 24.060757, 13.452404>,  <18.580383, 24.455854, 13.512401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.563095, 24.060757, 13.452404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595697, -0.095047, 0.797566,
		-0.802046, 0.123821, -0.584287,
		-0.043221, -0.987742, -0.149992,
		18.550129, 23.764435, 13.407407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.862282, 24.336575, 13.551870>,  <18.580383, 24.455854, 13.512401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.862282, 24.336575, 13.551870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.035118, 23.979038, 13.599777>,  <18.138821, 23.764517, 13.628521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.035118, 23.979038, 13.599777>,  <17.862282, 24.336575, 13.551870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.035118, 23.979038, 13.599777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623138, -0.199918, 0.756130,
		-0.651916, -0.401349, -0.643369,
		0.432093, -0.893841, 0.119766,
		18.164745, 23.710886, 13.635707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.233530, 23.903139, 13.614458>,  <17.862282, 24.336575, 13.551870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.233530, 23.903139, 13.614458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.542183, 23.685711, 13.746588>,  <17.727375, 23.555254, 13.825866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.542183, 23.685711, 13.746588>,  <17.233530, 23.903139, 13.614458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.542183, 23.685711, 13.746588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461834, -0.121698, 0.878578,
		-0.437368, -0.830495, -0.344945,
		0.771634, -0.543569, 0.330324,
		17.773674, 23.522640, 13.845685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.020912, 23.395327, 13.876053>,  <17.233530, 23.903139, 13.614458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.020912, 23.395327, 13.876053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.371212, 23.442127, 14.063404>,  <17.581392, 23.470207, 14.175815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.371212, 23.442127, 14.063404>,  <17.020912, 23.395327, 13.876053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.371212, 23.442127, 14.063404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441779, -0.197005, 0.875226,
		0.194676, -0.973396, -0.120837,
		0.875747, 0.117003, 0.468377,
		17.633936, 23.477228, 14.203918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.005381, 22.797302, 14.303865>,  <17.020912, 23.395327, 13.876053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.005381, 22.797302, 14.303865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.268494, 23.054382, 14.460970>,  <17.426361, 23.208630, 14.555232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.268494, 23.054382, 14.460970>,  <17.005381, 22.797302, 14.303865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.268494, 23.054382, 14.460970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462493, -0.066932, 0.884093,
		0.594494, -0.763189, 0.253217,
		0.657782, 0.642699, 0.392760,
		17.465828, 23.247192, 14.578798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.100561, 22.566755, 14.954406>,  <17.005381, 22.797302, 14.303865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.100561, 22.566755, 14.954406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.243816, 22.937630, 14.998339>,  <17.329769, 23.160154, 15.024698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.243816, 22.937630, 14.998339>,  <17.100561, 22.566755, 14.954406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.243816, 22.937630, 14.998339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196516, -0.040145, 0.979679,
		0.912754, -0.372443, 0.167829,
		0.358137, 0.927187, 0.109833,
		17.351257, 23.215786, 15.031289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.488663, 22.517906, 15.696212>,  <17.100561, 22.566755, 14.954406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.488663, 22.517906, 15.696212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.415436, 22.894028, 15.581448>,  <17.371500, 23.119699, 15.512589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.415436, 22.894028, 15.581448>,  <17.488663, 22.517906, 15.696212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.415436, 22.894028, 15.581448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241817, 0.239807, 0.940222,
		0.952896, 0.241506, 0.183480,
		-0.183069, 0.940302, -0.286911,
		17.360516, 23.176119, 15.495375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.931267, 22.961742, 16.155453>,  <17.488663, 22.517906, 15.696212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.931267, 22.961742, 16.155453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.626171, 23.168945, 16.000587>,  <17.443113, 23.293268, 15.907668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.626171, 23.168945, 16.000587>,  <17.931267, 22.961742, 16.155453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.626171, 23.168945, 16.000587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247179, 0.319705, 0.914708,
		0.597605, 0.793383, -0.115811,
		-0.762739, 0.518008, -0.387165,
		17.397350, 23.324348, 15.884438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.068487, 23.560961, 16.567442>,  <17.931267, 22.961742, 16.155453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.068487, 23.560961, 16.567442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.696926, 23.583149, 16.420984>,  <17.473989, 23.596462, 16.333109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.696926, 23.583149, 16.420984>,  <18.068487, 23.560961, 16.567442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.696926, 23.583149, 16.420984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325846, 0.347380, 0.879290,
		0.175969, 0.936082, -0.304607,
		-0.928902, 0.055473, -0.366147,
		17.418255, 23.599791, 16.311140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.829239, 24.228638, 16.903824>,  <18.068487, 23.560961, 16.567442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.829239, 24.228638, 16.903824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.525417, 23.999813, 16.780001>,  <17.343124, 23.862518, 16.705706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.525417, 23.999813, 16.780001>,  <17.829239, 24.228638, 16.903824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.525417, 23.999813, 16.780001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523310, 0.254799, 0.813157,
		-0.386300, 0.779630, -0.492898,
		-0.759552, -0.572061, -0.309559,
		17.297552, 23.828196, 16.687134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.196835, 24.594217, 17.075647>,  <17.829239, 24.228638, 16.903824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.196835, 24.594217, 17.075647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.069046, 24.218842, 17.023085>,  <16.992373, 23.993616, 16.991547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.069046, 24.218842, 17.023085>,  <17.196835, 24.594217, 17.075647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.069046, 24.218842, 17.023085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655974, 0.118943, 0.745353,
		-0.683839, 0.324317, -0.653592,
		-0.319471, -0.938441, -0.131406,
		16.973206, 23.937309, 16.983664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.405466, 24.570601, 17.039459>,  <17.196835, 24.594217, 17.075647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.405466, 24.570601, 17.039459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.522865, 24.208668, 17.162836>,  <16.593306, 23.991508, 17.236862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.522865, 24.208668, 17.162836>,  <16.405466, 24.570601, 17.039459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.522865, 24.208668, 17.162836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662622, 0.040010, 0.747884,
		-0.689051, -0.423884, -0.587819,
		0.293498, -0.904832, 0.308444,
		16.610914, 23.937218, 17.255369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.762587, 24.186104, 17.194283>,  <16.405466, 24.570601, 17.039459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.762587, 24.186104, 17.194283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.043758, 23.971756, 17.381359>,  <16.212461, 23.843147, 17.493605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.043758, 23.971756, 17.381359>,  <15.762587, 24.186104, 17.194283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.043758, 23.971756, 17.381359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561225, -0.013933, 0.827546,
		-0.436942, -0.844185, -0.310538,
		0.702929, -0.535871, 0.467690,
		16.254637, 23.810995, 17.521666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.399909, 23.726000, 17.526646>,  <15.762587, 24.186104, 17.194283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.399909, 23.726000, 17.526646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.747045, 23.697075, 17.723267>,  <15.955326, 23.679720, 17.841240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.747045, 23.697075, 17.723267>,  <15.399909, 23.726000, 17.526646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.747045, 23.697075, 17.723267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488775, 0.053330, 0.870779,
		-0.089181, -0.995956, 0.010939,
		0.867840, -0.072310, 0.491554,
		16.007397, 23.675381, 17.870733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.064987, 23.024761, 17.450224>,  <15.399909, 23.726000, 17.526646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.064987, 23.024761, 17.450224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.717626, 23.005005, 17.252867>,  <14.509209, 22.993151, 17.134453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.717626, 23.005005, 17.252867>,  <15.064987, 23.024761, 17.450224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.717626, 23.005005, 17.252867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495544, -0.050974, -0.867086,
		0.017678, -0.997478, 0.068742,
		-0.868402, -0.049393, -0.493393,
		14.457105, 22.990189, 17.104849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.144721, 22.717655, 16.767414>,  <15.064987, 23.024761, 17.450224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.144721, 22.717655, 16.767414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.791635, 22.900131, 16.722328>,  <14.579782, 23.009617, 16.695276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.791635, 22.900131, 16.722328>,  <15.144721, 22.717655, 16.767414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.791635, 22.900131, 16.722328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177239, 0.101068, -0.978965,
		-0.435201, -0.884125, -0.170069,
		-0.882716, 0.456189, -0.112716,
		14.526820, 23.036987, 16.688513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.678600, 22.299488, 16.277588>,  <15.144721, 22.717655, 16.767414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.678600, 22.299488, 16.277588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.574538, 22.685265, 16.258942>,  <14.512101, 22.916731, 16.247753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.574538, 22.685265, 16.258942>,  <14.678600, 22.299488, 16.277588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.574538, 22.685265, 16.258942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071373, -0.028939, -0.997030,
		-0.962925, -0.262710, -0.061306,
		-0.260156, 0.964441, -0.046617,
		14.496491, 22.974596, 16.244957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.244122, 22.338245, 15.704366>,  <14.678600, 22.299488, 16.277588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.244122, 22.338245, 15.704366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.338727, 22.719173, 15.781466>,  <14.395491, 22.947729, 15.827725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.338727, 22.719173, 15.781466>,  <14.244122, 22.338245, 15.704366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338727, 22.719173, 15.781466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010162, 0.195942, -0.980563,
		-0.971575, 0.233875, 0.036666,
		0.236514, 0.952318, 0.192749,
		14.409681, 23.004869, 15.839291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.782959, 22.559584, 15.414236>,  <14.244122, 22.338245, 15.704366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.782959, 22.559584, 15.414236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.057017, 22.850414, 15.431816>,  <14.221453, 23.024914, 15.442365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.057017, 22.850414, 15.431816>,  <13.782959, 22.559584, 15.414236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.057017, 22.850414, 15.431816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110625, 0.163505, -0.980321,
		-0.719956, 0.666800, 0.192458,
		0.685146, 0.727079, 0.043951,
		14.262561, 23.068539, 15.445002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
