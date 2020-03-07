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
	<1.428261, 1.550723, 4.244227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.116741, 1.413422, 4.034218>,  <0.929829, 1.331041, 3.908212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.116741, 1.413422, 4.034218>,  <1.428261, 1.550723, 4.244227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.116741, 1.413422, 4.034218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420455, -0.335473, 0.843016,
		-0.465499, 0.877288, 0.116944,
		-0.778799, -0.343253, -0.525023,
		0.883101, 1.310446, 3.876711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.799708, 1.897620, 4.424728>,  <1.428261, 1.550723, 4.244227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.799708, 1.897620, 4.424728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.748043, 1.516018, 4.316513>,  <0.717044, 1.287057, 4.251584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.748043, 1.516018, 4.316513>,  <0.799708, 1.897620, 4.424728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.748043, 1.516018, 4.316513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208776, -0.240545, 0.947919,
		-0.969397, 0.178917, -0.168104,
		-0.129163, -0.954005, -0.270537,
		0.709294, 1.229816, 4.235352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.097798, 1.522378, 4.595222>,  <0.799708, 1.897620, 4.424728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.097798, 1.522378, 4.595222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.393810, 1.254135, 4.615780>,  <0.571418, 1.093190, 4.628115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.393810, 1.254135, 4.615780>,  <0.097798, 1.522378, 4.595222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.393810, 1.254135, 4.615780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291698, -0.251161, 0.922947,
		-0.606025, -0.698001, -0.381481,
		0.740031, -0.670606, 0.051396,
		0.615820, 1.052953, 4.631199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.187744, 0.812817, 4.746424>,  <0.097798, 1.522378, 4.595222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.187744, 0.812817, 4.746424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.203434, 0.815182, 4.829933>,  <0.438141, 0.816600, 4.880039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.203434, 0.815182, 4.829933>,  <-0.187744, 0.812817, 4.746424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.203434, 0.815182, 4.829933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177408, -0.503991, 0.845293,
		0.110217, -0.863689, -0.491827,
		0.977946, 0.005911, 0.208774,
		0.496818, 0.816955, 4.892565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.138050, 0.157732, 4.678891>,  <-0.187744, 0.812817, 4.746424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.138050, 0.157732, 4.678891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.347336, 0.369804, 4.945770>,  <0.472908, 0.497048, 5.105898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.347336, 0.369804, 4.945770>,  <0.138050, 0.157732, 4.678891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.347336, 0.369804, 4.945770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035003, -0.768882, 0.638432,
		0.851481, -0.357391, -0.383733,
		0.523215, 0.530181, 0.667198,
		0.504300, 0.528859, 5.145930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.492558, -0.257951, 5.006001>,  <0.138050, 0.157732, 4.678891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.492558, -0.257951, 5.006001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.540302, 0.038303, 5.270489>,  <0.568949, 0.216056, 5.429182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.540302, 0.038303, 5.270489>,  <0.492558, -0.257951, 5.006001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.540302, 0.038303, 5.270489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027832, -0.663223, 0.747904,
		0.992461, -0.107674, -0.058550,
		0.119362, 0.740636, 0.661220,
		0.576111, 0.260494, 5.468854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.960032, -0.519650, 5.533715>,  <0.492558, -0.257951, 5.006001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.960032, -0.519650, 5.533715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.769974, -0.220947, 5.719872>,  <0.655939, -0.041725, 5.831565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.769974, -0.220947, 5.719872>,  <0.960032, -0.519650, 5.533715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.769974, -0.220947, 5.719872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130335, -0.582805, 0.802091,
		0.870201, 0.320454, 0.374246,
		-0.475146, 0.746758, 0.465391,
		0.627430, 0.003080, 5.859489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.350089, -0.242290, 6.134653>,  <0.960032, -0.519650, 5.533715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.350089, -0.242290, 6.134653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.962696, -0.158653, 6.188801>,  <0.730261, -0.108471, 6.221290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.962696, -0.158653, 6.188801>,  <1.350089, -0.242290, 6.134653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.962696, -0.158653, 6.188801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053347, -0.356739, 0.932680,
		0.243306, 0.910505, 0.334340,
		-0.968481, 0.209091, 0.135369,
		0.672152, -0.095926, 6.229412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.813573, -0.833545, 1.875433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.549313, -0.649803, 2.112930>,  <0.390756, -0.539558, 2.255429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.549313, -0.649803, 2.112930>,  <0.813573, -0.833545, 1.875433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.549313, -0.649803, 2.112930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247939, 0.613026, -0.750150,
		-0.708566, -0.642801, -0.291105,
		-0.660652, 0.459354, 0.593744,
		0.351117, -0.511997, 2.291054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.120647, -0.867992, 1.587341>,  <0.813573, -0.833545, 1.875433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.120647, -0.867992, 1.587341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.173380, -0.552895, 1.828033>,  <0.205020, -0.363836, 1.972449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.173380, -0.552895, 1.828033>,  <0.120647, -0.867992, 1.587341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.173380, -0.552895, 1.828033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267725, 0.612766, -0.743533,
		-0.954433, -0.063077, 0.291682,
		0.131833, 0.787743, 0.601732,
		0.212930, -0.316572, 2.008553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.419081, -0.450464, 1.528216>,  <0.120647, -0.867992, 1.587341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.419081, -0.450464, 1.528216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.072012, -0.275711, 1.623108>,  <0.136229, -0.170859, 1.680043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.072012, -0.275711, 1.623108>,  <-0.419081, -0.450464, 1.528216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.072012, -0.275711, 1.623108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070624, 0.580677, -0.811065,
		-0.492094, 0.686985, 0.534692,
		0.867673, 0.436882, 0.237231,
		0.188290, -0.144646, 1.694277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.527900, 0.275477, 1.525552>,  <-0.419081, -0.450464, 1.528216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.527900, 0.275477, 1.525552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.144732, 0.182808, 1.457771>,  <0.085170, 0.127206, 1.417103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.144732, 0.182808, 1.457771>,  <-0.527900, 0.275477, 1.525552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.144732, 0.182808, 1.457771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047252, 0.709590, -0.703029,
		0.283114, 0.665439, 0.690679,
		0.957922, -0.231673, -0.169451,
		0.142645, 0.113306, 1.406936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.089386, 0.931787, 1.409259>,  <-0.527900, 0.275477, 1.525552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.089386, 0.931787, 1.409259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.135376, 0.643311, 1.247200>,  <0.270233, 0.470224, 1.149964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.135376, 0.643311, 1.247200>,  <-0.089386, 0.931787, 1.409259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.135376, 0.643311, 1.247200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262682, 0.619999, -0.739324,
		0.784386, 0.309005, 0.537825,
		0.561905, -0.721192, -0.405148,
		0.303947, 0.426953, 1.125656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.584284, 1.274685, 1.256839>,  <-0.089386, 0.931787, 1.409259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.584284, 1.274685, 1.256839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.595964, 0.945938, 1.029266>,  <0.602973, 0.748690, 0.892723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.595964, 0.945938, 1.029266>,  <0.584284, 1.274685, 1.256839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.595964, 0.945938, 1.029266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140855, 0.566877, -0.811671,
		0.989600, -0.056436, 0.132317,
		0.029201, -0.821867, -0.568931,
		0.604725, 0.699378, 0.858587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.224265, 1.197689, 0.964668>,  <0.584284, 1.274685, 1.256839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.224265, 1.197689, 0.964668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.930264, 1.051773, 0.736038>,  <0.753863, 0.964223, 0.598860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.930264, 1.051773, 0.736038>,  <1.224265, 1.197689, 0.964668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.930264, 1.051773, 0.736038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208383, 0.680636, -0.702362,
		0.645250, -0.635345, -0.424253,
		-0.735003, -0.364791, -0.571575,
		0.709762, 0.942336, 0.564566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.480128, 0.879510, 0.376389>,  <1.224265, 1.197689, 0.964668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.480128, 0.879510, 0.376389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.117510, 1.018700, 0.280815>,  <0.899939, 1.102213, 0.223471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.117510, 1.018700, 0.280815>,  <1.480128, 0.879510, 0.376389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.117510, 1.018700, 0.280815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374474, 0.401771, -0.835673,
		-0.194794, -0.847051, -0.494531,
		-0.906545, 0.347973, -0.238936,
		0.845546, 1.123092, 0.209134>
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
