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
	<2.491569, 2.498752, 0.464931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.281746, 2.455452, 0.802717>,  <2.155852, 2.429472, 1.005389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.281746, 2.455452, 0.802717>,  <2.491569, 2.498752, 0.464931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.281746, 2.455452, 0.802717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622930, 0.627321, 0.467361,
		-0.580343, 0.771200, -0.261633,
		-0.524557, -0.108251, 0.844465,
		2.124379, 2.422977, 1.056057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.453999, 3.177304, 0.840698>,  <2.491569, 2.498752, 0.464931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.453999, 3.177304, 0.840698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.413502, 2.883888, 1.109524>,  <2.389204, 2.707839, 1.270819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.413502, 2.883888, 1.109524>,  <2.453999, 3.177304, 0.840698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.413502, 2.883888, 1.109524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762991, 0.376261, 0.525617,
		-0.638432, 0.565994, 0.521590,
		-0.101242, -0.733539, 0.672065,
		2.383129, 2.663827, 1.311143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.360377, 3.503249, 1.488116>,  <2.453999, 3.177304, 0.840698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.360377, 3.503249, 1.488116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.514278, 3.135105, 1.516125>,  <2.606619, 2.914219, 1.532930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.514278, 3.135105, 1.516125>,  <2.360377, 3.503249, 1.488116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.514278, 3.135105, 1.516125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848512, 0.382536, 0.365641,
		-0.363307, -0.081268, 0.928118,
		0.384754, -0.920359, 0.070021,
		2.629705, 2.858997, 1.537131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.555594, 3.480844, 2.167551>,  <2.360377, 3.503249, 1.488116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.555594, 3.480844, 2.167551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.771133, 3.212448, 1.963820>,  <2.900457, 3.051411, 1.841581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.771133, 3.212448, 1.963820>,  <2.555594, 3.480844, 2.167551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.771133, 3.212448, 1.963820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764161, 0.134875, 0.630767,
		-0.354542, -0.729096, 0.585422,
		0.538849, -0.670990, -0.509328,
		2.932788, 3.011151, 1.811021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.998109, 3.300606, 2.738062>,  <2.555594, 3.480844, 2.167551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.998109, 3.300606, 2.738062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.154331, 3.131805, 2.410799>,  <3.248065, 3.030525, 2.214442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.154331, 3.131805, 2.410799>,  <2.998109, 3.300606, 2.738062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.154331, 3.131805, 2.410799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916428, 0.093920, 0.389023,
		-0.087327, -0.901717, 0.423416,
		0.390556, -0.422003, -0.818156,
		3.271498, 3.005205, 2.165352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.431286, 2.821144, 3.012616>,  <2.998109, 3.300606, 2.738062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.431286, 2.821144, 3.012616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567078, 2.909557, 2.646906>,  <3.648552, 2.962605, 2.427480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567078, 2.909557, 2.646906>,  <3.431286, 2.821144, 3.012616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.567078, 2.909557, 2.646906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912464, 0.158631, 0.377156,
		0.228396, -0.962279, -0.147833,
		0.339478, 0.221034, -0.914275,
		3.668921, 2.975867, 2.372623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.049582, 2.348401, 2.887699>,  <3.431286, 2.821144, 3.012616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.049582, 2.348401, 2.887699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.082817, 2.650867, 2.628065>,  <4.102758, 2.832347, 2.472285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.082817, 2.650867, 2.628065>,  <4.049582, 2.348401, 2.887699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.082817, 2.650867, 2.628065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985734, 0.033304, 0.164982,
		0.146370, -0.653533, -0.742611,
		0.083089, 0.756165, -0.649084,
		4.107744, 2.877717, 2.433340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.589679, 2.107808, 2.400925>,  <4.049582, 2.348401, 2.887699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.589679, 2.107808, 2.400925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.563004, 2.506069, 2.426937>,  <4.546998, 2.745026, 2.442545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.563004, 2.506069, 2.426937>,  <4.589679, 2.107808, 2.400925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.563004, 2.506069, 2.426937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978751, 0.052613, 0.198190,
		0.193906, 0.076867, -0.978004,
		-0.066689, 0.995652, 0.065031,
		4.542997, 2.804765, 2.446446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.592884, 2.805379, 3.061678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.640106, 3.127224, 2.828899>,  <5.668440, 3.320331, 2.689232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.640106, 3.127224, 2.828899>,  <5.592884, 2.805379, 3.061678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.640106, 3.127224, 2.828899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992840, 0.106386, -0.054321,
		0.018204, 0.584193, 0.811411,
		0.118057, 0.804612, -0.581947,
		5.675523, 3.368608, 2.654315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.015122, 3.264613, 3.266801>,  <5.592884, 2.805379, 3.061678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.015122, 3.264613, 3.266801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.132278, 3.333294, 2.890560>,  <5.202572, 3.374502, 2.664815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.132278, 3.333294, 2.890560>,  <5.015122, 3.264613, 3.266801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.132278, 3.333294, 2.890560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951591, -0.043563, -0.304264,
		-0.093218, 0.984185, 0.150630,
		0.292890, 0.171701, -0.940603,
		5.220146, 3.384804, 2.608379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.843440, 3.960901, 2.907100>,  <5.015122, 3.264613, 3.266801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.843440, 3.960901, 2.907100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.862625, 3.660168, 2.644058>,  <4.874136, 3.479728, 2.486233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.862625, 3.660168, 2.644058>,  <4.843440, 3.960901, 2.907100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.862625, 3.660168, 2.644058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967582, 0.128464, -0.217442,
		0.247959, 0.646717, -0.721300,
		0.047962, -0.751834, -0.657606,
		4.877014, 3.434618, 2.446777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.469987, 4.133926, 2.273205>,  <4.843440, 3.960901, 2.907100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.469987, 4.133926, 2.273205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.464203, 3.736008, 2.313545>,  <4.460732, 3.497257, 2.337749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.464203, 3.736008, 2.313545>,  <4.469987, 4.133926, 2.273205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.464203, 3.736008, 2.313545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952294, -0.017047, -0.304705,
		0.304839, -0.100445, -0.947093,
		-0.014461, -0.994796, 0.100850,
		4.459865, 3.437569, 2.343800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.199666, 3.843308, 1.581885>,  <4.469987, 4.133926, 2.273205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.199666, 3.843308, 1.581885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.173447, 3.553944, 1.856804>,  <4.157715, 3.380325, 2.021755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.173447, 3.553944, 1.856804>,  <4.199666, 3.843308, 1.581885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.173447, 3.553944, 1.856804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871358, -0.294144, -0.392701,
		0.486249, -0.624624, -0.611071,
		-0.065547, -0.723412, 0.687298,
		4.153782, 3.336920, 2.062994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.127264, 3.289054, 1.207646>,  <4.199666, 3.843308, 1.581885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.127264, 3.289054, 1.207646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.981491, 3.195827, 1.568283>,  <3.894027, 3.139892, 1.784665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.981491, 3.195827, 1.568283>,  <4.127264, 3.289054, 1.207646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.981491, 3.195827, 1.568283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780718, -0.451281, -0.432232,
		0.507611, -0.861409, -0.017498,
		-0.364432, -0.233066, 0.901593,
		3.872161, 3.125908, 1.838761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.925171, 2.645186, 1.125889>,  <4.127264, 3.289054, 1.207646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.925171, 2.645186, 1.125889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.721817, 2.738617, 1.457428>,  <3.599805, 2.794676, 1.656351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.721817, 2.738617, 1.457428>,  <3.925171, 2.645186, 1.125889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.721817, 2.738617, 1.457428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832777, -0.378308, -0.404184,
		0.219151, -0.895726, 0.386844,
		-0.508385, 0.233577, 0.828847,
		3.569302, 2.808690, 1.706082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.627954, 1.993845, 1.382554>,  <3.925171, 2.645186, 1.125889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.627954, 1.993845, 1.382554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.420860, 2.311897, 1.508865>,  <3.296604, 2.502729, 1.584652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.420860, 2.311897, 1.508865>,  <3.627954, 1.993845, 1.382554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.420860, 2.311897, 1.508865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827918, -0.372610, -0.419182,
		-0.215642, -0.478464, 0.851217,
		-0.517735, 0.795131, 0.315779,
		3.265540, 2.550437, 1.603599>
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
