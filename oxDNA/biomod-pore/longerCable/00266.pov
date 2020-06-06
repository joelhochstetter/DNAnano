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
	<24.488796, 34.555737, 35.371815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355038, 34.777538, 35.066998>,  <24.274782, 34.910618, 34.884106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355038, 34.777538, 35.066998>,  <24.488796, 34.555737, 35.371815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355038, 34.777538, 35.066998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940218, -0.140882, 0.310068,
		0.064575, 0.820171, 0.568462,
		-0.334395, 0.554501, -0.762042,
		24.254719, 34.943890, 34.838387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247780, 34.895267, 35.336693>,  <24.488796, 34.555737, 35.371815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247780, 34.895267, 35.336693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910116, 34.982121, 35.532753>,  <24.707518, 35.034233, 35.650391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910116, 34.982121, 35.532753>,  <25.247780, 34.895267, 35.336693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.910116, 34.982121, 35.532753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216134, 0.698858, -0.681824,
		-0.490596, -0.681506, -0.543016,
		-0.844158, 0.217136, 0.490153,
		24.656868, 35.047260, 35.679798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.745916, 35.258801, 35.770367>,  <25.247780, 34.895267, 35.336693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.745916, 35.258801, 35.770367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981415, 34.955437, 35.658516>,  <26.122713, 34.773418, 35.591408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981415, 34.955437, 35.658516>,  <25.745916, 35.258801, 35.770367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981415, 34.955437, 35.658516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548078, 0.628816, -0.551544,
		0.594130, 0.171463, 0.785882,
		0.588745, -0.758413, -0.279624,
		26.158039, 34.727913, 35.574631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466864, 35.461998, 35.913376>,  <25.745916, 35.258801, 35.770367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466864, 35.461998, 35.913376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482368, 35.170647, 35.639744>,  <26.491671, 34.995834, 35.475567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482368, 35.170647, 35.639744>,  <26.466864, 35.461998, 35.913376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482368, 35.170647, 35.639744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643370, 0.542006, -0.540653,
		0.764574, -0.419158, 0.489626,
		0.038761, -0.728379, -0.684077,
		26.493998, 34.952133, 35.434521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176659, 35.339756, 35.720821>,  <26.466864, 35.461998, 35.913376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176659, 35.339756, 35.720821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956041, 35.203949, 35.416050>,  <26.823671, 35.122463, 35.233189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956041, 35.203949, 35.416050>,  <27.176659, 35.339756, 35.720821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956041, 35.203949, 35.416050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516261, 0.578517, -0.631501,
		0.655193, -0.741650, -0.143794,
		-0.551540, -0.339519, -0.761925,
		26.790579, 35.102093, 35.187473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585066, 35.084286, 35.121788>,  <27.176659, 35.339756, 35.720821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585066, 35.084286, 35.121788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233261, 35.234798, 35.005257>,  <27.022179, 35.325108, 34.935337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233261, 35.234798, 35.005257>,  <27.585066, 35.084286, 35.121788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233261, 35.234798, 35.005257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475840, 0.687683, -0.548332,
		-0.005986, -0.620890, -0.783875,
		-0.879511, 0.376282, -0.291328,
		26.969408, 35.347683, 34.917858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456581, 35.119034, 34.411556>,  <27.585066, 35.084286, 35.121788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456581, 35.119034, 34.411556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.283258, 35.434425, 34.586166>,  <27.179266, 35.623661, 34.690933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.283258, 35.434425, 34.586166>,  <27.456581, 35.119034, 34.411556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283258, 35.434425, 34.586166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625973, 0.611759, -0.483640,
		-0.648386, 0.063689, -0.758643,
		-0.433304, 0.788476, 0.436524,
		27.153267, 35.670967, 34.717125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811365, 35.586407, 33.987465>,  <27.456581, 35.119034, 34.411556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811365, 35.586407, 33.987465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592621, 35.810265, 34.236538>,  <27.461374, 35.944580, 34.385983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592621, 35.810265, 34.236538>,  <27.811365, 35.586407, 33.987465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592621, 35.810265, 34.236538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567236, 0.794701, -0.216087,
		-0.615780, 0.235039, -0.752045,
		-0.546862, 0.559649, 0.622684,
		27.428562, 35.978161, 34.423344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539459, 35.975372, 33.565895>,  <27.811365, 35.586407, 33.987465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539459, 35.975372, 33.565895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531092, 36.161724, 33.919735>,  <27.526072, 36.273537, 34.132038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531092, 36.161724, 33.919735>,  <27.539459, 35.975372, 33.565895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531092, 36.161724, 33.919735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508052, 0.766991, -0.391929,
		-0.861072, 0.441224, -0.252737,
		-0.020919, 0.465883, 0.884599,
		27.524817, 36.301491, 34.185116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497795, 36.704002, 33.315464>,  <27.539459, 35.975372, 33.565895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497795, 36.704002, 33.315464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605862, 36.729805, 33.699722>,  <27.670702, 36.745289, 33.930279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605862, 36.729805, 33.699722>,  <27.497795, 36.704002, 33.315464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605862, 36.729805, 33.699722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370953, 0.913752, -0.165684,
		-0.888484, 0.401118, 0.222937,
		0.270168, 0.064509, 0.960650,
		27.686913, 36.749157, 33.987919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192297, 37.241108, 33.700367>,  <27.497795, 36.704002, 33.315464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192297, 37.241108, 33.700367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534723, 37.171135, 33.894913>,  <27.740179, 37.129150, 34.011639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534723, 37.171135, 33.894913>,  <27.192297, 37.241108, 33.700367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534723, 37.171135, 33.894913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392901, 0.831641, -0.392431,
		-0.335830, 0.527040, 0.780671,
		0.856065, -0.174937, 0.486364,
		27.791542, 37.118652, 34.040821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370043, 37.952686, 33.933422>,  <27.192297, 37.241108, 33.700367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370043, 37.952686, 33.933422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659887, 37.679451, 33.896923>,  <27.833794, 37.515511, 33.875023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659887, 37.679451, 33.896923>,  <27.370043, 37.952686, 33.933422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659887, 37.679451, 33.896923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466339, 0.583494, -0.664878,
		0.507414, 0.439226, 0.741358,
		0.724609, -0.683093, -0.091245,
		27.877270, 37.474522, 33.869549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011904, 38.326672, 34.016914>,  <27.370043, 37.952686, 33.933422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011904, 38.326672, 34.016914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053238, 37.985519, 33.812202>,  <28.078039, 37.780830, 33.689377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053238, 37.985519, 33.812202>,  <28.011904, 38.326672, 34.016914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053238, 37.985519, 33.812202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526894, 0.483350, -0.699110,
		0.843625, -0.197411, 0.499325,
		0.103336, -0.852879, -0.511781,
		28.084238, 37.729656, 33.658669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809736, 38.165382, 33.822887>,  <28.011904, 38.326672, 34.016914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809736, 38.165382, 33.822887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554079, 38.005241, 33.560219>,  <28.400684, 37.909157, 33.402618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554079, 38.005241, 33.560219>,  <28.809736, 38.165382, 33.822887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554079, 38.005241, 33.560219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517111, 0.408320, -0.752244,
		0.569295, -0.820362, -0.053948,
		-0.639140, -0.400351, -0.656672,
		28.362337, 37.885136, 33.363216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180166, 37.421448, 33.677197>,  <28.809736, 38.165382, 33.822887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180166, 37.421448, 33.677197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230145, 37.814251, 33.620556>,  <29.260132, 38.049934, 33.586571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230145, 37.814251, 33.620556>,  <29.180166, 37.421448, 33.677197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230145, 37.814251, 33.620556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394891, 0.180152, 0.900892,
		0.910192, -0.056645, 0.410295,
		0.124946, 0.982006, -0.141605,
		29.267628, 38.108852, 33.578075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959726, 36.993267, 34.193398>,  <29.180166, 37.421448, 33.677197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959726, 36.993267, 34.193398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618708, 37.201221, 34.171909>,  <28.414097, 37.325993, 34.159016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618708, 37.201221, 34.171909>,  <28.959726, 36.993267, 34.193398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618708, 37.201221, 34.171909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484271, -0.747100, 0.455328,
		0.196584, 0.414203, 0.888702,
		-0.852547, 0.519882, -0.053719,
		28.362944, 37.357185, 34.155792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627674, 37.078209, 34.937214>,  <28.959726, 36.993267, 34.193398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627674, 37.078209, 34.937214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372381, 37.072483, 34.629330>,  <28.219206, 37.069050, 34.444599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372381, 37.072483, 34.629330>,  <28.627674, 37.078209, 34.937214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372381, 37.072483, 34.629330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535356, -0.710239, 0.457115,
		-0.553221, 0.703815, 0.445635,
		-0.638232, -0.014313, -0.769711,
		28.180912, 37.068188, 34.398415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156057, 36.666111, 35.198456>,  <28.627674, 37.078209, 34.937214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156057, 36.666111, 35.198456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984362, 36.718204, 34.840954>,  <27.881344, 36.749462, 34.626453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984362, 36.718204, 34.840954>,  <28.156057, 36.666111, 35.198456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984362, 36.718204, 34.840954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609363, -0.772157, 0.180141,
		-0.666656, 0.621943, 0.410800,
		-0.429240, 0.130235, -0.893752,
		27.855589, 36.757275, 34.572826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526072, 36.884525, 35.357178>,  <28.156057, 36.666111, 35.198456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526072, 36.884525, 35.357178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523748, 36.697956, 35.003361>,  <27.522354, 36.586014, 34.791069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523748, 36.697956, 35.003361>,  <27.526072, 36.884525, 35.357178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523748, 36.697956, 35.003361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763420, -0.569257, 0.305181,
		-0.645876, 0.677052, -0.352767,
		-0.005809, -0.466419, -0.884546,
		27.522005, 36.558029, 34.737999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849525, 36.839775, 35.195896>,  <27.526072, 36.884525, 35.357178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849525, 36.839775, 35.195896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.019703, 36.561085, 34.964874>,  <27.121809, 36.393871, 34.826260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.019703, 36.561085, 34.964874>,  <26.849525, 36.839775, 35.195896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019703, 36.561085, 34.964874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663400, -0.674185, 0.324616,
		-0.615548, 0.245046, -0.749035,
		0.425442, -0.696727, -0.577557,
		27.147335, 36.352066, 34.791607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390879, 36.575047, 34.626911>,  <26.849525, 36.839775, 35.195896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390879, 36.575047, 34.626911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655266, 36.295086, 34.735180>,  <26.813898, 36.127110, 34.800140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655266, 36.295086, 34.735180>,  <26.390879, 36.575047, 34.626911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655266, 36.295086, 34.735180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745830, -0.652511, 0.134038,
		0.082803, -0.290470, -0.953295,
		0.660970, -0.699897, 0.270672,
		26.853558, 36.085117, 34.816380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099098, 36.012970, 34.363010>,  <26.390879, 36.575047, 34.626911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099098, 36.012970, 34.363010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349464, 35.895012, 34.651806>,  <26.499683, 35.824238, 34.825085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349464, 35.895012, 34.651806>,  <26.099098, 36.012970, 34.363010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349464, 35.895012, 34.651806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608355, -0.763878, 0.215393,
		0.487991, -0.574042, -0.657526,
		0.625914, -0.294900, 0.721988,
		26.537239, 35.806541, 34.868401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504942, 35.601074, 34.473362>,  <26.099098, 36.012970, 34.363010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504942, 35.601074, 34.473362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401331, 35.570206, 34.858475>,  <25.339165, 35.551685, 35.089542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401331, 35.570206, 34.858475>,  <25.504942, 35.601074, 34.473362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.401331, 35.570206, 34.858475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653675, 0.719831, 0.233565,
		-0.711064, 0.689847, -0.136012,
		-0.259029, -0.077172, 0.962782,
		25.323622, 35.547054, 35.147308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041990, 35.348263, 33.980442>,  <25.504942, 35.601074, 34.473362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041990, 35.348263, 33.980442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366892, 35.237644, 34.185875>,  <26.561832, 35.171272, 34.309135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366892, 35.237644, 34.185875>,  <26.041990, 35.348263, 33.980442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366892, 35.237644, 34.185875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510231, -0.763538, 0.395820,
		0.282680, -0.583553, -0.761287,
		0.812253, -0.276542, 0.513584,
		26.610567, 35.154682, 34.339951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130283, 34.590839, 34.158131>,  <26.041990, 35.348263, 33.980442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130283, 34.590839, 34.158131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343042, 34.748699, 34.457821>,  <26.470697, 34.843414, 34.637634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343042, 34.748699, 34.457821>,  <26.130283, 34.590839, 34.158131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343042, 34.748699, 34.457821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431048, -0.635377, 0.640698,
		0.728893, -0.663736, -0.167840,
		0.531896, 0.394653, 0.749224,
		26.502611, 34.867096, 34.682587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427675, 33.987083, 34.481052>,  <26.130283, 34.590839, 34.158131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427675, 33.987083, 34.481052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458780, 34.274887, 34.757099>,  <26.477444, 34.447571, 34.922726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458780, 34.274887, 34.757099>,  <26.427675, 33.987083, 34.481052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458780, 34.274887, 34.757099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277361, -0.649270, 0.708180,
		0.957613, -0.246482, 0.149074,
		0.077765, 0.719510, 0.690115,
		26.482109, 34.490742, 34.964134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813173, 33.762440, 35.078739>,  <26.427675, 33.987083, 34.481052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813173, 33.762440, 35.078739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584829, 34.055859, 35.226269>,  <26.447823, 34.231911, 35.314785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584829, 34.055859, 35.226269>,  <26.813173, 33.762440, 35.078739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584829, 34.055859, 35.226269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272125, -0.592860, 0.757935,
		0.774639, 0.332310, 0.538056,
		-0.570861, 0.733545, 0.368823,
		26.413570, 34.275921, 35.336914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020672, 33.999702, 35.842918>,  <26.813173, 33.762440, 35.078739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020672, 33.999702, 35.842918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636921, 34.052685, 35.743279>,  <26.406670, 34.084476, 35.683495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636921, 34.052685, 35.743279>,  <27.020672, 33.999702, 35.842918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636921, 34.052685, 35.743279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279249, -0.320066, 0.905305,
		0.040188, 0.938090, 0.344053,
		-0.959377, 0.132459, -0.249098,
		26.349108, 34.092422, 35.668549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596689, 34.439083, 36.406319>,  <27.020672, 33.999702, 35.842918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596689, 34.439083, 36.406319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334105, 34.229652, 36.189091>,  <26.176554, 34.103992, 36.058754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334105, 34.229652, 36.189091>,  <26.596689, 34.439083, 36.406319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334105, 34.229652, 36.189091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410105, -0.356527, 0.839466,
		-0.633145, 0.773792, 0.019323,
		-0.656461, -0.523579, -0.543069,
		26.137167, 34.072578, 36.026169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006466, 34.533134, 36.672714>,  <26.596689, 34.439083, 36.406319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006466, 34.533134, 36.672714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985943, 34.183193, 36.480049>,  <25.973629, 33.973228, 36.364452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985943, 34.183193, 36.480049>,  <26.006466, 34.533134, 36.672714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985943, 34.183193, 36.480049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421201, -0.418347, 0.804721,
		-0.905515, 0.244163, -0.347026,
		-0.051306, -0.874854, -0.481661,
		25.970551, 33.920738, 36.335552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352095, 34.164913, 36.745319>,  <26.006466, 34.533134, 36.672714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.352095, 34.164913, 36.745319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583731, 33.847244, 36.671627>,  <25.722712, 33.656643, 36.627411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583731, 33.847244, 36.671627>,  <25.352095, 34.164913, 36.745319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.583731, 33.847244, 36.671627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476886, -0.513258, 0.713545,
		-0.661238, -0.325348, -0.675953,
		0.579089, -0.794176, -0.184231,
		25.757458, 33.608990, 36.616356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.884855, 33.513714, 36.627296>,  <25.352095, 34.164913, 36.745319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.884855, 33.513714, 36.627296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254839, 33.414864, 36.742794>,  <25.476830, 33.355553, 36.812092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254839, 33.414864, 36.742794>,  <24.884855, 33.513714, 36.627296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254839, 33.414864, 36.742794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378983, -0.656930, 0.651778,
		0.028611, -0.712299, -0.701293,
		0.924961, -0.247130, 0.288744,
		25.532328, 33.340725, 36.829418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804314, 32.801266, 36.685345>,  <24.884855, 33.513714, 36.627296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804314, 32.801266, 36.685345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133307, 32.893841, 36.893173>,  <25.330702, 32.949387, 37.017872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133307, 32.893841, 36.893173>,  <24.804314, 32.801266, 36.685345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133307, 32.893841, 36.893173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274361, -0.638744, 0.718841,
		0.498244, -0.733785, -0.461857,
		0.822483, 0.231443, 0.519572,
		25.380051, 32.963272, 37.049046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108467, 32.070297, 36.888805>,  <24.804314, 32.801266, 36.685345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108467, 32.070297, 36.888805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230379, 32.371571, 37.121983>,  <25.303526, 32.552334, 37.261887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230379, 32.371571, 37.121983>,  <25.108467, 32.070297, 36.888805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.230379, 32.371571, 37.121983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338722, -0.486326, 0.805453,
		0.890156, -0.442940, 0.106898,
		0.304780, 0.753187, 0.582940,
		25.321814, 32.597527, 37.296864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574259, 31.781715, 37.395206>,  <25.108467, 32.070297, 36.888805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574259, 31.781715, 37.395206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.395090, 32.112617, 37.530861>,  <25.287588, 32.311157, 37.612255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.395090, 32.112617, 37.530861>,  <25.574259, 31.781715, 37.395206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.395090, 32.112617, 37.530861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190249, -0.458819, 0.867923,
		0.873597, 0.324241, 0.362900,
		-0.447922, 0.827256, 0.339136,
		25.260714, 32.360794, 37.632603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849266, 31.970892, 37.960579>,  <25.574259, 31.781715, 37.395206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849266, 31.970892, 37.960579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457510, 32.050983, 37.949936>,  <25.222456, 32.099037, 37.943550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457510, 32.050983, 37.949936>,  <25.849266, 31.970892, 37.960579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457510, 32.050983, 37.949936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142712, -0.592729, 0.792657,
		0.142943, 0.780116, 0.609087,
		-0.979388, 0.200229, -0.026605,
		25.163694, 32.111053, 37.941956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577496, 31.804216, 38.503990>,  <25.849266, 31.970892, 37.960579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577496, 31.804216, 38.503990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.523476, 32.185009, 38.394089>,  <25.491064, 32.413486, 38.328148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.523476, 32.185009, 38.394089>,  <25.577496, 31.804216, 38.503990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.523476, 32.185009, 38.394089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472667, 0.181816, 0.862281,
		0.870832, 0.246318, 0.425417,
		-0.135048, 0.951983, -0.274758,
		25.482962, 32.470604, 38.311661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775181, 32.220722, 39.075882>,  <25.577496, 31.804216, 38.503990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.775181, 32.220722, 39.075882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543344, 32.464996, 38.860054>,  <25.404242, 32.611561, 38.730556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543344, 32.464996, 38.860054>,  <25.775181, 32.220722, 39.075882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543344, 32.464996, 38.860054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465580, 0.295261, 0.834300,
		0.668810, 0.734766, 0.113193,
		-0.579593, 0.610688, -0.539566,
		25.369467, 32.648201, 38.698185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754496, 32.853535, 39.452896>,  <25.775181, 32.220722, 39.075882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754496, 32.853535, 39.452896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433289, 32.855206, 39.214520>,  <25.240564, 32.856209, 39.071495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433289, 32.855206, 39.214520>,  <25.754496, 32.853535, 39.452896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433289, 32.855206, 39.214520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569275, 0.290472, 0.769124,
		0.176315, 0.956874, -0.230878,
		-0.803019, 0.004175, -0.595939,
		25.192383, 32.856457, 39.035736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312080, 33.363205, 39.552139>,  <25.754496, 32.853535, 39.452896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312080, 33.363205, 39.552139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075853, 33.069695, 39.417797>,  <24.934118, 32.893589, 39.337193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075853, 33.069695, 39.417797>,  <25.312080, 33.363205, 39.552139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.075853, 33.069695, 39.417797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584118, 0.101525, 0.805294,
		-0.556811, 0.671758, -0.488571,
		-0.590566, -0.733780, -0.335856,
		24.898684, 32.849560, 39.317039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752392, 33.149845, 40.097942>,  <25.312080, 33.363205, 39.552139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.752392, 33.149845, 40.097942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464035, 33.294781, 39.861626>,  <24.291021, 33.381741, 39.719837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464035, 33.294781, 39.861626>,  <24.752392, 33.149845, 40.097942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.464035, 33.294781, 39.861626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456740, -0.392758, -0.798204,
		-0.521257, -0.845253, 0.117640,
		-0.720888, 0.362338, -0.590788,
		24.247768, 33.403481, 39.684391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.423136, 32.531960, 39.757107>,  <24.752392, 33.149845, 40.097942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.423136, 32.531960, 39.757107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.360174, 32.875366, 39.561897>,  <24.322397, 33.081409, 39.444771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.360174, 32.875366, 39.561897>,  <24.423136, 32.531960, 39.757107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.360174, 32.875366, 39.561897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396270, -0.397743, -0.827509,
		-0.904541, -0.323644, -0.277598,
		-0.157405, 0.858519, -0.488025,
		24.312952, 33.132923, 39.415489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.004936, 32.498764, 39.027531>,  <24.423136, 32.531960, 39.757107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.004936, 32.498764, 39.027531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297218, 32.770550, 39.054066>,  <24.472588, 32.933620, 39.069988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297218, 32.770550, 39.054066>,  <24.004936, 32.498764, 39.027531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.297218, 32.770550, 39.054066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343024, -0.281389, -0.896189,
		-0.590260, 0.677605, -0.438685,
		0.730703, 0.679464, 0.066342,
		24.516430, 32.974388, 39.073967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.055557, 32.988464, 38.378284>,  <24.004936, 32.498764, 39.027531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.055557, 32.988464, 38.378284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414438, 32.968204, 38.553764>,  <24.629768, 32.956051, 38.659054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414438, 32.968204, 38.553764>,  <24.055557, 32.988464, 38.378284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414438, 32.968204, 38.553764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429192, -0.133969, -0.893223,
		0.104010, 0.989691, -0.098462,
		0.897205, -0.050645, 0.438701,
		24.683599, 32.953011, 38.685375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.525291, 33.418396, 38.035858>,  <24.055557, 32.988464, 38.378284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.525291, 33.418396, 38.035858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.787228, 33.195305, 38.239868>,  <24.944389, 33.061451, 38.362274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.787228, 33.195305, 38.239868>,  <24.525291, 33.418396, 38.035858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.787228, 33.195305, 38.239868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609928, -0.008511, -0.792411,
		0.446290, 0.829981, 0.334600,
		0.654838, -0.557727, 0.510027,
		24.983679, 33.027988, 38.392876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.112574, 33.702942, 37.856236>,  <24.525291, 33.418396, 38.035858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.112574, 33.702942, 37.856236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207039, 33.330559, 37.967621>,  <25.263718, 33.107128, 38.034451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207039, 33.330559, 37.967621>,  <25.112574, 33.702942, 37.856236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207039, 33.330559, 37.967621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655071, -0.059128, -0.753250,
		0.717710, 0.360302, 0.595881,
		0.236164, -0.930960, 0.278461,
		25.277887, 33.051270, 38.051159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824638, 33.476624, 38.138947>,  <25.112574, 33.702942, 37.856236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824638, 33.476624, 38.138947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664129, 33.210922, 37.886677>,  <25.567823, 33.051502, 37.735317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664129, 33.210922, 37.886677>,  <25.824638, 33.476624, 38.138947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664129, 33.210922, 37.886677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668826, 0.257948, -0.697234,
		0.625821, -0.701589, 0.340764,
		-0.401272, -0.664256, -0.630670,
		25.543747, 33.011646, 37.697475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388498, 33.260628, 37.783478>,  <25.824638, 33.476624, 38.138947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388498, 33.260628, 37.783478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078848, 33.141956, 37.559795>,  <25.893059, 33.070751, 37.425587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078848, 33.141956, 37.559795>,  <26.388498, 33.260628, 37.783478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078848, 33.141956, 37.559795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448442, 0.366484, -0.815224,
		0.446802, -0.881856, -0.150660,
		-0.774124, -0.296682, -0.559207,
		25.846611, 33.052952, 37.392033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734865, 32.964500, 37.197803>,  <26.388498, 33.260628, 37.783478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734865, 32.964500, 37.197803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367254, 33.080994, 37.091541>,  <26.146688, 33.150890, 37.027786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367254, 33.080994, 37.091541>,  <26.734865, 32.964500, 37.197803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367254, 33.080994, 37.091541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382517, 0.496052, -0.779495,
		-0.095239, -0.817994, -0.567288,
		-0.919026, 0.291236, -0.265653,
		26.091547, 33.168365, 37.011845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692755, 32.827797, 36.555496>,  <26.734865, 32.964500, 37.197803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692755, 32.827797, 36.555496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409372, 33.105240, 36.607651>,  <26.239344, 33.271706, 36.638943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409372, 33.105240, 36.607651>,  <26.692755, 32.827797, 36.555496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409372, 33.105240, 36.607651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385224, 0.534842, -0.752028,
		-0.591348, -0.482550, -0.646106,
		-0.708456, 0.693606, 0.130388,
		26.196835, 33.313320, 36.646767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372719, 32.577847, 36.567631>,  <26.692755, 32.827797, 36.555496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372719, 32.577847, 36.567631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472582, 32.200871, 36.478657>,  <27.532499, 31.974686, 36.425270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472582, 32.200871, 36.478657>,  <27.372719, 32.577847, 36.567631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472582, 32.200871, 36.478657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424152, 0.312934, -0.849804,
		0.870498, 0.117812, 0.477864,
		0.249657, -0.942440, -0.222439,
		27.547480, 31.918139, 36.411926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985023, 32.541485, 36.399570>,  <27.372719, 32.577847, 36.567631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985023, 32.541485, 36.399570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830507, 32.244301, 36.180920>,  <27.737797, 32.065990, 36.049728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830507, 32.244301, 36.180920>,  <27.985023, 32.541485, 36.399570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830507, 32.244301, 36.180920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480440, 0.343816, -0.806826,
		0.787373, -0.574289, 0.224133,
		-0.386291, -0.742956, -0.546622,
		27.714621, 32.021416, 36.016933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505838, 32.283844, 36.017540>,  <27.985023, 32.541485, 36.399570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505838, 32.283844, 36.017540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175327, 32.239136, 35.796715>,  <27.977020, 32.212311, 35.664219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175327, 32.239136, 35.796715>,  <28.505838, 32.283844, 36.017540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175327, 32.239136, 35.796715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511650, 0.260927, -0.818615,
		0.235536, -0.958867, -0.158417,
		-0.826279, -0.111759, -0.552062,
		27.927444, 32.205605, 35.631096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047207, 31.880253, 35.623943>,  <28.505838, 32.283844, 36.017540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047207, 31.880253, 35.623943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213579, 31.527920, 35.533493>,  <29.313402, 31.316519, 35.479221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213579, 31.527920, 35.533493>,  <29.047207, 31.880253, 35.623943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213579, 31.527920, 35.533493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160239, -0.315750, 0.935214,
		-0.895168, -0.352750, -0.272474,
		0.415931, -0.880835, -0.226125,
		29.338358, 31.263670, 35.465656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696405, 31.296419, 35.846424>,  <29.047207, 31.880253, 35.623943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696405, 31.296419, 35.846424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073009, 31.161627, 35.846310>,  <29.298973, 31.080751, 35.846241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073009, 31.161627, 35.846310>,  <28.696405, 31.296419, 35.846424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073009, 31.161627, 35.846310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157886, -0.441877, 0.883072,
		-0.297704, -0.831378, -0.469237,
		0.941512, -0.336981, -0.000285,
		29.355463, 31.060532, 35.846226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721607, 30.532393, 36.016453>,  <28.696405, 31.296419, 35.846424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721607, 30.532393, 36.016453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091846, 30.659931, 36.098038>,  <29.313990, 30.736454, 36.146988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091846, 30.659931, 36.098038>,  <28.721607, 30.532393, 36.016453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091846, 30.659931, 36.098038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053833, -0.422500, 0.904763,
		0.374656, -0.848428, -0.373901,
		0.925600, 0.318847, 0.203965,
		29.369526, 30.755585, 36.159225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058851, 29.952152, 36.416359>,  <28.721607, 30.532393, 36.016453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058851, 29.952152, 36.416359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263384, 30.288029, 36.489532>,  <29.386103, 30.489553, 36.533436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263384, 30.288029, 36.489532>,  <29.058851, 29.952152, 36.416359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263384, 30.288029, 36.489532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150574, -0.297111, 0.942896,
		0.846091, -0.454585, -0.278357,
		0.511329, 0.839689, 0.182934,
		29.416782, 30.539936, 36.544415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695997, 29.695311, 36.625042>,  <29.058851, 29.952152, 36.416359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695997, 29.695311, 36.625042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595230, 30.049704, 36.780773>,  <29.534769, 30.262339, 36.874210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595230, 30.049704, 36.780773>,  <29.695997, 29.695311, 36.625042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595230, 30.049704, 36.780773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170815, -0.355277, 0.919022,
		0.952554, 0.298023, -0.061837,
		-0.251920, 0.885980, 0.389327,
		29.519653, 30.315498, 36.897572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654726, 30.115520, 37.388798>,  <29.695997, 29.695311, 36.625042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654726, 30.115520, 37.388798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943468, 29.838778, 37.382404>,  <30.116714, 29.672731, 37.378567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943468, 29.838778, 37.382404>,  <29.654726, 30.115520, 37.388798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943468, 29.838778, 37.382404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688095, -0.720010, 0.090061,
		-0.073818, -0.054012, -0.995808,
		0.721856, -0.691858, -0.015984,
		30.160025, 29.631220, 37.377609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314117, 29.900900, 38.046722>,  <29.654726, 30.115520, 37.388798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314117, 29.900900, 38.046722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569901, 30.191210, 38.148186>,  <29.723372, 30.365396, 38.209064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569901, 30.191210, 38.148186>,  <29.314117, 29.900900, 38.046722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569901, 30.191210, 38.148186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103761, 0.408383, -0.906894,
		-0.761791, 0.553601, 0.336451,
		0.639459, 0.725775, 0.253661,
		29.761738, 30.408941, 38.224285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967770, 30.475185, 37.910656>,  <29.314117, 29.900900, 38.046722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967770, 30.475185, 37.910656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366228, 30.499977, 37.885838>,  <29.605303, 30.514853, 37.870945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366228, 30.499977, 37.885838>,  <28.967770, 30.475185, 37.910656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366228, 30.499977, 37.885838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082972, 0.436924, -0.895664,
		-0.028404, 0.897361, 0.440383,
		0.996147, 0.061980, -0.062045,
		29.665071, 30.518572, 37.867226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167101, 31.169590, 37.682854>,  <28.967770, 30.475185, 37.910656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167101, 31.169590, 37.682854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459263, 30.917360, 37.577873>,  <29.634560, 30.766022, 37.514885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459263, 30.917360, 37.577873>,  <29.167101, 31.169590, 37.682854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459263, 30.917360, 37.577873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000410, 0.383852, -0.923394,
		0.683013, 0.674560, 0.280109,
		0.730406, -0.630576, -0.262453,
		29.678385, 30.728188, 37.499138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549250, 31.516794, 37.190907>,  <29.167101, 31.169590, 37.682854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549250, 31.516794, 37.190907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659466, 31.139050, 37.119064>,  <29.725595, 30.912403, 37.075958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659466, 31.139050, 37.119064>,  <29.549250, 31.516794, 37.190907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659466, 31.139050, 37.119064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170038, 0.231771, -0.957794,
		0.946131, 0.233371, 0.224440,
		0.275540, -0.944362, -0.179604,
		29.742128, 30.855742, 37.065182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219654, 31.509499, 36.829670>,  <29.549250, 31.516794, 37.190907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219654, 31.509499, 36.829670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995623, 31.187281, 36.752308>,  <29.861204, 30.993950, 36.705891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995623, 31.187281, 36.752308>,  <30.219654, 31.509499, 36.829670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995623, 31.187281, 36.752308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064705, 0.275285, -0.959183,
		0.825909, -0.524703, -0.206304,
		-0.560079, -0.805546, -0.193409,
		29.827599, 30.945618, 36.694286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546574, 31.252771, 36.274849>,  <30.219654, 31.509499, 36.829670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546574, 31.252771, 36.274849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179029, 31.096428, 36.253212>,  <29.958504, 31.002621, 36.240231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179029, 31.096428, 36.253212>,  <30.546574, 31.252771, 36.274849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179029, 31.096428, 36.253212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002354, 0.131650, -0.991294,
		0.394579, -0.910986, -0.120048,
		-0.918859, -0.390861, -0.054091,
		29.903372, 30.979170, 36.236984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564774, 30.704214, 35.941795>,  <30.546574, 31.252771, 36.274849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564774, 30.704214, 35.941795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187944, 30.827209, 35.888210>,  <29.961847, 30.901007, 35.856060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187944, 30.827209, 35.888210>,  <30.564774, 30.704214, 35.941795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187944, 30.827209, 35.888210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130250, -0.032666, -0.990943,
		-0.309080, -0.950991, -0.009277,
		-0.942074, 0.307489, -0.133963,
		29.905321, 30.919456, 35.848022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217209, 30.313381, 35.358948>,  <30.564774, 30.704214, 35.941795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217209, 30.313381, 35.358948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047026, 30.671062, 35.414639>,  <29.944916, 30.885672, 35.448051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047026, 30.671062, 35.414639>,  <30.217209, 30.313381, 35.358948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047026, 30.671062, 35.414639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051263, 0.177413, -0.982800,
		-0.903525, -0.411002, -0.121322,
		-0.425457, 0.894204, 0.139228,
		29.919388, 30.939323, 35.456406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488455, 30.379253, 35.070950>,  <30.217209, 30.313381, 35.358948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488455, 30.379253, 35.070950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723335, 30.703009, 35.074608>,  <29.864264, 30.897263, 35.076801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723335, 30.703009, 35.074608>,  <29.488455, 30.379253, 35.070950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723335, 30.703009, 35.074608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056244, 0.052068, -0.997058,
		-0.807485, 0.584959, 0.076098,
		0.587201, 0.809390, 0.009143,
		29.899496, 30.945826, 35.077351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121384, 30.977360, 34.704536>,  <29.488455, 30.379253, 35.070950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121384, 30.977360, 34.704536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515636, 31.042431, 34.686352>,  <29.752188, 31.081474, 34.675442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515636, 31.042431, 34.686352>,  <29.121384, 30.977360, 34.704536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515636, 31.042431, 34.686352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097121, 0.325628, -0.940497,
		-0.138196, 0.931398, 0.336748,
		0.985631, 0.162678, -0.045458,
		29.811325, 31.091234, 34.672714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136959, 31.554960, 34.344593>,  <29.121384, 30.977360, 34.704536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136959, 31.554960, 34.344593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509102, 31.411558, 34.313850>,  <29.732388, 31.325518, 34.295403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509102, 31.411558, 34.313850>,  <29.136959, 31.554960, 34.344593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509102, 31.411558, 34.313850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082170, 0.408161, -0.909204,
		0.357326, 0.839570, 0.409194,
		0.930358, -0.358506, -0.076859,
		29.788210, 31.304007, 34.290794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463406, 32.106842, 34.046520>,  <29.136959, 31.554960, 34.344593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463406, 32.106842, 34.046520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646631, 31.761086, 33.963573>,  <29.756567, 31.553631, 33.913803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646631, 31.761086, 33.963573>,  <29.463406, 32.106842, 34.046520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646631, 31.761086, 33.963573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165293, 0.312043, -0.935579,
		0.873415, 0.394279, 0.285814,
		0.458066, -0.864392, -0.207371,
		29.784050, 31.501768, 33.901363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912149, 32.328533, 33.605961>,  <29.463406, 32.106842, 34.046520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912149, 32.328533, 33.605961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892956, 31.937151, 33.525639>,  <29.881439, 31.702322, 33.477444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892956, 31.937151, 33.525639>,  <29.912149, 32.328533, 33.605961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892956, 31.937151, 33.525639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141962, 0.192318, -0.971010,
		0.988708, -0.075100, 0.129675,
		-0.047985, -0.978455, -0.200807,
		29.878561, 31.643614, 33.465397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459129, 32.263813, 33.246422>,  <29.912149, 32.328533, 33.605961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459129, 32.263813, 33.246422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225302, 31.952702, 33.154037>,  <30.085005, 31.766035, 33.098606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225302, 31.952702, 33.154037>,  <30.459129, 32.263813, 33.246422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225302, 31.952702, 33.154037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268898, 0.082855, -0.959598,
		0.765489, -0.623057, 0.160708,
		-0.584569, -0.777775, -0.230964,
		30.049931, 31.719368, 33.084747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823927, 31.863920, 32.742165>,  <30.459129, 32.263813, 33.246422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823927, 31.863920, 32.742165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439592, 31.760696, 32.701775>,  <30.208992, 31.698763, 32.677540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439592, 31.760696, 32.701775>,  <30.823927, 31.863920, 32.742165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439592, 31.760696, 32.701775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109249, -0.017879, -0.993854,
		0.254669, -0.965963, 0.045372,
		-0.960837, -0.258060, -0.100977,
		30.151340, 31.683279, 32.671482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790588, 31.304094, 32.350697>,  <30.823927, 31.863920, 32.742165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790588, 31.304094, 32.350697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413197, 31.434687, 32.327877>,  <30.186762, 31.513042, 32.314186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413197, 31.434687, 32.327877>,  <30.790588, 31.304094, 32.350697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413197, 31.434687, 32.327877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051074, -0.026839, -0.998334,
		-0.327470, -0.944822, 0.008647,
		-0.943480, 0.326483, -0.057045,
		30.130152, 31.532631, 32.310764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551035, 30.960249, 31.783308>,  <30.790588, 31.304094, 32.350697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551035, 30.960249, 31.783308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281797, 31.251787, 31.833467>,  <30.120255, 31.426710, 31.863564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281797, 31.251787, 31.833467>,  <30.551035, 30.960249, 31.783308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281797, 31.251787, 31.833467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094112, 0.083769, -0.992031,
		-0.733544, -0.679532, 0.012208,
		-0.673094, 0.728848, 0.125400,
		30.079868, 31.470442, 31.871088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900747, 30.818863, 31.417120>,  <30.551035, 30.960249, 31.783308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900747, 30.818863, 31.417120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905628, 31.218204, 31.439545>,  <29.908556, 31.457809, 31.452999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905628, 31.218204, 31.439545>,  <29.900747, 30.818863, 31.417120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905628, 31.218204, 31.439545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225712, 0.057367, -0.972503,
		-0.974118, -0.000789, 0.226040,
		0.012200, 0.998353, 0.056060,
		29.909288, 31.517710, 31.456362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626293, 30.996954, 30.834877>,  <29.900747, 30.818863, 31.417120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626293, 30.996954, 30.834877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748215, 31.366938, 30.925694>,  <29.821367, 31.588928, 30.980185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748215, 31.366938, 30.925694>,  <29.626293, 30.996954, 30.834877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748215, 31.366938, 30.925694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209987, 0.297785, -0.931252,
		-0.928978, 0.236172, 0.284995,
		0.304803, 0.924958, 0.227043,
		29.839655, 31.644424, 30.993807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171555, 31.482960, 30.507608>,  <29.626293, 30.996954, 30.834877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171555, 31.482960, 30.507608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492105, 31.712776, 30.574177>,  <29.684437, 31.850666, 30.614117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492105, 31.712776, 30.574177>,  <29.171555, 31.482960, 30.507608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492105, 31.712776, 30.574177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097751, 0.400271, -0.911169,
		-0.590115, 0.713924, 0.376930,
		0.801379, 0.574540, 0.166419,
		29.732519, 31.885138, 30.624102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030048, 32.063553, 30.190561>,  <29.171555, 31.482960, 30.507608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030048, 32.063553, 30.190561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427576, 32.078056, 30.232534>,  <29.666092, 32.086758, 30.257719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427576, 32.078056, 30.232534>,  <29.030048, 32.063553, 30.190561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427576, 32.078056, 30.232534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076257, 0.464030, -0.882531,
		-0.080689, 0.885077, 0.458397,
		0.993818, 0.036255, 0.104935,
		29.725721, 32.088932, 30.264015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215399, 32.721836, 30.069233>,  <29.030048, 32.063553, 30.190561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215399, 32.721836, 30.069233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560392, 32.528297, 30.009882>,  <29.767389, 32.412174, 29.974272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560392, 32.528297, 30.009882>,  <29.215399, 32.721836, 30.069233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560392, 32.528297, 30.009882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264594, 0.681035, -0.682774,
		0.431407, 0.549622, 0.715404,
		0.862483, -0.483845, -0.148377,
		29.819138, 32.383144, 29.965368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710279, 33.200394, 30.272579>,  <29.215399, 32.721836, 30.069233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710279, 33.200394, 30.272579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870295, 32.935104, 30.019562>,  <29.966303, 32.775932, 29.867752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870295, 32.935104, 30.019562>,  <29.710279, 33.200394, 30.272579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870295, 32.935104, 30.019562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301719, 0.747001, -0.592414,
		0.865410, 0.046138, 0.498935,
		0.400038, -0.663220, -0.632542,
		29.990307, 32.736137, 29.829800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336121, 33.536427, 30.117064>,  <29.710279, 33.200394, 30.272579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336121, 33.536427, 30.117064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257919, 33.269981, 29.829155>,  <30.210999, 33.110115, 29.656410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257919, 33.269981, 29.829155>,  <30.336121, 33.536427, 30.117064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257919, 33.269981, 29.829155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401223, 0.615374, -0.678480,
		0.894874, -0.421432, 0.146954,
		-0.195501, -0.666115, -0.719771,
		30.199268, 33.070148, 29.613224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949684, 33.737122, 29.643913>,  <30.336121, 33.536427, 30.117064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949684, 33.737122, 29.643913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711344, 33.522491, 29.404898>,  <30.568340, 33.393715, 29.261488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711344, 33.522491, 29.404898>,  <30.949684, 33.737122, 29.643913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711344, 33.522491, 29.404898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237122, 0.593328, -0.769244,
		0.767291, -0.600044, -0.226302,
		-0.595851, -0.536572, -0.597538,
		30.532589, 33.361519, 29.225636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258219, 33.660496, 28.916075>,  <30.949684, 33.737122, 29.643913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258219, 33.660496, 28.916075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867834, 33.591938, 28.862225>,  <30.633604, 33.550804, 28.829914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867834, 33.591938, 28.862225>,  <31.258219, 33.660496, 28.916075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867834, 33.591938, 28.862225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011499, 0.576338, -0.817131,
		0.217643, -0.799036, -0.560512,
		-0.975960, -0.171398, -0.134624,
		30.575047, 33.540520, 28.821836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164938, 33.917889, 28.169056>,  <31.258219, 33.660496, 28.916075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164938, 33.917889, 28.169056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810005, 33.914818, 28.353481>,  <30.597046, 33.912975, 28.464136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810005, 33.914818, 28.353481>,  <31.164938, 33.917889, 28.169056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810005, 33.914818, 28.353481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375510, 0.592346, -0.712824,
		-0.267638, -0.805647, -0.528491,
		-0.887334, -0.007675, 0.461063,
		30.543804, 33.912514, 28.491800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751631, 33.867500, 27.675367>,  <31.164938, 33.917889, 28.169056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751631, 33.867500, 27.675367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517733, 33.992580, 27.974777>,  <30.377394, 34.067631, 28.154423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517733, 33.992580, 27.974777>,  <30.751631, 33.867500, 27.675367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517733, 33.992580, 27.974777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598334, 0.456824, -0.658261,
		-0.547785, -0.832783, -0.080024,
		-0.584746, 0.312705, 0.748524,
		30.342308, 34.086391, 28.199335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104223, 33.857609, 27.403332>,  <30.751631, 33.867500, 27.675367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104223, 33.857609, 27.403332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066885, 34.107185, 27.713682>,  <30.044481, 34.256931, 27.899893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066885, 34.107185, 27.713682>,  <30.104223, 33.857609, 27.403332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066885, 34.107185, 27.713682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330338, 0.715729, -0.615312,
		-0.939236, -0.313739, 0.139301,
		-0.093346, 0.623939, 0.775878,
		30.038881, 34.294369, 27.946445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513544, 34.206356, 27.351515>,  <30.104223, 33.857609, 27.403332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513544, 34.206356, 27.351515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725861, 34.443794, 27.593477>,  <29.853251, 34.586258, 27.738655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725861, 34.443794, 27.593477>,  <29.513544, 34.206356, 27.351515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725861, 34.443794, 27.593477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222929, 0.786403, -0.576084,
		-0.817658, 0.170929, 0.549744,
		0.530790, 0.593593, 0.604904,
		29.885098, 34.621872, 27.774948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072855, 34.633663, 27.655491>,  <29.513544, 34.206356, 27.351515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072855, 34.633663, 27.655491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435627, 34.797539, 27.616230>,  <29.653290, 34.895866, 27.592674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435627, 34.797539, 27.616230>,  <29.072855, 34.633663, 27.655491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435627, 34.797539, 27.616230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376421, 0.683424, -0.625491,
		-0.189180, 0.604222, 0.774033,
		0.906928, 0.409693, -0.098152,
		29.707705, 34.920448, 27.586784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948915, 35.317291, 27.499723>,  <29.072855, 34.633663, 27.655491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948915, 35.317291, 27.499723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342220, 35.322670, 27.427048>,  <29.578203, 35.325897, 27.383442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342220, 35.322670, 27.427048>,  <28.948915, 35.317291, 27.499723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342220, 35.322670, 27.427048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137012, 0.711908, -0.688777,
		0.120084, 0.702143, 0.701837,
		0.983264, 0.013449, -0.181691,
		29.637199, 35.326706, 27.372540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288467, 35.965565, 27.646265>,  <28.948915, 35.317291, 27.499723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288467, 35.965565, 27.646265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545597, 35.803638, 27.386141>,  <29.699875, 35.706482, 27.230066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545597, 35.803638, 27.386141>,  <29.288467, 35.965565, 27.646265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545597, 35.803638, 27.386141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172576, 0.750591, -0.637833,
		0.746322, 0.522241, 0.412635,
		0.642823, -0.404818, -0.650309,
		29.738443, 35.682194, 27.191048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628712, 36.554188, 27.453999>,  <29.288467, 35.965565, 27.646265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628712, 36.554188, 27.453999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729118, 36.264797, 27.196760>,  <29.789362, 36.091164, 27.042418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729118, 36.264797, 27.196760>,  <29.628712, 36.554188, 27.453999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729118, 36.264797, 27.196760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023699, 0.659574, -0.751267,
		0.967693, 0.203820, 0.148417,
		0.251015, -0.723478, -0.643095,
		29.804422, 36.047752, 27.003832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195967, 36.835651, 27.123930>,  <29.628712, 36.554188, 27.453999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195967, 36.835651, 27.123930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025827, 36.568287, 26.879864>,  <29.923744, 36.407867, 26.733425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025827, 36.568287, 26.879864>,  <30.195967, 36.835651, 27.123930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025827, 36.568287, 26.879864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113845, 0.629320, -0.768762,
		0.897841, -0.396456, -0.191584,
		-0.425348, -0.668415, -0.610164,
		29.898224, 36.367764, 26.696814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640320, 36.886433, 26.495878>,  <30.195967, 36.835651, 27.123930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640320, 36.886433, 26.495878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284164, 36.731449, 26.400305>,  <30.070471, 36.638458, 26.342960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284164, 36.731449, 26.400305>,  <30.640320, 36.886433, 26.495878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284164, 36.731449, 26.400305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039531, 0.588727, -0.807365,
		0.453483, -0.709423, -0.539512,
		-0.890388, -0.387454, -0.238933,
		30.017048, 36.615211, 26.328625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676086, 36.707378, 25.755672>,  <30.640320, 36.886433, 26.495878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676086, 36.707378, 25.755672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290022, 36.722305, 25.859262>,  <30.058382, 36.731262, 25.921415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290022, 36.722305, 25.859262>,  <30.676086, 36.707378, 25.755672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290022, 36.722305, 25.859262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158784, 0.703152, -0.693083,
		-0.207960, -0.710059, -0.672732,
		-0.965163, 0.037315, 0.258973,
		30.000473, 36.733501, 25.936954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330059, 36.695244, 25.111271>,  <30.676086, 36.707378, 25.755672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330059, 36.695244, 25.111271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038971, 36.816296, 25.357470>,  <29.864319, 36.888927, 25.505190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038971, 36.816296, 25.357470>,  <30.330059, 36.695244, 25.111271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038971, 36.816296, 25.357470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317899, 0.646356, -0.693660,
		-0.607752, -0.700457, -0.374161,
		-0.727720, 0.302628, 0.615499,
		29.820654, 36.907085, 25.542120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699804, 36.721714, 24.658886>,  <30.330059, 36.695244, 25.111271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699804, 36.721714, 24.658886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640177, 36.947914, 24.983351>,  <29.604401, 37.083633, 25.178030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640177, 36.947914, 24.983351>,  <29.699804, 36.721714, 24.658886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640177, 36.947914, 24.983351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318462, 0.749165, -0.580805,
		-0.936141, -0.344905, 0.068412,
		-0.149071, 0.565502, 0.811163,
		29.595455, 37.117565, 25.226700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056833, 36.978683, 24.589308>,  <29.699804, 36.721714, 24.658886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056833, 36.978683, 24.589308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259048, 37.231987, 24.823717>,  <29.380377, 37.383968, 24.964363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259048, 37.231987, 24.823717>,  <29.056833, 36.978683, 24.589308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259048, 37.231987, 24.823717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265250, 0.760380, -0.592845,
		-0.821021, 0.144262, 0.552371,
		0.505537, 0.633254, 0.586022,
		29.410709, 37.421963, 24.999523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632296, 37.609180, 24.564785>,  <29.056833, 36.978683, 24.589308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632296, 37.609180, 24.564785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962700, 37.740788, 24.747850>,  <29.160942, 37.819752, 24.857689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962700, 37.740788, 24.747850>,  <28.632296, 37.609180, 24.564785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962700, 37.740788, 24.747850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030588, 0.836919, -0.546471,
		-0.562827, 0.437391, 0.701367,
		0.826009, 0.329022, 0.457662,
		29.210503, 37.839493, 24.885149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582689, 38.284748, 24.604372>,  <28.632296, 37.609180, 24.564785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582689, 38.284748, 24.604372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977579, 38.249920, 24.657747>,  <29.214514, 38.229023, 24.689772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977579, 38.249920, 24.657747>,  <28.582689, 38.284748, 24.604372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977579, 38.249920, 24.657747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154177, 0.733349, -0.662139,
		-0.040203, 0.674253, 0.737405,
		0.987225, -0.087071, 0.133437,
		29.273746, 38.223797, 24.697779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847551, 38.931446, 24.835993>,  <28.582689, 38.284748, 24.604372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847551, 38.931446, 24.835993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141773, 38.739456, 24.644751>,  <29.318306, 38.624264, 24.530005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141773, 38.739456, 24.644751>,  <28.847551, 38.931446, 24.835993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141773, 38.739456, 24.644751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066080, 0.753195, -0.654470,
		0.674233, 0.449806, 0.585734,
		0.735557, -0.479970, -0.478105,
		29.362440, 38.595467, 24.501320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505205, 39.288670, 24.903982>,  <28.847551, 38.931446, 24.835993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505205, 39.288670, 24.903982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534239, 39.070621, 24.569899>,  <29.551659, 38.939793, 24.369448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534239, 39.070621, 24.569899>,  <29.505205, 39.288670, 24.903982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534239, 39.070621, 24.569899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073611, 0.832205, -0.549560,
		0.994642, 0.101370, 0.020279,
		0.072585, -0.545123, -0.835208,
		29.556015, 38.907085, 24.319336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158972, 39.505749, 24.561886>,  <29.505205, 39.288670, 24.903982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158972, 39.505749, 24.561886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930328, 39.326977, 24.286636>,  <29.793142, 39.219711, 24.121487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930328, 39.326977, 24.286636>,  <30.158972, 39.505749, 24.561886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930328, 39.326977, 24.286636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110920, 0.788850, -0.604494,
		0.812994, -0.421861, -0.401340,
		-0.571610, -0.446933, -0.688123,
		29.758846, 39.192898, 24.080198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519470, 39.729748, 24.008913>,  <30.158972, 39.505749, 24.561886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519470, 39.729748, 24.008913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169559, 39.604160, 23.861296>,  <29.959614, 39.528809, 23.772726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169559, 39.604160, 23.861296>,  <30.519470, 39.729748, 24.008913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169559, 39.604160, 23.861296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064464, 0.679465, -0.730870,
		0.480219, -0.663138, -0.574141,
		-0.874777, -0.313966, -0.369041,
		29.907127, 39.509972, 23.750584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516973, 39.575794, 23.251154>,  <30.519470, 39.729748, 24.008913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516973, 39.575794, 23.251154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139771, 39.669502, 23.345686>,  <29.913448, 39.725727, 23.402405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139771, 39.669502, 23.345686>,  <30.516973, 39.575794, 23.251154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139771, 39.669502, 23.345686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044011, 0.616154, -0.786395,
		-0.329847, -0.751978, -0.570728,
		-0.943008, 0.234271, 0.236332,
		29.856869, 39.739784, 23.416586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087128, 39.820976, 22.603794>,  <30.516973, 39.575794, 23.251154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087128, 39.820976, 22.603794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822966, 39.931896, 22.882929>,  <29.664469, 39.998447, 23.050409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822966, 39.931896, 22.882929>,  <30.087128, 39.820976, 22.603794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822966, 39.931896, 22.882929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265161, 0.783333, -0.562209,
		-0.702535, -0.556324, -0.443788,
		-0.660404, 0.277296, 0.697835,
		29.624844, 40.015083, 23.092279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419430, 39.983902, 22.225199>,  <30.087128, 39.820976, 22.603794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419430, 39.983902, 22.225199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403313, 40.174210, 22.576656>,  <29.393642, 40.288395, 22.787531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403313, 40.174210, 22.576656>,  <29.419430, 39.983902, 22.225199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403313, 40.174210, 22.576656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346030, 0.818300, -0.458964,
		-0.937358, -0.322531, 0.131658,
		-0.040295, 0.475771, 0.878646,
		29.391224, 40.316940, 22.840250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771370, 40.390347, 22.212587>,  <29.419430, 39.983902, 22.225199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771370, 40.390347, 22.212587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997320, 40.569809, 22.489607>,  <29.132891, 40.677486, 22.655819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997320, 40.569809, 22.489607>,  <28.771370, 40.390347, 22.212587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997320, 40.569809, 22.489607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156963, 0.882370, -0.443606,
		-0.810110, 0.141878, 0.568852,
		0.564876, 0.448658, 0.692547,
		29.166782, 40.704407, 22.697371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381523, 41.055824, 22.425272>,  <28.771370, 40.390347, 22.212587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381523, 41.055824, 22.425272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763676, 41.107014, 22.531759>,  <28.992968, 41.137726, 22.595652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763676, 41.107014, 22.531759>,  <28.381523, 41.055824, 22.425272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763676, 41.107014, 22.531759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026011, 0.861328, -0.507383,
		-0.294231, 0.491668, 0.819568,
		0.955380, 0.127970, 0.266218,
		29.050289, 41.145405, 22.611626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463045, 41.067982, 23.197506>,  <28.381523, 41.055824, 22.425272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463045, 41.067982, 23.197506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381601, 41.412533, 23.383657>,  <28.332735, 41.619263, 23.495348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381601, 41.412533, 23.383657>,  <28.463045, 41.067982, 23.197506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381601, 41.412533, 23.383657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456170, 0.337121, -0.823564,
		-0.866286, -0.379977, 0.324292,
		-0.203610, 0.861375, 0.465378,
		28.320518, 41.670944, 23.523272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876343, 41.238094, 22.915403>,  <28.463045, 41.067982, 23.197506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876343, 41.238094, 22.915403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923420, 41.587242, 23.104824>,  <27.951666, 41.796730, 23.218477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923420, 41.587242, 23.104824>,  <27.876343, 41.238094, 22.915403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923420, 41.587242, 23.104824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301053, 0.485788, -0.820596,
		-0.946317, -0.045986, 0.319953,
		0.117693, 0.872866, 0.473554,
		27.958729, 41.849102, 23.246891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199493, 41.587914, 22.905428>,  <27.876343, 41.238094, 22.915403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199493, 41.587914, 22.905428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517931, 41.828770, 22.929642>,  <27.708994, 41.973282, 22.944170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517931, 41.828770, 22.929642>,  <27.199493, 41.587914, 22.905428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517931, 41.828770, 22.929642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286655, 0.463293, -0.838563,
		-0.532977, 0.650222, 0.541430,
		0.796093, 0.602139, 0.060535,
		27.756760, 42.009411, 22.947802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993521, 42.264034, 22.729635>,  <27.199493, 41.587914, 22.905428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993521, 42.264034, 22.729635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389320, 42.241882, 22.676231>,  <27.626801, 42.228592, 22.644190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389320, 42.241882, 22.676231>,  <26.993521, 42.264034, 22.729635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389320, 42.241882, 22.676231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101063, 0.395251, -0.912997,
		0.103333, 0.916902, 0.385504,
		0.989499, -0.055382, -0.133508,
		27.686171, 42.225269, 22.636179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321009, 42.959404, 22.651094>,  <26.993521, 42.264034, 22.729635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321009, 42.959404, 22.651094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535404, 42.674534, 22.469757>,  <27.664042, 42.503613, 22.360954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535404, 42.674534, 22.469757>,  <27.321009, 42.959404, 22.651094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535404, 42.674534, 22.469757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050362, 0.563013, -0.824912,
		0.842721, 0.419313, 0.337636,
		0.535989, -0.712175, -0.453345,
		27.696201, 42.460880, 22.333754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938795, 43.271587, 22.311844>,  <27.321009, 42.959404, 22.651094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938795, 43.271587, 22.311844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864597, 42.923016, 22.130203>,  <27.820080, 42.713875, 22.021219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864597, 42.923016, 22.130203>,  <27.938795, 43.271587, 22.311844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864597, 42.923016, 22.130203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131402, 0.435972, -0.890316,
		0.973820, -0.224817, 0.033638,
		-0.185493, -0.871427, -0.454099,
		27.808949, 42.661587, 21.993973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498669, 43.026859, 21.960478>,  <27.938795, 43.271587, 22.311844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498669, 43.026859, 21.960478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151377, 42.987179, 21.766020>,  <27.943001, 42.963371, 21.649345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151377, 42.987179, 21.766020>,  <28.498669, 43.026859, 21.960478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151377, 42.987179, 21.766020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319894, 0.637046, -0.701313,
		0.379266, -0.764416, -0.521369,
		-0.868230, -0.099201, -0.486142,
		27.890907, 42.957417, 21.620176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796011, 42.570412, 22.484818>,  <28.498669, 43.026859, 21.960478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796011, 42.570412, 22.484818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412199, 42.582588, 22.596800>,  <28.181911, 42.589893, 22.663990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412199, 42.582588, 22.596800>,  <28.796011, 42.570412, 22.484818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412199, 42.582588, 22.596800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233218, -0.471311, 0.850574,
		0.157837, 0.881442, 0.445138,
		-0.959530, 0.030438, 0.279958,
		28.124340, 42.591721, 22.680788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730715, 42.868591, 23.115253>,  <28.796011, 42.570412, 22.484818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730715, 42.868591, 23.115253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425049, 42.614830, 23.068630>,  <28.241650, 42.462574, 23.040655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425049, 42.614830, 23.068630>,  <28.730715, 42.868591, 23.115253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425049, 42.614830, 23.068630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233760, -0.440803, 0.866631,
		-0.601171, 0.635002, 0.485144,
		-0.764166, -0.634401, -0.116560,
		28.195799, 42.424511, 23.033663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454149, 42.934418, 23.644800>,  <28.730715, 42.868591, 23.115253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454149, 42.934418, 23.644800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299517, 42.589329, 23.514408>,  <28.206738, 42.382275, 23.436172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299517, 42.589329, 23.514408>,  <28.454149, 42.934418, 23.644800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299517, 42.589329, 23.514408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219624, -0.429409, 0.875999,
		-0.895722, 0.267054, 0.355477,
		-0.386584, -0.862723, -0.325980,
		28.183542, 42.330513, 23.416615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849358, 42.751675, 24.149294>,  <28.454149, 42.934418, 23.644800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849358, 42.751675, 24.149294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023125, 42.449711, 23.952765>,  <28.127386, 42.268532, 23.834846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023125, 42.449711, 23.952765>,  <27.849358, 42.751675, 24.149294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023125, 42.449711, 23.952765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232247, -0.433155, 0.870883,
		-0.870253, -0.492437, -0.012847,
		0.434419, -0.754906, -0.491322,
		28.153450, 42.223240, 23.805368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592365, 42.128559, 24.511482>,  <27.849358, 42.751675, 24.149294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592365, 42.128559, 24.511482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940365, 42.019894, 24.346899>,  <28.149164, 41.954693, 24.248150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940365, 42.019894, 24.346899>,  <27.592365, 42.128559, 24.511482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940365, 42.019894, 24.346899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282949, -0.408327, 0.867876,
		-0.403755, -0.871482, -0.278389,
		0.870012, -0.271640, -0.411449,
		28.201365, 41.938393, 24.223461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792353, 41.527195, 24.789995>,  <27.592365, 42.128559, 24.511482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792353, 41.527195, 24.789995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157354, 41.622250, 24.656811>,  <28.376356, 41.679283, 24.576900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157354, 41.622250, 24.656811>,  <27.792353, 41.527195, 24.789995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157354, 41.622250, 24.656811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409052, -0.536220, 0.738339,
		-0.003083, -0.809936, -0.586510,
		0.912506, 0.237637, -0.332959,
		28.431107, 41.693542, 24.556923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200258, 40.922810, 24.952158>,  <27.792353, 41.527195, 24.789995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200258, 40.922810, 24.952158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438622, 41.235233, 24.877491>,  <28.581638, 41.422688, 24.832691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438622, 41.235233, 24.877491>,  <28.200258, 40.922810, 24.952158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438622, 41.235233, 24.877491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605528, -0.284343, 0.743293,
		0.527476, -0.555966, -0.642394,
		0.595907, 0.781057, -0.186668,
		28.617393, 41.469551, 24.821491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839884, 40.645290, 24.937008>,  <28.200258, 40.922810, 24.952158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839884, 40.645290, 24.937008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905855, 41.035172, 24.997351>,  <28.945438, 41.269100, 25.033556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905855, 41.035172, 24.997351>,  <28.839884, 40.645290, 24.937008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905855, 41.035172, 24.997351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703803, -0.223457, 0.674335,
		0.690985, -0.005042, -0.722852,
		0.164927, 0.974701, 0.150857,
		28.955334, 41.327583, 25.042608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605698, 40.810852, 24.875122>,  <28.839884, 40.645290, 24.937008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605698, 40.810852, 24.875122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428732, 41.100758, 25.086401>,  <29.322552, 41.274700, 25.213167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428732, 41.100758, 25.086401>,  <29.605698, 40.810852, 24.875122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428732, 41.100758, 25.086401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667100, -0.127672, 0.733947,
		0.599372, 0.677068, -0.427004,
		-0.442415, 0.724761, 0.528195,
		29.296007, 41.318188, 25.244860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128962, 40.910889, 25.300257>,  <29.605698, 40.810852, 24.875122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128962, 40.910889, 25.300257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857925, 41.171345, 25.437014>,  <29.695303, 41.327618, 25.519068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857925, 41.171345, 25.437014>,  <30.128962, 40.910889, 25.300257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857925, 41.171345, 25.437014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380862, -0.087006, 0.920529,
		0.629139, 0.753955, -0.189039,
		-0.677591, 0.651138, 0.341891,
		29.654648, 41.366688, 25.539581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473597, 41.503174, 25.646111>,  <30.128962, 40.910889, 25.300257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473597, 41.503174, 25.646111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109190, 41.434769, 25.796206>,  <29.890547, 41.393726, 25.886263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109190, 41.434769, 25.796206>,  <30.473597, 41.503174, 25.646111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109190, 41.434769, 25.796206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409848, -0.274953, 0.869727,
		-0.045565, 0.946126, 0.320578,
		-0.911015, -0.171017, 0.375240,
		29.835886, 41.383465, 25.908777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483850, 41.768688, 26.350756>,  <30.473597, 41.503174, 25.646111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483850, 41.768688, 26.350756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175682, 41.513847, 26.341396>,  <29.990782, 41.360943, 26.335781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175682, 41.513847, 26.341396>,  <30.483850, 41.768688, 26.350756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175682, 41.513847, 26.341396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224502, -0.305462, 0.925360,
		-0.596699, 0.707664, 0.378366,
		-0.770421, -0.637106, -0.023397,
		29.944555, 41.322716, 26.334377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127760, 41.790325, 27.038879>,  <30.483850, 41.768688, 26.350756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127760, 41.790325, 27.038879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025875, 41.434830, 26.886421>,  <29.964745, 41.221535, 26.794947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025875, 41.434830, 26.886421>,  <30.127760, 41.790325, 27.038879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025875, 41.434830, 26.886421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121021, -0.420342, 0.899259,
		-0.959414, 0.182928, 0.214622,
		-0.254714, -0.888735, -0.381144,
		29.949461, 41.168209, 26.772078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614887, 41.505360, 27.478876>,  <30.127760, 41.790325, 27.038879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614887, 41.505360, 27.478876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769499, 41.179790, 27.305384>,  <29.862267, 40.984447, 27.201288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769499, 41.179790, 27.305384>,  <29.614887, 41.505360, 27.478876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769499, 41.179790, 27.305384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094274, -0.432952, 0.896474,
		-0.917447, -0.387402, -0.090616,
		0.386528, -0.813924, -0.433732,
		29.885458, 40.935612, 27.175264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432018, 40.973354, 27.923727>,  <29.614887, 41.505360, 27.478876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432018, 40.973354, 27.923727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697136, 40.778545, 27.696213>,  <29.856207, 40.661659, 27.559704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697136, 40.778545, 27.696213>,  <29.432018, 40.973354, 27.923727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697136, 40.778545, 27.696213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195862, -0.620392, 0.759442,
		-0.722735, -0.614755, -0.315802,
		0.662792, -0.487021, -0.568786,
		29.895973, 40.632439, 27.525578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245810, 40.333111, 27.924221>,  <29.432018, 40.973354, 27.923727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245810, 40.333111, 27.924221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637772, 40.306744, 27.848917>,  <29.872950, 40.290924, 27.803734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637772, 40.306744, 27.848917>,  <29.245810, 40.333111, 27.924221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637772, 40.306744, 27.848917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102447, -0.643505, 0.758555,
		-0.171149, -0.762598, -0.623821,
		0.979904, -0.065917, -0.188261,
		29.931744, 40.286968, 27.792439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358025, 39.672329, 27.964886>,  <29.245810, 40.333111, 27.924221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358025, 39.672329, 27.964886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729145, 39.816788, 28.002321>,  <29.951817, 39.903461, 28.024782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729145, 39.816788, 28.002321>,  <29.358025, 39.672329, 27.964886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729145, 39.816788, 28.002321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213531, -0.719758, 0.660571,
		0.305923, -0.592894, -0.744908,
		0.927801, 0.361144, 0.093589,
		30.007486, 39.925133, 28.030397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772322, 39.054718, 27.937931>,  <29.358025, 39.672329, 27.964886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772322, 39.054718, 27.937931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996485, 39.335114, 28.114363>,  <30.130983, 39.503353, 28.220222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996485, 39.335114, 28.114363>,  <29.772322, 39.054718, 27.937931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996485, 39.335114, 28.114363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291138, -0.665313, 0.687457,
		0.775358, -0.256843, -0.576933,
		0.560410, 0.700992, 0.441079,
		30.164608, 39.545410, 28.246687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432718, 38.716320, 27.950937>,  <29.772322, 39.054718, 27.937931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432718, 38.716320, 27.950937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440516, 39.022709, 28.207970>,  <30.445194, 39.206543, 28.362188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440516, 39.022709, 28.207970>,  <30.432718, 38.716320, 27.950937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440516, 39.022709, 28.207970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461035, -0.577178, 0.674027,
		0.887168, 0.283114, -0.364390,
		0.019492, 0.765971, 0.642579,
		30.446363, 39.252499, 28.400743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105507, 38.672234, 28.335531>,  <30.432718, 38.716320, 27.950937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105507, 38.672234, 28.335531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871883, 38.901669, 28.565268>,  <30.731709, 39.039330, 28.703110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871883, 38.901669, 28.565268>,  <31.105507, 38.672234, 28.335531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871883, 38.901669, 28.565268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282973, -0.519302, 0.806382,
		0.760790, 0.633498, 0.140992,
		-0.584059, 0.573591, 0.574342,
		30.696665, 39.073746, 28.737570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508446, 38.941231, 28.879234>,  <31.105507, 38.672234, 28.335531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508446, 38.941231, 28.879234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126915, 38.962444, 28.997492>,  <30.897997, 38.975174, 29.068447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126915, 38.962444, 28.997492>,  <31.508446, 38.941231, 28.879234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126915, 38.962444, 28.997492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258261, -0.357759, 0.897390,
		0.153361, 0.932307, 0.327543,
		-0.953825, 0.053033, 0.295645,
		30.840767, 38.978355, 29.086185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437557, 39.242359, 29.614183>,  <31.508446, 38.941231, 28.879234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437557, 39.242359, 29.614183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094595, 39.041073, 29.571054>,  <30.888817, 38.920300, 29.545177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094595, 39.041073, 29.571054>,  <31.437557, 39.242359, 29.614183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094595, 39.041073, 29.571054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179931, -0.489405, 0.853292,
		-0.482161, 0.712218, 0.510164,
		-0.857406, -0.503219, -0.107822,
		30.837374, 38.890106, 29.538708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077019, 39.355225, 30.156389>,  <31.437557, 39.242359, 29.614183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077019, 39.355225, 30.156389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959188, 38.999641, 30.016111>,  <30.888491, 38.786293, 29.931946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959188, 38.999641, 30.016111>,  <31.077019, 39.355225, 30.156389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959188, 38.999641, 30.016111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284384, -0.431898, 0.855915,
		-0.912332, 0.152401, 0.380031,
		-0.294577, -0.888954, -0.350694,
		30.870815, 38.732956, 29.910904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851524, 39.056599, 30.731600>,  <31.077019, 39.355225, 30.156389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851524, 39.056599, 30.731600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836514, 38.757851, 30.466036>,  <30.827507, 38.578602, 30.306698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836514, 38.757851, 30.466036>,  <30.851524, 39.056599, 30.731600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836514, 38.757851, 30.466036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014342, -0.664714, 0.746960,
		-0.999193, 0.018509, 0.035656,
		-0.037526, -0.746869, -0.663912,
		30.825256, 38.533791, 30.266863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329464, 38.648457, 30.956997>,  <30.851524, 39.056599, 30.731600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329464, 38.648457, 30.956997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520185, 38.392159, 30.716297>,  <30.634619, 38.238380, 30.571878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520185, 38.392159, 30.716297>,  <30.329464, 38.648457, 30.956997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520185, 38.392159, 30.716297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061761, -0.707303, 0.704207,
		-0.876838, -0.298603, -0.376818,
		0.476802, -0.640748, -0.601749,
		30.663227, 38.199936, 30.535772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008690, 38.071087, 31.056221>,  <30.329464, 38.648457, 30.956997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008690, 38.071087, 31.056221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373976, 37.981495, 30.920059>,  <30.593147, 37.927742, 30.838362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373976, 37.981495, 30.920059>,  <30.008690, 38.071087, 31.056221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373976, 37.981495, 30.920059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085593, -0.711309, 0.697649,
		-0.398388, -0.666239, -0.630407,
		0.913215, -0.223976, -0.340402,
		30.647940, 37.914303, 30.817938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928488, 37.393360, 31.016727>,  <30.008690, 38.071087, 31.056221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928488, 37.393360, 31.016727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305685, 37.514771, 31.071331>,  <30.532003, 37.587616, 31.104094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305685, 37.514771, 31.071331>,  <29.928488, 37.393360, 31.016727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305685, 37.514771, 31.071331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107754, -0.666533, 0.737647,
		0.314880, -0.680888, -0.661243,
		0.942995, 0.303522, 0.136510,
		30.588583, 37.605827, 31.112284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316849, 36.828163, 31.100441>,  <29.928488, 37.393360, 31.016727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316849, 36.828163, 31.100441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567619, 37.105492, 31.242577>,  <30.718081, 37.271889, 31.327858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567619, 37.105492, 31.242577>,  <30.316849, 36.828163, 31.100441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567619, 37.105492, 31.242577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226631, -0.598673, 0.768264,
		0.745388, -0.401112, -0.532452,
		0.626925, 0.693325, 0.355339,
		30.755697, 37.313488, 31.349178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943804, 36.457531, 31.306000>,  <30.316849, 36.828163, 31.100441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943804, 36.457531, 31.306000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928045, 36.799683, 31.512600>,  <30.918591, 37.004974, 31.636560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928045, 36.799683, 31.512600>,  <30.943804, 36.457531, 31.306000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928045, 36.799683, 31.512600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247012, -0.492521, 0.834511,
		0.968211, 0.160460, -0.191885,
		-0.039398, 0.855380, 0.516500,
		30.916225, 37.056297, 31.667549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599642, 36.553322, 31.583937>,  <30.943804, 36.457531, 31.306000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599642, 36.553322, 31.583937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357887, 36.779957, 31.807968>,  <31.212833, 36.915939, 31.942387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357887, 36.779957, 31.807968>,  <31.599642, 36.553322, 31.583937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357887, 36.779957, 31.807968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451253, -0.335907, 0.826763,
		0.656571, 0.752424, -0.052657,
		-0.604389, 0.566591, 0.560080,
		31.176571, 36.949932, 31.975992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020409, 36.849072, 32.136097>,  <31.599642, 36.553322, 31.583937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020409, 36.849072, 32.136097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651924, 36.908592, 32.279892>,  <31.430834, 36.944305, 32.366169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651924, 36.908592, 32.279892>,  <32.020409, 36.849072, 32.136097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651924, 36.908592, 32.279892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311211, -0.272684, 0.910379,
		0.233494, 0.950526, 0.204890,
		-0.921210, 0.148804, 0.359485,
		31.375561, 36.953232, 32.387737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056744, 37.153534, 32.789333>,  <32.020409, 36.849072, 32.136097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056744, 37.153534, 32.789333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708479, 36.957523, 32.806366>,  <31.499519, 36.839916, 32.816586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708479, 36.957523, 32.806366>,  <32.056744, 37.153534, 32.789333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708479, 36.957523, 32.806366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206645, -0.285857, 0.935726,
		-0.446361, 0.823504, 0.350148,
		-0.870666, -0.490028, 0.042577,
		31.447279, 36.810516, 32.819138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032990, 36.974503, 33.448551>,  <32.056744, 37.153534, 32.789333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032990, 36.974503, 33.448551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695999, 36.788612, 33.339539>,  <31.493807, 36.677078, 33.274132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695999, 36.788612, 33.339539>,  <32.032990, 36.974503, 33.448551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695999, 36.788612, 33.339539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067337, -0.411071, 0.909113,
		-0.534516, 0.784254, 0.315022,
		-0.842472, -0.464722, -0.272533,
		31.443258, 36.649197, 33.257778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531254, 37.039448, 34.059383>,  <32.032990, 36.974503, 33.448551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531254, 37.039448, 34.059383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431423, 36.720650, 33.839382>,  <31.371525, 36.529369, 33.707382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431423, 36.720650, 33.839382>,  <31.531254, 37.039448, 34.059383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431423, 36.720650, 33.839382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047503, -0.557220, 0.829005,
		-0.967190, 0.233025, 0.101208,
		-0.249574, -0.796997, -0.550007,
		31.356550, 36.481552, 33.674381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053825, 36.764317, 34.408710>,  <31.531254, 37.039448, 34.059383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053825, 36.764317, 34.408710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173817, 36.476357, 34.158348>,  <31.245811, 36.303581, 34.008129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173817, 36.476357, 34.158348>,  <31.053825, 36.764317, 34.408710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173817, 36.476357, 34.158348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074255, -0.671755, 0.737043,
		-0.951052, -0.174618, -0.254966,
		0.299976, -0.719899, -0.625908,
		31.263809, 36.260387, 33.970577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552477, 36.198601, 34.446869>,  <31.053825, 36.764317, 34.408710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552477, 36.198601, 34.446869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872581, 36.007488, 34.301926>,  <31.064644, 35.892822, 34.214958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872581, 36.007488, 34.301926>,  <30.552477, 36.198601, 34.446869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872581, 36.007488, 34.301926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114179, -0.714644, 0.690107,
		-0.588678, -0.510893, -0.626455,
		0.800263, -0.477779, -0.362362,
		31.112659, 35.864155, 34.193218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335302, 35.489368, 34.304070>,  <30.552477, 36.198601, 34.446869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335302, 35.489368, 34.304070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732250, 35.440376, 34.309723>,  <30.970419, 35.410980, 34.313114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732250, 35.440376, 34.309723>,  <30.335302, 35.489368, 34.304070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732250, 35.440376, 34.309723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112066, -0.848237, 0.517625,
		-0.051413, -0.515259, -0.855491,
		0.992370, -0.122485, 0.014133,
		31.029961, 35.403629, 34.313961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482555, 34.727428, 34.028389>,  <30.335302, 35.489368, 34.304070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482555, 34.727428, 34.028389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789553, 34.859684, 34.248074>,  <30.973751, 34.939037, 34.379887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789553, 34.859684, 34.248074>,  <30.482555, 34.727428, 34.028389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789553, 34.859684, 34.248074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120163, -0.767344, 0.629876,
		0.629696, -0.549420, -0.549200,
		0.767492, 0.330637, 0.549213,
		31.019800, 34.958874, 34.412838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984322, 34.206882, 34.062584>,  <30.482555, 34.727428, 34.028389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984322, 34.206882, 34.062584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070354, 34.438042, 34.377487>,  <31.121975, 34.576736, 34.566429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070354, 34.438042, 34.377487>,  <30.984322, 34.206882, 34.062584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070354, 34.438042, 34.377487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120104, -0.815655, 0.565935,
		0.969182, -0.027171, -0.244842,
		0.215084, 0.577900, 0.787255,
		31.134880, 34.611412, 34.613663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602089, 33.877754, 34.330887>,  <30.984322, 34.206882, 34.062584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602089, 33.877754, 34.330887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442825, 34.105827, 34.618320>,  <31.347267, 34.242672, 34.790779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442825, 34.105827, 34.618320>,  <31.602089, 33.877754, 34.330887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442825, 34.105827, 34.618320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032423, -0.774118, 0.632210,
		0.916744, 0.275018, 0.289734,
		-0.398158, 0.570181, 0.718585,
		31.323378, 34.276882, 34.833897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028797, 33.684532, 34.873390>,  <31.602089, 33.877754, 34.330887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028797, 33.684532, 34.873390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674843, 33.818863, 35.002506>,  <31.462469, 33.899460, 35.079975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674843, 33.818863, 35.002506>,  <32.028797, 33.684532, 34.873390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674843, 33.818863, 35.002506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101629, -0.815470, 0.569807,
		0.454578, 0.471413, 0.755731,
		-0.884890, 0.335826, 0.322786,
		31.409376, 33.919609, 35.099342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759636, 33.631004, 34.677841>,  <32.028797, 33.684532, 34.873390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759636, 33.631004, 34.677841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031765, 33.749657, 34.945923>,  <33.195042, 33.820847, 35.106770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031765, 33.749657, 34.945923>,  <32.759636, 33.631004, 34.677841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031765, 33.749657, 34.945923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288195, 0.732503, -0.616753,
		-0.673870, 0.612741, 0.412854,
		0.680326, 0.296628, 0.670200,
		33.235863, 33.838646, 35.146984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736904, 34.408081, 34.768696>,  <32.759636, 33.631004, 34.677841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736904, 34.408081, 34.768696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089962, 34.247658, 34.866749>,  <33.301796, 34.151402, 34.925579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089962, 34.247658, 34.866749>,  <32.736904, 34.408081, 34.768696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089962, 34.247658, 34.866749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468227, 0.796011, -0.383576,
		-0.041291, 0.453339, 0.890382,
		0.882643, -0.401063, 0.245134,
		33.354755, 34.127338, 34.940289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193329, 34.961090, 35.051037>,  <32.736904, 34.408081, 34.768696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193329, 34.961090, 35.051037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449505, 34.673153, 34.943951>,  <33.603210, 34.500393, 34.879700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449505, 34.673153, 34.943951>,  <33.193329, 34.961090, 35.051037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449505, 34.673153, 34.943951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581654, 0.682242, -0.442973,
		0.501515, 0.127979, 0.855631,
		0.640438, -0.719839, -0.267715,
		33.641636, 34.457203, 34.863636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872475, 35.190178, 35.185524>,  <33.193329, 34.961090, 35.051037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872475, 35.190178, 35.185524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948425, 34.905746, 34.914726>,  <33.993996, 34.735088, 34.752247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948425, 34.905746, 34.914726>,  <33.872475, 35.190178, 35.185524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948425, 34.905746, 34.914726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512269, 0.659987, -0.549543,
		0.837573, -0.242457, 0.489578,
		0.189874, -0.711078, -0.676990,
		34.005386, 34.692425, 34.711628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576035, 35.248798, 35.050232>,  <33.872475, 35.190178, 35.185524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576035, 35.248798, 35.050232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387619, 35.067085, 34.747776>,  <34.274570, 34.958057, 34.566303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387619, 35.067085, 34.747776>,  <34.576035, 35.248798, 35.050232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387619, 35.067085, 34.747776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367956, 0.677866, -0.636480,
		0.801704, -0.578034, -0.152145,
		-0.471041, -0.454286, -0.756139,
		34.246307, 34.930801, 34.520935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112148, 35.389103, 34.472313>,  <34.576035, 35.248798, 35.050232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112148, 35.389103, 34.472313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798962, 35.216969, 34.292637>,  <34.611050, 35.113689, 34.184834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798962, 35.216969, 34.292637>,  <35.112148, 35.389103, 34.472313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798962, 35.216969, 34.292637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293040, 0.381789, -0.876564,
		0.548712, -0.817953, -0.172824,
		-0.782970, -0.430337, -0.449186,
		34.564072, 35.087868, 34.157883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284157, 35.240963, 33.831230>,  <35.112148, 35.389103, 34.472313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284157, 35.240963, 33.831230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887840, 35.235443, 33.777348>,  <34.650051, 35.232132, 33.745018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887840, 35.235443, 33.777348>,  <35.284157, 35.240963, 33.831230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887840, 35.235443, 33.777348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120839, 0.358835, -0.925546,
		0.061106, -0.933299, -0.353863,
		-0.990790, -0.013796, -0.134706,
		34.590603, 35.231304, 33.736935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242786, 34.989094, 33.157070>,  <35.284157, 35.240963, 33.831230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242786, 34.989094, 33.157070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918037, 35.199368, 33.258667>,  <34.723186, 35.325531, 33.319626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918037, 35.199368, 33.258667>,  <35.242786, 34.989094, 33.157070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918037, 35.199368, 33.258667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040401, 0.383408, -0.922695,
		-0.582430, -0.759375, -0.290042,
		-0.811876, 0.525688, 0.253988,
		34.674473, 35.357075, 33.334862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858929, 35.113041, 32.542328>,  <35.242786, 34.989094, 33.157070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858929, 35.113041, 32.542328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647606, 35.349533, 32.786079>,  <34.520813, 35.491428, 32.932331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647606, 35.349533, 32.786079>,  <34.858929, 35.113041, 32.542328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647606, 35.349533, 32.786079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131193, 0.652249, -0.746565,
		-0.838857, -0.474361, -0.267022,
		-0.528306, 0.591230, 0.609376,
		34.489113, 35.526901, 32.968891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065636, 35.305706, 32.213673>,  <34.858929, 35.113041, 32.542328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065636, 35.305706, 32.213673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212971, 35.599277, 32.441948>,  <34.301373, 35.775421, 32.578911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212971, 35.599277, 32.441948>,  <34.065636, 35.305706, 32.213673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212971, 35.599277, 32.441948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202781, 0.662487, -0.721104,
		-0.907306, 0.149888, 0.392847,
		0.368341, 0.733924, 0.570684,
		34.323471, 35.819454, 32.613152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502087, 35.745457, 32.178806>,  <34.065636, 35.305706, 32.213673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502087, 35.745457, 32.178806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832523, 35.931480, 32.306107>,  <34.030785, 36.043095, 32.382488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832523, 35.931480, 32.306107>,  <33.502087, 35.745457, 32.178806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832523, 35.931480, 32.306107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218706, 0.785069, -0.579512,
		-0.519360, 0.409128, 0.750253,
		0.826095, 0.465060, 0.318255,
		34.080353, 36.070999, 32.401585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300644, 36.477337, 32.305351>,  <33.502087, 35.745457, 32.178806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300644, 36.477337, 32.305351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696770, 36.520531, 32.270466>,  <33.934448, 36.546448, 32.249535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696770, 36.520531, 32.270466>,  <33.300644, 36.477337, 32.305351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696770, 36.520531, 32.270466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138491, 0.811134, -0.568227,
		0.009381, 0.574804, 0.818237,
		0.990319, 0.107988, -0.087215,
		33.993866, 36.552929, 32.244301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440704, 37.112865, 32.533737>,  <33.300644, 36.477337, 32.305351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440704, 37.112865, 32.533737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751751, 37.036560, 32.294094>,  <33.938377, 36.990776, 32.150311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751751, 37.036560, 32.294094>,  <33.440704, 37.112865, 32.533737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751751, 37.036560, 32.294094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181280, 0.844371, -0.504157,
		0.602044, 0.500645, 0.622011,
		0.777612, -0.190767, -0.599106,
		33.985035, 36.979328, 32.114361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872177, 37.746738, 32.515759>,  <33.440704, 37.112865, 32.533737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872177, 37.746738, 32.515759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979786, 37.532894, 32.195305>,  <34.044350, 37.404587, 32.003033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979786, 37.532894, 32.195305>,  <33.872177, 37.746738, 32.515759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979786, 37.532894, 32.195305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285674, 0.750077, -0.596468,
		0.919793, 0.389324, 0.049060,
		0.269018, -0.534612, -0.801136,
		34.060490, 37.372509, 31.954964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370766, 38.117146, 32.199062>,  <33.872177, 37.746738, 32.515759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370766, 38.117146, 32.199062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245747, 37.861195, 31.918243>,  <34.170734, 37.707623, 31.749752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245747, 37.861195, 31.918243>,  <34.370766, 38.117146, 32.199062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245747, 37.861195, 31.918243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157362, 0.763738, -0.626052,
		0.936777, -0.085196, -0.339397,
		-0.312548, -0.639880, -0.702046,
		34.151981, 37.669231, 31.707630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809090, 38.162872, 31.530329>,  <34.370766, 38.117146, 32.199062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809090, 38.162872, 31.530329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445675, 38.018993, 31.445301>,  <34.227627, 37.932667, 31.394283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445675, 38.018993, 31.445301>,  <34.809090, 38.162872, 31.530329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445675, 38.018993, 31.445301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156767, 0.765077, -0.624565,
		0.387285, -0.534115, -0.751486,
		-0.908534, -0.359693, -0.212571,
		34.173115, 37.911087, 31.381529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732521, 38.201107, 30.771282>,  <34.809090, 38.162872, 31.530329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732521, 38.201107, 30.771282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356640, 38.138000, 30.892647>,  <34.131111, 38.100136, 30.965466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356640, 38.138000, 30.892647>,  <34.732521, 38.201107, 30.771282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356640, 38.138000, 30.892647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318207, 0.728395, -0.606782,
		-0.125276, -0.666746, -0.734681,
		-0.939707, -0.157765, 0.303413,
		34.074726, 38.090672, 30.983671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393211, 38.022190, 30.212271>,  <34.732521, 38.201107, 30.771282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393211, 38.022190, 30.212271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101727, 38.140099, 30.459522>,  <33.926834, 38.210842, 30.607874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101727, 38.140099, 30.459522>,  <34.393211, 38.022190, 30.212271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101727, 38.140099, 30.459522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313541, 0.658846, -0.683823,
		-0.608823, -0.692121, -0.387688,
		-0.728715, 0.294772, 0.618129,
		33.883110, 38.228531, 30.644960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711731, 37.843941, 29.961229>,  <34.393211, 38.022190, 30.212271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711731, 37.843941, 29.961229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653969, 38.155560, 30.205273>,  <33.619312, 38.342533, 30.351698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653969, 38.155560, 30.205273>,  <33.711731, 37.843941, 29.961229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653969, 38.155560, 30.205273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602185, 0.420065, -0.678910,
		-0.785189, -0.465433, 0.408474,
		-0.144401, 0.779049, 0.610107,
		33.610649, 38.389275, 30.388306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048328, 38.076939, 29.689444>,  <33.711731, 37.843941, 29.961229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048328, 38.076939, 29.689444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208870, 38.359943, 29.922113>,  <33.305195, 38.529747, 30.061714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208870, 38.359943, 29.922113>,  <33.048328, 38.076939, 29.689444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208870, 38.359943, 29.922113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292161, 0.700783, -0.650803,
		-0.868078, 0.091258, 0.487967,
		0.401350, 0.707513, 0.581672,
		33.329273, 38.572197, 30.096615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562580, 38.550964, 29.812349>,  <33.048328, 38.076939, 29.689444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562580, 38.550964, 29.812349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911449, 38.741432, 29.857195>,  <33.120773, 38.855713, 29.884102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911449, 38.741432, 29.857195>,  <32.562580, 38.550964, 29.812349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911449, 38.741432, 29.857195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278092, 0.671162, -0.687173,
		-0.402458, 0.568159, 0.717791,
		0.872177, 0.476170, 0.112114,
		33.173103, 38.884285, 29.890829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363987, 39.310684, 29.713339>,  <32.562580, 38.550964, 29.812349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363987, 39.310684, 29.713339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756145, 39.268673, 29.646654>,  <32.991440, 39.243465, 29.606644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756145, 39.268673, 29.646654>,  <32.363987, 39.310684, 29.713339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756145, 39.268673, 29.646654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036569, 0.734396, -0.677736,
		0.193617, 0.670546, 0.716157,
		0.980395, -0.105032, -0.166713,
		33.050262, 39.237164, 29.596640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588287, 39.924503, 29.727169>,  <32.363987, 39.310684, 29.713339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588287, 39.924503, 29.727169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876305, 39.752319, 29.509453>,  <33.049114, 39.649010, 29.378824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876305, 39.752319, 29.509453>,  <32.588287, 39.924503, 29.727169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876305, 39.752319, 29.509453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169920, 0.651106, -0.739722,
		0.672808, 0.625114, 0.395678,
		0.720039, -0.430457, -0.544289,
		33.092316, 39.623180, 29.346167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945324, 40.455387, 29.374012>,  <32.588287, 39.924503, 29.727169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945324, 40.455387, 29.374012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017494, 40.127560, 29.156481>,  <33.060795, 39.930862, 29.025963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017494, 40.127560, 29.156481>,  <32.945324, 40.455387, 29.374012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017494, 40.127560, 29.156481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163434, 0.520235, -0.838239,
		0.969916, 0.240117, -0.040084,
		0.180422, -0.819573, -0.543828,
		33.071621, 39.881687, 28.993332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456776, 40.657139, 28.786686>,  <32.945324, 40.455387, 29.374012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456776, 40.657139, 28.786686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261292, 40.329208, 28.667322>,  <33.144001, 40.132450, 28.595703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261292, 40.329208, 28.667322>,  <33.456776, 40.657139, 28.786686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261292, 40.329208, 28.667322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248701, 0.458755, -0.853048,
		0.836250, -0.342676, -0.428088,
		-0.488707, -0.819827, -0.298410,
		33.114681, 40.083260, 28.577799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592415, 40.701576, 28.021938>,  <33.456776, 40.657139, 28.786686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592415, 40.701576, 28.021938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308792, 40.420956, 28.050406>,  <33.138618, 40.252583, 28.067486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308792, 40.420956, 28.050406>,  <33.592415, 40.701576, 28.021938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308792, 40.420956, 28.050406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347720, 0.260059, -0.900811,
		0.613455, -0.663474, -0.428339,
		-0.709059, -0.701549, 0.071169,
		33.096073, 40.210491, 28.071756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719410, 40.283237, 27.513647>,  <33.592415, 40.701576, 28.021938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719410, 40.283237, 27.513647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327946, 40.245758, 27.586805>,  <33.093067, 40.223270, 27.630701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327946, 40.245758, 27.586805>,  <33.719410, 40.283237, 27.513647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327946, 40.245758, 27.586805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199306, 0.215851, -0.955869,
		0.050087, -0.971920, -0.229919,
		-0.978657, -0.093700, 0.182898,
		33.034348, 40.217648, 27.641674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589226, 39.844082, 27.057100>,  <33.719410, 40.283237, 27.513647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589226, 39.844082, 27.057100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245090, 40.019161, 27.161596>,  <33.038609, 40.124207, 27.224293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245090, 40.019161, 27.161596>,  <33.589226, 39.844082, 27.057100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245090, 40.019161, 27.161596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228054, 0.127831, -0.965221,
		-0.455867, -0.889990, -0.010159,
		-0.860335, 0.437696, 0.261239,
		32.986988, 40.150471, 27.239967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121662, 39.653599, 26.530540>,  <33.589226, 39.844082, 27.057100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121662, 39.653599, 26.530540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954823, 39.966133, 26.716246>,  <32.854717, 40.153656, 26.827669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954823, 39.966133, 26.716246>,  <33.121662, 39.653599, 26.530540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954823, 39.966133, 26.716246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449458, 0.266657, -0.852573,
		-0.789946, -0.564274, 0.239957,
		-0.417099, 0.781338, 0.464262,
		32.829693, 40.200535, 26.855524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436604, 39.524609, 26.280489>,  <33.121662, 39.653599, 26.530540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436604, 39.524609, 26.280489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518314, 39.897709, 26.399313>,  <32.567341, 40.121571, 26.470608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518314, 39.897709, 26.399313>,  <32.436604, 39.524609, 26.280489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518314, 39.897709, 26.399313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232006, 0.340943, -0.911006,
		-0.951023, 0.117177, 0.286050,
		0.204275, 0.932753, 0.297059,
		32.579597, 40.177536, 26.488430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867533, 39.901844, 26.253325>,  <32.436604, 39.524609, 26.280489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867533, 39.901844, 26.253325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162258, 40.170765, 26.224716>,  <32.339092, 40.332119, 26.207550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162258, 40.170765, 26.224716>,  <31.867533, 39.901844, 26.253325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162258, 40.170765, 26.224716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422154, 0.374855, -0.825391,
		-0.528101, 0.638353, 0.560013,
		0.736814, 0.672302, -0.071522,
		32.383301, 40.372456, 26.203260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598337, 40.412136, 25.875448>,  <31.867533, 39.901844, 26.253325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598337, 40.412136, 25.875448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977976, 40.536369, 25.854469>,  <32.205761, 40.610909, 25.841883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977976, 40.536369, 25.854469>,  <31.598337, 40.412136, 25.875448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977976, 40.536369, 25.854469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198442, 0.460294, -0.865303,
		-0.244608, 0.831665, 0.498497,
		0.949098, 0.310583, -0.052446,
		32.262707, 40.629543, 25.838736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562052, 41.111340, 25.564495>,  <31.598337, 40.412136, 25.875448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562052, 41.111340, 25.564495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912296, 40.936291, 25.482719>,  <32.122444, 40.831261, 25.433655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912296, 40.936291, 25.482719>,  <31.562052, 41.111340, 25.564495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912296, 40.936291, 25.482719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008137, 0.436556, -0.899641,
		0.482951, 0.786070, 0.385813,
		0.875610, -0.437622, -0.204439,
		32.174980, 40.805004, 25.421389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958361, 41.636120, 25.322250>,  <31.562052, 41.111340, 25.564495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958361, 41.636120, 25.322250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154236, 41.308212, 25.203463>,  <32.271763, 41.111469, 25.132191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154236, 41.308212, 25.203463>,  <31.958361, 41.636120, 25.322250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154236, 41.308212, 25.203463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245033, 0.456263, -0.855443,
		0.836757, 0.346134, 0.424297,
		0.489689, -0.819765, -0.296967,
		32.301144, 41.062283, 25.114372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604393, 41.897274, 24.967529>,  <31.958361, 41.636120, 25.322250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604393, 41.897274, 24.967529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531452, 41.530968, 24.824356>,  <32.487686, 41.311184, 24.738453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531452, 41.530968, 24.824356>,  <32.604393, 41.897274, 24.967529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531452, 41.530968, 24.824356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418761, 0.257032, -0.870962,
		0.889599, -0.308713, 0.336616,
		-0.182356, -0.915768, -0.357932,
		32.476746, 41.256237, 24.716976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209652, 41.732315, 24.518929>,  <32.604393, 41.897274, 24.967529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209652, 41.732315, 24.518929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987167, 41.418579, 24.409063>,  <32.853676, 41.230339, 24.343143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987167, 41.418579, 24.409063>,  <33.209652, 41.732315, 24.518929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987167, 41.418579, 24.409063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536425, -0.086419, -0.839512,
		0.634727, -0.614282, 0.468807,
		-0.556211, -0.784340, -0.274663,
		32.820305, 41.183277, 24.326664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540810, 41.348522, 24.077116>,  <33.209652, 41.732315, 24.518929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540810, 41.348522, 24.077116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181034, 41.189186, 24.005199>,  <32.965168, 41.093582, 23.962049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181034, 41.189186, 24.005199>,  <33.540810, 41.348522, 24.077116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181034, 41.189186, 24.005199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289091, -0.233761, -0.928322,
		0.327764, -0.886948, 0.325412,
		-0.899443, -0.398345, -0.179790,
		32.911201, 41.069683, 23.951262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602161, 40.654499, 23.880266>,  <33.540810, 41.348522, 24.077116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602161, 40.654499, 23.880266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268383, 40.799267, 23.714031>,  <33.068115, 40.886127, 23.614290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268383, 40.799267, 23.714031>,  <33.602161, 40.654499, 23.880266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268383, 40.799267, 23.714031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408170, -0.100790, -0.907325,
		-0.370265, -0.926745, -0.063621,
		-0.834447, 0.361919, -0.415588,
		33.018047, 40.907841, 23.589355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518047, 40.335281, 23.176271>,  <33.602161, 40.654499, 23.880266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518047, 40.335281, 23.176271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305721, 40.674168, 23.167736>,  <33.178326, 40.877499, 23.162615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305721, 40.674168, 23.167736>,  <33.518047, 40.335281, 23.176271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305721, 40.674168, 23.167736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419838, 0.241010, -0.875015,
		-0.736185, -0.473431, -0.483626,
		-0.530817, 0.847217, -0.021336,
		33.146477, 40.928333, 23.161335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773087, 40.154778, 22.990229>,  <33.518047, 40.335281, 23.176271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773087, 40.154778, 22.990229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794037, 39.975742, 22.633148>,  <32.806606, 39.868320, 22.418900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794037, 39.975742, 22.633148>,  <32.773087, 40.154778, 22.990229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794037, 39.975742, 22.633148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188492, -0.873431, 0.448987,
		-0.980677, -0.191783, 0.038622,
		0.052374, -0.447592, -0.892703,
		32.809750, 39.841465, 22.365337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418037, 39.505409, 23.158604>,  <32.773087, 40.154778, 22.990229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418037, 39.505409, 23.158604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626629, 39.463135, 22.819925>,  <32.751781, 39.437771, 22.616718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626629, 39.463135, 22.819925>,  <32.418037, 39.505409, 23.158604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626629, 39.463135, 22.819925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330631, -0.889746, 0.314697,
		-0.786605, -0.444051, -0.429036,
		0.521475, -0.105689, -0.846696,
		32.783070, 39.431427, 22.565916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254501, 38.841404, 22.995890>,  <32.418037, 39.505409, 23.158604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254501, 38.841404, 22.995890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596458, 38.968777, 22.832056>,  <32.801632, 39.045200, 22.733755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596458, 38.968777, 22.832056>,  <32.254501, 38.841404, 22.995890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596458, 38.968777, 22.832056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451718, -0.845159, 0.285757,
		-0.255168, -0.429308, -0.866362,
		0.854892, 0.318435, -0.409584,
		32.852924, 39.064308, 22.709181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533569, 38.193462, 22.612146>,  <32.254501, 38.841404, 22.995890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533569, 38.193462, 22.612146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796680, 38.477222, 22.713404>,  <32.954548, 38.647476, 22.774158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796680, 38.477222, 22.713404>,  <32.533569, 38.193462, 22.612146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796680, 38.477222, 22.713404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510075, -0.666828, 0.543290,
		0.554212, -0.228243, -0.800471,
		0.657779, 0.709398, 0.253143,
		32.994015, 38.690041, 22.789347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213032, 37.830051, 22.453512>,  <32.533569, 38.193462, 22.612146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213032, 37.830051, 22.453512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325741, 38.137714, 22.682947>,  <33.393364, 38.322311, 22.820608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325741, 38.137714, 22.682947>,  <33.213032, 37.830051, 22.453512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325741, 38.137714, 22.682947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523996, -0.624145, 0.579544,
		0.803762, 0.137259, -0.578901,
		0.281770, 0.769157, 0.573587,
		33.410271, 38.368462, 22.855022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970036, 37.805405, 22.443102>,  <33.213032, 37.830051, 22.453512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970036, 37.805405, 22.443102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823673, 38.022739, 22.745333>,  <33.735855, 38.153141, 22.926672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823673, 38.022739, 22.745333>,  <33.970036, 37.805405, 22.443102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823673, 38.022739, 22.745333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669017, -0.410807, 0.619398,
		0.646940, 0.732134, -0.213188,
		-0.365903, 0.543340, 0.755577,
		33.713902, 38.185741, 22.972006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527020, 38.173271, 22.780659>,  <33.970036, 37.805405, 22.443102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527020, 38.173271, 22.780659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240021, 38.172642, 23.059284>,  <34.067822, 38.172264, 23.226460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240021, 38.172642, 23.059284>,  <34.527020, 38.173271, 22.780659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240021, 38.172642, 23.059284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668672, -0.281707, 0.688127,
		0.195145, 0.959499, 0.203174,
		-0.717493, -0.001572, 0.696564,
		34.024773, 38.172169, 23.268253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773521, 38.470734, 23.464542>,  <34.527020, 38.173271, 22.780659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773521, 38.470734, 23.464542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434303, 38.294403, 23.582180>,  <34.230774, 38.188606, 23.652763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434303, 38.294403, 23.582180>,  <34.773521, 38.470734, 23.464542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434303, 38.294403, 23.582180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474686, -0.385224, 0.791376,
		-0.235565, 0.810726, 0.535941,
		-0.848046, -0.440824, 0.294095,
		34.179890, 38.162155, 23.670408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810894, 38.707291, 24.066811>,  <34.773521, 38.470734, 23.464542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810894, 38.707291, 24.066811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585701, 38.376705, 24.066235>,  <34.450584, 38.178352, 24.065889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585701, 38.376705, 24.066235>,  <34.810894, 38.707291, 24.066811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585701, 38.376705, 24.066235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499932, -0.341939, 0.795705,
		-0.658115, 0.447250, 0.605683,
		-0.562985, -0.826466, -0.001441,
		34.416805, 38.128765, 24.065802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683693, 38.602718, 24.679779>,  <34.810894, 38.707291, 24.066811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683693, 38.602718, 24.679779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620499, 38.231075, 24.546030>,  <34.582584, 38.008091, 24.465780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620499, 38.231075, 24.546030>,  <34.683693, 38.602718, 24.679779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620499, 38.231075, 24.546030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365555, -0.369597, 0.854264,
		-0.917285, 0.012727, 0.398029,
		-0.157982, -0.929105, -0.334373,
		34.573105, 37.952343, 24.445719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302021, 38.324257, 25.214432>,  <34.683693, 38.602718, 24.679779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302021, 38.324257, 25.214432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466866, 38.032055, 24.996613>,  <34.565773, 37.856735, 24.865921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466866, 38.032055, 24.996613>,  <34.302021, 38.324257, 25.214432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466866, 38.032055, 24.996613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415157, -0.381462, 0.825913,
		-0.811056, -0.566438, 0.146070,
		0.412108, -0.730503, -0.544547,
		34.590500, 37.812904, 24.833248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981770, 37.722919, 25.408861>,  <34.302021, 38.324257, 25.214432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981770, 37.722919, 25.408861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354725, 37.670322, 25.274181>,  <34.578499, 37.638763, 25.193375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354725, 37.670322, 25.274181>,  <33.981770, 37.722919, 25.408861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354725, 37.670322, 25.274181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242941, -0.461758, 0.853088,
		-0.267649, -0.877205, -0.398592,
		0.932386, -0.131494, -0.336698,
		34.634441, 37.630875, 25.173172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249489, 37.102242, 25.472929>,  <33.981770, 37.722919, 25.408861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249489, 37.102242, 25.472929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529991, 37.385490, 25.505939>,  <34.698292, 37.555439, 25.525745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529991, 37.385490, 25.505939>,  <34.249489, 37.102242, 25.472929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529991, 37.385490, 25.505939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162315, -0.271302, 0.948709,
		0.694190, -0.651889, -0.305189,
		0.701252, 0.708121, 0.082524,
		34.740368, 37.597927, 25.530697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829788, 36.752136, 25.917339>,  <34.249489, 37.102242, 25.472929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829788, 36.752136, 25.917339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910198, 37.143967, 25.915569>,  <34.958443, 37.379066, 25.914507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910198, 37.143967, 25.915569>,  <34.829788, 36.752136, 25.917339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910198, 37.143967, 25.915569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220552, -0.040860, 0.974519,
		0.954435, -0.196875, -0.224261,
		0.201022, 0.979577, -0.004423,
		34.970505, 37.437840, 25.914242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429165, 36.758484, 26.179213>,  <34.829788, 36.752136, 25.917339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429165, 36.758484, 26.179213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302017, 37.133591, 26.235134>,  <35.225727, 37.358654, 26.268686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302017, 37.133591, 26.235134>,  <35.429165, 36.758484, 26.179213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302017, 37.133591, 26.235134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234400, -0.065146, 0.969955,
		0.918702, 0.341093, -0.199105,
		-0.317873, 0.937770, 0.139802,
		35.206654, 37.414921, 26.277075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975506, 37.059372, 26.479998>,  <35.429165, 36.758484, 26.179213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975506, 37.059372, 26.479998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673649, 37.301743, 26.580688>,  <35.492535, 37.447163, 26.641104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673649, 37.301743, 26.580688>,  <35.975506, 37.059372, 26.479998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673649, 37.301743, 26.580688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298428, -0.024706, 0.954112,
		0.584339, 0.795139, -0.162180,
		-0.754645, 0.605924, 0.251728,
		35.447254, 37.483521, 26.656206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178299, 37.659355, 26.809065>,  <35.975506, 37.059372, 26.479998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178299, 37.659355, 26.809065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798161, 37.602955, 26.920027>,  <35.570076, 37.569115, 26.986605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798161, 37.602955, 26.920027>,  <36.178299, 37.659355, 26.809065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798161, 37.602955, 26.920027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296842, -0.143264, 0.944119,
		-0.093379, 0.979589, 0.178006,
		-0.950350, -0.141001, 0.277405,
		35.513054, 37.560654, 27.003248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135765, 37.939983, 27.423393>,  <36.178299, 37.659355, 26.809065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135765, 37.939983, 27.423393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794636, 37.731133, 27.419895>,  <35.589958, 37.605820, 27.417797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794636, 37.731133, 27.419895>,  <36.135765, 37.939983, 27.423393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794636, 37.731133, 27.419895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094193, -0.170278, 0.980884,
		-0.513637, 0.835695, 0.194397,
		-0.852821, -0.522129, -0.008745,
		35.538788, 37.574493, 27.417273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021206, 38.019001, 28.095675>,  <36.135765, 37.939983, 27.423393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021206, 38.019001, 28.095675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769188, 37.727634, 27.988007>,  <35.617977, 37.552814, 27.923407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769188, 37.727634, 27.988007>,  <36.021206, 38.019001, 28.095675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769188, 37.727634, 27.988007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192414, -0.189374, 0.962868,
		-0.752346, 0.658439, -0.020845,
		-0.630042, -0.728420, -0.269168,
		35.580177, 37.509109, 27.907257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482899, 38.010242, 28.638832>,  <36.021206, 38.019001, 28.095675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482899, 38.010242, 28.638832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462051, 37.656998, 28.452330>,  <35.449543, 37.445049, 28.340427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462051, 37.656998, 28.452330>,  <35.482899, 38.010242, 28.638832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462051, 37.656998, 28.452330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251756, -0.440192, 0.861887,
		-0.966387, 0.162299, -0.199389,
		-0.052115, -0.883114, -0.466256,
		35.446419, 37.392063, 28.312452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882431, 37.659210, 28.951693>,  <35.482899, 38.010242, 28.638832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882431, 37.659210, 28.951693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088799, 37.365757, 28.774780>,  <35.212620, 37.189686, 28.668633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088799, 37.365757, 28.774780>,  <34.882431, 37.659210, 28.951693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088799, 37.365757, 28.774780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281152, -0.632715, 0.721544,
		-0.809183, -0.247912, -0.532693,
		0.515923, -0.733629, -0.442282,
		35.243576, 37.145668, 28.642096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558376, 36.894218, 29.109041>,  <34.882431, 37.659210, 28.951693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558376, 36.894218, 29.109041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945229, 36.833237, 29.027630>,  <35.177338, 36.796650, 28.978783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945229, 36.833237, 29.027630>,  <34.558376, 36.894218, 29.109041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945229, 36.833237, 29.027630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035408, -0.711842, 0.701446,
		-0.251819, -0.685594, -0.683043,
		0.967126, -0.152452, -0.203531,
		35.235367, 36.787502, 28.966570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574768, 36.159832, 29.187355>,  <34.558376, 36.894218, 29.109041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574768, 36.159832, 29.187355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955322, 36.282570, 29.198038>,  <35.183655, 36.356213, 29.204447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955322, 36.282570, 29.198038>,  <34.574768, 36.159832, 29.187355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955322, 36.282570, 29.198038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201855, -0.686641, 0.698412,
		0.232643, -0.659067, -0.715198,
		0.951384, 0.306847, 0.026706,
		35.240738, 36.374622, 29.206051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982769, 35.546894, 29.209026>,  <34.574768, 36.159832, 29.187355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982769, 35.546894, 29.209026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213661, 35.846497, 29.339136>,  <35.352196, 36.026257, 29.417202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213661, 35.846497, 29.339136>,  <34.982769, 35.546894, 29.209026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213661, 35.846497, 29.339136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468982, -0.630168, 0.618824,
		0.668480, -0.204653, -0.715019,
		0.577227, 0.749003, 0.325276,
		35.386829, 36.071198, 29.436720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648788, 35.244312, 29.407074>,  <34.982769, 35.546894, 29.209026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648788, 35.244312, 29.407074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662285, 35.587852, 29.611517>,  <35.670383, 35.793976, 29.734182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662285, 35.587852, 29.611517>,  <35.648788, 35.244312, 29.407074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662285, 35.587852, 29.611517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464238, -0.466350, 0.752994,
		0.885067, 0.211867, -0.414449,
		0.033744, 0.858854, 0.511108,
		35.672409, 35.845509, 29.764849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249756, 35.387688, 29.538969>,  <35.648788, 35.244312, 29.407074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249756, 35.387688, 29.538969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069363, 35.626068, 29.804737>,  <35.961124, 35.769096, 29.964199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069363, 35.626068, 29.804737>,  <36.249756, 35.387688, 29.538969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069363, 35.626068, 29.804737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543017, -0.407592, 0.734167,
		0.708338, 0.691892, -0.139791,
		-0.450987, 0.595948, 0.664422,
		35.934067, 35.804852, 30.004065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769142, 35.851318, 29.838213>,  <36.249756, 35.387688, 29.538969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769142, 35.851318, 29.838213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461941, 35.832138, 30.093674>,  <36.277622, 35.820629, 30.246950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461941, 35.832138, 30.093674>,  <36.769142, 35.851318, 29.838213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461941, 35.832138, 30.093674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623091, -0.286537, 0.727774,
		0.148098, 0.956868, 0.249940,
		-0.768000, -0.047953, 0.638651,
		36.231541, 35.817753, 30.285269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020100, 36.019802, 30.438465>,  <36.769142, 35.851318, 29.838213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020100, 36.019802, 30.438465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696690, 35.824158, 30.569347>,  <36.502644, 35.706772, 30.647877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696690, 35.824158, 30.569347>,  <37.020100, 36.019802, 30.438465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696690, 35.824158, 30.569347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507451, -0.297961, 0.808525,
		-0.297961, 0.819753, 0.489106,
		-0.808525, -0.489106, 0.327204,
		36.454132, 35.677425, 30.667509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066025, 36.065884, 31.230076>,  <37.020100, 36.019802, 30.438465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066025, 36.065884, 31.230076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809391, 35.773773, 31.136211>,  <36.655411, 35.598507, 31.079893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809391, 35.773773, 31.136211>,  <37.066025, 36.065884, 31.230076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809391, 35.773773, 31.136211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301852, -0.521614, 0.798000,
		-0.705161, 0.441154, 0.555096,
		-0.641586, -0.730275, -0.234659,
		36.616917, 35.554691, 31.065813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739388, 35.948170, 31.891146>,  <37.066025, 36.065884, 31.230076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739388, 35.948170, 31.891146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642517, 35.633652, 31.663780>,  <36.584393, 35.444942, 31.527361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642517, 35.633652, 31.663780>,  <36.739388, 35.948170, 31.891146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642517, 35.633652, 31.663780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148288, -0.608966, 0.779212,
		-0.958832, 0.104421, 0.264077,
		-0.242180, -0.786293, -0.568412,
		36.569862, 35.397762, 31.493258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356190, 35.515213, 32.340050>,  <36.739388, 35.948170, 31.891146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356190, 35.515213, 32.340050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458351, 35.273113, 32.038467>,  <36.519646, 35.127853, 31.857517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458351, 35.273113, 32.038467>,  <36.356190, 35.515213, 32.340050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458351, 35.273113, 32.038467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177852, -0.737099, 0.651961,
		-0.950337, -0.300603, -0.080610,
		0.255399, -0.605246, -0.753955,
		36.534969, 35.091537, 31.812281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891663, 34.907585, 32.252754>,  <36.356190, 35.515213, 32.340050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891663, 34.907585, 32.252754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241879, 34.784595, 32.103680>,  <36.452007, 34.710804, 32.014236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241879, 34.784595, 32.103680>,  <35.891663, 34.907585, 32.252754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241879, 34.784595, 32.103680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048953, -0.823852, 0.564687,
		-0.480660, -0.476162, -0.736367,
		0.875540, -0.307470, -0.372683,
		36.504539, 34.692356, 31.991875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833515, 34.306656, 32.249249>,  <35.891663, 34.907585, 32.252754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833515, 34.306656, 32.249249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230392, 34.286694, 32.203545>,  <36.468521, 34.274715, 32.176121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230392, 34.286694, 32.203545>,  <35.833515, 34.306656, 32.249249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230392, 34.286694, 32.203545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014228, -0.865089, 0.501417,
		-0.123871, -0.499130, -0.857628,
		0.992196, -0.049909, -0.114261,
		36.528049, 34.271721, 32.169266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016445, 33.567932, 32.196255>,  <35.833515, 34.306656, 32.249249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016445, 33.567932, 32.196255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368141, 33.724648, 32.304657>,  <36.579159, 33.818676, 32.369698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368141, 33.724648, 32.304657>,  <36.016445, 33.567932, 32.196255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368141, 33.724648, 32.304657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254467, -0.867171, 0.428089,
		0.402726, -0.307431, -0.862147,
		0.879238, 0.391790, 0.271001,
		36.631912, 33.842186, 32.385956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461784, 33.055767, 32.027691>,  <36.016445, 33.567932, 32.196255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461784, 33.055767, 32.027691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652775, 33.302299, 32.278179>,  <36.767368, 33.450218, 32.428471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652775, 33.302299, 32.278179>,  <36.461784, 33.055767, 32.027691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652775, 33.302299, 32.278179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360217, -0.787375, 0.500283,
		0.801411, -0.013298, -0.597966,
		0.477476, 0.616331, 0.626221,
		36.796017, 33.487198, 32.466045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050106, 32.724178, 32.098286>,  <36.461784, 33.055767, 32.027691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050106, 32.724178, 32.098286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008141, 32.961319, 32.417667>,  <36.982964, 33.103603, 32.609295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008141, 32.961319, 32.417667>,  <37.050106, 32.724178, 32.098286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008141, 32.961319, 32.417667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464267, -0.680823, 0.566512,
		0.879460, 0.430126, -0.203816,
		-0.104909, 0.592850, 0.798450,
		36.976669, 33.139175, 32.657204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624870, 32.619736, 32.493412>,  <37.050106, 32.724178, 32.098286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624870, 32.619736, 32.493412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400230, 32.788960, 32.777843>,  <37.265446, 32.890495, 32.948502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400230, 32.788960, 32.777843>,  <37.624870, 32.619736, 32.493412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400230, 32.788960, 32.777843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290001, -0.704241, 0.648031,
		0.774925, 0.570145, 0.272811,
		-0.561597, 0.423060, 0.711076,
		37.231750, 32.915878, 32.991165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041126, 32.558369, 33.097012>,  <37.624870, 32.619736, 32.493412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041126, 32.558369, 33.097012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653992, 32.594231, 33.191036>,  <37.421711, 32.615749, 33.247452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653992, 32.594231, 33.191036>,  <38.041126, 32.558369, 33.097012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653992, 32.594231, 33.191036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059601, -0.826031, 0.560465,
		0.244416, 0.556448, 0.794120,
		-0.967837, 0.089656, 0.235060,
		37.363640, 32.621128, 33.261555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036888, 32.423328, 33.747341>,  <38.041126, 32.558369, 33.097012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036888, 32.423328, 33.747341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658947, 32.350391, 33.638531>,  <37.432182, 32.306629, 33.573242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658947, 32.350391, 33.638531>,  <38.036888, 32.423328, 33.747341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658947, 32.350391, 33.638531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041823, -0.891033, 0.452007,
		-0.324807, 0.415704, 0.849523,
		-0.944855, -0.182345, -0.272028,
		37.375492, 32.295689, 33.556923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761368, 32.195709, 34.285542>,  <38.036888, 32.423328, 33.747341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761368, 32.195709, 34.285542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584244, 32.038704, 33.963089>,  <37.477970, 31.944500, 33.769615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584244, 32.038704, 33.963089>,  <37.761368, 32.195709, 34.285542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584244, 32.038704, 33.963089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088410, -0.913819, 0.396382,
		-0.892247, 0.104250, 0.439348,
		-0.442808, -0.392513, -0.806136,
		37.451401, 31.920950, 33.721249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265465, 31.676865, 34.027542>,  <37.761368, 32.195709, 34.285542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265465, 31.676865, 34.027542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129436, 31.503330, 34.361282>,  <38.047817, 31.399210, 34.561527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129436, 31.503330, 34.361282>,  <38.265465, 31.676865, 34.027542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129436, 31.503330, 34.361282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488961, -0.676293, -0.550949,
		0.803285, -0.595327, 0.017860,
		-0.340074, -0.433837, 0.834348,
		38.027416, 31.373178, 34.611588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541519, 30.980923, 33.925774>,  <38.265465, 31.676865, 34.027542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541519, 30.980923, 33.925774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251781, 30.957243, 34.200527>,  <38.077938, 30.943035, 34.365379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251781, 30.957243, 34.200527>,  <38.541519, 30.980923, 33.925774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251781, 30.957243, 34.200527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405109, -0.769619, -0.493531,
		0.557858, -0.635753, 0.533491,
		-0.724349, -0.059198, 0.686887,
		38.034477, 30.939484, 34.406593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255257, 30.317102, 33.909191>,  <38.541519, 30.980923, 33.925774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255257, 30.317102, 33.909191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969318, 30.464029, 34.147205>,  <37.797756, 30.552185, 34.290016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969318, 30.464029, 34.147205>,  <38.255257, 30.317102, 33.909191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969318, 30.464029, 34.147205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593708, -0.768392, -0.238924,
		0.369462, -0.524073, 0.767362,
		-0.714849, 0.367315, 0.595038,
		37.754864, 30.574224, 34.325718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924709, 29.750980, 33.987469>,  <38.255257, 30.317102, 33.909191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924709, 29.750980, 33.987469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677986, 30.037680, 34.117592>,  <37.529953, 30.209700, 34.195667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677986, 30.037680, 34.117592>,  <37.924709, 29.750980, 33.987469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677986, 30.037680, 34.117592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786880, -0.571601, -0.232579,
		0.019246, -0.399435, 0.916560,
		-0.616806, 0.716746, 0.325308,
		37.492943, 30.252703, 34.215183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513763, 29.433140, 34.490612>,  <37.924709, 29.750980, 33.987469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513763, 29.433140, 34.490612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335480, 29.742428, 34.310181>,  <37.228508, 29.928001, 34.201920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335480, 29.742428, 34.310181>,  <37.513763, 29.433140, 34.490612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335480, 29.742428, 34.310181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743173, -0.600526, -0.295065,
		-0.499035, 0.203716, 0.842297,
		-0.445712, 0.773220, -0.451079,
		37.201767, 29.974394, 34.174858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839504, 29.342232, 34.617802>,  <37.513763, 29.433140, 34.490612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839504, 29.342232, 34.617802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827583, 29.593761, 34.307011>,  <36.820431, 29.744678, 34.120537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827583, 29.593761, 34.307011>,  <36.839504, 29.342232, 34.617802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827583, 29.593761, 34.307011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625265, -0.618189, -0.476326,
		-0.779843, 0.471620, 0.411605,
		-0.029804, 0.628822, -0.776978,
		36.818642, 29.782408, 34.073917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111420, 29.507984, 34.505768>,  <36.839504, 29.342232, 34.617802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111420, 29.507984, 34.505768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286167, 29.575382, 34.152325>,  <36.391014, 29.615822, 33.940258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286167, 29.575382, 34.152325>,  <36.111420, 29.507984, 34.505768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286167, 29.575382, 34.152325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703831, -0.547665, -0.452421,
		-0.560150, 0.819556, -0.120666,
		0.436869, 0.168495, -0.883604,
		36.417229, 29.625931, 33.887245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593460, 29.776573, 34.079002>,  <36.111420, 29.507984, 34.505768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593460, 29.776573, 34.079002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892460, 29.636196, 33.853409>,  <36.071861, 29.551970, 33.718052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892460, 29.636196, 33.853409>,  <35.593460, 29.776573, 34.079002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892460, 29.636196, 33.853409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619488, -0.674738, -0.401203,
		-0.239742, 0.649281, -0.721774,
		0.747502, -0.350945, -0.563985,
		36.116711, 29.530912, 33.684212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254650, 29.771372, 33.450478>,  <35.593460, 29.776573, 34.079002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254650, 29.771372, 33.450478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579300, 29.539831, 33.418987>,  <35.774090, 29.400908, 33.400093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579300, 29.539831, 33.418987>,  <35.254650, 29.771372, 33.450478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579300, 29.539831, 33.418987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511949, -0.639872, -0.573125,
		0.281379, 0.505466, -0.815677,
		0.811625, -0.578851, -0.078727,
		35.822788, 29.366177, 33.395370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302628, 29.608368, 32.745293>,  <35.254650, 29.771372, 33.450478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302628, 29.608368, 32.745293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546757, 29.329643, 32.896000>,  <35.693233, 29.162409, 32.986423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546757, 29.329643, 32.896000>,  <35.302628, 29.608368, 32.745293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546757, 29.329643, 32.896000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309855, -0.647735, -0.696010,
		0.729037, 0.308047, -0.611239,
		0.610324, -0.696812, 0.376772,
		35.729855, 29.120600, 33.009033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698498, 29.310371, 32.113777>,  <35.302628, 29.608368, 32.745293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698498, 29.310371, 32.113777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681103, 29.037031, 32.405296>,  <35.670666, 28.873028, 32.580208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681103, 29.037031, 32.405296>,  <35.698498, 29.310371, 32.113777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681103, 29.037031, 32.405296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415533, -0.651023, -0.635217,
		0.908538, -0.330460, -0.255645,
		-0.043483, -0.683348, 0.728797,
		35.668056, 28.832027, 32.623936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033218, 28.680672, 31.888784>,  <35.698498, 29.310371, 32.113777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033218, 28.680672, 31.888784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777348, 28.573473, 32.176949>,  <35.623825, 28.509153, 32.349846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777348, 28.573473, 32.176949>,  <36.033218, 28.680672, 31.888784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777348, 28.573473, 32.176949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430116, -0.651966, -0.624452,
		0.637033, -0.709308, 0.301780,
		-0.639680, -0.267996, 0.720408,
		35.585445, 28.493074, 32.393070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972958, 27.899263, 31.872786>,  <36.033218, 28.680672, 31.888784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972958, 27.899263, 31.872786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643375, 28.047651, 32.044125>,  <35.445625, 28.136684, 32.146927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643375, 28.047651, 32.044125>,  <35.972958, 27.899263, 31.872786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643375, 28.047651, 32.044125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565422, -0.488343, -0.664695,
		-0.037399, -0.789876, 0.612125,
		-0.823953, 0.370968, 0.428350,
		35.396191, 28.158941, 32.172630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472580, 27.415976, 32.191326>,  <35.972958, 27.899263, 31.872786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472580, 27.415976, 32.191326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275593, 27.741520, 32.067966>,  <35.157402, 27.936848, 31.993952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275593, 27.741520, 32.067966>,  <35.472580, 27.415976, 32.191326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275593, 27.741520, 32.067966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464710, -0.545490, -0.697486,
		-0.735883, -0.200172, 0.646844,
		-0.492464, 0.813863, -0.308395,
		35.127853, 27.985678, 31.975449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882057, 27.145075, 32.098026>,  <35.472580, 27.415976, 32.191326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882057, 27.145075, 32.098026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859047, 27.496855, 31.909027>,  <34.845242, 27.707924, 31.795628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859047, 27.496855, 31.909027>,  <34.882057, 27.145075, 32.098026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859047, 27.496855, 31.909027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589730, -0.411821, -0.694710,
		-0.805549, 0.238681, 0.542330,
		-0.057528, 0.879451, -0.472499,
		34.841789, 27.760691, 31.767277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114159, 27.360954, 31.918295>,  <34.882057, 27.145075, 32.098026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114159, 27.360954, 31.918295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352806, 27.554579, 31.662256>,  <34.495995, 27.670753, 31.508633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352806, 27.554579, 31.662256>,  <34.114159, 27.360954, 31.918295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352806, 27.554579, 31.662256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562514, -0.316632, -0.763755,
		-0.572379, 0.815739, 0.083381,
		0.596623, 0.484060, -0.640098,
		34.531792, 27.699797, 31.470226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568832, 27.643753, 31.473288>,  <34.114159, 27.360954, 31.918295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568832, 27.643753, 31.473288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915024, 27.650414, 31.273018>,  <34.122738, 27.654409, 31.152855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915024, 27.650414, 31.273018>,  <33.568832, 27.643753, 31.473288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915024, 27.650414, 31.273018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457290, -0.381829, -0.803177,
		-0.204546, 0.924083, -0.322849,
		0.865475, 0.016651, -0.500675,
		34.174667, 27.655409, 31.122816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414612, 27.811590, 30.835024>,  <33.568832, 27.643753, 31.473288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414612, 27.811590, 30.835024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772617, 27.637466, 30.796131>,  <33.987419, 27.532991, 30.772795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772617, 27.637466, 30.796131>,  <33.414612, 27.811590, 30.835024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772617, 27.637466, 30.796131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299151, -0.424147, -0.854756,
		0.330844, 0.794106, -0.509841,
		0.895015, -0.435310, -0.097231,
		34.041122, 27.506874, 30.766962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732735, 27.998369, 30.155560>,  <33.414612, 27.811590, 30.835024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732735, 27.998369, 30.155560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902775, 27.651321, 30.258732>,  <34.004799, 27.443092, 30.320635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902775, 27.651321, 30.258732>,  <33.732735, 27.998369, 30.155560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902775, 27.651321, 30.258732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164098, -0.354111, -0.920694,
		0.890146, 0.349063, -0.292907,
		0.425101, -0.867618, 0.257930,
		34.030304, 27.391037, 30.336111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109074, 27.822449, 29.604826>,  <33.732735, 27.998369, 30.155560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109074, 27.822449, 29.604826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071945, 27.483522, 29.813993>,  <34.049667, 27.280167, 29.939493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071945, 27.483522, 29.813993>,  <34.109074, 27.822449, 29.604826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071945, 27.483522, 29.813993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100632, -0.514513, -0.851557,
		0.990584, -0.131663, -0.037510,
		-0.092819, -0.847314, 0.522918,
		34.044098, 27.229328, 29.970869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509541, 27.320354, 29.240393>,  <34.109074, 27.822449, 29.604826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509541, 27.320354, 29.240393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223804, 27.133051, 29.448412>,  <34.052364, 27.020668, 29.573223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223804, 27.133051, 29.448412>,  <34.509541, 27.320354, 29.240393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223804, 27.133051, 29.448412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133122, -0.638640, -0.757904,
		0.687019, -0.610631, 0.393871,
		-0.714342, -0.468261, 0.520046,
		34.009502, 26.992573, 29.604425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702236, 26.531988, 29.305719>,  <34.509541, 27.320354, 29.240393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702236, 26.531988, 29.305719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319630, 26.645582, 29.279085>,  <34.090065, 26.713739, 29.263103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319630, 26.645582, 29.279085>,  <34.702236, 26.531988, 29.305719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319630, 26.645582, 29.279085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161952, -0.706915, -0.688508,
		-0.242598, -0.647783, 0.722166,
		-0.956514, 0.283987, -0.066587,
		34.032677, 26.730778, 29.259109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367863, 25.943485, 29.420527>,  <34.702236, 26.531988, 29.305719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367863, 25.943485, 29.420527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114780, 26.183298, 29.224468>,  <33.962933, 26.327187, 29.106833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114780, 26.183298, 29.224468>,  <34.367863, 25.943485, 29.420527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114780, 26.183298, 29.224468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462977, -0.800224, -0.381175,
		-0.620753, -0.014246, 0.783877,
		-0.632707, 0.599532, -0.490146,
		33.924969, 26.363157, 29.077425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750721, 25.796335, 29.652752>,  <34.367863, 25.943485, 29.420527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750721, 25.796335, 29.652752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714924, 25.939655, 29.281029>,  <33.693447, 26.025648, 29.057995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714924, 25.939655, 29.281029>,  <33.750721, 25.796335, 29.652752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714924, 25.939655, 29.281029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545114, -0.798519, -0.255380,
		-0.833572, 0.483724, 0.266776,
		-0.089493, 0.358301, -0.929307,
		33.688076, 26.047146, 29.002237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470486, 26.365841, 30.029873>,  <33.750721, 25.796335, 29.652752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470486, 26.365841, 30.029873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817165, 26.507589, 29.889442>,  <34.025173, 26.592638, 29.805183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817165, 26.507589, 29.889442>,  <33.470486, 26.365841, 30.029873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817165, 26.507589, 29.889442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183879, 0.427278, 0.885224,
		0.463711, -0.831776, 0.305158,
		0.866695, 0.354376, -0.351079,
		34.077175, 26.613901, 29.784119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053661, 26.153503, 30.485281>,  <33.470486, 26.365841, 30.029873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053661, 26.153503, 30.485281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115124, 26.497311, 30.290295>,  <34.152000, 26.703594, 30.173304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115124, 26.497311, 30.290295>,  <34.053661, 26.153503, 30.485281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115124, 26.497311, 30.290295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342571, 0.416391, 0.842178,
		0.926842, -0.296396, -0.230465,
		0.153655, 0.859516, -0.487466,
		34.161221, 26.755165, 30.144054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726288, 26.383406, 30.744495>,  <34.053661, 26.153503, 30.485281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726288, 26.383406, 30.744495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505196, 26.688780, 30.610834>,  <34.372540, 26.872005, 30.530638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505196, 26.688780, 30.610834>,  <34.726288, 26.383406, 30.744495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505196, 26.688780, 30.610834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139685, 0.480166, 0.865984,
		0.821573, 0.431976, -0.372041,
		-0.552726, 0.763437, -0.334151,
		34.339378, 26.917810, 30.510590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217407, 26.970762, 30.719593>,  <34.726288, 26.383406, 30.744495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217407, 26.970762, 30.719593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855576, 27.141060, 30.710873>,  <34.638477, 27.243238, 30.705641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855576, 27.141060, 30.710873>,  <35.217407, 26.970762, 30.719593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855576, 27.141060, 30.710873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283737, 0.639454, 0.714557,
		0.318159, 0.640189, -0.699237,
		-0.904582, 0.425742, -0.021802,
		34.584202, 27.268782, 30.704332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355789, 27.703936, 30.502226>,  <35.217407, 26.970762, 30.719593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355789, 27.703936, 30.502226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994926, 27.715147, 30.674429>,  <34.778408, 27.721874, 30.777750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994926, 27.715147, 30.674429>,  <35.355789, 27.703936, 30.502226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994926, 27.715147, 30.674429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330542, 0.686180, 0.647997,
		-0.277243, 0.726892, -0.628303,
		-0.902152, 0.028027, 0.430507,
		34.724281, 27.723555, 30.803581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151943, 28.504702, 30.684704>,  <35.355789, 27.703936, 30.502226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151943, 28.504702, 30.684704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931396, 28.245018, 30.894283>,  <34.799068, 28.089207, 31.020031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931396, 28.245018, 30.894283>,  <35.151943, 28.504702, 30.684704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931396, 28.245018, 30.894283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158701, 0.534948, 0.829846,
		-0.819030, 0.540699, -0.191921,
		-0.551365, -0.649211, 0.523948,
		34.765987, 28.050255, 31.051468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799129, 28.889109, 31.088522>,  <35.151943, 28.504702, 30.684704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799129, 28.889109, 31.088522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818459, 28.543291, 31.288612>,  <34.830055, 28.335800, 31.408667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818459, 28.543291, 31.288612>,  <34.799129, 28.889109, 31.088522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818459, 28.543291, 31.288612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284629, 0.491965, 0.822774,
		-0.957419, 0.102618, 0.269849,
		0.048325, -0.864546, 0.500225,
		34.832954, 28.283928, 31.438681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459995, 29.055372, 31.796942>,  <34.799129, 28.889109, 31.088522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459995, 29.055372, 31.796942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678856, 28.723965, 31.844570>,  <34.810173, 28.525120, 31.873148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678856, 28.723965, 31.844570>,  <34.459995, 29.055372, 31.796942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678856, 28.723965, 31.844570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213368, 0.275615, 0.937289,
		-0.809379, -0.487436, 0.327584,
		0.547155, -0.828518, 0.119073,
		34.843002, 28.475409, 31.880293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267624, 28.791245, 32.416180>,  <34.459995, 29.055372, 31.796942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267624, 28.791245, 32.416180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457432, 28.447104, 32.341751>,  <34.571316, 28.240620, 32.297092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457432, 28.447104, 32.341751>,  <34.267624, 28.791245, 32.416180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457432, 28.447104, 32.341751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764293, 0.297839, 0.571968,
		-0.436675, -0.413623, 0.798893,
		0.474521, -0.860353, -0.186071,
		34.599789, 28.188997, 32.285931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415443, 28.436436, 33.049618>,  <34.267624, 28.791245, 32.416180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415443, 28.436436, 33.049618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699001, 28.365257, 32.776619>,  <34.869137, 28.322550, 32.612820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699001, 28.365257, 32.776619>,  <34.415443, 28.436436, 33.049618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699001, 28.365257, 32.776619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672749, 0.461224, 0.578516,
		0.211838, -0.869257, 0.446673,
		0.708895, -0.177947, -0.682497,
		34.911671, 28.311872, 32.571869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939610, 28.135450, 33.466690>,  <34.415443, 28.436436, 33.049618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939610, 28.135450, 33.466690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110710, 28.249977, 33.123749>,  <35.213371, 28.318693, 32.917984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110710, 28.249977, 33.123749>,  <34.939610, 28.135450, 33.466690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110710, 28.249977, 33.123749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803463, 0.314097, 0.505757,
		0.414098, -0.905189, -0.095690,
		0.427750, 0.286317, -0.857352,
		35.239037, 28.335873, 32.866543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579201, 27.926315, 33.488369>,  <34.939610, 28.135450, 33.466690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579201, 27.926315, 33.488369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591282, 28.229197, 33.227379>,  <35.598530, 28.410925, 33.070786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591282, 28.229197, 33.227379>,  <35.579201, 27.926315, 33.488369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591282, 28.229197, 33.227379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797607, 0.375169, 0.472303,
		0.602421, -0.534685, -0.592622,
		0.030200, 0.757205, -0.652478,
		35.600342, 28.456358, 33.031635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315655, 28.038307, 33.045273>,  <35.579201, 27.926315, 33.488369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315655, 28.038307, 33.045273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094273, 28.363276, 33.118660>,  <35.961445, 28.558256, 33.162693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094273, 28.363276, 33.118660>,  <36.315655, 28.038307, 33.045273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094273, 28.363276, 33.118660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791941, 0.445112, 0.417977,
		0.257907, 0.376630, -0.889738,
		-0.553456, 0.812419, 0.183471,
		35.928234, 28.607000, 33.173702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853695, 28.425068, 33.261566>,  <36.315655, 28.038307, 33.045273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853695, 28.425068, 33.261566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548008, 28.682526, 33.278042>,  <36.364597, 28.837000, 33.287930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548008, 28.682526, 33.278042>,  <36.853695, 28.425068, 33.261566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548008, 28.682526, 33.278042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631392, 0.733580, 0.251406,
		0.131597, 0.218138, -0.967005,
		-0.764217, 0.643643, 0.041194,
		36.318745, 28.875618, 33.290401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057274, 28.986832, 32.896244>,  <36.853695, 28.425068, 33.261566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057274, 28.986832, 32.896244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772709, 29.114120, 33.146885>,  <36.601971, 29.190495, 33.297268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772709, 29.114120, 33.146885>,  <37.057274, 28.986832, 32.896244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772709, 29.114120, 33.146885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542565, 0.815389, 0.201899,
		-0.446674, 0.483605, -0.752734,
		-0.711411, 0.318224, 0.626601,
		36.559284, 29.209587, 33.334866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872211, 29.761038, 32.684914>,  <37.057274, 28.986832, 32.896244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872211, 29.761038, 32.684914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760170, 29.692799, 33.062790>,  <36.692944, 29.651855, 33.289516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760170, 29.692799, 33.062790>,  <36.872211, 29.761038, 32.684914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760170, 29.692799, 33.062790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479475, 0.827679, 0.291637,
		-0.831651, 0.534644, -0.150040,
		-0.280107, -0.170600, 0.944688,
		36.676140, 29.641619, 33.346195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661495, 30.433050, 33.062904>,  <36.872211, 29.761038, 32.684914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661495, 30.433050, 33.062904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769676, 30.197481, 33.367542>,  <36.834583, 30.056139, 33.550323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769676, 30.197481, 33.367542>,  <36.661495, 30.433050, 33.062904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769676, 30.197481, 33.367542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494529, 0.763713, 0.414950,
		-0.826012, 0.264405, 0.497788,
		0.270453, -0.588924, 0.761593,
		36.850811, 30.020803, 33.596020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558319, 30.927595, 33.582848>,  <36.661495, 30.433050, 33.062904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558319, 30.927595, 33.582848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788876, 30.640282, 33.738716>,  <36.927208, 30.467894, 33.832237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788876, 30.640282, 33.738716>,  <36.558319, 30.927595, 33.582848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788876, 30.640282, 33.738716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320354, 0.637294, 0.700877,
		-0.751763, -0.279147, 0.597436,
		0.576391, -0.718285, 0.389668,
		36.961792, 30.424797, 33.855618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719372, 31.235664, 34.225071>,  <36.558319, 30.927595, 33.582848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719372, 31.235664, 34.225071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904945, 30.899633, 34.337524>,  <37.016289, 30.698015, 34.404999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904945, 30.899633, 34.337524>,  <36.719372, 31.235664, 34.225071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904945, 30.899633, 34.337524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638429, 0.537077, 0.551322,
		-0.614146, -0.076289, 0.785497,
		0.463932, -0.840076, 0.281138,
		37.044125, 30.647610, 34.421867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711723, 31.102613, 34.940220>,  <36.719372, 31.235664, 34.225071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711723, 31.102613, 34.940220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032593, 30.928762, 34.776455>,  <37.225113, 30.824451, 34.678196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032593, 30.928762, 34.776455>,  <36.711723, 31.102613, 34.940220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032593, 30.928762, 34.776455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596482, 0.614234, 0.516649,
		0.026922, -0.658647, 0.751970,
		0.802175, -0.434628, -0.409407,
		37.273247, 30.798374, 34.653633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121983, 31.016611, 35.448845>,  <36.711723, 31.102613, 34.940220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121983, 31.016611, 35.448845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375603, 30.976292, 35.142166>,  <37.527775, 30.952101, 34.958160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375603, 30.976292, 35.142166>,  <37.121983, 31.016611, 35.448845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375603, 30.976292, 35.142166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612343, 0.670933, 0.418192,
		0.472251, -0.734635, 0.487125,
		0.634046, -0.100796, -0.766698,
		37.565815, 30.946053, 34.912155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716145, 30.761190, 35.758175>,  <37.121983, 31.016611, 35.448845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716145, 30.761190, 35.758175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797073, 30.948509, 35.414139>,  <37.845631, 31.060900, 35.207718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797073, 30.948509, 35.414139>,  <37.716145, 30.761190, 35.758175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797073, 30.948509, 35.414139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563651, 0.662523, 0.493316,
		0.800851, -0.584603, -0.129912,
		0.202324, 0.468298, -0.860095,
		37.857769, 31.088999, 35.156109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466976, 30.840866, 35.675262>,  <37.716145, 30.761190, 35.758175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466976, 30.840866, 35.675262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268970, 31.123989, 35.473682>,  <38.150166, 31.293863, 35.352734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268970, 31.123989, 35.473682>,  <38.466976, 30.840866, 35.675262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268970, 31.123989, 35.473682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591954, 0.699296, 0.400718,
		0.636044, -0.099955, -0.765152,
		-0.495014, 0.707809, -0.503952,
		38.120468, 31.336332, 35.322498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883545, 31.284428, 35.198109>,  <38.466976, 30.840866, 35.675262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883545, 31.284428, 35.198109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582394, 31.526207, 35.302280>,  <38.401703, 31.671274, 35.364784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582394, 31.526207, 35.302280>,  <38.883545, 31.284428, 35.198109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582394, 31.526207, 35.302280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637499, 0.571341, 0.516879,
		0.163634, 0.555167, -0.815484,
		-0.752874, 0.604449, 0.260427,
		38.356533, 31.707542, 35.380409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569981, 31.498705, 35.485031>,  <38.883545, 31.284428, 35.198109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569981, 31.498705, 35.485031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491096, 31.842783, 35.296917>,  <39.443768, 32.049229, 35.184048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491096, 31.842783, 35.296917>,  <39.569981, 31.498705, 35.485031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491096, 31.842783, 35.296917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483174, 0.332117, 0.810087,
		0.853024, 0.386989, 0.350127,
		-0.197212, 0.860196, -0.470287,
		39.431934, 32.100842, 35.155830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636738, 32.130623, 35.867199>,  <39.569981, 31.498705, 35.485031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636738, 32.130623, 35.867199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366116, 32.207291, 35.582794>,  <39.203743, 32.253292, 35.412151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366116, 32.207291, 35.582794>,  <39.636738, 32.130623, 35.867199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366116, 32.207291, 35.582794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613934, 0.386358, 0.688340,
		0.406638, 0.902214, -0.143721,
		-0.676558, 0.191670, -0.711008,
		39.163147, 32.264793, 35.369492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282692, 32.040524, 35.835255>,  <39.636738, 32.130623, 35.867199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282692, 32.040524, 35.835255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549767, 32.034058, 35.537548>,  <40.710011, 32.030178, 35.358925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549767, 32.034058, 35.537548>,  <40.282692, 32.040524, 35.835255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549767, 32.034058, 35.537548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265514, 0.939183, 0.217798,
		0.695482, -0.343035, 0.631373,
		0.667688, -0.016164, -0.744266,
		40.750072, 32.029209, 35.314270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471897, 32.691036, 35.807659>,  <40.282692, 32.040524, 35.835255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471897, 32.691036, 35.807659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762203, 32.556004, 35.567894>,  <40.936386, 32.474983, 35.424034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762203, 32.556004, 35.567894>,  <40.471897, 32.691036, 35.807659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762203, 32.556004, 35.567894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374134, 0.924886, -0.067890,
		0.577310, -0.174990, 0.797554,
		0.725766, -0.337586, -0.599416,
		40.979935, 32.454727, 35.388069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112160, 32.993969, 36.068684>,  <40.471897, 32.691036, 35.807659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112160, 32.993969, 36.068684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164165, 32.887150, 35.686733>,  <41.195370, 32.823059, 35.457565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164165, 32.887150, 35.686733>,  <41.112160, 32.993969, 36.068684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164165, 32.887150, 35.686733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486817, 0.856168, -0.173164,
		0.863775, -0.442335, 0.241316,
		0.130010, -0.267051, -0.954872,
		41.203167, 32.807034, 35.400272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722305, 33.084118, 35.898491>,  <41.112160, 32.993969, 36.068684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722305, 33.084118, 35.898491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543659, 33.103210, 35.541111>,  <41.436470, 33.114666, 35.326683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543659, 33.103210, 35.541111>,  <41.722305, 33.084118, 35.898491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543659, 33.103210, 35.541111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507996, 0.835544, -0.209299,
		0.736530, -0.547346, -0.397411,
		-0.446614, 0.047728, -0.893453,
		41.409676, 33.117531, 35.273075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296707, 33.770737, 35.958500>,  <41.722305, 33.084118, 35.898491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296707, 33.770737, 35.958500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586533, 33.727715, 36.230808>,  <41.760426, 33.701900, 36.394192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586533, 33.727715, 36.230808>,  <41.296707, 33.770737, 35.958500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586533, 33.727715, 36.230808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689116, 0.129438, -0.712997,
		-0.011433, 0.985738, 0.167902,
		0.724561, -0.107552, 0.680767,
		41.803902, 33.695450, 36.435040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700031, 34.416016, 35.991306>,  <41.296707, 33.770737, 35.958500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700031, 34.416016, 35.991306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889095, 34.075233, 36.081429>,  <42.002533, 33.870766, 36.135502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889095, 34.075233, 36.081429>,  <41.700031, 34.416016, 35.991306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889095, 34.075233, 36.081429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646334, 0.161352, -0.745800,
		0.599035, 0.498134, 0.626913,
		0.472662, -0.851955, 0.225306,
		42.030895, 33.819645, 36.149021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442230, 34.492966, 36.140388>,  <41.700031, 34.416016, 35.991306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442230, 34.492966, 36.140388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402462, 34.111973, 36.025230>,  <42.378601, 33.883377, 35.956135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402462, 34.111973, 36.025230>,  <42.442230, 34.492966, 36.140388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402462, 34.111973, 36.025230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529622, 0.194288, -0.825683,
		0.842387, -0.234571, 0.485141,
		-0.099424, -0.952486, -0.287899,
		42.372635, 33.826225, 35.938862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200344, 34.206863, 36.091217>,  <42.442230, 34.492966, 36.140388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200344, 34.206863, 36.091217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909653, 34.052975, 35.863583>,  <42.735237, 33.960640, 35.727001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909653, 34.052975, 35.863583>,  <43.200344, 34.206863, 36.091217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909653, 34.052975, 35.863583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583236, 0.092097, -0.807065,
		0.362908, -0.918426, 0.157455,
		-0.726728, -0.384724, -0.569082,
		42.691635, 33.937557, 35.692860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675121, 33.995731, 35.520248>,  <43.200344, 34.206863, 36.091217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675121, 33.995731, 35.520248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725338, 34.391197, 35.553192>,  <43.755470, 34.628475, 35.572960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725338, 34.391197, 35.553192>,  <43.675121, 33.995731, 35.520248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725338, 34.391197, 35.553192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592372, -0.008110, -0.805624,
		-0.795823, 0.149930, -0.586675,
		0.125545, 0.988663, 0.082360,
		43.763000, 34.687798, 35.577900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717113, 34.210011, 34.865749>,  <43.675121, 33.995731, 35.520248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717113, 34.210011, 34.865749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868671, 34.502979, 35.092022>,  <43.959606, 34.678761, 35.227787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868671, 34.502979, 35.092022>,  <43.717113, 34.210011, 34.865749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868671, 34.502979, 35.092022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672606, 0.201901, -0.711925,
		-0.635639, 0.650231, -0.416128,
		0.378900, 0.732417, 0.565685,
		43.982342, 34.722706, 35.261726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689762, 34.901375, 34.533485>,  <43.717113, 34.210011, 34.865749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689762, 34.901375, 34.533485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989681, 34.926201, 34.796986>,  <44.169632, 34.941097, 34.955086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989681, 34.926201, 34.796986>,  <43.689762, 34.901375, 34.533485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989681, 34.926201, 34.796986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644926, 0.154006, -0.748567,
		-0.147909, 0.986119, 0.075448,
		0.749795, 0.062061, 0.658753,
		44.214619, 34.944820, 34.994610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241726, 35.356892, 34.323692>,  <43.689762, 34.901375, 34.533485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241726, 35.356892, 34.323692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384048, 35.036762, 34.516724>,  <44.469440, 34.844685, 34.632542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384048, 35.036762, 34.516724>,  <44.241726, 35.356892, 34.323692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384048, 35.036762, 34.516724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549659, -0.238409, -0.800647,
		0.755829, 0.550130, 0.355078,
		0.355806, -0.800324, 0.482580,
		44.490791, 34.796665, 34.661499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045670, 35.293407, 34.446602>,  <44.241726, 35.356892, 34.323692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045670, 35.293407, 34.446602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896576, 34.922237, 34.444992>,  <44.807121, 34.699535, 34.444027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896576, 34.922237, 34.444992>,  <45.045670, 35.293407, 34.446602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896576, 34.922237, 34.444992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607222, -0.240628, -0.757218,
		0.701677, -0.284683, 0.653149,
		-0.372733, -0.927930, -0.004023,
		44.784756, 34.643860, 34.443787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605682, 34.753719, 34.575569>,  <45.045670, 35.293407, 34.446602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605682, 34.753719, 34.575569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298077, 34.617424, 34.359226>,  <45.113514, 34.535648, 34.229420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298077, 34.617424, 34.359226>,  <45.605682, 34.753719, 34.575569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298077, 34.617424, 34.359226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638735, -0.443034, -0.629077,
		-0.025268, -0.829229, 0.558338,
		-0.769012, -0.340734, -0.540853,
		45.067371, 34.515205, 34.196972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.340183, 34.724354, 34.926304>,  <45.605682, 34.753719, 34.575569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.340183, 34.724354, 34.926304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419930, 35.088387, 34.780972>,  <46.467777, 35.306805, 34.693771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419930, 35.088387, 34.780972>,  <46.340183, 34.724354, 34.926304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.419930, 35.088387, 34.780972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259541, -0.308491, -0.915135,
		-0.944930, 0.276745, 0.174701,
		0.199366, 0.910080, -0.363329,
		46.479740, 35.361412, 34.671974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.043461, 34.665134, 35.041050>,  <46.340183, 34.724354, 34.926304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.043461, 34.665134, 35.041050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.312187, 34.676163, 34.744968>,  <47.473423, 34.682781, 34.567318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.312187, 34.676163, 34.744968>,  <47.043461, 34.665134, 35.041050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.312187, 34.676163, 34.744968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098516, 0.987103, 0.126184,
		0.734140, -0.157694, 0.660432,
		0.671813, 0.027574, -0.740207,
		47.513733, 34.684433, 34.522907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.658962, 35.144527, 35.285824>,  <47.043461, 34.665134, 35.041050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.658962, 35.144527, 35.285824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.618889, 35.109001, 34.889423>,  <47.594845, 35.087685, 34.651585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.618889, 35.109001, 34.889423>,  <47.658962, 35.144527, 35.285824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.618889, 35.109001, 34.889423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048045, 0.995278, -0.084343,
		0.993808, 0.039163, -0.103978,
		-0.100184, -0.088816, -0.990997,
		47.588833, 35.082355, 34.592125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.675734, 32.899483, 24.787384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.400673, 33.044945, 25.038746>,  <31.235636, 33.132221, 25.189562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.400673, 33.044945, 25.038746>,  <31.675734, 32.899483, 24.787384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400673, 33.044945, 25.038746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423656, -0.501913, 0.754055,
		0.589618, 0.784755, 0.191078,
		-0.687653, 0.363653, 0.628403,
		31.194378, 33.154041, 25.227266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040325, 33.201359, 25.418861>,  <31.675734, 32.899483, 24.787384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040325, 33.201359, 25.418861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.671892, 33.167080, 25.570789>,  <31.450832, 33.146511, 25.661945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.671892, 33.167080, 25.570789>,  <32.040325, 33.201359, 25.418861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671892, 33.167080, 25.570789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380219, -0.408179, 0.829954,
		0.083908, 0.908871, 0.408551,
		-0.921083, -0.085699, 0.379819,
		31.395567, 33.141369, 25.684734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058910, 33.360573, 26.173986>,  <32.040325, 33.201359, 25.418861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058910, 33.360573, 26.173986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.718491, 33.153938, 26.136351>,  <31.514238, 33.029957, 26.113770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.718491, 33.153938, 26.136351>,  <32.058910, 33.360573, 26.173986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718491, 33.153938, 26.136351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089235, -0.318871, 0.943588,
		-0.517444, 0.794646, 0.317473,
		-0.851052, -0.516584, -0.094088,
		31.463175, 32.998962, 26.108124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706394, 33.487595, 26.739208>,  <32.058910, 33.360573, 26.173986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706394, 33.487595, 26.739208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.551270, 33.147247, 26.597433>,  <31.458195, 32.943039, 26.512369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.551270, 33.147247, 26.597433>,  <31.706394, 33.487595, 26.739208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551270, 33.147247, 26.597433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020791, -0.392508, 0.919514,
		-0.921504, 0.349230, 0.169910,
		-0.387813, -0.850868, -0.354437,
		31.434925, 32.891987, 26.491102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226109, 33.204620, 27.240137>,  <31.706394, 33.487595, 26.739208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226109, 33.204620, 27.240137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.287012, 32.895885, 26.993212>,  <31.323555, 32.710644, 26.845057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.287012, 32.895885, 26.993212>,  <31.226109, 33.204620, 27.240137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287012, 32.895885, 26.993212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024270, -0.627329, 0.778376,
		-0.988042, -0.103534, -0.114250,
		0.152261, -0.771841, -0.617315,
		31.332691, 32.664333, 26.808018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724056, 32.701630, 27.358013>,  <31.226109, 33.204620, 27.240137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724056, 32.701630, 27.358013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.049862, 32.515430, 27.219515>,  <31.245344, 32.403713, 27.136415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.049862, 32.515430, 27.219515>,  <30.724056, 32.701630, 27.358013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049862, 32.515430, 27.219515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045760, -0.646510, 0.761532,
		-0.578339, -0.604433, -0.547891,
		0.814513, -0.465495, -0.346243,
		31.294216, 32.375782, 27.115643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535238, 31.937580, 27.466198>,  <30.724056, 32.701630, 27.358013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535238, 31.937580, 27.466198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.931227, 31.992601, 27.453318>,  <31.168819, 32.025616, 27.445589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.931227, 31.992601, 27.453318>,  <30.535238, 31.937580, 27.466198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931227, 31.992601, 27.453318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113094, -0.635025, 0.764168,
		0.084666, -0.760146, -0.644213,
		0.989970, 0.137555, -0.032203,
		31.228218, 32.033867, 27.443657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856203, 31.189709, 27.617371>,  <30.535238, 31.937580, 27.466198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856203, 31.189709, 27.617371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.165010, 31.442163, 27.647444>,  <31.350296, 31.593636, 27.665487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.165010, 31.442163, 27.647444>,  <30.856203, 31.189709, 27.617371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165010, 31.442163, 27.647444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345132, -0.515600, 0.784245,
		0.533730, -0.579504, -0.615879,
		0.772020, 0.631135, 0.075185,
		31.396616, 31.631504, 27.670000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420864, 30.807882, 27.793421>,  <30.856203, 31.189709, 27.617371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420864, 30.807882, 27.793421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.532999, 31.181484, 27.882002>,  <31.600281, 31.405645, 27.935150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.532999, 31.181484, 27.882002>,  <31.420864, 30.807882, 27.793421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532999, 31.181484, 27.882002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517727, -0.341393, 0.784480,
		0.808312, -0.105268, -0.579267,
		0.280339, 0.934007, 0.221452,
		31.617100, 31.461687, 27.948437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130722, 30.819065, 27.853378>,  <31.420864, 30.807882, 27.793421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130722, 30.819065, 27.853378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.026875, 31.152838, 28.047832>,  <31.964567, 31.353102, 28.164505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.026875, 31.152838, 28.047832>,  <32.130722, 30.819065, 27.853378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026875, 31.152838, 28.047832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723350, -0.165490, 0.670357,
		0.639816, 0.525681, -0.560620,
		-0.259617, 0.834429, 0.486134,
		31.948990, 31.403166, 28.193672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815403, 31.197371, 27.980118>,  <32.130722, 30.819065, 27.853378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815403, 31.197371, 27.980118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.510792, 31.262297, 28.231110>,  <32.328026, 31.301252, 28.381704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.510792, 31.262297, 28.231110>,  <32.815403, 31.197371, 27.980118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510792, 31.262297, 28.231110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638785, 0.024110, 0.769008,
		0.109695, 0.986444, -0.122046,
		-0.761526, 0.162317, 0.627481,
		32.282333, 31.310991, 28.419353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038036, 31.723486, 28.503136>,  <32.815403, 31.197371, 27.980118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038036, 31.723486, 28.503136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.724728, 31.530760, 28.660280>,  <32.536743, 31.415125, 28.754566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.724728, 31.530760, 28.660280>,  <33.038036, 31.723486, 28.503136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724728, 31.530760, 28.660280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477996, -0.062697, 0.876121,
		-0.397497, 0.874027, 0.279415,
		-0.783273, -0.481815, 0.392860,
		32.489746, 31.386215, 28.778139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030701, 32.020691, 29.226305>,  <33.038036, 31.723486, 28.503136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030701, 32.020691, 29.226305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794247, 31.698704, 29.246645>,  <32.652374, 31.505512, 29.258848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794247, 31.698704, 29.246645>,  <33.030701, 32.020691, 29.226305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794247, 31.698704, 29.246645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472598, -0.294593, 0.830582,
		-0.653611, 0.515020, 0.554570,
		-0.591139, -0.804966, 0.050848,
		32.616905, 31.457214, 29.261900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816593, 31.940243, 29.968586>,  <33.030701, 32.020691, 29.226305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816593, 31.940243, 29.968586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.763138, 31.568775, 29.830185>,  <32.731064, 31.345896, 29.747145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.763138, 31.568775, 29.830185>,  <32.816593, 31.940243, 29.968586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763138, 31.568775, 29.830185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408892, -0.369700, 0.834343,
		-0.902745, -0.029980, 0.429130,
		-0.133636, -0.928667, -0.346004,
		32.723045, 31.290174, 29.726383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578953, 31.558178, 30.463924>,  <32.816593, 31.940243, 29.968586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578953, 31.558178, 30.463924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.712780, 31.267254, 30.224228>,  <32.793076, 31.092699, 30.080410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.712780, 31.267254, 30.224228>,  <32.578953, 31.558178, 30.463924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712780, 31.267254, 30.224228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443983, -0.439238, 0.780993,
		-0.831232, -0.527344, 0.175960,
		0.334564, -0.727309, -0.599240,
		32.813148, 31.049061, 30.044456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508369, 30.962351, 30.862881>,  <32.578953, 31.558178, 30.463924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508369, 30.962351, 30.862881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.754124, 30.833939, 30.574583>,  <32.901577, 30.756891, 30.401604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.754124, 30.833939, 30.574583>,  <32.508369, 30.962351, 30.862881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754124, 30.833939, 30.574583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414484, -0.645965, 0.641040,
		-0.671375, -0.692578, -0.263802,
		0.614377, -0.321036, -0.720747,
		32.938438, 30.737629, 30.358358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453751, 30.337208, 30.979548>,  <32.508369, 30.962351, 30.862881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453751, 30.337208, 30.979548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.798721, 30.395014, 30.785500>,  <33.005703, 30.429697, 30.669071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.798721, 30.395014, 30.785500>,  <32.453751, 30.337208, 30.979548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798721, 30.395014, 30.785500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466137, -0.600359, 0.649835,
		-0.197335, -0.786565, -0.585127,
		0.862424, 0.144514, -0.485119,
		33.057449, 30.438368, 30.639963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837521, 29.648069, 30.964088>,  <32.453751, 30.337208, 30.979548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837521, 29.648069, 30.964088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.096397, 29.946453, 30.901241>,  <33.251724, 30.125483, 30.863533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.096397, 29.946453, 30.901241>,  <32.837521, 29.648069, 30.964088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096397, 29.946453, 30.901241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652441, -0.435413, 0.620271,
		0.394286, -0.503945, -0.768491,
		0.647193, 0.745959, -0.157117,
		33.290554, 30.170240, 30.854107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492493, 29.275398, 31.187122>,  <32.837521, 29.648069, 30.964088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492493, 29.275398, 31.187122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.586575, 29.662424, 31.150246>,  <33.643024, 29.894640, 31.128119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.586575, 29.662424, 31.150246>,  <33.492493, 29.275398, 31.187122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586575, 29.662424, 31.150246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701810, -0.103447, 0.704812,
		0.672414, -0.230478, -0.703377,
		0.235206, 0.967563, -0.092193,
		33.657135, 29.952694, 31.122587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213951, 29.344021, 31.093859>,  <33.492493, 29.275398, 31.187122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213951, 29.344021, 31.093859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.126446, 29.712404, 31.222841>,  <34.073940, 29.933434, 31.300230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.126446, 29.712404, 31.222841>,  <34.213951, 29.344021, 31.093859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126446, 29.712404, 31.222841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641795, -0.113117, 0.758488,
		0.735010, 0.372882, -0.566320,
		-0.218766, 0.920958, 0.322456,
		34.060818, 29.988691, 31.319578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792850, 29.589123, 31.370274>,  <34.213951, 29.344021, 31.093859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792850, 29.589123, 31.370274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.508507, 29.823393, 31.526049>,  <34.337902, 29.963955, 31.619514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.508507, 29.823393, 31.526049>,  <34.792850, 29.589123, 31.370274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508507, 29.823393, 31.526049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444174, -0.055489, 0.894221,
		0.545334, 0.808643, -0.220697,
		-0.710859, 0.585677, 0.389438,
		34.295250, 29.999096, 31.642879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132774, 30.230167, 31.597456>,  <34.792850, 29.589123, 31.370274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132774, 30.230167, 31.597456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.791206, 30.189287, 31.801563>,  <34.586266, 30.164759, 31.924028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.791206, 30.189287, 31.801563>,  <35.132774, 30.230167, 31.597456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791206, 30.189287, 31.801563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519988, -0.128451, 0.844460,
		-0.020760, 0.986436, 0.162830,
		-0.853921, -0.102201, 0.510268,
		34.535030, 30.158627, 31.954643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430061, 30.908054, 31.738375>,  <35.132774, 30.230167, 31.597456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430061, 30.908054, 31.738375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.805447, 30.983086, 31.622370>,  <36.030678, 31.028105, 31.552767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.805447, 30.983086, 31.622370>,  <35.430061, 30.908054, 31.738375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805447, 30.983086, 31.622370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339187, 0.658926, -0.671393,
		0.065158, 0.728444, 0.682000,
		0.938460, 0.187579, -0.290013,
		36.086983, 31.039360, 31.535366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492630, 31.586224, 31.746883>,  <35.430061, 30.908054, 31.738375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492630, 31.586224, 31.746883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793827, 31.483616, 31.504496>,  <35.974545, 31.422050, 31.359062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793827, 31.483616, 31.504496>,  <35.492630, 31.586224, 31.746883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793827, 31.483616, 31.504496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270509, 0.718807, -0.640424,
		0.599857, 0.646155, 0.471865,
		0.752992, -0.256519, -0.605971,
		36.019726, 31.406660, 31.322704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871937, 32.184216, 31.557423>,  <35.492630, 31.586224, 31.746883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871937, 32.184216, 31.557423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.932980, 31.906086, 31.276501>,  <35.969604, 31.739206, 31.107948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.932980, 31.906086, 31.276501>,  <35.871937, 32.184216, 31.557423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932980, 31.906086, 31.276501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172174, 0.681053, -0.711703,
		0.973173, 0.229532, -0.015782,
		0.152610, -0.695328, -0.702303,
		35.978764, 31.697487, 31.065809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168446, 32.693703, 31.004000>,  <35.871937, 32.184216, 31.557423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168446, 32.693703, 31.004000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.046528, 32.339630, 30.863396>,  <35.973377, 32.127186, 30.779034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.046528, 32.339630, 30.863396>,  <36.168446, 32.693703, 31.004000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046528, 32.339630, 30.863396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404713, 0.454468, -0.793515,
		0.862153, -0.099598, -0.496763,
		-0.304795, -0.885177, -0.351512,
		35.955090, 32.074078, 30.757942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337898, 32.730858, 30.272293>,  <36.168446, 32.693703, 31.004000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337898, 32.730858, 30.272293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091965, 32.415428, 30.276878>,  <35.944405, 32.226170, 30.279629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091965, 32.415428, 30.276878>,  <36.337898, 32.730858, 30.272293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091965, 32.415428, 30.276878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422447, 0.317031, -0.849134,
		0.665969, -0.526921, -0.528052,
		-0.614836, -0.788572, 0.011463,
		35.907513, 32.178856, 30.280317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421097, 32.323669, 29.565125>,  <36.337898, 32.730858, 30.272293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421097, 32.323669, 29.565125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064651, 32.267883, 29.737850>,  <35.850784, 32.234413, 29.841486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064651, 32.267883, 29.737850>,  <36.421097, 32.323669, 29.565125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064651, 32.267883, 29.737850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450602, 0.384333, -0.805758,
		-0.053585, -0.912599, -0.405328,
		-0.891115, -0.139465, 0.431813,
		35.797318, 32.226044, 29.867393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080826, 32.090725, 29.073267>,  <36.421097, 32.323669, 29.565125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080826, 32.090725, 29.073267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.769131, 32.151787, 29.316406>,  <35.582111, 32.188423, 29.462290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.769131, 32.151787, 29.316406>,  <36.080826, 32.090725, 29.073267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769131, 32.151787, 29.316406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550183, 0.297856, -0.780116,
		-0.300139, -0.942326, -0.148113,
		-0.779240, 0.152654, 0.607850,
		35.535358, 32.197582, 29.498762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530293, 31.658186, 28.715342>,  <36.080826, 32.090725, 29.073267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530293, 31.658186, 28.715342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389099, 31.944881, 28.955904>,  <35.304382, 32.116898, 29.100243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389099, 31.944881, 28.955904>,  <35.530293, 31.658186, 28.715342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389099, 31.944881, 28.955904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508597, 0.392535, -0.766319,
		-0.785323, -0.576371, 0.225973,
		-0.352982, 0.716738, 0.601407,
		35.283203, 32.159904, 29.136326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824635, 31.734327, 28.618872>,  <35.530293, 31.658186, 28.715342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824635, 31.734327, 28.618872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.919914, 32.087887, 28.779863>,  <34.977081, 32.300022, 28.876459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.919914, 32.087887, 28.779863>,  <34.824635, 31.734327, 28.618872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919914, 32.087887, 28.779863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388664, 0.466529, -0.794538,
		-0.890057, 0.032828, 0.454665,
		0.238197, 0.883896, 0.402478,
		34.991375, 32.353054, 28.900606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191273, 32.078754, 28.566128>,  <34.824635, 31.734327, 28.618872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191273, 32.078754, 28.566128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.497597, 32.331593, 28.613453>,  <34.681389, 32.483295, 28.641848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.497597, 32.331593, 28.613453>,  <34.191273, 32.078754, 28.566128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497597, 32.331593, 28.613453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288718, 0.502350, -0.815038,
		-0.574612, 0.590004, 0.567200,
		0.765808, 0.632092, 0.118312,
		34.727341, 32.521221, 28.648947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868099, 32.634773, 28.357460>,  <34.191273, 32.078754, 28.566128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868099, 32.634773, 28.357460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.260193, 32.713562, 28.364790>,  <34.495449, 32.760838, 28.369188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.260193, 32.713562, 28.364790>,  <33.868099, 32.634773, 28.357460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260193, 32.713562, 28.364790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066489, 0.415280, -0.907261,
		-0.186317, 0.888112, 0.420169,
		0.980237, 0.196975, 0.018324,
		34.554264, 32.772655, 28.370287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921192, 33.297489, 28.149895>,  <33.868099, 32.634773, 28.357460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921192, 33.297489, 28.149895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.266449, 33.121723, 28.050379>,  <34.473602, 33.016266, 27.990669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.266449, 33.121723, 28.050379>,  <33.921192, 33.297489, 28.149895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266449, 33.121723, 28.050379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008179, 0.480462, -0.876977,
		0.504888, 0.758994, 0.411115,
		0.863146, -0.439413, -0.248788,
		34.525394, 32.989899, 27.975742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270435, 33.859215, 27.886311>,  <33.921192, 33.297489, 28.149895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270435, 33.859215, 27.886311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.493778, 33.559208, 27.744482>,  <34.627785, 33.379204, 27.659386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.493778, 33.559208, 27.744482>,  <34.270435, 33.859215, 27.886311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493778, 33.559208, 27.744482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033079, 0.447187, -0.893828,
		0.828943, 0.487343, 0.274498,
		0.558354, -0.750013, -0.354572,
		34.661285, 33.334206, 27.638111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717384, 34.218388, 27.424517>,  <34.270435, 33.859215, 27.886311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717384, 34.218388, 27.424517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.728561, 33.829124, 27.333141>,  <34.735268, 33.595566, 27.278316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.728561, 33.829124, 27.333141>,  <34.717384, 34.218388, 27.424517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728561, 33.829124, 27.333141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217117, 0.228981, -0.948909,
		0.975746, -0.023083, 0.217687,
		0.027943, -0.973157, -0.228439,
		34.736942, 33.537178, 27.264610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223663, 34.147305, 26.834675>,  <34.717384, 34.218388, 27.424517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223663, 34.147305, 26.834675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.002708, 33.813927, 26.828529>,  <34.870136, 33.613899, 26.824842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.002708, 33.813927, 26.828529>,  <35.223663, 34.147305, 26.834675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002708, 33.813927, 26.828529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000186, 0.018557, -0.999828,
		0.833589, -0.552288, -0.010406,
		-0.552386, -0.833447, -0.015366,
		34.836994, 33.563892, 26.823919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425678, 33.808277, 26.205952>,  <35.223663, 34.147305, 26.834675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425678, 33.808277, 26.205952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.082314, 33.615818, 26.277082>,  <34.876293, 33.500343, 26.319761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.082314, 33.615818, 26.277082>,  <35.425678, 33.808277, 26.205952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082314, 33.615818, 26.277082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282674, 0.154427, -0.946704,
		0.428039, -0.862932, -0.268570,
		-0.858416, -0.481144, 0.177828,
		34.824787, 33.471474, 26.330431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328568, 33.335892, 25.675941>,  <35.425678, 33.808277, 26.205952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328568, 33.335892, 25.675941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.960693, 33.417179, 25.810333>,  <34.739967, 33.465950, 25.890968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.960693, 33.417179, 25.810333>,  <35.328568, 33.335892, 25.675941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960693, 33.417179, 25.810333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303471, 0.175105, -0.936613,
		-0.249168, -0.963349, -0.099371,
		-0.919685, 0.203218, 0.335979,
		34.684788, 33.478146, 25.911127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809242, 32.865776, 25.390675>,  <35.328568, 33.335892, 25.675941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809242, 32.865776, 25.390675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.614819, 33.198879, 25.496702>,  <34.498165, 33.398743, 25.560320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.614819, 33.198879, 25.496702>,  <34.809242, 32.865776, 25.390675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614819, 33.198879, 25.496702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214903, 0.180104, -0.959885,
		-0.847093, -0.523523, 0.091422,
		-0.486056, 0.832758, 0.265071,
		34.469002, 33.448708, 25.576223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.112831, 32.800903, 24.838837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139141, 33.161114, 25.010756>,  <34.154926, 33.377239, 25.113907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139141, 33.161114, 25.010756>,  <34.112831, 32.800903, 24.838837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139141, 33.161114, 25.010756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340730, 0.425112, -0.838560,
		-0.937857, -0.091286, 0.334799,
		0.065778, 0.900526, 0.429799,
		34.158875, 33.431271, 25.139694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512791, 33.127472, 24.791159>,  <34.112831, 32.800903, 24.838837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512791, 33.127472, 24.791159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.776154, 33.426060, 24.829681>,  <33.934174, 33.605213, 24.852795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.776154, 33.426060, 24.829681>,  <33.512791, 33.127472, 24.791159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776154, 33.426060, 24.829681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489438, 0.521839, -0.698667,
		-0.571793, 0.412872, 0.708935,
		0.658410, 0.746472, 0.096308,
		33.973675, 33.650002, 24.858574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091263, 33.690922, 24.879866>,  <33.512791, 33.127472, 24.791159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091263, 33.690922, 24.879866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.435040, 33.854992, 24.757803>,  <33.641304, 33.953434, 24.684565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.435040, 33.854992, 24.757803>,  <33.091263, 33.690922, 24.879866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435040, 33.854992, 24.757803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509863, 0.643994, -0.570361,
		-0.037427, 0.645779, 0.762606,
		0.859441, 0.410172, -0.305156,
		33.692871, 33.978043, 24.666256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990273, 34.424355, 24.863804>,  <33.091263, 33.690922, 24.879866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990273, 34.424355, 24.863804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294949, 34.350945, 24.615240>,  <33.477753, 34.306896, 24.466103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294949, 34.350945, 24.615240>,  <32.990273, 34.424355, 24.863804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294949, 34.350945, 24.615240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376480, 0.655189, -0.654973,
		0.527347, 0.732833, 0.429954,
		0.761687, -0.183529, -0.621409,
		33.523457, 34.295887, 24.428818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125740, 35.085884, 24.643236>,  <32.990273, 34.424355, 24.863804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125740, 35.085884, 24.643236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.306450, 34.850262, 24.375231>,  <33.414875, 34.708889, 24.214428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.306450, 34.850262, 24.375231>,  <33.125740, 35.085884, 24.643236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306450, 34.850262, 24.375231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309690, 0.600774, -0.736995,
		0.836656, 0.540451, 0.088989,
		0.451772, -0.589053, -0.670014,
		33.441982, 34.673546, 24.174227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487148, 35.483639, 24.283379>,  <33.125740, 35.085884, 24.643236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487148, 35.483639, 24.283379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408619, 35.161808, 24.059195>,  <33.361504, 34.968708, 23.924685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408619, 35.161808, 24.059195>,  <33.487148, 35.483639, 24.283379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408619, 35.161808, 24.059195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216743, 0.593050, -0.775444,
		0.956285, -0.030760, -0.290814,
		-0.196320, -0.804577, -0.560458,
		33.349724, 34.920433, 23.891058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600895, 35.704826, 23.620483>,  <33.487148, 35.483639, 24.283379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600895, 35.704826, 23.620483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402660, 35.367519, 23.537249>,  <33.283718, 35.165134, 23.487309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402660, 35.367519, 23.537249>,  <33.600895, 35.704826, 23.620483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402660, 35.367519, 23.537249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287821, 0.385482, -0.876677,
		0.819484, -0.374576, -0.433748,
		-0.495585, -0.843265, -0.208086,
		33.253986, 35.114540, 23.474823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668678, 35.713680, 22.942316>,  <33.600895, 35.704826, 23.620483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668678, 35.713680, 22.942316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.395153, 35.428753, 23.005579>,  <33.231037, 35.257797, 23.043537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.395153, 35.428753, 23.005579>,  <33.668678, 35.713680, 22.942316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395153, 35.428753, 23.005579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493203, 0.291482, -0.819628,
		0.537733, -0.638472, -0.550633,
		-0.683809, -0.712315, 0.158156,
		33.190010, 35.215057, 23.053026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602486, 35.288460, 22.343981>,  <33.668678, 35.713680, 22.942316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602486, 35.288460, 22.343981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263168, 35.222012, 22.545097>,  <33.059578, 35.182144, 22.665768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263168, 35.222012, 22.545097>,  <33.602486, 35.288460, 22.343981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263168, 35.222012, 22.545097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529070, 0.226599, -0.817764,
		0.021914, -0.959717, -0.280112,
		-0.848295, -0.166119, 0.502792,
		33.008678, 35.172176, 22.695934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133083, 34.875401, 21.996916>,  <33.602486, 35.288460, 22.343981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133083, 34.875401, 21.996916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.884514, 35.073639, 22.239637>,  <32.735371, 35.192581, 22.385269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.884514, 35.073639, 22.239637>,  <33.133083, 34.875401, 21.996916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884514, 35.073639, 22.239637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647601, 0.110985, -0.753854,
		-0.440955, -0.861431, 0.251982,
		-0.621427, 0.495599, 0.606803,
		32.698086, 35.222317, 22.421679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410370, 34.552990, 21.858879>,  <33.133083, 34.875401, 21.996916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410370, 34.552990, 21.858879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.380322, 34.919662, 22.015875>,  <32.362293, 35.139668, 22.110073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.380322, 34.919662, 22.015875>,  <32.410370, 34.552990, 21.858879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380322, 34.919662, 22.015875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756063, 0.204275, -0.621804,
		-0.650173, -0.343459, 0.677725,
		-0.075122, 0.916683, 0.392491,
		32.357784, 35.194668, 22.133621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742424, 34.702263, 21.703512>,  <32.410370, 34.552990, 21.858879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742424, 34.702263, 21.703512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929222, 35.047569, 21.780123>,  <32.041302, 35.254753, 21.826090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929222, 35.047569, 21.780123>,  <31.742424, 34.702263, 21.703512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929222, 35.047569, 21.780123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585356, 0.464146, -0.664776,
		-0.662776, 0.198335, 0.722074,
		0.466996, 0.863268, 0.191528,
		32.069321, 35.306549, 21.837582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232401, 35.190559, 21.471731>,  <31.742424, 34.702263, 21.703512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232401, 35.190559, 21.471731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.551804, 35.426392, 21.520369>,  <31.743444, 35.567890, 21.549551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.551804, 35.426392, 21.520369>,  <31.232401, 35.190559, 21.471731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551804, 35.426392, 21.520369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384172, 0.654590, -0.651095,
		-0.463465, 0.473190, 0.749194,
		0.798506, 0.589579, 0.121593,
		31.791355, 35.603264, 21.556847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944422, 35.819283, 21.593052>,  <31.232401, 35.190559, 21.471731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944422, 35.819283, 21.593052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.316778, 35.874180, 21.457638>,  <31.540192, 35.907116, 21.376390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.316778, 35.874180, 21.457638>,  <30.944422, 35.819283, 21.593052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316778, 35.874180, 21.457638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331703, 0.705762, -0.625998,
		0.153012, 0.695029, 0.702511,
		0.930892, 0.137240, -0.338534,
		31.596046, 35.915352, 21.356077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041019, 36.591728, 21.578611>,  <30.944422, 35.819283, 21.593052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041019, 36.591728, 21.578611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.333313, 36.455338, 21.342049>,  <31.508690, 36.373505, 21.200111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.333313, 36.455338, 21.342049>,  <31.041019, 36.591728, 21.578611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333313, 36.455338, 21.342049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164594, 0.752766, -0.637379,
		0.662522, 0.563097, 0.493950,
		0.730735, -0.340976, -0.591406,
		31.552534, 36.353046, 21.164627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519598, 37.068775, 21.547335>,  <31.041019, 36.591728, 21.578611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519598, 37.068775, 21.547335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.568485, 36.843746, 21.220268>,  <31.597816, 36.708729, 21.024029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.568485, 36.843746, 21.220268>,  <31.519598, 37.068775, 21.547335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568485, 36.843746, 21.220268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125103, 0.808537, -0.574992,
		0.984587, 0.172565, 0.028437,
		0.122216, -0.562573, -0.817664,
		31.605150, 36.674973, 20.974968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126637, 37.395756, 21.189108>,  <31.519598, 37.068775, 21.547335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126637, 37.395756, 21.189108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.937931, 37.166412, 20.921167>,  <31.824709, 37.028805, 20.760403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.937931, 37.166412, 20.921167>,  <32.126637, 37.395756, 21.189108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937931, 37.166412, 20.921167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107867, 0.791526, -0.601541,
		0.875104, -0.211529, -0.435257,
		-0.471761, -0.573361, -0.669850,
		31.796402, 36.994404, 20.720213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515907, 37.577271, 20.535078>,  <32.126637, 37.395756, 21.189108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515907, 37.577271, 20.535078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.172371, 37.400562, 20.431366>,  <31.966249, 37.294537, 20.369139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.172371, 37.400562, 20.431366>,  <32.515907, 37.577271, 20.535078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172371, 37.400562, 20.431366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214632, 0.769947, -0.600928,
		0.465107, -0.460452, -0.756082,
		-0.858842, -0.441775, -0.259280,
		31.914719, 37.268028, 20.353582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611618, 37.588390, 19.764233>,  <32.515907, 37.577271, 20.535078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611618, 37.588390, 19.764233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.235630, 37.563519, 19.898445>,  <32.010036, 37.548595, 19.978973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.235630, 37.563519, 19.898445>,  <32.611618, 37.588390, 19.764233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235630, 37.563519, 19.898445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288500, 0.669950, -0.684057,
		-0.182255, -0.739797, -0.647675,
		-0.939974, -0.062181, 0.335533,
		31.953638, 37.544865, 19.999105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214371, 37.636276, 19.115238>,  <32.611618, 37.588390, 19.764233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214371, 37.636276, 19.115238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.967802, 37.712551, 19.420832>,  <31.819862, 37.758316, 19.604187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.967802, 37.712551, 19.420832>,  <32.214371, 37.636276, 19.115238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967802, 37.712551, 19.420832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549927, 0.590163, -0.591006,
		-0.563569, -0.784441, -0.258926,
		-0.616418, 0.190682, 0.763982,
		31.782877, 37.769756, 19.650026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637529, 37.862568, 18.855501>,  <32.214371, 37.636276, 19.115238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637529, 37.862568, 18.855501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.586523, 37.980083, 19.234432>,  <31.555920, 38.050591, 19.461790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.586523, 37.980083, 19.234432>,  <31.637529, 37.862568, 18.855501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586523, 37.980083, 19.234432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207584, 0.926066, -0.315136,
		-0.969871, -0.236834, -0.057102,
		-0.127515, 0.293787, 0.947327,
		31.548269, 38.068218, 19.518631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938087, 38.207317, 18.830917>,  <31.637529, 37.862568, 18.855501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938087, 38.207317, 18.830917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.166132, 38.333710, 19.134266>,  <31.302958, 38.409546, 19.316275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.166132, 38.333710, 19.134266>,  <30.938087, 38.207317, 18.830917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166132, 38.333710, 19.134266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060687, 0.936755, -0.344685,
		-0.819324, 0.150485, 0.553230,
		0.570110, 0.315982, 0.758373,
		31.337166, 38.428505, 19.361778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596603, 38.627884, 19.347622>,  <30.938087, 38.207317, 18.830917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596603, 38.627884, 19.347622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.984753, 38.723366, 19.332695>,  <31.217642, 38.780655, 19.323738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.984753, 38.723366, 19.332695>,  <30.596603, 38.627884, 19.347622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984753, 38.723366, 19.332695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231315, 0.873285, -0.428796,
		-0.069769, 0.424724, 0.902631,
		0.970374, 0.238709, -0.037317,
		31.275866, 38.794979, 19.321501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658779, 39.235882, 19.618679>,  <30.596603, 38.627884, 19.347622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658779, 39.235882, 19.618679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.906673, 39.154091, 19.315596>,  <31.055408, 39.105015, 19.133745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.906673, 39.154091, 19.315596>,  <30.658779, 39.235882, 19.618679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906673, 39.154091, 19.315596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381053, 0.765626, -0.518281,
		0.686097, 0.609922, 0.396567,
		0.619733, -0.204478, -0.757707,
		31.092594, 39.092747, 19.088284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923500, 38.922962, 19.802462>,  <30.658779, 39.235882, 19.618679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923500, 38.922962, 19.802462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.645033, 39.122131, 20.009314>,  <29.477953, 39.241634, 20.133425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.645033, 39.122131, 20.009314>,  <29.923500, 38.922962, 19.802462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645033, 39.122131, 20.009314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456005, -0.249637, 0.854248,
		0.554446, 0.830513, -0.053267,
		-0.696167, 0.497924, 0.517129,
		29.436182, 39.271507, 20.164452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338406, 39.216503, 20.420721>,  <29.923500, 38.922962, 19.802462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338406, 39.216503, 20.420721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.949116, 39.180691, 20.505404>,  <29.715542, 39.159203, 20.556213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.949116, 39.180691, 20.505404>,  <30.338406, 39.216503, 20.420721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949116, 39.180691, 20.505404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229131, -0.304714, 0.924472,
		-0.018261, 0.948227, 0.317069,
		-0.973224, -0.089532, 0.211704,
		29.657148, 39.153831, 20.568914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272684, 39.413910, 21.066847>,  <30.338406, 39.216503, 20.420721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272684, 39.413910, 21.066847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.960722, 39.172493, 21.000540>,  <29.773544, 39.027641, 20.960756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.960722, 39.172493, 21.000540>,  <30.272684, 39.413910, 21.066847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960722, 39.172493, 21.000540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232240, -0.524994, 0.818807,
		-0.581215, 0.600095, 0.549614,
		-0.779906, -0.603546, -0.165768,
		29.726749, 38.991428, 20.950809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896105, 39.231808, 21.710508>,  <30.272684, 39.413910, 21.066847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896105, 39.231808, 21.710508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.747524, 38.955612, 21.462234>,  <29.658375, 38.789894, 21.313271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.747524, 38.955612, 21.462234>,  <29.896105, 39.231808, 21.710508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747524, 38.955612, 21.462234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121672, -0.698952, 0.704743,
		-0.920444, 0.186259, 0.343641,
		-0.371454, -0.690488, -0.620684,
		29.636087, 38.748466, 21.276030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403763, 38.868412, 22.038357>,  <29.896105, 39.231808, 21.710508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403763, 38.868412, 22.038357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.534531, 38.611389, 21.761158>,  <29.612991, 38.457176, 21.594839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.534531, 38.611389, 21.761158>,  <29.403763, 38.868412, 22.038357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534531, 38.611389, 21.761158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046771, -0.743394, 0.667217,
		-0.943894, -0.185714, -0.273084,
		0.326920, -0.642554, -0.692999,
		29.632607, 38.418621, 21.553259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919950, 38.343819, 22.033260>,  <29.403763, 38.868412, 22.038357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919950, 38.343819, 22.033260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.254066, 38.199409, 21.867390>,  <29.454536, 38.112766, 21.767868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.254066, 38.199409, 21.867390>,  <28.919950, 38.343819, 22.033260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254066, 38.199409, 21.867390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016868, -0.737035, 0.675645,
		-0.549552, -0.571354, -0.609548,
		0.835290, -0.361019, -0.414676,
		29.504654, 38.091103, 21.742987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937611, 37.597336, 22.097841>,  <28.919950, 38.343819, 22.033260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937611, 37.597336, 22.097841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.323637, 37.662659, 22.015890>,  <29.555254, 37.701851, 21.966721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.323637, 37.662659, 22.015890>,  <28.937611, 37.597336, 22.097841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323637, 37.662659, 22.015890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245221, -0.838354, 0.486856,
		-0.092252, -0.520089, -0.849115,
		0.965068, 0.163308, -0.204877,
		29.613157, 37.711651, 21.954428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202875, 36.900299, 21.939020>,  <28.937611, 37.597336, 22.097841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202875, 36.900299, 21.939020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.515648, 37.127804, 22.041073>,  <29.703312, 37.264305, 22.102304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.515648, 37.127804, 22.041073>,  <29.202875, 36.900299, 21.939020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515648, 37.127804, 22.041073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382259, -0.760792, 0.524474,
		0.492403, -0.312577, -0.812303,
		0.781932, 0.568763, 0.255131,
		29.750227, 37.298431, 22.117613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777618, 36.548283, 21.641888>,  <29.202875, 36.900299, 21.939020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777618, 36.548283, 21.641888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.925533, 36.753208, 21.951931>,  <30.014282, 36.876163, 22.137957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.925533, 36.753208, 21.951931>,  <29.777618, 36.548283, 21.641888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925533, 36.753208, 21.951931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135724, -0.855079, 0.500418,
		0.919151, -0.079847, -0.385728,
		0.369785, 0.512312, 0.775110,
		30.036469, 36.906902, 22.184464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337933, 36.151638, 21.851206>,  <29.777618, 36.548283, 21.641888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337933, 36.151638, 21.851206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.248644, 36.393246, 22.157234>,  <30.195070, 36.538212, 22.340851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.248644, 36.393246, 22.157234>,  <30.337933, 36.151638, 21.851206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248644, 36.393246, 22.157234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227061, -0.731065, 0.643418,
		0.947954, 0.317342, 0.026039,
		-0.223219, 0.604018, 0.765072,
		30.181679, 36.574451, 22.386755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937502, 36.201603, 22.211447>,  <30.337933, 36.151638, 21.851206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937502, 36.201603, 22.211447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.637854, 36.297943, 22.458286>,  <30.458065, 36.355747, 22.606390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.637854, 36.297943, 22.458286>,  <30.937502, 36.201603, 22.211447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637854, 36.297943, 22.458286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337340, -0.663019, 0.668287,
		0.570105, 0.708799, 0.415432,
		-0.749121, 0.240852, 0.617097,
		30.413116, 36.370197, 22.643415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286812, 36.290997, 22.892750>,  <30.937502, 36.201603, 22.211447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286812, 36.290997, 22.892750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.898148, 36.216324, 22.950752>,  <30.664949, 36.171520, 22.985554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.898148, 36.216324, 22.950752>,  <31.286812, 36.290997, 22.892750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898148, 36.216324, 22.950752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236226, -0.789171, 0.566928,
		0.008599, 0.585115, 0.810905,
		-0.971660, -0.186682, 0.145005,
		30.606649, 36.160320, 22.994253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177761, 36.373375, 23.576653>,  <31.286812, 36.290997, 22.892750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177761, 36.373375, 23.576653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.857445, 36.167091, 23.454809>,  <30.665255, 36.043324, 23.381702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.857445, 36.167091, 23.454809>,  <31.177761, 36.373375, 23.576653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857445, 36.167091, 23.454809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117935, -0.634381, 0.763971,
		-0.587221, 0.575856, 0.568825,
		-0.800789, -0.515704, -0.304608,
		30.617208, 36.012379, 23.363426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749018, 36.184151, 24.283899>,  <31.177761, 36.373375, 23.576653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749018, 36.184151, 24.283899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.639080, 35.928497, 23.996576>,  <30.573118, 35.775105, 23.824183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.639080, 35.928497, 23.996576>,  <30.749018, 36.184151, 24.283899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639080, 35.928497, 23.996576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011140, -0.749145, 0.662313,
		-0.961424, 0.174031, 0.213018,
		-0.274844, -0.639136, -0.718307,
		30.556627, 35.736755, 23.781084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081175, 35.797092, 24.483604>,  <30.749018, 36.184151, 24.283899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081175, 35.797092, 24.483604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.253561, 35.568722, 24.204088>,  <30.356993, 35.431698, 24.036379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.253561, 35.568722, 24.204088>,  <30.081175, 35.797092, 24.483604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253561, 35.568722, 24.204088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107091, -0.801284, 0.588621,
		-0.895992, -0.178840, -0.406466,
		0.430963, -0.570929, -0.698792,
		30.382851, 35.397442, 23.994450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725449, 35.049400, 24.569695>,  <30.081175, 35.797092, 24.483604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725449, 35.049400, 24.569695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.035400, 34.972458, 24.328844>,  <30.221373, 34.926292, 24.184334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.035400, 34.972458, 24.328844>,  <29.725449, 35.049400, 24.569695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035400, 34.972458, 24.328844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231891, -0.799654, 0.553877,
		-0.588035, -0.568817, -0.575032,
		0.774882, -0.192354, -0.602128,
		30.267864, 34.914753, 24.148205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765751, 34.358227, 24.479239>,  <29.725449, 35.049400, 24.569695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765751, 34.358227, 24.479239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.132490, 34.426605, 24.334925>,  <30.352533, 34.467632, 24.248337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.132490, 34.426605, 24.334925>,  <29.765751, 34.358227, 24.479239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132490, 34.426605, 24.334925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334473, -0.822311, 0.460362,
		-0.217981, -0.542755, -0.811111,
		0.916849, 0.170945, -0.360785,
		30.407545, 34.477890, 24.226688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892448, 33.706734, 24.209728>,  <29.765751, 34.358227, 24.479239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892448, 33.706734, 24.209728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.229853, 33.901436, 24.300556>,  <30.432295, 34.018257, 24.355053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.229853, 33.901436, 24.300556>,  <29.892448, 33.706734, 24.209728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229853, 33.901436, 24.300556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323192, -0.797634, 0.509242,
		0.428994, -0.356164, -0.830127,
		0.843511, 0.486752, 0.227071,
		30.482906, 34.047462, 24.368677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493916, 33.247883, 24.100899>,  <29.892448, 33.706734, 24.209728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493916, 33.247883, 24.100899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.604465, 33.511726, 24.380478>,  <30.670795, 33.670033, 24.548225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.604465, 33.511726, 24.380478>,  <30.493916, 33.247883, 24.100899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604465, 33.511726, 24.380478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191880, -0.750504, 0.632396,
		0.941701, -0.040663, -0.333986,
		0.276373, 0.659613, 0.698948,
		30.687378, 33.709610, 24.590162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081923, 32.926926, 24.385622>,  <30.493916, 33.247883, 24.100899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081923, 32.926926, 24.385622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957716, 33.168457, 24.679279>,  <30.883192, 33.313377, 24.855474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957716, 33.168457, 24.679279>,  <31.081923, 32.926926, 24.385622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957716, 33.168457, 24.679279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356362, -0.642046, 0.678810,
		0.881242, 0.472401, -0.015819,
		-0.310514, 0.603833, 0.734144,
		30.864561, 33.349606, 24.899523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.725582, 32.620079, 27.742249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.357994, 32.749508, 27.832399>,  <35.137440, 32.827168, 27.886490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.357994, 32.749508, 27.832399>,  <35.725582, 32.620079, 27.742249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357994, 32.749508, 27.832399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121532, -0.311311, 0.942505,
		0.375134, 0.893523, 0.246760,
		-0.918969, 0.323576, 0.225375,
		35.082302, 32.846581, 27.900011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760532, 33.189240, 28.101391>,  <35.725582, 32.620079, 27.742249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760532, 33.189240, 28.101391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.391930, 33.065178, 28.194887>,  <35.170769, 32.990742, 28.250986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.391930, 33.065178, 28.194887>,  <35.760532, 33.189240, 28.101391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391930, 33.065178, 28.194887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303188, -0.198386, 0.932051,
		-0.242706, 0.929757, 0.276848,
		-0.921504, -0.310152, 0.233742,
		35.115479, 32.972134, 28.265009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645329, 33.460812, 28.777063>,  <35.760532, 33.189240, 28.101391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645329, 33.460812, 28.777063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.359150, 33.184826, 28.733080>,  <35.187443, 33.019234, 28.706690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.359150, 33.184826, 28.733080>,  <35.645329, 33.460812, 28.777063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359150, 33.184826, 28.733080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130727, -0.286797, 0.949030,
		-0.686333, 0.664602, 0.295384,
		-0.715442, -0.689965, -0.109957,
		35.144516, 32.977837, 28.700092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257504, 33.493439, 29.464060>,  <35.645329, 33.460812, 28.777063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257504, 33.493439, 29.464060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.214401, 33.138592, 29.284540>,  <35.188541, 32.925686, 29.176828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.214401, 33.138592, 29.284540>,  <35.257504, 33.493439, 29.464060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214401, 33.138592, 29.284540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079342, -0.457660, 0.885580,
		-0.991006, 0.059818, 0.119701,
		-0.107756, -0.887113, -0.448798,
		35.182076, 32.872459, 29.149900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830017, 33.118183, 29.974020>,  <35.257504, 33.493439, 29.464060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830017, 33.118183, 29.974020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.956135, 32.824505, 29.733507>,  <35.031807, 32.648296, 29.589199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.956135, 32.824505, 29.733507>,  <34.830017, 33.118183, 29.974020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956135, 32.824505, 29.733507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171142, -0.579223, 0.797001,
		-0.933433, -0.354198, -0.056976,
		0.315298, -0.734196, -0.601284,
		35.050724, 32.604244, 29.553122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517612, 32.538460, 30.232000>,  <34.830017, 33.118183, 29.974020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517612, 32.538460, 30.232000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.838116, 32.422504, 30.022638>,  <35.030418, 32.352932, 29.897020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.838116, 32.422504, 30.022638>,  <34.517612, 32.538460, 30.232000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838116, 32.422504, 30.022638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228805, -0.659840, 0.715723,
		-0.552845, -0.693235, -0.462372,
		0.801256, -0.289891, -0.523405,
		35.078491, 32.335537, 29.865616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681393, 31.882700, 30.473530>,  <34.517612, 32.538460, 30.232000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681393, 31.882700, 30.473530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.014713, 31.981773, 30.275837>,  <35.214706, 32.041218, 30.157221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.014713, 31.981773, 30.275837>,  <34.681393, 31.882700, 30.473530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014713, 31.981773, 30.275837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526862, -0.626551, 0.574326,
		-0.167411, -0.738977, -0.652599,
		0.833301, 0.247681, -0.494231,
		35.264702, 32.056076, 30.127567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969788, 31.271626, 30.369410>,  <34.681393, 31.882700, 30.473530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969788, 31.271626, 30.369410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.265038, 31.541101, 30.354933>,  <35.442188, 31.702787, 30.346247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.265038, 31.541101, 30.354933>,  <34.969788, 31.271626, 30.369410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265038, 31.541101, 30.354933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548805, -0.568365, 0.613004,
		0.392405, -0.472337, -0.789250,
		0.738127, 0.673690, -0.036191,
		35.486477, 31.743208, 30.344076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579906, 30.928297, 30.175484>,  <34.969788, 31.271626, 30.369410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579906, 30.928297, 30.175484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.671097, 31.271276, 30.360008>,  <35.725811, 31.477064, 30.470724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.671097, 31.271276, 30.360008>,  <35.579906, 30.928297, 30.175484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671097, 31.271276, 30.360008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550919, -0.504247, 0.664999,
		0.802818, 0.102544, -0.587340,
		0.227973, 0.857449, 0.461313,
		35.739491, 31.528511, 30.498402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293716, 30.870705, 30.139572>,  <35.579906, 30.928297, 30.175484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293716, 30.870705, 30.139572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.191040, 31.124359, 30.431320>,  <36.129433, 31.276552, 30.606369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.191040, 31.124359, 30.431320>,  <36.293716, 30.870705, 30.139572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191040, 31.124359, 30.431320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566965, -0.512370, 0.645002,
		0.782727, 0.579094, -0.228011,
		-0.256691, 0.634135, 0.729371,
		36.114033, 31.314600, 30.650131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930626, 30.861618, 30.450970>,  <36.293716, 30.870705, 30.139572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930626, 30.861618, 30.450970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.652954, 31.008371, 30.698685>,  <36.486351, 31.096424, 30.847313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.652954, 31.008371, 30.698685>,  <36.930626, 30.861618, 30.450970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652954, 31.008371, 30.698685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393627, -0.526824, 0.753335,
		0.602641, 0.766715, 0.221294,
		-0.694177, 0.366884, 0.619286,
		36.444702, 31.118437, 30.884470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275471, 31.147907, 31.045443>,  <36.930626, 30.861618, 30.450970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275471, 31.147907, 31.045443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.904293, 31.086082, 31.181110>,  <36.681587, 31.048988, 31.262512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.904293, 31.086082, 31.181110>,  <37.275471, 31.147907, 31.045443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904293, 31.086082, 31.181110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366269, -0.546801, 0.752898,
		0.069090, 0.822872, 0.564010,
		-0.927940, -0.154562, 0.339171,
		36.625912, 31.039715, 31.282862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244125, 31.245594, 31.798443>,  <37.275471, 31.147907, 31.045443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244125, 31.245594, 31.798443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.977543, 31.002003, 31.626406>,  <36.817593, 30.855848, 31.523184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.977543, 31.002003, 31.626406>,  <37.244125, 31.245594, 31.798443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977543, 31.002003, 31.626406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151433, -0.675434, 0.721704,
		-0.730002, 0.415855, 0.542367,
		-0.666457, -0.608978, -0.430094,
		36.777607, 30.819309, 31.497377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621227, 31.121675, 32.364098>,  <37.244125, 31.245594, 31.798443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621227, 31.121675, 32.364098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.675354, 30.846607, 32.078777>,  <36.707829, 30.681566, 31.907585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.675354, 30.846607, 32.078777>,  <36.621227, 31.121675, 32.364098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675354, 30.846607, 32.078777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035379, -0.716108, 0.697092,
		-0.990170, -0.119565, -0.072573,
		0.135318, -0.687672, -0.713299,
		36.715950, 30.640305, 31.864788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816925, 31.575075, 32.909748>,  <36.621227, 31.121675, 32.364098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816925, 31.575075, 32.909748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.914124, 31.656174, 33.289188>,  <36.972443, 31.704834, 33.516853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.914124, 31.656174, 33.289188>,  <36.816925, 31.575075, 32.909748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914124, 31.656174, 33.289188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207619, 0.966122, -0.153308,
		-0.947548, -0.159694, 0.276859,
		0.242997, 0.202748, 0.948602,
		36.987022, 31.716999, 33.573769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243694, 32.002895, 33.212666>,  <36.816925, 31.575075, 32.909748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243694, 32.002895, 33.212666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.586861, 32.102005, 33.392704>,  <36.792763, 32.161472, 33.500725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.586861, 32.102005, 33.392704>,  <36.243694, 32.002895, 33.212666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586861, 32.102005, 33.392704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172660, 0.964121, -0.201644,
		-0.483906, 0.095281, 0.869917,
		0.857918, 0.247777, 0.450093,
		36.844234, 32.176338, 33.527733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125217, 32.636982, 33.739353>,  <36.243694, 32.002895, 33.212666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125217, 32.636982, 33.739353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.499287, 32.647575, 33.598072>,  <36.723728, 32.653931, 33.513302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.499287, 32.647575, 33.598072>,  <36.125217, 32.636982, 33.739353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499287, 32.647575, 33.598072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166385, 0.913173, -0.372063,
		0.312680, 0.406710, 0.858381,
		0.935172, 0.026485, -0.353202,
		36.779839, 32.655521, 33.492111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334114, 33.355831, 33.836166>,  <36.125217, 32.636982, 33.739353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334114, 33.355831, 33.836166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.603115, 33.206699, 33.580437>,  <36.764515, 33.117222, 33.426998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.603115, 33.206699, 33.580437>,  <36.334114, 33.355831, 33.836166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603115, 33.206699, 33.580437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085739, 0.897276, -0.433064,
		0.735111, 0.236421, 0.635387,
		0.672503, -0.372828, -0.639327,
		36.804867, 33.094852, 33.388638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843227, 33.921558, 33.685230>,  <36.334114, 33.355831, 33.836166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843227, 33.921558, 33.685230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.879501, 33.671551, 33.375103>,  <36.901268, 33.521545, 33.189026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.879501, 33.671551, 33.375103>,  <36.843227, 33.921558, 33.685230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879501, 33.671551, 33.375103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184603, 0.775588, -0.603643,
		0.978620, -0.088383, 0.185718,
		0.090689, -0.625022, -0.775321,
		36.906708, 33.484043, 33.142506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422550, 34.143230, 33.358700>,  <36.843227, 33.921558, 33.685230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422550, 34.143230, 33.358700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.226257, 33.940800, 33.074989>,  <37.108482, 33.819340, 32.904762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.226257, 33.940800, 33.074989>,  <37.422550, 34.143230, 33.358700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226257, 33.940800, 33.074989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230929, 0.709378, -0.665924,
		0.840152, -0.490581, -0.231246,
		-0.490730, -0.506076, -0.709275,
		37.079037, 33.788979, 32.862206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838459, 34.159111, 32.655102>,  <37.422550, 34.143230, 33.358700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838459, 34.159111, 32.655102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.459488, 34.080784, 32.553883>,  <37.232105, 34.033787, 32.493153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.459488, 34.080784, 32.553883>,  <37.838459, 34.159111, 32.655102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459488, 34.080784, 32.553883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108027, 0.548658, -0.829038,
		0.301173, -0.812792, -0.498663,
		-0.947430, -0.195815, -0.253045,
		37.175259, 34.022038, 32.477970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735664, 34.521088, 32.074085>,  <37.838459, 34.159111, 32.655102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735664, 34.521088, 32.074085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.352966, 34.405602, 32.088409>,  <37.123348, 34.336311, 32.097004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.352966, 34.405602, 32.088409>,  <37.735664, 34.521088, 32.074085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352966, 34.405602, 32.088409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215308, 0.619906, -0.754559,
		0.195652, -0.729631, -0.655254,
		-0.956746, -0.288712, 0.035809,
		37.065941, 34.318989, 32.099152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605427, 34.441914, 31.370201>,  <37.735664, 34.521088, 32.074085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605427, 34.441914, 31.370201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.259457, 34.513313, 31.557838>,  <37.051876, 34.556152, 31.670420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.259457, 34.513313, 31.557838>,  <37.605427, 34.441914, 31.370201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259457, 34.513313, 31.557838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295138, 0.575076, -0.763008,
		-0.405957, -0.798390, -0.444715,
		-0.864923, 0.178496, 0.469091,
		36.999981, 34.566860, 31.698566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949841, 34.331810, 30.888348>,  <37.605427, 34.441914, 31.370201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949841, 34.331810, 30.888348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.826107, 34.574871, 31.180943>,  <36.751865, 34.720707, 31.356499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.826107, 34.574871, 31.180943>,  <36.949841, 34.331810, 30.888348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826107, 34.574871, 31.180943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352541, 0.641123, -0.681672,
		-0.883190, -0.468745, 0.015899,
		-0.309337, 0.607651, 0.731485,
		36.733307, 34.757168, 31.400389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372246, 34.414867, 30.692516>,  <36.949841, 34.331810, 30.888348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372246, 34.414867, 30.692516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.405178, 34.719238, 30.949955>,  <36.424938, 34.901859, 31.104418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.405178, 34.719238, 30.949955>,  <36.372246, 34.414867, 30.692516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405178, 34.719238, 30.949955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522113, 0.583005, -0.622497,
		-0.848893, -0.284780, 0.445287,
		0.082330, 0.760924, 0.643597,
		36.429878, 34.947514, 31.143034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681343, 34.670849, 30.877716>,  <36.372246, 34.414867, 30.692516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681343, 34.670849, 30.877716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.974674, 34.941635, 30.902849>,  <36.150673, 35.104107, 30.917929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.974674, 34.941635, 30.902849>,  <35.681343, 34.670849, 30.877716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974674, 34.941635, 30.902849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525484, 0.623010, -0.579418,
		-0.431394, 0.391883, 0.812605,
		0.733325, 0.676969, 0.062835,
		36.194672, 35.144726, 30.921700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302010, 35.205929, 31.027884>,  <35.681343, 34.670849, 30.877716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302010, 35.205929, 31.027884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.660183, 35.351196, 30.924875>,  <35.875088, 35.438354, 30.863070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.660183, 35.351196, 30.924875>,  <35.302010, 35.205929, 31.027884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660183, 35.351196, 30.924875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445197, 0.733375, -0.513772,
		0.002276, 0.574694, 0.818365,
		0.895430, 0.363164, -0.257521,
		35.928810, 35.460144, 30.847618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204315, 35.981819, 31.082092>,  <35.302010, 35.205929, 31.027884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204315, 35.981819, 31.082092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.518490, 35.926552, 30.840765>,  <35.706997, 35.893391, 30.695969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.518490, 35.926552, 30.840765>,  <35.204315, 35.981819, 31.082092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518490, 35.926552, 30.840765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389061, 0.647892, -0.654880,
		0.481369, 0.749097, 0.455124,
		0.785439, -0.138168, -0.603320,
		35.754120, 35.885101, 30.659769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031452, 36.610786, 31.378811>,  <35.204315, 35.981819, 31.082092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031452, 36.610786, 31.378811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.719692, 36.716358, 31.606098>,  <34.532635, 36.779701, 31.742472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.719692, 36.716358, 31.606098>,  <35.031452, 36.610786, 31.378811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719692, 36.716358, 31.606098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291597, -0.649911, 0.701845,
		0.554529, 0.712711, 0.429582,
		-0.779403, 0.263928, 0.568219,
		34.485870, 36.795536, 31.776564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235485, 36.437653, 32.059486>,  <35.031452, 36.610786, 31.378811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235485, 36.437653, 32.059486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.844513, 36.499523, 32.117043>,  <34.609928, 36.536648, 32.151577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.844513, 36.499523, 32.117043>,  <35.235485, 36.437653, 32.059486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844513, 36.499523, 32.117043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036527, -0.547098, 0.836271,
		0.208074, 0.822653, 0.529101,
		-0.977431, 0.154680, 0.143886,
		34.551285, 36.545929, 32.160210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159782, 36.732964, 32.798561>,  <35.235485, 36.437653, 32.059486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159782, 36.732964, 32.798561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.833412, 36.538483, 32.673424>,  <34.637589, 36.421795, 32.598339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.833412, 36.538483, 32.673424>,  <35.159782, 36.732964, 32.798561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833412, 36.538483, 32.673424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056923, -0.606039, 0.793396,
		-0.575346, 0.629545, 0.522160,
		-0.815927, -0.486199, -0.312846,
		34.588634, 36.392624, 32.579571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918903, 36.598186, 33.383682>,  <35.159782, 36.732964, 32.798561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918903, 36.598186, 33.383682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.716850, 36.355824, 33.137848>,  <34.595619, 36.210407, 32.990349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.716850, 36.355824, 33.137848>,  <34.918903, 36.598186, 33.383682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716850, 36.355824, 33.137848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276071, -0.561257, 0.780240,
		-0.817693, 0.563796, 0.116237,
		-0.505136, -0.605908, -0.614584,
		34.565311, 36.174049, 32.953472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120079, 36.586819, 33.581455>,  <34.918903, 36.598186, 33.383682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120079, 36.586819, 33.581455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.212936, 36.258205, 33.373154>,  <34.268650, 36.061035, 33.248173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.212936, 36.258205, 33.373154>,  <34.120079, 36.586819, 33.581455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212936, 36.258205, 33.373154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344531, -0.570122, 0.745828,
		-0.909620, 0.006279, -0.415394,
		0.232142, -0.821536, -0.520758,
		34.282578, 36.011745, 33.216927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544815, 36.085075, 33.661545>,  <34.120079, 36.586819, 33.581455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544815, 36.085075, 33.661545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.874100, 35.878185, 33.567913>,  <34.071671, 35.754051, 33.511734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.874100, 35.878185, 33.567913>,  <33.544815, 36.085075, 33.661545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874100, 35.878185, 33.567913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261984, -0.711871, 0.651617,
		-0.503672, -0.475093, -0.721527,
		0.823213, -0.517229, -0.234082,
		34.121063, 35.723015, 33.497688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336208, 35.402264, 33.611126>,  <33.544815, 36.085075, 33.661545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336208, 35.402264, 33.611126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.729225, 35.346214, 33.660072>,  <33.965034, 35.312584, 33.689442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.729225, 35.346214, 33.660072>,  <33.336208, 35.402264, 33.611126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729225, 35.346214, 33.660072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181692, -0.864094, 0.469393,
		0.039961, -0.483432, -0.874469,
		0.982543, -0.140127, 0.122366,
		34.023987, 35.304176, 33.696781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492153, 34.793102, 33.376717>,  <33.336208, 35.402264, 33.611126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492153, 34.793102, 33.376717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.799568, 34.871346, 33.620380>,  <33.984016, 34.918293, 33.766579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.799568, 34.871346, 33.620380>,  <33.492153, 34.793102, 33.376717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799568, 34.871346, 33.620380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193024, -0.836864, 0.512250,
		0.609988, -0.511268, -0.605408,
		0.768542, 0.195608, 0.609164,
		34.030132, 34.930027, 33.803131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767868, 34.179031, 33.607071>,  <33.492153, 34.793102, 33.376717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767868, 34.179031, 33.607071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.917610, 34.431683, 33.878632>,  <34.007458, 34.583275, 34.041569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.917610, 34.431683, 33.878632>,  <33.767868, 34.179031, 33.607071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917610, 34.431683, 33.878632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127724, -0.690033, 0.712419,
		0.918446, -0.353411, -0.177646,
		0.374358, 0.631628, 0.678897,
		34.029919, 34.621170, 34.082302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290710, 33.740768, 33.940456>,  <33.767868, 34.179031, 33.607071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290710, 33.740768, 33.940456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.176731, 34.046036, 34.172447>,  <34.108345, 34.229198, 34.311642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.176731, 34.046036, 34.172447>,  <34.290710, 33.740768, 33.940456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176731, 34.046036, 34.172447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220597, -0.641031, 0.735130,
		0.932814, 0.081532, 0.351013,
		-0.284947, 0.763172, 0.579977,
		34.091248, 34.274986, 34.346439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568573, 33.564758, 34.569912>,  <34.290710, 33.740768, 33.940456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568573, 33.564758, 34.569912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.272411, 33.821579, 34.649487>,  <34.094715, 33.975670, 34.697231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.272411, 33.821579, 34.649487>,  <34.568573, 33.564758, 34.569912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272411, 33.821579, 34.649487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326434, -0.602185, 0.728570,
		0.587572, 0.474498, 0.655446,
		-0.740405, 0.642048, 0.198935,
		34.050289, 34.014194, 34.709167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497116, 33.582970, 35.310188>,  <34.568573, 33.564758, 34.569912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497116, 33.582970, 35.310188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.148071, 33.749367, 35.207825>,  <33.938644, 33.849205, 35.146404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.148071, 33.749367, 35.207825>,  <34.497116, 33.582970, 35.310188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148071, 33.749367, 35.207825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473119, -0.589904, 0.654348,
		0.121240, 0.692072, 0.711574,
		-0.872616, 0.415992, -0.255912,
		33.886288, 33.874165, 35.131050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.312778, 39.265659, 29.345339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921291, 39.241756, 29.423870>,  <33.686401, 39.227417, 29.470989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921291, 39.241756, 29.423870>,  <34.312778, 39.265659, 29.345339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921291, 39.241756, 29.423870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201006, -0.471981, 0.858388,
		0.041372, 0.879582, 0.473946,
		-0.978716, -0.059753, 0.196328,
		33.627678, 39.223831, 29.482769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290916, 39.469440, 30.070189>,  <34.312778, 39.265659, 29.345339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290916, 39.469440, 30.070189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929054, 39.312584, 30.003464>,  <33.711937, 39.218468, 29.963428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929054, 39.312584, 30.003464>,  <34.290916, 39.469440, 30.070189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929054, 39.312584, 30.003464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023161, -0.345616, 0.938090,
		-0.425518, 0.852510, 0.303580,
		-0.904653, -0.392144, -0.166810,
		33.657658, 39.194942, 29.953421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847862, 39.619965, 30.697302>,  <34.290916, 39.469440, 30.070189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847862, 39.619965, 30.697302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675179, 39.299385, 30.531740>,  <33.571568, 39.107037, 30.432404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675179, 39.299385, 30.531740>,  <33.847862, 39.619965, 30.697302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675179, 39.299385, 30.531740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056825, -0.482118, 0.874261,
		-0.900223, 0.353904, 0.253675,
		-0.431706, -0.801445, -0.413903,
		33.545666, 39.058952, 30.407570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394958, 39.313915, 31.316917>,  <33.847862, 39.619965, 30.697302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394958, 39.313915, 31.316917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451828, 39.057003, 31.015650>,  <33.485950, 38.902855, 30.834890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451828, 39.057003, 31.015650>,  <33.394958, 39.313915, 31.316917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451828, 39.057003, 31.015650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093456, -0.748788, 0.656188,
		-0.985420, -0.163680, -0.046431,
		0.142172, -0.642281, -0.753168,
		33.494480, 38.864319, 30.789700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015785, 38.707298, 31.452831>,  <33.394958, 39.313915, 31.316917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015785, 38.707298, 31.452831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300728, 38.574100, 31.205717>,  <33.471695, 38.494183, 31.057449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300728, 38.574100, 31.205717>,  <33.015785, 38.707298, 31.452831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300728, 38.574100, 31.205717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167021, -0.774538, 0.610078,
		-0.681650, -0.537778, -0.496133,
		0.712361, -0.332994, -0.617784,
		33.514435, 38.474201, 31.020382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855366, 37.919548, 31.396961>,  <33.015785, 38.707298, 31.452831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855366, 37.919548, 31.396961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215576, 37.955162, 31.226725>,  <33.431702, 37.976528, 31.124582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215576, 37.955162, 31.226725>,  <32.855366, 37.919548, 31.396961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215576, 37.955162, 31.226725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312895, -0.812346, 0.492128,
		-0.301911, -0.576339, -0.759397,
		0.900526, 0.089033, -0.425590,
		33.485733, 37.981873, 31.099049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078274, 37.231228, 31.114542>,  <32.855366, 37.919548, 31.396961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078274, 37.231228, 31.114542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402149, 37.455280, 31.184587>,  <33.596474, 37.589710, 31.226616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402149, 37.455280, 31.184587>,  <33.078274, 37.231228, 31.114542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402149, 37.455280, 31.184587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375456, -0.723743, 0.578990,
		0.451048, -0.403051, -0.796308,
		0.809684, 0.560131, 0.175116,
		33.645054, 37.623318, 31.237122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678963, 36.784130, 30.880127>,  <33.078274, 37.231228, 31.114542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678963, 36.784130, 30.880127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839241, 37.049564, 31.132822>,  <33.935410, 37.208824, 31.284439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839241, 37.049564, 31.132822>,  <33.678963, 36.784130, 30.880127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839241, 37.049564, 31.132822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415346, -0.746157, 0.520324,
		0.816656, 0.053897, -0.574602,
		0.400699, 0.663585, 0.631739,
		33.959450, 37.248638, 31.322344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472652, 36.691666, 30.948576>,  <33.678963, 36.784130, 30.880127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472652, 36.691666, 30.948576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324833, 36.888966, 31.263571>,  <34.236141, 37.007347, 31.452568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324833, 36.888966, 31.263571>,  <34.472652, 36.691666, 30.948576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324833, 36.888966, 31.263571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506992, -0.603184, 0.615734,
		0.778711, 0.626795, -0.027167,
		-0.369552, 0.493252, 0.787485,
		34.213966, 37.036942, 31.499817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176270, 36.578556, 30.683165>,  <34.472652, 36.691666, 30.948576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176270, 36.578556, 30.683165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440216, 36.341328, 30.498625>,  <35.598583, 36.198990, 30.387901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440216, 36.341328, 30.498625>,  <35.176270, 36.578556, 30.683165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440216, 36.341328, 30.498625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212215, 0.441898, -0.871602,
		0.720794, 0.673044, 0.165733,
		0.659864, -0.593075, -0.461348,
		35.638176, 36.163406, 30.360220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749035, 36.955467, 30.346802>,  <35.176270, 36.578556, 30.683165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749035, 36.955467, 30.346802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745388, 36.608192, 30.148338>,  <35.743198, 36.399830, 30.029261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745388, 36.608192, 30.148338>,  <35.749035, 36.955467, 30.346802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745388, 36.608192, 30.148338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141950, 0.492279, -0.858785,
		0.989832, 0.062599, -0.127728,
		-0.009118, -0.868184, -0.496159,
		35.742653, 36.347736, 29.999491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237362, 36.949589, 29.876030>,  <35.749035, 36.955467, 30.346802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237362, 36.949589, 29.876030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996983, 36.676762, 29.709347>,  <35.852757, 36.513065, 29.609337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996983, 36.676762, 29.709347>,  <36.237362, 36.949589, 29.876030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996983, 36.676762, 29.709347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018810, 0.533273, -0.845734,
		0.799070, -0.500401, -0.333297,
		-0.600944, -0.682070, -0.416710,
		35.816700, 36.472141, 29.584333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476009, 36.868259, 29.212141>,  <36.237362, 36.949589, 29.876030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476009, 36.868259, 29.212141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108646, 36.710590, 29.198545>,  <35.888229, 36.615990, 29.190388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108646, 36.710590, 29.198545>,  <36.476009, 36.868259, 29.212141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108646, 36.710590, 29.198545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135739, 0.394631, -0.908758,
		0.371616, -0.829998, -0.415937,
		-0.918409, -0.394168, -0.033988,
		35.833122, 36.592339, 29.188349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417648, 36.673000, 28.553417>,  <36.476009, 36.868259, 29.212141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417648, 36.673000, 28.553417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039917, 36.676975, 28.684958>,  <35.813278, 36.679359, 28.763882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039917, 36.676975, 28.684958>,  <36.417648, 36.673000, 28.553417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039917, 36.676975, 28.684958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307274, 0.330578, -0.892357,
		-0.117575, -0.943726, -0.309123,
		-0.944330, 0.009933, 0.328850,
		35.756618, 36.679955, 28.783613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039604, 36.380249, 28.060202>,  <36.417648, 36.673000, 28.553417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039604, 36.380249, 28.060202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757217, 36.588726, 28.252018>,  <35.587784, 36.713814, 28.367107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757217, 36.588726, 28.252018>,  <36.039604, 36.380249, 28.060202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757217, 36.588726, 28.252018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365939, 0.311271, -0.877040,
		-0.606377, -0.794647, -0.029022,
		-0.705971, 0.521197, 0.479540,
		35.545425, 36.745087, 28.395880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455097, 36.216904, 27.700945>,  <36.039604, 36.380249, 28.060202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455097, 36.216904, 27.700945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448685, 36.573231, 27.882576>,  <35.444836, 36.787025, 27.991554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448685, 36.573231, 27.882576>,  <35.455097, 36.216904, 27.700945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448685, 36.573231, 27.882576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254888, 0.435489, -0.863355,
		-0.966838, -0.129580, 0.220077,
		-0.016032, 0.890819, 0.454076,
		35.443874, 36.840477, 28.018799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766888, 36.536034, 27.499481>,  <35.455097, 36.216904, 27.700945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766888, 36.536034, 27.499481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997269, 36.839870, 27.620337>,  <35.135498, 37.022175, 27.692850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997269, 36.839870, 27.620337>,  <34.766888, 36.536034, 27.499481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997269, 36.839870, 27.620337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271273, 0.526247, -0.805900,
		-0.771158, 0.382201, 0.509153,
		0.575956, 0.759596, 0.302139,
		35.170055, 37.067749, 27.710978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274071, 37.146404, 27.677216>,  <34.766888, 36.536034, 27.499481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274071, 37.146404, 27.677216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641327, 37.276268, 27.586342>,  <34.861683, 37.354187, 27.531818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641327, 37.276268, 27.586342>,  <34.274071, 37.146404, 27.677216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641327, 37.276268, 27.586342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368710, 0.489960, -0.789932,
		-0.145144, 0.809035, 0.569557,
		0.918143, 0.324655, -0.227184,
		34.916771, 37.373665, 27.518187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216782, 37.490887, 27.158255>,  <34.274071, 37.146404, 27.677216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216782, 37.490887, 27.158255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613197, 37.540039, 27.137281>,  <34.851048, 37.569530, 27.124697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613197, 37.540039, 27.137281>,  <34.216782, 37.490887, 27.158255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613197, 37.540039, 27.137281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096097, 0.382971, -0.918748,
		-0.092819, 0.915550, 0.391347,
		0.991035, 0.122884, -0.052434,
		34.910507, 37.576904, 27.121552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313889, 38.153545, 26.903833>,  <34.216782, 37.490887, 27.158255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313889, 38.153545, 26.903833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645802, 37.945518, 26.822838>,  <34.844948, 37.820702, 26.774240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645802, 37.945518, 26.822838>,  <34.313889, 38.153545, 26.903833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645802, 37.945518, 26.822838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028530, 0.401878, -0.915248,
		0.557363, 0.753676, 0.348307,
		0.829778, -0.520063, -0.202490,
		34.894733, 37.789501, 26.762091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805153, 38.601746, 26.558067>,  <34.313889, 38.153545, 26.903833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805153, 38.601746, 26.558067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941048, 38.238808, 26.459032>,  <35.022583, 38.021046, 26.399611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941048, 38.238808, 26.459032>,  <34.805153, 38.601746, 26.558067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941048, 38.238808, 26.459032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181864, 0.194903, -0.963815,
		0.922770, 0.372470, -0.098798,
		0.339736, -0.907347, -0.247589,
		35.042969, 37.966602, 26.384756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371334, 38.690456, 26.119211>,  <34.805153, 38.601746, 26.558067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371334, 38.690456, 26.119211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238365, 38.319130, 26.052620>,  <35.158585, 38.096333, 26.012665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238365, 38.319130, 26.052620>,  <35.371334, 38.690456, 26.119211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238365, 38.319130, 26.052620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013528, 0.171808, -0.985038,
		0.943032, -0.329705, -0.044555,
		-0.332426, -0.928319, -0.166480,
		35.138638, 38.040634, 26.002676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733440, 38.369347, 25.540857>,  <35.371334, 38.690456, 26.119211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733440, 38.369347, 25.540857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390270, 38.164398, 25.556053>,  <35.184368, 38.041428, 25.565170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390270, 38.164398, 25.556053>,  <35.733440, 38.369347, 25.540857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390270, 38.164398, 25.556053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097940, 0.090513, -0.991068,
		0.504359, -0.853979, -0.127835,
		-0.857922, -0.512374, 0.037987,
		35.132893, 38.010685, 25.567450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.885132, 35.994019, 25.943193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.221478, 36.169495, 26.070002>,  <29.423285, 36.274780, 26.146088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.221478, 36.169495, 26.070002>,  <28.885132, 35.994019, 25.943193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221478, 36.169495, 26.070002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255767, -0.838256, 0.481570,
		0.477006, -0.323850, -0.817060,
		0.840862, 0.438689, 0.317023,
		29.473736, 36.301102, 26.165108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422918, 35.465588, 25.771101>,  <28.885132, 35.994019, 25.943193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422918, 35.465588, 25.771101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.559574, 35.720291, 26.047600>,  <29.641567, 35.873112, 26.213499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.559574, 35.720291, 26.047600>,  <29.422918, 35.465588, 25.771101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559574, 35.720291, 26.047600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350173, -0.768784, 0.535117,
		0.872160, 0.059240, -0.485621,
		0.341637, 0.636759, 0.691246,
		29.662066, 35.911320, 26.254974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055882, 35.179916, 26.010406>,  <29.422918, 35.465588, 25.771101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055882, 35.179916, 26.010406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.972281, 35.432827, 26.308813>,  <29.922119, 35.584576, 26.487858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.972281, 35.432827, 26.308813>,  <30.055882, 35.179916, 26.010406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972281, 35.432827, 26.308813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272276, -0.695074, 0.665385,
		0.939247, 0.342189, -0.026883,
		-0.209002, 0.632280, 0.746016,
		29.909580, 35.622513, 26.532618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639248, 35.155357, 26.529034>,  <30.055882, 35.179916, 26.010406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639248, 35.155357, 26.529034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.347069, 35.331146, 26.738152>,  <30.171761, 35.436619, 26.863623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.347069, 35.331146, 26.738152>,  <30.639248, 35.155357, 26.529034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347069, 35.331146, 26.738152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214711, -0.578898, 0.786624,
		0.648340, 0.686837, 0.328496,
		-0.730448, 0.439468, 0.522794,
		30.127934, 35.462986, 26.894989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919811, 35.407700, 27.176239>,  <30.639248, 35.155357, 26.529034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919811, 35.407700, 27.176239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.522753, 35.379974, 27.215929>,  <30.284517, 35.363338, 27.239742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.522753, 35.379974, 27.215929>,  <30.919811, 35.407700, 27.176239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522753, 35.379974, 27.215929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120205, -0.468629, 0.875179,
		-0.014160, 0.880672, 0.473515,
		-0.992648, -0.069311, 0.099225,
		30.224958, 35.359180, 27.245697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813784, 35.646996, 27.836342>,  <30.919811, 35.407700, 27.176239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813784, 35.646996, 27.836342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.491148, 35.415817, 27.786707>,  <30.297567, 35.277111, 27.756926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.491148, 35.415817, 27.786707>,  <30.813784, 35.646996, 27.836342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491148, 35.415817, 27.786707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229975, -0.500196, 0.834814,
		-0.544545, 0.644813, 0.536365,
		-0.806587, -0.577944, -0.124088,
		30.249172, 35.242435, 27.749481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515072, 35.488243, 28.530655>,  <30.813784, 35.646996, 27.836342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515072, 35.488243, 28.530655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.329229, 35.222942, 28.295969>,  <30.217724, 35.063763, 28.155157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.329229, 35.222942, 28.295969>,  <30.515072, 35.488243, 28.530655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329229, 35.222942, 28.295969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256311, -0.734931, 0.627838,
		-0.847611, 0.141317, 0.511453,
		-0.464607, -0.663254, -0.586715,
		30.189848, 35.023968, 28.119955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924770, 35.143738, 28.937246>,  <30.515072, 35.488243, 28.530655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924770, 35.143738, 28.937246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.991411, 34.904976, 28.623318>,  <30.031395, 34.761719, 28.434961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.991411, 34.904976, 28.623318>,  <29.924770, 35.143738, 28.937246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991411, 34.904976, 28.623318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205859, -0.757350, 0.619712,
		-0.964296, -0.264806, -0.003296,
		0.166600, -0.596907, -0.784822,
		30.041391, 34.725903, 28.387871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520758, 34.559647, 29.080982>,  <29.924770, 35.143738, 28.937246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520758, 34.559647, 29.080982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.788359, 34.417889, 28.819649>,  <29.948919, 34.332832, 28.662849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.788359, 34.417889, 28.819649>,  <29.520758, 34.559647, 29.080982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788359, 34.417889, 28.819649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134268, -0.806920, 0.575197,
		-0.731033, -0.472529, -0.492246,
		0.669000, -0.354395, -0.653332,
		29.989059, 34.311569, 28.623650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310228, 33.927948, 29.059765>,  <29.520758, 34.559647, 29.080982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310228, 33.927948, 29.059765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.665220, 33.881336, 28.881418>,  <29.878216, 33.853371, 28.774410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.665220, 33.881336, 28.881418>,  <29.310228, 33.927948, 29.059765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665220, 33.881336, 28.881418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167206, -0.820154, 0.547166,
		-0.429439, -0.560151, -0.708387,
		0.887482, -0.116528, -0.445867,
		29.931465, 33.846378, 28.747658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289474, 33.316765, 28.777719>,  <29.310228, 33.927948, 29.059765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289474, 33.316765, 28.777719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.682840, 33.389248, 28.780884>,  <29.918859, 33.432739, 28.782784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.682840, 33.389248, 28.780884>,  <29.289474, 33.316765, 28.777719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682840, 33.389248, 28.780884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164269, -0.908270, 0.384787,
		0.076914, -0.377104, -0.922972,
		0.983412, 0.181212, 0.007912,
		29.977863, 33.443611, 28.783257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660574, 32.817490, 28.477240>,  <29.289474, 33.316765, 28.777719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660574, 32.817490, 28.477240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.929314, 32.979233, 28.725471>,  <30.090557, 33.076279, 28.874411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.929314, 32.979233, 28.725471>,  <29.660574, 32.817490, 28.477240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929314, 32.979233, 28.725471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122100, -0.886838, 0.445656,
		0.730556, -0.223641, -0.645193,
		0.671848, 0.404354, 0.620578,
		30.130869, 33.100540, 28.911646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243450, 32.386005, 28.549633>,  <29.660574, 32.817490, 28.477240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243450, 32.386005, 28.549633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.237017, 32.601700, 28.886433>,  <30.233156, 32.731117, 29.088512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.237017, 32.601700, 28.886433>,  <30.243450, 32.386005, 28.549633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237017, 32.601700, 28.886433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074775, -0.839101, 0.538812,
		0.997071, 0.071628, -0.026824,
		-0.016086, 0.539239, 0.841999,
		30.232191, 32.763470, 29.139032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750671, 32.128414, 29.035416>,  <30.243450, 32.386005, 28.549633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750671, 32.128414, 29.035416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.481657, 32.288445, 29.284456>,  <30.320250, 32.384464, 29.433882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.481657, 32.288445, 29.284456>,  <30.750671, 32.128414, 29.035416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481657, 32.288445, 29.284456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129640, -0.764584, 0.631352,
		0.728622, 0.505321, 0.462343,
		-0.672535, 0.400079, 0.622602,
		30.279896, 32.408466, 29.471237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489807, 32.333271, 28.915522>,  <30.750671, 32.128414, 29.035416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489807, 32.333271, 28.915522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.700195, 32.073860, 28.695425>,  <31.826427, 31.918213, 28.563366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.700195, 32.073860, 28.695425>,  <31.489807, 32.333271, 28.915522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700195, 32.073860, 28.695425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174197, 0.551103, -0.816052,
		0.832473, 0.525069, 0.176893,
		0.525970, -0.648527, -0.550244,
		31.857986, 31.879303, 28.530352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848114, 32.789593, 28.397539>,  <31.489807, 32.333271, 28.915522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848114, 32.789593, 28.397539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.836416, 32.411022, 28.268906>,  <31.829397, 32.183880, 28.191725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.836416, 32.411022, 28.268906>,  <31.848114, 32.789593, 28.397539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836416, 32.411022, 28.268906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032705, 0.322456, -0.946019,
		0.999037, -0.017149, -0.040384,
		-0.029245, -0.946429, -0.321585,
		31.827642, 32.127094, 28.172430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359497, 32.536079, 27.807526>,  <31.848114, 32.789593, 28.397539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359497, 32.536079, 27.807526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.056568, 32.276703, 27.776558>,  <31.874811, 32.121078, 27.757977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.056568, 32.276703, 27.776558>,  <32.359497, 32.536079, 27.807526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056568, 32.276703, 27.776558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015809, 0.136724, -0.990483,
		0.652853, -0.748888, -0.113795,
		-0.757320, -0.648438, -0.077422,
		31.829372, 32.082172, 27.753332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482487, 32.064316, 27.203499>,  <32.359497, 32.536079, 27.807526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482487, 32.064316, 27.203499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.089844, 32.047867, 27.278076>,  <31.854259, 32.037998, 27.322823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.089844, 32.047867, 27.278076>,  <32.482487, 32.064316, 27.203499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089844, 32.047867, 27.278076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190829, 0.242191, -0.951277,
		-0.006039, -0.969357, -0.245582,
		-0.981605, -0.041119, 0.186445,
		31.795362, 32.035530, 27.334009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263702, 31.772797, 26.581350>,  <32.482487, 32.064316, 27.203499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263702, 31.772797, 26.581350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.955025, 31.964037, 26.749115>,  <31.769817, 32.078781, 26.849773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.955025, 31.964037, 26.749115>,  <32.263702, 31.772797, 26.581350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955025, 31.964037, 26.749115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283270, 0.332055, -0.899721,
		-0.569425, -0.813117, -0.120814,
		-0.771695, 0.478101, 0.419412,
		31.723516, 32.107468, 26.874939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755497, 31.687212, 26.103466>,  <32.263702, 31.772797, 26.581350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755497, 31.687212, 26.103466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.590052, 31.978802, 26.321648>,  <31.490786, 32.153755, 26.452557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.590052, 31.978802, 26.321648>,  <31.755497, 31.687212, 26.103466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590052, 31.978802, 26.321648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302039, 0.455312, -0.837534,
		-0.858894, -0.511162, 0.031857,
		-0.413611, 0.728975, 0.545455,
		31.465969, 32.197495, 26.485285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080051, 31.801342, 25.927755>,  <31.755497, 31.687212, 26.103466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080051, 31.801342, 25.927755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.150290, 32.145626, 26.118898>,  <31.192432, 32.352196, 26.233583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.150290, 32.145626, 26.118898>,  <31.080051, 31.801342, 25.927755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150290, 32.145626, 26.118898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295692, 0.509098, -0.808322,
		-0.939006, 0.000639, 0.343899,
		0.175595, 0.860708, 0.477858,
		31.202969, 32.403839, 26.262257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397865, 32.271919, 25.948383>,  <31.080051, 31.801342, 25.927755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397865, 32.271919, 25.948383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.726328, 32.496494, 25.989361>,  <30.923405, 32.631237, 26.013947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.726328, 32.496494, 25.989361>,  <30.397865, 32.271919, 25.948383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726328, 32.496494, 25.989361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335725, 0.620370, -0.708823,
		-0.461510, 0.547661, 0.697908,
		0.821156, 0.561434, 0.102443,
		30.972675, 32.664925, 26.020094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147633, 32.864605, 25.903599>,  <30.397865, 32.271919, 25.948383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147633, 32.864605, 25.903599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.536201, 32.933064, 25.837811>,  <30.769342, 32.974140, 25.798338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.536201, 32.933064, 25.837811>,  <30.147633, 32.864605, 25.903599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536201, 32.933064, 25.837811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235626, 0.779054, -0.580995,
		0.028694, 0.603143, 0.797116,
		0.971420, 0.171150, -0.164470,
		30.827627, 32.984409, 25.788469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247505, 33.632847, 26.013201>,  <30.147633, 32.864605, 25.903599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247505, 33.632847, 26.013201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.508471, 33.456745, 25.766453>,  <30.665051, 33.351082, 25.618404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.508471, 33.456745, 25.766453>,  <30.247505, 33.632847, 26.013201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508471, 33.456745, 25.766453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059782, 0.781528, -0.620999,
		0.755502, 0.442026, 0.483560,
		0.652414, -0.440258, -0.616871,
		30.704195, 33.324669, 25.581392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637579, 34.241257, 25.920128>,  <30.247505, 33.632847, 26.013201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637579, 34.241257, 25.920128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.715143, 33.993179, 25.616085>,  <30.761681, 33.844334, 25.433659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.715143, 33.993179, 25.616085>,  <30.637579, 34.241257, 25.920128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715143, 33.993179, 25.616085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157712, 0.745028, -0.648120,
		0.968259, 0.245555, 0.046657,
		0.193910, -0.620190, -0.760108,
		30.773315, 33.807121, 25.388052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024698, 34.661522, 25.409964>,  <30.637579, 34.241257, 25.920128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024698, 34.661522, 25.409964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.930433, 34.358276, 25.166744>,  <30.873875, 34.176327, 25.020813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.930433, 34.358276, 25.166744>,  <31.024698, 34.661522, 25.409964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930433, 34.358276, 25.166744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063063, 0.636279, -0.768877,
		0.969787, -0.142849, -0.197755,
		-0.235661, -0.758118, -0.608047,
		30.859735, 34.130840, 24.984329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597874, 34.630688, 24.808144>,  <31.024698, 34.661522, 25.409964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597874, 34.630688, 24.808144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.240730, 34.492107, 24.693058>,  <31.026443, 34.408958, 24.624006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.240730, 34.492107, 24.693058>,  <31.597874, 34.630688, 24.808144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240730, 34.492107, 24.693058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041333, 0.699229, -0.713702,
		0.448436, -0.625343, -0.638632,
		-0.892859, -0.346447, -0.287712,
		30.972872, 34.388172, 24.606745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623098, 34.820919, 24.068548>,  <31.597874, 34.630688, 24.808144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623098, 34.820919, 24.068548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.238268, 34.725864, 24.122126>,  <31.007370, 34.668831, 24.154272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.238268, 34.725864, 24.122126>,  <31.623098, 34.820919, 24.068548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238268, 34.725864, 24.122126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267200, 0.722108, -0.638094,
		0.054910, -0.649685, -0.758218,
		-0.962075, -0.237633, 0.133945,
		30.949646, 34.654575, 24.162310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181129, 34.516460, 23.505573>,  <31.623098, 34.820919, 24.068548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181129, 34.516460, 23.505573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.486542, 34.717899, 23.343878>,  <32.669788, 34.838764, 23.246861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.486542, 34.717899, 23.343878>,  <32.181129, 34.516460, 23.505573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486542, 34.717899, 23.343878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645706, -0.586540, 0.488911,
		0.009114, -0.634317, -0.773019,
		0.763531, 0.503600, -0.404237,
		32.715603, 34.868980, 23.222607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630295, 34.036594, 23.118645>,  <32.181129, 34.516460, 23.505573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630295, 34.036594, 23.118645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.824352, 34.363224, 23.243763>,  <32.940784, 34.559204, 23.318834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.824352, 34.363224, 23.243763>,  <32.630295, 34.036594, 23.118645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824352, 34.363224, 23.243763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651063, -0.576106, 0.494185,
		0.583743, -0.036099, -0.811135,
		0.485139, 0.816578, 0.312795,
		32.969894, 34.608196, 23.337601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361488, 33.930283, 22.987917>,  <32.630295, 34.036594, 23.118645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361488, 33.930283, 22.987917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.318520, 34.203274, 23.277103>,  <33.292736, 34.367069, 23.450615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.318520, 34.203274, 23.277103>,  <33.361488, 33.930283, 22.987917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318520, 34.203274, 23.277103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507071, -0.587876, 0.630302,
		0.855184, 0.434305, -0.282914,
		-0.107425, 0.682482, 0.722965,
		33.286293, 34.408020, 23.493994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043110, 34.005756, 23.230310>,  <33.361488, 33.930283, 22.987917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043110, 34.005756, 23.230310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.843975, 34.166981, 23.537477>,  <33.724495, 34.263714, 23.721779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.843975, 34.166981, 23.537477>,  <34.043110, 34.005756, 23.230310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843975, 34.166981, 23.537477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647602, -0.416183, 0.638281,
		0.576858, 0.815069, -0.053828,
		-0.497841, 0.403057, 0.767919,
		33.694622, 34.287899, 23.767853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560570, 34.152538, 23.723707>,  <34.043110, 34.005756, 23.230310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560570, 34.152538, 23.723707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.245255, 34.244583, 23.951971>,  <34.056065, 34.299809, 24.088930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.245255, 34.244583, 23.951971>,  <34.560570, 34.152538, 23.723707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245255, 34.244583, 23.951971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514113, -0.263252, 0.816325,
		0.338070, 0.936883, 0.089216,
		-0.788287, 0.230108, 0.570661,
		34.008770, 34.313614, 24.123169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784157, 34.558559, 24.347462>,  <34.560570, 34.152538, 23.723707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784157, 34.558559, 24.347462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.439823, 34.380707, 24.446470>,  <34.233223, 34.273994, 24.505875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.439823, 34.380707, 24.446470>,  <34.784157, 34.558559, 24.347462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439823, 34.380707, 24.446470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449606, -0.436693, 0.779201,
		-0.238367, 0.782050, 0.575829,
		-0.860834, -0.444632, 0.247521,
		34.181572, 34.247318, 24.520727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792919, 34.635452, 25.030893>,  <34.784157, 34.558559, 24.347462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792919, 34.635452, 25.030893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.559692, 34.317635, 24.963083>,  <34.419758, 34.126945, 24.922398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.559692, 34.317635, 24.963083>,  <34.792919, 34.635452, 25.030893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559692, 34.317635, 24.963083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456043, -0.492779, 0.741076,
		-0.672354, 0.354784, 0.649667,
		-0.583065, -0.794542, -0.169526,
		34.384773, 34.079273, 24.912226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355499, 34.597858, 25.637812>,  <34.792919, 34.635452, 25.030893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355499, 34.597858, 25.637812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.271641, 34.237747, 25.485214>,  <34.221325, 34.021679, 25.393656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.271641, 34.237747, 25.485214>,  <34.355499, 34.597858, 25.637812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271641, 34.237747, 25.485214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016768, -0.393419, 0.919206,
		-0.977633, 0.186314, 0.097576,
		-0.209649, -0.900282, -0.381495,
		34.208748, 33.967663, 25.370766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818241, 34.450684, 26.113853>,  <34.355499, 34.597858, 25.637812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818241, 34.450684, 26.113853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.995419, 34.145588, 25.925371>,  <34.101727, 33.962532, 25.812283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.995419, 34.145588, 25.925371>,  <33.818241, 34.450684, 26.113853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995419, 34.145588, 25.925371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109928, -0.475407, 0.872871,
		-0.889784, -0.438433, -0.126734,
		0.442946, -0.762735, -0.471206,
		34.128304, 33.916767, 25.784010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541637, 33.850571, 26.453758>,  <33.818241, 34.450684, 26.113853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541637, 33.850571, 26.453758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.874046, 33.714245, 26.277920>,  <34.073490, 33.632450, 26.172417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.874046, 33.714245, 26.277920>,  <33.541637, 33.850571, 26.453758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874046, 33.714245, 26.277920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218800, -0.526305, 0.821663,
		-0.511383, -0.779010, -0.362809,
		0.831031, -0.340802, -0.439591,
		34.123352, 33.612000, 26.146040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610062, 33.143723, 26.677086>,  <33.541637, 33.850571, 26.453758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610062, 33.143723, 26.677086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.981220, 33.250244, 26.572704>,  <34.203915, 33.314156, 26.510075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.981220, 33.250244, 26.572704>,  <33.610062, 33.143723, 26.677086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981220, 33.250244, 26.572704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355281, -0.419211, 0.835486,
		0.113097, -0.867954, -0.483596,
		0.927892, 0.266304, -0.260956,
		34.259586, 33.330135, 26.494417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074749, 32.523396, 26.718372>,  <33.610062, 33.143723, 26.677086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074749, 32.523396, 26.718372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.307205, 32.847740, 26.746035>,  <34.446678, 33.042347, 26.762632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.307205, 32.847740, 26.746035>,  <34.074749, 32.523396, 26.718372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307205, 32.847740, 26.746035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251263, -0.259608, 0.932454,
		0.774040, -0.524514, -0.354608,
		0.581144, 0.810857, 0.069156,
		34.481548, 33.090996, 26.766781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769241, 32.275505, 26.814215>,  <34.074749, 32.523396, 26.718372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769241, 32.275505, 26.814215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.734161, 32.648727, 26.953764>,  <34.713112, 32.872662, 27.037493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.734161, 32.648727, 26.953764>,  <34.769241, 32.275505, 26.814215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734161, 32.648727, 26.953764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402774, -0.287104, 0.869106,
		0.911088, 0.216738, -0.350632,
		-0.087700, 0.933057, 0.348873,
		34.707851, 32.928646, 27.058426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314644, 32.353031, 27.183140>,  <34.769241, 32.275505, 26.814215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314644, 32.353031, 27.183140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.109711, 32.656864, 27.343416>,  <34.986752, 32.839165, 27.439581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.109711, 32.656864, 27.343416>,  <35.314644, 32.353031, 27.183140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109711, 32.656864, 27.343416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331035, -0.255845, 0.908273,
		0.792422, 0.597979, -0.120370,
		-0.512332, 0.759581, 0.400689,
		34.956013, 32.884739, 27.463623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.691833, 37.065453, 24.601782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.376461, 37.232086, 24.782814>,  <35.187237, 37.332066, 24.891434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.376461, 37.232086, 24.782814>,  <35.691833, 37.065453, 24.601782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376461, 37.232086, 24.782814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488209, 0.023790, -0.872403,
		-0.374198, -0.908785, 0.184624,
		-0.788434, 0.416586, 0.452579,
		35.139931, 37.357063, 24.918589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120560, 36.820789, 24.172157>,  <35.691833, 37.065453, 24.601782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120560, 36.820789, 24.172157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947666, 37.115631, 24.379948>,  <34.843929, 37.292534, 24.504622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947666, 37.115631, 24.379948>,  <35.120560, 36.820789, 24.172157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947666, 37.115631, 24.379948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655794, 0.138470, -0.742133,
		-0.618959, -0.661443, 0.423535,
		-0.432232, 0.737102, 0.519478,
		34.817997, 37.336761, 24.535791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353245, 36.702110, 24.272369>,  <35.120560, 36.820789, 24.172157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353245, 36.702110, 24.272369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.425999, 37.095169, 24.286940>,  <34.469650, 37.331005, 24.295681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.425999, 37.095169, 24.286940>,  <34.353245, 36.702110, 24.272369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425999, 37.095169, 24.286940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694511, 0.154600, -0.702676,
		-0.696113, 0.102509, 0.710577,
		0.181886, 0.982645, 0.036426,
		34.480564, 37.389961, 24.297867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654385, 37.086590, 24.185062>,  <34.353245, 36.702110, 24.272369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654385, 37.086590, 24.185062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.882282, 37.411846, 24.137417>,  <34.019020, 37.606998, 24.108829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.882282, 37.411846, 24.137417>,  <33.654385, 37.086590, 24.185062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882282, 37.411846, 24.137417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687616, 0.392296, -0.610973,
		-0.450080, 0.430005, 0.782639,
		0.569748, 0.813142, -0.119114,
		34.053207, 37.655788, 24.101683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163445, 37.476761, 24.117027>,  <33.654385, 37.086590, 24.185062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163445, 37.476761, 24.117027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477798, 37.684078, 23.982117>,  <33.666412, 37.808468, 23.901171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477798, 37.684078, 23.982117>,  <33.163445, 37.476761, 24.117027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477798, 37.684078, 23.982117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607830, 0.547199, -0.575426,
		-0.113683, 0.657225, 0.745071,
		0.785887, 0.518293, -0.337274,
		33.713566, 37.839565, 23.880934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055073, 38.210766, 24.219606>,  <33.163445, 37.476761, 24.117027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055073, 38.210766, 24.219606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340614, 38.218109, 23.939585>,  <33.511940, 38.222515, 23.771572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340614, 38.218109, 23.939585>,  <33.055073, 38.210766, 24.219606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340614, 38.218109, 23.939585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561404, 0.612566, -0.556407,
		0.418614, 0.790206, 0.447590,
		0.713855, 0.018359, -0.700053,
		33.554771, 38.223618, 23.729568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245434, 38.961460, 24.029728>,  <33.055073, 38.210766, 24.219606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245434, 38.961460, 24.029728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.381939, 38.737904, 23.727421>,  <33.463840, 38.603771, 23.546036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.381939, 38.737904, 23.727421>,  <33.245434, 38.961460, 24.029728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381939, 38.737904, 23.727421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324894, 0.684345, -0.652775,
		0.882035, 0.468310, 0.051959,
		0.341259, -0.558889, -0.755768,
		33.484318, 38.570236, 23.500690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740108, 39.432781, 23.622011>,  <33.245434, 38.961460, 24.029728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740108, 39.432781, 23.622011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.602428, 39.122841, 23.409924>,  <33.519821, 38.936878, 23.282671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.602428, 39.122841, 23.409924>,  <33.740108, 39.432781, 23.622011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602428, 39.122841, 23.409924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311940, 0.627023, -0.713818,
		0.885561, -0.080300, -0.457529,
		-0.344200, -0.774851, -0.530218,
		33.499168, 38.890385, 23.250858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042019, 39.448204, 22.931103>,  <33.740108, 39.432781, 23.622011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042019, 39.448204, 22.931103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715389, 39.221111, 22.889368>,  <33.519409, 39.084854, 22.864326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715389, 39.221111, 22.889368>,  <34.042019, 39.448204, 22.931103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715389, 39.221111, 22.889368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260670, 0.523950, -0.810881,
		0.515014, -0.634959, -0.575837,
		-0.816586, -0.567718, -0.104327,
		33.470417, 39.050793, 22.858067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907574, 39.381695, 22.186272>,  <34.042019, 39.448204, 22.931103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907574, 39.381695, 22.186272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554474, 39.248421, 22.318779>,  <33.342613, 39.168457, 22.398283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554474, 39.248421, 22.318779>,  <33.907574, 39.381695, 22.186272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554474, 39.248421, 22.318779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465802, 0.528322, -0.709862,
		0.061500, -0.780936, -0.621576,
		-0.882749, -0.333188, 0.331270,
		33.289650, 39.148464, 22.418159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552582, 39.229206, 21.531378>,  <33.907574, 39.381695, 22.186272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552582, 39.229206, 21.531378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.284668, 39.274712, 21.824892>,  <33.123920, 39.302013, 22.001001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.284668, 39.274712, 21.824892>,  <33.552582, 39.229206, 21.531378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284668, 39.274712, 21.824892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521989, 0.630695, -0.574241,
		-0.528122, -0.767647, -0.363049,
		-0.669787, 0.113762, 0.733787,
		33.083733, 39.308842, 22.045029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960194, 39.262375, 21.207632>,  <33.552582, 39.229206, 21.531378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960194, 39.262375, 21.207632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.935165, 39.456612, 21.556410>,  <32.920147, 39.573154, 21.765676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.935165, 39.456612, 21.556410>,  <32.960194, 39.262375, 21.207632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935165, 39.456612, 21.556410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395573, 0.790037, -0.468363,
		-0.916301, -0.374222, 0.142655,
		-0.062569, 0.485592, 0.871943,
		32.916393, 39.602291, 21.817993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387394, 39.665482, 21.241198>,  <32.960194, 39.262375, 21.207632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387394, 39.665482, 21.241198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.596222, 39.868664, 21.515257>,  <32.721519, 39.990574, 21.679691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.596222, 39.868664, 21.515257>,  <32.387394, 39.665482, 21.241198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596222, 39.868664, 21.515257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316923, 0.861328, -0.397082,
		-0.791836, -0.009835, 0.610655,
		0.522069, 0.507954, 0.685147,
		32.752842, 40.021049, 21.720800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926142, 39.061169, 21.160715>,  <32.387394, 39.665482, 21.241198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926142, 39.061169, 21.160715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.976717, 38.911331, 21.528126>,  <32.007061, 38.821430, 21.748573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.976717, 38.911331, 21.528126>,  <31.926142, 39.061169, 21.160715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976717, 38.911331, 21.528126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329381, 0.889277, 0.317323,
		-0.935693, 0.262423, 0.235824,
		0.126440, -0.374593, 0.918527,
		32.014648, 38.798954, 21.803684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950932, 38.895210, 20.474579>,  <31.926142, 39.061169, 21.160715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950932, 38.895210, 20.474579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733072, 38.769798, 20.163439>,  <31.602356, 38.694550, 19.976755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733072, 38.769798, 20.163439>,  <31.950932, 38.895210, 20.474579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733072, 38.769798, 20.163439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144160, -0.948685, 0.281450,
		-0.826180, 0.041157, 0.561901,
		-0.544651, -0.313532, -0.777852,
		31.569677, 38.675739, 19.930082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345522, 38.473156, 20.705811>,  <31.950932, 38.895210, 20.474579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345522, 38.473156, 20.705811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.407326, 38.348930, 20.330647>,  <31.444408, 38.274395, 20.105547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.407326, 38.348930, 20.330647>,  <31.345522, 38.473156, 20.705811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407326, 38.348930, 20.330647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047303, -0.950548, 0.306955,
		-0.986858, -0.003061, -0.161561,
		0.154511, -0.310563, -0.937911,
		31.453678, 38.255760, 20.049273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876902, 37.969223, 20.588774>,  <31.345522, 38.473156, 20.705811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876902, 37.969223, 20.588774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.171522, 37.913620, 20.323996>,  <31.348295, 37.880257, 20.165129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.171522, 37.913620, 20.323996>,  <30.876902, 37.969223, 20.588774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171522, 37.913620, 20.323996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068712, -0.958211, 0.277686,
		-0.672883, -0.250013, -0.696219,
		0.736551, -0.139011, -0.661943,
		31.392487, 37.871918, 20.125412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640116, 37.420002, 20.299120>,  <30.876902, 37.969223, 20.588774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640116, 37.420002, 20.299120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028147, 37.467361, 20.214334>,  <31.260965, 37.495777, 20.163464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028147, 37.467361, 20.214334>,  <30.640116, 37.420002, 20.299120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028147, 37.467361, 20.214334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172390, -0.950660, 0.257928,
		-0.170965, -0.286751, -0.942627,
		0.970079, 0.118403, -0.211962,
		31.319170, 37.502884, 20.150745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875772, 36.810585, 19.781937>,  <30.640116, 37.420002, 20.299120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875772, 36.810585, 19.781937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.204102, 36.936790, 19.972389>,  <31.401100, 37.012512, 20.086660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.204102, 36.936790, 19.972389>,  <30.875772, 36.810585, 19.781937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204102, 36.936790, 19.972389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130793, -0.915266, 0.381028,
		0.556004, -0.250482, -0.792539,
		0.820824, 0.315512, 0.476130,
		31.450348, 37.031445, 20.115229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251221, 36.272266, 19.816154>,  <30.875772, 36.810585, 19.781937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251221, 36.272266, 19.816154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.405848, 36.504559, 20.102741>,  <31.498623, 36.643932, 20.274693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.405848, 36.504559, 20.102741>,  <31.251221, 36.272266, 19.816154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405848, 36.504559, 20.102741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095673, -0.797916, 0.595127,
		0.917285, -0.161510, -0.364009,
		0.386568, 0.580727, 0.716465,
		31.521818, 36.678776, 20.317680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784145, 35.865795, 19.982603>,  <31.251221, 36.272266, 19.816154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784145, 35.865795, 19.982603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.743216, 36.129391, 20.280668>,  <31.718658, 36.287548, 20.459507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.743216, 36.129391, 20.280668>,  <31.784145, 35.865795, 19.982603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743216, 36.129391, 20.280668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266327, -0.703598, 0.658801,
		0.958436, 0.265869, -0.103510,
		-0.102325, 0.658986, 0.745162,
		31.712519, 36.327087, 20.504217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411060, 35.864254, 20.355669>,  <31.784145, 35.865795, 19.982603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411060, 35.864254, 20.355669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.151001, 36.016781, 20.618547>,  <31.994967, 36.108299, 20.776274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.151001, 36.016781, 20.618547>,  <32.411060, 35.864254, 20.355669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151001, 36.016781, 20.618547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395745, -0.568417, 0.721310,
		0.648612, 0.729037, 0.218647,
		-0.650145, 0.381322, 0.657195,
		31.955957, 36.131176, 20.815706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809769, 36.131798, 20.929308>,  <32.411060, 35.864254, 20.355669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809769, 36.131798, 20.929308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.436287, 36.083874, 21.064270>,  <32.212196, 36.055119, 21.145248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.436287, 36.083874, 21.064270>,  <32.809769, 36.131798, 20.929308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436287, 36.083874, 21.064270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356827, -0.389112, 0.849274,
		0.029536, 0.913365, 0.406068,
		-0.933703, -0.119812, 0.337406,
		32.156178, 36.047932, 21.165491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824051, 36.399342, 21.631689>,  <32.809769, 36.131798, 20.929308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824051, 36.399342, 21.631689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.498329, 36.167522, 21.618874>,  <32.302895, 36.028431, 21.611185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.498329, 36.167522, 21.618874>,  <32.824051, 36.399342, 21.631689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498329, 36.167522, 21.618874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269026, -0.425759, 0.863918,
		-0.514325, 0.694875, 0.502612,
		-0.814307, -0.579550, -0.032039,
		32.254036, 35.993656, 21.609262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324387, 36.573486, 22.136272>,  <32.824051, 36.399342, 21.631689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324387, 36.573486, 22.136272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.264126, 36.190243, 22.038847>,  <32.227970, 35.960297, 21.980391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.264126, 36.190243, 22.038847>,  <32.324387, 36.573486, 22.136272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264126, 36.190243, 22.038847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222790, -0.272943, 0.935878,
		-0.963156, 0.086726, 0.254577,
		-0.150650, -0.958113, -0.243564,
		32.218929, 35.902809, 21.965778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178448, 36.333740, 22.734825>,  <32.324387, 36.573486, 22.136272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178448, 36.333740, 22.734825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.240429, 35.985516, 22.548016>,  <32.277618, 35.776581, 22.435930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.240429, 35.985516, 22.548016>,  <32.178448, 36.333740, 22.734825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240429, 35.985516, 22.548016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336499, -0.397956, 0.853463,
		-0.928847, -0.289400, 0.231279,
		0.154953, -0.870562, -0.467024,
		32.286915, 35.724346, 22.407909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891020, 35.848988, 23.169672>,  <32.178448, 36.333740, 22.734825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891020, 35.848988, 23.169672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.150063, 35.655407, 22.934252>,  <32.305489, 35.539257, 22.792999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.150063, 35.655407, 22.934252>,  <31.891020, 35.848988, 23.169672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150063, 35.655407, 22.934252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407521, -0.432671, 0.804191,
		-0.643841, -0.760646, -0.082979,
		0.647607, -0.483955, -0.588551,
		32.344345, 35.510220, 22.757687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932501, 35.191360, 23.408199>,  <31.891020, 35.848988, 23.169672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932501, 35.191360, 23.408199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.262764, 35.170284, 23.183516>,  <32.460922, 35.157639, 23.048706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.262764, 35.170284, 23.183516>,  <31.932501, 35.191360, 23.408199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262764, 35.170284, 23.183516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459058, -0.516026, 0.723176,
		-0.327959, -0.854951, -0.401873,
		0.825657, -0.052689, -0.561708,
		32.510460, 35.154476, 23.015003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318989, 34.724239, 23.389874>,  <31.932501, 35.191360, 23.408199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318989, 34.724239, 23.389874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.000116, 34.770672, 23.626863>,  <30.808792, 34.798531, 23.769056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.000116, 34.770672, 23.626863>,  <31.318989, 34.724239, 23.389874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000116, 34.770672, 23.626863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355167, 0.703401, -0.615697,
		-0.488218, -0.701250, -0.519511,
		-0.797183, 0.116081, 0.592473,
		30.760962, 34.805496, 23.804605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703331, 34.724209, 22.930473>,  <31.318989, 34.724239, 23.389874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703331, 34.724209, 22.930473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.596874, 34.917095, 23.264332>,  <30.532999, 35.032829, 23.464647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.596874, 34.917095, 23.264332>,  <30.703331, 34.724209, 22.930473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596874, 34.917095, 23.264332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429829, 0.715654, -0.550533,
		-0.862794, -0.505275, 0.016805,
		-0.266144, 0.482220, 0.834644,
		30.517031, 35.061760, 23.514725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108604, 34.953751, 22.826075>,  <30.703331, 34.724209, 22.930473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108604, 34.953751, 22.826075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.176268, 35.185951, 23.144670>,  <30.216866, 35.325272, 23.335829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.176268, 35.185951, 23.144670>,  <30.108604, 34.953751, 22.826075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176268, 35.185951, 23.144670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383420, 0.783238, -0.489416,
		-0.907951, -0.222602, 0.355068,
		0.169158, 0.580506, 0.796491,
		30.227015, 35.360104, 23.383617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517946, 35.419910, 22.990921>,  <30.108604, 34.953751, 22.826075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517946, 35.419910, 22.990921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.842644, 35.604496, 23.134098>,  <30.037462, 35.715248, 23.220005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.842644, 35.604496, 23.134098>,  <29.517946, 35.419910, 22.990921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842644, 35.604496, 23.134098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258339, 0.833401, -0.488573,
		-0.523772, 0.304124, 0.795721,
		0.811741, 0.461466, 0.357945,
		30.086166, 35.742935, 23.241482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363203, 36.130684, 23.320101>,  <29.517946, 35.419910, 22.990921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363203, 36.130684, 23.320101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.747231, 36.121185, 23.208601>,  <29.977648, 36.115486, 23.141701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.747231, 36.121185, 23.208601>,  <29.363203, 36.130684, 23.320101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747231, 36.121185, 23.208601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081872, 0.928913, -0.361134,
		0.267509, 0.369535, 0.889878,
		0.960071, -0.023750, -0.278747,
		30.035252, 36.114059, 23.124977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538422, 36.757484, 23.523336>,  <29.363203, 36.130684, 23.320101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538422, 36.757484, 23.523336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.810452, 36.640198, 23.254555>,  <29.973669, 36.569824, 23.093287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.810452, 36.640198, 23.254555>,  <29.538422, 36.757484, 23.523336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810452, 36.640198, 23.254555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034430, 0.902754, -0.428777,
		0.732332, 0.314737, 0.603846,
		0.680076, -0.293217, -0.671952,
		30.014475, 36.552231, 23.052969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984446, 37.285648, 23.520073>,  <29.538422, 36.757484, 23.523336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984446, 37.285648, 23.520073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.028011, 37.089363, 23.174278>,  <30.054152, 36.971592, 22.966801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.028011, 37.089363, 23.174278>,  <29.984446, 37.285648, 23.520073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028011, 37.089363, 23.174278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000502, 0.869689, -0.493600,
		0.994051, 0.053326, 0.094968,
		0.108914, -0.490711, -0.864488,
		30.060686, 36.942150, 22.914932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241461, 37.837540, 23.927456>,  <29.984446, 37.285648, 23.520073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241461, 37.837540, 23.927456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.000404, 38.093288, 24.118465>,  <29.855770, 38.246738, 24.233070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.000404, 38.093288, 24.118465>,  <30.241461, 37.837540, 23.927456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000404, 38.093288, 24.118465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096391, -0.652330, 0.751781,
		0.792171, 0.407024, 0.454750,
		-0.602639, 0.639372, 0.477523,
		29.819613, 38.285099, 24.261723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556650, 38.014347, 24.646135>,  <30.241461, 37.837540, 23.927456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556650, 38.014347, 24.646135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.165247, 38.091042, 24.676479>,  <29.930405, 38.137058, 24.694687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.165247, 38.091042, 24.676479>,  <30.556650, 38.014347, 24.646135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165247, 38.091042, 24.676479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028804, -0.491389, 0.870464,
		0.204180, 0.849572, 0.486352,
		-0.978509, 0.191740, 0.075861,
		29.871695, 38.148563, 24.699238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431068, 38.170982, 25.336229>,  <30.556650, 38.014347, 24.646135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431068, 38.170982, 25.336229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.073029, 38.077347, 25.184441>,  <29.858204, 38.021168, 25.093367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.073029, 38.077347, 25.184441>,  <30.431068, 38.170982, 25.336229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073029, 38.077347, 25.184441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196746, -0.556379, 0.807300,
		-0.400108, 0.797274, 0.451960,
		-0.895100, -0.234086, -0.379472,
		29.804499, 38.007122, 25.070599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013435, 38.165306, 25.894236>,  <30.431068, 38.170982, 25.336229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013435, 38.165306, 25.894236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.835487, 37.941174, 25.614773>,  <29.728720, 37.806694, 25.447096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.835487, 37.941174, 25.614773>,  <30.013435, 38.165306, 25.894236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835487, 37.941174, 25.614773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142845, -0.725722, 0.672996,
		-0.884131, 0.399194, 0.242810,
		-0.444869, -0.560332, -0.698656,
		29.702026, 37.773075, 25.405176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369663, 37.942596, 26.229662>,  <30.013435, 38.165306, 25.894236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369663, 37.942596, 26.229662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.456966, 37.695080, 25.927813>,  <29.509348, 37.546570, 25.746702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.456966, 37.695080, 25.927813>,  <29.369663, 37.942596, 26.229662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456966, 37.695080, 25.927813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005174, -0.773989, 0.633178,
		-0.975877, -0.134293, -0.172132,
		0.218259, -0.618794, -0.754624,
		29.522444, 37.509441, 25.701426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006227, 37.403690, 26.425949>,  <29.369663, 37.942596, 26.229662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006227, 37.403690, 26.425949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.257053, 37.252804, 26.153334>,  <29.407549, 37.162273, 25.989763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.257053, 37.252804, 26.153334>,  <29.006227, 37.403690, 26.425949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257053, 37.252804, 26.153334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003739, -0.876378, 0.481610,
		-0.778957, -0.299453, -0.550958,
		0.627066, -0.377214, -0.681540,
		29.445173, 37.139641, 25.948872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780722, 36.706970, 26.286913>,  <29.006227, 37.403690, 26.425949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780722, 36.706970, 26.286913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.161097, 36.712555, 26.163288>,  <29.389322, 36.715904, 26.089113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.161097, 36.712555, 26.163288>,  <28.780722, 36.706970, 26.286913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161097, 36.712555, 26.163288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187942, -0.819585, 0.541256,
		-0.245749, -0.572787, -0.781999,
		0.950939, 0.013957, -0.309063,
		29.446379, 36.716743, 26.070570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.389809, 41.926842, 23.217266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.598354, 41.586945, 23.185966>,  <32.723480, 41.383007, 23.167187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.598354, 41.586945, 23.185966>,  <32.389809, 41.926842, 23.217266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598354, 41.586945, 23.185966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505179, -0.381252, 0.774236,
		-0.687730, -0.364130, -0.628042,
		0.521364, -0.849739, -0.078248,
		32.754765, 41.332024, 23.162493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899361, 41.369308, 23.217102>,  <32.389809, 41.926842, 23.217266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899361, 41.369308, 23.217102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.261562, 41.239033, 23.325907>,  <32.478882, 41.160866, 23.391190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.261562, 41.239033, 23.325907>,  <31.899361, 41.369308, 23.217102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261562, 41.239033, 23.325907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390737, -0.389953, 0.833823,
		-0.165496, -0.861314, -0.480363,
		0.905503, -0.325690, 0.272012,
		32.533215, 41.141327, 23.407511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766384, 40.766514, 23.604208>,  <31.899361, 41.369308, 23.217102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766384, 40.766514, 23.604208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.144619, 40.843121, 23.709423>,  <32.371559, 40.889084, 23.772552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.144619, 40.843121, 23.709423>,  <31.766384, 40.766514, 23.604208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144619, 40.843121, 23.709423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164407, -0.416399, 0.894194,
		0.280785, -0.888781, -0.362253,
		0.945585, 0.191519, 0.263040,
		32.428295, 40.900578, 23.788336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048168, 40.215607, 23.947996>,  <31.766384, 40.766514, 23.604208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048168, 40.215607, 23.947996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.277260, 40.523399, 24.061049>,  <32.414715, 40.708073, 24.128880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.277260, 40.523399, 24.061049>,  <32.048168, 40.215607, 23.947996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277260, 40.523399, 24.061049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031286, -0.324008, 0.945537,
		0.819145, -0.550381, -0.161496,
		0.572732, 0.769480, 0.282629,
		32.449078, 40.754242, 24.145838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669907, 40.061852, 24.261183>,  <32.048168, 40.215607, 23.947996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669907, 40.061852, 24.261183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.621365, 40.435558, 24.395298>,  <32.592239, 40.659782, 24.475767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.621365, 40.435558, 24.395298>,  <32.669907, 40.061852, 24.261183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621365, 40.435558, 24.395298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332857, -0.279924, 0.900472,
		0.935136, 0.220877, -0.277008,
		-0.121353, 0.934268, 0.335287,
		32.584957, 40.715839, 24.495884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145782, 40.180496, 24.748798>,  <32.669907, 40.061852, 24.261183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145782, 40.180496, 24.748798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.870655, 40.447365, 24.863190>,  <32.705578, 40.607487, 24.931824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.870655, 40.447365, 24.863190>,  <33.145782, 40.180496, 24.748798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870655, 40.447365, 24.863190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147759, -0.257039, 0.955038,
		0.710683, 0.699150, 0.078215,
		-0.687820, 0.667173, 0.285979,
		32.664310, 40.647518, 24.948984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380535, 40.275215, 25.435993>,  <33.145782, 40.180496, 24.748798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380535, 40.275215, 25.435993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.022633, 40.452446, 25.413740>,  <32.807892, 40.558784, 25.400389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.022633, 40.452446, 25.413740>,  <33.380535, 40.275215, 25.435993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022633, 40.452446, 25.413740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086967, -0.050696, 0.994920,
		0.438001, 0.895051, 0.083893,
		-0.894758, 0.443072, -0.055635,
		32.754204, 40.585369, 25.397049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539146, 40.837067, 25.782444>,  <33.380535, 40.275215, 25.435993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539146, 40.837067, 25.782444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.145020, 40.771095, 25.800127>,  <32.908543, 40.731514, 25.810736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.145020, 40.771095, 25.800127>,  <33.539146, 40.837067, 25.782444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145020, 40.771095, 25.800127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068674, -0.145745, 0.986936,
		-0.156330, 0.975478, 0.154931,
		-0.985315, -0.164928, 0.044206,
		32.849426, 40.721619, 25.813389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192684, 41.366367, 26.275560>,  <33.539146, 40.837067, 25.782444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192684, 41.366367, 26.275560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.970505, 41.036076, 26.236280>,  <32.837196, 40.837898, 26.212713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.970505, 41.036076, 26.236280>,  <33.192684, 41.366367, 26.275560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970505, 41.036076, 26.236280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010937, -0.125336, 0.992054,
		-0.831480, 0.549959, 0.078648,
		-0.555447, -0.825733, -0.098199,
		32.803871, 40.788357, 26.206821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759098, 41.438835, 26.822735>,  <33.192684, 41.366367, 26.275560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759098, 41.438835, 26.822735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.679935, 41.054115, 26.747086>,  <32.632439, 40.823284, 26.701696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.679935, 41.054115, 26.747086>,  <32.759098, 41.438835, 26.822735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679935, 41.054115, 26.747086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053603, -0.182031, 0.981831,
		-0.978754, 0.204448, -0.015530,
		-0.197906, -0.961803, -0.189123,
		32.620564, 40.765575, 26.690350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244278, 41.202366, 27.335665>,  <32.759098, 41.438835, 26.822735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244278, 41.202366, 27.335665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.414795, 40.877422, 27.176491>,  <32.517105, 40.682457, 27.080986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.414795, 40.877422, 27.176491>,  <32.244278, 41.202366, 27.335665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414795, 40.877422, 27.176491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147471, -0.371615, 0.916600,
		-0.892484, -0.449424, -0.038618,
		0.426293, -0.812355, -0.397937,
		32.542683, 40.633717, 27.057110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828871, 40.672421, 27.492075>,  <32.244278, 41.202366, 27.335665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828871, 40.672421, 27.492075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.197666, 40.534424, 27.421741>,  <32.418945, 40.451626, 27.379541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.197666, 40.534424, 27.421741>,  <31.828871, 40.672421, 27.492075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197666, 40.534424, 27.421741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016804, -0.489318, 0.871943,
		-0.386850, -0.800968, -0.456944,
		0.921990, -0.344990, -0.175833,
		32.474262, 40.430927, 27.368992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195862, 40.294662, 27.480879>,  <31.828871, 40.672421, 27.492075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195862, 40.294662, 27.480879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.807362, 40.264778, 27.571291>,  <30.574261, 40.246849, 27.625538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.807362, 40.264778, 27.571291>,  <31.195862, 40.294662, 27.480879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807362, 40.264778, 27.571291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228890, 0.554021, -0.800419,
		-0.065430, -0.829144, -0.555193,
		-0.971251, -0.074707, 0.226032,
		30.515985, 40.242367, 27.639101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767807, 40.066895, 26.787682>,  <31.195862, 40.294662, 27.480879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767807, 40.066895, 26.787682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.475723, 40.217274, 27.015879>,  <30.300474, 40.307503, 27.152796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.475723, 40.217274, 27.015879>,  <30.767807, 40.066895, 26.787682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475723, 40.217274, 27.015879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318573, 0.551319, -0.771076,
		-0.604407, -0.744789, -0.282810,
		-0.730208, 0.375948, 0.570491,
		30.256660, 40.330059, 27.187025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181471, 39.922024, 26.433802>,  <30.767807, 40.066895, 26.787682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181471, 39.922024, 26.433802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.066011, 40.213097, 26.682690>,  <29.996737, 40.387741, 26.832024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.066011, 40.213097, 26.682690>,  <30.181471, 39.922024, 26.433802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066011, 40.213097, 26.682690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374788, 0.512146, -0.772813,
		-0.881032, -0.456271, 0.124897,
		-0.288647, 0.727683, 0.622222,
		29.979418, 40.431400, 26.869356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469780, 40.079643, 26.266832>,  <30.181471, 39.922024, 26.433802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469780, 40.079643, 26.266832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.619329, 40.412418, 26.430828>,  <29.709059, 40.612083, 26.529226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.619329, 40.412418, 26.430828>,  <29.469780, 40.079643, 26.266832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619329, 40.412418, 26.430828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392762, 0.542473, -0.742604,
		-0.840211, 0.116612, 0.529572,
		0.373875, 0.831940, 0.409991,
		29.731493, 40.661999, 26.553825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886562, 40.576855, 26.371517>,  <29.469780, 40.079643, 26.266832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886562, 40.576855, 26.371517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207748, 40.814922, 26.358721>,  <29.400461, 40.957764, 26.351044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207748, 40.814922, 26.358721>,  <28.886562, 40.576855, 26.371517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207748, 40.814922, 26.358721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475102, 0.606729, -0.637305,
		-0.359892, 0.526934, 0.769947,
		0.802967, 0.595165, -0.031991,
		29.448639, 40.993473, 26.349123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662275, 41.248627, 26.449968>,  <28.886562, 40.576855, 26.371517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662275, 41.248627, 26.449968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.017998, 41.286045, 26.270910>,  <29.231430, 41.308495, 26.163475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.017998, 41.286045, 26.270910>,  <28.662275, 41.248627, 26.449968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017998, 41.286045, 26.270910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432024, 0.492861, -0.755277,
		0.149975, 0.865065, 0.478717,
		0.889305, 0.093545, -0.447646,
		29.284790, 41.314110, 26.136616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686316, 41.954483, 26.248550>,  <28.662275, 41.248627, 26.449968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686316, 41.954483, 26.248550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.964748, 41.773743, 26.025375>,  <29.131807, 41.665298, 25.891470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.964748, 41.773743, 26.025375>,  <28.686316, 41.954483, 26.248550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964748, 41.773743, 26.025375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214796, 0.610459, -0.762366,
		0.685079, 0.650513, 0.327873,
		0.696082, -0.451855, -0.557940,
		29.173573, 41.638187, 25.857994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869787, 42.428577, 25.798668>,  <28.686316, 41.954483, 26.248550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869787, 42.428577, 25.798668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.998133, 42.082447, 25.644653>,  <29.075140, 41.874767, 25.552244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.998133, 42.082447, 25.644653>,  <28.869787, 42.428577, 25.798668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998133, 42.082447, 25.644653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376792, 0.256350, -0.890119,
		0.868949, 0.430687, -0.243794,
		0.320866, -0.865328, -0.385035,
		29.094393, 41.822849, 25.529142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176508, 42.594707, 25.194082>,  <28.869787, 42.428577, 25.798668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176508, 42.594707, 25.194082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.095737, 42.204525, 25.158947>,  <29.047276, 41.970417, 25.137865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.095737, 42.204525, 25.158947>,  <29.176508, 42.594707, 25.194082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095737, 42.204525, 25.158947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360200, 0.157366, -0.919507,
		0.910759, -0.154032, -0.383134,
		-0.201925, -0.975454, -0.087840,
		29.035160, 41.911888, 25.132595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459053, 42.438248, 24.595831>,  <29.176508, 42.594707, 25.194082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459053, 42.438248, 24.595831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.204241, 42.134434, 24.648432>,  <29.051353, 41.952145, 24.679993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.204241, 42.134434, 24.648432>,  <29.459053, 42.438248, 24.595831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204241, 42.134434, 24.648432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223731, 0.018930, -0.974467,
		0.737656, -0.650186, -0.181991,
		-0.637031, -0.759539, 0.131502,
		29.013132, 41.906570, 24.687883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536266, 41.988476, 24.035849>,  <29.459053, 42.438248, 24.595831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536266, 41.988476, 24.035849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.182407, 41.884716, 24.190823>,  <28.970091, 41.822460, 24.283808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.182407, 41.884716, 24.190823>,  <29.536266, 41.988476, 24.035849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182407, 41.884716, 24.190823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386660, -0.056204, -0.920508,
		0.260558, -0.964132, -0.050580,
		-0.884649, -0.259403, 0.387435,
		28.917013, 41.806896, 24.307053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228838, 41.562237, 23.544065>,  <29.536266, 41.988476, 24.035849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228838, 41.562237, 23.544065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.904432, 41.669338, 23.752129>,  <28.709789, 41.733597, 23.876966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.904432, 41.669338, 23.752129>,  <29.228838, 41.562237, 23.544065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904432, 41.669338, 23.752129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512733, 0.102827, -0.852368,
		-0.281708, -0.957985, 0.053890,
		-0.811015, 0.267750, 0.520158,
		28.661127, 41.749664, 23.908176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693913, 41.885239, 23.038647>,  <29.228838, 41.562237, 23.544065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693913, 41.885239, 23.038647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.710157, 41.936165, 22.642235>,  <29.719904, 41.966721, 22.404387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.710157, 41.936165, 22.642235>,  <29.693913, 41.885239, 23.038647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710157, 41.936165, 22.642235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981846, -0.189010, 0.015953,
		-0.185284, -0.973687, -0.132680,
		0.040611, 0.127315, -0.991031,
		29.722342, 41.974358, 22.344925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303736, 41.308468, 23.001637>,  <29.693913, 41.885239, 23.038647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303736, 41.308468, 23.001637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.917103, 41.275108, 22.904673>,  <29.685123, 41.255093, 22.846495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.917103, 41.275108, 22.904673>,  <30.303736, 41.308468, 23.001637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917103, 41.275108, 22.904673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100688, -0.746115, 0.658160,
		-0.235755, 0.660574, 0.712785,
		-0.966582, -0.083396, -0.242412,
		29.627129, 41.250088, 22.831949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900812, 41.264362, 23.536766>,  <30.303736, 41.308468, 23.001637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900812, 41.264362, 23.536766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654696, 41.075455, 23.284296>,  <29.507025, 40.962112, 23.132814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654696, 41.075455, 23.284296>,  <29.900812, 41.264362, 23.536766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654696, 41.075455, 23.284296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003371, -0.799094, 0.601197,
		-0.788292, 0.372039, 0.490083,
		-0.615291, -0.472267, -0.631174,
		29.470108, 40.933773, 23.094944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469904, 40.956043, 23.965620>,  <29.900812, 41.264362, 23.536766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469904, 40.956043, 23.965620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.452707, 40.762051, 23.616232>,  <29.442389, 40.645657, 23.406599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.452707, 40.762051, 23.616232>,  <29.469904, 40.956043, 23.965620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452707, 40.762051, 23.616232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155167, -0.860427, 0.485374,
		-0.986952, 0.156401, -0.038260,
		-0.042993, -0.484978, -0.873469,
		29.439810, 40.616558, 23.354191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886490, 40.464680, 24.088144>,  <29.469904, 40.956043, 23.965620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886490, 40.464680, 24.088144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.112307, 40.329365, 23.786985>,  <29.247797, 40.248177, 23.606289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.112307, 40.329365, 23.786985>,  <28.886490, 40.464680, 24.088144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112307, 40.329365, 23.786985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003451, -0.911182, 0.411990,
		-0.825398, -0.235183, -0.513232,
		0.564540, -0.338285, -0.752899,
		29.281670, 40.227879, 23.561115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596312, 39.807934, 23.664053>,  <28.886490, 40.464680, 24.088144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596312, 39.807934, 23.664053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989927, 39.805626, 23.592911>,  <29.226097, 39.804241, 23.550226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989927, 39.805626, 23.592911>,  <28.596312, 39.807934, 23.664053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989927, 39.805626, 23.592911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053888, -0.942886, 0.328729,
		-0.169592, -0.333066, -0.927526,
		0.984040, -0.005767, -0.177854,
		29.285139, 39.803894, 23.539555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697063, 39.208019, 23.281546>,  <28.596312, 39.807934, 23.664053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697063, 39.208019, 23.281546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063562, 39.299549, 23.413076>,  <29.283463, 39.354469, 23.491995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063562, 39.299549, 23.413076>,  <28.697063, 39.208019, 23.281546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063562, 39.299549, 23.413076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080195, -0.908966, 0.409085,
		0.392504, -0.348452, -0.851188,
		0.916247, 0.228829, 0.328829,
		29.338436, 39.368198, 23.511724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170748, 38.606094, 23.048485>,  <28.697063, 39.208019, 23.281546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170748, 38.606094, 23.048485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331240, 38.768356, 23.376986>,  <29.427536, 38.865715, 23.574087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331240, 38.768356, 23.376986>,  <29.170748, 38.606094, 23.048485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331240, 38.768356, 23.376986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065007, -0.906938, 0.416218,
		0.913667, -0.113612, -0.390263,
		0.401231, 0.405655, 0.821254,
		29.451609, 38.890053, 23.623362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665865, 38.099838, 23.310970>,  <29.170748, 38.606094, 23.048485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665865, 38.099838, 23.310970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.630007, 38.355412, 23.616579>,  <29.608492, 38.508755, 23.799944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.630007, 38.355412, 23.616579>,  <29.665865, 38.099838, 23.310970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630007, 38.355412, 23.616579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016759, -0.766035, 0.642580,
		0.995833, 0.070408, 0.057963,
		-0.089645, 0.638931, 0.764023,
		29.603113, 38.547092, 23.845785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359598, 37.761024, 23.116531>,  <29.665865, 38.099838, 23.310970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359598, 37.761024, 23.116531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.286974, 37.491905, 22.829651>,  <30.243399, 37.330433, 22.657522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.286974, 37.491905, 22.829651>,  <30.359598, 37.761024, 23.116531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286974, 37.491905, 22.829651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039622, 0.733737, -0.678277,
		0.982581, -0.094732, -0.159876,
		-0.181562, -0.672797, -0.717203,
		30.232506, 37.290066, 22.614491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791754, 37.954426, 22.487711>,  <30.359598, 37.761024, 23.116531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791754, 37.954426, 22.487711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.491228, 37.718906, 22.368484>,  <30.310913, 37.577595, 22.296949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.491228, 37.718906, 22.368484>,  <30.791754, 37.954426, 22.487711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491228, 37.718906, 22.368484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061476, 0.512129, -0.856706,
		0.657076, -0.625330, -0.420967,
		-0.751313, -0.588800, -0.298065,
		30.265835, 37.542267, 22.279066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880323, 37.959393, 21.808258>,  <30.791754, 37.954426, 22.487711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880323, 37.959393, 21.808258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.489012, 37.891232, 21.855474>,  <30.254225, 37.850334, 21.883804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.489012, 37.891232, 21.855474>,  <30.880323, 37.959393, 21.808258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489012, 37.891232, 21.855474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198694, 0.608519, -0.768261,
		0.059082, -0.775028, -0.629159,
		-0.978279, -0.170400, 0.118041,
		30.195528, 37.840111, 21.890886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552250, 37.604343, 21.172768>,  <30.880323, 37.959393, 21.808258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552250, 37.604343, 21.172768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.245029, 37.783607, 21.355742>,  <30.060698, 37.891167, 21.465527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.245029, 37.783607, 21.355742>,  <30.552250, 37.604343, 21.172768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245029, 37.783607, 21.355742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278556, 0.409390, -0.868796,
		-0.576630, -0.794702, -0.189595,
		-0.768053, 0.448160, 0.457436,
		30.014614, 37.918056, 21.492971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006010, 37.636013, 20.587175>,  <30.552250, 37.604343, 21.172768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006010, 37.636013, 20.587175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.911406, 37.890343, 20.881056>,  <29.854643, 38.042942, 21.057384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.911406, 37.890343, 20.881056>,  <30.006010, 37.636013, 20.587175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911406, 37.890343, 20.881056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382270, 0.634281, -0.671980,
		-0.893271, -0.439785, 0.093044,
		-0.236511, 0.635828, 0.734701,
		29.840452, 38.081093, 21.101465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340717, 37.812977, 20.436922>,  <30.006010, 37.636013, 20.587175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340717, 37.812977, 20.436922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449358, 38.111206, 20.680349>,  <29.514542, 38.290142, 20.826406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449358, 38.111206, 20.680349>,  <29.340717, 37.812977, 20.436922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449358, 38.111206, 20.680349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449687, 0.657379, -0.604678,
		-0.850890, -0.109434, 0.513819,
		0.271602, 0.745572, 0.608568,
		29.530838, 38.334877, 20.862919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709425, 38.220364, 20.547758>,  <29.340717, 37.812977, 20.436922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709425, 38.220364, 20.547758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.000820, 38.462730, 20.675613>,  <29.175657, 38.608150, 20.752327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.000820, 38.462730, 20.675613>,  <28.709425, 38.220364, 20.547758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000820, 38.462730, 20.675613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390202, 0.750503, -0.533374,
		-0.563071, 0.263832, 0.783162,
		0.728487, 0.605919, 0.319639,
		29.219366, 38.644505, 20.771505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368273, 38.834560, 20.840473>,  <28.709425, 38.220364, 20.547758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368273, 38.834560, 20.840473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.745680, 38.941265, 20.761873>,  <28.972124, 39.005287, 20.714712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.745680, 38.941265, 20.761873>,  <28.368273, 38.834560, 20.840473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745680, 38.941265, 20.761873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330268, 0.804514, -0.493639,
		0.026404, 0.530656, 0.847176,
		0.943518, 0.266761, -0.196501,
		29.028736, 39.021294, 20.702923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544155, 39.598881, 21.022381>,  <28.368273, 38.834560, 20.840473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544155, 39.598881, 21.022381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.794230, 39.487312, 20.730808>,  <28.944275, 39.420372, 20.555864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.794230, 39.487312, 20.730808>,  <28.544155, 39.598881, 21.022381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794230, 39.487312, 20.730808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350914, 0.733779, -0.581746,
		0.697138, 0.619493, 0.360871,
		0.625186, -0.278922, -0.728934,
		28.981785, 39.403637, 20.512129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.389465, 30.053904, 32.558311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745255, 30.116905, 32.386719>,  <33.958729, 30.154707, 32.283764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745255, 30.116905, 32.386719>,  <33.389465, 30.053904, 32.558311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745255, 30.116905, 32.386719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455315, 0.385475, -0.802556,
		0.038954, 0.909176, 0.414586,
		0.889478, 0.157504, -0.428977,
		34.012096, 30.164156, 32.258026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302158, 30.627630, 32.176952>,  <33.389465, 30.053904, 32.558311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302158, 30.627630, 32.176952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.623333, 30.448290, 32.019840>,  <33.816036, 30.340685, 31.925573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.623333, 30.448290, 32.019840>,  <33.302158, 30.627630, 32.176952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623333, 30.448290, 32.019840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250881, 0.343545, -0.905006,
		0.540699, 0.825201, 0.163362,
		0.802934, -0.448352, -0.392782,
		33.864212, 30.313784, 31.902006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628349, 31.133734, 31.818167>,  <33.302158, 30.627630, 32.176952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628349, 31.133734, 31.818167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747860, 30.779356, 31.676275>,  <33.819565, 30.566729, 31.591141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747860, 30.779356, 31.676275>,  <33.628349, 31.133734, 31.818167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747860, 30.779356, 31.676275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366397, 0.236728, -0.899841,
		0.881184, 0.398824, -0.253879,
		0.298778, -0.885946, -0.354728,
		33.837494, 30.513573, 31.569857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824451, 31.283501, 31.188538>,  <33.628349, 31.133734, 31.818167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824451, 31.283501, 31.188538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.815968, 30.884726, 31.158438>,  <33.810875, 30.645460, 31.140377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.815968, 30.884726, 31.158438>,  <33.824451, 31.283501, 31.188538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815968, 30.884726, 31.158438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396167, 0.077487, -0.914903,
		0.917934, 0.010404, -0.396598,
		-0.021212, -0.996939, -0.075250,
		33.809605, 30.585644, 31.135862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243526, 31.016857, 30.628643>,  <33.824451, 31.283501, 31.188538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243526, 31.016857, 30.628643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.935402, 30.773949, 30.706455>,  <33.750526, 30.628204, 30.753143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.935402, 30.773949, 30.706455>,  <34.243526, 31.016857, 30.628643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935402, 30.773949, 30.706455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358436, 0.160043, -0.919734,
		0.527395, -0.778208, -0.340951,
		-0.770311, -0.607271, 0.194532,
		33.704308, 30.591766, 30.764814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204445, 30.606644, 30.062830>,  <34.243526, 31.016857, 30.628643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204445, 30.606644, 30.062830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.851891, 30.568661, 30.247931>,  <33.640358, 30.545872, 30.358992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.851891, 30.568661, 30.247931>,  <34.204445, 30.606644, 30.062830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851891, 30.568661, 30.247931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471861, 0.130517, -0.871959,
		0.022398, -0.986889, -0.159840,
		-0.881388, -0.094952, 0.462751,
		33.587475, 30.540174, 30.386755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746948, 30.272364, 29.508615>,  <34.204445, 30.606644, 30.062830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746948, 30.272364, 29.508615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.489880, 30.412378, 29.781216>,  <33.335636, 30.496387, 29.944777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.489880, 30.412378, 29.781216>,  <33.746948, 30.272364, 29.508615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489880, 30.412378, 29.781216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614207, 0.296307, -0.731404,
		-0.457951, -0.888638, 0.024566,
		-0.642674, 0.350036, 0.681502,
		33.297077, 30.517389, 29.985666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180920, 30.108423, 29.210222>,  <33.746948, 30.272364, 29.508615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180920, 30.108423, 29.210222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.087555, 30.395903, 29.472212>,  <33.031536, 30.568390, 29.629406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.087555, 30.395903, 29.472212>,  <33.180920, 30.108423, 29.210222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087555, 30.395903, 29.472212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672431, 0.367252, -0.642622,
		-0.702392, -0.590422, 0.397552,
		-0.233416, 0.718699, 0.654973,
		33.017529, 30.611513, 29.668703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518581, 30.077021, 29.226715>,  <33.180920, 30.108423, 29.210222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518581, 30.077021, 29.226715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609184, 30.440233, 29.367670>,  <32.663548, 30.658161, 29.452244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609184, 30.440233, 29.367670>,  <32.518581, 30.077021, 29.226715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609184, 30.440233, 29.367670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655227, 0.409743, -0.634657,
		-0.720675, -0.087139, 0.687775,
		0.226507, 0.908030, 0.352387,
		32.677135, 30.712643, 29.473387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907356, 30.291615, 29.416855>,  <32.518581, 30.077021, 29.226715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907356, 30.291615, 29.416855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.125202, 30.621435, 29.355522>,  <32.255909, 30.819326, 29.318722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.125202, 30.621435, 29.355522>,  <31.907356, 30.291615, 29.416855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125202, 30.621435, 29.355522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707024, 0.353039, -0.612765,
		-0.451123, 0.442132, 0.775247,
		0.544615, 0.824550, -0.153334,
		32.288586, 30.868801, 29.309523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466871, 30.828745, 29.304667>,  <31.907356, 30.291615, 29.416855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466871, 30.828745, 29.304667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.801067, 30.984806, 29.149885>,  <32.001587, 31.078444, 29.057016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.801067, 30.984806, 29.149885>,  <31.466871, 30.828745, 29.304667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801067, 30.984806, 29.149885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547686, 0.534008, -0.644108,
		-0.044665, 0.750077, 0.659841,
		0.835491, 0.390155, -0.386955,
		32.051716, 31.101852, 29.033798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283529, 31.431332, 29.240435>,  <31.466871, 30.828745, 29.304667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283529, 31.431332, 29.240435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.592957, 31.409626, 28.987881>,  <31.778612, 31.396603, 28.836348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.592957, 31.409626, 28.987881>,  <31.283529, 31.431332, 29.240435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592957, 31.409626, 28.987881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533713, 0.481397, -0.695275,
		0.341677, 0.874821, 0.343432,
		0.773568, -0.054265, -0.631386,
		31.825027, 31.393347, 28.798466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934330, 31.788612, 29.733707>,  <31.283529, 31.431332, 29.240435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934330, 31.788612, 29.733707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.596367, 31.991882, 29.800510>,  <30.393589, 32.113846, 29.840593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.596367, 31.991882, 29.800510>,  <30.934330, 31.788612, 29.733707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596367, 31.991882, 29.800510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031819, -0.359410, 0.932637,
		0.533968, 0.782676, 0.319837,
		-0.844905, 0.508176, 0.167010,
		30.342896, 32.144337, 29.850613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050371, 32.180729, 30.316347>,  <30.934330, 31.788612, 29.733707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050371, 32.180729, 30.316347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.650558, 32.172581, 30.307184>,  <30.410671, 32.167690, 30.301687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.650558, 32.172581, 30.307184>,  <31.050371, 32.180729, 30.316347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650558, 32.172581, 30.307184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015473, -0.309705, 0.950707,
		-0.026465, 0.950615, 0.309244,
		-0.999530, -0.020375, -0.022905,
		30.350700, 32.166470, 30.300312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862738, 32.470299, 30.961184>,  <31.050371, 32.180729, 30.316347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862738, 32.470299, 30.961184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.525543, 32.307163, 30.820875>,  <30.323227, 32.209282, 30.736691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.525543, 32.307163, 30.820875>,  <30.862738, 32.470299, 30.961184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525543, 32.307163, 30.820875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297949, -0.188922, 0.935700,
		-0.447882, 0.893295, 0.037744,
		-0.842987, -0.407838, -0.350771,
		30.272648, 32.184811, 30.715643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376455, 32.781120, 31.324579>,  <30.862738, 32.470299, 30.961184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376455, 32.781120, 31.324579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.186153, 32.450218, 31.205042>,  <30.071972, 32.251678, 31.133320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.186153, 32.450218, 31.205042>,  <30.376455, 32.781120, 31.324579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186153, 32.450218, 31.205042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320127, -0.153602, 0.934840,
		-0.819253, 0.540423, -0.191749,
		-0.475756, -0.827254, -0.298843,
		30.043427, 32.202042, 31.115389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697140, 32.790928, 31.614445>,  <30.376455, 32.781120, 31.324579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697140, 32.790928, 31.614445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.767662, 32.401970, 31.553307>,  <29.809975, 32.168594, 31.516624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.767662, 32.401970, 31.553307>,  <29.697140, 32.790928, 31.614445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767662, 32.401970, 31.553307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432431, -0.216004, 0.875412,
		-0.884262, -0.088246, -0.458577,
		0.176306, -0.972396, -0.152844,
		29.820555, 32.110252, 31.507454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233950, 32.441292, 32.015511>,  <29.697140, 32.790928, 31.614445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233950, 32.441292, 32.015511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.485025, 32.131939, 31.980000>,  <29.635670, 31.946325, 31.958693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.485025, 32.131939, 31.980000>,  <29.233950, 32.441292, 32.015511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485025, 32.131939, 31.980000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144494, -0.227808, 0.962925,
		-0.764938, -0.591588, -0.254742,
		0.627687, -0.773387, -0.088778,
		29.673332, 31.899923, 31.953365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874502, 31.794952, 32.157604>,  <29.233950, 32.441292, 32.015511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874502, 31.794952, 32.157604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.265600, 31.737442, 32.218723>,  <29.500259, 31.702936, 32.255394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.265600, 31.737442, 32.218723>,  <28.874502, 31.794952, 32.157604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265600, 31.737442, 32.218723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198417, -0.397015, 0.896108,
		-0.068176, -0.906481, -0.416706,
		0.977744, -0.143775, 0.152794,
		29.558924, 31.694309, 32.264561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858778, 31.244610, 32.590294>,  <28.874502, 31.794952, 32.157604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858778, 31.244610, 32.590294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.236387, 31.372522, 32.622696>,  <29.462952, 31.449270, 32.642139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.236387, 31.372522, 32.622696>,  <28.858778, 31.244610, 32.590294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236387, 31.372522, 32.622696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065725, -0.422970, 0.903757,
		0.323271, -0.847841, -0.420310,
		0.944021, 0.319783, 0.081009,
		29.519594, 31.468458, 32.646999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251841, 30.699936, 32.866463>,  <28.858778, 31.244610, 32.590294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251841, 30.699936, 32.866463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.514399, 30.992804, 32.939209>,  <29.671932, 31.168524, 32.982857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.514399, 30.992804, 32.939209>,  <29.251841, 30.699936, 32.866463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514399, 30.992804, 32.939209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275601, -0.457127, 0.845623,
		0.702276, -0.504939, -0.501841,
		0.656393, 0.732169, 0.181868,
		29.711317, 31.212454, 32.993771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904696, 30.417332, 33.121784>,  <29.251841, 30.699936, 32.866463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904696, 30.417332, 33.121784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.920918, 30.793623, 33.256474>,  <29.930651, 31.019398, 33.337288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.920918, 30.793623, 33.256474>,  <29.904696, 30.417332, 33.121784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920918, 30.793623, 33.256474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268061, -0.334889, 0.903323,
		0.962548, 0.053630, -0.265754,
		0.040553, 0.940730, 0.336723,
		29.933083, 31.075842, 33.357491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528996, 30.479784, 33.607094>,  <29.904696, 30.417332, 33.121784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528996, 30.479784, 33.607094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.318266, 30.804764, 33.706997>,  <30.191828, 30.999752, 33.766941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.318266, 30.804764, 33.706997>,  <30.528996, 30.479784, 33.607094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318266, 30.804764, 33.706997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358559, -0.053991, 0.931944,
		0.770643, 0.580526, -0.262867,
		-0.526825, 0.812450, 0.249761,
		30.160219, 31.048498, 33.781925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934561, 30.917318, 34.028084>,  <30.528996, 30.479784, 33.607094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934561, 30.917318, 34.028084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.567640, 31.045797, 34.122219>,  <30.347488, 31.122885, 34.178699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.567640, 31.045797, 34.122219>,  <30.934561, 30.917318, 34.028084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567640, 31.045797, 34.122219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205545, -0.124239, 0.970730,
		0.341036, 0.938827, 0.047944,
		-0.917303, 0.321199, 0.235341,
		30.292450, 31.142157, 34.192822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067932, 31.341545, 34.644638>,  <30.934561, 30.917318, 34.028084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067932, 31.341545, 34.644638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.676853, 31.257828, 34.637695>,  <30.442205, 31.207598, 34.633530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.676853, 31.257828, 34.637695>,  <31.067932, 31.341545, 34.644638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676853, 31.257828, 34.637695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037782, -0.256597, 0.965780,
		-0.206585, 0.943586, 0.258782,
		-0.977699, -0.209293, -0.017359,
		30.383543, 31.195040, 34.632488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795654, 31.775812, 35.168388>,  <31.067932, 31.341545, 34.644638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795654, 31.775812, 35.168388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.554062, 31.461451, 35.115383>,  <30.409107, 31.272833, 35.083580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.554062, 31.461451, 35.115383>,  <30.795654, 31.775812, 35.168388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554062, 31.461451, 35.115383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050393, -0.203588, 0.977759,
		-0.795403, 0.583871, 0.162567,
		-0.603982, -0.785905, -0.132511,
		30.372868, 31.225679, 35.075630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755762, 32.559570, 35.316799>,  <30.795654, 31.775812, 35.168388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755762, 32.559570, 35.316799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.757267, 32.805088, 35.632584>,  <30.758169, 32.952396, 35.822056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.757267, 32.805088, 35.632584>,  <30.755762, 32.559570, 35.316799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757267, 32.805088, 35.632584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219061, 0.769785, -0.599536,
		-0.975704, 0.175195, -0.131562,
		0.003762, 0.613790, 0.789461,
		30.758396, 32.989223, 35.869423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324715, 33.155018, 35.106106>,  <30.755762, 32.559570, 35.316799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324715, 33.155018, 35.106106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.569050, 33.249565, 35.408363>,  <30.715651, 33.306293, 35.589718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.569050, 33.249565, 35.408363>,  <30.324715, 33.155018, 35.106106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569050, 33.249565, 35.408363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023854, 0.948469, -0.315971,
		-0.791395, 0.211033, 0.573724,
		0.610839, 0.236372, 0.755648,
		30.752302, 33.320477, 35.635059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178421, 33.815865, 35.169907>,  <30.324715, 33.155018, 35.106106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178421, 33.815865, 35.169907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.533976, 33.753693, 35.342289>,  <30.747309, 33.716389, 35.445717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.533976, 33.753693, 35.342289>,  <30.178421, 33.815865, 35.169907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533976, 33.753693, 35.342289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315520, 0.889726, -0.329901,
		-0.332155, 0.429220, 0.839907,
		0.888887, -0.155429, 0.430954,
		30.800642, 33.707066, 35.471577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409851, 34.392750, 35.759289>,  <30.178421, 33.815865, 35.169907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409851, 34.392750, 35.759289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.718531, 34.249603, 35.548988>,  <30.903738, 34.163715, 35.422806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.718531, 34.249603, 35.548988>,  <30.409851, 34.392750, 35.759289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718531, 34.249603, 35.548988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258634, 0.931811, -0.254629,
		0.581026, 0.060519, 0.811632,
		0.771698, -0.357862, -0.525754,
		30.950041, 34.142246, 35.391262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794170, 34.990028, 35.740784>,  <30.409851, 34.392750, 35.759289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794170, 34.990028, 35.740784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.964062, 34.747295, 35.472054>,  <31.065996, 34.601654, 35.310814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.964062, 34.747295, 35.472054>,  <30.794170, 34.990028, 35.740784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964062, 34.747295, 35.472054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257180, 0.792392, -0.553148,
		0.868023, 0.062157, 0.492618,
		0.424729, -0.606837, -0.671829,
		31.091480, 34.565243, 35.270504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476603, 35.277100, 35.591801>,  <30.794170, 34.990028, 35.740784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476603, 35.277100, 35.591801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.339546, 35.063755, 35.282448>,  <31.257313, 34.935749, 35.096836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.339546, 35.063755, 35.282448>,  <31.476603, 35.277100, 35.591801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339546, 35.063755, 35.282448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297588, 0.719207, -0.627840,
		0.891089, -0.445273, -0.087707,
		-0.342640, -0.533361, -0.773385,
		31.236753, 34.903748, 35.050434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955954, 35.492218, 35.139305>,  <31.476603, 35.277100, 35.591801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955954, 35.492218, 35.139305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673658, 35.333939, 34.904236>,  <31.504282, 35.238972, 34.763195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673658, 35.333939, 34.904236>,  <31.955954, 35.492218, 35.139305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673658, 35.333939, 34.904236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216786, 0.669089, -0.710861,
		0.674522, -0.629063, -0.386394,
		-0.705709, -0.395726, -0.587687,
		31.461937, 35.215229, 34.727936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281853, 35.335064, 34.471458>,  <31.955954, 35.492218, 35.139305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281853, 35.335064, 34.471458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.885710, 35.363323, 34.423798>,  <31.648024, 35.380280, 34.395203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.885710, 35.363323, 34.423798>,  <32.281853, 35.335064, 34.471458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885710, 35.363323, 34.423798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137946, 0.581321, -0.801895,
		0.012610, -0.810601, -0.585463,
		-0.990359, 0.070651, -0.119150,
		31.588602, 35.384518, 34.388054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181889, 35.365063, 33.674271>,  <32.281853, 35.335064, 34.471458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181889, 35.365063, 33.674271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.850061, 35.504749, 33.848568>,  <31.650965, 35.588562, 33.953144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.850061, 35.504749, 33.848568>,  <32.181889, 35.365063, 33.674271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850061, 35.504749, 33.848568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132381, 0.635093, -0.761007,
		-0.542489, -0.688990, -0.480623,
		-0.829567, 0.349213, 0.435740,
		31.601191, 35.609512, 33.979290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691608, 35.350582, 33.175709>,  <32.181889, 35.365063, 33.674271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691608, 35.350582, 33.175709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.544374, 35.623829, 33.428013>,  <31.456034, 35.787777, 33.579395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.544374, 35.623829, 33.428013>,  <31.691608, 35.350582, 33.175709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544374, 35.623829, 33.428013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188920, 0.609289, -0.770114,
		-0.910397, -0.402631, -0.095216,
		-0.368086, 0.683122, 0.630760,
		31.433949, 35.828766, 33.617241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056383, 35.433353, 32.917419>,  <31.691608, 35.350582, 33.175709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056383, 35.433353, 32.917419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.127934, 35.748337, 33.153358>,  <31.170864, 35.937328, 33.294922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.127934, 35.748337, 33.153358>,  <31.056383, 35.433353, 32.917419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127934, 35.748337, 33.153358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240201, 0.616324, -0.749966,
		-0.954100, -0.007531, 0.299393,
		0.178875, 0.787457, 0.589844,
		31.181597, 35.984573, 33.330311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429691, 35.901264, 32.978367>,  <31.056383, 35.433353, 32.917419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429691, 35.901264, 32.978367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.724628, 36.154278, 33.073223>,  <30.901590, 36.306084, 33.130135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.724628, 36.154278, 33.073223>,  <30.429691, 35.901264, 32.978367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724628, 36.154278, 33.073223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250251, 0.581834, -0.773849,
		-0.627457, 0.511247, 0.587302,
		0.737341, 0.632531, 0.237136,
		30.945831, 36.344036, 33.144363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213799, 36.529800, 32.871792>,  <30.429691, 35.901264, 32.978367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213799, 36.529800, 32.871792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.592726, 36.653145, 32.906433>,  <30.820082, 36.727150, 32.927219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.592726, 36.653145, 32.906433>,  <30.213799, 36.529800, 32.871792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592726, 36.653145, 32.906433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135811, 0.631608, -0.763300,
		-0.290072, 0.711327, 0.640213,
		0.947319, 0.308359, 0.086606,
		30.876921, 36.745651, 32.932415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196823, 37.225266, 32.890114>,  <30.213799, 36.529800, 32.871792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196823, 37.225266, 32.890114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.549833, 37.124825, 32.731068>,  <30.761639, 37.064560, 32.635639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.549833, 37.124825, 32.731068>,  <30.196823, 37.225266, 32.890114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549833, 37.124825, 32.731068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186686, 0.588961, -0.786304,
		0.431626, 0.768161, 0.472893,
		0.882523, -0.251106, -0.397615,
		30.814590, 37.049492, 32.611782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520102, 37.931702, 32.583515>,  <30.196823, 37.225266, 32.890114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520102, 37.931702, 32.583515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.724651, 37.628319, 32.421906>,  <30.847382, 37.446289, 32.324940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.724651, 37.628319, 32.421906>,  <30.520102, 37.931702, 32.583515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724651, 37.628319, 32.421906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107961, 0.523123, -0.845392,
		0.852548, 0.388695, 0.349397,
		0.511377, -0.758458, -0.404023,
		30.878065, 37.400780, 32.300697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178833, 38.102245, 32.409210>,  <30.520102, 37.931702, 32.583515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178833, 38.102245, 32.409210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.070948, 37.795391, 32.176399>,  <31.006216, 37.611279, 32.036713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.070948, 37.795391, 32.176399>,  <31.178833, 38.102245, 32.409210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070948, 37.795391, 32.176399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186656, 0.551315, -0.813149,
		0.944677, -0.327957, -0.005508,
		-0.269714, -0.767135, -0.582030,
		30.990034, 37.565250, 32.001789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694361, 38.137775, 31.831604>,  <31.178833, 38.102245, 32.409210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694361, 38.137775, 31.831604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425934, 37.883476, 31.679029>,  <31.264877, 37.730896, 31.587484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425934, 37.883476, 31.679029>,  <31.694361, 38.137775, 31.831604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425934, 37.883476, 31.679029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019462, 0.499201, -0.866268,
		0.741143, -0.588745, -0.322623,
		-0.671065, -0.635750, -0.381437,
		31.224615, 37.692753, 31.564598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875505, 37.924187, 31.186087>,  <31.694361, 38.137775, 31.831604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875505, 37.924187, 31.186087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.482964, 37.847584, 31.179590>,  <31.247438, 37.801620, 31.175692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.482964, 37.847584, 31.179590>,  <31.875505, 37.924187, 31.186087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482964, 37.847584, 31.179590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046968, 0.320904, -0.945946,
		0.186367, -0.927548, -0.323916,
		-0.981357, -0.191507, -0.016241,
		31.188557, 37.790131, 31.174717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835182, 37.549332, 30.515648>,  <31.875505, 37.924187, 31.186087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835182, 37.549332, 30.515648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.461863, 37.663704, 30.602543>,  <31.237871, 37.732327, 30.654680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.461863, 37.663704, 30.602543>,  <31.835182, 37.549332, 30.515648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461863, 37.663704, 30.602543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093500, 0.390598, -0.915801,
		-0.346710, -0.875029, -0.337810,
		-0.933300, 0.285933, 0.217239,
		31.181873, 37.749485, 30.667715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433035, 37.372997, 29.879177>,  <31.835182, 37.549332, 30.515648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433035, 37.372997, 29.879177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.219700, 37.637363, 30.090361>,  <31.091700, 37.795982, 30.217070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.219700, 37.637363, 30.090361>,  <31.433035, 37.372997, 29.879177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219700, 37.637363, 30.090361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170294, 0.527466, -0.832334,
		-0.828584, -0.533823, -0.168766,
		-0.533337, 0.660919, 0.527957,
		31.059698, 37.835640, 30.248747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903606, 37.541565, 29.448395>,  <31.433035, 37.372997, 29.879177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903606, 37.541565, 29.448395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.863914, 37.848209, 29.702154>,  <30.840099, 38.032196, 29.854410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.863914, 37.848209, 29.702154>,  <30.903606, 37.541565, 29.448395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863914, 37.848209, 29.702154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369468, 0.563583, -0.738828,
		-0.923930, -0.307705, 0.227313,
		-0.099231, 0.766610, 0.634399,
		30.834145, 38.078194, 29.892473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148048, 37.743919, 29.414011>,  <30.903606, 37.541565, 29.448395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148048, 37.743919, 29.414011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.365507, 38.048580, 29.555052>,  <30.495983, 38.231377, 29.639677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.365507, 38.048580, 29.555052>,  <30.148048, 37.743919, 29.414011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365507, 38.048580, 29.555052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447405, 0.618427, -0.646047,
		-0.710123, 0.193467, 0.676975,
		0.543649, 0.761655, 0.352601,
		30.528603, 38.277077, 29.660831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735537, 38.289841, 29.397449>,  <30.148048, 37.743919, 29.414011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735537, 38.289841, 29.397449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.089170, 38.473412, 29.432735>,  <30.301352, 38.583553, 29.453907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.089170, 38.473412, 29.432735>,  <29.735537, 38.289841, 29.397449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089170, 38.473412, 29.432735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349623, 0.774777, -0.526768,
		-0.310092, 0.434866, 0.845419,
		0.884085, 0.458925, 0.088213,
		30.354397, 38.611088, 29.459200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624294, 38.921917, 29.556387>,  <29.735537, 38.289841, 29.397449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624294, 38.921917, 29.556387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.989401, 38.939121, 29.393904>,  <30.208466, 38.949444, 29.296413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.989401, 38.939121, 29.393904>,  <29.624294, 38.921917, 29.556387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989401, 38.939121, 29.393904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307380, 0.727260, -0.613686,
		0.269020, 0.685013, 0.677042,
		0.912768, 0.043015, -0.406207,
		30.263231, 38.952026, 29.272041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806488, 39.734425, 29.448500>,  <29.624294, 38.921917, 29.556387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806488, 39.734425, 29.448500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.080484, 39.523647, 29.247257>,  <30.244883, 39.397182, 29.126513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.080484, 39.523647, 29.247257>,  <29.806488, 39.734425, 29.448500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080484, 39.523647, 29.247257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103689, 0.754041, -0.648591,
		0.721133, 0.392114, 0.571151,
		0.684993, -0.526943, -0.503106,
		30.285982, 39.365566, 29.096325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320238, 40.239578, 29.315058>,  <29.806488, 39.734425, 29.448500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320238, 40.239578, 29.315058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.376659, 39.950546, 29.044359>,  <30.410513, 39.777126, 28.881941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.376659, 39.950546, 29.044359>,  <30.320238, 40.239578, 29.315058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376659, 39.950546, 29.044359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059987, 0.688562, -0.722692,
		0.988183, 0.061342, 0.140470,
		0.141054, -0.722578, -0.676745,
		30.418976, 39.733772, 28.841335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915903, 40.443409, 28.841427>,  <30.320238, 40.239578, 29.315058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915903, 40.443409, 28.841427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.686504, 40.172150, 28.657597>,  <30.548864, 40.009392, 28.547298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.686504, 40.172150, 28.657597>,  <30.915903, 40.443409, 28.841427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686504, 40.172150, 28.657597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028325, 0.544248, -0.838446,
		0.818717, -0.493864, -0.292917,
		-0.573498, -0.678154, -0.459574,
		30.514454, 39.968704, 28.519724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150434, 40.500423, 28.177814>,  <30.915903, 40.443409, 28.841427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150434, 40.500423, 28.177814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.805941, 40.302891, 28.129816>,  <30.599243, 40.184372, 28.101017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.805941, 40.302891, 28.129816>,  <31.150434, 40.500423, 28.177814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805941, 40.302891, 28.129816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172474, 0.506125, -0.845038,
		0.478038, -0.707084, -0.521068,
		-0.861239, -0.493831, -0.119994,
		30.547569, 40.154739, 28.093817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846054, 40.127270, 28.096493>,  <31.150434, 40.500423, 28.177814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846054, 40.127270, 28.096493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205215, 40.109608, 27.921305>,  <32.420712, 40.099010, 27.816193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205215, 40.109608, 27.921305>,  <31.846054, 40.127270, 28.096493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205215, 40.109608, 27.921305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373790, -0.448997, 0.811593,
		-0.232480, -0.892442, -0.386653,
		0.897905, -0.044152, -0.437968,
		32.474586, 40.096363, 27.789915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042946, 39.432171, 28.170078>,  <31.846054, 40.127270, 28.096493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042946, 39.432171, 28.170078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378040, 39.647591, 28.133938>,  <32.579098, 39.776840, 28.112253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378040, 39.647591, 28.133938>,  <32.042946, 39.432171, 28.170078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378040, 39.647591, 28.133938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406731, -0.504973, 0.761297,
		0.364368, -0.674516, -0.642078,
		0.837738, 0.538545, -0.090350,
		32.629360, 39.809155, 28.106833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581390, 38.997723, 28.151707>,  <32.042946, 39.432171, 28.170078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581390, 38.997723, 28.151707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.764351, 39.332211, 28.272715>,  <32.874126, 39.532906, 28.345320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.764351, 39.332211, 28.272715>,  <32.581390, 38.997723, 28.151707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764351, 39.332211, 28.272715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504895, -0.524250, 0.685743,
		0.732031, -0.160916, -0.661995,
		0.457398, 0.836222, 0.302521,
		32.901569, 39.583076, 28.363472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273491, 38.824249, 28.236052>,  <32.581390, 38.997723, 28.151707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273491, 38.824249, 28.236052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.221111, 39.145271, 28.468863>,  <33.189686, 39.337883, 28.608549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.221111, 39.145271, 28.468863>,  <33.273491, 38.824249, 28.236052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221111, 39.145271, 28.468863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433250, -0.481730, 0.761729,
		0.891711, 0.351909, -0.284627,
		-0.130946, 0.802556, 0.582028,
		33.181828, 39.386040, 28.643471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906631, 38.924801, 28.530848>,  <33.273491, 38.824249, 28.236052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906631, 38.924801, 28.530848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669155, 39.134418, 28.775112>,  <33.526669, 39.260189, 28.921671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669155, 39.134418, 28.775112>,  <33.906631, 38.924801, 28.530848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669155, 39.134418, 28.775112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367698, -0.498351, 0.785140,
		0.715771, 0.690671, 0.103178,
		-0.593692, 0.524042, 0.610663,
		33.491047, 39.291630, 28.958311>
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
