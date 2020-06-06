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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.419976, 15.122230, 14.783211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.197312, 14.822413, 14.926497>,  <4.063714, 14.642524, 15.012468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.197312, 14.822413, 14.926497>,  <4.419976, 15.122230, 14.783211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.197312, 14.822413, 14.926497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637369, -0.108782, 0.762842,
		-0.532814, 0.652958, 0.538289,
		-0.556660, -0.749541, 0.358215,
		4.030314, 14.597551, 15.033961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.179238, 14.979849, 15.483788>,  <4.419976, 15.122230, 14.783211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.179238, 14.979849, 15.483788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.404190, 14.707945, 15.295465>,  <4.539160, 14.544803, 15.182472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.404190, 14.707945, 15.295465>,  <4.179238, 14.979849, 15.483788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.404190, 14.707945, 15.295465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807287, 0.328153, 0.490513,
		-0.178935, -0.655928, 0.733308,
		0.562379, -0.679760, -0.470804,
		4.572903, 14.504017, 15.154224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.703677, 14.947640, 16.008688>,  <4.179238, 14.979849, 15.483788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.703677, 14.947640, 16.008688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.781437, 14.989941, 15.618606>,  <4.828094, 15.015321, 15.384557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.781437, 14.989941, 15.618606>,  <4.703677, 14.947640, 16.008688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.781437, 14.989941, 15.618606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606088, 0.768744, 0.204181,
		0.771276, -0.630753, 0.085346,
		0.194397, 0.105753, -0.975205,
		4.839757, 15.021666, 15.326044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.226807, 15.604110, 16.139030>,  <4.703677, 14.947640, 16.008688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.226807, 15.604110, 16.139030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.616416, 15.694693, 16.139130>,  <5.850181, 15.749043, 16.139189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.616416, 15.694693, 16.139130>,  <5.226807, 15.604110, 16.139030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.616416, 15.694693, 16.139130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099969, -0.429002, -0.897755,
		-0.203197, 0.874457, -0.440495,
		0.974021, 0.226457, 0.000246,
		5.908622, 15.762630, 16.139204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.383403, 16.077080, 15.661013>,  <5.226807, 15.604110, 16.139030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.383403, 16.077080, 15.661013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.706897, 15.847523, 15.712542>,  <5.900993, 15.709788, 15.743459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.706897, 15.847523, 15.712542>,  <5.383403, 16.077080, 15.661013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.706897, 15.847523, 15.712542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038854, -0.270669, -0.961888,
		0.586889, 0.772907, -0.241197,
		0.808735, -0.573893, 0.128822,
		5.949518, 15.675355, 15.751188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.906197, 16.329060, 15.148080>,  <5.383403, 16.077080, 15.661013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.906197, 16.329060, 15.148080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.991343, 15.953530, 15.256373>,  <6.042431, 15.728212, 15.321349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.991343, 15.953530, 15.256373>,  <5.906197, 16.329060, 15.148080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.991343, 15.953530, 15.256373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100288, -0.254627, -0.961825,
		0.971921, 0.231890, 0.039952,
		0.212865, -0.938825, 0.270733,
		6.055202, 15.671883, 15.337593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.519256, 16.210258, 14.763746>,  <5.906197, 16.329060, 15.148080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.519256, 16.210258, 14.763746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.377037, 15.845361, 14.845130>,  <6.291705, 15.626422, 14.893960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.377037, 15.845361, 14.845130>,  <6.519256, 16.210258, 14.763746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.377037, 15.845361, 14.845130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008742, -0.214427, -0.976701,
		0.934617, -0.349042, 0.068264,
		-0.355547, -0.912245, 0.203458,
		6.270372, 15.571688, 14.906167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.937153, 15.753349, 14.273849>,  <6.519256, 16.210258, 14.763746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.937153, 15.753349, 14.273849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.615158, 15.565511, 14.418885>,  <6.421960, 15.452807, 14.505906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.615158, 15.565511, 14.418885>,  <6.937153, 15.753349, 14.273849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.615158, 15.565511, 14.418885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118649, -0.471381, -0.873912,
		0.581304, -0.746511, 0.323740,
		-0.804990, -0.469597, 0.362588,
		6.373661, 15.424632, 14.527661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.969752, 15.058180, 14.023161>,  <6.937153, 15.753349, 14.273849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.969752, 15.058180, 14.023161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.583288, 15.107656, 14.113704>,  <6.351410, 15.137342, 14.168030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.583288, 15.107656, 14.113704>,  <6.969752, 15.058180, 14.023161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.583288, 15.107656, 14.113704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257863, -0.485561, -0.835307,
		0.006590, -0.865408, 0.501024,
		-0.966159, 0.123691, 0.226357,
		6.293440, 15.144764, 14.181611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.707842, 14.468154, 13.848312>,  <6.969752, 15.058180, 14.023161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.707842, 14.468154, 13.848312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.386524, 14.705922, 13.863160>,  <6.193733, 14.848583, 13.872068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.386524, 14.705922, 13.863160>,  <6.707842, 14.468154, 13.848312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.386524, 14.705922, 13.863160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288857, -0.334339, -0.897095,
		-0.520843, -0.731355, 0.440276,
		-0.803296, 0.594422, 0.037119,
		6.145535, 14.884249, 13.874296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.153758, 14.083083, 13.678701>,  <6.707842, 14.468154, 13.848312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.153758, 14.083083, 13.678701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.048019, 14.458321, 13.589168>,  <5.984576, 14.683463, 13.535447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.048019, 14.458321, 13.589168>,  <6.153758, 14.083083, 13.678701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.048019, 14.458321, 13.589168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303080, -0.301138, -0.904134,
		-0.915567, -0.171165, 0.363922,
		-0.264346, 0.938093, -0.223835,
		5.968715, 14.739749, 13.522017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.566575, 14.031418, 13.274465>,  <6.153758, 14.083083, 13.678701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.566575, 14.031418, 13.274465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.697530, 14.403583, 13.208554>,  <5.776103, 14.626882, 13.169008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.697530, 14.403583, 13.208554>,  <5.566575, 14.031418, 13.274465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.697530, 14.403583, 13.208554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196814, -0.103414, -0.974971,
		-0.924165, 0.351624, 0.149262,
		0.327388, 0.930412, -0.164776,
		5.795747, 14.682706, 13.159122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.998895, 14.373992, 12.908042>,  <5.566575, 14.031418, 13.274465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.998895, 14.373992, 12.908042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.342222, 14.564357, 12.831310>,  <5.548219, 14.678576, 12.785272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.342222, 14.564357, 12.831310>,  <4.998895, 14.373992, 12.908042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.342222, 14.564357, 12.831310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228384, 0.019549, -0.973375,
		-0.459490, 0.879276, 0.125470,
		0.858318, 0.475911, -0.191830,
		5.599718, 14.707130, 12.773762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.903654, 14.868208, 12.374524>,  <4.998895, 14.373992, 12.908042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.903654, 14.868208, 12.374524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.300788, 14.823282, 12.358200>,  <5.539068, 14.796327, 12.348406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.300788, 14.823282, 12.358200>,  <4.903654, 14.868208, 12.374524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.300788, 14.823282, 12.358200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042757, -0.014984, -0.998973,
		0.111586, 0.993560, -0.019679,
		0.992835, -0.112313, -0.040810,
		5.598639, 14.789588, 12.345957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.074765, 15.365191, 11.894012>,  <4.903654, 14.868208, 12.374524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.074765, 15.365191, 11.894012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.357641, 15.083661, 11.920871>,  <5.527367, 14.914742, 11.936986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.357641, 15.083661, 11.920871>,  <5.074765, 15.365191, 11.894012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.357641, 15.083661, 11.920871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006825, -0.088170, -0.996082,
		0.706990, 0.704879, -0.057550,
		0.707191, -0.703827, 0.067146,
		5.569798, 14.872513, 11.941014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.528322, 15.493461, 11.213032>,  <5.074765, 15.365191, 11.894012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.528322, 15.493461, 11.213032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.623448, 15.124356, 11.334330>,  <5.680524, 14.902894, 11.407108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.623448, 15.124356, 11.334330>,  <5.528322, 15.493461, 11.213032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.623448, 15.124356, 11.334330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115958, -0.282997, -0.952085,
		0.964364, 0.261584, 0.039700,
		0.237815, -0.922760, 0.303244,
		5.694793, 14.847528, 11.425303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.140448, 15.393831, 10.917303>,  <5.528322, 15.493461, 11.213032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.140448, 15.393831, 10.917303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.007711, 15.023993, 10.992137>,  <5.928069, 14.802090, 11.037037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.007711, 15.023993, 10.992137>,  <6.140448, 15.393831, 10.917303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.007711, 15.023993, 10.992137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174748, -0.255142, -0.950981,
		0.927008, -0.282884, 0.246239,
		-0.331843, -0.924597, 0.187085,
		5.908158, 14.746614, 11.048263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.710901, 14.829123, 10.738352>,  <6.140448, 15.393831, 10.917303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.710901, 14.829123, 10.738352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.359804, 14.639693, 10.709243>,  <6.149146, 14.526035, 10.691777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.359804, 14.639693, 10.709243>,  <6.710901, 14.829123, 10.738352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.359804, 14.639693, 10.709243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222966, -0.269287, -0.936894,
		0.424093, -0.838577, 0.341956,
		-0.877742, -0.473574, -0.072772,
		6.096481, 14.497621, 10.687411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.889105, 14.284301, 10.312989>,  <6.710901, 14.829123, 10.738352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.889105, 14.284301, 10.312989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.490556, 14.313275, 10.295125>,  <6.251427, 14.330660, 10.284407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.490556, 14.313275, 10.295125>,  <6.889105, 14.284301, 10.312989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.490556, 14.313275, 10.295125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018455, -0.328395, -0.944360,
		-0.083073, -0.941759, 0.325867,
		-0.996372, 0.072437, -0.044661,
		6.191645, 14.335007, 10.281727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.711408, 13.709228, 9.874627>,  <6.889105, 14.284301, 10.312989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.711408, 13.709228, 9.874627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.403351, 13.964354, 9.878051>,  <6.218517, 14.117429, 9.880105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.403351, 13.964354, 9.878051>,  <6.711408, 13.709228, 9.874627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.403351, 13.964354, 9.878051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047207, -0.043610, -0.997933,
		-0.636123, -0.768955, 0.063695,
		-0.770142, 0.637814, 0.008559,
		6.172308, 14.155698, 9.880619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.209396, 13.469670, 9.396923>,  <6.711408, 13.709228, 9.874627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.209396, 13.469670, 9.396923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.118393, 13.855791, 9.448197>,  <6.063792, 14.087463, 9.478962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.118393, 13.855791, 9.448197>,  <6.209396, 13.469670, 9.396923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.118393, 13.855791, 9.448197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138410, 0.098245, -0.985490,
		-0.963890, -0.241948, 0.111256,
		-0.227507, 0.965303, 0.128185,
		6.050141, 14.145382, 9.486653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.716619, 13.608112, 8.886901>,  <6.209396, 13.469670, 9.396923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.716619, 13.608112, 8.886901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.860974, 13.962335, 9.003899>,  <5.947587, 14.174868, 9.074098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.860974, 13.962335, 9.003899>,  <5.716619, 13.608112, 8.886901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.860974, 13.962335, 9.003899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069253, 0.287317, -0.955329,
		-0.930035, 0.365020, 0.042362,
		0.360886, 0.885556, 0.292494,
		5.969240, 14.228002, 9.091647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.396260, 14.049682, 8.424876>,  <5.716619, 13.608112, 8.886901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.396260, 14.049682, 8.424876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.732380, 14.217902, 8.561716>,  <5.934052, 14.318834, 8.643820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.732380, 14.217902, 8.561716>,  <5.396260, 14.049682, 8.424876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.732380, 14.217902, 8.561716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205379, 0.337045, -0.918814,
		-0.501712, 0.842340, 0.196846,
		0.840300, 0.420552, 0.342099,
		5.984470, 14.344068, 8.664346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.401893, 14.484173, 7.997280>,  <5.396260, 14.049682, 8.424876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.401893, 14.484173, 7.997280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.765831, 14.537545, 8.154444>,  <5.984194, 14.569569, 8.248742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.765831, 14.537545, 8.154444>,  <5.401893, 14.484173, 7.997280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.765831, 14.537545, 8.154444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343261, 0.289989, -0.893353,
		-0.233139, 0.947683, 0.218044,
		0.909845, 0.133430, 0.392910,
		6.038785, 14.577574, 8.272317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.605722, 15.221426, 7.798570>,  <5.401893, 14.484173, 7.997280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.605722, 15.221426, 7.798570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.926272, 14.999768, 7.888658>,  <6.118601, 14.866774, 7.942710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.926272, 14.999768, 7.888658>,  <5.605722, 15.221426, 7.798570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.926272, 14.999768, 7.888658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426653, 0.265634, -0.864526,
		0.419247, 0.788899, 0.449299,
		0.801373, -0.554145, 0.225220,
		6.166684, 14.833525, 7.956223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.140731, 15.651384, 7.609263>,  <5.605722, 15.221426, 7.798570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.140731, 15.651384, 7.609263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.283178, 15.277749, 7.619549>,  <6.368647, 15.053568, 7.625721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.283178, 15.277749, 7.619549>,  <6.140731, 15.651384, 7.609263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.283178, 15.277749, 7.619549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519791, 0.175149, -0.836146,
		0.776529, 0.311134, 0.547903,
		0.356118, -0.934087, 0.025716,
		6.390014, 14.997523, 7.627264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.888761, 15.636435, 7.604144>,  <6.140731, 15.651384, 7.609263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.888761, 15.636435, 7.604144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.795790, 15.278355, 7.452041>,  <6.740007, 15.063507, 7.360780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.795790, 15.278355, 7.452041>,  <6.888761, 15.636435, 7.604144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.795790, 15.278355, 7.452041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373678, 0.278765, -0.884678,
		0.897965, -0.347717, 0.269724,
		-0.232428, -0.895200, -0.380256,
		6.726061, 15.009794, 7.337965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.525348, 15.359971, 7.407090>,  <6.888761, 15.636435, 7.604144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.525348, 15.359971, 7.407090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.211518, 15.220595, 7.201944>,  <7.023220, 15.136970, 7.078856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.211518, 15.220595, 7.201944>,  <7.525348, 15.359971, 7.407090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.211518, 15.220595, 7.201944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212025, 0.626522, -0.750010,
		0.582651, -0.697182, -0.417678,
		-0.784578, -0.348436, -0.512864,
		6.976145, 15.116064, 7.048084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.603700, 15.551771, 6.671374>,  <7.525348, 15.359971, 7.407090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.603700, 15.551771, 6.671374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.212032, 15.474954, 6.697744>,  <6.977031, 15.428864, 6.713566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.212032, 15.474954, 6.697744>,  <7.603700, 15.551771, 6.671374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.212032, 15.474954, 6.697744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192218, 0.772139, -0.605684,
		0.065414, -0.605739, -0.792970,
		-0.979170, -0.192043, 0.065925,
		6.918281, 15.417340, 6.717522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.912667, 16.156811, 6.166363>,  <7.603700, 15.551771, 6.671374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.912667, 16.156811, 6.166363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.146676, 16.142124, 5.842288>,  <8.287081, 16.133312, 5.647844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.146676, 16.142124, 5.842288>,  <7.912667, 16.156811, 6.166363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.146676, 16.142124, 5.842288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690090, -0.502264, 0.521063,
		-0.426059, -0.863935, -0.268499,
		0.585022, -0.036715, -0.810186,
		8.322183, 16.131109, 5.599233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.174679, 15.488118, 5.872614>,  <7.912667, 16.156811, 6.166363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.174679, 15.488118, 5.872614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.435004, 15.791231, 5.853816>,  <8.591199, 15.973099, 5.842537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.435004, 15.791231, 5.853816>,  <8.174679, 15.488118, 5.872614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.435004, 15.791231, 5.853816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457910, -0.342391, 0.820419,
		0.605609, -0.555458, -0.569828,
		0.650812, 0.757783, -0.046995,
		8.630248, 16.018566, 5.839717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.720511, 15.269248, 6.237073>,  <8.174679, 15.488118, 5.872614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.720511, 15.269248, 6.237073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.818284, 15.656398, 6.260648>,  <8.876947, 15.888687, 6.274793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.818284, 15.656398, 6.260648>,  <8.720511, 15.269248, 6.237073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.818284, 15.656398, 6.260648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218866, -0.114281, 0.969039,
		0.944643, -0.223964, -0.239769,
		0.244431, 0.967874, 0.058937,
		8.891613, 15.946760, 6.278329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.368930, 15.311728, 6.637757>,  <8.720511, 15.269248, 6.237073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.368930, 15.311728, 6.637757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.166381, 15.655955, 6.659712>,  <9.044851, 15.862492, 6.672885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.166381, 15.655955, 6.659712>,  <9.368930, 15.311728, 6.637757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.166381, 15.655955, 6.659712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278672, 0.103074, 0.954839,
		0.816045, 0.498800, -0.292009,
		-0.506372, 0.860567, 0.054889,
		9.014469, 15.914125, 6.676179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.733361, 15.823396, 6.957973>,  <9.368930, 15.311728, 6.637757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.733361, 15.823396, 6.957973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.360508, 15.961132, 7.002794>,  <9.136796, 16.043774, 7.029687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.360508, 15.961132, 7.002794>,  <9.733361, 15.823396, 6.957973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.360508, 15.961132, 7.002794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138803, 0.053957, 0.988849,
		0.334454, 0.937293, -0.098090,
		-0.932134, 0.344340, 0.112053,
		9.080868, 16.064434, 7.036410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.731274, 16.323320, 7.442032>,  <9.733361, 15.823396, 6.957973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.731274, 16.323320, 7.442032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.352811, 16.194592, 7.455980>,  <9.125733, 16.117353, 7.464349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.352811, 16.194592, 7.455980>,  <9.731274, 16.323320, 7.442032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.352811, 16.194592, 7.455980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124076, -0.261053, 0.957317,
		-0.298985, 0.910099, 0.286928,
		-0.946157, -0.321824, 0.034871,
		9.068964, 16.098043, 7.466442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.395658, 16.767971, 7.971304>,  <9.731274, 16.323320, 7.442032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.395658, 16.767971, 7.971304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.169048, 16.438555, 7.982823>,  <9.033082, 16.240906, 7.989735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.169048, 16.438555, 7.982823>,  <9.395658, 16.767971, 7.971304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.169048, 16.438555, 7.982823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079759, 0.089584, 0.992780,
		-0.820175, 0.560139, -0.116436,
		-0.566526, -0.823540, 0.028798,
		8.999090, 16.191492, 7.991463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.816644, 16.952204, 8.294003>,  <9.395658, 16.767971, 7.971304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.816644, 16.952204, 8.294003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.836781, 16.554319, 8.329817>,  <8.848863, 16.315588, 8.351305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.836781, 16.554319, 8.329817>,  <8.816644, 16.952204, 8.294003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.836781, 16.554319, 8.329817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292398, 0.071040, 0.953654,
		-0.954971, -0.074189, -0.287276,
		0.050342, -0.994711, 0.089534,
		8.851883, 16.255907, 8.356677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.227941, 16.761427, 8.668064>,  <8.816644, 16.952204, 8.294003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.227941, 16.761427, 8.668064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.441562, 16.423557, 8.682562>,  <8.569735, 16.220835, 8.691260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.441562, 16.423557, 8.682562>,  <8.227941, 16.761427, 8.668064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.441562, 16.423557, 8.682562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319160, -0.161723, 0.933800,
		-0.782896, -0.510265, -0.355954,
		0.534052, -0.844674, 0.036244,
		8.601777, 16.170155, 8.693435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.774320, 16.310946, 8.991660>,  <8.227941, 16.761427, 8.668064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.774320, 16.310946, 8.991660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.153186, 16.190971, 9.037121>,  <8.380506, 16.118988, 9.064398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.153186, 16.190971, 9.037121>,  <7.774320, 16.310946, 8.991660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.153186, 16.190971, 9.037121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161111, -0.138502, 0.977170,
		-0.277348, -0.943851, -0.179507,
		0.947164, -0.299937, 0.113652,
		8.437336, 16.100990, 9.071217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.692208, 15.766196, 9.456696>,  <7.774320, 16.310946, 8.991660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.692208, 15.766196, 9.456696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.060413, 15.922463, 9.459056>,  <8.281337, 16.016224, 9.460472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.060413, 15.922463, 9.459056>,  <7.692208, 15.766196, 9.456696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.060413, 15.922463, 9.459056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041658, 0.083121, 0.995668,
		0.388485, -0.916771, 0.092789,
		0.920513, 0.390668, 0.005900,
		8.336567, 16.039663, 9.460826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.137551, 15.214691, 9.815649>,  <7.692208, 15.766196, 9.456696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.137551, 15.214691, 9.815649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.308313, 15.575793, 9.836751>,  <8.410770, 15.792455, 9.849412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.308313, 15.575793, 9.836751>,  <8.137551, 15.214691, 9.815649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.308313, 15.575793, 9.836751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084992, -0.018024, 0.996219,
		0.900293, -0.429775, 0.069032,
		0.426905, 0.902756, 0.052754,
		8.436385, 15.846621, 9.852577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.512370, 15.194072, 10.439774>,  <8.137551, 15.214691, 9.815649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.512370, 15.194072, 10.439774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.544182, 15.586349, 10.368313>,  <8.563269, 15.821714, 10.325437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.544182, 15.586349, 10.368313>,  <8.512370, 15.194072, 10.439774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.544182, 15.586349, 10.368313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010261, 0.180015, 0.983611,
		0.996780, -0.076392, 0.024379,
		0.079529, 0.980693, -0.178651,
		8.568041, 15.880556, 10.314717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.230628, 15.390946, 10.678205>,  <8.512370, 15.194072, 10.439774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.230628, 15.390946, 10.678205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.985813, 15.707002, 10.664992>,  <8.838924, 15.896635, 10.657064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.985813, 15.707002, 10.664992>,  <9.230628, 15.390946, 10.678205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.985813, 15.707002, 10.664992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197196, 0.192932, 0.961192,
		0.765848, 0.581772, -0.273894,
		-0.612038, 0.790138, -0.033033,
		8.802202, 15.944043, 10.655083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.458031, 15.832446, 11.115640>,  <9.230628, 15.390946, 10.678205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.458031, 15.832446, 11.115640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.111686, 16.029991, 11.083685>,  <8.903879, 16.148518, 11.064512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.111686, 16.029991, 11.083685>,  <9.458031, 15.832446, 11.115640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.111686, 16.029991, 11.083685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056976, 0.255989, 0.964999,
		0.497028, 0.831005, -0.249789,
		-0.865862, 0.493864, -0.079886,
		8.851927, 16.178150, 11.059719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.611307, 16.248117, 11.620452>,  <9.458031, 15.832446, 11.115640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.611307, 16.248117, 11.620452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.216863, 16.237946, 11.554803>,  <8.980196, 16.231842, 11.515413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.216863, 16.237946, 11.554803>,  <9.611307, 16.248117, 11.620452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.216863, 16.237946, 11.554803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165699, 0.083698, 0.982618,
		-0.011249, 0.996167, -0.086749,
		-0.986112, -0.025428, -0.164122,
		8.921029, 16.230318, 11.505567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.257440, 16.904097, 12.022179>,  <9.611307, 16.248117, 11.620452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.257440, 16.904097, 12.022179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.016013, 16.588865, 11.973782>,  <8.871158, 16.399727, 11.944743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.016013, 16.588865, 11.973782>,  <9.257440, 16.904097, 12.022179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.016013, 16.588865, 11.973782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190365, -0.004924, 0.981701,
		-0.774254, 0.615554, -0.147051,
		-0.603566, -0.788079, -0.120993,
		8.834944, 16.352442, 11.937484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.717989, 16.979548, 12.416452>,  <9.257440, 16.904097, 12.022179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.717989, 16.979548, 12.416452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.689248, 16.586826, 12.346142>,  <8.672004, 16.351192, 12.303956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.689248, 16.586826, 12.346142>,  <8.717989, 16.979548, 12.416452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.689248, 16.586826, 12.346142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142456, -0.164323, 0.976066,
		-0.987190, 0.095174, -0.128057,
		-0.071853, -0.981804, -0.175776,
		8.667692, 16.292286, 12.293409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.152869, 16.752977, 12.783644>,  <8.717989, 16.979548, 12.416452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.152869, 16.752977, 12.783644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.313263, 16.392189, 12.719573>,  <8.409499, 16.175716, 12.681130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.313263, 16.392189, 12.719573>,  <8.152869, 16.752977, 12.783644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.313263, 16.392189, 12.719573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352593, -0.313338, 0.881758,
		-0.845511, -0.297095, -0.443673,
		0.400985, -0.901972, -0.160177,
		8.433558, 16.121597, 12.671520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.642576, 16.252178, 12.887852>,  <8.152869, 16.752977, 12.783644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.642576, 16.252178, 12.887852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.991148, 16.066492, 12.951241>,  <8.200292, 15.955080, 12.989274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.991148, 16.066492, 12.951241>,  <7.642576, 16.252178, 12.887852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.991148, 16.066492, 12.951241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324604, -0.303536, 0.895823,
		-0.367754, -0.832087, -0.415197,
		0.871430, -0.464217, 0.158472,
		8.252577, 15.927227, 12.998782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.479039, 15.606939, 13.268947>,  <7.642576, 16.252178, 12.887852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.479039, 15.606939, 13.268947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.866564, 15.661781, 13.351507>,  <8.099080, 15.694687, 13.401044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.866564, 15.661781, 13.351507>,  <7.479039, 15.606939, 13.268947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.866564, 15.661781, 13.351507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133637, -0.412342, 0.901174,
		0.208663, -0.900653, -0.381160,
		0.968814, 0.137105, 0.206401,
		8.157208, 15.702912, 13.413427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.650795, 15.005703, 13.615555>,  <7.479039, 15.606939, 13.268947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.650795, 15.005703, 13.615555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.955226, 15.252036, 13.697055>,  <8.137884, 15.399836, 13.745955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.955226, 15.252036, 13.697055>,  <7.650795, 15.005703, 13.615555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.955226, 15.252036, 13.697055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063027, -0.242414, 0.968124,
		0.645594, -0.749657, -0.145681,
		0.761076, 0.615833, 0.203749,
		8.183549, 15.436786, 13.758180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.123533, 14.650452, 13.890550>,  <7.650795, 15.005703, 13.615555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.123533, 14.650452, 13.890550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.180359, 15.029375, 14.005387>,  <8.214454, 15.256729, 14.074290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.180359, 15.029375, 14.005387>,  <8.123533, 14.650452, 13.890550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.180359, 15.029375, 14.005387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160200, -0.264209, 0.951068,
		0.976808, -0.181105, 0.114225,
		0.142064, 0.947309, 0.287094,
		8.222978, 15.313568, 14.091516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.531188, 14.573508, 14.364943>,  <8.123533, 14.650452, 13.890550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.531188, 14.573508, 14.364943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.399342, 14.944396, 14.436069>,  <8.320233, 15.166928, 14.478745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.399342, 14.944396, 14.436069>,  <8.531188, 14.573508, 14.364943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.399342, 14.944396, 14.436069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219407, -0.258416, 0.940788,
		0.918267, 0.271084, 0.288616,
		-0.329616, 0.927219, 0.177817,
		8.300457, 15.222562, 14.489414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.816645, 14.720885, 15.010879>,  <8.531188, 14.573508, 14.364943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.816645, 14.720885, 15.010879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.512781, 14.973301, 14.948005>,  <8.330463, 15.124750, 14.910280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.512781, 14.973301, 14.948005>,  <8.816645, 14.720885, 15.010879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.512781, 14.973301, 14.948005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217369, -0.018584, 0.975912,
		0.612919, 0.775528, 0.151286,
		-0.759658, 0.631040, -0.157186,
		8.284883, 15.162613, 14.900849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.894275, 15.219495, 15.561968>,  <8.816645, 14.720885, 15.010879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.894275, 15.219495, 15.561968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.511711, 15.244991, 15.447971>,  <8.282173, 15.260289, 15.379574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.511711, 15.244991, 15.447971>,  <8.894275, 15.219495, 15.561968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.511711, 15.244991, 15.447971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284766, 0.012786, 0.958512,
		0.064740, 0.997884, 0.005923,
		-0.956408, 0.063741, -0.284991,
		8.224789, 15.264113, 15.362473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.601157, 15.684570, 16.058363>,  <8.894275, 15.219495, 15.561968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.601157, 15.684570, 16.058363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.276972, 15.499225, 15.915009>,  <8.082460, 15.388018, 15.828996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.276972, 15.499225, 15.915009>,  <8.601157, 15.684570, 16.058363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.276972, 15.499225, 15.915009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298272, -0.200128, 0.933264,
		-0.504165, 0.863274, 0.023987,
		-0.810464, -0.463364, -0.358388,
		8.033833, 15.360215, 15.807492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.892191, 15.862149, 16.415411>,  <8.601157, 15.684570, 16.058363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.892191, 15.862149, 16.415411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.820133, 15.499460, 16.262886>,  <7.776898, 15.281847, 16.171371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.820133, 15.499460, 16.262886>,  <7.892191, 15.862149, 16.415411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.820133, 15.499460, 16.262886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618054, -0.197234, 0.760992,
		-0.765217, 0.372762, -0.524873,
		-0.180146, -0.906724, -0.381314,
		7.766089, 15.227443, 16.148493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.029572, 15.221584, 16.855574>,  <7.892191, 15.862149, 16.415411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.029572, 15.221584, 16.855574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.191873, 15.575828, 16.945963>,  <8.289253, 15.788374, 17.000196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.191873, 15.575828, 16.945963>,  <8.029572, 15.221584, 16.855574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.191873, 15.575828, 16.945963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464726, -0.412797, 0.783344,
		0.787017, -0.212828, -0.579058,
		0.405751, 0.885609, 0.225971,
		8.313598, 15.841510, 17.013754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.812065, 15.299800, 16.954163>,  <8.029572, 15.221584, 16.855574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.812065, 15.299800, 16.954163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.620165, 15.560505, 17.189125>,  <8.505025, 15.716928, 17.330103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.620165, 15.560505, 17.189125>,  <8.812065, 15.299800, 16.954163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.620165, 15.560505, 17.189125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583994, -0.262445, 0.768162,
		0.654820, 0.711568, -0.254717,
		-0.479751, 0.651762, 0.587406,
		8.476239, 15.756033, 17.365347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.278268, 15.441536, 17.400146>,  <8.812065, 15.299800, 16.954163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.278268, 15.441536, 17.400146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.940495, 15.512870, 17.602190>,  <8.737832, 15.555671, 17.723415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.940495, 15.512870, 17.602190>,  <9.278268, 15.441536, 17.400146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.940495, 15.512870, 17.602190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475118, -0.186129, 0.860011,
		0.247386, 0.966205, 0.072442,
		-0.844430, 0.178336, 0.505107,
		8.687166, 15.566371, 17.753723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.466477, 15.870081, 17.923035>,  <9.278268, 15.441536, 17.400146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.466477, 15.870081, 17.923035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.123013, 15.688254, 18.017756>,  <8.916935, 15.579159, 18.074587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.123013, 15.688254, 18.017756>,  <9.466477, 15.870081, 17.923035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.123013, 15.688254, 18.017756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330072, -0.136955, 0.933968,
		-0.392119, 0.880121, 0.267638,
		-0.858659, -0.454566, 0.236801,
		8.865416, 15.551885, 18.088797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.097917, 15.474933, 17.943136>,  <9.466477, 15.870081, 17.923035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.097917, 15.474933, 17.943136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.950820, 15.592729, 18.295963>,  <9.862562, 15.663406, 18.507660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.950820, 15.592729, 18.295963>,  <10.097917, 15.474933, 17.943136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.950820, 15.592729, 18.295963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673941, 0.569177, -0.470999,
		-0.640756, -0.767668, -0.010842,
		-0.367742, 0.294489, 0.882067,
		9.840497, 15.681075, 18.560583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.481936, 15.865471, 18.315155>,  <10.097917, 15.474933, 17.943136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.481936, 15.865471, 18.315155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.460942, 15.650182, 18.651623>,  <10.448346, 15.521008, 18.853502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.460942, 15.650182, 18.651623>,  <10.481936, 15.865471, 18.315155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.460942, 15.650182, 18.651623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691718, 0.587937, 0.419352,
		-0.720258, 0.603861, 0.341440,
		-0.052484, -0.538222, 0.841168,
		10.445197, 15.488715, 18.903973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.334832, 16.310678, 18.893421>,  <10.481936, 15.865471, 18.315155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.334832, 16.310678, 18.893421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.570994, 16.006590, 19.001856>,  <10.712691, 15.824137, 19.066917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.570994, 16.006590, 19.001856>,  <10.334832, 16.310678, 18.893421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.570994, 16.006590, 19.001856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674341, 0.649187, 0.351881,
		-0.443494, -0.024946, 0.895930,
		0.590404, -0.760220, 0.271089,
		10.748116, 15.778524, 19.083181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.502438, 16.403488, 19.563631>,  <10.334832, 16.310678, 18.893421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.502438, 16.403488, 19.563631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.802629, 16.189034, 19.409052>,  <10.982743, 16.060360, 19.316305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.802629, 16.189034, 19.409052>,  <10.502438, 16.403488, 19.563631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.802629, 16.189034, 19.409052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657613, 0.664002, 0.355876,
		0.065802, -0.521208, 0.850889,
		0.750477, -0.536138, -0.386446,
		11.027772, 16.028193, 19.293118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.829814, 16.419641, 20.087980>,  <10.502438, 16.403488, 19.563631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.829814, 16.419641, 20.087980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.068632, 16.319614, 19.783087>,  <11.211924, 16.259598, 19.600151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.068632, 16.319614, 19.783087>,  <10.829814, 16.419641, 20.087980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.068632, 16.319614, 19.783087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725628, 0.573492, 0.380225,
		0.342052, -0.780110, 0.523859,
		0.597046, -0.250069, -0.762234,
		11.247746, 16.244593, 19.554417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.454317, 16.261129, 20.400658>,  <10.829814, 16.419641, 20.087980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.454317, 16.261129, 20.400658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.559417, 16.329781, 20.020866>,  <11.622477, 16.370972, 19.792992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.559417, 16.329781, 20.020866>,  <11.454317, 16.261129, 20.400658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.559417, 16.329781, 20.020866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725563, 0.613523, 0.311685,
		0.636020, -0.770801, 0.036674,
		0.262748, 0.171629, -0.949478,
		11.638242, 16.381269, 19.736023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.103070, 16.157095, 20.384947>,  <11.454317, 16.261129, 20.400658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.103070, 16.157095, 20.384947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.087270, 16.357529, 20.039148>,  <12.077789, 16.477789, 19.831669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.087270, 16.357529, 20.039148>,  <12.103070, 16.157095, 20.384947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.087270, 16.357529, 20.039148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780649, 0.555523, 0.286324,
		0.623720, -0.663559, -0.413114,
		-0.039501, 0.501083, -0.864497,
		12.075419, 16.507853, 19.779799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.810795, 16.120319, 20.109180>,  <12.103070, 16.157095, 20.384947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.810795, 16.120319, 20.109180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.618980, 16.420368, 19.927031>,  <12.503892, 16.600397, 19.817741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.618980, 16.420368, 19.927031>,  <12.810795, 16.120319, 20.109180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.618980, 16.420368, 19.927031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794457, 0.591495, 0.137736,
		0.372670, -0.295726, -0.879582,
		-0.479536, 0.750120, -0.455374,
		12.475120, 16.645405, 19.790419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.371862, 16.462051, 19.712959>,  <12.810795, 16.120319, 20.109180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.371862, 16.462051, 19.712959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.078022, 16.724926, 19.780451>,  <12.901718, 16.882650, 19.820946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.078022, 16.724926, 19.780451>,  <13.371862, 16.462051, 19.712959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.078022, 16.724926, 19.780451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672458, 0.672076, 0.310022,
		0.090344, 0.341205, -0.935637,
		-0.734600, 0.657186, 0.168728,
		12.857642, 16.922081, 19.831070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.602797, 17.012606, 19.380009>,  <13.371862, 16.462051, 19.712959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.602797, 17.012606, 19.380009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.349918, 17.120749, 19.670454>,  <13.198192, 17.185635, 19.844721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.349918, 17.120749, 19.670454>,  <13.602797, 17.012606, 19.380009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.349918, 17.120749, 19.670454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673343, 0.655346, 0.342243,
		-0.383327, 0.705286, -0.596349,
		-0.632195, 0.270356, 0.726111,
		13.160260, 17.201855, 19.888287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.647121, 17.761385, 19.398802>,  <13.602797, 17.012606, 19.380009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.647121, 17.761385, 19.398802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.502248, 17.644554, 19.752867>,  <13.415323, 17.574455, 19.965305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.502248, 17.644554, 19.752867>,  <13.647121, 17.761385, 19.398802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.502248, 17.644554, 19.752867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530882, 0.715921, 0.453455,
		-0.766150, 0.634152, -0.104237,
		-0.362184, -0.292077, 0.885163,
		13.393593, 17.556931, 20.018415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.526400, 18.371819, 19.630766>,  <13.647121, 17.761385, 19.398802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.526400, 18.371819, 19.630766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.536231, 18.116318, 19.938374>,  <13.542130, 17.963017, 20.122938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.536231, 18.116318, 19.938374>,  <13.526400, 18.371819, 19.630766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.536231, 18.116318, 19.938374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471367, 0.685778, 0.554547,
		-0.881595, 0.348861, 0.317942,
		0.024578, -0.638753, 0.769020,
		13.543605, 17.924692, 20.169079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.157731, 18.791630, 20.155031>,  <13.526400, 18.371819, 19.630766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.157731, 18.791630, 20.155031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.384117, 18.505432, 20.318861>,  <13.519949, 18.333714, 20.417158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.384117, 18.505432, 20.318861>,  <13.157731, 18.791630, 20.155031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.384117, 18.505432, 20.318861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494746, 0.692160, 0.525492,
		-0.659478, -0.094774, 0.745726,
		0.565964, -0.715495, 0.409575,
		13.553906, 18.290783, 20.441734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.420768, 19.109550, 20.709087>,  <13.157731, 18.791630, 20.155031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.420768, 19.109550, 20.709087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.636975, 18.773577, 20.728495>,  <13.766700, 18.571993, 20.740139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.636975, 18.773577, 20.728495>,  <13.420768, 19.109550, 20.709087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.636975, 18.773577, 20.728495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656213, 0.456976, 0.600466,
		-0.526522, -0.292723, 0.798177,
		0.540518, -0.839932, 0.048519,
		13.799130, 18.521597, 20.743050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.781756, 19.178560, 21.360359>,  <13.420768, 19.109550, 20.709087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.781756, 19.178560, 21.360359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.983107, 18.896982, 21.159931>,  <14.103917, 18.728035, 21.039675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.983107, 18.896982, 21.159931>,  <13.781756, 19.178560, 21.360359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.983107, 18.896982, 21.159931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814929, 0.194002, 0.546126,
		-0.287235, -0.683244, 0.671323,
		0.503375, -0.703947, -0.501071,
		14.134119, 18.685799, 21.009609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.094091, 18.585371, 21.876827>,  <13.781756, 19.178560, 21.360359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.094091, 18.585371, 21.876827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.293492, 18.620899, 21.531897>,  <14.413133, 18.642216, 21.324938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.293492, 18.620899, 21.531897>,  <14.094091, 18.585371, 21.876827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.293492, 18.620899, 21.531897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859026, 0.083057, 0.505149,
		0.116492, -0.992578, -0.034898,
		0.498501, 0.088824, -0.862326,
		14.443043, 18.647545, 21.273199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.662947, 18.118315, 21.814651>,  <14.094091, 18.585371, 21.876827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.662947, 18.118315, 21.814651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.757134, 18.422213, 21.572218>,  <14.813647, 18.604551, 21.426758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.757134, 18.422213, 21.572218>,  <14.662947, 18.118315, 21.814651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.757134, 18.422213, 21.572218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819864, 0.179601, 0.543660,
		0.521897, -0.624924, -0.580598,
		0.235470, 0.759746, -0.606085,
		14.827776, 18.650137, 21.390392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.390807, 18.049994, 21.481462>,  <14.662947, 18.118315, 21.814651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.390807, 18.049994, 21.481462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.272534, 18.432079, 21.476763>,  <15.201571, 18.661331, 21.473944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.272534, 18.432079, 21.476763>,  <15.390807, 18.049994, 21.481462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.272534, 18.432079, 21.476763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839052, 0.265566, 0.474833,
		0.456687, 0.130541, -0.879998,
		-0.295683, 0.955214, -0.011749,
		15.183829, 18.718643, 21.473238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.988415, 18.344389, 21.477350>,  <15.390807, 18.049994, 21.481462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.988415, 18.344389, 21.477350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.768745, 18.671860, 21.544493>,  <15.636944, 18.868341, 21.584778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.768745, 18.671860, 21.544493>,  <15.988415, 18.344389, 21.477350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.768745, 18.671860, 21.544493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734917, 0.377472, 0.563394,
		0.397877, 0.432762, -0.808957,
		-0.549174, 0.818677, 0.167857,
		15.603993, 18.917463, 21.594851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.458942, 18.846067, 21.571312>,  <15.988415, 18.344389, 21.477350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.458942, 18.846067, 21.571312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.126619, 18.990564, 21.740669>,  <15.927225, 19.077263, 21.842283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.126619, 18.990564, 21.740669>,  <16.458942, 18.846067, 21.571312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.126619, 18.990564, 21.740669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556552, 0.535285, 0.635390,
		0.002896, 0.763526, -0.645770,
		-0.830808, 0.361245, 0.423392,
		15.877377, 19.098938, 21.867687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565678, 19.500570, 21.679770>,  <16.458942, 18.846067, 21.571312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.565678, 19.500570, 21.679770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.285187, 19.454391, 21.961182>,  <16.116892, 19.426683, 22.130028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.285187, 19.454391, 21.961182>,  <16.565678, 19.500570, 21.679770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.285187, 19.454391, 21.961182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537954, 0.561890, 0.628399,
		-0.467853, 0.819116, -0.331906,
		-0.701226, -0.115448, 0.703529,
		16.074820, 19.419758, 22.172241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428944, 20.140465, 21.994360>,  <16.565678, 19.500570, 21.679770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.428944, 20.140465, 21.994360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.319744, 19.876144, 22.274021>,  <16.254225, 19.717552, 22.441818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.319744, 19.876144, 22.274021>,  <16.428944, 20.140465, 21.994360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.319744, 19.876144, 22.274021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462025, 0.547394, 0.697777,
		-0.843803, 0.513519, 0.155868,
		-0.273000, -0.660801, 0.699152,
		16.237844, 19.677904, 22.483767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.172859, 20.541664, 22.598282>,  <16.428944, 20.140465, 21.994360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.172859, 20.541664, 22.598282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.251768, 20.177912, 22.744766>,  <16.299112, 19.959660, 22.832657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.251768, 20.177912, 22.744766>,  <16.172859, 20.541664, 22.598282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.251768, 20.177912, 22.744766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427440, 0.415962, 0.802665,
		-0.882258, -0.001808, 0.470762,
		0.197271, -0.909380, 0.366213,
		16.310949, 19.905098, 22.854630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874079, 20.543093, 23.307554>,  <16.172859, 20.541664, 22.598282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.874079, 20.543093, 23.307554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.175213, 20.282677, 23.268801>,  <16.355892, 20.126427, 23.245548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.175213, 20.282677, 23.268801>,  <15.874079, 20.543093, 23.307554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.175213, 20.282677, 23.268801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370058, 0.296922, 0.880281,
		-0.544333, -0.698558, 0.464456,
		0.752834, -0.651041, -0.096883,
		16.401064, 20.087364, 23.239737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.095678, 20.387131, 23.992638>,  <15.874079, 20.543093, 23.307554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.095678, 20.387131, 23.992638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.417818, 20.254671, 23.795965>,  <16.611103, 20.175196, 23.677961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.417818, 20.254671, 23.795965>,  <16.095678, 20.387131, 23.992638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.417818, 20.254671, 23.795965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561374, 0.159567, 0.812033,
		-0.190449, -0.929988, 0.314407,
		0.805350, -0.331151, -0.491681,
		16.659424, 20.155327, 23.648460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.458309, 20.026184, 24.488186>,  <16.095678, 20.387131, 23.992638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.458309, 20.026184, 24.488186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.728334, 20.072363, 24.196716>,  <16.890348, 20.100069, 24.021835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.728334, 20.072363, 24.196716>,  <16.458309, 20.026184, 24.488186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.728334, 20.072363, 24.196716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719359, 0.116226, 0.684846,
		0.163753, -0.986491, -0.004587,
		0.675061, 0.115445, -0.728674,
		16.930853, 20.106997, 23.978115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.979326, 19.645496, 24.728748>,  <16.458309, 20.026184, 24.488186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.979326, 19.645496, 24.728748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.145132, 19.878328, 24.448931>,  <17.244616, 20.018026, 24.281040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.145132, 19.878328, 24.448931>,  <16.979326, 19.645496, 24.728748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.145132, 19.878328, 24.448931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778202, 0.171785, 0.604063,
		0.471783, -0.794779, -0.381768,
		0.414515, 0.582079, -0.699544,
		17.269487, 20.052952, 24.239067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712318, 19.514284, 24.762562>,  <16.979326, 19.645496, 24.728748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.712318, 19.514284, 24.762562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.742670, 19.827984, 24.516245>,  <17.760881, 20.016203, 24.368456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.742670, 19.827984, 24.516245>,  <17.712318, 19.514284, 24.762562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.742670, 19.827984, 24.516245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913054, 0.193538, 0.358993,
		0.400718, -0.589490, -0.701374,
		0.075880, 0.784247, -0.615791,
		17.765434, 20.063257, 24.331507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.486849, 19.636902, 24.582525>,  <17.712318, 19.514284, 24.762562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.486849, 19.636902, 24.582525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.293264, 19.982807, 24.528912>,  <18.177113, 20.190350, 24.496744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.293264, 19.982807, 24.528912>,  <18.486849, 19.636902, 24.582525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.293264, 19.982807, 24.528912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734565, 0.484698, 0.474851,
		0.475599, 0.131353, -0.869800,
		-0.483963, 0.864763, -0.134034,
		18.148075, 20.242235, 24.488701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.050871, 20.147011, 24.347258>,  <18.486849, 19.636902, 24.582525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.050871, 20.147011, 24.347258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.731344, 20.339209, 24.492043>,  <18.539629, 20.454527, 24.578913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.731344, 20.339209, 24.492043>,  <19.050871, 20.147011, 24.347258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.731344, 20.339209, 24.492043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599827, 0.590350, 0.540088,
		0.045827, 0.648544, -0.759796,
		-0.798816, 0.480497, 0.361960,
		18.491699, 20.483358, 24.600630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.134731, 20.916454, 24.225054>,  <19.050871, 20.147011, 24.347258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.134731, 20.916454, 24.225054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.857838, 20.877451, 24.511076>,  <18.691702, 20.854048, 24.682690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.857838, 20.877451, 24.511076>,  <19.134731, 20.916454, 24.225054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.857838, 20.877451, 24.511076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564118, 0.544847, 0.620414,
		-0.450092, 0.832847, -0.322155,
		-0.692234, -0.097510, 0.715055,
		18.650167, 20.848198, 24.725592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.881056, 21.606472, 24.479305>,  <19.134731, 20.916454, 24.225054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.881056, 21.606472, 24.479305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.815613, 21.360125, 24.787575>,  <18.776346, 21.212317, 24.972536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.815613, 21.360125, 24.787575>,  <18.881056, 21.606472, 24.479305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.815613, 21.360125, 24.787575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469092, 0.638669, 0.609962,
		-0.867862, 0.461313, 0.184406,
		-0.163609, -0.615867, 0.770675,
		18.766531, 21.175365, 25.018778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.597343, 22.093641, 24.912535>,  <18.881056, 21.606472, 24.479305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.597343, 22.093641, 24.912535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.715469, 21.779879, 25.130707>,  <18.786345, 21.591621, 25.261610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.715469, 21.779879, 25.130707>,  <18.597343, 22.093641, 24.912535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.715469, 21.779879, 25.130707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391088, 0.620121, 0.680073,
		-0.871688, 0.012477, 0.489903,
		0.295313, -0.784407, 0.545432,
		18.804064, 21.544556, 25.294336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.681004, 22.378708, 25.684101>,  <18.597343, 22.093641, 24.912535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.681004, 22.378708, 25.684101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.872433, 22.028616, 25.712223>,  <18.987289, 21.818562, 25.729097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.872433, 22.028616, 25.712223>,  <18.681004, 22.378708, 25.684101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.872433, 22.028616, 25.712223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627876, 0.397092, 0.669395,
		-0.613792, -0.276210, 0.739572,
		0.478572, -0.875229, 0.070306,
		19.016005, 21.766047, 25.733315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.705332, 22.176758, 26.422729>,  <18.681004, 22.378708, 25.684101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.705332, 22.176758, 26.422729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976173, 21.960203, 26.223356>,  <19.138678, 21.830271, 26.103733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976173, 21.960203, 26.223356>,  <18.705332, 22.176758, 26.422729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.976173, 21.960203, 26.223356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690991, 0.234788, 0.683670,
		-0.253103, -0.807327, 0.533068,
		0.677104, -0.541385, -0.498431,
		19.179304, 21.797789, 26.073828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.990875, 21.662508, 26.897348>,  <18.705332, 22.176758, 26.422729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.990875, 21.662508, 26.897348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.263643, 21.723873, 26.611286>,  <19.427303, 21.760693, 26.439648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.263643, 21.723873, 26.611286>,  <18.990875, 21.662508, 26.897348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.263643, 21.723873, 26.611286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642589, 0.341383, 0.685957,
		0.349390, -0.927317, 0.134201,
		0.681913, 0.153430, -0.715160,
		19.468220, 21.769897, 26.396738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.645710, 21.360498, 27.117626>,  <18.990875, 21.662508, 26.897348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.645710, 21.360498, 27.117626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.738712, 21.635872, 26.842817>,  <19.794514, 21.801096, 26.677933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.738712, 21.635872, 26.842817>,  <19.645710, 21.360498, 27.117626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.738712, 21.635872, 26.842817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686097, 0.384571, 0.617557,
		0.689356, -0.614949, -0.382918,
		0.232507, 0.688436, -0.687020,
		19.808464, 21.842403, 26.636711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.407452, 21.317268, 27.067219>,  <19.645710, 21.360498, 27.117626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.407452, 21.317268, 27.067219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.304129, 21.681580, 26.938374>,  <20.242134, 21.900167, 26.861067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.304129, 21.681580, 26.938374>,  <20.407452, 21.317268, 27.067219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.304129, 21.681580, 26.938374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695812, 0.406703, 0.591978,
		0.670166, -0.071218, -0.738786,
		-0.258307, 0.910780, -0.322114,
		20.226637, 21.954813, 26.841740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.102505, 21.673237, 26.994171>,  <20.407452, 21.317268, 27.067219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.102505, 21.673237, 26.994171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.847364, 21.980616, 26.973646>,  <20.694281, 22.165043, 26.961330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.847364, 21.980616, 26.973646>,  <21.102505, 21.673237, 26.994171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.847364, 21.980616, 26.973646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668890, 0.585775, 0.457661,
		0.381747, 0.257596, -0.887645,
		-0.637852, 0.768447, -0.051314,
		20.656008, 22.211149, 26.958252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.461424, 22.164000, 26.717245>,  <21.102505, 21.673237, 26.994171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.461424, 22.164000, 26.717245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.175066, 22.346111, 26.928986>,  <21.003252, 22.455379, 27.056030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.175066, 22.346111, 26.928986>,  <21.461424, 22.164000, 26.717245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.175066, 22.346111, 26.928986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698056, 0.482527, 0.529042,
		-0.014565, 0.748256, -0.663250,
		-0.715895, 0.455280, 0.529353,
		20.960297, 22.482695, 27.087791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.668226, 22.819616, 26.738075>,  <21.461424, 22.164000, 26.717245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.668226, 22.819616, 26.738075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.391939, 22.831829, 27.027067>,  <21.226166, 22.839157, 27.200462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.391939, 22.831829, 27.027067>,  <21.668226, 22.819616, 26.738075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.391939, 22.831829, 27.027067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648762, 0.467465, 0.600487,
		-0.319399, 0.883484, -0.342695,
		-0.690719, 0.030532, 0.722478,
		21.184723, 22.840988, 27.243811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.431767, 23.483816, 27.041382>,  <21.668226, 22.819616, 26.738075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.431767, 23.483816, 27.041382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.385651, 23.218010, 27.336714>,  <21.357981, 23.058527, 27.513912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.385651, 23.218010, 27.336714>,  <21.431767, 23.483816, 27.041382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.385651, 23.218010, 27.336714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590132, 0.552076, 0.589030,
		-0.799033, 0.503619, 0.328504,
		-0.115288, -0.664515, 0.738328,
		21.351065, 23.018656, 27.558212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.310598, 23.921640, 27.613379>,  <21.431767, 23.483816, 27.041382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.310598, 23.921640, 27.613379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.364483, 23.562489, 27.781029>,  <21.396814, 23.346998, 27.881618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.364483, 23.562489, 27.781029>,  <21.310598, 23.921640, 27.613379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.364483, 23.562489, 27.781029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621442, 0.406012, 0.670048,
		-0.771792, 0.170199, 0.612674,
		0.134711, -0.897879, 0.419126,
		21.404896, 23.293125, 27.906767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.195496, 24.052912, 28.373861>,  <21.310598, 23.921640, 27.613379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.195496, 24.052912, 28.373861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.433407, 23.739279, 28.302919>,  <21.576153, 23.551100, 28.260355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.433407, 23.739279, 28.302919>,  <21.195496, 24.052912, 28.373861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.433407, 23.739279, 28.302919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723824, 0.426362, 0.542489,
		-0.349739, -0.451034, 0.821128,
		0.594779, -0.784082, -0.177353,
		21.611841, 23.504055, 28.249714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.445881, 23.889696, 29.045643>,  <21.195496, 24.052912, 28.373861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.445881, 23.889696, 29.045643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686701, 23.755575, 28.755785>,  <21.831192, 23.675102, 28.581871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686701, 23.755575, 28.755785>,  <21.445881, 23.889696, 29.045643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686701, 23.755575, 28.755785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766532, 0.496787, 0.406979,
		0.223533, -0.800484, 0.556110,
		0.602048, -0.335303, -0.724645,
		21.867315, 23.654984, 28.538391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.913689, 23.561909, 29.391966>,  <21.445881, 23.889696, 29.045643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.913689, 23.561909, 29.391966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.060686, 23.699736, 29.046431>,  <22.148886, 23.782433, 28.839109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.060686, 23.699736, 29.046431>,  <21.913689, 23.561909, 29.391966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.060686, 23.699736, 29.046431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682421, 0.531147, 0.502180,
		0.631861, -0.774051, -0.039947,
		0.367495, 0.344569, -0.863840,
		22.170935, 23.803106, 28.787279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.610254, 23.417654, 29.371490>,  <21.913689, 23.561909, 29.391966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.610254, 23.417654, 29.371490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.598560, 23.720474, 29.110411>,  <22.591545, 23.902166, 28.953762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.598560, 23.720474, 29.110411>,  <22.610254, 23.417654, 29.371490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.598560, 23.720474, 29.110411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648972, 0.511015, 0.563648,
		0.760250, -0.407108, -0.506244,
		-0.029233, 0.757052, -0.652701,
		22.589790, 23.947590, 28.914600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.397484, 22.820396, 29.805840>,  <22.610254, 23.417654, 29.371490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.397484, 22.820396, 29.805840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.626772, 22.493834, 29.833818>,  <22.764345, 22.297895, 29.850605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.626772, 22.493834, 29.833818>,  <22.397484, 22.820396, 29.805840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.626772, 22.493834, 29.833818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727944, 0.546573, 0.413951,
		-0.376184, -0.186369, 0.907608,
		0.573222, -0.816410, 0.069946,
		22.798738, 22.248911, 29.854803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.740387, 22.838060, 30.460840>,  <22.397484, 22.820396, 29.805840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.740387, 22.838060, 30.460840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.942297, 22.601942, 30.208887>,  <23.063442, 22.460272, 30.057714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.942297, 22.601942, 30.208887>,  <22.740387, 22.838060, 30.460840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.942297, 22.601942, 30.208887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830462, 0.531249, 0.167654,
		0.235660, -0.607722, 0.758379,
		0.504775, -0.590295, -0.629884,
		23.093729, 22.424854, 30.019922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.958542, 23.458242, 30.326380>,  <22.740387, 22.838060, 30.460840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.958542, 23.458242, 30.326380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.242620, 23.298491, 30.558283>,  <23.413067, 23.202639, 30.697424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.242620, 23.298491, 30.558283>,  <22.958542, 23.458242, 30.326380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.242620, 23.298491, 30.558283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010982, -0.817126, -0.576354,
		0.703919, 0.415691, -0.575933,
		0.710196, -0.399381, 0.579756,
		23.455679, 23.178677, 30.732210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.269508, 23.023472, 29.863459>,  <22.958542, 23.458242, 30.326380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.269508, 23.023472, 29.863459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.455359, 22.895222, 30.193626>,  <23.566870, 22.818272, 30.391727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.455359, 22.895222, 30.193626>,  <23.269508, 23.023472, 29.863459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.455359, 22.895222, 30.193626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195607, -0.946281, -0.257467,
		0.863631, -0.041832, -0.502385,
		0.464628, -0.320626, 0.825421,
		23.594748, 22.799034, 30.441254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.877493, 22.423265, 29.739525>,  <23.269508, 23.023472, 29.863459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.877493, 22.423265, 29.739525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.662386, 22.430435, 30.076685>,  <23.533321, 22.434736, 30.278982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.662386, 22.430435, 30.076685>,  <23.877493, 22.423265, 29.739525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.662386, 22.430435, 30.076685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338591, -0.920197, -0.196452,
		0.772115, -0.391045, 0.500922,
		-0.537768, 0.017924, 0.842902,
		23.501055, 22.435812, 30.329556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.844303, 21.748814, 29.860086>,  <23.877493, 22.423265, 29.739525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.844303, 21.748814, 29.860086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.552061, 21.943661, 30.051476>,  <23.376717, 22.060568, 30.166309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.552061, 21.943661, 30.051476>,  <23.844303, 21.748814, 29.860086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.552061, 21.943661, 30.051476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640663, -0.731412, -0.233638,
		0.236152, -0.477236, 0.846451,
		-0.730605, 0.487116, 0.478472,
		23.332880, 22.089796, 30.195017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.419937, 21.297724, 30.411894>,  <23.844303, 21.748814, 29.860086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.419937, 21.297724, 30.411894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.207947, 21.597988, 30.254091>,  <23.080753, 21.778147, 30.159410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.207947, 21.597988, 30.254091>,  <23.419937, 21.297724, 30.411894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.207947, 21.597988, 30.254091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786495, -0.609058, -0.102339,
		-0.317098, 0.256040, 0.913177,
		-0.529975, 0.750661, -0.394506,
		23.048954, 21.823187, 30.135740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.805700, 21.176228, 30.625223>,  <23.419937, 21.297724, 30.411894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.805700, 21.176228, 30.625223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.727680, 21.404072, 30.305849>,  <22.680868, 21.540779, 30.114223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.727680, 21.404072, 30.305849>,  <22.805700, 21.176228, 30.625223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.727680, 21.404072, 30.305849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824335, -0.536309, -0.181233,
		-0.531442, 0.622834, 0.574149,
		-0.195044, 0.569606, -0.798440,
		22.669167, 21.574955, 30.066319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.106859, 21.242107, 30.688297>,  <22.805700, 21.176228, 30.625223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.106859, 21.242107, 30.688297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.163406, 21.366854, 30.312477>,  <22.197334, 21.441702, 30.086985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.163406, 21.366854, 30.312477>,  <22.106859, 21.242107, 30.688297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.163406, 21.366854, 30.312477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861562, -0.428680, -0.271927,
		-0.487571, 0.847922, 0.208092,
		0.141368, 0.311868, -0.939550,
		22.205816, 21.460415, 30.030613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.439699, 21.491192, 30.411352>,  <22.106859, 21.242107, 30.688297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.439699, 21.491192, 30.411352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.663555, 21.433712, 30.084879>,  <21.797869, 21.399225, 29.888994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.663555, 21.433712, 30.084879>,  <21.439699, 21.491192, 30.411352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.663555, 21.433712, 30.084879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762647, -0.474700, -0.439352,
		-0.324308, 0.868338, -0.375251,
		0.559638, -0.143699, -0.816184,
		21.831446, 21.390602, 29.840023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.033560, 21.721754, 29.897837>,  <21.439699, 21.491192, 30.411352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.033560, 21.721754, 29.897837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.295458, 21.474287, 29.724144>,  <21.452597, 21.325806, 29.619928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.295458, 21.474287, 29.724144>,  <21.033560, 21.721754, 29.897837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.295458, 21.474287, 29.724144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755753, -0.526683, -0.389157,
		0.012057, 0.582970, -0.812404,
		0.654746, -0.618669, -0.434231,
		21.491882, 21.288687, 29.593874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.676701, 21.581278, 29.341042>,  <21.033560, 21.721754, 29.897837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.676701, 21.581278, 29.341042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.947430, 21.287416, 29.359776>,  <21.109867, 21.111099, 29.371016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.947430, 21.287416, 29.359776>,  <20.676701, 21.581278, 29.341042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.947430, 21.287416, 29.359776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618690, -0.602160, -0.504605,
		0.398912, 0.312552, -0.862079,
		0.676825, -0.734653, 0.046836,
		21.150476, 21.067020, 29.373827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.459805, 21.211269, 28.841509>,  <20.676701, 21.581278, 29.341042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.459805, 21.211269, 28.841509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.716196, 20.948219, 28.999836>,  <20.870031, 20.790388, 29.094831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.716196, 20.948219, 28.999836>,  <20.459805, 21.211269, 28.841509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.716196, 20.948219, 28.999836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476335, -0.745180, -0.466703,
		0.601870, 0.110607, -0.790897,
		0.640981, -0.657627, 0.395816,
		20.908491, 20.750931, 29.118580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.833067, 20.882069, 28.213194>,  <20.459805, 21.211269, 28.841509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.833067, 20.882069, 28.213194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.838139, 20.642851, 28.533739>,  <20.841183, 20.499321, 28.726067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.838139, 20.642851, 28.533739>,  <20.833067, 20.882069, 28.213194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.838139, 20.642851, 28.533739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374420, -0.745962, -0.550772,
		0.927173, -0.293063, -0.233378,
		0.012680, -0.598042, 0.801364,
		20.841942, 20.463438, 28.774149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.267988, 20.261831, 27.965994>,  <20.833067, 20.882069, 28.213194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.267988, 20.261831, 27.965994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.018791, 20.172062, 28.265730>,  <20.869272, 20.118200, 28.445572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.018791, 20.172062, 28.265730>,  <21.267988, 20.261831, 27.965994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.018791, 20.172062, 28.265730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333046, -0.790693, -0.513698,
		0.707785, -0.569596, 0.417853,
		-0.622993, -0.224423, 0.749342,
		20.831894, 20.104734, 28.490532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.258642, 19.581629, 28.057774>,  <21.267988, 20.261831, 27.965994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.258642, 19.581629, 28.057774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.912325, 19.691830, 28.224865>,  <20.704535, 19.757950, 28.325121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.912325, 19.691830, 28.224865>,  <21.258642, 19.581629, 28.057774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.912325, 19.691830, 28.224865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481677, -0.685048, -0.546532,
		0.135595, -0.674395, 0.725813,
		-0.865795, 0.275500, 0.417730,
		20.652586, 19.774479, 28.350183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.934341, 18.978081, 28.085997>,  <21.258642, 19.581629, 28.057774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.934341, 18.978081, 28.085997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.638777, 19.243174, 28.134651>,  <20.461437, 19.402229, 28.163843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.638777, 19.243174, 28.134651>,  <20.934341, 18.978081, 28.085997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.638777, 19.243174, 28.134651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638174, -0.630425, -0.441926,
		-0.216195, -0.404170, 0.888767,
		-0.738914, 0.662730, 0.121636,
		20.417103, 19.441992, 28.171143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.345560, 18.576971, 28.099890>,  <20.934341, 18.978081, 28.085997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.345560, 18.576971, 28.099890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.180628, 18.933779, 28.025826>,  <20.081669, 19.147863, 27.981386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.180628, 18.933779, 28.025826>,  <20.345560, 18.576971, 28.099890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180628, 18.933779, 28.025826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716436, -0.443034, -0.538925,
		-0.562765, -0.089557, 0.821751,
		-0.412329, 0.892020, -0.185163,
		20.056929, 19.201385, 27.970278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.637665, 18.548452, 28.127380>,  <20.345560, 18.576971, 28.099890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.637665, 18.548452, 28.127380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679895, 18.873476, 27.898087>,  <19.705235, 19.068491, 27.760509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679895, 18.873476, 27.898087>,  <19.637665, 18.548452, 28.127380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.679895, 18.873476, 27.898087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851088, -0.224303, -0.474698,
		-0.514298, 0.537992, 0.667879,
		0.105576, 0.812559, -0.573237,
		19.711569, 19.117245, 27.726116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.981756, 18.820528, 28.087561>,  <19.637665, 18.548452, 28.127380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.981756, 18.820528, 28.087561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.188917, 18.983025, 27.786430>,  <19.313213, 19.080523, 27.605753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.188917, 18.983025, 27.786430>,  <18.981756, 18.820528, 28.087561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.188917, 18.983025, 27.786430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714961, -0.277641, -0.641675,
		-0.469690, 0.870565, 0.146656,
		0.517902, 0.406241, -0.752825,
		19.344288, 19.104897, 27.560583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.513607, 19.322969, 27.722836>,  <18.981756, 18.820528, 28.087561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.513607, 19.322969, 27.722836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.808353, 19.231400, 27.468395>,  <18.985201, 19.176456, 27.315731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.808353, 19.231400, 27.468395>,  <18.513607, 19.322969, 27.722836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.808353, 19.231400, 27.468395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674635, -0.309661, -0.670058,
		-0.043582, 0.922877, -0.382620,
		0.736864, -0.228926, -0.636101,
		19.029413, 19.162722, 27.277565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.357527, 19.620117, 27.053894>,  <18.513607, 19.322969, 27.722836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.357527, 19.620117, 27.053894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.613150, 19.327801, 26.957932>,  <18.766523, 19.152411, 26.900354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.613150, 19.327801, 26.957932>,  <18.357527, 19.620117, 27.053894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.613150, 19.327801, 26.957932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593052, -0.269536, -0.758709,
		0.489794, 0.627133, -0.605645,
		0.639055, -0.730790, -0.239905,
		18.804867, 19.108564, 26.885960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.453323, 19.626608, 26.210384>,  <18.357527, 19.620117, 27.053894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.453323, 19.626608, 26.210384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.555496, 19.272779, 26.366482>,  <18.616800, 19.060482, 26.460140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.555496, 19.272779, 26.366482>,  <18.453323, 19.626608, 26.210384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.555496, 19.272779, 26.366482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476258, -0.466384, -0.745428,
		0.841387, 0.004550, -0.540414,
		0.255433, -0.884570, 0.390243,
		18.632126, 19.007408, 26.483555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.766434, 19.199320, 25.651085>,  <18.453323, 19.626608, 26.210384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.766434, 19.199320, 25.651085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623804, 18.966539, 25.943436>,  <18.538225, 18.826870, 26.118847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623804, 18.966539, 25.943436>,  <18.766434, 19.199320, 25.651085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623804, 18.966539, 25.943436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432737, -0.590447, -0.681257,
		0.828005, -0.559198, -0.041294,
		-0.356575, -0.581953, 0.730879,
		18.516832, 18.791954, 26.162699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.006124, 18.465378, 25.469912>,  <18.766434, 19.199320, 25.651085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.006124, 18.465378, 25.469912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.724697, 18.399834, 25.746504>,  <18.555841, 18.360506, 25.912458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.724697, 18.399834, 25.746504>,  <19.006124, 18.465378, 25.469912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.724697, 18.399834, 25.746504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432052, -0.673917, -0.599305,
		0.564203, -0.720406, 0.403349,
		-0.703567, -0.163862, 0.691479,
		18.513626, 18.350676, 25.953947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.838387, 17.774467, 25.420013>,  <19.006124, 18.465378, 25.469912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.838387, 17.774467, 25.420013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.540188, 17.893829, 25.658403>,  <18.361269, 17.965446, 25.801437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.540188, 17.893829, 25.658403>,  <18.838387, 17.774467, 25.420013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.540188, 17.893829, 25.658403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589849, -0.711726, -0.381476,
		0.310339, -0.635926, 0.706603,
		-0.745498, 0.298402, 0.595977,
		18.316538, 17.983351, 25.837196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.581835, 17.158340, 25.521366>,  <18.838387, 17.774467, 25.420013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.581835, 17.158340, 25.521366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311169, 17.443804, 25.593828>,  <18.148769, 17.615082, 25.637304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311169, 17.443804, 25.593828>,  <18.581835, 17.158340, 25.521366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.311169, 17.443804, 25.593828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722732, -0.596789, -0.348570,
		-0.140648, -0.366791, 0.919610,
		-0.676666, 0.713657, 0.181154,
		18.108170, 17.657902, 25.648174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.971109, 16.797560, 25.741280>,  <18.581835, 17.158340, 25.521366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.971109, 16.797560, 25.741280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.849659, 17.151638, 25.600290>,  <17.776789, 17.364086, 25.515696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.849659, 17.151638, 25.600290>,  <17.971109, 16.797560, 25.741280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.849659, 17.151638, 25.600290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691577, -0.459216, -0.557532,
		-0.655387, 0.074482, 0.751612,
		-0.303626, 0.885196, -0.352475,
		17.758572, 17.417196, 25.494549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.229401, 16.558067, 25.643890>,  <17.971109, 16.797560, 25.741280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.229401, 16.558067, 25.643890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.315132, 16.889206, 25.436533>,  <17.366571, 17.087889, 25.312119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.315132, 16.889206, 25.436533>,  <17.229401, 16.558067, 25.643890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.315132, 16.889206, 25.436533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601951, -0.306016, -0.737570,
		-0.769232, 0.470131, 0.432735,
		0.214331, 0.827847, -0.518393,
		17.379431, 17.137560, 25.281015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.551706, 16.866407, 25.434448>,  <17.229401, 16.558067, 25.643890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.551706, 16.866407, 25.434448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.809973, 17.039389, 25.182703>,  <16.964933, 17.143177, 25.031656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.809973, 17.039389, 25.182703>,  <16.551706, 16.866407, 25.434448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.809973, 17.039389, 25.182703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647885, -0.125996, -0.751246,
		-0.404175, 0.892810, 0.198828,
		0.645669, 0.432452, -0.629363,
		17.003674, 17.169125, 24.993895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166962, 17.437819, 25.099474>,  <16.551706, 16.866407, 25.434448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.166962, 17.437819, 25.099474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.481678, 17.327345, 24.878683>,  <16.670507, 17.261061, 24.746208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.481678, 17.327345, 24.878683>,  <16.166962, 17.437819, 25.099474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.481678, 17.327345, 24.878683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594769, -0.100268, -0.797619,
		0.164945, 0.955860, -0.243157,
		0.786793, -0.276185, -0.551977,
		16.717716, 17.244490, 24.713089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936531, 17.692785, 24.416227>,  <16.166962, 17.437819, 25.099474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936531, 17.692785, 24.416227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.245590, 17.455257, 24.326435>,  <16.431026, 17.312740, 24.272560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.245590, 17.455257, 24.326435>,  <15.936531, 17.692785, 24.416227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.245590, 17.455257, 24.326435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458814, -0.277950, -0.843939,
		0.438753, 0.755064, -0.487210,
		0.772648, -0.593820, -0.224483,
		16.477385, 17.277111, 24.259090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.267748, 17.928526, 23.795654>,  <15.936531, 17.692785, 24.416227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.267748, 17.928526, 23.795654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.376099, 17.543755, 23.810175>,  <16.441109, 17.312891, 23.818888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.376099, 17.543755, 23.810175>,  <16.267748, 17.928526, 23.795654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.376099, 17.543755, 23.810175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301945, -0.120715, -0.945652,
		0.914032, 0.245196, -0.323149,
		0.270879, -0.961928, 0.036302,
		16.457363, 17.255177, 23.821066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.444328, 17.767044, 23.106955>,  <16.267748, 17.928526, 23.795654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.444328, 17.767044, 23.106955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.396652, 17.413408, 23.287703>,  <16.368048, 17.201227, 23.396151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.396652, 17.413408, 23.287703>,  <16.444328, 17.767044, 23.106955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396652, 17.413408, 23.287703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443528, -0.359769, -0.820883,
		0.888300, -0.298255, -0.349238,
		-0.119188, -0.884087, 0.451867,
		16.360895, 17.148182, 23.423264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.757774, 17.219288, 22.699511>,  <16.444328, 17.767044, 23.106955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.757774, 17.219288, 22.699511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.488853, 17.019356, 22.917934>,  <16.327501, 16.899397, 23.048988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.488853, 17.019356, 22.917934>,  <16.757774, 17.219288, 22.699511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488853, 17.019356, 22.917934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166633, -0.616531, -0.769495,
		0.721278, -0.608325, 0.331207,
		-0.672303, -0.499829, 0.546058,
		16.287163, 16.869408, 23.081751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.896612, 16.428169, 22.680397>,  <16.757774, 17.219288, 22.699511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.896612, 16.428169, 22.680397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.513557, 16.472839, 22.786577>,  <16.283726, 16.499641, 22.850286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.513557, 16.472839, 22.786577>,  <16.896612, 16.428169, 22.680397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.513557, 16.472839, 22.786577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266504, -0.692976, -0.669896,
		0.109140, -0.712259, 0.693379,
		-0.957634, 0.111676, 0.265451,
		16.226267, 16.506342, 22.866213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.594542, 15.734512, 22.577766>,  <16.896612, 16.428169, 22.680397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.594542, 15.734512, 22.577766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.291050, 15.994790, 22.589949>,  <16.108955, 16.150957, 22.597258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.291050, 15.994790, 22.589949>,  <16.594542, 15.734512, 22.577766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.291050, 15.994790, 22.589949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547451, -0.611608, -0.571168,
		-0.353029, -0.450034, 0.820268,
		-0.758728, 0.650695, 0.030456,
		16.063431, 16.189999, 22.599085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.024767, 15.207753, 22.457153>,  <16.594542, 15.734512, 22.577766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.024767, 15.207753, 22.457153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.854013, 15.567384, 22.418301>,  <15.751562, 15.783162, 22.394989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.854013, 15.567384, 22.418301>,  <16.024767, 15.207753, 22.457153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.854013, 15.567384, 22.418301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504869, -0.326058, -0.799245,
		-0.750253, -0.292144, 0.593104,
		-0.426881, 0.899076, -0.097132,
		15.725949, 15.837107, 22.389162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.301328, 15.033528, 22.370857>,  <16.024767, 15.207753, 22.457153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.301328, 15.033528, 22.370857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.356148, 15.409768, 22.246607>,  <15.389040, 15.635512, 22.172056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.356148, 15.409768, 22.246607>,  <15.301328, 15.033528, 22.370857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.356148, 15.409768, 22.246607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593494, -0.173098, -0.786004,
		-0.793084, 0.292078, 0.534517,
		0.137051, 0.940600, -0.310628,
		15.397264, 15.691948, 22.153419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.696848, 15.216218, 22.385872>,  <15.301328, 15.033528, 22.370857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.696848, 15.216218, 22.385872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.891909, 15.450623, 22.127018>,  <15.008945, 15.591266, 21.971704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.891909, 15.450623, 22.127018>,  <14.696848, 15.216218, 22.385872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.891909, 15.450623, 22.127018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647628, -0.254272, -0.718278,
		-0.585468, 0.769373, 0.255522,
		0.487652, 0.586012, -0.647136,
		15.038204, 15.626427, 21.932877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.211175, 15.613777, 22.058641>,  <14.696848, 15.216218, 22.385872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.211175, 15.613777, 22.058641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.506304, 15.632870, 21.789320>,  <14.683381, 15.644325, 21.627728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.506304, 15.632870, 21.789320>,  <14.211175, 15.613777, 22.058641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.506304, 15.632870, 21.789320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662167, -0.142370, -0.735708,
		-0.130974, 0.988662, -0.073438,
		0.737822, 0.047730, -0.673306,
		14.727651, 15.647189, 21.587328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.908561, 16.005047, 21.557859>,  <14.211175, 15.613777, 22.058641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.908561, 16.005047, 21.557859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.218390, 15.818747, 21.386692>,  <14.404286, 15.706965, 21.283993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.218390, 15.818747, 21.386692>,  <13.908561, 16.005047, 21.557859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.218390, 15.818747, 21.386692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612547, -0.383860, -0.690969,
		0.157560, 0.797324, -0.582622,
		0.774571, -0.465753, -0.427917,
		14.450761, 15.679021, 21.258316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.863246, 16.201729, 20.828281>,  <13.908561, 16.005047, 21.557859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.863246, 16.201729, 20.828281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.090148, 15.872602, 20.842091>,  <14.226289, 15.675125, 20.850376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.090148, 15.872602, 20.842091>,  <13.863246, 16.201729, 20.828281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.090148, 15.872602, 20.842091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570110, -0.422596, -0.704547,
		0.594304, 0.379976, -0.708817,
		0.567254, -0.822819, 0.034523,
		14.260324, 15.625756, 20.852448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.018341, 16.068029, 20.121906>,  <13.863246, 16.201729, 20.828281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.018341, 16.068029, 20.121906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.073231, 15.721926, 20.314777>,  <14.106165, 15.514263, 20.430500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.073231, 15.721926, 20.314777>,  <14.018341, 16.068029, 20.121906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.073231, 15.721926, 20.314777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671552, -0.439097, -0.596835,
		0.728140, -0.241907, -0.641321,
		0.137224, -0.865260, 0.482177,
		14.114398, 15.462348, 20.459431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.030996, 15.577209, 19.721041>,  <14.018341, 16.068029, 20.121906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.030996, 15.577209, 19.721041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.972863, 15.320474, 20.022217>,  <13.937984, 15.166432, 20.202923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.972863, 15.320474, 20.022217>,  <14.030996, 15.577209, 19.721041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.972863, 15.320474, 20.022217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524443, -0.595334, -0.608717,
		0.838951, -0.483341, -0.250087,
		-0.145333, -0.641840, 0.752941,
		13.929263, 15.127922, 20.248098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.232939, 14.936649, 19.374483>,  <14.030996, 15.577209, 19.721041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.232939, 14.936649, 19.374483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.992389, 14.879499, 19.688919>,  <13.848059, 14.845209, 19.877581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.992389, 14.879499, 19.688919>,  <14.232939, 14.936649, 19.374483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.992389, 14.879499, 19.688919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639904, -0.502998, -0.580962,
		0.478406, -0.852397, 0.211064,
		-0.601375, -0.142875, 0.786089,
		13.811976, 14.836637, 19.924746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.185325, 14.225830, 19.358040>,  <14.232939, 14.936649, 19.374483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.185325, 14.225830, 19.358040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.886796, 14.376344, 19.577644>,  <13.707679, 14.466652, 19.709408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.886796, 14.376344, 19.577644>,  <14.185325, 14.225830, 19.358040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.886796, 14.376344, 19.577644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611085, -0.714280, -0.341145,
		0.263782, -0.590097, 0.763023,
		-0.746321, 0.376284, 0.549013,
		13.662900, 14.489229, 19.742348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.883862, 14.272479, 19.530611>,  <14.185325, 14.225830, 19.358040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.883862, 14.272479, 19.530611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.183801, 14.091396, 19.337620>,  <15.363765, 13.982747, 19.221825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.183801, 14.091396, 19.337620>,  <14.883862, 14.272479, 19.530611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.183801, 14.091396, 19.337620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658460, 0.581715, 0.477534,
		0.064482, -0.675770, 0.734286,
		0.749849, -0.452706, -0.482478,
		15.408755, 13.955585, 19.192877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.459478, 14.096669, 19.959738>,  <14.883862, 14.272479, 19.530611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.459478, 14.096669, 19.959738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.614544, 14.128136, 19.592363>,  <15.707583, 14.147016, 19.371939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.614544, 14.128136, 19.592363>,  <15.459478, 14.096669, 19.959738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.614544, 14.128136, 19.592363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731654, 0.579803, 0.358485,
		0.560713, -0.810950, 0.167214,
		0.387665, 0.078665, -0.918437,
		15.730843, 14.151735, 19.316832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155148, 13.756598, 19.956068>,  <15.459478, 14.096669, 19.959738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.155148, 13.756598, 19.956068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.118986, 14.035400, 19.671530>,  <16.097290, 14.202682, 19.500807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.118986, 14.035400, 19.671530>,  <16.155148, 13.756598, 19.956068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.118986, 14.035400, 19.671530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813519, 0.463695, 0.350960,
		0.574468, -0.546965, -0.608946,
		-0.090402, 0.697005, -0.711345,
		16.091866, 14.244502, 19.458126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812691, 13.904720, 19.859713>,  <16.155148, 13.756598, 19.956068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.812691, 13.904720, 19.859713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.628456, 14.203153, 19.667370>,  <16.517916, 14.382213, 19.551964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.628456, 14.203153, 19.667370>,  <16.812691, 13.904720, 19.859713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.628456, 14.203153, 19.667370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733431, 0.625024, 0.267253,
		0.499939, -0.229581, -0.835077,
		-0.460587, 0.746081, -0.480856,
		16.490280, 14.426977, 19.523113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.378149, 14.254871, 19.494507>,  <16.812691, 13.904720, 19.859713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.378149, 14.254871, 19.494507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.090347, 14.528275, 19.543699>,  <16.917665, 14.692318, 19.573215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.090347, 14.528275, 19.543699>,  <17.378149, 14.254871, 19.494507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.090347, 14.528275, 19.543699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687927, 0.677166, 0.261154,
		0.095223, 0.272504, -0.957431,
		-0.719506, 0.683511, 0.122981,
		16.874496, 14.733329, 19.580593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.652500, 14.795500, 19.201735>,  <17.378149, 14.254871, 19.494507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.652500, 14.795500, 19.201735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.378857, 14.931754, 19.459715>,  <17.214670, 15.013507, 19.614504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.378857, 14.931754, 19.459715>,  <17.652500, 14.795500, 19.201735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.378857, 14.931754, 19.459715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641039, 0.702619, 0.308862,
		-0.347946, 0.624735, -0.699028,
		-0.684107, 0.340636, 0.644953,
		17.173624, 15.033945, 19.653200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.573664, 15.553771, 19.024414>,  <17.652500, 14.795500, 19.201735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.573664, 15.553771, 19.024414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.445887, 15.479379, 19.396084>,  <17.369221, 15.434743, 19.619085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.445887, 15.479379, 19.396084>,  <17.573664, 15.553771, 19.024414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.445887, 15.479379, 19.396084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608109, 0.711780, 0.351530,
		-0.726746, 0.677334, -0.114276,
		-0.319442, -0.185981, 0.929176,
		17.350054, 15.423584, 19.674837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.792994, 16.124599, 19.290094>,  <17.573664, 15.553771, 19.024414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.792994, 16.124599, 19.290094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.671499, 15.925885, 19.615290>,  <17.598602, 15.806657, 19.810408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.671499, 15.925885, 19.615290>,  <17.792994, 16.124599, 19.290094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.671499, 15.925885, 19.615290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527499, 0.622899, 0.577704,
		-0.793404, 0.604319, 0.072858,
		-0.303734, -0.496785, 0.812989,
		17.580379, 15.776850, 19.859186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.720404, 16.635946, 19.866173>,  <17.792994, 16.124599, 19.290094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.720404, 16.635946, 19.866173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.747606, 16.287985, 20.061575>,  <17.763927, 16.079208, 20.178816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.747606, 16.287985, 20.061575>,  <17.720404, 16.635946, 19.866173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.747606, 16.287985, 20.061575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642369, 0.412825, 0.645707,
		-0.763372, 0.269888, 0.586876,
		0.068008, -0.869906, 0.488507,
		17.768009, 16.027014, 20.208126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.557056, 16.761553, 20.560051>,  <17.720404, 16.635946, 19.866173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.557056, 16.761553, 20.560051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.781609, 16.431557, 20.586107>,  <17.916340, 16.233559, 20.601742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.781609, 16.431557, 20.586107>,  <17.557056, 16.761553, 20.560051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.781609, 16.431557, 20.586107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496165, 0.398533, 0.771357,
		-0.662322, -0.400706, 0.633060,
		0.561382, -0.824989, 0.065141,
		17.950024, 16.184059, 20.605650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.524456, 16.485842, 21.284931>,  <17.557056, 16.761553, 20.560051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.524456, 16.485842, 21.284931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.850039, 16.318747, 21.123455>,  <18.045389, 16.218489, 21.026569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.850039, 16.318747, 21.123455>,  <17.524456, 16.485842, 21.284931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.850039, 16.318747, 21.123455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527498, 0.240387, 0.814837,
		-0.243346, -0.876190, 0.416021,
		0.813958, -0.417738, -0.403692,
		18.094227, 16.193426, 21.002348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.882473, 15.940473, 21.830481>,  <17.524456, 16.485842, 21.284931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.882473, 15.940473, 21.830481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.138054, 16.078468, 21.555462>,  <18.291403, 16.161266, 21.390450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.138054, 16.078468, 21.555462>,  <17.882473, 15.940473, 21.830481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.138054, 16.078468, 21.555462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632961, 0.272141, 0.724775,
		0.437150, -0.898288, -0.044480,
		0.638952, 0.344990, -0.687548,
		18.329741, 16.181965, 21.349197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.443697, 15.672370, 22.046175>,  <17.882473, 15.940473, 21.830481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.443697, 15.672370, 22.046175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.574791, 15.972056, 21.815952>,  <18.653446, 16.151869, 21.677818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.574791, 15.972056, 21.815952>,  <18.443697, 15.672370, 22.046175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.574791, 15.972056, 21.815952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681440, 0.234507, 0.693286,
		0.654393, -0.619421, -0.433690,
		0.327733, 0.749216, -0.575558,
		18.673111, 16.196821, 21.643286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.173130, 15.631758, 21.982710>,  <18.443697, 15.672370, 22.046175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.173130, 15.631758, 21.982710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.089487, 16.008614, 21.877907>,  <19.039301, 16.234726, 21.815025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.089487, 16.008614, 21.877907>,  <19.173130, 15.631758, 21.982710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.089487, 16.008614, 21.877907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783748, 0.321700, 0.531270,
		0.584818, -0.094254, -0.805670,
		-0.209109, 0.942139, -0.262007,
		19.026754, 16.291256, 21.799305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.858475, 15.896877, 21.998928>,  <19.173130, 15.631758, 21.982710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.858475, 15.896877, 21.998928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.622652, 16.219898, 21.992201>,  <19.481157, 16.413710, 21.988165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.622652, 16.219898, 21.992201>,  <19.858475, 15.896877, 21.998928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.622652, 16.219898, 21.992201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668669, 0.499634, 0.550680,
		0.453105, 0.313412, -0.834547,
		-0.589558, 0.807551, -0.016818,
		19.445786, 16.462164, 21.987156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.308578, 16.387882, 21.989891>,  <19.858475, 15.896877, 21.998928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.308578, 16.387882, 21.989891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.985527, 16.583675, 22.121431>,  <19.791697, 16.701151, 22.200356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.985527, 16.583675, 22.121431>,  <20.308578, 16.387882, 21.989891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.985527, 16.583675, 22.121431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569191, 0.501320, 0.651690,
		0.154133, 0.713501, -0.683490,
		-0.807629, 0.489483, 0.328848,
		19.743238, 16.730520, 22.220085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.462387, 17.014524, 21.977245>,  <20.308578, 16.387882, 21.989891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.462387, 17.014524, 21.977245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.177105, 16.972801, 22.254505>,  <20.005936, 16.947767, 22.420860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.177105, 16.972801, 22.254505>,  <20.462387, 17.014524, 21.977245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.177105, 16.972801, 22.254505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635105, 0.322282, 0.701980,
		-0.296613, 0.940879, -0.163606,
		-0.713206, -0.104310, 0.693150,
		19.963142, 16.941509, 22.462450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.595865, 17.618135, 22.451498>,  <20.462387, 17.014524, 21.977245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.595865, 17.618135, 22.451498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.350679, 17.376575, 22.655293>,  <20.203568, 17.231640, 22.777569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.350679, 17.376575, 22.655293>,  <20.595865, 17.618135, 22.451498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.350679, 17.376575, 22.655293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433908, 0.281596, 0.855820,
		-0.660300, 0.745658, 0.089429,
		-0.612966, -0.603902, 0.509485,
		20.166790, 17.195404, 22.808138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.470907, 18.004538, 23.007318>,  <20.595865, 17.618135, 22.451498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.470907, 18.004538, 23.007318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.360292, 17.639545, 23.127924>,  <20.293922, 17.420551, 23.200287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.360292, 17.639545, 23.127924>,  <20.470907, 18.004538, 23.007318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.360292, 17.639545, 23.127924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340100, 0.200516, 0.918763,
		-0.898809, 0.356618, 0.254884,
		-0.276539, -0.912478, 0.301512,
		20.277330, 17.365803, 23.218378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.101219, 18.150042, 23.544077>,  <20.470907, 18.004538, 23.007318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.101219, 18.150042, 23.544077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.238863, 17.776619, 23.584192>,  <20.321449, 17.552565, 23.608261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.238863, 17.776619, 23.584192>,  <20.101219, 18.150042, 23.544077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.238863, 17.776619, 23.584192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401544, 0.242871, 0.883049,
		-0.848734, -0.263598, 0.458439,
		0.344112, -0.933558, 0.100287,
		20.342096, 17.496552, 23.614279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.839888, 17.960688, 24.133757>,  <20.101219, 18.150042, 23.544077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.839888, 17.960688, 24.133757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.151340, 17.717798, 24.070498>,  <20.338213, 17.572065, 24.032543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.151340, 17.717798, 24.070498>,  <19.839888, 17.960688, 24.133757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.151340, 17.717798, 24.070498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364544, 0.232619, 0.901663,
		-0.510723, -0.759715, 0.402485,
		0.778633, -0.607224, -0.158146,
		20.384930, 17.535631, 24.023054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.833046, 17.544943, 24.697876>,  <19.839888, 17.960688, 24.133757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.833046, 17.544943, 24.697876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.206827, 17.489527, 24.566662>,  <20.431095, 17.456276, 24.487934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.206827, 17.489527, 24.566662>,  <19.833046, 17.544943, 24.697876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.206827, 17.489527, 24.566662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355741, 0.322414, 0.877210,
		-0.015768, -0.936406, 0.350565,
		0.934452, -0.138542, -0.328034,
		20.487164, 17.447964, 24.468252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.203926, 17.147163, 25.136736>,  <19.833046, 17.544943, 24.697876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.203926, 17.147163, 25.136736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.483070, 17.359119, 24.943983>,  <20.650557, 17.486292, 24.828331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.483070, 17.359119, 24.943983>,  <20.203926, 17.147163, 25.136736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.483070, 17.359119, 24.943983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411676, 0.253803, 0.875275,
		0.586102, -0.809198, -0.041023,
		0.697860, 0.529889, -0.481882,
		20.692429, 17.518085, 24.799419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.704096, 17.189619, 25.590084>,  <20.203926, 17.147163, 25.136736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.704096, 17.189619, 25.590084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.835871, 17.476599, 25.344566>,  <20.914936, 17.648787, 25.197256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.835871, 17.476599, 25.344566>,  <20.704096, 17.189619, 25.590084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.835871, 17.476599, 25.344566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535345, 0.393551, 0.747344,
		0.777739, -0.574793, -0.254432,
		0.329436, 0.717447, -0.613793,
		20.934702, 17.691833, 25.160429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.418480, 17.348562, 25.844469>,  <20.704096, 17.189619, 25.590084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.418480, 17.348562, 25.844469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.305426, 17.646868, 25.603153>,  <21.237593, 17.825851, 25.458364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.305426, 17.646868, 25.603153>,  <21.418480, 17.348562, 25.844469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.305426, 17.646868, 25.603153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582955, 0.633002, 0.509384,
		0.761762, -0.207720, -0.613654,
		-0.282635, 0.745762, -0.603288,
		21.220634, 17.870596, 25.422167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.984371, 17.853893, 25.975859>,  <21.418480, 17.348562, 25.844469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.984371, 17.853893, 25.975859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.705313, 18.078003, 25.797247>,  <21.537878, 18.212469, 25.690081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.705313, 18.078003, 25.797247>,  <21.984371, 17.853893, 25.975859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.705313, 18.078003, 25.797247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399394, 0.821564, 0.406837,
		0.594791, 0.105487, -0.796929,
		-0.697645, 0.560272, -0.446528,
		21.496019, 18.246084, 25.663288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.269161, 18.443432, 25.574942>,  <21.984371, 17.853893, 25.975859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.269161, 18.443432, 25.574942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.906599, 18.550316, 25.705801>,  <21.689062, 18.614447, 25.784317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.906599, 18.550316, 25.705801>,  <22.269161, 18.443432, 25.574942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.906599, 18.550316, 25.705801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406648, 0.761573, 0.504623,
		-0.114306, 0.590428, -0.798955,
		-0.906406, 0.267212, 0.327148,
		21.634678, 18.630480, 25.803946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.236582, 19.137545, 25.373590>,  <22.269161, 18.443432, 25.574942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.236582, 19.137545, 25.373590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.051437, 19.094488, 25.725538>,  <21.940350, 19.068655, 25.936707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.051437, 19.094488, 25.725538>,  <22.236582, 19.137545, 25.373590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.051437, 19.094488, 25.725538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605379, 0.686683, 0.402471,
		-0.647514, 0.718944, -0.252677,
		-0.462863, -0.107640, 0.879870,
		21.912579, 19.062197, 25.989500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.967648, 19.821096, 25.558275>,  <22.236582, 19.137545, 25.373590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.967648, 19.821096, 25.558275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.937727, 19.637152, 25.912209>,  <21.919775, 19.526785, 26.124569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.937727, 19.637152, 25.912209>,  <21.967648, 19.821096, 25.558275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.937727, 19.637152, 25.912209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449947, 0.776295, 0.441491,
		-0.889917, 0.431153, 0.148845,
		-0.074803, -0.459863, 0.884834,
		21.915287, 19.499193, 26.177658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.836885, 20.381416, 25.999002>,  <21.967648, 19.821096, 25.558275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.836885, 20.381416, 25.999002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.944534, 20.080801, 26.239923>,  <22.009123, 19.900433, 26.384476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.944534, 20.080801, 26.239923>,  <21.836885, 20.381416, 25.999002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.944534, 20.080801, 26.239923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515859, 0.640584, 0.568808,
		-0.813304, 0.157624, 0.560081,
		0.269121, -0.751536, 0.602301,
		22.025270, 19.855341, 26.420614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.880072, 20.621880, 26.687326>,  <21.836885, 20.381416, 25.999002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.880072, 20.621880, 26.687326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.146036, 20.323494, 26.672213>,  <22.305614, 20.144463, 26.663145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.146036, 20.323494, 26.672213>,  <21.880072, 20.621880, 26.687326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.146036, 20.323494, 26.672213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656613, 0.559658, 0.505612,
		-0.356023, -0.360997, 0.861933,
		0.664912, -0.745966, -0.037784,
		22.345510, 20.099705, 26.660877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.275246, 20.622705, 27.338528>,  <21.880072, 20.621880, 26.687326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.275246, 20.622705, 27.338528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.483410, 20.385872, 27.092403>,  <22.608309, 20.243773, 26.944729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.483410, 20.385872, 27.092403>,  <22.275246, 20.622705, 27.338528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.483410, 20.385872, 27.092403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844113, 0.247830, 0.475450,
		-0.129014, -0.766823, 0.628759,
		0.520412, -0.592083, -0.615312,
		22.639534, 20.208246, 26.907810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.886297, 21.003275, 27.573339>,  <22.275246, 20.622705, 27.338528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.886297, 21.003275, 27.573339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.129147, 20.777718, 27.349401>,  <23.274857, 20.642384, 27.215038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.129147, 20.777718, 27.349401>,  <22.886297, 21.003275, 27.573339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.129147, 20.777718, 27.349401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706797, 0.705180, 0.056204,
		0.363098, -0.429820, 0.826689,
		0.607122, -0.563894, -0.559845,
		23.311283, 20.608549, 27.181448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.552317, 20.948462, 27.838074>,  <22.886297, 21.003275, 27.573339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.552317, 20.948462, 27.838074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.565516, 20.917870, 27.439465>,  <23.573435, 20.899513, 27.200298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.565516, 20.917870, 27.439465>,  <23.552317, 20.948462, 27.838074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.565516, 20.917870, 27.439465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545194, 0.837037, -0.046188,
		0.837660, -0.541775, 0.069318,
		0.032999, -0.076481, -0.996525,
		23.575415, 20.894926, 27.140507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.265329, 20.816988, 27.523546>,  <23.552317, 20.948462, 27.838074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.265329, 20.816988, 27.523546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.009623, 21.032982, 27.304546>,  <23.856199, 21.162579, 27.173147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.009623, 21.032982, 27.304546>,  <24.265329, 20.816988, 27.523546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.009623, 21.032982, 27.304546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550496, 0.818475, 0.164475,
		0.536927, -0.196252, -0.820484,
		-0.639268, 0.539985, -0.547497,
		23.817842, 21.194977, 27.140297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.646280, 21.177649, 27.115021>,  <24.265329, 20.816988, 27.523546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.646280, 21.177649, 27.115021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.321671, 21.392849, 27.206223>,  <24.126905, 21.521969, 27.260942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.321671, 21.392849, 27.206223>,  <24.646280, 21.177649, 27.115021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.321671, 21.392849, 27.206223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579864, 0.789595, 0.200744,
		-0.072029, 0.295119, -0.952742,
		-0.811523, 0.538001, 0.228003,
		24.078213, 21.554249, 27.274624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.762808, 21.823336, 26.769300>,  <24.646280, 21.177649, 27.115021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.762808, 21.823336, 26.769300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488550, 21.881811, 27.054544>,  <24.323996, 21.916897, 27.225691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488550, 21.881811, 27.054544>,  <24.762808, 21.823336, 26.769300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.488550, 21.881811, 27.054544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419204, 0.880175, 0.222620,
		-0.595116, 0.451576, -0.664768,
		-0.685642, 0.146188, 0.713109,
		24.282858, 21.925667, 27.268476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.441677, 22.557783, 26.773365>,  <24.762808, 21.823336, 26.769300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.441677, 22.557783, 26.773365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413542, 22.402540, 27.140936>,  <24.396660, 22.309395, 27.361479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413542, 22.402540, 27.140936>,  <24.441677, 22.557783, 26.773365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.413542, 22.402540, 27.140936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554806, 0.750358, 0.359379,
		-0.829001, 0.535104, 0.162543,
		-0.070339, -0.388105, 0.918927,
		24.392441, 22.286108, 27.416615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.339729, 23.253103, 27.066820>,  <24.441677, 22.557783, 26.773365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.339729, 23.253103, 27.066820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251646, 23.428818, 26.718445>,  <24.198797, 23.534246, 26.509418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251646, 23.428818, 26.718445>,  <24.339729, 23.253103, 27.066820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.251646, 23.428818, 26.718445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638186, -0.740132, -0.211952,
		-0.737717, 0.509145, 0.443335,
		-0.220212, 0.439290, -0.870937,
		24.185583, 23.560604, 26.457163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.644270, 23.237764, 27.067156>,  <24.339729, 23.253103, 27.066820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.644270, 23.237764, 27.067156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.793678, 23.277987, 26.698294>,  <23.883324, 23.302120, 26.476976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.793678, 23.277987, 26.698294>,  <23.644270, 23.237764, 27.067156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.793678, 23.277987, 26.698294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705963, -0.614060, -0.352912,
		-0.601746, 0.782828, -0.158376,
		0.373521, 0.100555, -0.922155,
		23.905735, 23.308153, 26.421646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.091061, 23.350069, 26.667110>,  <23.644270, 23.237764, 27.067156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.091061, 23.350069, 26.667110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.353071, 23.239246, 26.385918>,  <23.510277, 23.172752, 26.217203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.353071, 23.239246, 26.385918>,  <23.091061, 23.350069, 26.667110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.353071, 23.239246, 26.385918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701634, -0.568328, -0.429783,
		-0.280449, 0.774753, -0.566662,
		0.655026, -0.277057, -0.702980,
		23.549580, 23.156130, 26.175024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.776291, 23.475580, 25.980263>,  <23.091061, 23.350069, 26.667110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.776291, 23.475580, 25.980263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.044746, 23.180212, 25.953995>,  <23.205820, 23.002991, 25.938234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.044746, 23.180212, 25.953995>,  <22.776291, 23.475580, 25.980263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.044746, 23.180212, 25.953995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723312, -0.632834, -0.276298,
		0.162464, 0.232934, -0.958826,
		0.671137, -0.738419, -0.065671,
		23.246088, 22.958687, 25.934294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.692150, 23.231443, 25.344152>,  <22.776291, 23.475580, 25.980263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.692150, 23.231443, 25.344152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.895914, 22.924654, 25.500229>,  <23.018173, 22.740580, 25.593874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.895914, 22.924654, 25.500229>,  <22.692150, 23.231443, 25.344152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.895914, 22.924654, 25.500229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490878, -0.631422, -0.600287,
		0.706781, 0.114257, -0.698145,
		0.509411, -0.766975, 0.390191,
		23.048737, 22.694561, 25.617287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.001215, 22.849010, 24.717182>,  <22.692150, 23.231443, 25.344152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.001215, 22.849010, 24.717182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.967939, 22.617023, 25.041334>,  <22.947973, 22.477831, 25.235826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.967939, 22.617023, 25.041334>,  <23.001215, 22.849010, 24.717182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.967939, 22.617023, 25.041334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393565, -0.727973, -0.561392,
		0.915525, -0.365640, -0.167695,
		-0.083190, -0.579968, 0.810381,
		22.942982, 22.443033, 25.284449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.115168, 22.179934, 24.440210>,  <23.001215, 22.849010, 24.717182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.115168, 22.179934, 24.440210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.944548, 22.113119, 24.795773>,  <22.842176, 22.073030, 25.009109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.944548, 22.113119, 24.795773>,  <23.115168, 22.179934, 24.440210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.944548, 22.113119, 24.795773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460186, -0.806001, -0.372279,
		0.778644, -0.567858, 0.266930,
		-0.426548, -0.167035, 0.888908,
		22.816584, 22.063009, 25.062445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.196022, 21.401665, 24.600985>,  <23.115168, 22.179934, 24.440210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.196022, 21.401665, 24.600985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.888069, 21.544037, 24.812870>,  <22.703299, 21.629459, 24.940001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.888069, 21.544037, 24.812870>,  <23.196022, 21.401665, 24.600985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.888069, 21.544037, 24.812870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531041, -0.817635, -0.222416,
		0.353949, -0.452534, 0.818495,
		-0.769881, 0.355930, 0.529714,
		22.657104, 21.650816, 24.971785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.008762, 20.791901, 24.920025>,  <23.196022, 21.401665, 24.600985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.008762, 20.791901, 24.920025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.711437, 21.059353, 24.928188>,  <22.533041, 21.219824, 24.933086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.711437, 21.059353, 24.928188>,  <23.008762, 20.791901, 24.920025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.711437, 21.059353, 24.928188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635515, -0.696320, -0.333556,
		-0.208815, -0.260907, 0.942509,
		-0.743315, 0.668630, 0.020408,
		22.488443, 21.259941, 24.934311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.348557, 20.373398, 24.990532>,  <23.008762, 20.791901, 24.920025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.348557, 20.373398, 24.990532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.196108, 20.733807, 24.907675>,  <22.104639, 20.950052, 24.857960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.196108, 20.733807, 24.907675>,  <22.348557, 20.373398, 24.990532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.196108, 20.733807, 24.907675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747800, -0.432182, -0.503999,
		-0.543637, -0.037182, 0.838496,
		-0.381122, 0.901020, -0.207145,
		22.081772, 21.004112, 24.845531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.584688, 20.344097, 25.048988>,  <22.348557, 20.373398, 24.990532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.584688, 20.344097, 25.048988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.667685, 20.643961, 24.797607>,  <21.717484, 20.823879, 24.646778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.667685, 20.643961, 24.797607>,  <21.584688, 20.344097, 25.048988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.667685, 20.643961, 24.797607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747571, -0.292840, -0.596139,
		-0.630939, 0.593508, 0.499663,
		0.207492, 0.749662, -0.628454,
		21.729933, 20.868860, 24.609072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.995632, 20.381693, 24.736105>,  <21.584688, 20.344097, 25.048988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.995632, 20.381693, 24.736105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.233330, 20.608587, 24.508028>,  <21.375948, 20.744724, 24.371181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.233330, 20.608587, 24.508028>,  <20.995632, 20.381693, 24.736105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.233330, 20.608587, 24.508028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602611, -0.155510, -0.782737,
		-0.532667, 0.808740, 0.249413,
		0.594244, 0.567237, -0.570190,
		21.411602, 20.778759, 24.336971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.562370, 20.904640, 24.354370>,  <20.995632, 20.381693, 24.736105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.562370, 20.904640, 24.354370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.894619, 20.828527, 24.145042>,  <21.093967, 20.782860, 24.019445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.894619, 20.828527, 24.145042>,  <20.562370, 20.904640, 24.354370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.894619, 20.828527, 24.145042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556805, -0.294465, -0.776697,
		-0.006307, 0.936527, -0.350539,
		0.830619, -0.190283, -0.523320,
		21.143805, 20.771442, 23.988047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.445543, 21.212000, 23.715525>,  <20.562370, 20.904640, 24.354370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.445543, 21.212000, 23.715525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.719408, 20.925789, 23.660013>,  <20.883726, 20.754063, 23.626705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.719408, 20.925789, 23.660013>,  <20.445543, 21.212000, 23.715525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.719408, 20.925789, 23.660013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461992, -0.278765, -0.841935,
		0.563740, 0.640556, -0.521427,
		0.684661, -0.715527, -0.138781,
		20.924807, 20.711130, 23.618380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.497419, 21.287004, 23.076891>,  <20.445543, 21.212000, 23.715525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.497419, 21.287004, 23.076891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.649193, 20.926645, 23.161190>,  <20.740257, 20.710430, 23.211769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.649193, 20.926645, 23.161190>,  <20.497419, 21.287004, 23.076891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.649193, 20.926645, 23.161190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327401, -0.343783, -0.880126,
		0.865354, 0.264951, -0.425398,
		0.379435, -0.900896, 0.210749,
		20.763023, 20.656376, 23.224415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.805851, 21.090609, 22.485146>,  <20.497419, 21.287004, 23.076891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.805851, 21.090609, 22.485146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.769194, 20.752901, 22.696358>,  <20.747200, 20.550278, 22.823086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.769194, 20.752901, 22.696358>,  <20.805851, 21.090609, 22.485146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.769194, 20.752901, 22.696358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096063, -0.520293, -0.848568,
		0.991148, -0.128490, -0.033421,
		-0.091643, -0.844266, 0.528030,
		20.741701, 20.499620, 22.854767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.117603, 20.552818, 22.068758>,  <20.805851, 21.090609, 22.485146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.117603, 20.552818, 22.068758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.892559, 20.322992, 22.306530>,  <20.757532, 20.185097, 22.449192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.892559, 20.322992, 22.306530>,  <21.117603, 20.552818, 22.068758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.892559, 20.322992, 22.306530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178989, -0.617310, -0.766089,
		0.807114, -0.537405, 0.244464,
		-0.562610, -0.574564, 0.594429,
		20.723776, 20.150623, 22.484859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.400105, 19.816263, 22.142046>,  <21.117603, 20.552818, 22.068758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.400105, 19.816263, 22.142046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.011175, 19.817671, 22.235493>,  <20.777817, 19.818516, 22.291561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.011175, 19.817671, 22.235493>,  <21.400105, 19.816263, 22.142046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.011175, 19.817671, 22.235493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158630, -0.744048, -0.649021,
		0.171538, -0.668117, 0.724013,
		-0.972323, 0.003518, 0.233616,
		20.719479, 19.818726, 22.305578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.166716, 19.034275, 22.242373>,  <21.400105, 19.816263, 22.142046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.166716, 19.034275, 22.242373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.847139, 19.262705, 22.166933>,  <20.655394, 19.399763, 22.121670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.847139, 19.262705, 22.166933>,  <21.166716, 19.034275, 22.242373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.847139, 19.262705, 22.166933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372395, -0.715995, -0.590485,
		-0.472244, -0.401531, 0.784703,
		-0.798941, 0.571073, -0.188596,
		20.607456, 19.434027, 22.110353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.742163, 18.542561, 22.053385>,  <21.166716, 19.034275, 22.242373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.742163, 18.542561, 22.053385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.565731, 18.880201, 21.931438>,  <20.459871, 19.082785, 21.858271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.565731, 18.880201, 21.931438>,  <20.742163, 18.542561, 22.053385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.565731, 18.880201, 21.931438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508821, -0.515025, -0.689819,
		-0.739291, -0.149142, 0.656663,
		-0.441079, 0.844101, -0.304866,
		20.433407, 19.133432, 21.839979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.922903, 18.497826, 22.041489>,  <20.742163, 18.542561, 22.053385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.922903, 18.497826, 22.041489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.027098, 18.796051, 21.796122>,  <20.089615, 18.974987, 21.648901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.027098, 18.796051, 21.796122>,  <19.922903, 18.497826, 22.041489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.027098, 18.796051, 21.796122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573097, -0.391909, -0.719700,
		-0.776986, 0.539021, 0.325193,
		0.260487, 0.745563, -0.613419,
		20.105244, 19.019720, 21.612097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.289120, 18.657160, 21.706726>,  <19.922903, 18.497826, 22.041489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.289120, 18.657160, 21.706726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.602547, 18.749903, 21.476156>,  <19.790604, 18.805548, 21.337814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.602547, 18.749903, 21.476156>,  <19.289120, 18.657160, 21.706726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.602547, 18.749903, 21.476156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454087, -0.419518, -0.786009,
		-0.424061, 0.877638, -0.223438,
		0.783567, 0.231855, -0.576424,
		19.837618, 18.819460, 21.303228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.017586, 18.766333, 21.016010>,  <19.289120, 18.657160, 21.706726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.017586, 18.766333, 21.016010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.403385, 18.754158, 20.911076>,  <19.634865, 18.746853, 20.848116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.403385, 18.754158, 20.911076>,  <19.017586, 18.766333, 21.016010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.403385, 18.754158, 20.911076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248510, -0.440764, -0.862537,
		-0.089377, 0.897107, -0.432679,
		0.964497, -0.030435, -0.262334,
		19.692734, 18.745028, 20.832375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.022125, 18.999279, 20.266272>,  <19.017586, 18.766333, 21.016010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.022125, 18.999279, 20.266272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.356356, 18.793682, 20.343859>,  <19.556894, 18.670324, 20.390411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.356356, 18.793682, 20.343859>,  <19.022125, 18.999279, 20.266272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.356356, 18.793682, 20.343859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119593, -0.514783, -0.848938,
		0.536198, 0.686156, -0.491611,
		0.835577, -0.513992, 0.193966,
		19.607029, 18.639484, 20.402048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.324684, 18.840853, 19.690922>,  <19.022125, 18.999279, 20.266272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.324684, 18.840853, 19.690922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.531725, 18.579872, 19.912334>,  <19.655951, 18.423285, 20.045181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.531725, 18.579872, 19.912334>,  <19.324684, 18.840853, 19.690922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.531725, 18.579872, 19.912334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073277, -0.678361, -0.731066,
		0.852477, 0.337840, -0.398932,
		0.517603, -0.652449, 0.553531,
		19.687006, 18.384138, 20.078394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.803122, 18.674164, 19.336239>,  <19.324684, 18.840853, 19.690922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.803122, 18.674164, 19.336239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.773247, 18.364813, 19.588051>,  <19.755322, 18.179203, 19.739138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.773247, 18.364813, 19.588051>,  <19.803122, 18.674164, 19.336239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.773247, 18.364813, 19.588051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107705, -0.633858, -0.765914,
		0.991374, 0.010599, 0.130638,
		-0.074688, -0.773377, 0.629532,
		19.750841, 18.132799, 19.776911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.362989, 18.233793, 19.162212>,  <19.803122, 18.674164, 19.336239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.362989, 18.233793, 19.162212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.083118, 18.007971, 19.337358>,  <19.915195, 17.872477, 19.442446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.083118, 18.007971, 19.337358>,  <20.362989, 18.233793, 19.162212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.083118, 18.007971, 19.337358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023486, -0.594359, -0.803857,
		0.714074, -0.572723, 0.402600,
		-0.699676, -0.564558, 0.437867,
		19.873215, 17.838604, 19.468719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.581419, 17.593782, 19.016987>,  <20.362989, 18.233793, 19.162212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.581419, 17.593782, 19.016987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.205124, 17.510389, 19.123981>,  <19.979347, 17.460354, 19.188179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.205124, 17.510389, 19.123981>,  <20.581419, 17.593782, 19.016987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.205124, 17.510389, 19.123981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097764, -0.588537, -0.802537,
		0.324743, -0.781126, 0.533276,
		-0.940736, -0.208483, 0.267489,
		19.922903, 17.447844, 19.204227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.466682, 16.936171, 18.799181>,  <20.581419, 17.593782, 19.016987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.466682, 16.936171, 18.799181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.097111, 17.086716, 18.826632>,  <19.875368, 17.177042, 18.843102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.097111, 17.086716, 18.826632>,  <20.466682, 16.936171, 18.799181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.097111, 17.086716, 18.826632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240281, -0.431289, -0.869629,
		-0.297695, -0.819965, 0.488912,
		-0.923928, 0.376360, 0.068629,
		19.819933, 17.199625, 18.847219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964514, 16.398699, 18.550539>,  <20.466682, 16.936171, 18.799181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964514, 16.398699, 18.550539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.766685, 16.744965, 18.519497>,  <19.647987, 16.952724, 18.500872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.766685, 16.744965, 18.519497>,  <19.964514, 16.398699, 18.550539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.766685, 16.744965, 18.519497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130767, -0.162386, -0.978024,
		-0.859243, -0.473556, 0.193512,
		-0.494572, 0.865665, -0.077603,
		19.618313, 17.004663, 18.496216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.353508, 16.229294, 18.291660>,  <19.964514, 16.398699, 18.550539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.353508, 16.229294, 18.291660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.421041, 16.609295, 18.186596>,  <19.461561, 16.837296, 18.123558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.421041, 16.609295, 18.186596>,  <19.353508, 16.229294, 18.291660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.421041, 16.609295, 18.186596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176389, -0.233062, -0.956331,
		-0.969733, 0.207793, 0.128221,
		0.168835, 0.950002, -0.262660,
		19.471691, 16.894295, 18.107798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.845819, 16.367243, 17.838512>,  <19.353508, 16.229294, 18.291660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.845819, 16.367243, 17.838512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.099676, 16.667870, 17.766537>,  <19.251991, 16.848246, 17.723352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.099676, 16.667870, 17.766537>,  <18.845819, 16.367243, 17.838512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.099676, 16.667870, 17.766537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163306, -0.097156, -0.981780,
		-0.755354, 0.652465, 0.061076,
		0.634643, 0.751565, -0.179938,
		19.290070, 16.893339, 17.712555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.565464, 16.805422, 17.247572>,  <18.845819, 16.367243, 17.838512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.565464, 16.805422, 17.247572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.961353, 16.861010, 17.234097>,  <19.198887, 16.894361, 17.226011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.961353, 16.861010, 17.234097>,  <18.565464, 16.805422, 17.247572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.961353, 16.861010, 17.234097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005959, -0.275458, -0.961295,
		-0.142870, 0.951215, -0.273456,
		0.989724, 0.138969, -0.033687,
		19.258270, 16.902700, 17.223991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.453527, 17.097221, 16.695505>,  <18.565464, 16.805422, 17.247572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.453527, 17.097221, 16.695505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.845596, 17.026569, 16.731426>,  <19.080837, 16.984179, 16.752979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.845596, 17.026569, 16.731426>,  <18.453527, 17.097221, 16.695505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.845596, 17.026569, 16.731426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063134, -0.151198, -0.986485,
		0.187821, 0.972595, -0.137048,
		0.980172, -0.176630, 0.089802,
		19.139648, 16.973581, 16.758368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.791031, 17.507837, 16.194216>,  <18.453527, 17.097221, 16.695505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.791031, 17.507837, 16.194216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.071281, 17.234838, 16.277475>,  <19.239431, 17.071039, 16.327431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.071281, 17.234838, 16.277475>,  <18.791031, 17.507837, 16.194216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.071281, 17.234838, 16.277475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166764, -0.127013, -0.977782,
		0.693769, 0.719770, 0.024827,
		0.700624, -0.682495, 0.208150,
		19.281469, 17.030090, 16.339920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.077692, 17.509247, 15.574266>,  <18.791031, 17.507837, 16.194216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.077692, 17.509247, 15.574266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.248070, 17.196341, 15.756093>,  <19.350296, 17.008596, 15.865189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.248070, 17.196341, 15.756093>,  <19.077692, 17.509247, 15.574266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.248070, 17.196341, 15.756093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170220, -0.424162, -0.889445,
		0.888592, 0.456231, -0.047513,
		0.425946, -0.782266, 0.454566,
		19.375853, 16.961660, 15.892463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.609869, 17.441393, 15.194382>,  <19.077692, 17.509247, 15.574266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.609869, 17.441393, 15.194382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.566313, 17.085066, 15.370831>,  <19.540178, 16.871269, 15.476702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.566313, 17.085066, 15.370831>,  <19.609869, 17.441393, 15.194382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.566313, 17.085066, 15.370831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271374, -0.453546, -0.848912,
		0.956294, 0.027271, 0.291131,
		-0.108891, -0.890815, 0.441124,
		19.533646, 16.817822, 15.503169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.823500, 16.960173, 14.695462>,  <19.609869, 17.441393, 15.194382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.823500, 16.960173, 14.695462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.687103, 16.701000, 14.967906>,  <19.605265, 16.545496, 15.131372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.687103, 16.701000, 14.967906>,  <19.823500, 16.960173, 14.695462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.687103, 16.701000, 14.967906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166174, -0.754668, -0.634715,
		0.925263, -0.103249, 0.365004,
		-0.340991, -0.647932, 0.681109,
		19.584806, 16.506620, 15.172238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.317060, 16.445387, 14.713290>,  <19.823500, 16.960173, 14.695462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.317060, 16.445387, 14.713290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.948326, 16.332085, 14.819108>,  <19.727085, 16.264103, 14.882599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.948326, 16.332085, 14.819108>,  <20.317060, 16.445387, 14.713290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.948326, 16.332085, 14.819108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001375, -0.680163, -0.733060,
		0.387577, -0.676125, 0.626610,
		-0.921837, -0.283255, 0.264545,
		19.671776, 16.247108, 14.898471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.297312, 15.764407, 14.659052>,  <20.317060, 16.445387, 14.713290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.297312, 15.764407, 14.659052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.909853, 15.861157, 14.636363>,  <19.677378, 15.919208, 14.622749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.909853, 15.861157, 14.636363>,  <20.297312, 15.764407, 14.659052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.909853, 15.861157, 14.636363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120889, -0.658354, -0.742937,
		-0.217041, -0.712787, 0.666954,
		-0.968648, 0.241876, -0.056722,
		19.619259, 15.933721, 14.619347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.876745, 15.141219, 14.645837>,  <20.297312, 15.764407, 14.659052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.876745, 15.141219, 14.645837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.686798, 15.432064, 14.447520>,  <19.572830, 15.606571, 14.328530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.686798, 15.432064, 14.447520>,  <19.876745, 15.141219, 14.645837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.686798, 15.432064, 14.447520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101722, -0.604935, -0.789751,
		-0.874159, -0.324593, 0.361227,
		-0.474866, 0.727113, -0.495791,
		19.544338, 15.650198, 14.298783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.054552, 15.004065, 14.654764>,  <19.876745, 15.141219, 14.645837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.054552, 15.004065, 14.654764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.271029, 15.179055, 14.367508>,  <19.400913, 15.284050, 14.195154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.271029, 15.179055, 14.367508>,  <19.054552, 15.004065, 14.654764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.271029, 15.179055, 14.367508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039125, -0.839989, -0.541190,
		-0.839989, 0.320984, -0.437478,
		0.541190, 0.437478, -0.718141,
		19.433386, 15.310299, 14.152065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.829269, 15.001018, 15.306680>,  <19.054552, 15.004065, 14.654764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.829269, 15.001018, 15.306680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.506285, 15.175560, 15.147883>,  <18.312494, 15.280285, 15.052606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.506285, 15.175560, 15.147883>,  <18.829269, 15.001018, 15.306680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.506285, 15.175560, 15.147883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434272, 0.015788, 0.900643,
		0.399268, 0.899636, 0.176749,
		-0.807460, 0.436356, -0.396991,
		18.264046, 15.306467, 15.028787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.490316, 14.593128, 15.385706>,  <18.829269, 15.001018, 15.306680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.490316, 14.593128, 15.385706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.882616, 14.663658, 15.419276>,  <20.117996, 14.705976, 15.439418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.882616, 14.663658, 15.419276>,  <19.490316, 14.593128, 15.385706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.882616, 14.663658, 15.419276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095108, -0.806649, 0.583328,
		0.170554, -0.564115, -0.807889,
		0.980747, 0.176326, 0.083925,
		20.176840, 14.716556, 15.444453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.839052, 13.996214, 15.245733>,  <19.490316, 14.593128, 15.385706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.839052, 13.996214, 15.245733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.005768, 14.242515, 15.513206>,  <20.105797, 14.390295, 15.673689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.005768, 14.242515, 15.513206>,  <19.839052, 13.996214, 15.245733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.005768, 14.242515, 15.513206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194460, -0.778989, 0.596122,
		0.887959, -0.118426, -0.444414,
		0.416790, 0.615753, 0.668681,
		20.130806, 14.427240, 15.713810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.384056, 13.674532, 15.543302>,  <19.839052, 13.996214, 15.245733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.384056, 13.674532, 15.543302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.251637, 13.945155, 15.806414>,  <20.172186, 14.107530, 15.964281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.251637, 13.945155, 15.806414>,  <20.384056, 13.674532, 15.543302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.251637, 13.945155, 15.806414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027863, -0.689774, 0.723488,
		0.943203, 0.257837, 0.209497,
		-0.331048, 0.676559, 0.657781,
		20.152323, 14.148123, 16.003748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.888954, 13.832508, 16.154757>,  <20.384056, 13.674532, 15.543302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.888954, 13.832508, 16.154757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.504536, 13.875816, 16.256477>,  <20.273886, 13.901801, 16.317511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.504536, 13.875816, 16.256477>,  <20.888954, 13.832508, 16.154757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.504536, 13.875816, 16.256477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159301, -0.534906, 0.829758,
		0.225866, 0.837946, 0.496822,
		-0.961045, 0.108270, 0.254303,
		20.216223, 13.908298, 16.332767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.860508, 14.054146, 16.905214>,  <20.888954, 13.832508, 16.154757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.860508, 14.054146, 16.905214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.507889, 13.898396, 16.798435>,  <20.296318, 13.804945, 16.734367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.507889, 13.898396, 16.798435>,  <20.860508, 14.054146, 16.905214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.507889, 13.898396, 16.798435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024376, -0.527153, 0.849421,
		-0.471465, 0.755312, 0.455219,
		-0.881548, -0.389376, -0.266946,
		20.243425, 13.781583, 16.718351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.900646, 13.476860, 17.382032>,  <20.860508, 14.054146, 16.905214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.900646, 13.476860, 17.382032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105444, 13.141929, 17.458704>,  <21.228323, 12.940969, 17.504707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105444, 13.141929, 17.458704>,  <20.900646, 13.476860, 17.382032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105444, 13.141929, 17.458704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151197, -0.131816, -0.979675,
		0.845577, 0.530571, 0.059112,
		0.511995, -0.837328, 0.191681,
		21.259043, 12.890730, 17.516209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.479834, 13.375790, 16.895876>,  <20.900646, 13.476860, 17.382032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.479834, 13.375790, 16.895876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.448057, 12.998470, 17.024796>,  <21.428991, 12.772079, 17.102148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.448057, 12.998470, 17.024796>,  <21.479834, 13.375790, 16.895876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.448057, 12.998470, 17.024796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201844, -0.331844, -0.921487,
		0.976191, -0.008149, 0.216761,
		-0.079439, -0.943299, 0.322298,
		21.424225, 12.715481, 17.121485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.062759, 13.089831, 16.625547>,  <21.479834, 13.375790, 16.895876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.062759, 13.089831, 16.625547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.819229, 12.782834, 16.705835>,  <21.673111, 12.598636, 16.754007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.819229, 12.782834, 16.705835>,  <22.062759, 13.089831, 16.625547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.819229, 12.782834, 16.705835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202157, -0.394762, -0.896267,
		0.767116, -0.505091, 0.395495,
		-0.608823, -0.767493, 0.200721,
		21.636581, 12.552587, 16.766052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.351574, 12.437346, 16.376444>,  <22.062759, 13.089831, 16.625547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.351574, 12.437346, 16.376444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.965656, 12.332479, 16.384789>,  <21.734104, 12.269558, 16.389795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.965656, 12.332479, 16.384789>,  <22.351574, 12.437346, 16.376444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.965656, 12.332479, 16.384789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096528, -0.426774, -0.899192,
		0.244643, -0.865523, 0.437057,
		-0.964796, -0.262169, 0.020860,
		21.676218, 12.253828, 16.391047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.345499, 11.828245, 16.081684>,  <22.351574, 12.437346, 16.376444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.345499, 11.828245, 16.081684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.956455, 11.915962, 16.050858>,  <21.723028, 11.968593, 16.032362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.956455, 11.915962, 16.050858>,  <22.345499, 11.828245, 16.081684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.956455, 11.915962, 16.050858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025431, -0.429950, -0.902494,
		-0.231042, -0.875816, 0.423751,
		-0.972611, 0.219291, -0.077064,
		21.664673, 11.981750, 16.027739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.952545, 11.130619, 16.036263>,  <22.345499, 11.828245, 16.081684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.952545, 11.130619, 16.036263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.737808, 11.424408, 15.870201>,  <21.608965, 11.600681, 15.770565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.737808, 11.424408, 15.870201>,  <21.952545, 11.130619, 16.036263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.737808, 11.424408, 15.870201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010597, -0.497902, -0.867168,
		-0.843616, -0.461134, 0.275079,
		-0.536843, 0.734472, -0.415152,
		21.576756, 11.644750, 15.745656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.507957, 10.751979, 15.593658>,  <21.952545, 11.130619, 16.036263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.507957, 10.751979, 15.593658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.518980, 11.131340, 15.467312>,  <21.525593, 11.358957, 15.391504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.518980, 11.131340, 15.467312>,  <21.507957, 10.751979, 15.593658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.518980, 11.131340, 15.467312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086230, -0.312553, -0.945978,
		-0.995894, 0.053304, 0.073168,
		0.027555, 0.948403, -0.315866,
		21.527246, 11.415861, 15.372552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.144180, 10.834503, 14.904840>,  <21.507957, 10.751979, 15.593658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.144180, 10.834503, 14.904840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.376143, 11.160011, 14.920273>,  <21.515320, 11.355316, 14.929532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.376143, 11.160011, 14.920273>,  <21.144180, 10.834503, 14.904840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.376143, 11.160011, 14.920273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197199, -0.094263, -0.975821,
		-0.790458, 0.573490, -0.215139,
		0.579903, 0.813771, 0.038580,
		21.550114, 11.404142, 14.931847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.055988, 11.097101, 14.261492>,  <21.144180, 10.834503, 14.904840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.055988, 11.097101, 14.261492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.378981, 11.300327, 14.381387>,  <21.572777, 11.422263, 14.453323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.378981, 11.300327, 14.381387>,  <21.055988, 11.097101, 14.261492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.378981, 11.300327, 14.381387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341095, 0.012418, -0.939947,
		-0.481276, 0.861229, -0.163271,
		0.807482, 0.508065, 0.299738,
		21.621225, 11.452746, 14.471308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.134394, 11.714259, 13.756590>,  <21.055988, 11.097101, 14.261492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.134394, 11.714259, 13.756590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.497574, 11.661253, 13.915621>,  <21.715481, 11.629450, 14.011040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.497574, 11.661253, 13.915621>,  <21.134394, 11.714259, 13.756590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.497574, 11.661253, 13.915621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409540, 0.079286, -0.908840,
		0.088912, 0.988005, 0.126257,
		0.907949, -0.132515, 0.397578,
		21.769958, 11.621499, 14.034894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.428295, 12.060608, 13.327968>,  <21.134394, 11.714259, 13.756590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.428295, 12.060608, 13.327968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.746231, 11.885114, 13.495653>,  <21.936993, 11.779817, 13.596265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.746231, 11.885114, 13.495653>,  <21.428295, 12.060608, 13.327968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.746231, 11.885114, 13.495653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544397, 0.210378, -0.812018,
		0.268068, 0.873643, 0.406063,
		0.794840, -0.438736, 0.419214,
		21.984684, 11.753493, 13.621417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.046289, 12.537553, 13.408516>,  <21.428295, 12.060608, 13.327968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.046289, 12.537553, 13.408516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.202051, 12.169721, 13.429446>,  <22.295507, 11.949021, 13.442004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.202051, 12.169721, 13.429446>,  <22.046289, 12.537553, 13.408516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.202051, 12.169721, 13.429446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516228, 0.170846, -0.839238,
		0.762807, 0.353813, 0.541241,
		0.389402, -0.919580, 0.052326,
		22.318872, 11.893847, 13.445144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.685705, 12.598150, 13.220675>,  <22.046289, 12.537553, 13.408516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.685705, 12.598150, 13.220675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.624027, 12.207747, 13.159186>,  <22.587021, 11.973504, 13.122293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.624027, 12.207747, 13.159186>,  <22.685705, 12.598150, 13.220675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.624027, 12.207747, 13.159186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412349, 0.077817, -0.907697,
		0.897882, -0.203349, 0.390457,
		-0.154195, -0.976009, -0.153722,
		22.577768, 11.914944, 13.113070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.287544, 12.286991, 12.882203>,  <22.685705, 12.598150, 13.220675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.287544, 12.286991, 12.882203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.978922, 12.045444, 12.802157>,  <22.793749, 11.900515, 12.754130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.978922, 12.045444, 12.802157>,  <23.287544, 12.286991, 12.882203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.978922, 12.045444, 12.802157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301570, -0.070212, -0.950855,
		0.560142, -0.793985, 0.236281,
		-0.771555, -0.603869, -0.200114,
		22.747456, 11.864283, 12.742124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.525618, 11.900351, 12.408023>,  <23.287544, 12.286991, 12.882203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.525618, 11.900351, 12.408023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.132523, 11.837373, 12.369168>,  <22.896666, 11.799586, 12.345856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.132523, 11.837373, 12.369168>,  <23.525618, 11.900351, 12.408023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.132523, 11.837373, 12.369168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087580, 0.066559, -0.993931,
		0.162957, -0.985282, -0.051621,
		-0.982738, -0.157447, -0.097138,
		22.837702, 11.790139, 12.340027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.444431, 11.282960, 11.960170>,  <23.525618, 11.900351, 12.408023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.444431, 11.282960, 11.960170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.117067, 11.512390, 11.946204>,  <22.920649, 11.650048, 11.937825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.117067, 11.512390, 11.946204>,  <23.444431, 11.282960, 11.960170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.117067, 11.512390, 11.946204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129557, 0.124983, -0.983664,
		-0.559843, -0.809561, -0.176598,
		-0.818408, 0.573576, -0.034913,
		22.871546, 11.684463, 11.935730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.237371, 11.200680, 11.284940>,  <23.444431, 11.282960, 11.960170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.237371, 11.200680, 11.284940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.016188, 11.515482, 11.394381>,  <22.883478, 11.704363, 11.460045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.016188, 11.515482, 11.394381>,  <23.237371, 11.200680, 11.284940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.016188, 11.515482, 11.394381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029347, 0.346565, -0.937567,
		-0.832691, -0.510407, -0.214733,
		-0.552960, 0.787005, 0.273603,
		22.850300, 11.751583, 11.476461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.734901, 11.340495, 10.810915>,  <23.237371, 11.200680, 11.284940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.734901, 11.340495, 10.810915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.714069, 11.693693, 10.997509>,  <22.701571, 11.905612, 11.109466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.714069, 11.693693, 10.997509>,  <22.734901, 11.340495, 10.810915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.714069, 11.693693, 10.997509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049721, 0.468831, -0.881887,
		-0.997405, -0.022733, -0.068319,
		-0.052078, 0.882995, 0.466484,
		22.698446, 11.958591, 11.137454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.048275, 11.702902, 10.570140>,  <22.734901, 11.340495, 10.810915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.048275, 11.702902, 10.570140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.284103, 12.004250, 10.686649>,  <22.425600, 12.185059, 10.756555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.284103, 12.004250, 10.686649>,  <22.048275, 11.702902, 10.570140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.284103, 12.004250, 10.686649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216789, 0.494974, -0.841429,
		-0.778079, 0.432938, 0.455145,
		0.589572, 0.753369, 0.291273,
		22.460976, 12.230260, 10.774031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.744011, 12.414993, 10.551471>,  <22.048275, 11.702902, 10.570140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.744011, 12.414993, 10.551471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.137701, 12.462843, 10.499335>,  <22.373915, 12.491553, 10.468054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.137701, 12.462843, 10.499335>,  <21.744011, 12.414993, 10.551471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.137701, 12.462843, 10.499335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176913, 0.667079, -0.723676,
		0.000376, 0.735320, 0.677720,
		0.984226, 0.119625, -0.130338,
		22.432968, 12.498731, 10.460234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.957293, 13.177357, 10.628493>,  <21.744011, 12.414993, 10.551471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.957293, 13.177357, 10.628493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.226807, 12.972302, 10.415622>,  <22.388515, 12.849270, 10.287899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.226807, 12.972302, 10.415622>,  <21.957293, 13.177357, 10.628493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.226807, 12.972302, 10.415622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168743, 0.594430, -0.786243,
		0.719400, 0.619563, 0.314016,
		0.673788, -0.512635, -0.532180,
		22.428944, 12.818512, 10.255968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.454672, 13.436346, 11.127881>,  <21.957293, 13.177357, 10.628493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.454672, 13.436346, 11.127881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.183559, 13.291403, 10.871971>,  <21.020893, 13.204437, 10.718425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.183559, 13.291403, 10.871971>,  <21.454672, 13.436346, 11.127881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.183559, 13.291403, 10.871971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726861, 0.461391, 0.508715,
		0.110850, 0.809824, -0.576105,
		-0.677779, -0.362358, -0.639775,
		20.980227, 13.182695, 10.680038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.070852, 14.061591, 11.317736>,  <21.454672, 13.436346, 11.127881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.070852, 14.061591, 11.317736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812263, 14.365997, 11.339377>,  <20.657110, 14.548641, 11.352363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812263, 14.365997, 11.339377>,  <21.070852, 14.061591, 11.317736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.812263, 14.365997, 11.339377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300990, 0.319564, -0.898490,
		-0.701055, -0.564565, -0.435647,
		-0.646473, 0.761016, 0.054103,
		20.618322, 14.594302, 11.355608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.758291, 14.122286, 10.630501>,  <21.070852, 14.061591, 11.317736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.758291, 14.122286, 10.630501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.770588, 14.467451, 10.832268>,  <20.777966, 14.674550, 10.953328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.770588, 14.467451, 10.832268>,  <20.758291, 14.122286, 10.630501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.770588, 14.467451, 10.832268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454317, 0.437450, -0.776037,
		-0.890309, 0.253022, -0.378588,
		0.030741, 0.862912, 0.504418,
		20.779810, 14.726325, 10.983593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.470959, 14.583088, 10.123737>,  <20.758291, 14.122286, 10.630501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.470959, 14.583088, 10.123737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.704391, 14.746248, 10.404608>,  <20.844450, 14.844144, 10.573130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.704391, 14.746248, 10.404608>,  <20.470959, 14.583088, 10.123737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.704391, 14.746248, 10.404608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452262, 0.554917, -0.698231,
		-0.674458, 0.725042, 0.139361,
		0.583580, 0.407900, 0.702176,
		20.879465, 14.868618, 10.615261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.373205, 15.326403, 10.121485>,  <20.470959, 14.583088, 10.123737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.373205, 15.326403, 10.121485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.733866, 15.203658, 10.243379>,  <20.950262, 15.130012, 10.316515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.733866, 15.203658, 10.243379>,  <20.373205, 15.326403, 10.121485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.733866, 15.203658, 10.243379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423419, 0.483007, -0.766434,
		0.088000, 0.820086, 0.565434,
		0.901650, -0.306862, 0.304735,
		21.004360, 15.111600, 10.334799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.745646, 15.904627, 10.357204>,  <20.373205, 15.326403, 10.121485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.745646, 15.904627, 10.357204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.950817, 15.619743, 10.165512>,  <21.073919, 15.448813, 10.050497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.950817, 15.619743, 10.165512>,  <20.745646, 15.904627, 10.357204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.950817, 15.619743, 10.165512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229234, 0.651631, -0.723069,
		0.827258, 0.261027, 0.497503,
		0.512929, -0.712209, -0.479231,
		21.104696, 15.406080, 10.021743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.473726, 16.044800, 10.274155>,  <20.745646, 15.904627, 10.357204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.473726, 16.044800, 10.274155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.369051, 15.794702, 9.980057>,  <21.306246, 15.644643, 9.803597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.369051, 15.794702, 9.980057>,  <21.473726, 16.044800, 10.274155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.369051, 15.794702, 9.980057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315513, 0.664518, -0.677397,
		0.912124, -0.409247, 0.023377,
		-0.261688, -0.625246, -0.735246,
		21.290545, 15.607128, 9.759483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.029917, 15.993582, 9.823313>,  <21.473726, 16.044800, 10.274155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.029917, 15.993582, 9.823313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702177, 15.919359, 9.606339>,  <21.505533, 15.874825, 9.476155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702177, 15.919359, 9.606339>,  <22.029917, 15.993582, 9.823313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.702177, 15.919359, 9.606339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259312, 0.723893, -0.639324,
		0.511293, -0.664490, -0.545006,
		-0.819351, -0.185556, -0.542432,
		21.456371, 15.863692, 9.443609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.536644, 15.962922, 10.333809>,  <22.029917, 15.993582, 9.823313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.536644, 15.962922, 10.333809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.630421, 16.320293, 10.487079>,  <22.686687, 16.534716, 10.579041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.630421, 16.320293, 10.487079>,  <22.536644, 15.962922, 10.333809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.630421, 16.320293, 10.487079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370241, -0.446513, 0.814584,
		0.898865, -0.049106, -0.435466,
		0.234442, 0.893429, 0.383174,
		22.700754, 16.588322, 10.602031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.288340, 15.987309, 10.527894>,  <22.536644, 15.962922, 10.333809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.288340, 15.987309, 10.527894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.050425, 16.225893, 10.743472>,  <22.907675, 16.369043, 10.872819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.050425, 16.225893, 10.743472>,  <23.288340, 15.987309, 10.527894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.050425, 16.225893, 10.743472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314702, -0.444154, 0.838862,
		0.739723, 0.668552, 0.076470,
		-0.594787, 0.596461, 0.538946,
		22.871988, 16.404831, 10.905156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.604528, 16.530628, 11.055178>,  <23.288340, 15.987309, 10.527894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.604528, 16.530628, 11.055178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.239502, 16.400620, 11.154443>,  <23.020487, 16.322615, 11.214002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.239502, 16.400620, 11.154443>,  <23.604528, 16.530628, 11.055178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.239502, 16.400620, 11.154443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352779, -0.318811, 0.879719,
		-0.206813, 0.890348, 0.405598,
		-0.912565, -0.325024, 0.248162,
		22.965733, 16.303112, 11.228891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.477938, 16.857185, 11.732732>,  <23.604528, 16.530628, 11.055178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.477938, 16.857185, 11.732732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.233656, 16.543167, 11.691268>,  <23.087088, 16.354757, 11.666389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.233656, 16.543167, 11.691268>,  <23.477938, 16.857185, 11.732732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.233656, 16.543167, 11.691268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323109, -0.366559, 0.872488,
		-0.722939, 0.499339, 0.477514,
		-0.610705, -0.785044, -0.103659,
		23.050444, 16.307653, 11.660171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.396835, 16.744452, 12.425375>,  <23.477938, 16.857185, 11.732732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.396835, 16.744452, 12.425375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.232922, 16.421568, 12.255439>,  <23.134573, 16.227839, 12.153477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.232922, 16.421568, 12.255439>,  <23.396835, 16.744452, 12.425375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.232922, 16.421568, 12.255439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021664, -0.474223, 0.880138,
		-0.911925, 0.351464, 0.211817,
		-0.409785, -0.807209, -0.424841,
		23.109985, 16.179405, 12.127986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.795057, 16.657690, 12.727072>,  <23.396835, 16.744452, 12.425375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.795057, 16.657690, 12.727072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.920290, 16.304039, 12.588337>,  <22.995430, 16.091848, 12.505095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.920290, 16.304039, 12.588337>,  <22.795057, 16.657690, 12.727072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.920290, 16.304039, 12.588337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071176, -0.386014, 0.919743,
		-0.947056, -0.263267, -0.183782,
		0.313080, -0.884129, -0.346838,
		23.014214, 16.038801, 12.484285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.394258, 16.134825, 13.131388>,  <22.795057, 16.657690, 12.727072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.394258, 16.134825, 13.131388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.714443, 15.944435, 12.985671>,  <22.906553, 15.830201, 12.898241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.714443, 15.944435, 12.985671>,  <22.394258, 16.134825, 13.131388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.714443, 15.944435, 12.985671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034975, -0.569649, 0.821143,
		-0.598363, -0.670035, -0.439335,
		0.800461, -0.475976, -0.364291,
		22.954582, 15.801642, 12.876384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.244440, 15.550365, 13.307382>,  <22.394258, 16.134825, 13.131388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.244440, 15.550365, 13.307382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.630888, 15.517044, 13.209668>,  <22.862757, 15.497051, 13.151040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.630888, 15.517044, 13.209668>,  <22.244440, 15.550365, 13.307382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.630888, 15.517044, 13.209668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135515, -0.641798, 0.754805,
		-0.219658, -0.762336, -0.608765,
		0.966119, -0.083302, -0.244284,
		22.920723, 15.492053, 13.136383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.438259, 14.754900, 13.239230>,  <22.244440, 15.550365, 13.307382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.438259, 14.754900, 13.239230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.774288, 14.957303, 13.317447>,  <22.975904, 15.078745, 13.364377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.774288, 14.957303, 13.317447>,  <22.438259, 14.754900, 13.239230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.774288, 14.957303, 13.317447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348546, -0.779682, 0.520203,
		0.415687, -0.368853, -0.831356,
		0.840071, 0.506008, 0.195542,
		23.026310, 15.109105, 13.376109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.904768, 14.202865, 13.439219>,  <22.438259, 14.754900, 13.239230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.904768, 14.202865, 13.439219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.099512, 14.534908, 13.547948>,  <23.216358, 14.734135, 13.613185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.099512, 14.534908, 13.547948>,  <22.904768, 14.202865, 13.439219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.099512, 14.534908, 13.547948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408388, -0.491410, 0.769243,
		0.772131, -0.263506, -0.578254,
		0.486860, 0.830109, 0.271820,
		23.245571, 14.783941, 13.629494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.532484, 13.992554, 13.696106>,  <22.904768, 14.202865, 13.439219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.532484, 13.992554, 13.696106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.483625, 14.347764, 13.873416>,  <23.454309, 14.560890, 13.979802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.483625, 14.347764, 13.873416>,  <23.532484, 13.992554, 13.696106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.483625, 14.347764, 13.873416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337017, -0.382973, 0.860088,
		0.933541, 0.254448, -0.252501,
		-0.122147, 0.888025, 0.443274,
		23.446981, 14.614171, 14.006398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.167854, 14.261794, 14.077652>,  <23.532484, 13.992554, 13.696106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.167854, 14.261794, 14.077652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.835754, 14.425547, 14.228961>,  <23.636494, 14.523798, 14.319746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.835754, 14.425547, 14.228961>,  <24.167854, 14.261794, 14.077652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.835754, 14.425547, 14.228961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306994, -0.230586, 0.923355,
		0.465229, 0.882744, 0.065767,
		-0.830251, 0.409382, 0.378272,
		23.586679, 14.548361, 14.342443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.330105, 14.687386, 14.683660>,  <24.167854, 14.261794, 14.077652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.330105, 14.687386, 14.683660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.937563, 14.662647, 14.756456>,  <23.702038, 14.647804, 14.800135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.937563, 14.662647, 14.756456>,  <24.330105, 14.687386, 14.683660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.937563, 14.662647, 14.756456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190665, -0.193247, 0.962446,
		-0.024354, 0.979199, 0.201435,
		-0.981353, -0.061846, 0.181993,
		23.643158, 14.644094, 14.811054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.184830, 15.017340, 15.349115>,  <24.330105, 14.687386, 14.683660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.184830, 15.017340, 15.349115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.867233, 14.781540, 15.289695>,  <23.676676, 14.640059, 15.254043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.867233, 14.781540, 15.289695>,  <24.184830, 15.017340, 15.349115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.867233, 14.781540, 15.289695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036910, -0.290650, 0.956117,
		-0.606807, 0.753666, 0.252532,
		-0.793992, -0.589500, -0.148551,
		23.629036, 14.604690, 15.245130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.016785, 14.963909, 16.043024>,  <24.184830, 15.017340, 15.349115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.016785, 14.963909, 16.043024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.778959, 14.687833, 15.878036>,  <23.636265, 14.522187, 15.779043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.778959, 14.687833, 15.878036>,  <24.016785, 14.963909, 16.043024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.778959, 14.687833, 15.878036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183727, -0.382800, 0.905378,
		-0.782776, 0.614087, 0.100792,
		-0.594563, -0.690190, -0.412471,
		23.600590, 14.480776, 15.754295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.237265, 15.445368, 16.503559>,  <24.016785, 14.963909, 16.043024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.237265, 15.445368, 16.503559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625284, 15.350071, 16.484585>,  <24.858095, 15.292893, 16.473200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625284, 15.350071, 16.484585>,  <24.237265, 15.445368, 16.503559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.625284, 15.350071, 16.484585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230809, 0.964832, -0.125803,
		0.075740, 0.111086, 0.990920,
		0.970047, -0.238241, -0.047437,
		24.916298, 15.278599, 16.470354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.614628, 15.796488, 17.034851>,  <24.237265, 15.445368, 16.503559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.614628, 15.796488, 17.034851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860081, 15.713849, 16.730019>,  <25.007353, 15.664266, 16.547119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860081, 15.713849, 16.730019>,  <24.614628, 15.796488, 17.034851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860081, 15.713849, 16.730019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249395, 0.966467, -0.061190,
		0.749170, -0.152511, 0.644581,
		0.613634, -0.206597, -0.762083,
		25.044170, 15.651870, 16.501394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310919, 15.999887, 17.229362>,  <24.614628, 15.796488, 17.034851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310919, 15.999887, 17.229362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223574, 16.000525, 16.839016>,  <25.171167, 16.000908, 16.604809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223574, 16.000525, 16.839016>,  <25.310919, 15.999887, 17.229362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223574, 16.000525, 16.839016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268955, 0.961368, -0.058610,
		0.938073, -0.275262, -0.210354,
		-0.218361, 0.001595, -0.975867,
		25.158066, 16.001003, 16.546255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.656610, 16.700413, 17.180384>,  <25.310919, 15.999887, 17.229362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.656610, 16.700413, 17.180384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908663, 16.838972, 17.458361>,  <26.059895, 16.922108, 17.625147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908663, 16.838972, 17.458361>,  <25.656610, 16.700413, 17.180384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908663, 16.838972, 17.458361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445129, 0.572176, -0.688821,
		-0.636236, 0.743386, 0.206353,
		0.630130, 0.346399, 0.694942,
		26.097702, 16.942892, 17.666843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024523, 16.914608, 16.440790>,  <25.656610, 16.700413, 17.180384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024523, 16.914608, 16.440790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292870, 16.857550, 16.149698>,  <26.453878, 16.823315, 15.975043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292870, 16.857550, 16.149698>,  <26.024523, 16.914608, 16.440790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292870, 16.857550, 16.149698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694973, -0.221463, 0.684081,
		-0.258750, -0.964679, -0.049433,
		0.670865, -0.142651, -0.727729,
		26.494129, 16.814754, 15.931379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379904, 16.334927, 16.606495>,  <26.024523, 16.914608, 16.440790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379904, 16.334927, 16.606495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613535, 16.558332, 16.370899>,  <26.753714, 16.692377, 16.229542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613535, 16.558332, 16.370899>,  <26.379904, 16.334927, 16.606495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613535, 16.558332, 16.370899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793124, -0.238366, 0.560478,
		0.172641, -0.794507, -0.582198,
		0.584080, 0.558517, -0.588991,
		26.788759, 16.725887, 16.194202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116402, 16.121822, 16.441973>,  <26.379904, 16.334927, 16.606495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116402, 16.121822, 16.441973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388483, 16.180895, 16.729170>,  <27.551731, 16.216339, 16.901487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388483, 16.180895, 16.729170>,  <27.116402, 16.121822, 16.441973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388483, 16.180895, 16.729170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266027, -0.962448, -0.054061,
		0.683047, 0.227778, -0.693948,
		0.680203, 0.147683, 0.717993,
		27.592545, 16.225199, 16.944567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437960, 15.401823, 16.517668>,  <27.116402, 16.121822, 16.441973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437960, 15.401823, 16.517668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687054, 15.708354, 16.580843>,  <27.836510, 15.892272, 16.618748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687054, 15.708354, 16.580843>,  <27.437960, 15.401823, 16.517668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687054, 15.708354, 16.580843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551335, -0.286544, -0.783532,
		-0.555186, 0.575009, -0.600944,
		0.622735, 0.766327, 0.157938,
		27.873875, 15.938252, 16.628223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771473, 15.388094, 15.923557>,  <27.437960, 15.401823, 16.517668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771473, 15.388094, 15.923557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956604, 15.700920, 16.090488>,  <28.067682, 15.888616, 16.190647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956604, 15.700920, 16.090488>,  <27.771473, 15.388094, 15.923557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956604, 15.700920, 16.090488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636533, 0.034442, -0.770480,
		-0.616939, 0.622244, -0.481869,
		0.462830, 0.782065, 0.417328,
		28.095453, 15.935539, 16.215687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541010, 15.775546, 15.380307>,  <27.771473, 15.388094, 15.923557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541010, 15.775546, 15.380307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439610, 15.743075, 14.994738>,  <27.378769, 15.723593, 14.763396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439610, 15.743075, 14.994738>,  <27.541010, 15.775546, 15.380307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439610, 15.743075, 14.994738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396521, -0.900188, 0.180091,
		-0.882331, 0.427868, 0.196010,
		-0.253501, -0.081178, -0.963923,
		27.363560, 15.718722, 14.705561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839455, 15.329336, 15.483850>,  <27.541010, 15.775546, 15.380307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839455, 15.329336, 15.483850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699158, 15.021025, 15.271106>,  <26.614979, 14.836038, 15.143458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699158, 15.021025, 15.271106>,  <26.839455, 15.329336, 15.483850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699158, 15.021025, 15.271106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898022, 0.115764, 0.424446,
		-0.265584, 0.626496, -0.732781,
		-0.350744, -0.770780, -0.531862,
		26.593935, 14.789791, 15.111547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<17.474489, 22.472109, 21.184301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.226006, 22.275412, 21.428362>,  <17.076916, 22.157393, 21.574799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.226006, 22.275412, 21.428362>,  <17.474489, 22.472109, 21.184301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.226006, 22.275412, 21.428362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323883, -0.547883, -0.771313,
		0.713581, -0.676765, 0.181082,
		-0.621210, -0.491745, 0.610152,
		17.039642, 22.127888, 21.611408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.379322, 21.831732, 20.867338>,  <17.474489, 22.472109, 21.184301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.379322, 21.831732, 20.867338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.083355, 21.806087, 21.135193>,  <16.905775, 21.790701, 21.295906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.083355, 21.806087, 21.135193>,  <17.379322, 21.831732, 20.867338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.083355, 21.806087, 21.135193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472899, -0.658389, -0.585569,
		0.478423, -0.749942, 0.456835,
		-0.739918, -0.064113, 0.669635,
		16.861380, 21.786854, 21.336082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221111, 21.141405, 21.028326>,  <17.379322, 21.831732, 20.867338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221111, 21.141405, 21.028326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.895163, 21.360826, 21.103237>,  <16.699593, 21.492479, 21.148184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.895163, 21.360826, 21.103237>,  <17.221111, 21.141405, 21.028326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.895163, 21.360826, 21.103237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536569, -0.591650, -0.601701,
		-0.219263, -0.590796, 0.776456,
		-0.814873, 0.548554, 0.187276,
		16.650702, 21.525393, 21.159420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822414, 20.714054, 21.329704>,  <17.221111, 21.141405, 21.028326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.822414, 20.714054, 21.329704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.586920, 21.002331, 21.183285>,  <16.445623, 21.175297, 21.095432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.586920, 21.002331, 21.183285>,  <16.822414, 20.714054, 21.329704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586920, 21.002331, 21.183285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417831, -0.658989, -0.625421,
		-0.691960, -0.215260, 0.689097,
		-0.588735, 0.720692, -0.366052,
		16.410299, 21.218538, 21.073469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.110321, 20.379116, 21.295919>,  <16.822414, 20.714054, 21.329704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.110321, 20.379116, 21.295919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.096687, 20.707087, 21.067339>,  <16.088507, 20.903870, 20.930191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.096687, 20.707087, 21.067339>,  <16.110321, 20.379116, 21.295919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.096687, 20.707087, 21.067339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409481, -0.533047, -0.740396,
		-0.911682, 0.208763, 0.353913,
		-0.034084, 0.819926, -0.571453,
		16.086462, 20.953064, 20.895903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.432497, 20.355925, 20.895657>,  <16.110321, 20.379116, 21.295919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.432497, 20.355925, 20.895657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.714902, 20.541073, 20.681255>,  <15.884344, 20.652163, 20.552614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.714902, 20.541073, 20.681255>,  <15.432497, 20.355925, 20.895657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.714902, 20.541073, 20.681255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244184, -0.551336, -0.797749,
		-0.664772, 0.694102, -0.276223,
		0.706011, 0.462872, -0.536002,
		15.926705, 20.679934, 20.520454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.070581, 20.445717, 20.316250>,  <15.432497, 20.355925, 20.895657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.070581, 20.445717, 20.316250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.448895, 20.519295, 20.209177>,  <15.675884, 20.563442, 20.144934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.448895, 20.519295, 20.209177>,  <15.070581, 20.445717, 20.316250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.448895, 20.519295, 20.209177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167426, -0.430107, -0.887117,
		-0.278314, 0.883839, -0.375992,
		0.945785, 0.183946, -0.267682,
		15.732631, 20.574478, 20.128872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.982525, 20.690767, 19.653269>,  <15.070581, 20.445717, 20.316250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.982525, 20.690767, 19.653269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.357904, 20.567122, 19.714930>,  <15.583132, 20.492933, 19.751926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.357904, 20.567122, 19.714930>,  <14.982525, 20.690767, 19.653269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.357904, 20.567122, 19.714930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018017, -0.489469, -0.871834,
		0.344951, 0.815394, -0.464911,
		0.938448, -0.309116, 0.154152,
		15.639439, 20.474386, 19.761175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454050, 20.775564, 19.002800>,  <14.982525, 20.690767, 19.653269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.454050, 20.775564, 19.002800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.653201, 20.527323, 19.245111>,  <15.772692, 20.378378, 19.390499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.653201, 20.527323, 19.245111>,  <15.454050, 20.775564, 19.002800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.653201, 20.527323, 19.245111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075148, -0.665011, -0.743043,
		0.863985, 0.415468, -0.284457,
		0.497878, -0.620602, 0.605781,
		15.802565, 20.341143, 19.426846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.864636, 20.455107, 18.490717>,  <15.454050, 20.775564, 19.002800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.864636, 20.455107, 18.490717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.874630, 20.225845, 18.818344>,  <15.880627, 20.088289, 19.014919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.874630, 20.225845, 18.818344>,  <15.864636, 20.455107, 18.490717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.874630, 20.225845, 18.818344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057739, -0.818782, -0.571193,
		0.998019, -0.033021, -0.053550,
		0.024985, -0.573154, 0.819067,
		15.882126, 20.053900, 19.064064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.475588, 20.023874, 18.433207>,  <15.864636, 20.455107, 18.490717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.475588, 20.023874, 18.433207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.190067, 19.861357, 18.661386>,  <16.018755, 19.763845, 18.798294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.190067, 19.861357, 18.661386>,  <16.475588, 20.023874, 18.433207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.190067, 19.861357, 18.661386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030084, -0.795983, -0.604571,
		0.699701, -0.448705, 0.555951,
		-0.713802, -0.406294, 0.570449,
		15.975926, 19.739470, 18.832521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505054, 19.251089, 18.342827>,  <16.475588, 20.023874, 18.433207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.505054, 19.251089, 18.342827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.154137, 19.257952, 18.534685>,  <15.943586, 19.262070, 18.649799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.154137, 19.257952, 18.534685>,  <16.505054, 19.251089, 18.342827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.154137, 19.257952, 18.534685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265582, -0.849771, -0.455363,
		0.399776, -0.526873, 0.750056,
		-0.877294, 0.017158, 0.479646,
		15.890948, 19.263100, 18.678579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.360615, 18.556355, 18.682049>,  <16.505054, 19.251089, 18.342827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.360615, 18.556355, 18.682049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.997062, 18.716333, 18.634762>,  <15.778930, 18.812321, 18.606390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.997062, 18.716333, 18.634762>,  <16.360615, 18.556355, 18.682049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.997062, 18.716333, 18.634762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334580, -0.868465, -0.365820,
		-0.248976, -0.292934, 0.923147,
		-0.908882, 0.399947, -0.118217,
		15.724397, 18.836317, 18.599297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.924449, 18.137627, 19.017645>,  <16.360615, 18.556355, 18.682049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.924449, 18.137627, 19.017645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.703661, 18.328579, 18.744167>,  <15.571188, 18.443151, 18.580080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.703661, 18.328579, 18.744167>,  <15.924449, 18.137627, 19.017645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.703661, 18.328579, 18.744167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446149, -0.861754, -0.241519,
		-0.704472, 0.171717, 0.688645,
		-0.551970, 0.477382, -0.683693,
		15.538070, 18.471794, 18.539059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246967, 17.675056, 18.976034>,  <15.924449, 18.137627, 19.017645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.246967, 17.675056, 18.976034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.288399, 17.926981, 18.668110>,  <15.313257, 18.078135, 18.483355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.288399, 17.926981, 18.668110>,  <15.246967, 17.675056, 18.976034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.288399, 17.926981, 18.668110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389199, -0.686596, -0.614093,
		-0.915312, 0.363217, 0.174004,
		0.103579, 0.629809, -0.769813,
		15.319472, 18.115923, 18.437166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.688654, 17.480429, 18.434650>,  <15.246967, 17.675056, 18.976034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.688654, 17.480429, 18.434650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.946618, 17.694658, 18.216566>,  <15.101397, 17.823196, 18.085716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.946618, 17.694658, 18.216566>,  <14.688654, 17.480429, 18.434650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.946618, 17.694658, 18.216566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265168, -0.512263, -0.816867,
		-0.716782, 0.671378, -0.188347,
		0.644910, 0.535572, -0.545209,
		15.140091, 17.855330, 18.053003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.338455, 17.683214, 17.789114>,  <14.688654, 17.480429, 18.434650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.338455, 17.683214, 17.789114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.729283, 17.717237, 17.711039>,  <14.963780, 17.737652, 17.664192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.729283, 17.717237, 17.711039>,  <14.338455, 17.683214, 17.789114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.729283, 17.717237, 17.711039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115580, -0.558019, -0.821739,
		-0.178817, 0.825457, -0.535393,
		0.977070, 0.085060, -0.195190,
		15.022405, 17.742756, 17.652481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.334336, 17.792673, 17.110277>,  <14.338455, 17.683214, 17.789114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.334336, 17.792673, 17.110277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.711319, 17.683290, 17.187214>,  <14.937509, 17.617661, 17.233376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.711319, 17.683290, 17.187214>,  <14.334336, 17.792673, 17.110277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.711319, 17.683290, 17.187214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041753, -0.667082, -0.743813,
		0.331709, 0.692981, -0.640114,
		0.942457, -0.273456, 0.192343,
		14.994056, 17.601254, 17.244917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691466, 17.795279, 16.490736>,  <14.334336, 17.792673, 17.110277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.691466, 17.795279, 16.490736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.912174, 17.545845, 16.712255>,  <15.044599, 17.396185, 16.845167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.912174, 17.545845, 16.712255>,  <14.691466, 17.795279, 16.490736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.912174, 17.545845, 16.712255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235955, -0.520179, -0.820816,
		0.799922, 0.583573, -0.139881,
		0.551770, -0.623584, 0.553799,
		15.077705, 17.358770, 16.878395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.339046, 17.549294, 16.074190>,  <14.691466, 17.795279, 16.490736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.339046, 17.549294, 16.074190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.295897, 17.265682, 16.352942>,  <15.270009, 17.095514, 16.520193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.295897, 17.265682, 16.352942>,  <15.339046, 17.549294, 16.074190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.295897, 17.265682, 16.352942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179551, -0.703337, -0.687807,
		0.977817, 0.050932, 0.203175,
		-0.107869, -0.709029, 0.696880,
		15.263536, 17.052973, 16.562006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696627, 17.106903, 15.714433>,  <15.339046, 17.549294, 16.074190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.696627, 17.106903, 15.714433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.530165, 16.894638, 16.009787>,  <15.430287, 16.767279, 16.186998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.530165, 16.894638, 16.009787>,  <15.696627, 17.106903, 15.714433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.530165, 16.894638, 16.009787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120346, -0.837041, -0.533741,
		0.901295, -0.133257, 0.412202,
		-0.416155, -0.530664, 0.738384,
		15.405318, 16.735439, 16.231302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.198483, 16.546917, 15.873787>,  <15.696627, 17.106903, 15.714433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.198483, 16.546917, 15.873787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.812115, 16.461105, 15.931722>,  <15.580295, 16.409618, 15.966483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.812115, 16.461105, 15.931722>,  <16.198483, 16.546917, 15.873787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.812115, 16.461105, 15.931722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051608, -0.707929, -0.704396,
		0.253649, -0.672914, 0.694873,
		-0.965919, -0.214530, 0.144838,
		15.522339, 16.396746, 15.975173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.095604, 16.476040, 15.128283>,  <16.198483, 16.546917, 15.873787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.095604, 16.476040, 15.128283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.363516, 16.556009, 14.842226>,  <16.524263, 16.603991, 14.670592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.363516, 16.556009, 14.842226>,  <16.095604, 16.476040, 15.128283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.363516, 16.556009, 14.842226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308571, 0.801048, 0.512938,
		0.675412, -0.564227, 0.474834,
		0.669778, 0.199925, -0.715141,
		16.564449, 16.615988, 14.627684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.771578, 16.756716, 15.441213>,  <16.095604, 16.476040, 15.128283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.771578, 16.756716, 15.441213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.769501, 16.900164, 15.067824>,  <16.768255, 16.986233, 14.843792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.769501, 16.900164, 15.067824>,  <16.771578, 16.756716, 15.441213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.769501, 16.900164, 15.067824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252234, 0.903769, 0.345804,
		0.967652, -0.233658, -0.095147,
		-0.005191, 0.358618, -0.933470,
		16.767942, 17.007750, 14.787784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475918, 17.155472, 15.329260>,  <16.771578, 16.756716, 15.441213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.475918, 17.155472, 15.329260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.231468, 17.291672, 15.043439>,  <17.084799, 17.373392, 14.871946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.231468, 17.291672, 15.043439>,  <17.475918, 17.155472, 15.329260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.231468, 17.291672, 15.043439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123194, 0.932660, 0.339071,
		0.781887, 0.119187, -0.611921,
		-0.611126, 0.340500, -0.714552,
		17.048130, 17.393822, 14.829073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.743376, 17.800690, 15.184877>,  <17.475918, 17.155472, 15.329260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.743376, 17.800690, 15.184877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.366060, 17.827621, 15.054851>,  <17.139671, 17.843781, 14.976834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.366060, 17.827621, 15.054851>,  <17.743376, 17.800690, 15.184877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.366060, 17.827621, 15.054851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013231, 0.970811, 0.239480,
		0.331703, 0.230201, -0.914867,
		-0.943291, 0.067332, -0.325067,
		17.083073, 17.847820, 14.957331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.706673, 18.334515, 14.827849>,  <17.743376, 17.800690, 15.184877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.706673, 18.334515, 14.827849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.333183, 18.263136, 14.951992>,  <17.109091, 18.220308, 15.026478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.333183, 18.263136, 14.951992>,  <17.706673, 18.334515, 14.827849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.333183, 18.263136, 14.951992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018145, 0.842215, 0.538836,
		-0.357539, 0.508754, -0.783157,
		-0.933722, -0.178445, 0.310356,
		17.053066, 18.209602, 15.045099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.378061, 18.888107, 14.651076>,  <17.706673, 18.334515, 14.827849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.378061, 18.888107, 14.651076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.168531, 18.724991, 14.950226>,  <17.042814, 18.627121, 15.129715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.168531, 18.724991, 14.950226>,  <17.378061, 18.888107, 14.651076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.168531, 18.724991, 14.950226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047753, 0.890641, 0.452193,
		-0.850487, 0.201156, -0.486012,
		-0.523824, -0.407793, 0.747873,
		17.011385, 18.602654, 15.174587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.169516, 19.495581, 14.944143>,  <17.378061, 18.888107, 14.651076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.169516, 19.495581, 14.944143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.020941, 19.223587, 15.197017>,  <16.931795, 19.060390, 15.348741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.020941, 19.223587, 15.197017>,  <17.169516, 19.495581, 14.944143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.020941, 19.223587, 15.197017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106137, 0.707529, 0.698669,
		-0.922372, 0.192413, -0.334974,
		-0.371437, -0.679985, 0.632182,
		16.909510, 19.019592, 15.386671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.673038, 19.815620, 15.209478>,  <17.169516, 19.495581, 14.944143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.673038, 19.815620, 15.209478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.799700, 19.536968, 15.466986>,  <16.875696, 19.369778, 15.621490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.799700, 19.536968, 15.466986>,  <16.673038, 19.815620, 15.209478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799700, 19.536968, 15.466986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113508, 0.701644, 0.703428,
		-0.941725, -0.149670, 0.301251,
		0.316653, -0.696631, 0.643767,
		16.894695, 19.327978, 15.660116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427376, 20.099190, 15.827456>,  <16.673038, 19.815620, 15.209478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.427376, 20.099190, 15.827456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.671158, 19.824465, 15.985876>,  <16.817427, 19.659630, 16.080929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.671158, 19.824465, 15.985876>,  <16.427376, 20.099190, 15.827456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.671158, 19.824465, 15.985876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187780, 0.610380, 0.769529,
		-0.770263, -0.394622, 0.500968,
		0.609454, -0.686812, 0.396051,
		16.853994, 19.618422, 16.104691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265152, 19.972250, 16.462498>,  <16.427376, 20.099190, 15.827456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.265152, 19.972250, 16.462498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.650639, 19.866419, 16.448357>,  <16.881929, 19.802919, 16.439873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.650639, 19.866419, 16.448357>,  <16.265152, 19.972250, 16.462498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.650639, 19.866419, 16.448357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191440, 0.592783, 0.782278,
		-0.186019, -0.760661, 0.621926,
		0.963716, -0.264580, -0.035352,
		16.939753, 19.787045, 16.437752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.379406, 19.717613, 17.169184>,  <16.265152, 19.972250, 16.462498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.379406, 19.717613, 17.169184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.714720, 19.845222, 16.992321>,  <16.915909, 19.921789, 16.886204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.714720, 19.845222, 16.992321>,  <16.379406, 19.717613, 17.169184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.714720, 19.845222, 16.992321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143176, 0.653687, 0.743097,
		0.526094, -0.686235, 0.502302,
		0.838287, 0.319022, -0.442153,
		16.966206, 19.940929, 16.859674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734148, 19.979412, 17.673084>,  <16.379406, 19.717613, 17.169184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.734148, 19.979412, 17.673084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.007246, 20.082193, 17.399490>,  <17.171104, 20.143862, 17.235334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.007246, 20.082193, 17.399490>,  <16.734148, 19.979412, 17.673084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.007246, 20.082193, 17.399490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430306, 0.615156, 0.660620,
		0.590502, -0.745359, 0.309430,
		0.682747, 0.256948, -0.683984,
		17.212069, 20.159279, 17.194294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.420971, 19.889952, 17.970797>,  <16.734148, 19.979412, 17.673084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.420971, 19.889952, 17.970797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.442732, 20.171101, 17.687103>,  <17.455790, 20.339790, 17.516888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.442732, 20.171101, 17.687103>,  <17.420971, 19.889952, 17.970797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.442732, 20.171101, 17.687103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560639, 0.566257, 0.604184,
		0.826271, -0.430493, -0.363252,
		0.054403, 0.702873, -0.709232,
		17.459053, 20.381962, 17.474333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.136475, 20.057375, 17.859793>,  <17.420971, 19.889952, 17.970797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.136475, 20.057375, 17.859793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.943857, 20.374393, 17.710135>,  <17.828287, 20.564606, 17.620340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.943857, 20.374393, 17.710135>,  <18.136475, 20.057375, 17.859793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.943857, 20.374393, 17.710135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547793, 0.605413, 0.577406,
		0.684134, 0.073091, -0.725684,
		-0.481542, 0.792548, -0.374145,
		17.799395, 20.612158, 17.597891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.640987, 20.551632, 17.676445>,  <18.136475, 20.057375, 17.859793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.640987, 20.551632, 17.676445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.306141, 20.761480, 17.738428>,  <18.105234, 20.887390, 17.775618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.306141, 20.761480, 17.738428>,  <18.640987, 20.551632, 17.676445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.306141, 20.761480, 17.738428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492898, 0.600520, 0.629625,
		0.237258, 0.603447, -0.761288,
		-0.837114, 0.524622, 0.154960,
		18.055006, 20.918867, 17.784916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.853901, 21.208542, 17.688158>,  <18.640987, 20.551632, 17.676445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.853901, 21.208542, 17.688158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.484428, 21.228848, 17.840071>,  <18.262745, 21.241030, 17.931217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.484428, 21.228848, 17.840071>,  <18.853901, 21.208542, 17.688158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.484428, 21.228848, 17.840071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344318, 0.544800, 0.764616,
		-0.168091, 0.837028, -0.520701,
		-0.923683, 0.050762, 0.379780,
		18.207323, 21.244076, 17.954004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.689159, 21.944304, 17.731001>,  <18.853901, 21.208542, 17.688158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.689159, 21.944304, 17.731001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.449606, 21.756546, 17.990541>,  <18.305874, 21.643892, 18.146265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.449606, 21.756546, 17.990541>,  <18.689159, 21.944304, 17.731001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.449606, 21.756546, 17.990541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281137, 0.635423, 0.719166,
		-0.749867, 0.613112, -0.248580,
		-0.598883, -0.469394, 0.648852,
		18.269941, 21.615728, 18.185198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.486027, 22.456564, 18.053484>,  <18.689159, 21.944304, 17.731001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.486027, 22.456564, 18.053484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.383213, 22.148767, 18.287344>,  <18.321526, 21.964090, 18.427660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.383213, 22.148767, 18.287344>,  <18.486027, 22.456564, 18.053484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.383213, 22.148767, 18.287344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325971, 0.500490, 0.802030,
		-0.909768, 0.396727, 0.122190,
		-0.257032, -0.769492, 0.584651,
		18.306103, 21.917919, 18.462740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.054785, 22.662241, 18.605843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.216679, 22.330332, 18.759552>,  <18.313814, 22.131186, 18.851778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.216679, 22.330332, 18.759552>,  <18.054785, 22.662241, 18.605843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.216679, 22.330332, 18.759552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156847, 0.476995, 0.864797,
		-0.900883, -0.289740, 0.323204,
		0.404733, -0.829775, 0.384272,
		18.338099, 22.081400, 18.874834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777666, 22.651516, 19.300056>,  <18.054785, 22.662241, 18.605843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777666, 22.651516, 19.300056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.088600, 22.399950, 19.305895>,  <18.275162, 22.249010, 19.309399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.088600, 22.399950, 19.305895>,  <17.777666, 22.651516, 19.300056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.088600, 22.399950, 19.305895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131613, 0.185275, 0.973833,
		-0.615163, -0.755075, 0.226795,
		0.777337, -0.628915, 0.014597,
		18.321802, 22.211275, 19.310274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748022, 22.263838, 19.966204>,  <17.777666, 22.651516, 19.300056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.748022, 22.263838, 19.966204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.124582, 22.231735, 19.835163>,  <18.350519, 22.212473, 19.756538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.124582, 22.231735, 19.835163>,  <17.748022, 22.263838, 19.966204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.124582, 22.231735, 19.835163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337149, 0.196028, 0.920817,
		-0.009684, -0.977308, 0.211600,
		0.941401, -0.080258, -0.327600,
		18.407003, 22.207659, 19.736883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.119684, 21.838745, 20.479826>,  <17.748022, 22.263838, 19.966204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.119684, 21.838745, 20.479826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.397758, 22.050917, 20.285770>,  <18.564604, 22.178219, 20.169336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.397758, 22.050917, 20.285770>,  <18.119684, 21.838745, 20.479826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.397758, 22.050917, 20.285770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344518, 0.346480, 0.872502,
		0.630891, -0.773691, 0.058126,
		0.695187, 0.530428, -0.485141,
		18.606314, 22.210045, 20.140228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.662682, 21.702888, 20.853083>,  <18.119684, 21.838745, 20.479826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.662682, 21.702888, 20.853083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.771639, 22.014967, 20.627838>,  <18.837013, 22.202215, 20.492691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.771639, 22.014967, 20.627838>,  <18.662682, 21.702888, 20.853083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.771639, 22.014967, 20.627838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646141, 0.285323, 0.707880,
		0.712954, -0.556670, -0.426398,
		0.272394, 0.780198, -0.563109,
		18.853357, 22.249027, 20.458906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.419252, 21.680941, 20.786806>,  <18.662682, 21.702888, 20.853083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.419252, 21.680941, 20.786806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.304207, 22.057791, 20.717899>,  <19.235180, 22.283901, 20.676556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.304207, 22.057791, 20.717899>,  <19.419252, 21.680941, 20.786806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304207, 22.057791, 20.717899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685989, 0.328165, 0.649405,
		0.668354, 0.068605, -0.740673,
		-0.287615, 0.942126, -0.172267,
		19.217922, 22.340429, 20.666220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.005857, 22.123390, 20.838175>,  <19.419252, 21.680941, 20.786806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.005857, 22.123390, 20.838175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.704805, 22.380407, 20.895706>,  <19.524174, 22.534618, 20.930225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.704805, 22.380407, 20.895706>,  <20.005857, 22.123390, 20.838175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.704805, 22.380407, 20.895706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575796, 0.536309, 0.617115,
		0.319386, 0.547276, -0.773616,
		-0.752630, 0.642543, 0.143829,
		19.479017, 22.573170, 20.938854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.362753, 22.756647, 20.840796>,  <20.005857, 22.123390, 20.838175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.362753, 22.756647, 20.840796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.007347, 22.829594, 21.009216>,  <19.794104, 22.873362, 21.110270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.007347, 22.829594, 21.009216>,  <20.362753, 22.756647, 20.840796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.007347, 22.829594, 21.009216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431307, 0.645076, 0.630755,
		-0.156581, 0.742037, -0.651815,
		-0.888513, 0.182368, 0.421053,
		19.740793, 22.884304, 21.135532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.171898, 23.393269, 20.649712>,  <20.362753, 22.756647, 20.840796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.171898, 23.393269, 20.649712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.010675, 23.309557, 21.006083>,  <19.913942, 23.259329, 21.219904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.010675, 23.309557, 21.006083>,  <20.171898, 23.393269, 20.649712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.010675, 23.309557, 21.006083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472497, 0.786134, 0.398422,
		-0.783769, 0.581546, -0.217970,
		-0.403054, -0.209280, 0.890926,
		19.889759, 23.246773, 21.273361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.884743, 24.057116, 20.865755>,  <20.171898, 23.393269, 20.649712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.884743, 24.057116, 20.865755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.885168, 23.836090, 21.199142>,  <19.885424, 23.703474, 21.399176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.885168, 23.836090, 21.199142>,  <19.884743, 24.057116, 20.865755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.885168, 23.836090, 21.199142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347246, 0.781811, 0.517872,
		-0.937774, 0.288868, 0.192707,
		0.001064, -0.552563, 0.833470,
		19.885487, 23.670321, 21.449184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.869059, 24.532200, 21.280888>,  <19.884743, 24.057116, 20.865755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.869059, 24.532200, 21.280888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.959871, 24.215868, 21.508236>,  <20.014359, 24.026070, 21.644646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.959871, 24.215868, 21.508236>,  <19.869059, 24.532200, 21.280888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.959871, 24.215868, 21.508236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535411, 0.588855, 0.605463,
		-0.813505, 0.166851, 0.557109,
		0.227034, -0.790829, 0.568370,
		20.027981, 23.978619, 21.678747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.693239, 24.727882, 21.978134>,  <19.869059, 24.532200, 21.280888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.693239, 24.727882, 21.978134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.947065, 24.425846, 22.044064>,  <20.099361, 24.244625, 22.083622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.947065, 24.425846, 22.044064>,  <19.693239, 24.727882, 21.978134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.947065, 24.425846, 22.044064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305098, 0.440683, 0.844224,
		-0.710100, -0.485427, 0.510019,
		0.634566, -0.755089, 0.164826,
		20.137436, 24.199320, 22.093512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.655993, 24.560251, 22.691706>,  <19.693239, 24.727882, 21.978134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.655993, 24.560251, 22.691706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.009512, 24.408031, 22.582834>,  <20.221624, 24.316700, 22.517511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.009512, 24.408031, 22.582834>,  <19.655993, 24.560251, 22.691706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.009512, 24.408031, 22.582834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439426, 0.475412, 0.762160,
		-0.160643, -0.793198, 0.587393,
		0.883798, -0.380551, -0.272180,
		20.274651, 24.293867, 22.501181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.879324, 24.390610, 23.342855>,  <19.655993, 24.560251, 22.691706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.879324, 24.390610, 23.342855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.195024, 24.400599, 23.097429>,  <20.384445, 24.406591, 22.950174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.195024, 24.400599, 23.097429>,  <19.879324, 24.390610, 23.342855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195024, 24.400599, 23.097429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546855, 0.425945, 0.720778,
		0.279342, -0.904405, 0.322522,
		0.789251, 0.024970, -0.613563,
		20.431799, 24.408091, 22.913361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.484777, 24.035517, 23.689491>,  <19.879324, 24.390610, 23.342855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.484777, 24.035517, 23.689491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.648172, 24.284979, 23.422899>,  <20.746210, 24.434656, 23.262945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.648172, 24.284979, 23.422899>,  <20.484777, 24.035517, 23.689491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.648172, 24.284979, 23.422899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604647, 0.362101, 0.709426,
		0.683769, -0.692776, -0.229176,
		0.408488, 0.623654, -0.666478,
		20.770720, 24.472075, 23.222956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.272635, 24.039085, 23.795582>,  <20.484777, 24.035517, 23.689491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.272635, 24.039085, 23.795582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.247906, 24.368107, 23.569454>,  <21.233068, 24.565519, 23.433777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.247906, 24.368107, 23.569454>,  <21.272635, 24.039085, 23.795582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.247906, 24.368107, 23.569454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598881, 0.483682, 0.638274,
		0.798448, -0.299098, -0.522514,
		-0.061824, 0.822552, -0.565319,
		21.229359, 24.614872, 23.399858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.985527, 24.257113, 23.652205>,  <21.272635, 24.039085, 23.795582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.985527, 24.257113, 23.652205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.731119, 24.564943, 23.629469>,  <21.578474, 24.749641, 23.615828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.731119, 24.564943, 23.629469>,  <21.985527, 24.257113, 23.652205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.731119, 24.564943, 23.629469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521989, 0.483307, 0.702810,
		0.568336, 0.417333, -0.709104,
		-0.636021, 0.769576, -0.056838,
		21.540314, 24.795816, 23.612417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.347313, 24.734198, 23.914156>,  <21.985527, 24.257113, 23.652205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.347313, 24.734198, 23.914156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.993498, 24.920225, 23.899723>,  <21.781208, 25.031841, 23.891064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.993498, 24.920225, 23.899723>,  <22.347313, 24.734198, 23.914156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.993498, 24.920225, 23.899723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271167, 0.575605, 0.771458,
		0.379550, 0.672601, -0.635256,
		-0.884540, 0.465068, -0.036084,
		21.728136, 25.059746, 23.888899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.564783, 25.342171, 23.738947>,  <22.347313, 24.734198, 23.914156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.564783, 25.342171, 23.738947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.213442, 25.354427, 23.929758>,  <22.002638, 25.361780, 24.044245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.213442, 25.354427, 23.929758>,  <22.564783, 25.342171, 23.738947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.213442, 25.354427, 23.929758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415896, 0.540929, 0.731044,
		-0.235639, 0.840510, -0.487870,
		-0.878353, 0.030641, 0.477029,
		21.949936, 25.363619, 24.072866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.630169, 25.893267, 23.926001>,  <22.564783, 25.342171, 23.738947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.630169, 25.893267, 23.926001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.339952, 25.761906, 24.167906>,  <22.165823, 25.683088, 24.313049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.339952, 25.761906, 24.167906>,  <22.630169, 25.893267, 23.926001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.339952, 25.761906, 24.167906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432904, 0.465331, 0.772049,
		-0.534959, 0.821960, -0.195451,
		-0.725543, -0.328403, 0.604763,
		22.122290, 25.663385, 24.349335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.456743, 26.482704, 24.376137>,  <22.630169, 25.893267, 23.926001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.456743, 26.482704, 24.376137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.300379, 26.162876, 24.558508>,  <22.206560, 25.970980, 24.667931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.300379, 26.162876, 24.558508>,  <22.456743, 26.482704, 24.376137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.300379, 26.162876, 24.558508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303145, 0.355865, 0.884004,
		-0.869074, 0.483782, 0.103275,
		-0.390913, -0.799572, 0.455929,
		22.183105, 25.923004, 24.695286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.967148, 26.761360, 24.822062>,  <22.456743, 26.482704, 24.376137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.967148, 26.761360, 24.822062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.141357, 26.416140, 24.924402>,  <22.245882, 26.209007, 24.985807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.141357, 26.416140, 24.924402>,  <21.967148, 26.761360, 24.822062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.141357, 26.416140, 24.924402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387464, 0.436278, 0.812116,
		-0.812523, -0.254560, 0.524410,
		0.435522, -0.863053, 0.255853,
		22.272015, 26.157225, 25.001158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.871578, 26.684500, 25.593426>,  <21.967148, 26.761360, 24.822062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.871578, 26.684500, 25.593426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.180401, 26.456652, 25.480671>,  <22.365694, 26.319942, 25.413019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.180401, 26.456652, 25.480671>,  <21.871578, 26.684500, 25.593426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.180401, 26.456652, 25.480671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485111, 0.241624, 0.840408,
		-0.410604, -0.785588, 0.462877,
		0.772057, -0.569622, -0.281886,
		22.412018, 26.285765, 25.396105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.108509, 26.732006, 26.298777>,  <21.871578, 26.684500, 25.593426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.108509, 26.732006, 26.298777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.277412, 26.643951, 26.650513>,  <22.378756, 26.591118, 26.861553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.277412, 26.643951, 26.650513>,  <22.108509, 26.732006, 26.298777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.277412, 26.643951, 26.650513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470470, -0.775957, -0.420177,
		0.774825, 0.591127, -0.224088,
		0.422260, -0.220137, 0.879339,
		22.404091, 26.577911, 26.914314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.384554, 26.570875, 26.406965>,  <22.108509, 26.732006, 26.298777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.384554, 26.570875, 26.406965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.187506, 26.422134, 26.721684>,  <21.069277, 26.332890, 26.910515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.187506, 26.422134, 26.721684>,  <21.384554, 26.570875, 26.406965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.187506, 26.422134, 26.721684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415077, -0.694245, -0.587992,
		0.764875, -0.616240, 0.187654,
		-0.492622, -0.371850, 0.786798,
		21.039719, 26.310579, 26.957724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.461393, 25.852209, 26.410698>,  <21.384554, 26.570875, 26.406965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.461393, 25.852209, 26.410698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.135532, 25.898453, 26.638021>,  <20.940016, 25.926199, 26.774416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.135532, 25.898453, 26.638021>,  <21.461393, 25.852209, 26.410698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.135532, 25.898453, 26.638021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442565, -0.757221, -0.480367,
		0.374801, -0.642847, 0.668036,
		-0.814653, 0.115608, 0.568309,
		20.891136, 25.933136, 26.808514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.225109, 25.184887, 26.658655>,  <21.461393, 25.852209, 26.410698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.225109, 25.184887, 26.658655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.895628, 25.406563, 26.706635>,  <20.697939, 25.539568, 26.735422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.895628, 25.406563, 26.706635>,  <21.225109, 25.184887, 26.658655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.895628, 25.406563, 26.706635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547734, -0.722970, -0.421072,
		-0.146633, -0.412539, 0.899061,
		-0.823703, 0.554189, 0.119950,
		20.648518, 25.572819, 26.742620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.772114, 24.612101, 26.840965>,  <21.225109, 25.184887, 26.658655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.772114, 24.612101, 26.840965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.532366, 24.917086, 26.743475>,  <20.388517, 25.100077, 26.684980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.532366, 24.917086, 26.743475>,  <20.772114, 24.612101, 26.840965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.532366, 24.917086, 26.743475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671288, -0.644633, -0.365814,
		-0.436032, -0.055649, 0.898209,
		-0.599373, 0.762464, -0.243724,
		20.352554, 25.145824, 26.670357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.138132, 24.344723, 26.900816>,  <20.772114, 24.612101, 26.840965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.138132, 24.344723, 26.900816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.078974, 24.671919, 26.678459>,  <20.043478, 24.868237, 26.545046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.078974, 24.671919, 26.678459>,  <20.138132, 24.344723, 26.900816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.078974, 24.671919, 26.678459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666162, -0.497834, -0.555328,
		-0.730996, 0.288183, 0.618543,
		-0.147896, 0.817992, -0.555891,
		20.034605, 24.917316, 26.511692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.444149, 24.315926, 26.781992>,  <20.138132, 24.344723, 26.900816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.444149, 24.315926, 26.781992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.616453, 24.541956, 26.500528>,  <19.719835, 24.677574, 26.331650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.616453, 24.541956, 26.500528>,  <19.444149, 24.315926, 26.781992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.616453, 24.541956, 26.500528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481954, -0.515170, -0.708746,
		-0.762999, 0.644430, 0.050426,
		0.430759, 0.565075, -0.703660,
		19.745680, 24.711479, 26.289431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894939, 24.611553, 26.297182>,  <19.444149, 24.315926, 26.781992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894939, 24.611553, 26.297182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.246975, 24.591875, 26.108280>,  <19.458197, 24.580069, 25.994940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.246975, 24.591875, 26.108280>,  <18.894939, 24.611553, 26.297182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.246975, 24.591875, 26.108280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439893, -0.458839, -0.771985,
		-0.178710, 0.887156, -0.425460,
		0.880089, -0.049196, -0.472253,
		19.511002, 24.577116, 25.966604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.758835, 24.756557, 25.625856>,  <18.894939, 24.611553, 26.297182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.758835, 24.756557, 25.625856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.112247, 24.571936, 25.594007>,  <19.324295, 24.461163, 25.574898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.112247, 24.571936, 25.594007>,  <18.758835, 24.756557, 25.625856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.112247, 24.571936, 25.594007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371673, -0.587462, -0.718852,
		0.285014, 0.664722, -0.690588,
		0.883531, -0.461556, -0.079624,
		19.377306, 24.433470, 25.570120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.855671, 24.678787, 24.969501>,  <18.758835, 24.756557, 25.625856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.855671, 24.678787, 24.969501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.165041, 24.442167, 25.060612>,  <19.350662, 24.300196, 25.115278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.165041, 24.442167, 25.060612>,  <18.855671, 24.678787, 24.969501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.165041, 24.442167, 25.060612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264325, -0.627571, -0.732316,
		0.576147, 0.506185, -0.641741,
		0.773425, -0.591550, 0.227776,
		19.397068, 24.264702, 25.128944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.369402, 24.577530, 24.395958>,  <18.855671, 24.678787, 24.969501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.369402, 24.577530, 24.395958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.370127, 24.252764, 24.629465>,  <19.370562, 24.057903, 24.769569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.370127, 24.252764, 24.629465>,  <19.369402, 24.577530, 24.395958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.370127, 24.252764, 24.629465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178402, -0.574668, -0.798705,
		0.983956, -0.102700, -0.145888,
		0.001811, -0.811917, 0.583770,
		19.370670, 24.009190, 24.804596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.740524, 24.119202, 24.089281>,  <19.369402, 24.577530, 24.395958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.740524, 24.119202, 24.089281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.515427, 23.900337, 24.337130>,  <19.380367, 23.769018, 24.485840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.515427, 23.900337, 24.337130>,  <19.740524, 24.119202, 24.089281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.515427, 23.900337, 24.337130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202752, -0.635318, -0.745160,
		0.801380, -0.544965, 0.246584,
		-0.562745, -0.547161, 0.619623,
		19.346603, 23.736189, 24.523016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.948418, 23.416191, 23.979342>,  <19.740524, 24.119202, 24.089281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.948418, 23.416191, 23.979342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.574728, 23.418468, 24.121998>,  <19.350513, 23.419834, 24.207592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.574728, 23.418468, 24.121998>,  <19.948418, 23.416191, 23.979342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.574728, 23.418468, 24.121998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287088, -0.605372, -0.742364,
		0.211673, -0.795922, 0.567188,
		-0.934225, 0.005694, 0.356641,
		19.294460, 23.420177, 24.228991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.637106, 22.770260, 23.708710>,  <19.948418, 23.416191, 23.979342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.637106, 22.770260, 23.708710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.311695, 22.967302, 23.832329>,  <19.116447, 23.085527, 23.906500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.311695, 22.967302, 23.832329>,  <19.637106, 22.770260, 23.708710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.311695, 22.967302, 23.832329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538104, -0.436180, -0.721243,
		-0.220487, -0.753052, 0.619918,
		-0.813529, 0.492605, 0.309049,
		19.067636, 23.115084, 23.925043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.020567, 22.303516, 23.811491>,  <19.637106, 22.770260, 23.708710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.020567, 22.303516, 23.811491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.838821, 22.652607, 23.740051>,  <18.729774, 22.862062, 23.697187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.838821, 22.652607, 23.740051>,  <19.020567, 22.303516, 23.811491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.838821, 22.652607, 23.740051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661732, -0.464888, -0.588210,
		-0.596376, -0.149077, 0.788741,
		-0.454364, 0.872729, -0.178599,
		18.702511, 22.914425, 23.686472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.312611, 22.133261, 23.876646>,  <19.020567, 22.303516, 23.811491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.312611, 22.133261, 23.876646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.328520, 22.477858, 23.674162>,  <18.338064, 22.684616, 23.552671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.328520, 22.477858, 23.674162>,  <18.312611, 22.133261, 23.876646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.328520, 22.477858, 23.674162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710300, -0.331941, -0.620717,
		-0.702775, 0.384249, 0.598716,
		0.039772, 0.861492, -0.506211,
		18.340452, 22.736305, 23.522299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.582159, 22.238523, 23.834641>,  <18.312611, 22.133261, 23.876646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.582159, 22.238523, 23.834641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.781828, 22.464663, 23.571976>,  <17.901630, 22.600346, 23.414377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.781828, 22.464663, 23.571976>,  <17.582159, 22.238523, 23.834641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.781828, 22.464663, 23.571976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593168, -0.329482, -0.734571,
		-0.631647, 0.756190, 0.170877,
		0.499174, 0.565348, -0.656664,
		17.931580, 22.634268, 23.374977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099400, 22.630985, 23.444416>,  <17.582159, 22.238523, 23.834641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.099400, 22.630985, 23.444416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.418215, 22.573940, 23.209679>,  <17.609505, 22.539713, 23.068836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.418215, 22.573940, 23.209679>,  <17.099400, 22.630985, 23.444416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.418215, 22.573940, 23.209679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602383, -0.118329, -0.789387,
		0.043137, 0.982680, -0.180221,
		0.797040, -0.142614, -0.586846,
		17.657328, 22.531157, 23.033625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872858, 22.908318, 22.972414>,  <17.099400, 22.630985, 23.444416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.872858, 22.908318, 22.972414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.156832, 22.658337, 22.842537>,  <17.327217, 22.508348, 22.764610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.156832, 22.658337, 22.842537>,  <16.872858, 22.908318, 22.972414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.156832, 22.658337, 22.842537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514606, -0.145581, -0.844977,
		0.480802, 0.766968, -0.424958,
		0.709936, -0.624953, -0.324691,
		17.369812, 22.470850, 22.745131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.017197, 23.188856, 22.329039>,  <16.872858, 22.908318, 22.972414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.017197, 23.188856, 22.329039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.176882, 22.822113, 22.328358>,  <17.272694, 22.602068, 22.327950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.176882, 22.822113, 22.328358>,  <17.017197, 23.188856, 22.329039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.176882, 22.822113, 22.328358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581148, -0.251604, -0.773926,
		0.709150, 0.309953, -0.633273,
		0.399215, -0.916856, -0.001703,
		17.296646, 22.547056, 22.327847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.189354, 23.034449, 21.677872>,  <17.017197, 23.188856, 22.329039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.189354, 23.034449, 21.677872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.131033, 22.685381, 21.864286>,  <17.096041, 22.475941, 21.976135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.131033, 22.685381, 21.864286>,  <17.189354, 23.034449, 21.677872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.131033, 22.685381, 21.864286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568180, -0.311770, -0.761559,
		0.809885, -0.375832, -0.450375,
		-0.145805, -0.872668, 0.466038,
		17.087292, 22.423580, 22.004097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.611225, 11.178436, 7.727426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.238382, 11.278657, 7.832044>,  <19.014677, 11.338789, 7.894814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.238382, 11.278657, 7.832044>,  <19.611225, 11.178436, 7.727426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.238382, 11.278657, 7.832044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072987, -0.837243, 0.541938,
		0.354759, 0.486054, 0.798685,
		-0.932105, 0.250551, 0.261544,
		18.958752, 11.353823, 7.910507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.542852, 11.156162, 8.488350>,  <19.611225, 11.178436, 7.727426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.542852, 11.156162, 8.488350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.226864, 11.072662, 8.257744>,  <19.037271, 11.022562, 8.119380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.226864, 11.072662, 8.257744>,  <19.542852, 11.156162, 8.488350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.226864, 11.072662, 8.257744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143718, -0.851025, 0.505076,
		-0.596064, 0.481851, 0.642283,
		-0.789970, -0.208749, -0.576516,
		18.989872, 11.010037, 8.084789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.134659, 10.853287, 8.931477>,  <19.542852, 11.156162, 8.488350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.134659, 10.853287, 8.931477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.322247, 11.083486, 8.663486>,  <20.434799, 11.221605, 8.502690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.322247, 11.083486, 8.663486>,  <20.134659, 10.853287, 8.931477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.322247, 11.083486, 8.663486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882346, -0.338918, 0.326497,
		-0.039170, -0.744269, -0.666731,
		0.468968, 0.575498, -0.669978,
		20.462936, 11.256135, 8.462492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.740513, 10.483068, 8.664886>,  <20.134659, 10.853287, 8.931477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.740513, 10.483068, 8.664886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.811026, 10.876771, 8.659799>,  <20.853334, 11.112992, 8.656746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.811026, 10.876771, 8.659799>,  <20.740513, 10.483068, 8.664886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.811026, 10.876771, 8.659799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963803, -0.169965, 0.205415,
		0.200019, -0.048471, -0.978592,
		0.176283, 0.984257, -0.012720,
		20.863911, 11.172049, 8.655983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.261929, 10.643404, 8.167151>,  <20.740513, 10.483068, 8.664886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.261929, 10.643404, 8.167151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.251646, 10.887676, 8.483735>,  <21.245476, 11.034240, 8.673685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.251646, 10.887676, 8.483735>,  <21.261929, 10.643404, 8.167151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.251646, 10.887676, 8.483735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914585, -0.305257, 0.265240,
		0.403575, 0.730676, -0.550671,
		-0.025708, 0.610680, 0.791460,
		21.243933, 11.070880, 8.721173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.808392, 11.180150, 8.130785>,  <21.261929, 10.643404, 8.167151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.808392, 11.180150, 8.130785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.700939, 11.056539, 8.495715>,  <21.636467, 10.982371, 8.714673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.700939, 11.056539, 8.495715>,  <21.808392, 11.180150, 8.130785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.700939, 11.056539, 8.495715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946315, -0.261456, 0.190078,
		0.179793, 0.914408, 0.362674,
		-0.268632, -0.309029, 0.912326,
		21.620350, 10.963830, 8.769413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.250427, 11.463192, 8.568968>,  <21.808392, 11.180150, 8.130785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.250427, 11.463192, 8.568968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.110117, 11.113414, 8.703013>,  <22.025930, 10.903547, 8.783441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.110117, 11.113414, 8.703013>,  <22.250427, 11.463192, 8.568968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.110117, 11.113414, 8.703013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933647, -0.298848, 0.197465,
		-0.072524, 0.382145, 0.921252,
		-0.350775, -0.874445, 0.335115,
		22.004885, 10.851080, 8.803548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.737841, 11.826303, 8.997186>,  <22.250427, 11.463192, 8.568968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.737841, 11.826303, 8.997186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.918615, 12.162870, 8.878684>,  <23.027081, 12.364811, 8.807583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.918615, 12.162870, 8.878684>,  <22.737841, 11.826303, 8.997186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.918615, 12.162870, 8.878684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795582, -0.229967, 0.560504,
		0.403491, -0.489005, -0.773349,
		0.451934, 0.841421, -0.296254,
		23.054195, 12.415297, 8.789808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.980938, 12.267661, 9.565234>,  <22.737841, 11.826303, 8.997186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.980938, 12.267661, 9.565234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.176607, 12.560973, 9.754128>,  <23.294008, 12.736960, 9.867465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.176607, 12.560973, 9.754128>,  <22.980938, 12.267661, 9.565234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.176607, 12.560973, 9.754128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393280, -0.297824, 0.869845,
		0.778485, -0.611228, 0.142697,
		0.489175, 0.733281, 0.472236,
		23.323360, 12.780957, 9.895799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.493431, 12.074396, 10.212063>,  <22.980938, 12.267661, 9.565234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.493431, 12.074396, 10.212063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.324347, 12.435167, 10.247483>,  <23.222897, 12.651630, 10.268736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.324347, 12.435167, 10.247483>,  <23.493431, 12.074396, 10.212063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.324347, 12.435167, 10.247483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395039, -0.271316, 0.877686,
		0.815635, 0.336026, 0.470985,
		-0.422711, 0.901928, 0.088551,
		23.197533, 12.705746, 10.274049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.623896, 12.351162, 10.942882>,  <23.493431, 12.074396, 10.212063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.623896, 12.351162, 10.942882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.293348, 12.508394, 10.781586>,  <23.095020, 12.602734, 10.684808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.293348, 12.508394, 10.781586>,  <23.623896, 12.351162, 10.942882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.293348, 12.508394, 10.781586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482442, -0.124840, 0.866986,
		0.290455, 0.910990, 0.292803,
		-0.826369, 0.393081, -0.403240,
		23.045437, 12.626319, 10.660614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.368240, 13.039403, 11.285059>,  <23.623896, 12.351162, 10.942882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.368240, 13.039403, 11.285059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.083323, 12.808353, 11.125566>,  <22.912373, 12.669724, 11.029869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.083323, 12.808353, 11.125566>,  <23.368240, 13.039403, 11.285059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.083323, 12.808353, 11.125566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256293, -0.314816, 0.913895,
		-0.653416, 0.753154, 0.076200,
		-0.712293, -0.577624, -0.398734,
		22.869635, 12.635066, 11.005945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.710337, 13.136076, 11.659546>,  <23.368240, 13.039403, 11.285059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.710337, 13.136076, 11.659546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.725754, 12.768826, 11.501782>,  <22.735004, 12.548475, 11.407125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.725754, 12.768826, 11.501782>,  <22.710337, 13.136076, 11.659546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.725754, 12.768826, 11.501782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275369, -0.389178, 0.879041,
		-0.960566, 0.074728, -0.267824,
		0.038542, -0.918127, -0.394409,
		22.737316, 12.493387, 11.383460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.167290, 12.768685, 11.947842>,  <22.710337, 13.136076, 11.659546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.167290, 12.768685, 11.947842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.378651, 12.465989, 11.793889>,  <22.505466, 12.284371, 11.701517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.378651, 12.465989, 11.793889>,  <22.167290, 12.768685, 11.947842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.378651, 12.465989, 11.793889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329867, -0.600717, 0.728235,
		-0.782291, -0.257840, -0.567044,
		0.528401, -0.756741, -0.384883,
		22.537170, 12.238967, 11.678424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.736326, 12.240632, 11.904079>,  <22.167290, 12.768685, 11.947842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.736326, 12.240632, 11.904079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.094786, 12.064695, 11.927586>,  <22.309862, 11.959133, 11.941689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.094786, 12.064695, 11.927586>,  <21.736326, 12.240632, 11.904079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.094786, 12.064695, 11.927586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259979, -0.413080, 0.872798,
		-0.359614, -0.797439, -0.484531,
		0.896153, -0.439838, 0.058768,
		22.363630, 11.932743, 11.945215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.551956, 11.655874, 12.159776>,  <21.736326, 12.240632, 11.904079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.551956, 11.655874, 12.159776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.945015, 11.700883, 12.218765>,  <22.180849, 11.727888, 12.254159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.945015, 11.700883, 12.218765>,  <21.551956, 11.655874, 12.159776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.945015, 11.700883, 12.218765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104722, -0.319708, 0.941711,
		0.153111, -0.940811, -0.302376,
		0.982644, 0.112521, 0.147474,
		22.239809, 11.734639, 12.263007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.773922, 11.007626, 12.511848>,  <21.551956, 11.655874, 12.159776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.773922, 11.007626, 12.511848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.060545, 11.275836, 12.588727>,  <22.232519, 11.436762, 12.634854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.060545, 11.275836, 12.588727>,  <21.773922, 11.007626, 12.511848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.060545, 11.275836, 12.588727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132454, -0.401325, 0.906308,
		0.684836, -0.623965, -0.376387,
		0.716558, 0.670526, 0.192195,
		22.275513, 11.476994, 12.646385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.253296, 10.643495, 13.005417>,  <21.773922, 11.007626, 12.511848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.253296, 10.643495, 13.005417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.344427, 11.031745, 13.036345>,  <22.399105, 11.264695, 13.054903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.344427, 11.031745, 13.036345>,  <22.253296, 10.643495, 13.005417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.344427, 11.031745, 13.036345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106044, -0.103671, 0.988942,
		0.967910, -0.217109, -0.126548,
		0.227827, 0.970626, 0.077321,
		22.412775, 11.322933, 13.059542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.631107, 10.631544, 13.546962>,  <22.253296, 10.643495, 13.005417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.631107, 10.631544, 13.546962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.543169, 11.019053, 13.501088>,  <22.490406, 11.251557, 13.473564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.543169, 11.019053, 13.501088>,  <22.631107, 10.631544, 13.546962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.543169, 11.019053, 13.501088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202793, 0.069608, 0.976744,
		0.954224, 0.237989, 0.181157,
		-0.219844, 0.968770, -0.114684,
		22.477217, 11.309684, 13.466682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.974415, 11.041100, 14.089176>,  <22.631107, 10.631544, 13.546962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.974415, 11.041100, 14.089176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.668240, 11.257154, 13.949259>,  <22.484533, 11.386786, 13.865309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.668240, 11.257154, 13.949259>,  <22.974415, 11.041100, 14.089176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.668240, 11.257154, 13.949259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349429, 0.107581, 0.930766,
		0.540371, 0.834673, 0.106392,
		-0.765440, 0.540136, -0.349792,
		22.438608, 11.419194, 13.844321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.987629, 11.628215, 14.501633>,  <22.974415, 11.041100, 14.089176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.987629, 11.628215, 14.501633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.608728, 11.608884, 14.374900>,  <22.381388, 11.597285, 14.298860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.608728, 11.608884, 14.374900>,  <22.987629, 11.628215, 14.501633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.608728, 11.608884, 14.374900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318706, 0.246400, 0.915267,
		0.033836, 0.967963, -0.248804,
		-0.947250, -0.048327, -0.316833,
		22.324554, 11.594386, 14.279850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.689936, 12.148360, 14.913298>,  <22.987629, 11.628215, 14.501633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.689936, 12.148360, 14.913298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.364786, 11.954226, 14.784496>,  <22.169697, 11.837746, 14.707215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.364786, 11.954226, 14.784496>,  <22.689936, 12.148360, 14.913298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.364786, 11.954226, 14.784496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494971, 0.284235, 0.821106,
		-0.306986, 0.826838, -0.471273,
		-0.812873, -0.485335, -0.322004,
		22.120924, 11.808626, 14.687895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.174322, 12.555420, 15.030622>,  <22.689936, 12.148360, 14.913298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.174322, 12.555420, 15.030622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.976974, 12.208814, 15.000327>,  <21.858566, 12.000850, 14.982150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.976974, 12.208814, 15.000327>,  <22.174322, 12.555420, 15.030622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.976974, 12.208814, 15.000327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553307, 0.245465, 0.795989,
		-0.671147, 0.434621, -0.600555,
		-0.493369, -0.866517, -0.075736,
		21.828964, 11.948858, 14.977606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.517292, 12.670285, 15.215811>,  <22.174322, 12.555420, 15.030622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.517292, 12.670285, 15.215811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.496044, 12.271258, 15.233867>,  <21.483295, 12.031842, 15.244700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.496044, 12.271258, 15.233867>,  <21.517292, 12.670285, 15.215811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.496044, 12.271258, 15.233867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479558, 0.065132, 0.875090,
		-0.875901, 0.024836, -0.481851,
		-0.053117, -0.997567, 0.045139,
		21.480108, 11.971988, 15.247408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.732332, 12.444887, 15.231180>,  <21.517292, 12.670285, 15.215811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.732332, 12.444887, 15.231180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.999741, 12.201768, 15.402603>,  <21.160185, 12.055897, 15.505457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.999741, 12.201768, 15.402603>,  <20.732332, 12.444887, 15.231180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.999741, 12.201768, 15.402603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395882, 0.196988, 0.896924,
		-0.629569, -0.769271, -0.108926,
		0.668521, -0.607797, 0.428558,
		21.200296, 12.019429, 15.531171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.396601, 12.198441, 15.835188>,  <20.732332, 12.444887, 15.231180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.396601, 12.198441, 15.835188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.785166, 12.121754, 15.891190>,  <21.018305, 12.075742, 15.924790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.785166, 12.121754, 15.891190>,  <20.396601, 12.198441, 15.835188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.785166, 12.121754, 15.891190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112512, 0.147497, 0.982642,
		-0.209039, -0.970304, 0.121710,
		0.971413, -0.191717, 0.140004,
		21.076590, 12.064239, 15.933190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.420965, 11.921533, 16.505627>,  <20.396601, 12.198441, 15.835188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.420965, 11.921533, 16.505627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.803131, 12.031817, 16.463352>,  <21.032431, 12.097988, 16.437988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.803131, 12.031817, 16.463352>,  <20.420965, 11.921533, 16.505627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.803131, 12.031817, 16.463352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058130, 0.175287, 0.982800,
		0.289494, -0.945123, 0.151445,
		0.955413, 0.275711, -0.105684,
		21.089756, 12.114531, 16.431646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.727638, 11.573056, 17.016422>,  <20.420965, 11.921533, 16.505627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.727638, 11.573056, 17.016422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.999458, 11.857354, 16.943699>,  <21.162550, 12.027933, 16.900064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.999458, 11.857354, 16.943699>,  <20.727638, 11.573056, 17.016422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.999458, 11.857354, 16.943699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074950, 0.179262, 0.980942,
		0.729791, -0.680225, 0.068547,
		0.679549, 0.710745, -0.181807,
		21.203323, 12.070578, 16.889156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.311090, 11.550770, 17.582172>,  <20.727638, 11.573056, 17.016422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.311090, 11.550770, 17.582172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.352745, 11.911860, 17.415205>,  <21.377739, 12.128515, 17.315023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.352745, 11.911860, 17.415205>,  <21.311090, 11.550770, 17.582172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.352745, 11.911860, 17.415205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218728, 0.388639, 0.895052,
		0.970213, -0.184511, -0.156979,
		0.104139, 0.902727, -0.417420,
		21.383987, 12.182678, 17.289978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.906290, 11.844385, 17.900845>,  <21.311090, 11.550770, 17.582172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.906290, 11.844385, 17.900845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.683710, 12.156541, 17.786753>,  <21.550163, 12.343835, 17.718298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.683710, 12.156541, 17.786753>,  <21.906290, 11.844385, 17.900845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.683710, 12.156541, 17.786753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060183, 0.380241, 0.922927,
		0.828700, 0.496395, -0.258551,
		-0.556448, 0.780390, -0.285231,
		21.516775, 12.390657, 17.701183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.301579, 12.387062, 18.022703>,  <21.906290, 11.844385, 17.900845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.301579, 12.387062, 18.022703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.911852, 12.475052, 18.041956>,  <21.678017, 12.527846, 18.053509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.911852, 12.475052, 18.041956>,  <22.301579, 12.387062, 18.022703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.911852, 12.475052, 18.041956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098853, 0.225781, 0.969150,
		0.202321, 0.949017, -0.241728,
		-0.974317, 0.219975, 0.048133,
		21.619556, 12.541044, 18.056396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.097767, 13.151916, 18.179596>,  <22.301579, 12.387062, 18.022703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.097767, 13.151916, 18.179596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.830462, 12.890160, 18.321127>,  <21.670078, 12.733106, 18.406046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.830462, 12.890160, 18.321127>,  <22.097767, 13.151916, 18.179596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.830462, 12.890160, 18.321127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144604, 0.352288, 0.924653,
		-0.729734, 0.669078, -0.140795,
		-0.668265, -0.654391, 0.353828,
		21.629982, 12.693842, 18.427275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.144396, 13.582662, 17.577848>,  <22.097767, 13.151916, 18.179596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.144396, 13.582662, 17.577848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.505426, 13.560286, 17.748600>,  <22.722046, 13.546860, 17.851051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.505426, 13.560286, 17.748600>,  <22.144396, 13.582662, 17.577848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.505426, 13.560286, 17.748600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426371, -0.021296, -0.904298,
		0.059676, 0.998207, 0.004629,
		0.902578, -0.055939, 0.426877,
		22.776199, 13.543504, 17.876663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.523548, 14.174578, 17.345629>,  <22.144396, 13.582662, 17.577848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.523548, 14.174578, 17.345629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.737638, 13.840047, 17.393112>,  <22.866093, 13.639329, 17.421602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.737638, 13.840047, 17.393112>,  <22.523548, 14.174578, 17.345629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.737638, 13.840047, 17.393112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289221, 0.049402, -0.955987,
		0.793652, 0.546002, 0.268325,
		0.535227, -0.836326, 0.118707,
		22.898207, 13.589149, 17.428724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.150938, 14.224991, 17.161358>,  <22.523548, 14.174578, 17.345629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.150938, 14.224991, 17.161358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.084606, 13.832982, 17.117439>,  <23.044807, 13.597776, 17.091089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.084606, 13.832982, 17.117439>,  <23.150938, 14.224991, 17.161358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.084606, 13.832982, 17.117439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173165, 0.080669, -0.981584,
		0.970832, -0.181789, 0.156328,
		-0.165830, -0.980023, -0.109795,
		23.034857, 13.538975, 17.084501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.769274, 13.998298, 16.833984>,  <23.150938, 14.224991, 17.161358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.769274, 13.998298, 16.833984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.447063, 13.772371, 16.762306>,  <23.253738, 13.636815, 16.719299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.447063, 13.772371, 16.762306>,  <23.769274, 13.998298, 16.833984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.447063, 13.772371, 16.762306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068690, 0.211368, -0.974990,
		0.588568, -0.797687, -0.131464,
		-0.805524, -0.564817, -0.179198,
		23.205406, 13.602926, 16.708548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.800615, 13.333511, 16.404892>,  <23.769274, 13.998298, 16.833984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.800615, 13.333511, 16.404892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.463699, 13.546256, 16.369850>,  <23.261551, 13.673903, 16.348825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.463699, 13.546256, 16.369850>,  <23.800615, 13.333511, 16.404892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.463699, 13.546256, 16.369850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236549, 0.218679, -0.946691,
		-0.484351, -0.818109, -0.310002,
		-0.842287, 0.531862, -0.087605,
		23.211014, 13.705814, 16.343569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.587969, 13.295683, 15.665463>,  <23.800615, 13.333511, 16.404892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.587969, 13.295683, 15.665463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.406733, 13.627924, 15.794960>,  <23.297991, 13.827269, 15.872658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.406733, 13.627924, 15.794960>,  <23.587969, 13.295683, 15.665463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.406733, 13.627924, 15.794960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022760, 0.373816, -0.927224,
		-0.891174, -0.412748, -0.188277,
		-0.453091, 0.830603, 0.323741,
		23.270805, 13.877105, 15.892082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.967493, 13.468625, 15.264337>,  <23.587969, 13.295683, 15.665463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.967493, 13.468625, 15.264337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.093182, 13.824598, 15.396568>,  <23.168594, 14.038182, 15.475907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.093182, 13.824598, 15.396568>,  <22.967493, 13.468625, 15.264337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.093182, 13.824598, 15.396568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050996, 0.363535, -0.930183,
		-0.947979, 0.275425, 0.159614,
		0.314222, 0.889934, 0.330578,
		23.187449, 14.091578, 15.495742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.504698, 13.952533, 15.074835>,  <22.967493, 13.468625, 15.264337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.504698, 13.952533, 15.074835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.836466, 14.168922, 15.130559>,  <23.035526, 14.298757, 15.163994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.836466, 14.168922, 15.130559>,  <22.504698, 13.952533, 15.074835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.836466, 14.168922, 15.130559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213222, 0.537080, -0.816138,
		-0.516331, 0.647218, 0.560813,
		0.829421, 0.540975, 0.139310,
		23.085293, 14.331215, 15.172352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.383438, 14.691950, 15.028670>,  <22.504698, 13.952533, 15.074835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.383438, 14.691950, 15.028670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.772013, 14.666544, 14.937210>,  <23.005157, 14.651300, 14.882334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.772013, 14.666544, 14.937210>,  <22.383438, 14.691950, 15.028670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.772013, 14.666544, 14.937210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167813, 0.497401, -0.851135,
		0.167791, 0.865192, 0.472534,
		0.971435, -0.063515, -0.228649,
		23.063442, 14.647490, 14.868615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.556389, 15.342991, 14.692154>,  <22.383438, 14.691950, 15.028670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.556389, 15.342991, 14.692154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.878166, 15.118577, 14.614068>,  <23.071232, 14.983929, 14.567216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.878166, 15.118577, 14.614068>,  <22.556389, 15.342991, 14.692154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.878166, 15.118577, 14.614068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147980, 0.507535, -0.848829,
		0.575302, 0.653947, 0.491306,
		0.804444, -0.561036, -0.195215,
		23.119499, 14.950266, 14.555504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.085737, 15.776965, 14.494266>,  <22.556389, 15.342991, 14.692154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.085737, 15.776965, 14.494266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.192585, 15.421291, 14.345673>,  <23.256693, 15.207887, 14.256516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.192585, 15.421291, 14.345673>,  <23.085737, 15.776965, 14.494266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.192585, 15.421291, 14.345673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070233, 0.402428, -0.912754,
		0.961101, 0.217722, 0.169945,
		0.267118, -0.889184, -0.371483,
		23.272720, 15.154536, 14.234228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.738689, 15.926264, 14.113027>,  <23.085737, 15.776965, 14.494266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.738689, 15.926264, 14.113027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.569088, 15.592215, 13.972862>,  <23.467327, 15.391785, 13.888763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.569088, 15.592215, 13.972862>,  <23.738689, 15.926264, 14.113027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.569088, 15.592215, 13.972862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140062, 0.321792, -0.936393,
		0.894764, -0.446114, -0.019472,
		-0.424004, -0.835124, -0.350412,
		23.441887, 15.341678, 13.867739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.089184, 15.734262, 13.574144>,  <23.738689, 15.926264, 14.113027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.089184, 15.734262, 13.574144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.760750, 15.516222, 13.506401>,  <23.563688, 15.385398, 13.465755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.760750, 15.516222, 13.506401>,  <24.089184, 15.734262, 13.574144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.760750, 15.516222, 13.506401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087004, 0.173718, -0.980945,
		0.564135, -0.820175, -0.095211,
		-0.821086, -0.545102, -0.169359,
		23.514423, 15.352692, 13.455593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.188093, 15.434478, 12.946191>,  <24.089184, 15.734262, 13.574144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.188093, 15.434478, 12.946191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.792818, 15.461061, 13.001430>,  <23.555653, 15.477012, 13.034573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.792818, 15.461061, 13.001430>,  <24.188093, 15.434478, 12.946191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.792818, 15.461061, 13.001430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110824, 0.312512, -0.943427,
		-0.105857, -0.947586, -0.301455,
		-0.988186, 0.066460, 0.138097,
		23.496363, 15.480999, 13.042858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.886751, 15.010397, 12.403571>,  <24.188093, 15.434478, 12.946191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.886751, 15.010397, 12.403571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.596270, 15.249246, 12.539848>,  <23.421980, 15.392555, 12.621614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.596270, 15.249246, 12.539848>,  <23.886751, 15.010397, 12.403571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.596270, 15.249246, 12.539848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201739, 0.288659, -0.935937,
		-0.657213, -0.748413, -0.089162,
		-0.726204, 0.597122, 0.340694,
		23.378408, 15.428382, 12.642056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.450693, 15.041382, 11.883862>,  <23.886751, 15.010397, 12.403571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.450693, 15.041382, 11.883862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.270172, 15.334613, 12.087399>,  <23.161860, 15.510551, 12.209522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.270172, 15.334613, 12.087399>,  <23.450693, 15.041382, 11.883862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.270172, 15.334613, 12.087399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360135, 0.372100, -0.855479,
		-0.816474, -0.569332, 0.096077,
		-0.451302, 0.733077, 0.508846,
		23.134781, 15.554536, 12.240053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.886457, 15.050183, 11.528577>,  <23.450693, 15.041382, 11.883862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.886457, 15.050183, 11.528577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.901970, 15.399418, 11.722986>,  <22.911278, 15.608958, 11.839632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.901970, 15.399418, 11.722986>,  <22.886457, 15.050183, 11.528577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.901970, 15.399418, 11.722986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477967, 0.443346, -0.758282,
		-0.877521, -0.202895, 0.434500,
		0.038782, 0.873086, 0.486022,
		22.913605, 15.661344, 11.868793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.173615, 15.340639, 11.550020>,  <22.886457, 15.050183, 11.528577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.173615, 15.340639, 11.550020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.446091, 15.632009, 11.579346>,  <22.609577, 15.806830, 11.596941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.446091, 15.632009, 11.579346>,  <22.173615, 15.340639, 11.550020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.446091, 15.632009, 11.579346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372959, 0.431451, -0.821433,
		-0.629983, 0.532210, 0.565574,
		0.681192, 0.728425, 0.073314,
		22.650448, 15.850536, 11.601340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.808594, 15.857827, 11.446780>,  <22.173615, 15.340639, 11.550020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.808594, 15.857827, 11.446780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.177511, 15.995616, 11.376679>,  <22.398861, 16.078289, 11.334619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.177511, 15.995616, 11.376679>,  <21.808594, 15.857827, 11.446780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.177511, 15.995616, 11.376679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297908, 0.344744, -0.890170,
		-0.246221, 0.873207, 0.420576,
		0.922294, 0.344471, -0.175252,
		22.454199, 16.098957, 11.324103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.647314, 16.527967, 11.214095>,  <21.808594, 15.857827, 11.446780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.647314, 16.527967, 11.214095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.014837, 16.424301, 11.095016>,  <22.235352, 16.362101, 11.023569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.014837, 16.424301, 11.095016>,  <21.647314, 16.527967, 11.214095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.014837, 16.424301, 11.095016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227250, 0.269323, -0.935854,
		0.322719, 0.927522, 0.188561,
		0.918809, -0.259168, -0.297695,
		22.290480, 16.346550, 11.005708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.926435, 20.745932, 16.303246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.698463, 20.553583, 16.569761>,  <17.561680, 20.438173, 16.729671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.698463, 20.553583, 16.569761>,  <17.926435, 20.745932, 16.303246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.698463, 20.553583, 16.569761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085101, -0.841057, -0.534210,
		0.817274, -0.247761, 0.520267,
		-0.569930, -0.480872, 0.666290,
		17.527485, 20.409321, 16.769648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.129976, 20.168531, 16.291998>,  <17.926435, 20.745932, 16.303246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.129976, 20.168531, 16.291998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.780809, 20.084694, 16.468220>,  <17.571310, 20.034391, 16.573954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.780809, 20.084694, 16.468220>,  <18.129976, 20.168531, 16.291998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.780809, 20.084694, 16.468220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023662, -0.883762, -0.467338,
		0.487298, -0.418371, 0.766490,
		-0.872915, -0.209596, 0.440555,
		17.518934, 20.021814, 16.600386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143902, 19.475374, 16.311220>,  <18.129976, 20.168531, 16.291998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143902, 19.475374, 16.311220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.763777, 19.591558, 16.356014>,  <17.535702, 19.661268, 16.382891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.763777, 19.591558, 16.356014>,  <18.143902, 19.475374, 16.311220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.763777, 19.591558, 16.356014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287345, -0.680072, -0.674488,
		-0.119752, -0.673153, 0.729743,
		-0.950312, 0.290459, 0.111987,
		17.478683, 19.678696, 16.389610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870071, 18.859272, 16.198009>,  <18.143902, 19.475374, 16.311220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870071, 18.859272, 16.198009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.528095, 19.066704, 16.202963>,  <17.322910, 19.191162, 16.205935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.528095, 19.066704, 16.202963>,  <17.870071, 18.859272, 16.198009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.528095, 19.066704, 16.202963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433812, -0.701698, -0.565179,
		-0.284401, -0.488566, 0.824875,
		-0.854941, 0.518578, 0.012382,
		17.271612, 19.222277, 16.206678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.331203, 18.453192, 16.472597>,  <17.870071, 18.859272, 16.198009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.331203, 18.453192, 16.472597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.188856, 18.720308, 16.211090>,  <17.103449, 18.880579, 16.054186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.188856, 18.720308, 16.211090>,  <17.331203, 18.453192, 16.472597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.188856, 18.720308, 16.211090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326327, -0.744323, -0.582661,
		-0.875711, 0.005992, 0.482799,
		-0.355867, 0.667792, -0.653767,
		17.082096, 18.920647, 16.014959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834801, 18.060526, 16.304592>,  <17.331203, 18.453192, 16.472597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834801, 18.060526, 16.304592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.829916, 18.364996, 16.045219>,  <16.826984, 18.547678, 15.889596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.829916, 18.364996, 16.045219>,  <16.834801, 18.060526, 16.304592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.829916, 18.364996, 16.045219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466126, -0.578045, -0.669770,
		-0.884634, 0.294071, 0.361862,
		-0.012212, 0.761174, -0.648432,
		16.826252, 18.593348, 15.850690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.154631, 18.036795, 15.906672>,  <16.834801, 18.060526, 16.304592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.154631, 18.036795, 15.906672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.429533, 18.227808, 15.687715>,  <16.594475, 18.342415, 15.556340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.429533, 18.227808, 15.687715>,  <16.154631, 18.036795, 15.906672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.429533, 18.227808, 15.687715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263889, -0.537949, -0.800608,
		-0.676786, 0.694675, -0.243694,
		0.687258, 0.477532, -0.547394,
		16.635710, 18.371067, 15.523497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.780077, 18.099442, 15.306088>,  <16.154631, 18.036795, 15.906672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.780077, 18.099442, 15.306088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.174969, 18.121479, 15.246298>,  <16.411903, 18.134701, 15.210423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.174969, 18.121479, 15.246298>,  <15.780077, 18.099442, 15.306088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.174969, 18.121479, 15.246298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078854, -0.646288, -0.759008,
		-0.138421, 0.761102, -0.633690,
		0.987229, 0.055094, -0.149476,
		16.471138, 18.138008, 15.201455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.827170, 17.846043, 14.676318>,  <15.780077, 18.099442, 15.306088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.827170, 17.846043, 14.676318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.216686, 17.855974, 14.766753>,  <16.450396, 17.861933, 14.821014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.216686, 17.855974, 14.766753>,  <15.827170, 17.846043, 14.676318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.216686, 17.855974, 14.766753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166426, -0.755318, -0.633874,
		0.155029, 0.654887, -0.739654,
		0.973791, 0.024829, 0.226087,
		16.508823, 17.863422, 14.834579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.142792, 17.811611, 14.045684>,  <15.827170, 17.846043, 14.676318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.142792, 17.811611, 14.045684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428240, 17.662384, 14.282855>,  <16.599508, 17.572847, 14.425158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428240, 17.662384, 14.282855>,  <16.142792, 17.811611, 14.045684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.428240, 17.662384, 14.282855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114920, -0.772589, -0.624420,
		0.691040, 0.513739, -0.508464,
		0.713622, -0.373067, 0.592929,
		16.642326, 17.550465, 14.460733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.683725, 17.585306, 13.587498>,  <16.142792, 17.811611, 14.045684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.683725, 17.585306, 13.587498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.691496, 17.394323, 13.938874>,  <16.696157, 17.279734, 14.149700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.691496, 17.394323, 13.938874>,  <16.683725, 17.585306, 13.587498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.691496, 17.394323, 13.938874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208469, -0.857361, -0.470609,
		0.977836, 0.192269, 0.082881,
		0.019424, -0.477457, 0.878440,
		16.697323, 17.251085, 14.202406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251066, 16.990679, 13.616334>,  <16.683725, 17.585306, 13.587498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.251066, 16.990679, 13.616334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071051, 16.868719, 13.952072>,  <16.963041, 16.795544, 14.153515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071051, 16.868719, 13.952072>,  <17.251066, 16.990679, 13.616334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.071051, 16.868719, 13.952072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049328, -0.946960, -0.317543,
		0.891645, -0.101504, 0.441211,
		-0.450041, -0.304900, 0.839345,
		16.936039, 16.777248, 14.203876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.541309, 16.331177, 13.720119>,  <17.251066, 16.990679, 13.616334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.541309, 16.331177, 13.720119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.189291, 16.351576, 13.908977>,  <16.978081, 16.363815, 14.022291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.189291, 16.351576, 13.908977>,  <17.541309, 16.331177, 13.720119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.189291, 16.351576, 13.908977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151398, -0.972468, -0.177155,
		0.450111, -0.227386, 0.863537,
		-0.880045, 0.050999, 0.472145,
		16.925278, 16.366875, 14.050620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.563618, 15.951957, 14.383429>,  <17.541309, 16.331177, 13.720119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.563618, 15.951957, 14.383429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.211327, 15.948076, 14.194021>,  <16.999952, 15.945748, 14.080377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.211327, 15.948076, 14.194021>,  <17.563618, 15.951957, 14.383429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.211327, 15.948076, 14.194021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003552, -0.999627, 0.027084,
		-0.473605, 0.025535, 0.880367,
		-0.880730, -0.009700, -0.473519,
		16.947107, 15.945167, 14.051966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.383846, 16.192720, 14.503560>,  <17.563618, 15.951957, 14.383429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.383846, 16.192720, 14.503560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.773777, 16.110754, 14.538711>,  <19.007736, 16.061573, 14.559801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.773777, 16.110754, 14.538711>,  <18.383846, 16.192720, 14.503560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.773777, 16.110754, 14.538711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004005, 0.410155, 0.912007,
		-0.222929, -0.888697, 0.400651,
		0.974827, -0.204917, 0.087876,
		19.066225, 16.049278, 14.565073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.455988, 15.844998, 15.103247>,  <18.383846, 16.192720, 14.503560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.455988, 15.844998, 15.103247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.826460, 15.980138, 15.036255>,  <19.048742, 16.061222, 14.996059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.826460, 15.980138, 15.036255>,  <18.455988, 15.844998, 15.103247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.826460, 15.980138, 15.036255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071488, 0.278773, 0.957693,
		0.370244, -0.898968, 0.234042,
		0.926180, 0.337849, -0.167480,
		19.104315, 16.081491, 14.986012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.550377, 15.963486, 15.674198>,  <18.455988, 15.844998, 15.103247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.550377, 15.963486, 15.674198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.917511, 16.069098, 15.555627>,  <19.137791, 16.132465, 15.484484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.917511, 16.069098, 15.555627>,  <18.550377, 15.963486, 15.674198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.917511, 16.069098, 15.555627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225343, 0.268217, 0.936632,
		0.326807, -0.926470, 0.186681,
		0.917833, 0.264031, -0.296429,
		19.192862, 16.148306, 15.466699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.194794, 15.545597, 15.991239>,  <18.550377, 15.963486, 15.674198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.194794, 15.545597, 15.991239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.313211, 15.907047, 15.867420>,  <19.384262, 16.123917, 15.793129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.313211, 15.907047, 15.867420>,  <19.194794, 15.545597, 15.991239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.313211, 15.907047, 15.867420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365108, 0.192410, 0.910865,
		0.882641, -0.382673, -0.272959,
		0.296043, 0.903626, -0.309545,
		19.402025, 16.178135, 15.774556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.520720, 15.775476, 16.504145>,  <19.194794, 15.545597, 15.991239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.520720, 15.775476, 16.504145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.513723, 16.122368, 16.305103>,  <19.509525, 16.330502, 16.185678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.513723, 16.122368, 16.305103>,  <19.520720, 15.775476, 16.504145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.513723, 16.122368, 16.305103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300626, 0.479214, 0.824608,
		0.953582, -0.135169, -0.269094,
		-0.017492, 0.867227, -0.497605,
		19.508476, 16.382536, 16.155823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.203024, 16.148043, 16.506731>,  <19.520720, 15.775476, 16.504145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.203024, 16.148043, 16.506731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.892694, 16.400013, 16.492359>,  <19.706497, 16.551195, 16.483736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.892694, 16.400013, 16.492359>,  <20.203024, 16.148043, 16.506731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.892694, 16.400013, 16.492359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348017, 0.474731, 0.808402,
		0.526288, 0.614676, -0.587533,
		-0.775825, 0.629924, -0.035928,
		19.659946, 16.588989, 16.481581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.392082, 16.703709, 16.972933>,  <20.203024, 16.148043, 16.506731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.392082, 16.703709, 16.972933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.022259, 16.833319, 16.892733>,  <19.800365, 16.911085, 16.844612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.022259, 16.833319, 16.892733>,  <20.392082, 16.703709, 16.972933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.022259, 16.833319, 16.892733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021295, 0.569307, 0.821849,
		0.380447, 0.755577, -0.533257,
		-0.924558, 0.324026, -0.200501,
		19.744892, 16.930527, 16.832582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.427082, 17.404774, 17.155182>,  <20.392082, 16.703709, 16.972933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.427082, 17.404774, 17.155182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.068588, 17.230019, 17.185898>,  <19.853493, 17.125166, 17.204327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.068588, 17.230019, 17.185898>,  <20.427082, 17.404774, 17.155182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.068588, 17.230019, 17.185898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184796, 0.525108, 0.830730,
		-0.403257, 0.730337, -0.551354,
		-0.896233, -0.436886, 0.076790,
		19.799719, 17.098953, 17.208935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.053843, 17.895273, 17.413961>,  <20.427082, 17.404774, 17.155182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.053843, 17.895273, 17.413961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.843571, 17.566433, 17.501423>,  <19.717407, 17.369129, 17.553900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.843571, 17.566433, 17.501423>,  <20.053843, 17.895273, 17.413961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.843571, 17.566433, 17.501423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167915, 0.352252, 0.920719,
		-0.833946, 0.447287, -0.323215,
		-0.525679, -0.822102, 0.218653,
		19.685867, 17.319801, 17.567019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.515215, 18.143850, 17.826998>,  <20.053843, 17.895273, 17.413961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.515215, 18.143850, 17.826998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468754, 17.757908, 17.921288>,  <19.440878, 17.526342, 17.977861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468754, 17.757908, 17.921288>,  <19.515215, 18.143850, 17.826998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.468754, 17.757908, 17.921288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070794, 0.244768, 0.966994,
		-0.990705, 0.095631, -0.096736,
		-0.116152, -0.964854, 0.235723,
		19.433908, 17.468452, 17.992004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.999023, 18.116465, 18.258406>,  <19.515215, 18.143850, 17.826998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.999023, 18.116465, 18.258406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.197313, 17.776463, 18.329676>,  <19.316286, 17.572460, 18.372438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.197313, 17.776463, 18.329676>,  <18.999023, 18.116465, 18.258406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.197313, 17.776463, 18.329676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046348, 0.230757, 0.971907,
		-0.867243, -0.473538, 0.153788,
		0.495723, -0.850007, 0.178175,
		19.346029, 17.521460, 18.383127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.662306, 17.765451, 18.790127>,  <18.999023, 18.116465, 18.258406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.662306, 17.765451, 18.790127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.030209, 17.610739, 18.816807>,  <19.250950, 17.517910, 18.832815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.030209, 17.610739, 18.816807>,  <18.662306, 17.765451, 18.790127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.030209, 17.610739, 18.816807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076567, 0.343487, 0.936031,
		-0.384952, -0.855812, 0.345539,
		0.919755, -0.386784, 0.066699,
		19.306135, 17.494703, 18.836817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.633900, 17.501228, 19.509048>,  <18.662306, 17.765451, 18.790127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.633900, 17.501228, 19.509048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.019041, 17.487120, 19.401964>,  <19.250126, 17.478655, 19.337713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.019041, 17.487120, 19.401964>,  <18.633900, 17.501228, 19.509048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.019041, 17.487120, 19.401964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265221, 0.309738, 0.913083,
		0.050714, -0.950168, 0.307587,
		0.962853, -0.035272, -0.267713,
		19.307898, 17.476538, 19.321650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979898, 17.127491, 20.116774>,  <18.633900, 17.501228, 19.509048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979898, 17.127491, 20.116774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.239748, 17.347820, 19.907171>,  <19.395658, 17.480019, 19.781410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.239748, 17.347820, 19.907171>,  <18.979898, 17.127491, 20.116774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.239748, 17.347820, 19.907171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363831, 0.379951, 0.850450,
		0.667544, -0.743122, 0.046418,
		0.649624, 0.550824, -0.524005,
		19.434635, 17.513067, 19.749969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.253838, 16.429846, 20.476229>,  <18.979898, 17.127491, 20.116774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.253838, 16.429846, 20.476229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.969685, 16.361561, 20.749350>,  <18.799192, 16.320591, 20.913221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.969685, 16.361561, 20.749350>,  <19.253838, 16.429846, 20.476229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.969685, 16.361561, 20.749350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604516, -0.348840, -0.716150,
		0.360443, -0.921503, 0.144611,
		-0.710380, -0.170712, 0.682801,
		18.756571, 16.310347, 20.954189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.095634, 15.683630, 20.399452>,  <19.253838, 16.429846, 20.476229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.095634, 15.683630, 20.399452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.781240, 15.842762, 20.588749>,  <18.592604, 15.938241, 20.702328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.781240, 15.842762, 20.588749>,  <19.095634, 15.683630, 20.399452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.781240, 15.842762, 20.588749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617467, -0.543561, -0.568573,
		0.031042, -0.739102, 0.672877,
		-0.785984, 0.397830, 0.473244,
		18.545444, 15.962111, 20.730722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.565397, 15.089867, 20.707268>,  <19.095634, 15.683630, 20.399452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.565397, 15.089867, 20.707268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.382406, 15.444840, 20.684734>,  <18.272612, 15.657825, 20.671215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.382406, 15.444840, 20.684734>,  <18.565397, 15.089867, 20.707268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.382406, 15.444840, 20.684734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819998, -0.445523, -0.359322,
		-0.343972, -0.118191, 0.931512,
		-0.457478, 0.887435, -0.056331,
		18.245163, 15.711071, 20.667835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.938206, 14.852324, 20.667315>,  <18.565397, 15.089867, 20.707268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.938206, 14.852324, 20.667315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.884193, 15.228079, 20.541258>,  <17.851786, 15.453532, 20.465624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.884193, 15.228079, 20.541258>,  <17.938206, 14.852324, 20.667315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.884193, 15.228079, 20.541258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747823, -0.305273, -0.589550,
		-0.650022, 0.156064, 0.743718,
		-0.135030, 0.939390, -0.315143,
		17.843685, 15.509895, 20.446714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.287872, 15.086578, 20.931383>,  <17.938206, 14.852324, 20.667315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.287872, 15.086578, 20.931383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.389141, 15.293350, 20.604290>,  <17.449902, 15.417414, 20.408033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.389141, 15.293350, 20.604290>,  <17.287872, 15.086578, 20.931383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.389141, 15.293350, 20.604290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837836, -0.305441, -0.452479,
		-0.483669, 0.799680, 0.355774,
		0.253170, 0.516931, -0.817733,
		17.465092, 15.448429, 20.358971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.703522, 15.399750, 20.803801>,  <17.287872, 15.086578, 20.931383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.703522, 15.399750, 20.803801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910063, 15.405176, 20.461294>,  <17.033987, 15.408432, 20.255791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910063, 15.405176, 20.461294>,  <16.703522, 15.399750, 20.803801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.910063, 15.405176, 20.461294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837020, -0.203384, -0.507968,
		-0.181042, 0.979005, -0.093664,
		0.516353, 0.013565, -0.856268,
		17.064968, 15.409245, 20.204414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.196218, 15.575538, 20.232824>,  <16.703522, 15.399750, 20.803801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.196218, 15.575538, 20.232824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.508467, 15.389714, 20.065580>,  <16.695816, 15.278220, 19.965235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.508467, 15.389714, 20.065580>,  <16.196218, 15.575538, 20.232824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.508467, 15.389714, 20.065580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587146, -0.315797, -0.745340,
		0.214218, 0.827319, -0.519282,
		0.780621, -0.464560, -0.418108,
		16.742653, 15.250346, 19.940147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.013565, 15.676788, 19.588533>,  <16.196218, 15.575538, 20.232824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.013565, 15.676788, 19.588533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.240456, 15.347406, 19.583239>,  <16.376591, 15.149777, 19.580061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.240456, 15.347406, 19.583239>,  <16.013565, 15.676788, 19.588533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.240456, 15.347406, 19.583239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569220, -0.380384, -0.728901,
		0.595182, 0.420987, -0.684492,
		0.567228, -0.823455, -0.013237,
		16.410624, 15.100370, 19.579268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128403, 15.467347, 18.870924>,  <16.013565, 15.676788, 19.588533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.128403, 15.467347, 18.870924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.219028, 15.137129, 19.077667>,  <16.273403, 14.938997, 19.201714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.219028, 15.137129, 19.077667>,  <16.128403, 15.467347, 18.870924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.219028, 15.137129, 19.077667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488515, -0.555399, -0.672967,
		0.842627, -0.100022, -0.529126,
		0.226565, -0.825546, 0.516857,
		16.286999, 14.889464, 19.232725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.171486, 15.018932, 18.372442>,  <16.128403, 15.467347, 18.870924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.171486, 15.018932, 18.372442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155712, 14.790689, 18.700552>,  <16.146248, 14.653742, 18.897417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155712, 14.790689, 18.700552>,  <16.171486, 15.018932, 18.372442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.155712, 14.790689, 18.700552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483226, -0.707645, -0.515491,
		0.874607, -0.416704, -0.247829,
		-0.039432, -0.570610, 0.820274,
		16.143883, 14.619506, 18.946634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.432301, 14.387142, 18.188295>,  <16.171486, 15.018932, 18.372442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.432301, 14.387142, 18.188295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192728, 14.303458, 18.497490>,  <16.048985, 14.253248, 18.683006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192728, 14.303458, 18.497490>,  <16.432301, 14.387142, 18.188295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.192728, 14.303458, 18.497490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591510, -0.535101, -0.603144,
		0.539810, -0.818473, 0.196740,
		-0.598933, -0.209210, 0.772988,
		16.013048, 14.240695, 18.729387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.232622, 13.714123, 18.176300>,  <16.432301, 14.387142, 18.188295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.232622, 13.714123, 18.176300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.941428, 13.899003, 18.378847>,  <15.766711, 14.009931, 18.500376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.941428, 13.899003, 18.378847>,  <16.232622, 13.714123, 18.176300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941428, 13.899003, 18.378847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671667, -0.332703, -0.661946,
		-0.137482, -0.821997, 0.552648,
		-0.727985, 0.462201, 0.506368,
		15.723033, 14.037663, 18.530758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.385490, 18.870365, 25.386955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.723604, 18.672514, 25.467787>,  <20.926472, 18.553802, 25.516287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.723604, 18.672514, 25.467787>,  <20.385490, 18.870365, 25.386955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.723604, 18.672514, 25.467787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015330, -0.400497, -0.916170,
		0.534097, 0.771326, -0.346116,
		0.845284, -0.494630, 0.202080,
		20.977190, 18.524124, 25.528410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.011816, 19.033394, 24.899651>,  <20.385490, 18.870365, 25.386955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.011816, 19.033394, 24.899651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.049782, 18.660219, 25.038572>,  <21.072561, 18.436314, 25.121925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.049782, 18.660219, 25.038572>,  <21.011816, 19.033394, 24.899651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.049782, 18.660219, 25.038572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095814, -0.355822, -0.929629,
		0.990864, 0.054957, -0.123161,
		0.094913, -0.932936, 0.347305,
		21.078257, 18.380339, 25.142763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.415548, 18.652521, 24.407919>,  <21.011816, 19.033394, 24.899651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.415548, 18.652521, 24.407919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.268106, 18.348848, 24.622498>,  <21.179642, 18.166645, 24.751245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.268106, 18.348848, 24.622498>,  <21.415548, 18.652521, 24.407919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.268106, 18.348848, 24.622498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270625, -0.464447, -0.843238,
		0.889322, -0.455997, -0.034256,
		-0.368604, -0.759181, 0.536447,
		21.157526, 18.121094, 24.783432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.681978, 18.042488, 24.114693>,  <21.415548, 18.652521, 24.407919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.681978, 18.042488, 24.114693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.383984, 17.888823, 24.332834>,  <21.205187, 17.796623, 24.463718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.383984, 17.888823, 24.332834>,  <21.681978, 18.042488, 24.114693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.383984, 17.888823, 24.332834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305079, -0.530811, -0.790675,
		0.593229, -0.755419, 0.278247,
		-0.744988, -0.384164, 0.545355,
		21.160488, 17.773573, 24.496441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.703995, 17.320595, 23.922834>,  <21.681978, 18.042488, 24.114693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.703995, 17.320595, 23.922834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.339998, 17.367125, 24.082024>,  <21.121599, 17.395042, 24.177538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.339998, 17.367125, 24.082024>,  <21.703995, 17.320595, 23.922834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.339998, 17.367125, 24.082024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399961, -0.499283, -0.768601,
		0.109293, -0.858595, 0.500869,
		-0.909992, 0.116326, 0.397973,
		21.067001, 17.402023, 24.201416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.351528, 16.687843, 23.861080>,  <21.703995, 17.320595, 23.922834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.351528, 16.687843, 23.861080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.050108, 16.943815, 23.921288>,  <20.869257, 17.097399, 23.957411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.050108, 16.943815, 23.921288>,  <21.351528, 16.687843, 23.861080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.050108, 16.943815, 23.921288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560488, -0.505756, -0.655793,
		-0.343536, -0.578535, 0.739784,
		-0.753549, 0.639929, 0.150517,
		20.824043, 17.135794, 23.966442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.794203, 16.310413, 23.860035>,  <21.351528, 16.687843, 23.861080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.794203, 16.310413, 23.860035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.664047, 16.677137, 23.767445>,  <20.585955, 16.897171, 23.711889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.664047, 16.677137, 23.767445>,  <20.794203, 16.310413, 23.860035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.664047, 16.677137, 23.767445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630933, -0.392844, -0.669027,
		-0.704306, -0.071646, 0.706272,
		-0.325388, 0.916810, -0.231478,
		20.566431, 16.952181, 23.698002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.948498, 16.313824, 23.850737>,  <20.794203, 16.310413, 23.860035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.948498, 16.313824, 23.850737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.066154, 16.629179, 23.634617>,  <20.136749, 16.818392, 23.504946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.066154, 16.629179, 23.634617>,  <19.948498, 16.313824, 23.850737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.066154, 16.629179, 23.634617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702649, -0.204833, -0.681416,
		-0.647892, 0.580074, 0.493711,
		0.294143, 0.788390, -0.540298,
		20.154398, 16.865696, 23.472528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.383770, 16.508598, 23.589746>,  <19.948498, 16.313824, 23.850737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.383770, 16.508598, 23.589746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.625757, 16.702597, 23.337147>,  <19.770950, 16.818996, 23.185587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.625757, 16.702597, 23.337147>,  <19.383770, 16.508598, 23.589746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.625757, 16.702597, 23.337147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680756, -0.096342, -0.726147,
		-0.413019, 0.869193, 0.271881,
		0.604968, 0.484997, -0.631499,
		19.807247, 16.848095, 23.147697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953684, 16.860853, 23.285538>,  <19.383770, 16.508598, 23.589746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.953684, 16.860853, 23.285538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.271694, 16.869148, 23.043051>,  <19.462502, 16.874126, 22.897558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.271694, 16.869148, 23.043051>,  <18.953684, 16.860853, 23.285538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.271694, 16.869148, 23.043051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598830, -0.132358, -0.789863,
		-0.096620, 0.990985, -0.092808,
		0.795027, 0.020740, -0.606220,
		19.510202, 16.875370, 22.861185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.674166, 17.184673, 22.729139>,  <18.953684, 16.860853, 23.285538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.674166, 17.184673, 22.729139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.022484, 17.056849, 22.579687>,  <19.231474, 16.980154, 22.490015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.022484, 17.056849, 22.579687>,  <18.674166, 17.184673, 22.729139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.022484, 17.056849, 22.579687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454700, -0.234415, -0.859243,
		0.186996, 0.918112, -0.349431,
		0.870793, -0.319562, -0.373631,
		19.283722, 16.960979, 22.467598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.718319, 17.478933, 22.093256>,  <18.674166, 17.184673, 22.729139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.718319, 17.478933, 22.093256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.918560, 17.133371, 22.071098>,  <19.038704, 16.926035, 22.057804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.918560, 17.133371, 22.071098>,  <18.718319, 17.478933, 22.093256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.918560, 17.133371, 22.071098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583541, -0.289491, -0.758732,
		0.639434, 0.412149, -0.649043,
		0.500603, -0.863903, -0.055395,
		19.068741, 16.874201, 22.054480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.780167, 17.450121, 21.355503>,  <18.718319, 17.478933, 22.093256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.780167, 17.450121, 21.355503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.846622, 17.085768, 21.506599>,  <18.886496, 16.867155, 21.597258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.846622, 17.085768, 21.506599>,  <18.780167, 17.450121, 21.355503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.846622, 17.085768, 21.506599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700697, -0.378584, -0.604729,
		0.693845, -0.164212, -0.701152,
		0.166141, -0.910883, 0.377741,
		18.896465, 16.812502, 21.619923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.978752, 17.163830, 20.829266>,  <18.780167, 17.450121, 21.355503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.978752, 17.163830, 20.829266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.891739, 16.867077, 21.082970>,  <18.839531, 16.689024, 21.235191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.891739, 16.867077, 21.082970>,  <18.978752, 17.163830, 20.829266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.891739, 16.867077, 21.082970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644679, -0.378696, -0.664062,
		0.732849, -0.553351, -0.395898,
		-0.217534, -0.741884, 0.634261,
		18.826479, 16.644512, 21.273249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.651012, 17.145561, 20.583057>,  <18.978752, 17.163830, 20.829266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.651012, 17.145561, 20.583057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.675804, 17.440542, 20.314037>,  <19.690680, 17.617531, 20.152624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.675804, 17.440542, 20.314037>,  <19.651012, 17.145561, 20.583057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.675804, 17.440542, 20.314037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369914, 0.608884, 0.701729,
		0.926996, -0.292279, -0.235056,
		0.061978, 0.737451, -0.672552,
		19.694397, 17.661777, 20.112272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.274052, 17.442879, 20.772087>,  <19.651012, 17.145561, 20.583057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.274052, 17.442879, 20.772087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.091209, 17.743526, 20.581881>,  <19.981504, 17.923916, 20.467756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.091209, 17.743526, 20.581881>,  <20.274052, 17.442879, 20.772087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.091209, 17.743526, 20.581881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556308, 0.658768, 0.506504,
		0.693955, -0.033007, -0.719261,
		-0.457108, 0.751622, -0.475518,
		19.954077, 17.969013, 20.439224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.745747, 17.963589, 20.596855>,  <20.274052, 17.442879, 20.772087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.745747, 17.963589, 20.596855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.419136, 18.178909, 20.513412>,  <20.223169, 18.308102, 20.463346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.419136, 18.178909, 20.513412>,  <20.745747, 17.963589, 20.596855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.419136, 18.178909, 20.513412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336328, 0.737239, 0.585971,
		0.469221, 0.408301, -0.783021,
		-0.816526, 0.538301, -0.208605,
		20.174177, 18.340401, 20.450830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.960974, 18.695656, 20.587921>,  <20.745747, 17.963589, 20.596855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.960974, 18.695656, 20.587921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.569006, 18.725027, 20.662069>,  <20.333824, 18.742649, 20.706558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.569006, 18.725027, 20.662069>,  <20.960974, 18.695656, 20.587921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.569006, 18.725027, 20.662069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184398, 0.687391, 0.702489,
		-0.075841, 0.722566, -0.687129,
		-0.979921, 0.073428, 0.185373,
		20.275030, 18.747055, 20.717682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.807646, 19.400255, 20.642475>,  <20.960974, 18.695656, 20.587921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.807646, 19.400255, 20.642475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.509043, 19.219564, 20.837889>,  <20.329882, 19.111149, 20.955137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.509043, 19.219564, 20.837889>,  <20.807646, 19.400255, 20.642475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.509043, 19.219564, 20.837889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160904, 0.589873, 0.791303,
		-0.645628, 0.669321, -0.367659,
		-0.746508, -0.451729, 0.488535,
		20.285089, 19.084045, 20.984449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.415302, 20.060852, 20.897161>,  <20.807646, 19.400255, 20.642475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.415302, 20.060852, 20.897161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.353640, 19.735153, 21.121033>,  <20.316643, 19.539734, 21.255356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.353640, 19.735153, 21.121033>,  <20.415302, 20.060852, 20.897161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.353640, 19.735153, 21.121033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217229, 0.524657, 0.823132,
		-0.963871, 0.248469, 0.095999,
		-0.154156, -0.814247, 0.559676,
		20.307392, 19.490879, 21.288935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.929867, 20.234751, 21.344267>,  <20.415302, 20.060852, 20.897161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.929867, 20.234751, 21.344267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.082130, 19.902044, 21.505890>,  <20.173489, 19.702419, 21.602863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.082130, 19.902044, 21.505890>,  <19.929867, 20.234751, 21.344267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.082130, 19.902044, 21.505890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024233, 0.445774, 0.894817,
		-0.924398, -0.330829, 0.189844,
		0.380659, -0.831768, 0.404056,
		20.196327, 19.652514, 21.627106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.558266, 20.135868, 21.936268>,  <19.929867, 20.234751, 21.344267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.558266, 20.135868, 21.936268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.895643, 19.926243, 21.983532>,  <20.098070, 19.800467, 22.011890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.895643, 19.926243, 21.983532>,  <19.558266, 20.135868, 21.936268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.895643, 19.926243, 21.983532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180627, 0.483782, 0.856346,
		-0.505944, -0.700936, 0.502702,
		0.843442, -0.524065, 0.118159,
		20.148676, 19.769024, 22.018980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.508759, 19.810835, 22.685200>,  <19.558266, 20.135868, 21.936268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.508759, 19.810835, 22.685200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.884207, 19.807226, 22.547266>,  <20.109476, 19.805061, 22.464506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.884207, 19.807226, 22.547266>,  <19.508759, 19.810835, 22.685200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884207, 19.807226, 22.547266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322262, 0.379519, 0.867245,
		0.123049, -0.925140, 0.359131,
		0.938619, -0.009021, -0.344836,
		20.165792, 19.804520, 22.443815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.867573, 19.633774, 23.287277>,  <19.508759, 19.810835, 22.685200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.867573, 19.633774, 23.287277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.129232, 19.797230, 23.032686>,  <20.286228, 19.895304, 22.879932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.129232, 19.797230, 23.032686>,  <19.867573, 19.633774, 23.287277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.129232, 19.797230, 23.032686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573386, 0.280869, 0.769637,
		0.493270, -0.868405, -0.050578,
		0.654150, 0.408640, -0.636476,
		20.325478, 19.919821, 22.841743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.602448, 19.337381, 23.462582>,  <19.867573, 19.633774, 23.287277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.602448, 19.337381, 23.462582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.619509, 19.704609, 23.304934>,  <20.629745, 19.924946, 23.210344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.619509, 19.704609, 23.304934>,  <20.602448, 19.337381, 23.462582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.619509, 19.704609, 23.304934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604918, 0.290221, 0.741516,
		0.795144, -0.270039, -0.542978,
		0.042655, 0.918069, -0.394119,
		20.632305, 19.980030, 23.186697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.295195, 19.503040, 23.474710>,  <20.602448, 19.337381, 23.462582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.295195, 19.503040, 23.474710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.127724, 19.858122, 23.398094>,  <21.027241, 20.071171, 23.352125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.127724, 19.858122, 23.398094>,  <21.295195, 19.503040, 23.474710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.127724, 19.858122, 23.398094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750636, 0.456992, 0.477183,
		0.511130, 0.056010, -0.857677,
		-0.418679, 0.887705, -0.191540,
		21.002121, 20.124434, 23.340631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.884546, 19.950142, 23.325365>,  <21.295195, 19.503040, 23.474710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.884546, 19.950142, 23.325365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.581768, 20.189304, 23.430845>,  <21.400101, 20.332802, 23.494133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.581768, 20.189304, 23.430845>,  <21.884546, 19.950142, 23.325365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.581768, 20.189304, 23.430845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615187, 0.515897, 0.596151,
		0.220399, 0.613481, -0.758331,
		-0.756948, 0.597906, 0.263703,
		21.354683, 20.368675, 23.509956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.147142, 20.605938, 23.178251>,  <21.884546, 19.950142, 23.325365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.147142, 20.605938, 23.178251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.848892, 20.642048, 23.442339>,  <21.669941, 20.663713, 23.600792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.848892, 20.642048, 23.442339>,  <22.147142, 20.605938, 23.178251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.848892, 20.642048, 23.442339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585556, 0.561675, 0.584504,
		-0.318063, 0.822418, -0.471661,
		-0.745627, 0.090275, 0.660220,
		21.625204, 20.669130, 23.640406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<17.424538, 21.157248, 25.031563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.748396, 20.978458, 24.879410>,  <17.942711, 20.871185, 24.788118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.748396, 20.978458, 24.879410>,  <17.424538, 21.157248, 25.031563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.748396, 20.978458, 24.879410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539893, -0.312993, -0.781378,
		0.230197, 0.838005, -0.494730,
		0.809645, -0.446972, -0.380383,
		17.991289, 20.844366, 24.765295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.553915, 21.394850, 24.364849>,  <17.424538, 21.157248, 25.031563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.553915, 21.394850, 24.364849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.717712, 21.031340, 24.396967>,  <17.815990, 20.813234, 24.416237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.717712, 21.031340, 24.396967>,  <17.553915, 21.394850, 24.364849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.717712, 21.031340, 24.396967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392376, -0.254889, -0.883783,
		0.823625, 0.330396, -0.460956,
		0.409491, -0.908774, 0.080293,
		17.840559, 20.758707, 24.421055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502243, 21.208178, 23.722174>,  <17.553915, 21.394850, 24.364849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.502243, 21.208178, 23.722174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.603603, 20.865835, 23.902527>,  <17.664419, 20.660429, 24.010738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.603603, 20.865835, 23.902527>,  <17.502243, 21.208178, 23.722174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.603603, 20.865835, 23.902527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293849, -0.512173, -0.807051,
		0.921651, 0.072015, -0.381278,
		0.253400, -0.855857, 0.450884,
		17.679623, 20.609077, 24.037792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.801273, 20.841763, 23.196995>,  <17.502243, 21.208178, 23.722174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.801273, 20.841763, 23.196995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.681198, 20.605455, 23.496563>,  <17.609152, 20.463671, 23.676304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.681198, 20.605455, 23.496563>,  <17.801273, 20.841763, 23.196995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.681198, 20.605455, 23.496563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635209, -0.461919, -0.618983,
		0.711615, -0.661533, -0.236597,
		-0.300189, -0.590766, 0.748920,
		17.591141, 20.428226, 23.721239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.708727, 20.256275, 22.934189>,  <17.801273, 20.841763, 23.196995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.708727, 20.256275, 22.934189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.492048, 20.198341, 23.265390>,  <17.362041, 20.163582, 23.464111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.492048, 20.198341, 23.265390>,  <17.708727, 20.256275, 22.934189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.492048, 20.198341, 23.265390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655714, -0.543514, -0.524053,
		0.525931, -0.826810, 0.199450,
		-0.541696, -0.144833, 0.828002,
		17.329540, 20.154892, 23.513792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.630987, 19.571487, 22.967346>,  <17.708727, 20.256275, 22.934189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.630987, 19.571487, 22.967346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.347019, 19.721216, 23.205975>,  <17.176640, 19.811054, 23.349152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.347019, 19.721216, 23.205975>,  <17.630987, 19.571487, 22.967346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.347019, 19.721216, 23.205975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680790, -0.581690, -0.445154,
		0.180390, -0.722163, 0.667787,
		-0.709919, 0.374322, 0.596572,
		17.134043, 19.833513, 23.384947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.162771, 19.031151, 23.166592>,  <17.630987, 19.571487, 22.967346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.162771, 19.031151, 23.166592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.945978, 19.366909, 23.182917>,  <16.815903, 19.568365, 23.192713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.945978, 19.366909, 23.182917>,  <17.162771, 19.031151, 23.166592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.945978, 19.366909, 23.182917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723438, -0.441295, -0.530940,
		-0.427657, -0.317289, 0.846426,
		-0.541985, 0.839397, 0.040816,
		16.783382, 19.618729, 23.195162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514980, 18.703308, 23.379982>,  <17.162771, 19.031151, 23.166592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.514980, 18.703308, 23.379982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.467072, 19.067909, 23.222593>,  <16.438326, 19.286669, 23.128160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.467072, 19.067909, 23.222593>,  <16.514980, 18.703308, 23.379982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.467072, 19.067909, 23.222593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691904, -0.360860, -0.625339,
		-0.711986, 0.197346, 0.673892,
		-0.119772, 0.911501, -0.393472,
		16.431139, 19.341360, 23.104551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.705138, 18.781086, 23.269129>,  <16.514980, 18.703308, 23.379982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.705138, 18.781086, 23.269129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.872188, 19.057507, 23.033150>,  <15.972418, 19.223358, 22.891563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.872188, 19.057507, 23.033150>,  <15.705138, 18.781086, 23.269129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.872188, 19.057507, 23.033150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715770, -0.149738, -0.682094,
		-0.559699, 0.707125, 0.432100,
		0.417624, 0.691052, -0.589947,
		15.997475, 19.264822, 22.856165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.172577, 19.192059, 23.026434>,  <15.705138, 18.781086, 23.269129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.172577, 19.192059, 23.026434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.462041, 19.267128, 22.760775>,  <15.635719, 19.312170, 22.601379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.462041, 19.267128, 22.760775>,  <15.172577, 19.192059, 23.026434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.462041, 19.267128, 22.760775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673796, -0.016163, -0.738740,
		-0.149377, 0.982098, 0.114759,
		0.723661, 0.187675, -0.664149,
		15.679139, 19.323431, 22.561529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.819355, 19.459110, 22.477446>,  <15.172577, 19.192059, 23.026434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.819355, 19.459110, 22.477446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.163946, 19.375816, 22.292192>,  <15.370701, 19.325840, 22.181040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.163946, 19.375816, 22.292192>,  <14.819355, 19.459110, 22.477446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.163946, 19.375816, 22.292192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506412, -0.285076, -0.813805,
		0.037434, 0.935612, -0.351040,
		0.861479, -0.208234, -0.463133,
		15.422390, 19.313347, 22.153252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.016910, 20.046326, 21.931137>,  <14.819355, 19.459110, 22.477446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.016910, 20.046326, 21.931137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.155546, 19.679804, 21.850880>,  <15.238728, 19.459890, 21.802725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.155546, 19.679804, 21.850880>,  <15.016910, 20.046326, 21.931137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.155546, 19.679804, 21.850880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665179, -0.089274, -0.741328,
		0.661371, 0.390402, -0.640449,
		0.346591, -0.916306, -0.200644,
		15.259523, 19.404913, 21.790686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.904114, 19.971292, 21.194750>,  <15.016910, 20.046326, 21.931137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.904114, 19.971292, 21.194750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.004897, 19.597954, 21.297028>,  <15.065367, 19.373951, 21.358395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.004897, 19.597954, 21.297028>,  <14.904114, 19.971292, 21.194750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.004897, 19.597954, 21.297028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631467, -0.358783, -0.687405,
		0.733326, 0.011733, -0.679776,
		0.251957, -0.933347, 0.255695,
		15.080484, 19.317949, 21.373735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.190897, 19.642557, 20.601505>,  <14.904114, 19.971292, 21.194750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.190897, 19.642557, 20.601505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.039659, 19.378263, 20.860882>,  <14.948915, 19.219688, 21.016508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.039659, 19.378263, 20.860882>,  <15.190897, 19.642557, 20.601505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.039659, 19.378263, 20.860882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785354, -0.141938, -0.602556,
		0.490167, -0.737079, -0.465244,
		-0.378095, -0.660734, 0.648441,
		14.926230, 19.180044, 21.055414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.716002, 19.316542, 20.190638>,  <15.190897, 19.642557, 20.601505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.716002, 19.316542, 20.190638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.797864, 19.505669, 19.847811>,  <15.846981, 19.619144, 19.642115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.797864, 19.505669, 19.847811>,  <15.716002, 19.316542, 20.190638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.797864, 19.505669, 19.847811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192649, 0.839016, 0.508860,
		0.959689, -0.269253, 0.080620,
		0.204654, 0.472816, -0.857066,
		15.859261, 19.647514, 19.590691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.417286, 19.604015, 20.288897>,  <15.716002, 19.316542, 20.190638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.417286, 19.604015, 20.288897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.253561, 19.813808, 19.990265>,  <16.155325, 19.939684, 19.811087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.253561, 19.813808, 19.990265>,  <16.417286, 19.604015, 20.288897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.253561, 19.813808, 19.990265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253203, 0.851420, 0.459318,
		0.876556, -0.001031, -0.481298,
		-0.409314, 0.524484, -0.746578,
		16.130768, 19.971153, 19.766291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.893736, 20.154066, 19.904324>,  <16.417286, 19.604015, 20.288897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.893736, 20.154066, 19.904324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.511705, 20.261625, 19.854479>,  <16.282488, 20.326160, 19.824572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.511705, 20.261625, 19.854479>,  <16.893736, 20.154066, 19.904324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.511705, 20.261625, 19.854479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213939, 0.916509, 0.337995,
		0.205092, 0.296151, -0.932862,
		-0.955075, 0.268896, -0.124610,
		16.225183, 20.342295, 19.817097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.960127, 20.855162, 19.854427>,  <16.893736, 20.154066, 19.904324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.960127, 20.855162, 19.854427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.572735, 20.779285, 19.919003>,  <16.340300, 20.733759, 19.957747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.572735, 20.779285, 19.919003>,  <16.960127, 20.855162, 19.854427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.572735, 20.779285, 19.919003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042749, 0.765074, 0.642522,
		-0.245393, 0.615369, -0.749068,
		-0.968481, -0.189692, 0.161437,
		16.282190, 20.722378, 19.967434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630417, 21.600916, 19.977684>,  <16.960127, 20.855162, 19.854427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.630417, 21.600916, 19.977684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.392063, 21.321026, 20.135321>,  <16.249052, 21.153091, 20.229902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.392063, 21.321026, 20.135321>,  <16.630417, 21.600916, 19.977684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.392063, 21.321026, 20.135321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138927, 0.573151, 0.807587,
		-0.790963, 0.426477, -0.438742,
		-0.595883, -0.699725, 0.394092,
		16.213299, 21.111109, 20.253548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.033390, 21.989508, 20.143618>,  <16.630417, 21.600916, 19.977684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.033390, 21.989508, 20.143618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.066151, 21.664251, 20.374128>,  <16.085808, 21.469097, 20.512436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.066151, 21.664251, 20.374128>,  <16.033390, 21.989508, 20.143618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066151, 21.664251, 20.374128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150594, 0.581679, 0.799357,
		-0.985197, 0.021315, 0.170094,
		0.081902, -0.813139, 0.576278,
		16.090721, 21.420309, 20.547012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.511094, 22.036772, 20.657415>,  <16.033390, 21.989508, 20.143618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.511094, 22.036772, 20.657415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.811850, 21.797804, 20.768953>,  <15.992303, 21.654423, 20.835876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.811850, 21.797804, 20.768953>,  <15.511094, 22.036772, 20.657415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.811850, 21.797804, 20.768953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185016, 0.597148, 0.780502,
		-0.632799, -0.535259, 0.559521,
		0.751888, -0.597420, 0.278843,
		16.037416, 21.618578, 20.852606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.514167, 22.044579, 21.456741>,  <15.511094, 22.036772, 20.657415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.514167, 22.044579, 21.456741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.874812, 21.895891, 21.368273>,  <16.091200, 21.806679, 21.315191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.874812, 21.895891, 21.368273>,  <15.514167, 22.044579, 21.456741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.874812, 21.895891, 21.368273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368946, 0.394014, 0.841803,
		-0.225769, -0.840582, 0.492392,
		0.901614, -0.371719, -0.221173,
		16.145296, 21.784376, 21.301920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.879361, 21.922007, 22.135529>,  <15.514167, 22.044579, 21.456741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.879361, 21.922007, 22.135529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.186331, 21.879646, 21.882595>,  <16.370512, 21.854231, 21.730835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.186331, 21.879646, 21.882595>,  <15.879361, 21.922007, 22.135529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.186331, 21.879646, 21.882595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624240, 0.348368, 0.699260,
		0.146232, -0.931357, 0.333453,
		0.767424, -0.105901, -0.632333,
		16.416557, 21.847876, 21.692896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.373783, 21.416725, 22.496546>,  <15.879361, 21.922007, 22.135529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.373783, 21.416725, 22.496546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.569073, 21.640913, 22.228960>,  <16.686247, 21.775425, 22.068409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.569073, 21.640913, 22.228960>,  <16.373783, 21.416725, 22.496546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.569073, 21.640913, 22.228960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756762, 0.109907, 0.644384,
		0.434681, -0.820851, -0.370482,
		0.488225, 0.560468, -0.668963,
		16.715540, 21.809053, 22.028271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.040716, 21.205059, 22.513399>,  <16.373783, 21.416725, 22.496546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.040716, 21.205059, 22.513399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.071043, 21.576818, 22.368916>,  <17.089239, 21.799873, 22.282225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.071043, 21.576818, 22.368916>,  <17.040716, 21.205059, 22.513399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.071043, 21.576818, 22.368916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840944, 0.135051, 0.523999,
		0.535785, -0.343485, -0.771332,
		0.075817, 0.929397, -0.361210,
		17.093788, 21.855639, 22.260553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.735134, 21.328363, 22.372820>,  <17.040716, 21.205059, 22.513399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.735134, 21.328363, 22.372820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.594076, 21.702665, 22.373835>,  <17.509441, 21.927246, 22.374443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.594076, 21.702665, 22.373835>,  <17.735134, 21.328363, 22.372820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.594076, 21.702665, 22.373835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818862, 0.307279, 0.484814,
		0.452888, 0.173043, -0.874613,
		-0.352644, 0.935754, 0.002535,
		17.488283, 21.983391, 22.374596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.343283, 21.827238, 22.198559>,  <17.735134, 21.328363, 22.372820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.343283, 21.827238, 22.198559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.044428, 22.019508, 22.382183>,  <17.865114, 22.134871, 22.492357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.044428, 22.019508, 22.382183>,  <18.343283, 21.827238, 22.198559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.044428, 22.019508, 22.382183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644645, 0.355779, 0.676649,
		0.161925, 0.801481, -0.575681,
		-0.747137, 0.480676, 0.459061,
		17.820288, 22.163712, 22.519901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587099, 22.540859, 22.229223>,  <18.343283, 21.827238, 22.198559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587099, 22.540859, 22.229223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.295610, 22.491877, 22.498734>,  <18.120718, 22.462486, 22.660439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.295610, 22.491877, 22.498734>,  <18.587099, 22.540859, 22.229223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.295610, 22.491877, 22.498734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594169, 0.376124, 0.710981,
		-0.340487, 0.918442, -0.201329,
		-0.728719, -0.122457, 0.673775,
		18.076994, 22.455139, 22.700867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.633629, 23.173708, 21.716494>,  <18.587099, 22.540859, 22.229223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.633629, 23.173708, 21.716494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.978205, 23.112930, 21.522655>,  <19.184952, 23.076464, 21.406353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.978205, 23.112930, 21.522655>,  <18.633629, 23.173708, 21.716494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.978205, 23.112930, 21.522655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504605, -0.363868, -0.782926,
		-0.057368, 0.918974, -0.390123,
		0.861442, -0.151943, -0.484594,
		19.236637, 23.067347, 21.377277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.556602, 23.456480, 21.107248>,  <18.633629, 23.173708, 21.716494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.556602, 23.456480, 21.107248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.833403, 23.173857, 21.048046>,  <18.999483, 23.004282, 21.012526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.833403, 23.173857, 21.048046>,  <18.556602, 23.456480, 21.107248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.833403, 23.173857, 21.048046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486636, -0.305142, -0.818580,
		0.533214, 0.638483, -0.554997,
		0.692003, -0.706560, -0.148003,
		19.041004, 22.961889, 21.003645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.723936, 23.534975, 20.394861>,  <18.556602, 23.456480, 21.107248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.723936, 23.534975, 20.394861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.897652, 23.179657, 20.454628>,  <19.001881, 22.966467, 20.490488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.897652, 23.179657, 20.454628>,  <18.723936, 23.534975, 20.394861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.897652, 23.179657, 20.454628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350298, -0.319369, -0.880508,
		0.829871, 0.330052, -0.449866,
		0.434287, -0.888296, 0.149418,
		19.027937, 22.913168, 20.499454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.984827, 23.350380, 19.769230>,  <18.723936, 23.534975, 20.394861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.984827, 23.350380, 19.769230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.992104, 23.013708, 19.985098>,  <18.996469, 22.811705, 20.114618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.992104, 23.013708, 19.985098>,  <18.984827, 23.350380, 19.769230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.992104, 23.013708, 19.985098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110194, -0.538160, -0.835608,
		0.993744, -0.044268, -0.102538,
		0.018191, -0.841679, 0.539671,
		18.997561, 22.761204, 20.146999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.426809, 22.884155, 19.430616>,  <18.984827, 23.350380, 19.769230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.426809, 22.884155, 19.430616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.164249, 22.673735, 19.646917>,  <19.006714, 22.547482, 19.776697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.164249, 22.673735, 19.646917>,  <19.426809, 22.884155, 19.430616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.164249, 22.673735, 19.646917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196164, -0.573114, -0.795651,
		0.728465, -0.628339, 0.272998,
		-0.656398, -0.526051, 0.540751,
		18.967331, 22.515919, 19.809143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.577276, 22.259373, 19.270641>,  <19.426809, 22.884155, 19.430616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.577276, 22.259373, 19.270641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.212839, 22.222021, 19.431236>,  <18.994177, 22.199610, 19.527594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.212839, 22.222021, 19.431236>,  <19.577276, 22.259373, 19.270641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.212839, 22.222021, 19.431236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317067, -0.463640, -0.827349,
		0.263403, -0.881089, 0.392810,
		-0.911091, -0.093379, 0.401489,
		18.939512, 22.194008, 19.551683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.434532, 21.522013, 19.285080>,  <19.577276, 22.259373, 19.270641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.434532, 21.522013, 19.285080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.101141, 21.742889, 19.277040>,  <18.901106, 21.875416, 19.272217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.101141, 21.742889, 19.277040>,  <19.434532, 21.522013, 19.285080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.101141, 21.742889, 19.277040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357421, -0.566514, -0.742504,
		-0.421388, -0.611676, 0.669540,
		-0.833476, 0.552190, -0.020096,
		18.851099, 21.908546, 19.271011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.869495, 21.047558, 19.424265>,  <19.434532, 21.522013, 19.285080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.869495, 21.047558, 19.424265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.703478, 21.370300, 19.256113>,  <18.603867, 21.563946, 19.155222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.703478, 21.370300, 19.256113>,  <18.869495, 21.047558, 19.424265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.703478, 21.370300, 19.256113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502916, -0.588513, -0.633031,
		-0.758165, -0.051319, 0.650040,
		-0.415043, 0.806857, -0.420380,
		18.578964, 21.612358, 19.129999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.098478, 20.969515, 19.296804>,  <18.869495, 21.047558, 19.424265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.098478, 20.969515, 19.296804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.179577, 21.257446, 19.031252>,  <18.228237, 21.430206, 18.871922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.179577, 21.257446, 19.031252>,  <18.098478, 20.969515, 19.296804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.179577, 21.257446, 19.031252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577566, -0.459573, -0.674692,
		-0.790766, 0.520227, 0.322572,
		0.202748, 0.719830, -0.663880,
		18.240402, 21.473396, 18.832088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.487902, 21.032501, 18.981979>,  <18.098478, 20.969515, 19.296804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.487902, 21.032501, 18.981979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.729431, 21.231936, 18.733204>,  <17.874348, 21.351597, 18.583939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.729431, 21.231936, 18.733204>,  <17.487902, 21.032501, 18.981979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.729431, 21.231936, 18.733204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510470, -0.357392, -0.782107,
		-0.612224, 0.789736, 0.038712,
		0.603822, 0.498586, -0.621941,
		17.910578, 21.381512, 18.546621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.002687, 21.416016, 18.536667>,  <17.487902, 21.032501, 18.981979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.002687, 21.416016, 18.536667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.361946, 21.361151, 18.369566>,  <17.577501, 21.328232, 18.269306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.361946, 21.361151, 18.369566>,  <17.002687, 21.416016, 18.536667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.361946, 21.361151, 18.369566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431542, -0.457076, -0.777723,
		-0.084269, 0.878787, -0.469713,
		0.898148, -0.137163, -0.417751,
		17.631390, 21.320002, 18.244240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.938457, 21.550665, 17.841019>,  <17.002687, 21.416016, 18.536667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.938457, 21.550665, 17.841019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.274958, 21.334562, 17.832760>,  <17.476858, 21.204901, 17.827805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.274958, 21.334562, 17.832760>,  <16.938457, 21.550665, 17.841019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.274958, 21.334562, 17.832760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262718, -0.375113, -0.888971,
		0.472526, 0.753269, -0.457498,
		0.841248, -0.540255, -0.020647,
		17.527332, 21.172485, 17.826567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.245371, 21.725296, 17.123316>,  <16.938457, 21.550665, 17.841019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.245371, 21.725296, 17.123316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.381678, 21.381708, 17.276182>,  <17.463463, 21.175556, 17.367903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.381678, 21.381708, 17.276182>,  <17.245371, 21.725296, 17.123316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.381678, 21.381708, 17.276182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293362, -0.483352, -0.824809,
		0.893205, 0.168955, -0.416699,
		0.340768, -0.858968, 0.382167,
		17.483908, 21.124018, 17.390833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.246281, 21.300156, 16.559301>,  <17.245371, 21.725296, 17.123316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.246281, 21.300156, 16.559301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.345322, 21.020187, 16.827272>,  <17.404747, 20.852207, 16.988054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.345322, 21.020187, 16.827272>,  <17.246281, 21.300156, 16.559301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.345322, 21.020187, 16.827272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237262, -0.714209, -0.658493,
		0.939361, 0.004097, -0.342906,
		0.247604, -0.699921, 0.669928,
		17.419603, 20.810211, 17.028252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.669242, 13.602861, 6.119331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.053207, 13.703179, 6.069262>,  <10.283587, 13.763371, 6.039221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.053207, 13.703179, 6.069262>,  <9.669242, 13.602861, 6.119331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.053207, 13.703179, 6.069262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136550, 0.028421, -0.990225,
		-0.244787, 0.967623, 0.061528,
		0.959913, 0.250796, -0.125172,
		10.341182, 13.778419, 6.031711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.191419, 13.908647, 5.622089>,  <9.669242, 13.602861, 6.119331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.191419, 13.908647, 5.622089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.462667, 14.199691, 5.580639>,  <9.625415, 14.374317, 5.555769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.462667, 14.199691, 5.580639>,  <9.191419, 13.908647, 5.622089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.462667, 14.199691, 5.580639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300122, 0.145444, -0.942747,
		-0.670881, 0.670395, 0.317000,
		0.678119, 0.727610, -0.103625,
		9.666102, 14.417974, 5.549552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.611194, 14.373348, 5.309693>,  <9.191419, 13.908647, 5.622089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.611194, 14.373348, 5.309693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.279549, 14.328243, 5.090656>,  <8.080562, 14.301181, 4.959233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.279549, 14.328243, 5.090656>,  <8.611194, 14.373348, 5.309693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.279549, 14.328243, 5.090656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552679, 0.313129, 0.772332,
		0.084378, 0.942993, -0.321940,
		-0.829112, -0.112762, -0.547593,
		8.030815, 14.294415, 4.926378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.176268, 14.943223, 5.200595>,  <8.611194, 14.373348, 5.309693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.176268, 14.943223, 5.200595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.906826, 14.648335, 5.221617>,  <7.745161, 14.471401, 5.234231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.906826, 14.648335, 5.221617>,  <8.176268, 14.943223, 5.200595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.906826, 14.648335, 5.221617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573656, 0.566339, 0.591759,
		-0.466022, 0.368462, -0.804400,
		-0.673604, -0.737221, 0.052556,
		7.704745, 14.427168, 5.237384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.491264, 15.042541, 4.960016>,  <8.176268, 14.943223, 5.200595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.491264, 15.042541, 4.960016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.488959, 14.822600, 5.294113>,  <7.487576, 14.690636, 5.494571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.488959, 14.822600, 5.294113>,  <7.491264, 15.042541, 4.960016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.488959, 14.822600, 5.294113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525442, 0.712321, 0.465306,
		-0.850810, -0.436191, -0.293020,
		-0.005762, -0.549852, 0.835243,
		7.487230, 14.657645, 5.544686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.782880, 15.001858, 5.242761>,  <7.491264, 15.042541, 4.960016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.782880, 15.001858, 5.242761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.050586, 14.947001, 5.534864>,  <7.211209, 14.914087, 5.710127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.050586, 14.947001, 5.534864>,  <6.782880, 15.001858, 5.242761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.050586, 14.947001, 5.534864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482986, 0.666560, 0.567822,
		-0.564634, -0.732728, 0.379867,
		0.669263, -0.137140, 0.730260,
		7.251365, 14.905859, 5.753942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.442155, 14.865361, 5.810071>,  <6.782880, 15.001858, 5.242761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.442155, 14.865361, 5.810071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.780325, 15.053921, 5.910503>,  <6.983227, 15.167057, 5.970762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.780325, 15.053921, 5.910503>,  <6.442155, 14.865361, 5.810071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.780325, 15.053921, 5.910503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495843, 0.518033, 0.696980,
		0.198489, -0.713739, 0.671698,
		0.845424, 0.471400, 0.251078,
		7.033952, 15.195341, 5.985826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.396360, 14.284373, 6.428838>,  <6.442155, 14.865361, 5.810071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.396360, 14.284373, 6.428838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.677628, 14.467766, 6.646223>,  <6.846388, 14.577801, 6.776653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.677628, 14.467766, 6.646223>,  <6.396360, 14.284373, 6.428838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.677628, 14.467766, 6.646223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402569, -0.373311, 0.835809,
		0.586082, -0.806495, -0.077930,
		0.703168, 0.458481, 0.543461,
		6.888578, 14.605309, 6.809261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.590471, 13.851521, 7.003500>,  <6.396360, 14.284373, 6.428838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.590471, 13.851521, 7.003500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.721753, 14.199466, 7.150806>,  <6.800522, 14.408233, 7.239190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.721753, 14.199466, 7.150806>,  <6.590471, 13.851521, 7.003500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.721753, 14.199466, 7.150806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219914, -0.308785, 0.925359,
		0.918651, -0.384694, 0.089951,
		0.328204, 0.869864, 0.368265,
		6.820214, 14.460424, 7.261285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.738037, 13.794372, 7.814314>,  <6.590471, 13.851521, 7.003500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.738037, 13.794372, 7.814314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.744985, 14.191363, 7.765847>,  <6.749154, 14.429559, 7.736766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.744985, 14.191363, 7.765847>,  <6.738037, 13.794372, 7.814314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.744985, 14.191363, 7.765847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301156, 0.120752, 0.945899,
		0.953417, 0.020059, 0.300989,
		0.017371, 0.992480, -0.121168,
		6.750196, 14.489107, 7.729496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.136283, 14.127666, 8.247021>,  <6.738037, 13.794372, 7.814314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.136283, 14.127666, 8.247021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.874146, 14.416544, 8.158511>,  <6.716864, 14.589870, 8.105406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.874146, 14.416544, 8.158511>,  <7.136283, 14.127666, 8.247021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.874146, 14.416544, 8.158511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203439, 0.113360, 0.972503,
		0.727419, 0.682339, 0.072633,
		-0.655343, 0.722193, -0.221274,
		6.677543, 14.633202, 8.092129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.270257, 14.666415, 8.714264>,  <7.136283, 14.127666, 8.247021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.270257, 14.666415, 8.714264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.887122, 14.676253, 8.599759>,  <6.657242, 14.682157, 8.531056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.887122, 14.676253, 8.599759>,  <7.270257, 14.666415, 8.714264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.887122, 14.676253, 8.599759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286449, -0.004355, 0.958086,
		0.022318, 0.999688, 0.011217,
		-0.957835, 0.024596, -0.286262,
		6.599771, 14.683632, 8.513881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.922993, 15.064430, 9.176313>,  <7.270257, 14.666415, 8.714264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.922993, 15.064430, 9.176313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.638633, 14.839417, 9.007468>,  <6.468017, 14.704410, 8.906161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.638633, 14.839417, 9.007468>,  <6.922993, 15.064430, 9.176313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.638633, 14.839417, 9.007468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530669, 0.035175, 0.846849,
		-0.461532, 0.826027, -0.323524,
		-0.710900, -0.562532, -0.422112,
		6.425363, 14.670658, 8.880835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.304472, 15.410182, 9.379200>,  <6.922993, 15.064430, 9.176313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.304472, 15.410182, 9.379200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.228632, 15.022872, 9.314093>,  <6.183129, 14.790485, 9.275028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.228632, 15.022872, 9.314093>,  <6.304472, 15.410182, 9.379200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.228632, 15.022872, 9.314093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404218, -0.074100, 0.911656,
		-0.894796, 0.238643, -0.377346,
		-0.189599, -0.968276, -0.162769,
		6.171753, 14.732389, 9.265262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.632768, 15.390771, 9.523208>,  <6.304472, 15.410182, 9.379200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.632768, 15.390771, 9.523208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.768251, 15.014732, 9.538680>,  <5.849541, 14.789109, 9.547964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.768251, 15.014732, 9.538680>,  <5.632768, 15.390771, 9.523208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.768251, 15.014732, 9.538680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256227, -0.052602, 0.965184,
		-0.905332, -0.336826, -0.258694,
		0.338707, -0.940097, 0.038682,
		5.869863, 14.732703, 9.550284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.108847, 14.979956, 9.800600>,  <5.632768, 15.390771, 9.523208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.108847, 14.979956, 9.800600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.429502, 14.742376, 9.827737>,  <5.621895, 14.599829, 9.844019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.429502, 14.742376, 9.827737>,  <5.108847, 14.979956, 9.800600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.429502, 14.742376, 9.827737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207741, -0.170359, 0.963235,
		-0.560554, -0.786260, -0.259954,
		0.801638, -0.593948, 0.067843,
		5.669993, 14.564192, 9.848089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.921824, 14.528211, 10.353657>,  <5.108847, 14.979956, 9.800600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.921824, 14.528211, 10.353657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.317442, 14.481481, 10.317569>,  <5.554813, 14.453443, 10.295916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.317442, 14.481481, 10.317569>,  <4.921824, 14.528211, 10.353657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.317442, 14.481481, 10.317569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084775, -0.050783, 0.995105,
		-0.120838, -0.991853, -0.040323,
		0.989046, -0.116828, -0.090221,
		5.614156, 14.446433, 10.290503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.997855, 13.837540, 10.693282>,  <4.921824, 14.528211, 10.353657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.997855, 13.837540, 10.693282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.325395, 14.067132, 10.691173>,  <5.521919, 14.204887, 10.689907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.325395, 14.067132, 10.691173>,  <4.997855, 13.837540, 10.693282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.325395, 14.067132, 10.691173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020388, 0.038265, 0.999060,
		0.573644, -0.817973, 0.043036,
		0.818851, 0.573982, -0.005273,
		5.571051, 14.239326, 10.689590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.407568, 13.592503, 11.283556>,  <4.997855, 13.837540, 10.693282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.407568, 13.592503, 11.283556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.554680, 13.953719, 11.194783>,  <5.642947, 14.170449, 11.141520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.554680, 13.953719, 11.194783>,  <5.407568, 13.592503, 11.283556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.554680, 13.953719, 11.194783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105938, 0.196418, 0.974780,
		0.923859, -0.382015, -0.023428,
		0.367780, 0.903042, -0.221933,
		5.665014, 14.224631, 11.128203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.938403, 13.653039, 11.796748>,  <5.407568, 13.592503, 11.283556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.938403, 13.653039, 11.796748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.840632, 14.022841, 11.679757>,  <5.781970, 14.244723, 11.609563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.840632, 14.022841, 11.679757>,  <5.938403, 13.653039, 11.796748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.840632, 14.022841, 11.679757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204712, 0.344026, 0.916372,
		0.947812, 0.164112, -0.273347,
		-0.244426, 0.924507, -0.292477,
		5.767304, 14.300194, 11.592014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.502738, 13.981965, 12.042963>,  <5.938403, 13.653039, 11.796748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.502738, 13.981965, 12.042963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.219110, 14.261139, 12.002749>,  <6.048933, 14.428643, 11.978621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.219110, 14.261139, 12.002749>,  <6.502738, 13.981965, 12.042963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.219110, 14.261139, 12.002749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258105, 0.389573, 0.884090,
		0.656202, 0.600933, -0.456375,
		-0.709070, 0.697934, -0.100535,
		6.006389, 14.470519, 11.972589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.886765, 14.656595, 12.334770>,  <6.502738, 13.981965, 12.042963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.886765, 14.656595, 12.334770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.488323, 14.689282, 12.348024>,  <6.249258, 14.708895, 12.355977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.488323, 14.689282, 12.348024>,  <6.886765, 14.656595, 12.334770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.488323, 14.689282, 12.348024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063693, 0.406896, 0.911251,
		0.060982, 0.909812, -0.410516,
		-0.996105, 0.081717, 0.033135,
		6.189492, 14.713798, 12.357965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.697401, 15.425313, 12.585813>,  <6.886765, 14.656595, 12.334770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.697401, 15.425313, 12.585813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.361216, 15.222674, 12.662737>,  <6.159504, 15.101091, 12.708892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.361216, 15.222674, 12.662737>,  <6.697401, 15.425313, 12.585813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.361216, 15.222674, 12.662737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008068, 0.366562, 0.930359,
		-0.541809, 0.780380, -0.312169,
		-0.840463, -0.506595, 0.192311,
		6.109077, 15.070696, 12.720430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.232960, 15.916310, 12.886278>,  <6.697401, 15.425313, 12.585813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.232960, 15.916310, 12.886278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.130675, 15.539761, 12.974302>,  <6.069304, 15.313831, 13.027117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.130675, 15.539761, 12.974302>,  <6.232960, 15.916310, 12.886278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.130675, 15.539761, 12.974302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122179, 0.257272, 0.958584,
		-0.959001, 0.218236, -0.180804,
		-0.255714, -0.941373, 0.220060,
		6.053961, 15.257349, 13.040320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.728588, 16.037487, 13.387879>,  <6.232960, 15.916310, 12.886278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.728588, 16.037487, 13.387879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.803454, 15.646258, 13.424412>,  <5.848374, 15.411521, 13.446331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.803454, 15.646258, 13.424412>,  <5.728588, 16.037487, 13.387879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.803454, 15.646258, 13.424412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168702, 0.059589, 0.983864,
		-0.967734, -0.199554, -0.153850,
		0.187166, -0.978073, 0.091331,
		5.859604, 15.352837, 13.451811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.194798, 15.782760, 13.937643>,  <5.728588, 16.037487, 13.387879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.194798, 15.782760, 13.937643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.469459, 15.493140, 13.911531>,  <5.634256, 15.319368, 13.895864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.469459, 15.493140, 13.911531>,  <5.194798, 15.782760, 13.937643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.469459, 15.493140, 13.911531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055955, -0.036889, 0.997751,
		-0.724828, -0.688762, 0.015184,
		0.686653, -0.724048, -0.065278,
		5.675455, 15.275926, 13.891948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.003995, 15.264625, 14.381240>,  <5.194798, 15.782760, 13.937643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.003995, 15.264625, 14.381240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.400332, 15.250215, 14.329185>,  <5.638134, 15.241569, 14.297953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.400332, 15.250215, 14.329185>,  <5.003995, 15.264625, 14.381240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.400332, 15.250215, 14.329185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129765, -0.012455, 0.991467,
		-0.037339, -0.999273, -0.007666,
		0.990841, -0.036026, -0.130136,
		5.697585, 15.239408, 14.290145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.302952, 14.856013, 14.976733>,  <5.003995, 15.264625, 14.381240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.302952, 14.856013, 14.976733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.628225, 15.039773, 14.833800>,  <5.823389, 15.150029, 14.748040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.628225, 15.039773, 14.833800>,  <5.302952, 14.856013, 14.976733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.628225, 15.039773, 14.833800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406266, -0.008418, 0.913716,
		0.416753, -0.888190, -0.193483,
		0.813182, 0.459400, -0.357333,
		5.872180, 15.177593, 14.726601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.779898, 14.397911, 15.208992>,  <5.302952, 14.856013, 14.976733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.779898, 14.397911, 15.208992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.910218, 14.768108, 15.131720>,  <5.988410, 14.990227, 15.085356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.910218, 14.768108, 15.131720>,  <5.779898, 14.397911, 15.208992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.910218, 14.768108, 15.131720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356846, 0.068841, 0.931623,
		0.875509, -0.372458, -0.307830,
		0.325799, 0.925492, -0.193181,
		6.007957, 15.045756, 15.073766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.320349, 14.427368, 15.597342>,  <5.779898, 14.397911, 15.208992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.320349, 14.427368, 15.597342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.253996, 14.809446, 15.499295>,  <6.214184, 15.038693, 15.440467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.253996, 14.809446, 15.499295>,  <6.320349, 14.427368, 15.597342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.253996, 14.809446, 15.499295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244801, 0.280667, 0.928062,
		0.955278, 0.093945, -0.280391,
		-0.165884, 0.955197, -0.245117,
		6.204231, 15.096005, 15.425760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.949826, 14.872090, 15.925750>,  <6.320349, 14.427368, 15.597342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.949826, 14.872090, 15.925750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.632595, 15.110568, 15.875825>,  <6.442255, 15.253654, 15.845870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.632595, 15.110568, 15.875825>,  <6.949826, 14.872090, 15.925750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.632595, 15.110568, 15.875825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114816, 0.347555, 0.930603,
		0.598199, 0.723712, -0.344091,
		-0.793079, 0.596193, -0.124813,
		6.394670, 15.289426, 15.838381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.055285, 14.690448, 15.259903>,  <6.949826, 14.872090, 15.925750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.055285, 14.690448, 15.259903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.319216, 14.943218, 15.422529>,  <7.477574, 15.094880, 15.520105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.319216, 14.943218, 15.422529>,  <7.055285, 14.690448, 15.259903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.319216, 14.943218, 15.422529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319529, 0.253746, -0.912970,
		-0.680094, 0.732313, -0.034490,
		0.659828, 0.631926, 0.406567,
		7.517164, 15.132796, 15.544499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.954926, 15.423143, 15.046592>,  <7.055285, 14.690448, 15.259903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.954926, 15.423143, 15.046592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.341731, 15.391383, 15.143407>,  <7.573813, 15.372327, 15.201496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.341731, 15.391383, 15.143407>,  <6.954926, 15.423143, 15.046592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.341731, 15.391383, 15.143407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251646, 0.445162, -0.859363,
		-0.039513, 0.891923, 0.450458,
		0.967012, -0.079400, 0.242038,
		7.631835, 15.367563, 15.216019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.310755, 16.058401, 14.827304>,  <6.954926, 15.423143, 15.046592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.310755, 16.058401, 14.827304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.604522, 15.788545, 14.856955>,  <7.780782, 15.626631, 14.874745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.604522, 15.788545, 14.856955>,  <7.310755, 16.058401, 14.827304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.604522, 15.788545, 14.856955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437964, 0.387647, -0.811121,
		0.518479, 0.628165, 0.580162,
		0.734416, -0.674639, 0.074127,
		7.824847, 15.586153, 14.879192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.837362, 16.380829, 14.614923>,  <7.310755, 16.058401, 14.827304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.837362, 16.380829, 14.614923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.984394, 16.009775, 14.588449>,  <8.072613, 15.787143, 14.572565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.984394, 16.009775, 14.588449>,  <7.837362, 16.380829, 14.614923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.984394, 16.009775, 14.588449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442105, 0.236910, -0.865111,
		0.818187, 0.288735, 0.497195,
		0.367578, -0.927634, -0.066186,
		8.094667, 15.731484, 14.568594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.553513, 16.479219, 14.497548>,  <7.837362, 16.380829, 14.614923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.553513, 16.479219, 14.497548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.460978, 16.114447, 14.361985>,  <8.405457, 15.895582, 14.280647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.460978, 16.114447, 14.361985>,  <8.553513, 16.479219, 14.497548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.460978, 16.114447, 14.361985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426836, 0.217900, -0.877685,
		0.874239, -0.347700, 0.338838,
		-0.231338, -0.911934, -0.338908,
		8.391576, 15.840866, 14.260313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.168579, 16.297245, 14.084808>,  <8.553513, 16.479219, 14.497548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.168579, 16.297245, 14.084808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.873479, 16.048332, 13.980125>,  <8.696419, 15.898985, 13.917315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.873479, 16.048332, 13.980125>,  <9.168579, 16.297245, 14.084808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.873479, 16.048332, 13.980125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239723, 0.120914, -0.963282,
		0.631076, -0.773399, 0.059970,
		-0.737750, -0.622281, -0.261708,
		8.652154, 15.861648, 13.901613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.447128, 15.834766, 13.607398>,  <9.168579, 16.297245, 14.084808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.447128, 15.834766, 13.607398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.056015, 15.776746, 13.546866>,  <8.821347, 15.741934, 13.510548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.056015, 15.776746, 13.546866>,  <9.447128, 15.834766, 13.607398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.056015, 15.776746, 13.546866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137413, 0.101631, -0.985286,
		0.158300, -0.984190, -0.079441,
		-0.977783, -0.145055, -0.151329,
		8.762680, 15.733231, 13.501468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.386591, 15.339574, 13.072544>,  <9.447128, 15.834766, 13.607398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.386591, 15.339574, 13.072544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.029481, 15.519157, 13.057640>,  <8.815215, 15.626907, 13.048697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.029481, 15.519157, 13.057640>,  <9.386591, 15.339574, 13.072544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.029481, 15.519157, 13.057640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084207, 0.085055, -0.992812,
		-0.442562, -0.889495, -0.113740,
		-0.892775, 0.448959, -0.037260,
		8.761648, 15.653845, 13.046462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.963899, 14.985141, 12.610870>,  <9.386591, 15.339574, 13.072544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.963899, 14.985141, 12.610870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.786139, 15.343068, 12.627884>,  <8.679482, 15.557824, 12.638092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.786139, 15.343068, 12.627884>,  <8.963899, 14.985141, 12.610870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.786139, 15.343068, 12.627884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055486, 0.019894, -0.998261,
		-0.894109, -0.445987, 0.040809,
		-0.444400, 0.894818, 0.042533,
		8.652819, 15.611513, 12.640644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.410873, 15.092596, 12.004807>,  <8.963899, 14.985141, 12.610870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.410873, 15.092596, 12.004807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.475243, 15.474683, 12.104136>,  <8.513865, 15.703935, 12.163733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.475243, 15.474683, 12.104136>,  <8.410873, 15.092596, 12.004807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.475243, 15.474683, 12.104136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253828, 0.283194, -0.924864,
		-0.953769, 0.085801, 0.288033,
		0.160924, 0.955217, 0.248323,
		8.523520, 15.761248, 12.178633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.831333, 15.447861, 11.614982>,  <8.410873, 15.092596, 12.004807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.831333, 15.447861, 11.614982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.101490, 15.725539, 11.714528>,  <8.263584, 15.892146, 11.774256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.101490, 15.725539, 11.714528>,  <7.831333, 15.447861, 11.614982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.101490, 15.725539, 11.714528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045241, 0.297825, -0.953548,
		-0.736068, 0.655279, 0.169743,
		0.675394, 0.694197, 0.248865,
		8.304108, 15.933799, 11.789187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.623375, 16.070305, 11.396168>,  <7.831333, 15.447861, 11.614982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.623375, 16.070305, 11.396168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.009443, 16.168434, 11.432526>,  <8.241084, 16.227312, 11.454340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.009443, 16.168434, 11.432526>,  <7.623375, 16.070305, 11.396168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.009443, 16.168434, 11.432526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032338, 0.232893, -0.971964,
		-0.259614, 0.941051, 0.216848,
		0.965171, 0.245323, 0.090894,
		8.298994, 16.242031, 11.459794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.690921, 16.695396, 11.048368>,  <7.623375, 16.070305, 11.396168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.690921, 16.695396, 11.048368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.060396, 16.542398, 11.057314>,  <8.282082, 16.450600, 11.062682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.060396, 16.542398, 11.057314>,  <7.690921, 16.695396, 11.048368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.060396, 16.542398, 11.057314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089021, 0.157465, -0.983504,
		0.372662, 0.910441, 0.179498,
		0.923687, -0.382493, 0.022367,
		8.337502, 16.427650, 11.064024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.935248, 16.871897, 10.370057>,  <7.690921, 16.695396, 11.048368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.935248, 16.871897, 10.370057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.225631, 16.621275, 10.483487>,  <8.399860, 16.470901, 10.551545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.225631, 16.621275, 10.483487>,  <7.935248, 16.871897, 10.370057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.225631, 16.621275, 10.483487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334698, -0.038340, -0.941545,
		0.600804, 0.778432, 0.181873,
		0.725956, -0.626556, 0.283575,
		8.443418, 16.433308, 10.568560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.609049, 17.164818, 10.101015>,  <7.935248, 16.871897, 10.370057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.609049, 17.164818, 10.101015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.596086, 16.768373, 10.152623>,  <8.588307, 16.530506, 10.183588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.596086, 16.768373, 10.152623>,  <8.609049, 17.164818, 10.101015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.596086, 16.768373, 10.152623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392779, -0.131331, -0.910207,
		0.919061, 0.021178, 0.393545,
		-0.032409, -0.991112, 0.129020,
		8.586363, 16.471039, 10.191329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.185062, 16.918287, 9.748104>,  <8.609049, 17.164818, 10.101015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.185062, 16.918287, 9.748104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.979811, 16.579060, 9.800985>,  <8.856660, 16.375523, 9.832714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.979811, 16.579060, 9.800985>,  <9.185062, 16.918287, 9.748104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.979811, 16.579060, 9.800985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258422, -0.299530, -0.918422,
		0.818484, -0.437105, 0.372857,
		-0.513129, -0.848069, 0.132203,
		8.825872, 16.324638, 9.840647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.579481, 16.386213, 9.552613>,  <9.185062, 16.918287, 9.748104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.579481, 16.386213, 9.552613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.199039, 16.268568, 9.514894>,  <8.970773, 16.197981, 9.492262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.199039, 16.268568, 9.514894>,  <9.579481, 16.386213, 9.552613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.199039, 16.268568, 9.514894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209935, -0.391665, -0.895838,
		0.226547, -0.871834, 0.434261,
		-0.951107, -0.294116, -0.094298,
		8.913707, 16.180334, 9.486604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.673343, 15.729945, 9.143967>,  <9.579481, 16.386213, 9.552613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.673343, 15.729945, 9.143967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.284448, 15.823490, 9.140809>,  <9.051110, 15.879618, 9.138914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.284448, 15.823490, 9.140809>,  <9.673343, 15.729945, 9.143967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.284448, 15.823490, 9.140809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024435, -0.135019, -0.990542,
		-0.232721, -0.962848, 0.136985,
		-0.972237, 0.233867, -0.007895,
		8.992777, 15.893649, 9.138441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.381721, 15.152266, 8.833771>,  <9.673343, 15.729945, 9.143967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.381721, 15.152266, 8.833771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.140680, 15.468225, 8.788280>,  <8.996057, 15.657800, 8.760984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.140680, 15.468225, 8.788280>,  <9.381721, 15.152266, 8.833771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.140680, 15.468225, 8.788280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105759, -0.220297, -0.969682,
		-0.791004, -0.572303, 0.216290,
		-0.602600, 0.789898, -0.113729,
		8.959900, 15.705194, 8.754161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.734659, 14.933709, 8.450105>,  <9.381721, 15.152266, 8.833771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.734659, 14.933709, 8.450105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.825123, 15.321376, 8.410980>,  <8.879401, 15.553976, 8.387506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.825123, 15.321376, 8.410980>,  <8.734659, 14.933709, 8.450105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.825123, 15.321376, 8.410980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078852, -0.081868, -0.993519,
		-0.970894, 0.232406, 0.057906,
		0.226159, 0.969167, -0.097811,
		8.892971, 15.612126, 8.381637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.286257, 15.093065, 7.940498>,  <8.734659, 14.933709, 8.450105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.286257, 15.093065, 7.940498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.530690, 15.409611, 7.947648>,  <8.677350, 15.599538, 7.951938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.530690, 15.409611, 7.947648>,  <8.286257, 15.093065, 7.940498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.530690, 15.409611, 7.947648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023239, 0.004637, -0.999719,
		-0.791224, 0.611328, -0.015556,
		0.611084, 0.791364, 0.017876,
		8.714016, 15.647019, 7.953011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<22.227810, 21.271982, 23.508060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.944338, 21.147633, 23.761400>,  <21.774254, 21.073023, 23.913404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.944338, 21.147633, 23.761400>,  <22.227810, 21.271982, 23.508060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.944338, 21.147633, 23.761400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322209, 0.656003, 0.682526,
		-0.627656, 0.687764, -0.364731,
		-0.708681, -0.310872, 0.633348,
		21.731733, 21.054371, 23.951405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.901226, 21.863998, 23.849415>,  <22.227810, 21.271982, 23.508060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.901226, 21.863998, 23.849415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.836802, 21.559288, 24.100416>,  <21.798147, 21.376463, 24.251017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.836802, 21.559288, 24.100416>,  <21.901226, 21.863998, 23.849415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.836802, 21.559288, 24.100416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380689, 0.538649, 0.751621,
		-0.910569, 0.359940, 0.203244,
		-0.161061, -0.761775, 0.627502,
		21.788483, 21.330755, 24.288666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.704514, 22.173290, 24.427277>,  <21.901226, 21.863998, 23.849415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.704514, 22.173290, 24.427277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.835186, 21.812431, 24.539997>,  <21.913589, 21.595917, 24.607630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.835186, 21.812431, 24.539997>,  <21.704514, 22.173290, 24.427277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.835186, 21.812431, 24.539997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478332, 0.414969, 0.773951,
		-0.815156, -0.118038, 0.567086,
		0.326679, -0.902146, 0.281803,
		21.933189, 21.541788, 24.624538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.432611, 22.067141, 25.081749>,  <21.704514, 22.173290, 24.427277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.432611, 22.067141, 25.081749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.762146, 21.845314, 25.034845>,  <21.959867, 21.712217, 25.006704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.762146, 21.845314, 25.034845>,  <21.432611, 22.067141, 25.081749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.762146, 21.845314, 25.034845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455138, 0.523895, 0.719989,
		-0.337850, -0.646522, 0.684008,
		0.823837, -0.554566, -0.117258,
		22.009296, 21.678944, 24.999668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.702303, 21.985603, 25.806009>,  <21.432611, 22.067141, 25.081749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.702303, 21.985603, 25.806009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.993547, 21.901569, 25.545019>,  <22.168293, 21.851149, 25.388426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.993547, 21.901569, 25.545019>,  <21.702303, 21.985603, 25.806009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.993547, 21.901569, 25.545019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667951, 0.431232, 0.606532,
		0.153945, -0.877442, 0.454310,
		0.728109, -0.210084, -0.652474,
		22.211981, 21.838545, 25.349277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.324848, 21.868893, 26.263367>,  <21.702303, 21.985603, 25.806009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.324848, 21.868893, 26.263367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.458567, 21.941801, 25.893497>,  <22.538797, 21.985546, 25.671576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.458567, 21.941801, 25.893497>,  <22.324848, 21.868893, 26.263367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.458567, 21.941801, 25.893497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828258, 0.411332, 0.380519,
		0.449707, -0.893075, -0.013463,
		0.334294, 0.182273, -0.924676,
		22.558855, 21.996483, 25.616095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.994528, 21.677088, 26.269415>,  <22.324848, 21.868893, 26.263367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.994528, 21.677088, 26.269415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.982992, 21.911543, 25.945536>,  <22.976070, 22.052216, 25.751207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.982992, 21.911543, 25.945536>,  <22.994528, 21.677088, 26.269415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.982992, 21.911543, 25.945536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732460, 0.563605, 0.381906,
		0.680199, -0.582058, -0.445575,
		-0.028837, 0.586138, -0.809698,
		22.974340, 22.087385, 25.702627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.724201, 21.734507, 26.111429>,  <22.994528, 21.677088, 26.269415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.724201, 21.734507, 26.111429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.509544, 22.029188, 25.946854>,  <23.380751, 22.205997, 25.848108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.509544, 22.029188, 25.946854>,  <23.724201, 21.734507, 26.111429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.509544, 22.029188, 25.946854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699276, 0.661168, 0.271788,
		0.472257, -0.141855, -0.869972,
		-0.536643, 0.736704, -0.411437,
		23.348551, 22.250200, 25.823421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.256166, 22.157207, 25.848137>,  <23.724201, 21.734507, 26.111429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.256166, 22.157207, 25.848137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.937805, 22.399263, 25.840656>,  <23.746788, 22.544497, 25.836168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.937805, 22.399263, 25.840656>,  <24.256166, 22.157207, 25.848137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.937805, 22.399263, 25.840656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577543, 0.768149, 0.276390,
		0.181619, 0.209178, -0.960864,
		-0.795901, 0.605137, -0.018701,
		23.699036, 22.580805, 25.835047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.556673, 22.737789, 25.438681>,  <24.256166, 22.157207, 25.848137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.556673, 22.737789, 25.438681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.240877, 22.850996, 25.656527>,  <24.051399, 22.918921, 25.787233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.240877, 22.850996, 25.656527>,  <24.556673, 22.737789, 25.438681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.240877, 22.850996, 25.656527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451369, 0.869003, 0.202731,
		-0.415895, 0.405876, -0.813816,
		-0.789492, 0.283016, 0.544614,
		24.004030, 22.935902, 25.819910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.465075, 23.439730, 25.212858>,  <24.556673, 22.737789, 25.438681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.465075, 23.439730, 25.212858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.278393, 23.404615, 25.564877>,  <24.166384, 23.383547, 25.776087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.278393, 23.404615, 25.564877>,  <24.465075, 23.439730, 25.212858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.278393, 23.404615, 25.564877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292213, 0.923874, 0.247121,
		-0.834744, 0.372494, -0.405525,
		-0.466705, -0.087783, 0.880046,
		24.138382, 23.378281, 25.828890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.013002, 24.040058, 25.294779>,  <24.465075, 23.439730, 25.212858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.013002, 24.040058, 25.294779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.062565, 23.896751, 25.664923>,  <24.092302, 23.810768, 25.887009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.062565, 23.896751, 25.664923>,  <24.013002, 24.040058, 25.294779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.062565, 23.896751, 25.664923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416244, 0.865300, 0.279278,
		-0.900771, 0.350570, 0.256344,
		0.123908, -0.358267, 0.925360,
		24.099737, 23.789270, 25.942532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.694798, 24.511791, 25.784733>,  <24.013002, 24.040058, 25.294779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.694798, 24.511791, 25.784733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.981497, 24.313902, 25.981312>,  <24.153517, 24.195168, 26.099258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.981497, 24.313902, 25.981312>,  <23.694798, 24.511791, 25.784733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.981497, 24.313902, 25.981312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486803, 0.859588, 0.155344,
		-0.499294, 0.127895, 0.856942,
		0.716749, -0.494724, 0.491446,
		24.196522, 24.165485, 26.128746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.051706, 24.615284, 26.040991>,  <23.694798, 24.511791, 25.784733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.051706, 24.615284, 26.040991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.796625, 24.888777, 26.182888>,  <22.643576, 25.052872, 26.268026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.796625, 24.888777, 26.182888>,  <23.051706, 24.615284, 26.040991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.796625, 24.888777, 26.182888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765958, -0.514154, -0.385945,
		-0.081491, -0.517837, 0.851589,
		-0.637705, 0.683732, 0.354743,
		22.605314, 25.093897, 26.289310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.450764, 24.937000, 25.508385>,  <23.051706, 24.615284, 26.040991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.450764, 24.937000, 25.508385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.380362, 25.308372, 25.377520>,  <22.338120, 25.531197, 25.299000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.380362, 25.308372, 25.377520>,  <22.450764, 24.937000, 25.508385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.380362, 25.308372, 25.377520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679358, -0.355081, -0.642177,
		-0.712387, 0.109234, 0.693233,
		-0.176006, 0.928432, -0.327164,
		22.327560, 25.586903, 25.279371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.803026, 24.898186, 25.404758>,  <22.450764, 24.937000, 25.508385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.803026, 24.898186, 25.404758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.917740, 25.216444, 25.191328>,  <21.986568, 25.407398, 25.063271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.917740, 25.216444, 25.191328>,  <21.803026, 24.898186, 25.404758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.917740, 25.216444, 25.191328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611163, -0.276955, -0.741468,
		-0.737722, 0.538744, 0.406843,
		0.286784, 0.795645, -0.533576,
		22.003775, 25.455137, 25.031256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.244341, 25.163158, 25.184401>,  <21.803026, 24.898186, 25.404758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.244341, 25.163158, 25.184401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.528410, 25.281384, 24.928808>,  <21.698851, 25.352320, 24.775454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.528410, 25.281384, 24.928808>,  <21.244341, 25.163158, 25.184401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.528410, 25.281384, 24.928808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477033, -0.465487, -0.745494,
		-0.517779, 0.834244, -0.189582,
		0.710172, 0.295564, -0.638981,
		21.741461, 25.370052, 24.737114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.873402, 25.582884, 24.730106>,  <21.244341, 25.163158, 25.184401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.873402, 25.582884, 24.730106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.204622, 25.509195, 24.518299>,  <21.403355, 25.464981, 24.391214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.204622, 25.509195, 24.518299>,  <20.873402, 25.582884, 24.730106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.204622, 25.509195, 24.518299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557976, -0.178690, -0.810390,
		0.054674, 0.966505, -0.250757,
		0.828054, -0.184224, -0.529517,
		21.453039, 25.453928, 24.359444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.731415, 25.856258, 24.145666>,  <20.873402, 25.582884, 24.730106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.731415, 25.856258, 24.145666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.017189, 25.586409, 24.071405>,  <21.188654, 25.424500, 24.026850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.017189, 25.586409, 24.071405>,  <20.731415, 25.856258, 24.145666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.017189, 25.586409, 24.071405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414587, -0.194407, -0.889001,
		0.563650, 0.712101, -0.418581,
		0.714434, -0.674624, -0.185651,
		21.231520, 25.384022, 24.015711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.647387, 25.766474, 23.426096>,  <20.731415, 25.856258, 24.145666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.647387, 25.766474, 23.426096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.916031, 25.480482, 23.503807>,  <21.077217, 25.308887, 23.550434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.916031, 25.480482, 23.503807>,  <20.647387, 25.766474, 23.426096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.916031, 25.480482, 23.503807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227218, -0.448342, -0.864500,
		0.705202, 0.536465, -0.463568,
		0.671611, -0.714979, 0.194277,
		21.117514, 25.265989, 23.562090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.890841, 25.647129, 22.726067>,  <20.647387, 25.766474, 23.426096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.890841, 25.647129, 22.726067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.022219, 25.334812, 22.938665>,  <21.101046, 25.147423, 23.066225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.022219, 25.334812, 22.938665>,  <20.890841, 25.647129, 22.726067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.022219, 25.334812, 22.938665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141283, -0.596997, -0.789705,
		0.933896, 0.184285, -0.306394,
		0.328447, -0.780790, 0.531497,
		21.120752, 25.100574, 23.098114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.305416, 25.227463, 22.351885>,  <20.890841, 25.647129, 22.726067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.305416, 25.227463, 22.351885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.130592, 24.999821, 22.630480>,  <21.025698, 24.863235, 22.797638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.130592, 24.999821, 22.630480>,  <21.305416, 25.227463, 22.351885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.130592, 24.999821, 22.630480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179650, -0.703525, -0.687589,
		0.881309, -0.425641, 0.205241,
		-0.437058, -0.569107, 0.696489,
		20.999475, 24.829088, 22.839426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.513727, 24.550358, 22.241758>,  <21.305416, 25.227463, 22.351885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.513727, 24.550358, 22.241758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.196285, 24.455406, 22.465845>,  <21.005819, 24.398436, 22.600296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.196285, 24.455406, 22.465845>,  <21.513727, 24.550358, 22.241758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.196285, 24.455406, 22.465845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210835, -0.756412, -0.619184,
		0.570735, -0.609501, 0.550246,
		-0.793606, -0.237379, 0.560215,
		20.958204, 24.384193, 22.633909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.461901, 23.770454, 22.315784>,  <21.513727, 24.550358, 22.241758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.461901, 23.770454, 22.315784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.097923, 23.931646, 22.354992>,  <20.879536, 24.028362, 22.378517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.097923, 23.931646, 22.354992>,  <21.461901, 23.770454, 22.315784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.097923, 23.931646, 22.354992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369218, -0.679493, -0.634009,
		-0.188889, -0.613104, 0.767089,
		-0.909944, 0.402980, 0.098020,
		20.824940, 24.052540, 22.384398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.912848, 23.156078, 22.325195>,  <21.461901, 23.770454, 22.315784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.912848, 23.156078, 22.325195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.677647, 23.472752, 22.258869>,  <20.536526, 23.662756, 22.219072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.677647, 23.472752, 22.258869>,  <20.912848, 23.156078, 22.325195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677647, 23.472752, 22.258869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574669, -0.553148, -0.603144,
		-0.569224, -0.259353, 0.780205,
		-0.587996, 0.791684, -0.165823,
		20.501245, 23.710257, 22.209124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.278042, 22.911531, 22.511118>,  <20.912848, 23.156078, 22.325195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.278042, 22.911531, 22.511118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.227308, 23.228207, 22.272072>,  <20.196869, 23.418211, 22.128645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.227308, 23.228207, 22.272072>,  <20.278042, 22.911531, 22.511118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.227308, 23.228207, 22.272072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586379, -0.545778, -0.598570,
		-0.800046, 0.274511, 0.533451,
		-0.126832, 0.791688, -0.597615,
		20.189259, 23.465714, 22.092787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.662405, 22.894127, 22.562416>,  <20.278042, 22.911531, 22.511118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.662405, 22.894127, 22.562416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.751804, 23.109835, 22.237642>,  <19.805445, 23.239260, 22.042778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.751804, 23.109835, 22.237642>,  <19.662405, 22.894127, 22.562416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.751804, 23.109835, 22.237642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759037, -0.426295, -0.492073,
		-0.611483, 0.726266, 0.314047,
		0.223499, 0.539267, -0.811935,
		19.818853, 23.271614, 21.994062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.081295, 23.204044, 22.359430>,  <19.662405, 22.894127, 22.562416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.081295, 23.204044, 22.359430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.314129, 23.180016, 22.035069>,  <19.453829, 23.165598, 21.840452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.314129, 23.180016, 22.035069>,  <19.081295, 23.204044, 22.359430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.314129, 23.180016, 22.035069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740189, -0.451964, -0.497844,
		-0.336595, 0.890011, -0.307545,
		0.582087, -0.060070, -0.810905,
		19.488754, 23.161995, 21.791798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.383818, 23.429062, 22.419733>,  <19.081295, 23.204044, 22.359430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.383818, 23.429062, 22.419733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.245497, 23.196020, 22.713942>,  <18.162504, 23.056194, 22.890467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.245497, 23.196020, 22.713942>,  <18.383818, 23.429062, 22.419733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.245497, 23.196020, 22.713942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573421, 0.489256, 0.657127,
		-0.742705, 0.649000, 0.164892,
		-0.345801, -0.582604, 0.735523,
		18.141756, 23.021238, 22.934599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.370356, 23.872841, 22.977215>,  <18.383818, 23.429062, 22.419733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.370356, 23.872841, 22.977215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.332434, 23.512001, 23.145611>,  <18.309681, 23.295498, 23.246649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.332434, 23.512001, 23.145611>,  <18.370356, 23.872841, 22.977215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.332434, 23.512001, 23.145611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563908, 0.299837, 0.769484,
		-0.820378, 0.310352, 0.480273,
		-0.094807, -0.902097, 0.420989,
		18.303991, 23.241371, 23.271908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076376, 24.025984, 23.589592>,  <18.370356, 23.872841, 22.977215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076376, 24.025984, 23.589592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.266222, 23.675343, 23.621346>,  <18.380131, 23.464958, 23.640398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.266222, 23.675343, 23.621346>,  <18.076376, 24.025984, 23.589592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.266222, 23.675343, 23.621346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463680, 0.325668, 0.823979,
		-0.748157, -0.354265, 0.561032,
		0.474617, -0.876605, 0.079385,
		18.408607, 23.412361, 23.645161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.967474, 23.740238, 24.153700>,  <18.076376, 24.025984, 23.589592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.967474, 23.740238, 24.153700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.317039, 23.557201, 24.088118>,  <18.526779, 23.447380, 24.048767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.317039, 23.557201, 24.088118>,  <17.967474, 23.740238, 24.153700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.317039, 23.557201, 24.088118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372599, 0.414015, 0.830519,
		-0.312158, -0.786893, 0.532312,
		0.873915, -0.457592, -0.163957,
		18.579214, 23.419924, 24.038931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.145393, 23.588463, 24.825384>,  <17.967474, 23.740238, 24.153700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.145393, 23.588463, 24.825384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.498680, 23.498665, 24.660690>,  <18.710653, 23.444786, 24.561874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.498680, 23.498665, 24.660690>,  <18.145393, 23.588463, 24.825384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.498680, 23.498665, 24.660690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468947, 0.415515, 0.779382,
		-0.003886, -0.881447, 0.472268,
		0.883218, -0.224497, -0.411737,
		18.763645, 23.431316, 24.537169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.546865, 23.080833, 25.323282>,  <18.145393, 23.588463, 24.825384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.546865, 23.080833, 25.323282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.794573, 23.280619, 25.080946>,  <18.943197, 23.400490, 24.935545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.794573, 23.280619, 25.080946>,  <18.546865, 23.080833, 25.323282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.794573, 23.280619, 25.080946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491005, 0.355777, 0.795196,
		0.612716, -0.789910, -0.024918,
		0.619268, 0.499464, -0.605840,
		18.980354, 23.430458, 24.899195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.321333, 22.896339, 25.458565>,  <18.546865, 23.080833, 25.323282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.321333, 22.896339, 25.458565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.321600, 23.252401, 25.276300>,  <19.321760, 23.466038, 25.166943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.321600, 23.252401, 25.276300>,  <19.321333, 22.896339, 25.458565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.321600, 23.252401, 25.276300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409497, 0.415461, 0.812222,
		0.912311, -0.187136, -0.364237,
		0.000670, 0.890153, -0.455661,
		19.321800, 23.519447, 25.139603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.970501, 22.617748, 25.686028>,  <19.321333, 22.896339, 25.458565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.970501, 22.617748, 25.686028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.947433, 22.354462, 25.986275>,  <19.933594, 22.196489, 26.166422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.947433, 22.354462, 25.986275>,  <19.970501, 22.617748, 25.686028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.947433, 22.354462, 25.986275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537134, -0.613313, -0.579081,
		0.841523, -0.436576, -0.318182,
		-0.057668, -0.658217, 0.750617,
		19.930134, 22.156996, 26.211460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.350595, 21.878729, 25.485373>,  <19.970501, 22.617748, 25.686028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.350595, 21.878729, 25.485373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.076487, 21.846605, 25.774912>,  <19.912022, 21.827332, 25.948635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.076487, 21.846605, 25.774912>,  <20.350595, 21.878729, 25.485373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.076487, 21.846605, 25.774912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596622, -0.508090, -0.621198,
		0.417667, -0.857552, 0.300266,
		-0.685272, -0.080309, 0.723846,
		19.870905, 21.822514, 25.992065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.139414, 21.123964, 25.475914>,  <20.350595, 21.878729, 25.485373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.139414, 21.123964, 25.475914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.852333, 21.322433, 25.671347>,  <19.680084, 21.441515, 25.788607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.852333, 21.322433, 25.671347>,  <20.139414, 21.123964, 25.475914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.852333, 21.322433, 25.671347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696341, -0.514756, -0.500136,
		0.003345, -0.699169, 0.714949,
		-0.717704, 0.496175, 0.488581,
		19.637022, 21.471287, 25.817921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.662689, 20.631052, 25.677528>,  <20.139414, 21.123964, 25.475914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.662689, 20.631052, 25.677528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.454948, 20.972837, 25.682720>,  <19.330305, 21.177908, 25.685835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.454948, 20.972837, 25.682720>,  <19.662689, 20.631052, 25.677528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.454948, 20.972837, 25.682720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722649, -0.431025, -0.540367,
		-0.456131, -0.290016, 0.841330,
		-0.519349, 0.854464, 0.012975,
		19.299143, 21.229176, 25.686613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.986546, 20.454409, 25.986006>,  <19.662689, 20.631052, 25.677528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.986546, 20.454409, 25.986006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.941505, 20.795717, 25.782341>,  <18.914482, 21.000504, 25.660143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.941505, 20.795717, 25.782341>,  <18.986546, 20.454409, 25.986006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.941505, 20.795717, 25.782341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788226, -0.388701, -0.477086,
		-0.604997, 0.347615, 0.716340,
		-0.112600, 0.853273, -0.509162,
		18.907726, 21.051699, 25.629593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275032, 20.567642, 26.025309>,  <18.986546, 20.454409, 25.986006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275032, 20.567642, 26.025309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.435333, 20.754799, 25.710228>,  <18.531513, 20.867092, 25.521179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.435333, 20.754799, 25.710228>,  <18.275032, 20.567642, 26.025309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.435333, 20.754799, 25.710228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701814, -0.395899, -0.592217,
		-0.588943, 0.790154, 0.169715,
		0.400753, 0.467890, -0.787703,
		18.555559, 20.895166, 25.473917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.786627, 20.771671, 25.682701>,  <18.275032, 20.567642, 26.025309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.786627, 20.771671, 25.682701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.058231, 20.812227, 25.391865>,  <18.221195, 20.836561, 25.217363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.058231, 20.812227, 25.391865>,  <17.786627, 20.771671, 25.682701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.058231, 20.812227, 25.391865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649395, -0.378963, -0.659298,
		-0.342385, 0.919842, -0.191480,
		0.679013, 0.101388, -0.727091,
		18.261936, 20.842644, 25.173737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<22.762180, 18.446571, 24.487461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.826380, 18.346172, 24.105625>,  <22.864899, 18.285933, 23.876524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.826380, 18.346172, 24.105625>,  <22.762180, 18.446571, 24.487461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.826380, 18.346172, 24.105625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936851, 0.343197, 0.067277,
		0.310726, -0.905105, 0.290230,
		0.160499, -0.250998, -0.954589,
		22.874529, 18.270872, 23.819248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.765890, 18.763689, 23.801119>,  <22.762180, 18.446571, 24.487461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.765890, 18.763689, 23.801119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.747742, 19.088320, 24.034111>,  <22.736853, 19.283098, 24.173906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.747742, 19.088320, 24.034111>,  <22.765890, 18.763689, 23.801119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.747742, 19.088320, 24.034111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288260, -0.547642, 0.785490,
		0.956477, 0.203546, -0.209097,
		-0.045373, 0.811577, 0.582481,
		22.734129, 19.331793, 24.208855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.383997, 19.149990, 23.970732>,  <22.765890, 18.763689, 23.801119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.383997, 19.149990, 23.970732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.148001, 19.194534, 24.290609>,  <23.006403, 19.221262, 24.482536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.148001, 19.194534, 24.290609>,  <23.383997, 19.149990, 23.970732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.148001, 19.194534, 24.290609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730534, -0.348168, 0.587451,
		0.343848, 0.930794, 0.124063,
		-0.589991, 0.111362, 0.799693,
		22.971003, 19.227943, 24.530518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.845793, 19.476357, 24.378151>,  <23.383997, 19.149990, 23.970732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.845793, 19.476357, 24.378151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.555853, 19.271727, 24.562708>,  <23.381889, 19.148949, 24.673443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.555853, 19.271727, 24.562708>,  <23.845793, 19.476357, 24.378151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.555853, 19.271727, 24.562708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679981, -0.423821, 0.598332,
		-0.110544, 0.747439, 0.655069,
		-0.724848, -0.511576, 0.461394,
		23.338398, 19.118254, 24.701126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.010695, 19.529985, 25.104036>,  <23.845793, 19.476357, 24.378151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.010695, 19.529985, 25.104036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.758854, 19.220995, 25.070860>,  <23.607750, 19.035601, 25.050953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.758854, 19.220995, 25.070860>,  <24.010695, 19.529985, 25.104036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.758854, 19.220995, 25.070860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548879, -0.517818, 0.656198,
		-0.549847, 0.367618, 0.750016,
		-0.629602, -0.772477, -0.082943,
		23.569973, 18.989252, 25.045977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.646906, 19.275351, 25.727064>,  <24.010695, 19.529985, 25.104036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.646906, 19.275351, 25.727064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.754774, 18.984079, 25.475021>,  <23.819494, 18.809317, 25.323795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.754774, 18.984079, 25.475021>,  <23.646906, 19.275351, 25.727064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.754774, 18.984079, 25.475021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518187, -0.441793, 0.732326,
		-0.811641, -0.523999, 0.258194,
		0.269670, -0.728179, -0.630106,
		23.835674, 18.765625, 25.285990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.123554, 19.496496, 26.133644>,  <23.646906, 19.275351, 25.727064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.123554, 19.496496, 26.133644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.379959, 19.247639, 26.313440>,  <23.533802, 19.098324, 26.421318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.379959, 19.247639, 26.313440>,  <23.123554, 19.496496, 26.133644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.379959, 19.247639, 26.313440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203537, -0.702450, -0.682009,
		0.740052, 0.345688, -0.576908,
		0.641011, -0.622144, 0.449490,
		23.572262, 19.060995, 26.448288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.208830, 19.091644, 26.851385>,  <23.123554, 19.496496, 26.133644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.208830, 19.091644, 26.851385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.981617, 19.401682, 26.740702>,  <22.845289, 19.587706, 26.674292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.981617, 19.401682, 26.740702>,  <23.208830, 19.091644, 26.851385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.981617, 19.401682, 26.740702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771966, -0.618347, -0.147363,
		-0.285321, 0.129902, 0.949588,
		-0.568032, 0.775095, -0.276707,
		22.811207, 19.634211, 26.657690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.571714, 18.839115, 27.057695>,  <23.208830, 19.091644, 26.851385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.571714, 18.839115, 27.057695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.390831, 19.157448, 26.896620>,  <22.282301, 19.348448, 26.799974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.390831, 19.157448, 26.896620>,  <22.571714, 18.839115, 27.057695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.390831, 19.157448, 26.896620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721395, -0.591855, -0.359579,
		-0.524498, 0.127893, 0.841751,
		-0.452207, 0.795834, -0.402688,
		22.255169, 19.396198, 26.775812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.809317, 18.810059, 27.246559>,  <22.571714, 18.839115, 27.057695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.809317, 18.810059, 27.246559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.842098, 19.017281, 26.905994>,  <21.861767, 19.141615, 26.701656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.842098, 19.017281, 26.905994>,  <21.809317, 18.810059, 27.246559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.842098, 19.017281, 26.905994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677048, -0.597961, -0.429009,
		-0.731361, 0.611606, 0.301744,
		0.081954, 0.518056, -0.851412,
		21.866684, 19.172697, 26.650572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127703, 18.912508, 27.012262>,  <21.809317, 18.810059, 27.246559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127703, 18.912508, 27.012262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.369410, 18.952248, 26.696037>,  <21.514433, 18.976091, 26.506302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.369410, 18.952248, 26.696037>,  <21.127703, 18.912508, 27.012262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.369410, 18.952248, 26.696037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538288, -0.680635, -0.496973,
		-0.587459, 0.725855, -0.357807,
		0.604266, 0.099348, -0.790565,
		21.550690, 18.982052, 26.458868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.663969, 18.928717, 26.443136>,  <21.127703, 18.912508, 27.012262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.663969, 18.928717, 26.443136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.027641, 18.795469, 26.343201>,  <21.245846, 18.715521, 26.283239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.027641, 18.795469, 26.343201>,  <20.663969, 18.928717, 26.443136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.027641, 18.795469, 26.343201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416336, -0.716796, -0.559346,
		0.007245, 0.612564, -0.790388,
		0.909182, -0.333119, -0.249839,
		21.300396, 18.695534, 26.268250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.885450, 18.834488, 26.389858>,  <20.663969, 18.928717, 26.443136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.885450, 18.834488, 26.389858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.629633, 18.957615, 26.671633>,  <19.476143, 19.031490, 26.840698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.629633, 18.957615, 26.671633>,  <19.885450, 18.834488, 26.389858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.629633, 18.957615, 26.671633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716283, 0.571336, 0.400642,
		-0.279147, 0.760805, -0.585878,
		-0.639544, 0.307817, 0.704438,
		19.437769, 19.049959, 26.882965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.058186, 19.530439, 26.541542>,  <19.885450, 18.834488, 26.389858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.058186, 19.530439, 26.541542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.854263, 19.402771, 26.861099>,  <19.731911, 19.326170, 27.052834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.854263, 19.402771, 26.861099>,  <20.058186, 19.530439, 26.541542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.854263, 19.402771, 26.861099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633614, 0.488843, 0.599637,
		-0.581920, 0.811888, -0.046984,
		-0.509806, -0.319171, 0.798891,
		19.701321, 19.307020, 27.100767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.874542, 20.111710, 26.964333>,  <20.058186, 19.530439, 26.541542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.874542, 20.111710, 26.964333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.841070, 19.798683, 27.211100>,  <19.820986, 19.610867, 27.359159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.841070, 19.798683, 27.211100>,  <19.874542, 20.111710, 26.964333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.841070, 19.798683, 27.211100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611635, 0.448417, 0.651786,
		-0.786702, 0.431871, 0.441120,
		-0.083682, -0.782566, 0.616918,
		19.815966, 19.563913, 27.396175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.761736, 20.418093, 27.613070>,  <19.874542, 20.111710, 26.964333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.761736, 20.418093, 27.613070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.843363, 20.044043, 27.728930>,  <19.892338, 19.819613, 27.798445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.843363, 20.044043, 27.728930>,  <19.761736, 20.418093, 27.613070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.843363, 20.044043, 27.728930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501720, 0.353967, 0.789294,
		-0.840615, -0.015744, 0.541404,
		0.204066, -0.935126, 0.289651,
		19.904583, 19.763504, 27.815825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476894, 20.324539, 28.288788>,  <19.761736, 20.418093, 27.613070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.476894, 20.324539, 28.288788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.752550, 20.034920, 28.277172>,  <19.917944, 19.861149, 28.270203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.752550, 20.034920, 28.277172>,  <19.476894, 20.324539, 28.288788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.752550, 20.034920, 28.277172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495878, 0.441989, 0.747496,
		-0.528387, -0.529529, 0.663631,
		0.689139, -0.724047, -0.029041,
		19.959291, 19.817705, 28.268459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.595362, 20.095556, 29.037260>,  <19.476894, 20.324539, 28.288788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.595362, 20.095556, 29.037260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.926975, 19.986673, 28.841871>,  <20.125944, 19.921345, 28.724638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.926975, 19.986673, 28.841871>,  <19.595362, 20.095556, 29.037260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.926975, 19.986673, 28.841871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549885, 0.555581, 0.623663,
		0.101621, -0.785642, 0.610278,
		0.829035, -0.272206, -0.488471,
		20.175686, 19.905012, 28.695330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.023130, 19.822277, 29.520607>,  <19.595362, 20.095556, 29.037260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.023130, 19.822277, 29.520607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.272675, 19.924051, 29.225023>,  <20.422401, 19.985115, 29.047672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.272675, 19.924051, 29.225023>,  <20.023130, 19.822277, 29.520607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.272675, 19.924051, 29.225023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534991, 0.550235, 0.641114,
		0.569727, -0.795300, 0.207144,
		0.623856, 0.254439, -0.738962,
		20.459831, 20.000381, 29.003334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.700695, 19.715290, 29.820356>,  <20.023130, 19.822277, 29.520607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.700695, 19.715290, 29.820356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.747244, 19.928366, 29.485048>,  <20.775173, 20.056211, 29.283863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.747244, 19.928366, 29.485048>,  <20.700695, 19.715290, 29.820356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.747244, 19.928366, 29.485048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737051, 0.519417, 0.432392,
		0.665743, -0.668168, -0.332173,
		0.116374, 0.532690, -0.838271,
		20.782156, 20.088173, 29.233566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.433170, 19.821327, 29.781260>,  <20.700695, 19.715290, 29.820356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.433170, 19.821327, 29.781260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.308414, 20.127939, 29.556704>,  <21.233561, 20.311907, 29.421970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.308414, 20.127939, 29.556704>,  <21.433170, 19.821327, 29.781260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.308414, 20.127939, 29.556704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754555, 0.558897, 0.343921,
		0.577385, -0.316335, -0.752701,
		-0.311888, 0.766529, -0.561391,
		21.214848, 20.357899, 29.388287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.066231, 20.060825, 29.467232>,  <21.433170, 19.821327, 29.781260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.066231, 20.060825, 29.467232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.819456, 20.372536, 29.423203>,  <21.671391, 20.559563, 29.396786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.819456, 20.372536, 29.423203>,  <22.066231, 20.060825, 29.467232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.819456, 20.372536, 29.423203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769495, 0.626621, 0.123383,
		0.165124, -0.008581, -0.986235,
		-0.616937, 0.779277, -0.110073,
		21.634375, 20.606319, 29.390181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.336744, 20.479322, 28.971834>,  <22.066231, 20.060825, 29.467232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.336744, 20.479322, 28.971834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.099531, 20.738003, 29.163704>,  <21.957203, 20.893211, 29.278826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.099531, 20.738003, 29.163704>,  <22.336744, 20.479322, 28.971834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.099531, 20.738003, 29.163704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759966, 0.646386, 0.068100,
		-0.266015, 0.404923, -0.874799,
		-0.593033, 0.646702, 0.479676,
		21.921621, 20.932013, 29.307606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.582172, 21.118639, 28.787031>,  <22.336744, 20.479322, 28.971834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.582172, 21.118639, 28.787031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.349882, 21.193604, 29.103926>,  <22.210508, 21.238583, 29.294062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.349882, 21.193604, 29.103926>,  <22.582172, 21.118639, 28.787031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.349882, 21.193604, 29.103926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587224, 0.770433, 0.248195,
		-0.563850, 0.609353, -0.557461,
		-0.580725, 0.187410, 0.792235,
		22.175665, 21.249826, 29.341597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.298870, 21.822035, 28.807228>,  <22.582172, 21.118639, 28.787031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.298870, 21.822035, 28.807228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.279551, 21.720325, 29.193598>,  <22.267960, 21.659300, 29.425421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.279551, 21.720325, 29.193598>,  <22.298870, 21.822035, 28.807228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.279551, 21.720325, 29.193598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699784, 0.681430, 0.214374,
		-0.712720, 0.686293, 0.145025,
		-0.048299, -0.254275, 0.965925,
		22.265060, 21.644043, 29.483376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.252842, 22.457079, 29.099968>,  <22.298870, 21.822035, 28.807228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.252842, 22.457079, 29.099968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.384455, 22.200689, 29.377352>,  <22.463423, 22.046856, 29.543783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.384455, 22.200689, 29.377352>,  <22.252842, 22.457079, 29.099968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.384455, 22.200689, 29.377352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740615, 0.630753, 0.231604,
		-0.585856, 0.437382, 0.682254,
		0.329034, -0.640974, 0.693462,
		22.483166, 22.008398, 29.585390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.246038, 22.481812, 28.452438>,  <22.252842, 22.457079, 29.099968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.246038, 22.481812, 28.452438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.984095, 22.783991, 28.461010>,  <21.826929, 22.965298, 28.466152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.984095, 22.783991, 28.461010>,  <22.246038, 22.481812, 28.452438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.984095, 22.783991, 28.461010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638836, -0.538179, -0.549774,
		-0.403792, -0.373715, 0.835038,
		-0.654859, 0.755447, 0.021430,
		21.787638, 23.010626, 28.467440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.562946, 22.172665, 28.610413>,  <22.246038, 22.481812, 28.452438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.562946, 22.172665, 28.610413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.500469, 22.502728, 28.393259>,  <21.462982, 22.700766, 28.262966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.500469, 22.502728, 28.393259>,  <21.562946, 22.172665, 28.610413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.500469, 22.502728, 28.393259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546402, -0.530055, -0.648450,
		-0.822830, 0.195350, 0.533657,
		-0.156192, 0.825155, -0.542885,
		21.453611, 22.750275, 28.230394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.810486, 22.200602, 28.401737>,  <21.562946, 22.172665, 28.610413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.810486, 22.200602, 28.401737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.983837, 22.470436, 28.162703>,  <21.087849, 22.632338, 28.019281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.983837, 22.470436, 28.162703>,  <20.810486, 22.200602, 28.401737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.983837, 22.470436, 28.162703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690815, -0.177171, -0.700989,
		-0.578754, 0.716618, 0.389233,
		0.433380, 0.674588, -0.597589,
		21.113852, 22.672813, 27.983425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.325508, 22.730675, 28.217617>,  <20.810486, 22.200602, 28.401737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.325508, 22.730675, 28.217617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.593645, 22.743933, 27.921093>,  <20.754526, 22.751888, 27.743177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.593645, 22.743933, 27.921093>,  <20.325508, 22.730675, 28.217617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.593645, 22.743933, 27.921093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717132, -0.227791, -0.658660,
		-0.190696, 0.973146, -0.128928,
		0.670341, 0.033145, -0.741312,
		20.794748, 22.753876, 27.698700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.017088, 23.185354, 27.691339>,  <20.325508, 22.730675, 28.217617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.017088, 23.185354, 27.691339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.286659, 22.960064, 27.500092>,  <20.448402, 22.824890, 27.385342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.286659, 22.960064, 27.500092>,  <20.017088, 23.185354, 27.691339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.286659, 22.960064, 27.500092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718860, -0.350576, -0.600280,
		0.170474, 0.748248, -0.641142,
		0.673928, -0.563224, -0.478122,
		20.488838, 22.791098, 27.356655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.776699, 23.219936, 27.003473>,  <20.017088, 23.185354, 27.691339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.776699, 23.219936, 27.003473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.032629, 22.912710, 26.992905>,  <20.186188, 22.728374, 26.986563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.032629, 22.912710, 26.992905>,  <19.776699, 23.219936, 27.003473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.032629, 22.912710, 26.992905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479735, -0.372305, -0.794508,
		0.600397, 0.521022, -0.606679,
		0.639826, -0.768066, -0.026422,
		20.224577, 22.682291, 26.984978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.874584, 23.089594, 26.337521>,  <19.776699, 23.219936, 27.003473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.874584, 23.089594, 26.337521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.016180, 22.742805, 26.477839>,  <20.101137, 22.534733, 26.562029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.016180, 22.742805, 26.477839>,  <19.874584, 23.089594, 26.337521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.016180, 22.742805, 26.477839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514267, -0.493724, -0.701260,
		0.781167, 0.067836, -0.620626,
		0.353989, -0.866969, 0.350795,
		20.122377, 22.482716, 26.583076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.132874, 23.486805, 25.749060>,  <19.874584, 23.089594, 26.337521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.132874, 23.486805, 25.749060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.863197, 23.702663, 25.547367>,  <19.701391, 23.832178, 25.426352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.863197, 23.702663, 25.547367>,  <20.132874, 23.486805, 25.749060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.863197, 23.702663, 25.547367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256441, 0.811291, 0.525399,
		0.692609, 0.224913, -0.685352,
		-0.674189, 0.539648, -0.504231,
		19.660940, 23.864557, 25.396097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.495174, 23.960836, 25.341036>,  <20.132874, 23.486805, 25.749060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.495174, 23.960836, 25.341036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.142122, 24.131855, 25.419182>,  <19.930290, 24.234467, 25.466070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.142122, 24.131855, 25.419182>,  <20.495174, 23.960836, 25.341036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.142122, 24.131855, 25.419182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455944, 0.677547, 0.577101,
		0.114369, 0.598442, -0.792961,
		-0.882630, 0.427548, 0.195366,
		19.877333, 24.260118, 25.477791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.530458, 24.689358, 25.139465>,  <20.495174, 23.960836, 25.341036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.530458, 24.689358, 25.139465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.231682, 24.647036, 25.402033>,  <20.052416, 24.621643, 25.559574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.231682, 24.647036, 25.402033>,  <20.530458, 24.689358, 25.139465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.231682, 24.647036, 25.402033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326816, 0.801338, 0.501048,
		-0.579025, 0.588781, -0.563974,
		-0.746941, -0.105803, 0.656418,
		20.007599, 24.615295, 25.598959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.500904, 25.391399, 25.419390>,  <20.530458, 24.689358, 25.139465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.500904, 25.391399, 25.419390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.266777, 25.170792, 25.657122>,  <20.126301, 25.038427, 25.799761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.266777, 25.170792, 25.657122>,  <20.500904, 25.391399, 25.419390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.266777, 25.170792, 25.657122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045604, 0.709459, 0.703269,
		-0.809522, 0.438739, -0.390106,
		-0.585316, -0.551521, 0.594331,
		20.091183, 25.005335, 25.835421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954700, 25.788284, 25.560617>,  <20.500904, 25.391399, 25.419390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954700, 25.788284, 25.560617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.991016, 25.531313, 25.864996>,  <20.012806, 25.377131, 26.047623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.991016, 25.531313, 25.864996>,  <19.954700, 25.788284, 25.560617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.991016, 25.531313, 25.864996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095435, 0.754974, 0.648773,
		-0.991287, -0.131522, 0.007233,
		0.090789, -0.642430, 0.760948,
		20.018253, 25.338583, 26.093281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.565256, 26.100771, 26.218590>,  <19.954700, 25.788284, 25.560617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.565256, 26.100771, 26.218590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.816261, 25.822998, 26.359438>,  <19.966864, 25.656334, 26.443947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.816261, 25.822998, 26.359438>,  <19.565256, 26.100771, 26.218590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.816261, 25.822998, 26.359438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240398, 0.602951, 0.760696,
		-0.740565, -0.392698, 0.545300,
		0.627513, -0.694434, 0.352121,
		20.004515, 25.614668, 26.465075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.563986, 26.178556, 26.940485>,  <19.565256, 26.100771, 26.218590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.563986, 26.178556, 26.940485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.903826, 25.973909, 26.889212>,  <20.107729, 25.851122, 26.858448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.903826, 25.973909, 26.889212>,  <19.563986, 26.178556, 26.940485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.903826, 25.973909, 26.889212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448973, 0.573997, 0.684800,
		-0.276777, -0.639356, 0.717369,
		0.849598, -0.511616, -0.128185,
		20.158705, 25.820425, 26.850756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.828676, 25.927731, 27.563454>,  <19.563986, 26.178556, 26.940485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.828676, 25.927731, 27.563454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.154806, 25.949024, 27.332832>,  <20.350483, 25.961800, 27.194460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.154806, 25.949024, 27.332832>,  <19.828676, 25.927731, 27.563454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.154806, 25.949024, 27.332832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393594, 0.679357, 0.619320,
		0.424654, -0.731874, 0.532944,
		0.815323, 0.053233, -0.576553,
		20.399403, 25.964994, 27.159866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.339102, 25.784630, 27.987944>,  <19.828676, 25.927731, 27.563454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.339102, 25.784630, 27.987944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.514334, 25.962353, 27.675360>,  <20.619473, 26.068987, 27.487810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.514334, 25.962353, 27.675360>,  <20.339102, 25.784630, 27.987944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.514334, 25.962353, 27.675360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478571, 0.620612, 0.621137,
		0.760958, -0.646090, 0.059244,
		0.438078, 0.444307, -0.781460,
		20.645758, 26.095644, 27.440922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.285096, 16.199104, 16.534435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.662956, 16.251873, 16.414282>,  <14.889672, 16.283533, 16.342190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.662956, 16.251873, 16.414282>,  <14.285096, 16.199104, 16.534435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.662956, 16.251873, 16.414282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146259, 0.650236, 0.745521,
		0.293671, -0.748191, 0.594951,
		0.944651, 0.131921, -0.300386,
		14.946352, 16.291449, 16.324165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.671284, 16.054077, 17.115084>,  <14.285096, 16.199104, 16.534435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.671284, 16.054077, 17.115084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886130, 16.263960, 16.850904>,  <15.015038, 16.389889, 16.692398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886130, 16.263960, 16.850904>,  <14.671284, 16.054077, 17.115084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.886130, 16.263960, 16.850904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228416, 0.663247, 0.712692,
		0.811993, -0.533655, 0.236389,
		0.537116, 0.524706, -0.660447,
		15.047265, 16.421371, 16.652771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.250127, 16.232656, 17.553640>,  <14.671284, 16.054077, 17.115084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.250127, 16.232656, 17.553640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.264183, 16.490999, 17.248579>,  <15.272616, 16.646004, 17.065542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.264183, 16.490999, 17.248579>,  <15.250127, 16.232656, 17.553640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.264183, 16.490999, 17.248579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006396, 0.763252, 0.646069,
		0.999362, -0.017825, 0.030951,
		0.035140, 0.645855, -0.762651,
		15.274725, 16.684755, 17.019783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.808394, 16.612495, 17.570766>,  <15.250127, 16.232656, 17.553640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.808394, 16.612495, 17.570766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.580583, 16.861324, 17.355858>,  <15.443895, 17.010622, 17.226912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.580583, 16.861324, 17.355858>,  <15.808394, 16.612495, 17.570766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.580583, 16.861324, 17.355858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155503, 0.723378, 0.672713,
		0.807128, 0.299582, -0.508719,
		-0.569529, 0.622072, -0.537273,
		15.409724, 17.047947, 17.194675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.153860, 17.157251, 17.595781>,  <15.808394, 16.612495, 17.570766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.153860, 17.157251, 17.595781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.796441, 17.303431, 17.491457>,  <15.581990, 17.391138, 17.428862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.796441, 17.303431, 17.491457>,  <16.153860, 17.157251, 17.595781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.796441, 17.303431, 17.491457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174204, 0.817603, 0.548797,
		0.413798, 0.444940, -0.794229,
		-0.893546, 0.365449, -0.260813,
		15.528378, 17.413065, 17.413214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262403, 17.852102, 17.295578>,  <16.153860, 17.157251, 17.595781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.262403, 17.852102, 17.295578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.878267, 17.828661, 17.404615>,  <15.647785, 17.814596, 17.470037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.878267, 17.828661, 17.404615>,  <16.262403, 17.852102, 17.295578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.878267, 17.828661, 17.404615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073648, 0.889623, 0.450719,
		-0.268920, 0.452921, -0.850026,
		-0.960343, -0.058605, 0.272594,
		15.590164, 17.811079, 17.486393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.857274, 18.478266, 17.263184>,  <16.262403, 17.852102, 17.295578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.857274, 18.478266, 17.263184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.619483, 18.285025, 17.520309>,  <15.476809, 18.169081, 17.674583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.619483, 18.285025, 17.520309>,  <15.857274, 18.478266, 17.263184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.619483, 18.285025, 17.520309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191651, 0.861494, 0.470210,
		-0.780938, 0.156334, -0.604727,
		-0.594479, -0.483102, 0.642812,
		15.441139, 18.140095, 17.713154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.301148, 18.922935, 17.343081>,  <15.857274, 18.478266, 17.263184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.301148, 18.922935, 17.343081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.306939, 18.681103, 17.661644>,  <15.310413, 18.536003, 17.852783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.306939, 18.681103, 17.661644>,  <15.301148, 18.922935, 17.343081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.306939, 18.681103, 17.661644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039678, 0.795519, 0.604628,
		-0.999108, -0.040354, -0.012471,
		0.014478, -0.604584, 0.796410,
		15.311282, 18.499727, 17.900566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.697641, 19.006054, 17.698534>,  <15.301148, 18.922935, 17.343081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.697641, 19.006054, 17.698534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.979049, 18.864212, 17.944889>,  <15.147893, 18.779106, 18.092703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.979049, 18.864212, 17.944889>,  <14.697641, 19.006054, 17.698534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.979049, 18.864212, 17.944889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080554, 0.900825, 0.426644,
		-0.706098, -0.250539, 0.662311,
		0.703517, -0.354604, 0.615889,
		15.190104, 18.757832, 18.129656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579309, 19.342194, 18.301392>,  <14.697641, 19.006054, 17.698534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.579309, 19.342194, 18.301392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.938008, 19.187277, 18.387039>,  <15.153228, 19.094326, 18.438427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.938008, 19.187277, 18.387039>,  <14.579309, 19.342194, 18.301392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.938008, 19.187277, 18.387039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157897, 0.732005, 0.662750,
		-0.413413, -0.560512, 0.717577,
		0.896749, -0.387292, 0.214117,
		15.207033, 19.071089, 18.451275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627071, 19.354372, 19.033934>,  <14.579309, 19.342194, 18.301392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.627071, 19.354372, 19.033934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.001202, 19.341505, 18.893005>,  <15.225680, 19.333784, 18.808449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.001202, 19.341505, 18.893005>,  <14.627071, 19.354372, 19.033934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.001202, 19.341505, 18.893005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284572, 0.660087, 0.695201,
		0.210199, -0.750500, 0.626551,
		0.935326, -0.032168, -0.352320,
		15.281799, 19.331854, 18.787310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.011975, 19.209713, 19.601517>,  <14.627071, 19.354372, 19.033934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.011975, 19.209713, 19.601517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.276377, 19.382320, 19.355957>,  <15.435018, 19.485884, 19.208622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.276377, 19.382320, 19.355957>,  <15.011975, 19.209713, 19.601517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.276377, 19.382320, 19.355957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235888, 0.657144, 0.715904,
		0.712344, -0.618024, 0.332583,
		0.661001, 0.431518, -0.613898,
		15.474677, 19.511776, 19.171787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.971582, 18.727497, 20.131441>,  <15.011975, 19.209713, 19.601517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.971582, 18.727497, 20.131441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.838675, 18.692268, 20.507067>,  <14.758929, 18.671131, 20.732441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.838675, 18.692268, 20.507067>,  <14.971582, 18.727497, 20.131441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.838675, 18.692268, 20.507067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773306, -0.544583, -0.324695,
		0.539994, -0.834070, 0.112843,
		-0.332271, -0.088071, 0.939063,
		14.738994, 18.665848, 20.788786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.907977, 17.915245, 20.255341>,  <14.971582, 18.727497, 20.131441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.907977, 17.915245, 20.255341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.672848, 18.126570, 20.500402>,  <14.531770, 18.253365, 20.647440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.672848, 18.126570, 20.500402>,  <14.907977, 17.915245, 20.255341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.672848, 18.126570, 20.500402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732682, -0.668749, -0.126301,
		0.342987, -0.523125, 0.780193,
		-0.587824, 0.528314, 0.612656,
		14.496501, 18.285065, 20.684198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.661176, 17.487495, 20.620949>,  <14.907977, 17.915245, 20.255341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.661176, 17.487495, 20.620949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.409359, 17.794189, 20.671213>,  <14.258268, 17.978207, 20.701372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.409359, 17.794189, 20.671213>,  <14.661176, 17.487495, 20.620949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.409359, 17.794189, 20.671213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765078, -0.583565, -0.272227,
		-0.135393, -0.267521, 0.953992,
		-0.629543, 0.766737, 0.125664,
		14.220496, 18.024210, 20.708912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.186837, 17.320700, 21.086523>,  <14.661176, 17.487495, 20.620949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.186837, 17.320700, 21.086523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.998065, 17.605396, 20.878405>,  <13.884802, 17.776215, 20.753534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.998065, 17.605396, 20.878405>,  <14.186837, 17.320700, 21.086523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.998065, 17.605396, 20.878405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718123, -0.652680, -0.241471,
		-0.511451, 0.259678, 0.819137,
		-0.471930, 0.711741, -0.520295,
		13.856486, 17.818918, 20.722317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.478712, 17.237257, 21.271402>,  <14.186837, 17.320700, 21.086523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.478712, 17.237257, 21.271402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.484735, 17.452534, 20.934328>,  <13.488350, 17.581699, 20.732082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.484735, 17.452534, 20.934328>,  <13.478712, 17.237257, 21.271402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.484735, 17.452534, 20.934328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701911, -0.594529, -0.392245,
		-0.712105, 0.597399, 0.368810,
		0.015058, 0.538192, -0.842688,
		13.489253, 17.613991, 20.681522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.786817, 17.353003, 21.149340>,  <13.478712, 17.237257, 21.271402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.786817, 17.353003, 21.149340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.944899, 17.427677, 20.789570>,  <13.039748, 17.472483, 20.573708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.944899, 17.427677, 20.789570>,  <12.786817, 17.353003, 21.149340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.944899, 17.427677, 20.789570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654246, -0.630096, -0.418260,
		-0.644807, 0.753741, -0.126878,
		0.395205, 0.186688, -0.899422,
		13.063460, 17.483683, 20.519743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.182482, 17.620483, 20.640326>,  <12.786817, 17.353003, 21.149340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.182482, 17.620483, 20.640326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.494640, 17.491634, 20.425955>,  <12.681936, 17.414326, 20.297333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.494640, 17.491634, 20.425955>,  <12.182482, 17.620483, 20.640326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.494640, 17.491634, 20.425955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621042, -0.498972, -0.604429,
		-0.072711, 0.804527, -0.589448,
		0.780398, -0.322123, -0.535926,
		12.728760, 17.394997, 20.265177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.054565, 17.928240, 19.965509>,  <12.182482, 17.620483, 20.640326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.054565, 17.928240, 19.965509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.293834, 17.608370, 19.944666>,  <12.437395, 17.416449, 19.932159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.293834, 17.608370, 19.944666>,  <12.054565, 17.928240, 19.965509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.293834, 17.608370, 19.944666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681710, -0.473595, -0.557656,
		0.421264, 0.369096, -0.828435,
		0.598171, -0.799673, -0.052108,
		12.473285, 17.368467, 19.929033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.982119, 17.697184, 19.264357>,  <12.054565, 17.928240, 19.965509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.982119, 17.697184, 19.264357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.120513, 17.354172, 19.416637>,  <12.203549, 17.148365, 19.508007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.120513, 17.354172, 19.416637>,  <11.982119, 17.697184, 19.264357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.120513, 17.354172, 19.416637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629194, -0.513063, -0.583850,
		0.695994, -0.037532, -0.717066,
		0.345987, -0.857530, 0.380704,
		12.224309, 17.096912, 19.530849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.928000, 17.161108, 18.739540>,  <11.982119, 17.697184, 19.264357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.928000, 17.161108, 18.739540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.982481, 16.939224, 19.067869>,  <12.015169, 16.806093, 19.264866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.982481, 16.939224, 19.067869>,  <11.928000, 17.161108, 18.739540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.982481, 16.939224, 19.067869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578703, -0.717033, -0.388544,
		0.804085, -0.422091, -0.418673,
		0.136202, -0.554710, 0.820820,
		12.023341, 16.772812, 19.314116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.078033, 16.411299, 18.519428>,  <11.928000, 17.161108, 18.739540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.078033, 16.411299, 18.519428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.954089, 16.402462, 18.899639>,  <11.879723, 16.397160, 19.127766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.954089, 16.402462, 18.899639>,  <12.078033, 16.411299, 18.519428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.954089, 16.402462, 18.899639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502307, -0.845019, -0.183387,
		0.807264, -0.534280, 0.250739,
		-0.309860, -0.022094, 0.950526,
		11.861132, 16.395834, 19.184797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.168368, 15.749005, 18.691710>,  <12.078033, 16.411299, 18.519428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.168368, 15.749005, 18.691710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.874536, 15.884916, 18.926636>,  <11.698236, 15.966463, 19.067591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.874536, 15.884916, 18.926636>,  <12.168368, 15.749005, 18.691710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.874536, 15.884916, 18.926636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498442, -0.857522, -0.127327,
		0.460373, -0.386275, 0.799280,
		-0.734583, 0.339777, 0.587316,
		11.654160, 15.986850, 19.102831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.827888, 15.130753, 18.809929>,  <12.168368, 15.749005, 18.691710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.827888, 15.130753, 18.809929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.582466, 15.410276, 18.957016>,  <11.435213, 15.577991, 19.045269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.582466, 15.410276, 18.957016>,  <11.827888, 15.130753, 18.809929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.582466, 15.410276, 18.957016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765222, -0.641109, -0.058445,
		0.194906, -0.317246, 0.928098,
		-0.613553, 0.698810, 0.367720,
		11.398400, 15.619919, 19.067331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.450817, 14.736734, 19.311764>,  <11.827888, 15.130753, 18.809929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.450817, 14.736734, 19.311764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.233760, 15.064459, 19.237717>,  <11.103525, 15.261093, 19.193289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.233760, 15.064459, 19.237717>,  <11.450817, 14.736734, 19.311764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.233760, 15.064459, 19.237717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825216, -0.561125, -0.064485,
		-0.156708, 0.117770, 0.980598,
		-0.542644, 0.819310, -0.185118,
		11.070967, 15.310252, 19.182180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.116982, 14.644422, 19.278070>,  <11.450817, 14.736734, 19.311764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.116982, 14.644422, 19.278070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.013501, 15.027309, 19.329920>,  <11.951413, 15.257042, 19.361029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.013501, 15.027309, 19.329920>,  <12.116982, 14.644422, 19.278070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.013501, 15.027309, 19.329920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700387, 0.278294, -0.657275,
		-0.665231, -0.079252, -0.742420,
		-0.258701, 0.957221, 0.129623,
		11.935891, 15.314476, 19.368807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.565361, 15.043694, 19.744320>,  <12.116982, 14.644422, 19.278070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.565361, 15.043694, 19.744320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.772627, 14.702441, 19.768560>,  <12.896987, 14.497690, 19.783106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.772627, 14.702441, 19.768560>,  <12.565361, 15.043694, 19.744320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.772627, 14.702441, 19.768560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642308, 0.434948, 0.631079,
		-0.564752, -0.288078, 0.773347,
		0.518165, -0.853131, 0.060603,
		12.928077, 14.446502, 19.786741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.671371, 14.987352, 20.501064>,  <12.565361, 15.043694, 19.744320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.671371, 14.987352, 20.501064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.937547, 14.778048, 20.288130>,  <13.097253, 14.652465, 20.160368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.937547, 14.778048, 20.288130>,  <12.671371, 14.987352, 20.501064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.937547, 14.778048, 20.288130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717162, 0.250363, 0.650382,
		-0.207043, -0.814563, 0.541867,
		0.665441, -0.523263, -0.532338,
		13.137179, 14.621069, 20.128428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.113843, 14.502919, 20.953821>,  <12.671371, 14.987352, 20.501064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.113843, 14.502919, 20.953821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.324264, 14.609780, 20.630859>,  <13.450516, 14.673897, 20.437082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.324264, 14.609780, 20.630859>,  <13.113843, 14.502919, 20.953821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.324264, 14.609780, 20.630859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740213, 0.323639, 0.589358,
		0.418755, -0.907683, -0.027499,
		0.526051, 0.267152, -0.807404,
		13.482079, 14.689926, 20.388638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.741748, 14.243718, 21.126154>,  <13.113843, 14.502919, 20.953821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.741748, 14.243718, 21.126154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.797069, 14.543242, 20.866875>,  <13.830261, 14.722956, 20.711308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.797069, 14.543242, 20.866875>,  <13.741748, 14.243718, 21.126154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.797069, 14.543242, 20.866875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794678, 0.306694, 0.523856,
		0.591066, -0.587558, -0.552645,
		0.138303, 0.748809, -0.648196,
		13.838559, 14.767884, 20.672417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.405606, 14.306500, 21.065451>,  <13.741748, 14.243718, 21.126154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.405606, 14.306500, 21.065451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.315259, 14.662743, 20.907562>,  <14.261051, 14.876488, 20.812830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.315259, 14.662743, 20.907562>,  <14.405606, 14.306500, 21.065451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.315259, 14.662743, 20.907562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844447, 0.381018, 0.376478,
		0.485689, -0.248286, -0.838129,
		-0.225867, 0.890606, -0.394721,
		14.247499, 14.929924, 20.789146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.033094, 14.583751, 20.834476>,  <14.405606, 14.306500, 21.065451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.033094, 14.583751, 20.834476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.805244, 14.911947, 20.853752>,  <14.668534, 15.108865, 20.865318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.805244, 14.911947, 20.853752>,  <15.033094, 14.583751, 20.834476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.805244, 14.911947, 20.853752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769924, 0.512161, 0.380669,
		0.287655, 0.253940, -0.923455,
		-0.569625, 0.820491, 0.048189,
		14.634357, 15.158094, 20.868208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.457202, 15.093572, 20.664995>,  <15.033094, 14.583751, 20.834476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.457202, 15.093572, 20.664995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.161801, 15.293968, 20.845493>,  <14.984561, 15.414207, 20.953793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.161801, 15.293968, 20.845493>,  <15.457202, 15.093572, 20.664995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.161801, 15.293968, 20.845493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673807, 0.572671, 0.466938,
		-0.024483, 0.648887, -0.760491,
		-0.738501, 0.500992, 0.451245,
		14.940251, 15.444266, 20.980867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.654181, 15.827664, 20.764673>,  <15.457202, 15.093572, 20.664995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.654181, 15.827664, 20.764673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.342762, 15.798156, 21.013968>,  <15.155910, 15.780451, 21.163544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.342762, 15.798156, 21.013968>,  <15.654181, 15.827664, 20.764673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.342762, 15.798156, 21.013968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527299, 0.461623, 0.713344,
		-0.340324, 0.884003, -0.320496,
		-0.778547, -0.073771, 0.623236,
		15.109198, 15.776025, 21.200939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.694477, 16.509802, 21.026079>,  <15.654181, 15.827664, 20.764673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.694477, 16.509802, 21.026079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.485628, 16.275805, 21.274328>,  <15.360319, 16.135406, 21.423277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.485628, 16.275805, 21.274328>,  <15.694477, 16.509802, 21.026079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.485628, 16.275805, 21.274328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519391, 0.359085, 0.775430,
		-0.676478, 0.727214, 0.116355,
		-0.522122, -0.584995, 0.620621,
		15.328992, 16.100306, 21.460514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.805720, 16.832546, 21.601175>,  <15.694477, 16.509802, 21.026079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.805720, 16.832546, 21.601175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.646412, 16.504393, 21.765297>,  <15.550827, 16.307501, 21.863770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.646412, 16.504393, 21.765297>,  <15.805720, 16.832546, 21.601175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.646412, 16.504393, 21.765297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452216, 0.213563, 0.865963,
		-0.798049, 0.530433, 0.285935,
		-0.398270, -0.820385, 0.410304,
		15.526931, 16.258278, 21.888388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.354515, 17.013691, 22.142365>,  <15.805720, 16.832546, 21.601175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.354515, 17.013691, 22.142365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.486517, 16.645800, 22.227398>,  <15.565719, 16.425064, 22.278418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.486517, 16.645800, 22.227398>,  <15.354515, 17.013691, 22.142365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.486517, 16.645800, 22.227398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205151, 0.289694, 0.934875,
		-0.921417, -0.264902, 0.284284,
		0.330006, -0.919730, 0.212584,
		15.585519, 16.369881, 22.291174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.992173, 16.887985, 22.757536>,  <15.354515, 17.013691, 22.142365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.992173, 16.887985, 22.757536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.323237, 16.666014, 22.723997>,  <15.521876, 16.532831, 22.703873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.323237, 16.666014, 22.723997>,  <14.992173, 16.887985, 22.757536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.323237, 16.666014, 22.723997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284438, 0.285968, 0.915051,
		-0.483812, -0.781201, 0.394528,
		0.827660, -0.554931, -0.083849,
		15.571535, 16.499535, 22.698843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.008510, 16.453987, 23.364061>,  <14.992173, 16.887985, 22.757536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.008510, 16.453987, 23.364061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.375104, 16.501581, 23.211275>,  <15.595060, 16.530138, 23.119604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.375104, 16.501581, 23.211275>,  <15.008510, 16.453987, 23.364061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.375104, 16.501581, 23.211275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366165, 0.135167, 0.920681,
		0.161182, -0.983652, 0.080308,
		0.916484, 0.118991, -0.381965,
		15.650049, 16.537277, 23.096685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.527396, 16.210121, 23.860003>,  <15.008510, 16.453987, 23.364061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.527396, 16.210121, 23.860003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.765320, 16.414644, 23.611883>,  <15.908074, 16.537357, 23.463013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.765320, 16.414644, 23.611883>,  <15.527396, 16.210121, 23.860003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.765320, 16.414644, 23.611883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570901, 0.274550, 0.773753,
		0.565928, -0.814363, -0.128602,
		0.594809, 0.511308, -0.620296,
		15.943763, 16.568037, 23.425795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166817, 15.974403, 23.985094>,  <15.527396, 16.210121, 23.860003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.166817, 15.974403, 23.985094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.250584, 16.315058, 23.792902>,  <16.300844, 16.519451, 23.677588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.250584, 16.315058, 23.792902>,  <16.166817, 15.974403, 23.985094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.250584, 16.315058, 23.792902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611317, 0.269480, 0.744091,
		0.763175, -0.449550, -0.464187,
		0.209417, 0.851637, -0.480478,
		16.313408, 16.570549, 23.648758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.894793, 16.014563, 23.950642>,  <16.166817, 15.974403, 23.985094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.894793, 16.014563, 23.950642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.752554, 16.387465, 23.923944>,  <16.667212, 16.611206, 23.907927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.752554, 16.387465, 23.923944>,  <16.894793, 16.014563, 23.950642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.752554, 16.387465, 23.923944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695084, 0.311516, 0.647932,
		0.624828, 0.184010, -0.758768,
		-0.355595, 0.932254, -0.066742,
		16.645876, 16.667141, 23.903921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445436, 16.452591, 23.867271>,  <16.894793, 16.014563, 23.950642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.445436, 16.452591, 23.867271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.163074, 16.708685, 23.988466>,  <16.993658, 16.862341, 24.061182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.163074, 16.708685, 23.988466>,  <17.445436, 16.452591, 23.867271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.163074, 16.708685, 23.988466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576028, 0.269979, 0.771559,
		0.412178, 0.719176, -0.559371,
		-0.705905, 0.640233, 0.302986,
		16.951303, 16.900755, 24.079363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.739555, 17.086151, 23.928442>,  <17.445436, 16.452591, 23.867271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.739555, 17.086151, 23.928442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.416239, 17.157064, 24.153025>,  <17.222248, 17.199612, 24.287775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.416239, 17.157064, 24.153025>,  <17.739555, 17.086151, 23.928442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.416239, 17.157064, 24.153025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576851, 0.429427, 0.694864,
		-0.117918, 0.885530, -0.449368,
		-0.808293, 0.177281, 0.561456,
		17.173750, 17.210249, 24.321461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844349, 17.741302, 24.166739>,  <17.739555, 17.086151, 23.928442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.844349, 17.741302, 24.166739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.573399, 17.595871, 24.422543>,  <17.410828, 17.508612, 24.576025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.573399, 17.595871, 24.422543>,  <17.844349, 17.741302, 24.166739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.573399, 17.595871, 24.422543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420486, 0.521954, 0.742129,
		-0.603615, 0.771606, -0.200681,
		-0.677378, -0.363577, 0.639509,
		17.370186, 17.486797, 24.614395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.757292, 18.176495, 24.628096>,  <17.844349, 17.741302, 24.166739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.757292, 18.176495, 24.628096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.607054, 17.877871, 24.847759>,  <17.516911, 17.698696, 24.979557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.607054, 17.877871, 24.847759>,  <17.757292, 18.176495, 24.628096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607054, 17.877871, 24.847759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340475, 0.439959, 0.830971,
		-0.861977, 0.499086, 0.088938,
		-0.375597, -0.746559, 0.549160,
		17.494375, 17.653902, 25.012506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.324558, 18.563786, 25.152050>,  <17.757292, 18.176495, 24.628096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.324558, 18.563786, 25.152050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.458313, 18.205801, 25.270191>,  <17.538567, 17.991011, 25.341076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.458313, 18.205801, 25.270191>,  <17.324558, 18.563786, 25.152050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.458313, 18.205801, 25.270191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346274, 0.408145, 0.844697,
		-0.876516, -0.180183, 0.446379,
		0.334388, -0.894959, 0.295353,
		17.558630, 17.937313, 25.358797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.158751, 18.510458, 25.796124>,  <17.324558, 18.563786, 25.152050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.158751, 18.510458, 25.796124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.466005, 18.258970, 25.747671>,  <17.650358, 18.108078, 25.718599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.466005, 18.258970, 25.747671>,  <17.158751, 18.510458, 25.796124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.466005, 18.258970, 25.747671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454767, 0.402553, 0.794442,
		-0.450720, -0.665328, 0.595138,
		0.768139, -0.628721, -0.121131,
		17.696447, 18.070354, 25.711332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.289227, 18.474024, 26.435961>,  <17.158751, 18.510458, 25.796124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.289227, 18.474024, 26.435961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.606598, 18.319447, 26.247864>,  <17.797022, 18.226700, 26.135006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.606598, 18.319447, 26.247864>,  <17.289227, 18.474024, 26.435961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.606598, 18.319447, 26.247864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595752, 0.334799, 0.730061,
		-0.124692, -0.859401, 0.495865,
		0.793430, -0.386445, -0.470243,
		17.844627, 18.203514, 26.106791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.631523, 18.004755, 26.852377>,  <17.289227, 18.474024, 26.435961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.631523, 18.004755, 26.852377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.922890, 18.100767, 26.595692>,  <18.097710, 18.158375, 26.441681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.922890, 18.100767, 26.595692>,  <17.631523, 18.004755, 26.852377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.922890, 18.100767, 26.595692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587598, 0.262803, 0.765286,
		0.352335, -0.934516, 0.050389,
		0.728415, 0.240029, -0.641714,
		18.141415, 18.172775, 26.403177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.279499, 17.932869, 27.140795>,  <17.631523, 18.004755, 26.852377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.279499, 17.932869, 27.140795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.346239, 18.198410, 26.849190>,  <18.386284, 18.357735, 26.674227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.346239, 18.198410, 26.849190>,  <18.279499, 17.932869, 27.140795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.346239, 18.198410, 26.849190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718804, 0.424199, 0.550796,
		0.674894, -0.615919, -0.406401,
		0.166851, 0.663851, -0.729015,
		18.396294, 18.397566, 26.630486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.995882, 17.800497, 26.955364>,  <18.279499, 17.932869, 27.140795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.995882, 17.800497, 26.955364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.905727, 18.163521, 26.813639>,  <18.851635, 18.381334, 26.728603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.905727, 18.163521, 26.813639>,  <18.995882, 17.800497, 26.955364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.905727, 18.163521, 26.813639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786616, 0.384087, 0.483438,
		0.574836, -0.169751, -0.800467,
		-0.225385, 0.907558, -0.354316,
		18.838112, 18.435789, 26.707344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.638067, 18.139799, 26.648323>,  <18.995882, 17.800497, 26.955364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.638067, 18.139799, 26.648323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.389141, 18.441296, 26.732792>,  <19.239786, 18.622194, 26.783474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.389141, 18.441296, 26.732792>,  <19.638067, 18.139799, 26.648323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.389141, 18.441296, 26.732792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747695, 0.492546, 0.445367,
		0.231680, 0.435051, -0.870089,
		-0.622316, 0.753743, 0.211173,
		19.202446, 18.667419, 26.796144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
