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
	<3.555329, 0.825450, -0.356561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.805237, 1.020721, -0.600313>,  <3.955181, 1.137884, -0.746565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.805237, 1.020721, -0.600313>,  <3.555329, 0.825450, -0.356561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.805237, 1.020721, -0.600313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746454, -0.602389, 0.282726,
		-0.229064, -0.631514, -0.740757,
		0.624769, 0.488179, -0.609381,
		3.992667, 1.167175, -0.783128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.653998, 0.878534, 0.478001>,  <3.555329, 0.825450, -0.356561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.653998, 0.878534, 0.478001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.930183, 0.700954, 0.706446>,  <4.095895, 0.594407, 0.843512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.930183, 0.700954, 0.706446>,  <3.653998, 0.878534, 0.478001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.930183, 0.700954, 0.706446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482939, -0.304883, -0.820863,
		0.538543, 0.842589, 0.003889,
		0.690464, -0.443949, 0.571111,
		4.137323, 0.567770, 0.877779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.183130, 0.879299, 0.072889>,  <3.653998, 0.878534, 0.478001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.183130, 0.879299, 0.072889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.284294, 0.616077, 0.356579>,  <4.344993, 0.458144, 0.526793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.284294, 0.616077, 0.356579>,  <4.183130, 0.879299, 0.072889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.284294, 0.616077, 0.356579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656741, -0.421525, -0.625307,
		0.710442, 0.623924, 0.325563,
		0.252911, -0.658055, 0.709225,
		4.360168, 0.418661, 0.569346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.827390, 0.981614, 0.227901>,  <4.183130, 0.879299, 0.072889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.827390, 0.981614, 0.227901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.723099, 0.603218, 0.304974>,  <4.660524, 0.376181, 0.351217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.723099, 0.603218, 0.304974>,  <4.827390, 0.981614, 0.227901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.723099, 0.603218, 0.304974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701960, -0.322783, -0.634873,
		0.662777, -0.030274, 0.748205,
		-0.260728, -0.945989, 0.192682,
		4.644880, 0.319421, 0.362778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.493355, 0.552546, 0.329749>,  <4.827390, 0.981614, 0.227901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.493355, 0.552546, 0.329749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.201813, 0.295864, 0.234262>,  <5.026887, 0.141855, 0.176970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.201813, 0.295864, 0.234262>,  <5.493355, 0.552546, 0.329749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.201813, 0.295864, 0.234262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647159, -0.531874, -0.546164,
		0.223509, -0.552561, 0.802944,
		-0.728855, -0.641705, -0.238716,
		4.983156, 0.103353, 0.162647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.676576, -0.129062, 0.470623>,  <5.493355, 0.552546, 0.329749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.676576, -0.129062, 0.470623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.408524, -0.163189, 0.175694>,  <5.247693, -0.183665, -0.001264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.408524, -0.163189, 0.175694>,  <5.676576, -0.129062, 0.470623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.408524, -0.163189, 0.175694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648709, -0.550056, -0.525942,
		-0.360697, -0.830758, 0.423956,
		-0.670130, -0.085318, -0.737324,
		5.207485, -0.188784, -0.045504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.788737, -0.795973, 0.048652>,  <5.676576, -0.129062, 0.470623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.788737, -0.795973, 0.048652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.542816, -0.596539, -0.195784>,  <5.395264, -0.476878, -0.342445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.542816, -0.596539, -0.195784>,  <5.788737, -0.795973, 0.048652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.542816, -0.596539, -0.195784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530774, -0.311534, -0.788179,
		-0.583351, -0.808923, -0.073106,
		-0.614801, 0.498588, -0.611089,
		5.358376, -0.446962, -0.379110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.732541, -1.227921, -0.475807>,  <5.788737, -0.795973, 0.048652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.732541, -1.227921, -0.475807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.623444, -0.870880, -0.619402>,  <5.557985, -0.656656, -0.705559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.623444, -0.870880, -0.619402>,  <5.732541, -1.227921, -0.475807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.623444, -0.870880, -0.619402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435524, -0.218163, -0.873341,
		-0.857864, -0.394545, -0.329247,
		-0.272743, 0.892602, -0.358988,
		5.541621, -0.603099, -0.727098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.571341, 4.530821, 3.400022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.333885, 4.840019, 3.310516>,  <1.191412, 5.025538, 3.256813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.333885, 4.840019, 3.310516>,  <1.571341, 4.530821, 3.400022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.333885, 4.840019, 3.310516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640806, -0.285872, 0.712492,
		0.486786, 0.566352, 0.665045,
		-0.593639, 0.772996, -0.223763,
		1.155794, 5.071918, 3.243387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.308520, 4.780865, 4.104573>,  <1.571341, 4.530821, 3.400022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.308520, 4.780865, 4.104573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.068909, 4.865829, 3.795757>,  <0.925142, 4.916808, 3.610468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.068909, 4.865829, 3.795757>,  <1.308520, 4.780865, 4.104573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.068909, 4.865829, 3.795757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800374, -0.130198, 0.585192,
		0.023784, 0.968467, 0.248002,
		-0.599029, 0.212412, -0.772040,
		0.889200, 4.929553, 3.564145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.894687, 5.511882, 4.088426>,  <1.308520, 4.780865, 4.104573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.894687, 5.511882, 4.088426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.750801, 5.175690, 3.926342>,  <0.664469, 4.973974, 3.829092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.750801, 5.175690, 3.926342>,  <0.894687, 5.511882, 4.088426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.750801, 5.175690, 3.926342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715062, -0.030667, 0.698388,
		-0.599409, 0.540971, -0.589965,
		-0.359715, -0.840482, -0.405210,
		0.642887, 4.923545, 3.804779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.168908, 5.582369, 3.906713>,  <0.894687, 5.511882, 4.088426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.168908, 5.582369, 3.906713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.278877, 5.210236, 4.003788>,  <0.344859, 4.986956, 4.062033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.278877, 5.210236, 4.003788>,  <0.168908, 5.582369, 3.906713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.278877, 5.210236, 4.003788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610291, 0.026190, 0.791745,
		-0.742942, -0.365779, -0.560574,
		0.274922, -0.930334, 0.242689,
		0.361354, 4.931136, 4.076595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.502087, 5.150385, 3.889966>,  <0.168908, 5.582369, 3.906713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.502087, 5.150385, 3.889966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.222031, 4.976978, 4.116899>,  <-0.053997, 4.872934, 4.253059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.222031, 4.976978, 4.116899>,  <-0.502087, 5.150385, 3.889966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.222031, 4.976978, 4.116899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629696, -0.000339, 0.776842,
		-0.336581, -0.901146, -0.273221,
		0.700140, -0.433517, 0.567333,
		-0.011988, 4.846923, 4.287099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.854079, 4.673470, 4.277653>,  <-0.502087, 5.150385, 3.889966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.854079, 4.673470, 4.277653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.509567, 4.721504, 4.475149>,  <-0.302860, 4.750325, 4.593647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.509567, 4.721504, 4.475149>,  <-0.854079, 4.673470, 4.277653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.509567, 4.721504, 4.475149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497979, 0.006193, 0.867167,
		0.101081, -0.992744, 0.065137,
		0.861278, 0.120091, 0.493739,
		-0.251184, 4.757530, 4.623271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.930059, 4.239335, 4.879076>,  <-0.854079, 4.673470, 4.277653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.930059, 4.239335, 4.879076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.628822, 4.489273, 4.961462>,  <-0.448080, 4.639236, 5.010894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.628822, 4.489273, 4.961462>,  <-0.930059, 4.239335, 4.879076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.628822, 4.489273, 4.961462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421701, 0.218149, 0.880102,
		0.504996, -0.749653, 0.427785,
		0.753091, 0.624845, 0.205965,
		-0.402895, 4.676726, 5.023252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.635133, 4.036867, 5.514613>,  <-0.930059, 4.239335, 4.879076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.635133, 4.036867, 5.514613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.571831, 4.428997, 5.467424>,  <-0.533850, 4.664275, 5.439112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.571831, 4.428997, 5.467424>,  <-0.635133, 4.036867, 5.514613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.571831, 4.428997, 5.467424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549185, 0.186680, 0.814584,
		0.820580, -0.064124, 0.567923,
		0.158254, 0.980326, -0.117970,
		-0.524354, 4.723095, 5.432034>
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
