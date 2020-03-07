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
	<4.412274, 3.741512, 2.369708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.170509, 3.491512, 2.567320>,  <4.025451, 3.341513, 2.685887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.170509, 3.491512, 2.567320>,  <4.412274, 3.741512, 2.369708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.170509, 3.491512, 2.567320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155375, 0.515731, 0.842544,
		-0.781374, 0.586002, -0.214605,
		-0.604411, -0.624998, 0.494029,
		3.989186, 3.304013, 2.715529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.848811, 4.123105, 2.640187>,  <4.412274, 3.741512, 2.369708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.848811, 4.123105, 2.640187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.933670, 3.791801, 2.847641>,  <3.984586, 3.593019, 2.972113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.933670, 3.791801, 2.847641>,  <3.848811, 4.123105, 2.640187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.933670, 3.791801, 2.847641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115506, 0.548247, 0.828302,
		-0.970388, -0.115817, 0.211978,
		0.212148, -0.828258, 0.518634,
		3.997314, 3.543324, 3.003231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.428391, 4.009034, 3.296996>,  <3.848811, 4.123105, 2.640187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.428391, 4.009034, 3.296996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.794846, 3.851746, 3.328167>,  <4.014718, 3.757372, 3.346870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.794846, 3.851746, 3.328167>,  <3.428391, 4.009034, 3.296996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.794846, 3.851746, 3.328167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208039, 0.632546, 0.746060,
		-0.342660, -0.667279, 0.661304,
		0.916135, -0.393222, 0.077928,
		4.069686, 3.733779, 3.351545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.580706, 3.834990, 4.115509>,  <3.428391, 4.009034, 3.296996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.580706, 3.834990, 4.115509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.867264, 3.942814, 3.858102>,  <4.039199, 4.007508, 3.703658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.867264, 3.942814, 3.858102>,  <3.580706, 3.834990, 4.115509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.867264, 3.942814, 3.858102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217223, 0.790331, 0.572880,
		0.663017, -0.550195, 0.507634,
		0.716395, 0.269560, -0.643519,
		4.082182, 4.023682, 3.665046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.105346, 4.036170, 4.554759>,  <3.580706, 3.834990, 4.115509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.105346, 4.036170, 4.554759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.185745, 4.213203, 4.205195>,  <4.233985, 4.319424, 3.995457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.185745, 4.213203, 4.205195>,  <4.105346, 4.036170, 4.554759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.185745, 4.213203, 4.205195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361691, 0.795549, 0.486089,
		0.910373, -0.413788, -0.000174,
		0.200999, 0.442585, -0.873910,
		4.246045, 4.345979, 3.943022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.775404, 4.309824, 4.621351>,  <4.105346, 4.036170, 4.554759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.775404, 4.309824, 4.621351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.619865, 4.522148, 4.320144>,  <4.526542, 4.649543, 4.139420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.619865, 4.522148, 4.320144>,  <4.775404, 4.309824, 4.621351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.619865, 4.522148, 4.320144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245343, 0.847488, 0.470714,
		0.888034, -0.001711, -0.459775,
		-0.388848, 0.530812, -0.753018,
		4.503211, 4.681392, 4.094238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.281155, 4.950706, 4.416142>,  <4.775404, 4.309824, 4.621351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.281155, 4.950706, 4.416142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.921722, 5.050438, 4.271706>,  <4.706063, 5.110277, 4.185044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.921722, 5.050438, 4.271706>,  <5.281155, 4.950706, 4.416142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.921722, 5.050438, 4.271706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088454, 0.908921, 0.407479,
		0.429798, 0.334213, -0.838794,
		-0.898582, 0.249328, -0.361089,
		4.652148, 5.125237, 4.163379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.197079, 5.534724, 3.863710>,  <5.281155, 4.950706, 4.416142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.197079, 5.534724, 3.863710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.898010, 5.498028, 4.126790>,  <4.718569, 5.476010, 4.284638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.898010, 5.498028, 4.126790>,  <5.197079, 5.534724, 3.863710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.898010, 5.498028, 4.126790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146816, 0.943067, 0.298447,
		-0.647635, 0.319701, -0.691636,
		-0.747672, -0.091741, 0.657700,
		4.673708, 5.470505, 4.324100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.497535, 2.226791, 5.424881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.238876, 1.955643, 5.284973>,  <3.083681, 1.792953, 5.201029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.238876, 1.955643, 5.284973>,  <3.497535, 2.226791, 5.424881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.238876, 1.955643, 5.284973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410575, 0.077136, -0.908558,
		0.642866, -0.731122, 0.228438,
		-0.646647, -0.677872, -0.349768,
		3.044882, 1.752281, 5.180043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.846913, 1.704226, 5.162081>,  <3.497535, 2.226791, 5.424881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.846913, 1.704226, 5.162081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.503021, 1.678234, 4.959442>,  <3.296686, 1.662639, 4.837859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.503021, 1.678234, 4.959442>,  <3.846913, 1.704226, 5.162081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.503021, 1.678234, 4.959442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492020, 0.160764, -0.855612,
		0.137031, -0.984852, -0.106247,
		-0.859732, -0.064970, -0.506597,
		3.245102, 1.658741, 4.807463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.843761, 1.191014, 4.563342>,  <3.846913, 1.704226, 5.162081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.843761, 1.191014, 4.563342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.570831, 1.476780, 4.501318>,  <3.407073, 1.648240, 4.464103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.570831, 1.476780, 4.501318>,  <3.843761, 1.191014, 4.563342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.570831, 1.476780, 4.501318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407842, 0.195965, -0.891775,
		-0.606712, -0.671719, -0.425081,
		-0.682324, 0.714416, -0.155061,
		3.366134, 1.691105, 4.454800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.533075, 1.157657, 3.895679>,  <3.843761, 1.191014, 4.563342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.533075, 1.157657, 3.895679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.494904, 1.540539, 4.004969>,  <3.472001, 1.770268, 4.070542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.494904, 1.540539, 4.004969>,  <3.533075, 1.157657, 3.895679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.494904, 1.540539, 4.004969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559262, 0.278617, -0.780768,
		-0.823480, 0.078297, -0.561916,
		-0.095427, 0.957206, 0.273224,
		3.466275, 1.827700, 4.086936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.621565, 0.566401, 3.506918>,  <3.533075, 1.157657, 3.895679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.621565, 0.566401, 3.506918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.946350, 0.442795, 3.705000>,  <4.141221, 0.368631, 3.823849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.946350, 0.442795, 3.705000>,  <3.621565, 0.566401, 3.506918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.946350, 0.442795, 3.705000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055975, -0.803243, -0.593015,
		0.581020, 0.509225, -0.634906,
		0.811962, -0.309015, 0.495205,
		4.189939, 0.350090, 3.853561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.049572, 0.330970, 3.064074>,  <3.621565, 0.566401, 3.506918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.049572, 0.330970, 3.064074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.163719, 0.120594, 3.384562>,  <4.232208, -0.005631, 3.576854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.163719, 0.120594, 3.384562>,  <4.049572, 0.330970, 3.064074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.163719, 0.120594, 3.384562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004405, -0.835253, -0.549849,
		0.958408, 0.160439, -0.236038,
		0.285369, -0.525939, 0.801219,
		4.249330, -0.037188, 3.624927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.430517, -0.062427, 2.741821>,  <4.049572, 0.330970, 3.064074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.430517, -0.062427, 2.741821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.403580, -0.238728, 3.099861>,  <4.387417, -0.344508, 3.314685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.403580, -0.238728, 3.099861>,  <4.430517, -0.062427, 2.741821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.403580, -0.238728, 3.099861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040264, -0.895205, -0.443831,
		0.996917, -0.065929, 0.042540,
		-0.067344, -0.440750, 0.895100,
		4.383377, -0.370953, 3.368391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.936628, -0.549043, 2.839578>,  <4.430517, -0.062427, 2.741821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.936628, -0.549043, 2.839578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.624550, -0.665180, 3.061207>,  <4.437303, -0.734863, 3.194184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.624550, -0.665180, 3.061207>,  <4.936628, -0.549043, 2.839578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.624550, -0.665180, 3.061207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023981, -0.898987, -0.437318,
		0.625076, -0.327906, 0.708349,
		-0.780195, -0.290344, 0.554072,
		4.390491, -0.752283, 3.227428>
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
